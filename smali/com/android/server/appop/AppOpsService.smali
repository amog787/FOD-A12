.class public Lcom/android/server/appop/AppOpsService;
.super Lcom/android/internal/app/IAppOpsService$Stub;
.source "AppOpsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;,
        Lcom/android/server/appop/AppOpsService$NoteOpTrace;,
        Lcom/android/server/appop/AppOpsService$AppOpsManagerInternalImpl;,
        Lcom/android/server/appop/AppOpsService$ClientGlobalRestrictionState;,
        Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;,
        Lcom/android/server/appop/AppOpsService$Shell;,
        Lcom/android/server/appop/AppOpsService$ChangeRec;,
        Lcom/android/server/appop/AppOpsService$NotedCallback;,
        Lcom/android/server/appop/AppOpsService$StartedCallback;,
        Lcom/android/server/appop/AppOpsService$ActiveCallback;,
        Lcom/android/server/appop/AppOpsService$ModeCallback;,
        Lcom/android/server/appop/AppOpsService$Op;,
        Lcom/android/server/appop/AppOpsService$AttributedOp;,
        Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;,
        Lcom/android/server/appop/AppOpsService$PackageVerificationResult;,
        Lcom/android/server/appop/AppOpsService$Ops;,
        Lcom/android/server/appop/AppOpsService$UidState;,
        Lcom/android/server/appop/AppOpsService$Constants;,
        Lcom/android/server/appop/AppOpsService$InProgressStartOpEventPool;,
        Lcom/android/server/appop/AppOpsService$OpEventProxyInfoPool;
    }
.end annotation


# static fields
.field private static final CURRENT_VERSION:I = 0x1

.field static final DEBUG:Z = false

.field private static final MAX_UNFORWARDED_OPS:I = 0xa

.field private static final MAX_UNUSED_POOLED_OBJECTS:I = 0x3

.field private static final NO_VERSION:I = -0x1

.field private static final OPS_RESTRICTED_ON_SUSPEND:[I

.field private static final PROCESS_STATE_TO_UID_STATE:[I

.field private static final RARELY_USED_PACKAGES_INITIALIZATION_DELAY_MILLIS:I = 0x493e0

.field static final TAG:Ljava/lang/String; = "AppOps"

.field private static final UID_ANY:I = -0x2

.field static final WRITE_DELAY:J = 0x1b7740L


# instance fields
.field private final dpmi:Landroid/app/admin/DevicePolicyManagerInternal;

.field private mAcceptableLeftDistance:I

.field final mActiveWatchers:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/appop/AppOpsService$ActiveCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field private mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field private final mAppOpsManagerInternal:Lcom/android/server/appop/AppOpsService$AppOpsManagerInternalImpl;

.field private final mAsyncOpWatchers:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/os/RemoteCallbackList<",
            "Lcom/android/internal/app/IAppOpsAsyncNotedCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field final mAudioRestrictionManager:Lcom/android/server/appop/AudioRestrictionManager;

.field private volatile mCheckOpsDelegateDispatcher:Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;

.field private mCollectedRuntimePermissionMessage:Landroid/app/RuntimeAppOpAccessMessage;

.field final mConstants:Lcom/android/server/appop/AppOpsService$Constants;

.field final mContext:Landroid/content/Context;

.field mFastWriteScheduled:Z

.field final mFile:Landroid/util/AtomicFile;

.field final mHandler:Landroid/os/Handler;

.field volatile mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistry;

.field private final mInProgressStartOpEventPool:Lcom/android/server/appop/AppOpsService$InProgressStartOpEventPool;

.field mLastRealtime:J

.field private mMessagesCollectedCount:F

.field final mModeWatchers:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/appop/AppOpsService$ModeCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mNoteOpCallerStacktraces:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/appop/AppOpsService$NoteOpTrace;",
            ">;"
        }
    .end annotation
.end field

.field private final mNoteOpCallerStacktracesFile:Ljava/io/File;

.field final mNotedWatchers:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/appop/AppOpsService$NotedCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field private mOnPackageUpdatedReceiver:Landroid/content/BroadcastReceiver;

.field private final mOpEventProxyInfoPool:Lcom/android/server/appop/AppOpsService$OpEventProxyInfoPool;

.field private final mOpGlobalRestrictions:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/appop/AppOpsService$ClientGlobalRestrictionState;",
            ">;"
        }
    .end annotation
.end field

.field final mOpModeWatchers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/appop/AppOpsService$ModeCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mOpUserRestrictions:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field final mPackageModeWatchers:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/appop/AppOpsService$ModeCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mPlatformCompat:Lcom/android/internal/compat/IPlatformCompat;

.field mProfileOwners:Landroid/util/SparseIntArray;

.field private mRarelyUsedPackages:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSampledAppOpCode:I

.field private mSampledPackage:Ljava/lang/String;

.field private mSamplingStrategy:I

.field final mStartedWatchers:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/appop/AppOpsService$StartedCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mSwitchedOps:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[I>;"
        }
    .end annotation
.end field

.field final mUidStates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/appop/AppOpsService$UidState;",
            ">;"
        }
    .end annotation
.end field

.field private final mUnforwardedAsyncNotedOps:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/app/AsyncNotedAppOp;",
            ">;>;"
        }
    .end annotation
.end field

.field mWriteNoteOpsScheduled:Z

.field final mWriteRunner:Ljava/lang/Runnable;

.field mWriteScheduled:Z


# direct methods
.method public static synthetic $r8$lambda$6eUUjWoSV6jYQZnTSAKV3P6Zd3U(Lcom/android/server/appop/AppOpsService;Landroid/util/ArraySet;IILjava/lang/String;Ljava/lang/String;II)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/android/server/appop/AppOpsService;->notifyOpChecked(Landroid/util/ArraySet;IILjava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method public static synthetic $r8$lambda$CkC7NFGAXqPtWmw4hPZid_o7wF8(Lcom/android/server/appop/AppOpsService;)Ljava/util/List;
    .locals 0

    invoke-direct {p0}, Lcom/android/server/appop/AppOpsService;->getPackageListAndResample()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$E5-vYKuzez4Uqxa5TFSEWmfUlwQ(Lcom/android/server/appop/AppOpsService;Landroid/util/ArraySet;IILjava/lang/String;Ljava/lang/String;II)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/android/server/appop/AppOpsService;->notifyOpStarted(Landroid/util/ArraySet;IILjava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method public static synthetic $r8$lambda$GbnVL7FStoP-5ugbMrKPtxPc-7Q(Lcom/android/server/appop/AppOpsService;IIZLcom/android/internal/app/IAppOpsCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/appop/AppOpsService;->notifyOpChangedForAllPkgsInUid(IIZLcom/android/internal/app/IAppOpsCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$PKLfueNQM1N0Jpnmxcaqqma0eNY(Lcom/android/server/appop/AppOpsService;Landroid/util/ArraySet;IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/appop/AppOpsService;->notifyOpChanged(Landroid/util/ArraySet;IILjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UhW7SeBkHHHfuwTQAOdyrxrpRvA(Lcom/android/server/appop/AppOpsService;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/appop/AppOpsService;->notifyWatchersOfChange(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$Zyngadgl87QMxYI929vq0ZyGXcM(Lcom/android/server/appop/AppOpsService;IZI)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/appop/AppOpsService;->updateStartedOpModeForUser(IZI)V

    return-void
.end method

.method public static synthetic $r8$lambda$cQF62lZT2B382dOHCevnBWdZGys(Lcom/android/server/appop/AppOpsService;Lcom/android/server/appop/AppOpsService$ModeCallback;IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/appop/AppOpsService;->notifyOpChanged(Lcom/android/server/appop/AppOpsService$ModeCallback;IILjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ueiy_QOdjs5waSxjG-x7aX5-gP4(Lcom/android/server/appop/AppOpsService;Landroid/util/ArraySet;IILjava/lang/String;Ljava/lang/String;ZII)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lcom/android/server/appop/AppOpsService;->notifyOpActiveChanged(Landroid/util/ArraySet;IILjava/lang/String;Ljava/lang/String;ZII)V

    return-void
.end method

.method public static synthetic $r8$lambda$zNYjiRegD7DR2rGVXmVvy9TP0eI(Lcom/android/server/appop/AppOpsService;JI)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/appop/AppOpsService;->updatePendingState(JI)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 232
    const/16 v0, 0x15

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/appop/AppOpsService;->PROCESS_STATE_TO_UID_STATE:[I

    .line 256
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/server/appop/AppOpsService;->OPS_RESTRICTED_ON_SUSPEND:[I

    return-void

    :array_0
    .array-data 4
        0x64
        0x64
        0xc8
        0x1f4
        0x190
        0x1f4
        0x258
        0x258
        0x258
        0x258
        0x258
        0x258
        0x2bc
        0x2bc
        0x2bc
        0x2bc
        0x2bc
        0x2bc
        0x2bc
        0x2bc
        0x2bc
    .end array-data

    :array_1
    .array-data 4
        0x1c
        0x1b
        0x1a
    .end array-data
.end method

.method public constructor <init>(Ljava/io/File;Landroid/os/Handler;Landroid/content/Context;)V
    .locals 4
    .param p1, "storagePath"    # Ljava/io/File;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "context"    # Landroid/content/Context;

    .line 1757
    invoke-direct {p0}, Lcom/android/internal/app/IAppOpsService$Stub;-><init>()V

    .line 218
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService;->mNoteOpCallerStacktraces:Landroid/util/ArraySet;

    .line 272
    new-instance v0, Lcom/android/server/appop/AppOpsService$OpEventProxyInfoPool;

    invoke-direct {v0, p0}, Lcom/android/server/appop/AppOpsService$OpEventProxyInfoPool;-><init>(Lcom/android/server/appop/AppOpsService;)V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService;->mOpEventProxyInfoPool:Lcom/android/server/appop/AppOpsService$OpEventProxyInfoPool;

    .line 276
    new-instance v0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEventPool;

    invoke-direct {v0, p0}, Lcom/android/server/appop/AppOpsService$InProgressStartOpEventPool;-><init>(Lcom/android/server/appop/AppOpsService;)V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService;->mInProgressStartOpEventPool:Lcom/android/server/appop/AppOpsService$InProgressStartOpEventPool;

    .line 280
    new-instance v0, Lcom/android/server/appop/AppOpsService$AppOpsManagerInternalImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/appop/AppOpsService$AppOpsManagerInternalImpl;-><init>(Lcom/android/server/appop/AppOpsService;Lcom/android/server/appop/AppOpsService$1;)V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService;->mAppOpsManagerInternal:Lcom/android/server/appop/AppOpsService$AppOpsManagerInternalImpl;

    .line 282
    const-class v0, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 283
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManagerInternal;

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService;->dpmi:Landroid/app/admin/DevicePolicyManagerInternal;

    .line 285
    nop

    .line 286
    const-string/jumbo v0, "platform_compat"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 285
    invoke-static {v0}, Lcom/android/internal/compat/IPlatformCompat$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/compat/IPlatformCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService;->mPlatformCompat:Lcom/android/internal/compat/IPlatformCompat;

    .line 295
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService;->mAsyncOpWatchers:Landroid/util/ArrayMap;

    .line 307
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService;->mUnforwardedAsyncNotedOps:Landroid/util/ArrayMap;

    .line 315
    new-instance v0, Lcom/android/server/appop/AppOpsService$1;

    invoke-direct {v0, p0}, Lcom/android/server/appop/AppOpsService$1;-><init>(Lcom/android/server/appop/AppOpsService;)V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService;->mWriteRunner:Ljava/lang/Runnable;

    .line 331
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    .line 335
    new-instance v0, Lcom/android/server/appop/HistoricalRegistry;

    invoke-direct {v0, p0}, Lcom/android/server/appop/HistoricalRegistry;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistry;

    .line 342
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    .line 348
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService;->mOpGlobalRestrictions:Landroid/util/ArrayMap;

    .line 353
    new-instance v0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;

    invoke-direct {v0, p0, v1, v1}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;-><init>(Lcom/android/server/appop/AppOpsService;Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;)V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService;->mCheckOpsDelegateDispatcher:Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;

    .line 360
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService;->mSwitchedOps:Landroid/util/SparseArray;

    .line 365
    iput-object v1, p0, Lcom/android/server/appop/AppOpsService;->mSampledPackage:Ljava/lang/String;

    .line 369
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/appop/AppOpsService;->mSampledAppOpCode:I

    .line 373
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/appop/AppOpsService;->mAcceptableLeftDistance:I

    .line 381
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    iput-object v2, p0, Lcom/android/server/appop/AppOpsService;->mRarelyUsedPackages:Landroid/util/ArraySet;

    .line 1517
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    .line 1518
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/appop/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    .line 1519
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/appop/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    .line 1520
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/appop/AppOpsService;->mActiveWatchers:Landroid/util/ArrayMap;

    .line 1521
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/appop/AppOpsService;->mStartedWatchers:Landroid/util/ArrayMap;

    .line 1522
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/appop/AppOpsService;->mNotedWatchers:Landroid/util/ArrayMap;

    .line 1523
    new-instance v2, Lcom/android/server/appop/AudioRestrictionManager;

    invoke-direct {v2}, Lcom/android/server/appop/AudioRestrictionManager;-><init>()V

    iput-object v2, p0, Lcom/android/server/appop/AppOpsService;->mAudioRestrictionManager:Lcom/android/server/appop/AudioRestrictionManager;

    .line 1786
    new-instance v2, Lcom/android/server/appop/AppOpsService$2;

    invoke-direct {v2, p0}, Lcom/android/server/appop/AppOpsService$2;-><init>(Lcom/android/server/appop/AppOpsService;)V

    iput-object v2, p0, Lcom/android/server/appop/AppOpsService;->mOnPackageUpdatedReceiver:Landroid/content/BroadcastReceiver;

    .line 1758
    iput-object p3, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    .line 1760
    invoke-static {p0, v0}, Lcom/android/server/LockGuard;->installLock(Ljava/lang/Object;I)Ljava/lang/Object;

    .line 1761
    new-instance v0, Landroid/util/AtomicFile;

    const-string v2, "appops"

    invoke-direct {v0, p1, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService;->mFile:Landroid/util/AtomicFile;

    .line 1767
    iput-object v1, p0, Lcom/android/server/appop/AppOpsService;->mNoteOpCallerStacktracesFile:Ljava/io/File;

    .line 1769
    iput-object p2, p0, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    .line 1770
    new-instance v0, Lcom/android/server/appop/AppOpsService$Constants;

    invoke-direct {v0, p0, p2}, Lcom/android/server/appop/AppOpsService$Constants;-><init>(Lcom/android/server/appop/AppOpsService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService;->mConstants:Lcom/android/server/appop/AppOpsService$Constants;

    .line 1771
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService;->readState()V

    .line 1773
    const/4 v0, 0x0

    .local v0, "switchedCode":I
    :goto_0
    const/16 v1, 0x74

    if-ge v0, v1, :cond_0

    .line 1774
    invoke-static {v0}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v1

    .line 1775
    .local v1, "switchCode":I
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService;->mSwitchedOps:Landroid/util/SparseArray;

    .line 1776
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    invoke-static {v3, v0}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v3

    .line 1775
    invoke-virtual {v2, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1773
    .end local v1    # "switchCode":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1778
    .end local v0    # "switchedCode":I
    :cond_0
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/appop/AppOpsService;)Lcom/android/server/appop/AppOpsService$OpEventProxyInfoPool;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/appop/AppOpsService;

    .line 211
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mOpEventProxyInfoPool:Lcom/android/server/appop/AppOpsService$OpEventProxyInfoPool;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/appop/AppOpsService$AttributedOp;Landroid/os/IBinder;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/appop/AppOpsService$AttributedOp;
    .param p1, "x1"    # Landroid/os/IBinder;

    .line 211
    invoke-static {p0, p1}, Lcom/android/server/appop/AppOpsService;->onClientDeath(Lcom/android/server/appop/AppOpsService$AttributedOp;Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/appop/AppOpsService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/appop/AppOpsService;

    .line 211
    invoke-direct {p0}, Lcom/android/server/appop/AppOpsService;->scheduleFastWriteLocked()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/appop/AppOpsService;)Landroid/content/pm/PackageManagerInternal;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/appop/AppOpsService;

    .line 211
    invoke-direct {p0}, Lcom/android/server/appop/AppOpsService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600()[I
    .locals 1

    .line 211
    sget-object v0, Lcom/android/server/appop/AppOpsService;->OPS_RESTRICTED_ON_SUSPEND:[I

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/appop/AppOpsService;Landroid/util/ArraySet;IILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/appop/AppOpsService;
    .param p1, "x1"    # Landroid/util/ArraySet;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Ljava/lang/String;

    .line 211
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/appop/AppOpsService;->notifyOpChanged(Landroid/util/ArraySet;IILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/appop/AppOpsService;Landroid/content/pm/PackageInfo;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/appop/AppOpsService;
    .param p1, "x1"    # Landroid/content/pm/PackageInfo;

    .line 211
    invoke-direct {p0, p1}, Lcom/android/server/appop/AppOpsService;->isSamplingTarget(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/android/server/appop/AppOpsService;)Landroid/util/ArraySet;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/appop/AppOpsService;

    .line 211
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mRarelyUsedPackages:Landroid/util/ArraySet;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/android/server/appop/AppOpsService;Landroid/util/ArraySet;)Landroid/util/ArraySet;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/appop/AppOpsService;
    .param p1, "x1"    # Landroid/util/ArraySet;

    .line 211
    iput-object p1, p0, Lcom/android/server/appop/AppOpsService;->mRarelyUsedPackages:Landroid/util/ArraySet;

    return-object p1
.end method

.method static synthetic access$2000(Lcom/android/server/appop/AppOpsService;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/appop/AppOpsService;

    .line 211
    invoke-direct {p0}, Lcom/android/server/appop/AppOpsService;->getPackageListAndResample()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/server/appop/AppOpsService;Landroid/util/ArraySet;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/appop/AppOpsService;
    .param p1, "x1"    # Landroid/util/ArraySet;

    .line 211
    invoke-direct {p0, p1}, Lcom/android/server/appop/AppOpsService;->initializeRarelyUsedPackagesList(Landroid/util/ArraySet;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/server/appop/AppOpsService;)Landroid/util/ArrayMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/appop/AppOpsService;

    .line 211
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mAsyncOpWatchers:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic access$2700(Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .line 211
    invoke-static {p0}, Lcom/android/server/appop/AppOpsService;->resolveUid(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$2900(Lcom/android/server/appop/AppOpsService;)Landroid/util/ArrayMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/appop/AppOpsService;

    .line 211
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/appop/AppOpsService;)Landroid/app/ActivityManagerInternal;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/appop/AppOpsService;

    .line 211
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/server/appop/AppOpsService;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/appop/AppOpsService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 211
    invoke-direct {p0, p1, p2}, Lcom/android/server/appop/AppOpsService;->notifyWatchersOfChange(II)V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/server/appop/AppOpsService;Landroid/util/SparseArray;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/appop/AppOpsService;
    .param p1, "x1"    # Landroid/util/SparseArray;
    .param p2, "x2"    # Z

    .line 211
    invoke-direct {p0, p1, p2}, Lcom/android/server/appop/AppOpsService;->updateAppWidgetVisibility(Landroid/util/SparseArray;Z)V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/server/appop/AppOpsService;IIILcom/android/internal/app/IAppOpsCallback;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/appop/AppOpsService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Lcom/android/internal/app/IAppOpsCallback;

    .line 211
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/appop/AppOpsService;->setUidMode(IIILcom/android/internal/app/IAppOpsCallback;)V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/server/appop/AppOpsService;IILjava/lang/String;ILcom/android/internal/app/IAppOpsCallback;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/appop/AppOpsService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # I
    .param p5, "x5"    # Lcom/android/internal/app/IAppOpsCallback;

    .line 211
    invoke-direct/range {p0 .. p5}, Lcom/android/server/appop/AppOpsService;->setMode(IILjava/lang/String;ILcom/android/internal/app/IAppOpsCallback;)V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/server/appop/AppOpsService;)Landroid/util/ArrayMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/appop/AppOpsService;

    .line 211
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mOpGlobalRestrictions:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/server/appop/AppOpsService;IZI)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/appop/AppOpsService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z
    .param p3, "x3"    # I

    .line 211
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/appop/AppOpsService;->updateStartedOpModeForUser(IZI)V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/server/appop/AppOpsService;IILjava/lang/String;Ljava/lang/String;Z)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/appop/AppOpsService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Z

    .line 211
    invoke-direct/range {p0 .. p5}, Lcom/android/server/appop/AppOpsService;->checkOperationImpl(IILjava/lang/String;Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method static synthetic access$3700(Lcom/android/server/appop/AppOpsService;IIILjava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/appop/AppOpsService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Ljava/lang/String;

    .line 211
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/appop/AppOpsService;->checkAudioOperationImpl(IIILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$3800(Lcom/android/server/appop/AppOpsService;IILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)Landroid/app/SyncNotedAppOp;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/appop/AppOpsService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Z
    .param p6, "x6"    # Ljava/lang/String;
    .param p7, "x7"    # Z

    .line 211
    invoke-direct/range {p0 .. p7}, Lcom/android/server/appop/AppOpsService;->noteOperationImpl(IILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)Landroid/app/SyncNotedAppOp;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3900(Lcom/android/server/appop/AppOpsService;ILandroid/content/AttributionSource;ZLjava/lang/String;ZZ)Landroid/app/SyncNotedAppOp;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/appop/AppOpsService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/content/AttributionSource;
    .param p3, "x3"    # Z
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Z
    .param p6, "x6"    # Z

    .line 211
    invoke-direct/range {p0 .. p6}, Lcom/android/server/appop/AppOpsService;->noteProxyOperationImpl(ILandroid/content/AttributionSource;ZLjava/lang/String;ZZ)Landroid/app/SyncNotedAppOp;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/server/appop/AppOpsService;Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZII)Landroid/app/SyncNotedAppOp;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/appop/AppOpsService;
    .param p1, "x1"    # Landroid/os/IBinder;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Ljava/lang/String;
    .param p6, "x6"    # Z
    .param p7, "x7"    # Z
    .param p8, "x8"    # Ljava/lang/String;
    .param p9, "x9"    # Z
    .param p10, "x10"    # I
    .param p11, "x11"    # I

    .line 211
    invoke-direct/range {p0 .. p11}, Lcom/android/server/appop/AppOpsService;->startOperationImpl(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZII)Landroid/app/SyncNotedAppOp;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4100(Lcom/android/server/appop/AppOpsService;ILandroid/content/AttributionSource;ZZLjava/lang/String;ZZIII)Landroid/app/SyncNotedAppOp;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/appop/AppOpsService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/content/AttributionSource;
    .param p3, "x3"    # Z
    .param p4, "x4"    # Z
    .param p5, "x5"    # Ljava/lang/String;
    .param p6, "x6"    # Z
    .param p7, "x7"    # Z
    .param p8, "x8"    # I
    .param p9, "x9"    # I
    .param p10, "x10"    # I

    .line 211
    invoke-direct/range {p0 .. p10}, Lcom/android/server/appop/AppOpsService;->startProxyOperationImpl(ILandroid/content/AttributionSource;ZZLjava/lang/String;ZZIII)Landroid/app/SyncNotedAppOp;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4200(Lcom/android/server/appop/AppOpsService;Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/appop/AppOpsService;
    .param p1, "x1"    # Landroid/os/IBinder;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Ljava/lang/String;

    .line 211
    invoke-direct/range {p0 .. p5}, Lcom/android/server/appop/AppOpsService;->finishOperationImpl(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/server/appop/AppOpsService;ILandroid/content/AttributionSource;Z)Ljava/lang/Void;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/appop/AppOpsService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/content/AttributionSource;
    .param p3, "x3"    # Z

    .line 211
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/appop/AppOpsService;->finishProxyOperationImpl(ILandroid/content/AttributionSource;Z)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/appop/AppOpsService;IILjava/lang/String;Ljava/lang/String;ZII)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/appop/AppOpsService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Z
    .param p6, "x6"    # I
    .param p7, "x7"    # I

    .line 211
    invoke-direct/range {p0 .. p7}, Lcom/android/server/appop/AppOpsService;->scheduleOpActiveChangedIfNeededLocked(IILjava/lang/String;Ljava/lang/String;ZII)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/appop/AppOpsService;)Lcom/android/server/appop/AppOpsService$InProgressStartOpEventPool;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/appop/AppOpsService;

    .line 211
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mInProgressStartOpEventPool:Lcom/android/server/appop/AppOpsService$InProgressStartOpEventPool;

    return-object v0
.end method

.method private static addCallbacks(Ljava/util/HashMap;IILjava/lang/String;ILandroid/util/ArraySet;)Ljava/util/HashMap;
    .locals 5
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "previousMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Lcom/android/server/appop/AppOpsService$ModeCallback;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/appop/AppOpsService$ChangeRec;",
            ">;>;II",
            "Ljava/lang/String;",
            "I",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/appop/AppOpsService$ModeCallback;",
            ">;)",
            "Ljava/util/HashMap<",
            "Lcom/android/server/appop/AppOpsService$ModeCallback;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/appop/AppOpsService$ChangeRec;",
            ">;>;"
        }
    .end annotation

    .line 2889
    .local p0, "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/appop/AppOpsService$ModeCallback;Ljava/util/ArrayList<Lcom/android/server/appop/AppOpsService$ChangeRec;>;>;"
    .local p5, "cbs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    if-nez p5, :cond_0

    .line 2890
    return-object p0

    .line 2892
    :cond_0
    if-nez p0, :cond_1

    .line 2893
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object p0, v0

    .line 2895
    :cond_1
    invoke-virtual {p5}, Landroid/util/ArraySet;->size()I

    move-result v0

    .line 2896
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 2897
    invoke-virtual {p5, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appop/AppOpsService$ModeCallback;

    .line 2898
    .local v2, "cb":Lcom/android/server/appop/AppOpsService$ModeCallback;
    invoke-virtual {p0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 2899
    .local v3, "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appop/AppOpsService$ChangeRec;>;"
    invoke-static {v3, p1, p2, p3, p4}, Lcom/android/server/appop/AppOpsService;->addChange(Ljava/util/ArrayList;IILjava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v4

    .line 2900
    .local v4, "changed":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appop/AppOpsService$ChangeRec;>;"
    if-eq v4, v3, :cond_2

    .line 2901
    invoke-virtual {p0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2896
    .end local v2    # "cb":Lcom/android/server/appop/AppOpsService$ModeCallback;
    .end local v3    # "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appop/AppOpsService$ChangeRec;>;"
    .end local v4    # "changed":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appop/AppOpsService$ChangeRec;>;"
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2904
    .end local v1    # "i":I
    :cond_3
    return-object p0
.end method

.method private static addChange(Ljava/util/ArrayList;IILjava/lang/String;I)Ljava/util/ArrayList;
    .locals 5
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "previousMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/appop/AppOpsService$ChangeRec;",
            ">;II",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/appop/AppOpsService$ChangeRec;",
            ">;"
        }
    .end annotation

    .line 2866
    .local p0, "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appop/AppOpsService$ChangeRec;>;"
    const/4 v0, 0x0

    .line 2867
    .local v0, "duplicate":Z
    if-nez p0, :cond_0

    .line 2868
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object p0, v1

    goto :goto_1

    .line 2870
    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2871
    .local v1, "reportCount":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 2872
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appop/AppOpsService$ChangeRec;

    .line 2873
    .local v3, "report":Lcom/android/server/appop/AppOpsService$ChangeRec;
    iget v4, v3, Lcom/android/server/appop/AppOpsService$ChangeRec;->op:I

    if-ne v4, p1, :cond_1

    iget-object v4, v3, Lcom/android/server/appop/AppOpsService$ChangeRec;->pkg:Ljava/lang/String;

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2874
    const/4 v0, 0x1

    .line 2875
    goto :goto_1

    .line 2871
    .end local v3    # "report":Lcom/android/server/appop/AppOpsService$ChangeRec;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2879
    .end local v1    # "reportCount":I
    .end local v2    # "j":I
    :cond_2
    :goto_1
    if-nez v0, :cond_3

    .line 2880
    new-instance v1, Lcom/android/server/appop/AppOpsService$ChangeRec;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/android/server/appop/AppOpsService$ChangeRec;-><init>(IILjava/lang/String;I)V

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2883
    :cond_3
    return-object p0
.end method

.method private checkAudioOperationImpl(IIILjava/lang/String;)I
    .locals 2
    .param p1, "code"    # I
    .param p2, "usage"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;

    .line 3255
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mAudioRestrictionManager:Lcom/android/server/appop/AudioRestrictionManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/appop/AudioRestrictionManager;->checkAudioOperation(IIILjava/lang/String;)I

    move-result v0

    .line 3257
    .local v0, "mode":I
    if-eqz v0, :cond_0

    .line 3258
    return v0

    .line 3260
    :cond_0
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/server/appop/AppOpsService;->checkOperation(IILjava/lang/String;)I

    move-result v1

    return v1
.end method

.method private checkOperationImpl(IILjava/lang/String;Ljava/lang/String;Z)I
    .locals 7
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "attributionTag"    # Ljava/lang/String;
    .param p5, "raw"    # Z

    .line 3197
    invoke-direct {p0, p1}, Lcom/android/server/appop/AppOpsService;->verifyIncomingOp(I)V

    .line 3198
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-direct {p0, p3, v0}, Lcom/android/server/appop/AppOpsService;->verifyIncomingPackage(Ljava/lang/String;I)V

    .line 3200
    invoke-static {p2, p3}, Landroid/app/AppOpsManager;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3201
    .local v0, "resolvedPackageName":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 3202
    const/4 v1, 0x1

    return v1

    .line 3204
    :cond_0
    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, v0

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/server/appop/AppOpsService;->checkOperationUnchecked(IILjava/lang/String;Ljava/lang/String;Z)I

    move-result v1

    return v1
.end method

.method private checkOperationUnchecked(IILjava/lang/String;Ljava/lang/String;Z)I
    .locals 10
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "attributionTag"    # Ljava/lang/String;
    .param p5, "raw"    # Z

    .line 3221
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p2, p3, v0}, Lcom/android/server/appop/AppOpsService;->verifyAndGetBypass(ILjava/lang/String;Ljava/lang/String;)Lcom/android/server/appop/AppOpsService$PackageVerificationResult;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3225
    .local v0, "pvr":Lcom/android/server/appop/AppOpsService$PackageVerificationResult;
    nop

    .line 3227
    invoke-direct {p0, p1, p3, p2}, Lcom/android/server/appop/AppOpsService;->isOpRestrictedDueToSuspend(ILjava/lang/String;I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 3228
    return v2

    .line 3230
    :cond_0
    monitor-enter p0

    .line 3231
    :try_start_1
    iget-object v8, v0, Lcom/android/server/appop/AppOpsService$PackageVerificationResult;->bypass:Landroid/app/AppOpsManager$RestrictionBypass;

    move-object v3, p0

    move v4, p2

    move v5, p1

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v3 .. v8}, Lcom/android/server/appop/AppOpsService;->isOpRestrictedLocked(IILjava/lang/String;Ljava/lang/String;Landroid/app/AppOpsManager$RestrictionBypass;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3232
    monitor-exit p0

    return v2

    .line 3234
    :cond_1
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v1

    move p1, v1

    .line 3235
    const/4 v1, 0x0

    invoke-direct {p0, p2, v1}, Lcom/android/server/appop/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/appop/AppOpsService$UidState;

    move-result-object v1

    .line 3236
    .local v1, "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    if-eqz v1, :cond_3

    iget-object v2, v1, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    if-eqz v2, :cond_3

    iget-object v2, v1, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    .line 3237
    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_3

    .line 3238
    iget-object v2, v1, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    .line 3239
    .local v2, "rawMode":I
    if-eqz p5, :cond_2

    move v3, v2

    goto :goto_0

    :cond_2
    invoke-virtual {v1, p1, v2}, Lcom/android/server/appop/AppOpsService$UidState;->evalMode(II)I

    move-result v3

    :goto_0
    monitor-exit p0

    return v3

    .line 3241
    .end local v2    # "rawMode":I
    :cond_3
    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v8, v0, Lcom/android/server/appop/AppOpsService$PackageVerificationResult;->bypass:Landroid/app/AppOpsManager$RestrictionBypass;

    const/4 v9, 0x0

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v2 .. v9}, Lcom/android/server/appop/AppOpsService;->getOpLocked(IILjava/lang/String;Ljava/lang/String;ZLandroid/app/AppOpsManager$RestrictionBypass;Z)Lcom/android/server/appop/AppOpsService$Op;

    move-result-object v2

    .line 3242
    .local v2, "op":Lcom/android/server/appop/AppOpsService$Op;
    if-nez v2, :cond_4

    .line 3243
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v3

    monitor-exit p0

    return v3

    .line 3245
    :cond_4
    if-eqz p5, :cond_5

    invoke-static {v2}, Lcom/android/server/appop/AppOpsService$Op;->access$400(Lcom/android/server/appop/AppOpsService$Op;)I

    move-result v3

    goto :goto_1

    :cond_5
    invoke-virtual {v2}, Lcom/android/server/appop/AppOpsService$Op;->evalMode()I

    move-result v3

    :goto_1
    monitor-exit p0

    return v3

    .line 3246
    .end local v1    # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .end local v2    # "op":Lcom/android/server/appop/AppOpsService$Op;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 3222
    .end local v0    # "pvr":Lcom/android/server/appop/AppOpsService$PackageVerificationResult;
    :catch_0
    move-exception v0

    .line 3223
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v1, "AppOps"

    const-string v2, "checkOperation"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3224
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v1

    return v1
.end method

.method private checkSystemUid(Ljava/lang/String;)V
    .locals 4
    .param p1, "function"    # Ljava/lang/String;

    .line 6995
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 6996
    .local v0, "uid":I
    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    .line 6999
    return-void

    .line 6997
    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " must by called by the system"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private collectAsyncNotedOp(ILjava/lang/String;ILjava/lang/String;ILjava/lang/String;Z)V
    .locals 19
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "opCode"    # I
    .param p4, "attributionTag"    # Ljava/lang/String;
    .param p5, "flags"    # I
    .param p6, "message"    # Ljava/lang/String;
    .param p7, "shouldCollectMessage"    # Z

    .line 3656
    move-object/from16 v7, p0

    invoke-static/range {p6 .. p6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3658
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v15

    .line 3660
    .local v15, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 3662
    .local v16, "token":J
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3663
    move/from16 v6, p1

    move-object/from16 v5, p2

    :try_start_1
    invoke-direct {v7, v5, v6}, Lcom/android/server/appop/AppOpsService;->getAsyncNotedOpsKey(Ljava/lang/String;I)Landroid/util/Pair;

    move-result-object v0

    .line 3665
    .local v0, "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-object v1, v7, Lcom/android/server/appop/AppOpsService;->mAsyncOpWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/RemoteCallbackList;

    move-object v4, v1

    .line 3666
    .local v4, "callbacks":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Lcom/android/internal/app/IAppOpsAsyncNotedCallback;>;"
    new-instance v1, Landroid/app/AsyncNotedAppOp;

    .line 3667
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    move-object v8, v1

    move/from16 v9, p3

    move v10, v15

    move-object/from16 v11, p4

    move-object/from16 v12, p6

    invoke-direct/range {v8 .. v14}, Landroid/app/AsyncNotedAppOp;-><init>(IILjava/lang/String;Ljava/lang/String;J)V

    move-object v14, v1

    .line 3668
    .local v14, "asyncNotedOp":Landroid/app/AsyncNotedAppOp;
    const/4 v13, 0x1

    new-array v1, v13, [Z

    const/4 v12, 0x0

    aput-boolean v12, v1, v12

    move-object/from16 v18, v1

    .line 3670
    .local v18, "wasNoteForwarded":[Z
    and-int/lit8 v1, p5, 0x9

    if-eqz v1, :cond_0

    if-eqz p7, :cond_0

    .line 3672
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object v11, v4

    .end local v4    # "callbacks":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Lcom/android/internal/app/IAppOpsAsyncNotedCallback;>;"
    .local v11, "callbacks":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Lcom/android/internal/app/IAppOpsAsyncNotedCallback;>;"
    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p6

    invoke-direct/range {v1 .. v6}, Lcom/android/server/appop/AppOpsService;->reportRuntimeAppOpAccessMessageAsyncLocked(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3670
    .end local v11    # "callbacks":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Lcom/android/internal/app/IAppOpsAsyncNotedCallback;>;"
    .restart local v4    # "callbacks":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Lcom/android/internal/app/IAppOpsAsyncNotedCallback;>;"
    :cond_0
    move-object v11, v4

    .line 3676
    .end local v4    # "callbacks":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Lcom/android/internal/app/IAppOpsAsyncNotedCallback;>;"
    .restart local v11    # "callbacks":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Lcom/android/internal/app/IAppOpsAsyncNotedCallback;>;"
    :goto_0
    if-eqz v11, :cond_1

    .line 3677
    new-instance v1, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda15;

    move-object v8, v1

    move-object v9, v14

    move-object/from16 v10, v18

    move-object v2, v11

    .end local v11    # "callbacks":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Lcom/android/internal/app/IAppOpsAsyncNotedCallback;>;"
    .local v2, "callbacks":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Lcom/android/internal/app/IAppOpsAsyncNotedCallback;>;"
    move/from16 v11, p3

    move v3, v12

    move-object/from16 v12, p2

    move v4, v13

    move/from16 v13, p1

    move-object v5, v14

    .end local v14    # "asyncNotedOp":Landroid/app/AsyncNotedAppOp;
    .local v5, "asyncNotedOp":Landroid/app/AsyncNotedAppOp;
    move-object/from16 v14, p4

    invoke-direct/range {v8 .. v14}, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda15;-><init>(Landroid/app/AsyncNotedAppOp;[ZILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->broadcast(Ljava/util/function/Consumer;)V

    goto :goto_1

    .line 3676
    .end local v2    # "callbacks":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Lcom/android/internal/app/IAppOpsAsyncNotedCallback;>;"
    .end local v5    # "asyncNotedOp":Landroid/app/AsyncNotedAppOp;
    .restart local v11    # "callbacks":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Lcom/android/internal/app/IAppOpsAsyncNotedCallback;>;"
    .restart local v14    # "asyncNotedOp":Landroid/app/AsyncNotedAppOp;
    :cond_1
    move-object v2, v11

    move v3, v12

    move v4, v13

    move-object v5, v14

    .line 3689
    .end local v11    # "callbacks":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Lcom/android/internal/app/IAppOpsAsyncNotedCallback;>;"
    .end local v14    # "asyncNotedOp":Landroid/app/AsyncNotedAppOp;
    .restart local v2    # "callbacks":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Lcom/android/internal/app/IAppOpsAsyncNotedCallback;>;"
    .restart local v5    # "asyncNotedOp":Landroid/app/AsyncNotedAppOp;
    :goto_1
    aget-boolean v1, v18, v3

    if-nez v1, :cond_3

    .line 3690
    iget-object v1, v7, Lcom/android/server/appop/AppOpsService;->mUnforwardedAsyncNotedOps:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 3691
    .local v1, "unforwardedOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AsyncNotedAppOp;>;"
    if-nez v1, :cond_2

    .line 3692
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v4}, Ljava/util/ArrayList;-><init>(I)V

    move-object v1, v6

    .line 3693
    iget-object v4, v7, Lcom/android/server/appop/AppOpsService;->mUnforwardedAsyncNotedOps:Landroid/util/ArrayMap;

    invoke-virtual {v4, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3696
    :cond_2
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3697
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/16 v6, 0xa

    if-le v4, v6, :cond_3

    .line 3698
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3701
    .end local v0    # "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v1    # "unforwardedOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AsyncNotedAppOp;>;"
    .end local v2    # "callbacks":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Lcom/android/internal/app/IAppOpsAsyncNotedCallback;>;"
    .end local v5    # "asyncNotedOp":Landroid/app/AsyncNotedAppOp;
    .end local v18    # "wasNoteForwarded":[Z
    :cond_3
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3703
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3704
    nop

    .line 3705
    return-void

    .line 3701
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v15    # "callingUid":I
    .end local v16    # "token":J
    .end local p0    # "this":Lcom/android/server/appop/AppOpsService;
    .end local p1    # "uid":I
    .end local p2    # "packageName":Ljava/lang/String;
    .end local p3    # "opCode":I
    .end local p4    # "attributionTag":Ljava/lang/String;
    .end local p5    # "flags":I
    .end local p6    # "message":Ljava/lang/String;
    .end local p7    # "shouldCollectMessage":Z
    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 3703
    .restart local v15    # "callingUid":I
    .restart local v16    # "token":J
    .restart local p0    # "this":Lcom/android/server/appop/AppOpsService;
    .restart local p1    # "uid":I
    .restart local p2    # "packageName":Ljava/lang/String;
    .restart local p3    # "opCode":I
    .restart local p4    # "attributionTag":Ljava/lang/String;
    .restart local p5    # "flags":I
    .restart local p6    # "message":Ljava/lang/String;
    .restart local p7    # "shouldCollectMessage":Z
    :catchall_1
    move-exception v0

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3704
    throw v0
.end method

.method private collectOps(Lcom/android/server/appop/AppOpsService$Ops;[I)Ljava/util/ArrayList;
    .locals 6
    .param p1, "pkgOps"    # Lcom/android/server/appop/AppOpsService$Ops;
    .param p2, "ops"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/appop/AppOpsService$Ops;",
            "[I)",
            "Ljava/util/ArrayList<",
            "Landroid/app/AppOpsManager$OpEntry;",
            ">;"
        }
    .end annotation

    .line 2168
    const/4 v0, 0x0

    .line 2169
    .local v0, "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 2170
    .local v1, "elapsedNow":J
    if-nez p2, :cond_1

    .line 2171
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v3

    .line 2172
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/appop/AppOpsService$Ops;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 2173
    invoke-virtual {p1, v3}, Lcom/android/server/appop/AppOpsService$Ops;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/appop/AppOpsService$Op;

    .line 2174
    .local v4, "curOp":Lcom/android/server/appop/AppOpsService$Op;
    invoke-static {v4, v1, v2}, Lcom/android/server/appop/AppOpsService;->getOpEntryForResult(Lcom/android/server/appop/AppOpsService$Op;J)Landroid/app/AppOpsManager$OpEntry;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2172
    .end local v4    # "curOp":Lcom/android/server/appop/AppOpsService$Op;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v3    # "j":I
    :cond_0
    goto :goto_2

    .line 2177
    :cond_1
    const/4 v3, 0x0

    .restart local v3    # "j":I
    :goto_1
    array-length v4, p2

    if-ge v3, v4, :cond_4

    .line 2178
    aget v4, p2, v3

    invoke-virtual {p1, v4}, Lcom/android/server/appop/AppOpsService$Ops;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/appop/AppOpsService$Op;

    .line 2179
    .restart local v4    # "curOp":Lcom/android/server/appop/AppOpsService$Op;
    if-eqz v4, :cond_3

    .line 2180
    if-nez v0, :cond_2

    .line 2181
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v5

    .line 2183
    :cond_2
    invoke-static {v4, v1, v2}, Lcom/android/server/appop/AppOpsService;->getOpEntryForResult(Lcom/android/server/appop/AppOpsService$Op;J)Landroid/app/AppOpsManager$OpEntry;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2177
    .end local v4    # "curOp":Lcom/android/server/appop/AppOpsService$Op;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2187
    .end local v3    # "j":I
    :cond_4
    :goto_2
    return-object v0
.end method

.method private collectUidOps(Lcom/android/server/appop/AppOpsService$UidState;[I)Ljava/util/ArrayList;
    .locals 7
    .param p1, "uidState"    # Lcom/android/server/appop/AppOpsService$UidState;
    .param p2, "ops"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/appop/AppOpsService$UidState;",
            "[I)",
            "Ljava/util/ArrayList<",
            "Landroid/app/AppOpsManager$OpEntry;",
            ">;"
        }
    .end annotation

    .line 2193
    iget-object v0, p1, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2194
    return-object v1

    .line 2197
    :cond_0
    iget-object v0, p1, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    .line 2198
    .local v0, "opModeCount":I
    if-nez v0, :cond_1

    .line 2199
    return-object v1

    .line 2201
    :cond_1
    const/4 v1, 0x0

    .line 2202
    .local v1, "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    if-nez p2, :cond_3

    .line 2203
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v2

    .line 2204
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 2205
    iget-object v3, p1, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    .line 2206
    .local v3, "code":I
    new-instance v4, Landroid/app/AppOpsManager$OpEntry;

    iget-object v5, p1, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v5

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v6

    invoke-direct {v4, v3, v5, v6}, Landroid/app/AppOpsManager$OpEntry;-><init>(IILjava/util/Map;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2204
    .end local v3    # "code":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v2    # "i":I
    :cond_2
    goto :goto_2

    .line 2209
    :cond_3
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    array-length v3, p2

    if-ge v2, v3, :cond_6

    .line 2210
    aget v3, p2, v2

    .line 2211
    .restart local v3    # "code":I
    iget-object v4, p1, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v4

    if-ltz v4, :cond_5

    .line 2212
    if-nez v1, :cond_4

    .line 2213
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v4

    .line 2215
    :cond_4
    new-instance v4, Landroid/app/AppOpsManager$OpEntry;

    iget-object v5, p1, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v5

    .line 2216
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v6

    invoke-direct {v4, v3, v5, v6}, Landroid/app/AppOpsManager$OpEntry;-><init>(IILjava/util/Map;)V

    .line 2215
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2209
    .end local v3    # "code":I
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2220
    .end local v2    # "j":I
    :cond_6
    :goto_2
    return-object v1
.end method

.method private commitUidPendingStateLocked(Lcom/android/server/appop/AppOpsService$UidState;)V
    .locals 20
    .param p1, "uidState"    # Lcom/android/server/appop/AppOpsService$UidState;

    .line 4395
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    iget-boolean v0, v7, Lcom/android/server/appop/AppOpsService$UidState;->hasForegroundWatchers:Z

    if-eqz v0, :cond_d

    .line 4396
    iget-object v0, v7, Lcom/android/server/appop/AppOpsService$UidState;->foregroundOps:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    const/4 v8, 0x1

    sub-int/2addr v0, v8

    move v9, v0

    .local v9, "fgi":I
    :goto_0
    if-ltz v9, :cond_d

    .line 4397
    iget-object v0, v7, Lcom/android/server/appop/AppOpsService$UidState;->foregroundOps:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v9}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4398
    goto/16 :goto_6

    .line 4400
    :cond_0
    iget-object v0, v7, Lcom/android/server/appop/AppOpsService$UidState;->foregroundOps:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v9}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v10

    .line 4403
    .local v10, "code":I
    invoke-static {v10}, Landroid/app/AppOpsManager;->resolveFirstUnrestrictedUidState(I)I

    move-result v0

    int-to-long v11, v0

    .line 4404
    .local v11, "firstUnrestrictedUidState":J
    iget v0, v7, Lcom/android/server/appop/AppOpsService$UidState;->state:I

    int-to-long v0, v0

    cmp-long v0, v0, v11

    const/4 v1, 0x0

    if-gtz v0, :cond_1

    move v0, v8

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    move v13, v0

    .line 4405
    .local v13, "resolvedLastFg":Z
    iget v0, v7, Lcom/android/server/appop/AppOpsService$UidState;->pendingState:I

    int-to-long v2, v0

    cmp-long v0, v2, v11

    if-gtz v0, :cond_2

    move v1, v8

    :cond_2
    move v14, v1

    .line 4406
    .local v14, "resolvedNowFg":Z
    if-ne v13, v14, :cond_3

    iget v0, v7, Lcom/android/server/appop/AppOpsService$UidState;->capability:I

    iget v1, v7, Lcom/android/server/appop/AppOpsService$UidState;->pendingCapability:I

    if-ne v0, v1, :cond_3

    iget-boolean v0, v7, Lcom/android/server/appop/AppOpsService$UidState;->appWidgetVisible:Z

    iget-boolean v1, v7, Lcom/android/server/appop/AppOpsService$UidState;->pendingAppWidgetVisible:Z

    if-ne v0, v1, :cond_3

    .line 4409
    goto/16 :goto_6

    .line 4412
    :cond_3
    iget-object v0, v7, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    const/4 v15, 0x4

    if-eqz v0, :cond_4

    iget-object v0, v7, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    .line 4413
    invoke-virtual {v0, v10}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_4

    iget-object v0, v7, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    .line 4414
    invoke-virtual {v0, v10}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    if-ne v0, v15, :cond_4

    .line 4415
    iget-object v15, v6, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    sget-object v0, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda8;->INSTANCE:Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda8;

    .line 4417
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v1, v7, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x0

    .line 4415
    move-object/from16 v1, p0

    invoke-static/range {v0 .. v5}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuintConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v15, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_6

    .line 4418
    :cond_4
    iget-object v0, v7, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    if-eqz v0, :cond_c

    .line 4419
    iget-object v0, v6, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v0, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/util/ArraySet;

    .line 4420
    .local v5, "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    if-eqz v5, :cond_b

    .line 4421
    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v0

    sub-int/2addr v0, v8

    move v4, v0

    .local v4, "cbi":I
    :goto_2
    if-ltz v4, :cond_a

    .line 4422
    invoke-virtual {v5, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/server/appop/AppOpsService$ModeCallback;

    .line 4423
    .local v3, "callback":Lcom/android/server/appop/AppOpsService$ModeCallback;
    iget v0, v3, Lcom/android/server/appop/AppOpsService$ModeCallback;->mFlags:I

    and-int/2addr v0, v8

    if-eqz v0, :cond_9

    iget v0, v7, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    .line 4424
    invoke-virtual {v3, v0}, Lcom/android/server/appop/AppOpsService$ModeCallback;->isWatchingUid(I)Z

    move-result v0

    if-nez v0, :cond_5

    .line 4425
    move/from16 v17, v4

    move-object v8, v5

    goto/16 :goto_5

    .line 4427
    :cond_5
    iget-object v0, v7, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    sub-int/2addr v0, v8

    move v2, v0

    .local v2, "pkgi":I
    :goto_3
    if-ltz v2, :cond_8

    .line 4428
    iget-object v0, v7, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/appop/AppOpsService$Ops;

    invoke-virtual {v0, v10}, Lcom/android/server/appop/AppOpsService$Ops;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Lcom/android/server/appop/AppOpsService$Op;

    .line 4429
    .local v16, "op":Lcom/android/server/appop/AppOpsService$Op;
    if-nez v16, :cond_6

    .line 4430
    move/from16 v18, v2

    move-object/from16 v19, v3

    move/from16 v17, v4

    move-object v8, v5

    goto :goto_4

    .line 4432
    :cond_6
    invoke-static/range {v16 .. v16}, Lcom/android/server/appop/AppOpsService$Op;->access$400(Lcom/android/server/appop/AppOpsService$Op;)I

    move-result v0

    if-ne v0, v15, :cond_7

    .line 4433
    iget-object v1, v6, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    sget-object v0, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda7;->INSTANCE:Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda7;

    .line 4435
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    iget v8, v7, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget-object v15, v7, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .line 4436
    invoke-virtual {v15, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 4433
    move-object v6, v1

    move-object/from16 v1, p0

    move/from16 v18, v2

    .end local v2    # "pkgi":I
    .local v18, "pkgi":I
    move-object v2, v3

    move-object/from16 v19, v3

    .end local v3    # "callback":Lcom/android/server/appop/AppOpsService$ModeCallback;
    .local v19, "callback":Lcom/android/server/appop/AppOpsService$ModeCallback;
    move-object/from16 v3, v17

    move/from16 v17, v4

    .end local v4    # "cbi":I
    .local v17, "cbi":I
    move-object v4, v8

    move-object v8, v5

    .end local v5    # "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    .local v8, "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    move-object v5, v15

    invoke-static/range {v0 .. v5}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuintConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_4

    .line 4432
    .end local v8    # "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    .end local v17    # "cbi":I
    .end local v18    # "pkgi":I
    .end local v19    # "callback":Lcom/android/server/appop/AppOpsService$ModeCallback;
    .restart local v2    # "pkgi":I
    .restart local v3    # "callback":Lcom/android/server/appop/AppOpsService$ModeCallback;
    .restart local v4    # "cbi":I
    .restart local v5    # "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    :cond_7
    move/from16 v18, v2

    move-object/from16 v19, v3

    move/from16 v17, v4

    move-object v8, v5

    .line 4427
    .end local v2    # "pkgi":I
    .end local v3    # "callback":Lcom/android/server/appop/AppOpsService$ModeCallback;
    .end local v4    # "cbi":I
    .end local v5    # "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    .end local v16    # "op":Lcom/android/server/appop/AppOpsService$Op;
    .restart local v8    # "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    .restart local v17    # "cbi":I
    .restart local v18    # "pkgi":I
    .restart local v19    # "callback":Lcom/android/server/appop/AppOpsService$ModeCallback;
    :goto_4
    add-int/lit8 v2, v18, -0x1

    const/4 v15, 0x4

    move-object/from16 v6, p0

    move-object v5, v8

    move/from16 v4, v17

    move-object/from16 v3, v19

    const/4 v8, 0x1

    .end local v18    # "pkgi":I
    .restart local v2    # "pkgi":I
    goto :goto_3

    .end local v8    # "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    .end local v17    # "cbi":I
    .end local v19    # "callback":Lcom/android/server/appop/AppOpsService$ModeCallback;
    .restart local v3    # "callback":Lcom/android/server/appop/AppOpsService$ModeCallback;
    .restart local v4    # "cbi":I
    .restart local v5    # "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    :cond_8
    move/from16 v18, v2

    move-object/from16 v19, v3

    move/from16 v17, v4

    move-object v8, v5

    .end local v2    # "pkgi":I
    .end local v3    # "callback":Lcom/android/server/appop/AppOpsService$ModeCallback;
    .end local v4    # "cbi":I
    .end local v5    # "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    .restart local v8    # "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    .restart local v17    # "cbi":I
    .restart local v18    # "pkgi":I
    .restart local v19    # "callback":Lcom/android/server/appop/AppOpsService$ModeCallback;
    goto :goto_5

    .line 4423
    .end local v8    # "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    .end local v17    # "cbi":I
    .end local v18    # "pkgi":I
    .end local v19    # "callback":Lcom/android/server/appop/AppOpsService$ModeCallback;
    .restart local v3    # "callback":Lcom/android/server/appop/AppOpsService$ModeCallback;
    .restart local v4    # "cbi":I
    .restart local v5    # "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    :cond_9
    move-object/from16 v19, v3

    move/from16 v17, v4

    move-object v8, v5

    .line 4421
    .end local v3    # "callback":Lcom/android/server/appop/AppOpsService$ModeCallback;
    .end local v4    # "cbi":I
    .end local v5    # "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    .restart local v8    # "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    .restart local v17    # "cbi":I
    :goto_5
    add-int/lit8 v4, v17, -0x1

    const/4 v15, 0x4

    move-object/from16 v6, p0

    move-object v5, v8

    const/4 v8, 0x1

    .end local v17    # "cbi":I
    .restart local v4    # "cbi":I
    goto/16 :goto_2

    .end local v8    # "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    .restart local v5    # "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    :cond_a
    move/from16 v17, v4

    move-object v8, v5

    .end local v4    # "cbi":I
    .end local v5    # "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    .restart local v8    # "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    .restart local v17    # "cbi":I
    goto :goto_6

    .line 4420
    .end local v8    # "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    .end local v17    # "cbi":I
    .restart local v5    # "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    :cond_b
    move-object v8, v5

    .line 4396
    .end local v5    # "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    .end local v10    # "code":I
    .end local v11    # "firstUnrestrictedUidState":J
    .end local v13    # "resolvedLastFg":Z
    .end local v14    # "resolvedNowFg":Z
    :cond_c
    :goto_6
    add-int/lit8 v9, v9, -0x1

    const/4 v8, 0x1

    move-object/from16 v6, p0

    goto/16 :goto_0

    .line 4444
    .end local v9    # "fgi":I
    :cond_d
    iget v0, v7, Lcom/android/server/appop/AppOpsService$UidState;->pendingState:I

    iput v0, v7, Lcom/android/server/appop/AppOpsService$UidState;->state:I

    .line 4445
    iget v0, v7, Lcom/android/server/appop/AppOpsService$UidState;->pendingCapability:I

    iput v0, v7, Lcom/android/server/appop/AppOpsService$UidState;->capability:I

    .line 4446
    iget-boolean v0, v7, Lcom/android/server/appop/AppOpsService$UidState;->pendingAppWidgetVisible:Z

    iput-boolean v0, v7, Lcom/android/server/appop/AppOpsService$UidState;->appWidgetVisible:Z

    .line 4447
    const-wide/16 v0, 0x0

    iput-wide v0, v7, Lcom/android/server/appop/AppOpsService$UidState;->pendingStateCommitTime:J

    .line 4448
    return-void
.end method

.method private deferResetOpToDpm(ILjava/lang/String;I)V
    .locals 1
    .param p1, "op"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 3065
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->dpmi:Landroid/app/admin/DevicePolicyManagerInternal;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/admin/DevicePolicyManagerInternal;->resetOp(ILjava/lang/String;I)V

    .line 3066
    return-void
.end method

.method static dumpCommandHelp(Ljava/io/PrintWriter;)V
    .locals 1
    .param p0, "pw"    # Ljava/io/PrintWriter;

    .line 5406
    const-string v0, "AppOps service (appops) commands:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5407
    const-string v0, "  help"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5408
    const-string v0, "    Print this help text."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5409
    const-string v0, "  start [--user <USER_ID>] [--attribution <ATTRIBUTION_TAG>] <PACKAGE | UID> <OP> "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5411
    const-string v0, "    Starts a given operation for a particular application."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5412
    const-string v0, "  stop [--user <USER_ID>] [--attribution <ATTRIBUTION_TAG>] <PACKAGE | UID> <OP> "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5414
    const-string v0, "    Stops a given operation for a particular application."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5415
    const-string v0, "  set [--user <USER_ID>] <[--uid] PACKAGE | UID> <OP> <MODE>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5416
    const-string v0, "    Set the mode for a particular application and operation."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5417
    const-string v0, "  get [--user <USER_ID>] [--attribution <ATTRIBUTION_TAG>] <PACKAGE | UID> [<OP>]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5419
    const-string v0, "    Return the mode for a particular application and optional operation."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5420
    const-string v0, "  query-op [--user <USER_ID>] <OP> [<MODE>]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5421
    const-string v0, "    Print all packages that currently have the given op in the given mode."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5422
    const-string v0, "  reset [--user <USER_ID>] [<PACKAGE>]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5423
    const-string v0, "    Reset the given application or all applications to default modes."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5424
    const-string v0, "  write-settings"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5425
    const-string v0, "    Immediately write pending changes to storage."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5426
    const-string v0, "  read-settings"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5427
    const-string v0, "    Read the last written settings, replacing current state in RAM."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5428
    const-string v0, "  options:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5429
    const-string v0, "    <PACKAGE> an Android package name or its UID if prefixed by --uid"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5430
    const-string v0, "    <OP>      an AppOps operation."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5431
    const-string v0, "    <MODE>    one of allow, ignore, deny, or default"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5432
    const-string v0, "    <USER_ID> the user id under which the package is installed. If --user is"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5433
    const-string v0, "              not specified, the current user is assumed."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5434
    return-void
.end method

.method private dumpHelp(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 5705
    const-string v0, "AppOps service (appops) dump options:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5706
    const-string v0, "  -h"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5707
    const-string v0, "    Print this help text."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5708
    const-string v0, "  --op [OP]"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5709
    const-string v0, "    Limit output to data associated with the given app op code."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5710
    const-string v0, "  --mode [MODE]"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5711
    const-string v0, "    Limit output to data associated with the given app op mode."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5712
    const-string v0, "  --package [PACKAGE]"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5713
    const-string v0, "    Limit output to data associated with the given package name."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5714
    const-string v0, "  --attributionTag [attributionTag]"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5715
    const-string v0, "    Limit output to data associated with the given attribution tag."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5716
    const-string v0, "  --include-discrete [n]"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5717
    const-string v0, "    Include discrete ops limited to n per dimension. Use zero for no limit."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5718
    const-string v0, "  --watchers"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5719
    const-string v0, "    Only output the watcher sections."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5720
    const-string v0, "  --history"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5721
    const-string v0, "    Only output history."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5722
    return-void
.end method

.method private dumpStatesLocked(Ljava/io/PrintWriter;JLcom/android/server/appop/AppOpsService$Op;Ljava/lang/String;JLjava/text/SimpleDateFormat;Ljava/util/Date;Ljava/lang/String;)V
    .locals 33
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "nowElapsed"    # J
    .param p4, "op"    # Lcom/android/server/appop/AppOpsService$Op;
    .param p5, "attributionTag"    # Ljava/lang/String;
    .param p6, "now"    # J
    .param p8, "sdf"    # Ljava/text/SimpleDateFormat;
    .param p9, "date"    # Ljava/util/Date;
    .param p10, "prefix"    # Ljava/lang/String;

    .line 5745
    move-object/from16 v0, p1

    move-object/from16 v1, p5

    move-object/from16 v2, p9

    move-object/from16 v3, p10

    invoke-virtual/range {p4 .. p5}, Lcom/android/server/appop/AppOpsService$Op;->createSingleAttributionEntryLocked(Ljava/lang/String;)Landroid/app/AppOpsManager$OpEntry;

    move-result-object v4

    .line 5746
    invoke-virtual {v4}, Landroid/app/AppOpsManager$OpEntry;->getAttributedOpEntries()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AppOpsManager$AttributedOpEntry;

    .line 5748
    .local v4, "entry":Landroid/app/AppOpsManager$AttributedOpEntry;
    invoke-virtual {v4}, Landroid/app/AppOpsManager$AttributedOpEntry;->collectKeys()Landroid/util/ArraySet;

    move-result-object v5

    .line 5750
    .local v5, "keys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v6

    .line 5751
    .local v6, "keyCount":I
    const/4 v7, 0x0

    .local v7, "k":I
    :goto_0
    if-ge v7, v6, :cond_6

    .line 5752
    invoke-virtual {v5, v7}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 5754
    .local v8, "key":J
    invoke-static {v8, v9}, Landroid/app/AppOpsManager;->extractUidStateFromKey(J)I

    move-result v10

    .line 5755
    .local v10, "uidState":I
    invoke-static {v8, v9}, Landroid/app/AppOpsManager;->extractFlagsFromKey(J)I

    move-result v11

    .line 5757
    .local v11, "flags":I
    invoke-virtual {v4, v10, v10, v11}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastAccessTime(III)J

    move-result-wide v12

    .line 5758
    .local v12, "accessTime":J
    invoke-virtual {v4, v10, v10, v11}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastRejectTime(III)J

    move-result-wide v14

    .line 5759
    .local v14, "rejectTime":J
    move-object/from16 v16, v5

    move/from16 v17, v6

    .end local v5    # "keys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    .end local v6    # "keyCount":I
    .local v16, "keys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    .local v17, "keyCount":I
    invoke-virtual {v4, v10, v10, v11}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastDuration(III)J

    move-result-wide v5

    .line 5760
    .local v5, "accessDuration":J
    invoke-virtual {v4, v10, v10, v11}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastProxyInfo(III)Landroid/app/AppOpsManager$OpEventProxyInfo;

    move-result-object v18

    .line 5762
    .local v18, "proxy":Landroid/app/AppOpsManager$OpEventProxyInfo;
    const/16 v19, 0x0

    .line 5763
    .local v19, "proxyPkg":Ljava/lang/String;
    const/16 v20, 0x0

    .line 5764
    .local v20, "proxyAttributionTag":Ljava/lang/String;
    const/16 v21, -0x1

    .line 5765
    .local v21, "proxyUid":I
    if-eqz v18, :cond_0

    .line 5766
    invoke-virtual/range {v18 .. v18}, Landroid/app/AppOpsManager$OpEventProxyInfo;->getPackageName()Ljava/lang/String;

    move-result-object v19

    .line 5767
    invoke-virtual/range {v18 .. v18}, Landroid/app/AppOpsManager$OpEventProxyInfo;->getAttributionTag()Ljava/lang/String;

    move-result-object v20

    .line 5768
    invoke-virtual/range {v18 .. v18}, Landroid/app/AppOpsManager$OpEventProxyInfo;->getUid()I

    move-result v21

    move-object/from16 v22, v4

    move-object/from16 v4, v19

    move/from16 v19, v10

    move-object/from16 v10, v20

    move/from16 v20, v11

    move/from16 v11, v21

    goto :goto_1

    .line 5765
    :cond_0
    move-object/from16 v22, v4

    move-object/from16 v4, v19

    move/from16 v19, v10

    move-object/from16 v10, v20

    move/from16 v20, v11

    move/from16 v11, v21

    .line 5771
    .end local v21    # "proxyUid":I
    .local v4, "proxyPkg":Ljava/lang/String;
    .local v10, "proxyAttributionTag":Ljava/lang/String;
    .local v11, "proxyUid":I
    .local v19, "uidState":I
    .local v20, "flags":I
    .local v22, "entry":Landroid/app/AppOpsManager$AttributedOpEntry;
    :goto_1
    const-wide/16 v23, 0x0

    cmp-long v21, v12, v23

    const-string v1, "]"

    move/from16 v25, v7

    .end local v7    # "k":I
    .local v25, "k":I
    const-string v7, ", attributionTag="

    move-wide/from16 v26, v14

    .end local v14    # "rejectTime":J
    .local v26, "rejectTime":J
    const-string v14, ", pkg="

    const-string/jumbo v15, "uid="

    move-object/from16 v28, v1

    const-string v1, " proxy["

    move-object/from16 v29, v10

    .end local v10    # "proxyAttributionTag":Ljava/lang/String;
    .local v29, "proxyAttributionTag":Ljava/lang/String;
    const-string v10, ")"

    move-object/from16 v30, v7

    const-string v7, " ("

    if-lez v21, :cond_3

    .line 5772
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5773
    const-string v3, "Access: "

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5774
    invoke-static {v8, v9}, Landroid/app/AppOpsManager;->keyToString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5775
    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5776
    invoke-virtual {v2, v12, v13}, Ljava/util/Date;->setTime(J)V

    .line 5777
    invoke-virtual/range {p8 .. p9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5778
    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5779
    sub-long v2, v12, p6

    invoke-static {v2, v3, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 5780
    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5781
    cmp-long v2, v5, v23

    if-lez v2, :cond_1

    .line 5782
    const-string v2, " duration="

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5783
    invoke-static {v5, v6, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 5785
    :cond_1
    if-ltz v11, :cond_2

    .line 5786
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5787
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5788
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(I)V

    .line 5789
    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5790
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5791
    move-object/from16 v2, v30

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5792
    move-object/from16 v3, v29

    .end local v29    # "proxyAttributionTag":Ljava/lang/String;
    .local v3, "proxyAttributionTag":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5793
    move-wide/from16 v29, v5

    move-object/from16 v5, v28

    .end local v5    # "accessDuration":J
    .local v29, "accessDuration":J
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_2

    .line 5785
    .end local v3    # "proxyAttributionTag":Ljava/lang/String;
    .restart local v5    # "accessDuration":J
    .local v29, "proxyAttributionTag":Ljava/lang/String;
    :cond_2
    move-object/from16 v3, v29

    move-object/from16 v2, v30

    move-wide/from16 v29, v5

    move-object/from16 v5, v28

    .line 5795
    .end local v5    # "accessDuration":J
    .restart local v3    # "proxyAttributionTag":Ljava/lang/String;
    .local v29, "accessDuration":J
    :goto_2
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    goto :goto_3

    .line 5771
    .end local v3    # "proxyAttributionTag":Ljava/lang/String;
    .restart local v5    # "accessDuration":J
    .local v29, "proxyAttributionTag":Ljava/lang/String;
    :cond_3
    move-object/from16 v3, v29

    move-object/from16 v2, v30

    move-wide/from16 v29, v5

    move-object/from16 v5, v28

    .line 5798
    .end local v5    # "accessDuration":J
    .restart local v3    # "proxyAttributionTag":Ljava/lang/String;
    .local v29, "accessDuration":J
    :goto_3
    cmp-long v6, v26, v23

    if-lez v6, :cond_5

    .line 5799
    move-object/from16 v6, p10

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5800
    move-wide/from16 v23, v12

    .end local v12    # "accessTime":J
    .local v23, "accessTime":J
    const-string v12, "Reject: "

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5801
    invoke-static {v8, v9}, Landroid/app/AppOpsManager;->keyToString(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5802
    move-object/from16 v12, p9

    move-wide/from16 v31, v8

    move-wide/from16 v8, v26

    move-wide/from16 v26, v31

    .local v8, "rejectTime":J
    .local v26, "key":J
    invoke-virtual {v12, v8, v9}, Ljava/util/Date;->setTime(J)V

    .line 5803
    invoke-virtual/range {p8 .. p9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5804
    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5805
    sub-long v12, v8, p6

    invoke-static {v12, v13, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 5806
    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5807
    if-ltz v11, :cond_4

    .line 5808
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5809
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5810
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(I)V

    .line 5811
    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5812
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5813
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5814
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5815
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5817
    :cond_4
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    goto :goto_4

    .line 5798
    .end local v23    # "accessTime":J
    .local v8, "key":J
    .restart local v12    # "accessTime":J
    .local v26, "rejectTime":J
    :cond_5
    move-object/from16 v6, p10

    move-wide/from16 v23, v12

    move-wide/from16 v31, v8

    move-wide/from16 v8, v26

    move-wide/from16 v26, v31

    .line 5751
    .end local v3    # "proxyAttributionTag":Ljava/lang/String;
    .end local v4    # "proxyPkg":Ljava/lang/String;
    .end local v8    # "key":J
    .end local v11    # "proxyUid":I
    .end local v12    # "accessTime":J
    .end local v18    # "proxy":Landroid/app/AppOpsManager$OpEventProxyInfo;
    .end local v19    # "uidState":I
    .end local v20    # "flags":I
    .end local v26    # "rejectTime":J
    .end local v29    # "accessDuration":J
    :goto_4
    add-int/lit8 v7, v25, 0x1

    move-object/from16 v1, p5

    move-object/from16 v2, p9

    move-object v3, v6

    move-object/from16 v5, v16

    move/from16 v6, v17

    move-object/from16 v4, v22

    .end local v25    # "k":I
    .restart local v7    # "k":I
    goto/16 :goto_0

    .end local v16    # "keys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    .end local v17    # "keyCount":I
    .end local v22    # "entry":Landroid/app/AppOpsManager$AttributedOpEntry;
    .local v4, "entry":Landroid/app/AppOpsManager$AttributedOpEntry;
    .local v5, "keys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    .restart local v6    # "keyCount":I
    :cond_6
    move-object/from16 v22, v4

    move-object/from16 v16, v5

    move/from16 v17, v6

    move/from16 v25, v7

    move-object v6, v3

    .line 5821
    .end local v4    # "entry":Landroid/app/AppOpsManager$AttributedOpEntry;
    .end local v5    # "keys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    .end local v6    # "keyCount":I
    .end local v7    # "k":I
    .restart local v16    # "keys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    .restart local v17    # "keyCount":I
    .restart local v22    # "entry":Landroid/app/AppOpsManager$AttributedOpEntry;
    move-object/from16 v1, p4

    iget-object v2, v1, Lcom/android/server/appop/AppOpsService$Op;->mAttributions:Landroid/util/ArrayMap;

    move-object/from16 v3, p5

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appop/AppOpsService$AttributedOp;

    .line 5822
    .local v2, "attributedOp":Lcom/android/server/appop/AppOpsService$AttributedOp;
    invoke-virtual {v2}, Lcom/android/server/appop/AppOpsService$AttributedOp;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 5823
    const-wide v4, 0x7fffffffffffffffL

    .line 5824
    .local v4, "earliestElapsedTime":J
    const-wide/16 v7, 0x0

    .line 5825
    .local v7, "maxNumStarts":J
    invoke-static {v2}, Lcom/android/server/appop/AppOpsService$AttributedOp;->access$2300(Lcom/android/server/appop/AppOpsService$AttributedOp;)Landroid/util/ArrayMap;

    move-result-object v9

    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    move-result v9

    .line 5826
    .local v9, "numInProgressEvents":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_5
    if-ge v10, v9, :cond_7

    .line 5827
    invoke-static {v2}, Lcom/android/server/appop/AppOpsService$AttributedOp;->access$2300(Lcom/android/server/appop/AppOpsService$AttributedOp;)Landroid/util/ArrayMap;

    move-result-object v11

    invoke-virtual {v11, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;

    .line 5829
    .local v11, "event":Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;
    invoke-virtual {v11}, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->getStartElapsedTime()J

    move-result-wide v12

    invoke-static {v4, v5, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    .line 5830
    iget v12, v11, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->numUnfinishedStarts:I

    int-to-long v12, v12

    invoke-static {v7, v8, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    .line 5826
    .end local v11    # "event":Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 5833
    .end local v10    # "i":I
    :cond_7
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "Running start at: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5834
    sub-long v10, p2, v4

    invoke-static {v10, v11, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 5835
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 5837
    const-wide/16 v10, 0x1

    cmp-long v10, v7, v10

    if-lez v10, :cond_8

    .line 5838
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v11, "startNesting="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5839
    invoke-virtual {v0, v7, v8}, Ljava/io/PrintWriter;->println(J)V

    .line 5842
    .end local v4    # "earliestElapsedTime":J
    .end local v7    # "maxNumStarts":J
    .end local v9    # "numInProgressEvents":I
    :cond_8
    return-void
.end method

.method private dumpStatesLocked(Ljava/io/PrintWriter;Ljava/lang/String;IJLcom/android/server/appop/AppOpsService$Op;JLjava/text/SimpleDateFormat;Ljava/util/Date;Ljava/lang/String;)V
    .locals 17
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "filterAttributionTag"    # Ljava/lang/String;
    .param p3, "filter"    # I
    .param p4, "nowElapsed"    # J
    .param p6, "op"    # Lcom/android/server/appop/AppOpsService$Op;
    .param p7, "now"    # J
    .param p9, "sdf"    # Ljava/text/SimpleDateFormat;
    .param p10, "date"    # Ljava/util/Date;
    .param p11, "prefix"    # Ljava/lang/String;

    .line 5727
    move-object/from16 v11, p1

    move-object/from16 v12, p6

    move-object/from16 v13, p11

    iget-object v0, v12, Lcom/android/server/appop/AppOpsService$Op;->mAttributions:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v14

    .line 5728
    .local v14, "numAttributions":I
    const/4 v0, 0x0

    move v15, v0

    .local v15, "i":I
    :goto_0
    if-ge v15, v14, :cond_2

    .line 5729
    and-int/lit8 v0, p3, 0x4

    if-eqz v0, :cond_0

    iget-object v0, v12, Lcom/android/server/appop/AppOpsService$Op;->mAttributions:Landroid/util/ArrayMap;

    .line 5730
    invoke-virtual {v0, v15}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    .line 5729
    move-object/from16 v10, p2

    invoke-static {v0, v10}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5731
    goto :goto_1

    .line 5729
    :cond_0
    move-object/from16 v10, p2

    .line 5734
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v12, Lcom/android/server/appop/AppOpsService$Op;->mAttributions:Landroid/util/ArrayMap;

    invoke-virtual {v1, v15}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "=[\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5735
    iget-object v0, v12, Lcom/android/server/appop/AppOpsService$Op;->mAttributions:Landroid/util/ArrayMap;

    invoke-virtual {v0, v15}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p4

    move-object/from16 v4, p6

    move-wide/from16 v6, p7

    move-object/from16 v8, p9

    move-object/from16 v9, p10

    move-object/from16 v10, v16

    invoke-direct/range {v0 .. v10}, Lcom/android/server/appop/AppOpsService;->dumpStatesLocked(Ljava/io/PrintWriter;JLcom/android/server/appop/AppOpsService$Op;Ljava/lang/String;JLjava/text/SimpleDateFormat;Ljava/util/Date;Ljava/lang/String;)V

    .line 5737
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5728
    :goto_1
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 5739
    .end local v15    # "i":I
    :cond_2
    return-void
.end method

.method private enforceGetAppOpsStatsPermissionIfNeeded(ILjava/lang/String;)V
    .locals 5
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 2290
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2292
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 2293
    return-void

    .line 2296
    :cond_0
    if-ne p1, v0, :cond_1

    if-eqz p2, :cond_1

    .line 2297
    invoke-virtual {p0, p1, p2}, Lcom/android/server/appop/AppOpsService;->checkPackage(ILjava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    .line 2298
    return-void

    .line 2301
    :cond_1
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    .line 2302
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const/4 v3, 0x0

    .line 2301
    const-string v4, "android.permission.GET_APP_OPS_STATS"

    invoke-virtual {v1, v4, v2, v0, v3}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 2303
    return-void
.end method

.method private enforceManageAppOpsModes(III)V
    .locals 6
    .param p1, "callingPid"    # I
    .param p2, "callingUid"    # I
    .param p3, "targetUid"    # I

    .line 2479
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 2480
    return-void

    .line 2482
    :cond_0
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 2483
    .local v0, "callingUser":I
    monitor-enter p0

    .line 2484
    :try_start_0
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mProfileOwners:Landroid/util/SparseIntArray;

    if-eqz v1, :cond_1

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    if-ne v1, p2, :cond_1

    .line 2485
    if-ltz p3, :cond_1

    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 2488
    monitor-exit p0

    return-void

    .line 2491
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2492
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.MANAGE_APP_OPS_MODES"

    .line 2493
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    const/4 v5, 0x0

    .line 2492
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 2494
    return-void

    .line 2491
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private ensureHistoricalOpRequestIsValid(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;IJJI)V
    .locals 4
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "attributionTag"    # Ljava/lang/String;
    .param p5, "filter"    # I
    .param p6, "beginTimeMillis"    # J
    .param p8, "endTimeMillis"    # J
    .param p10, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;IJJI)V"
        }
    .end annotation

    .line 2311
    .local p4, "opNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    and-int/lit8 v0, p5, 0x1

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    .line 2312
    if-eq p1, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    goto :goto_2

    .line 2314
    :cond_1
    if-ne p1, v1, :cond_2

    move v0, v3

    goto :goto_1

    :cond_2
    move v0, v2

    :goto_1
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 2317
    :goto_2
    and-int/lit8 v0, p5, 0x2

    if-eqz v0, :cond_3

    .line 2318
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 2320
    :cond_3
    if-nez p2, :cond_4

    move v0, v3

    goto :goto_3

    :cond_4
    move v0, v2

    :goto_3
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 2323
    :goto_4
    and-int/lit8 v0, p5, 0x4

    if-nez v0, :cond_6

    .line 2324
    if-nez p3, :cond_5

    move v0, v3

    goto :goto_5

    :cond_5
    move v0, v2

    :goto_5
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 2327
    :cond_6
    and-int/lit8 v0, p5, 0x8

    if-eqz v0, :cond_7

    .line 2328
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 2330
    :cond_7
    if-nez p4, :cond_8

    move v0, v3

    goto :goto_6

    :cond_8
    move v0, v2

    :goto_6
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 2333
    :goto_7
    const/16 v0, 0xf

    invoke-static {p5, v0}, Lcom/android/internal/util/Preconditions;->checkFlagsArgument(II)I

    .line 2336
    invoke-static {p6, p7}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(J)J

    .line 2337
    cmp-long v0, p8, p6

    if-lez v0, :cond_9

    move v2, v3

    :cond_9
    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 2338
    const/16 v0, 0x1f

    invoke-static {p10, v0}, Lcom/android/internal/util/Preconditions;->checkFlagsArgument(II)I

    .line 2339
    return-void
.end method

.method private evalAllForegroundOpsLocked()V
    .locals 3

    .line 3069
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "uidi":I
    :goto_0
    if-ltz v0, :cond_1

    .line 3070
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/appop/AppOpsService$UidState;

    .line 3071
    .local v1, "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    iget-object v2, v1, Lcom/android/server/appop/AppOpsService$UidState;->foregroundOps:Landroid/util/SparseBooleanArray;

    if-eqz v2, :cond_0

    .line 3072
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v1, v2}, Lcom/android/server/appop/AppOpsService$UidState;->evalForegroundOps(Landroid/util/SparseArray;)V

    .line 3069
    .end local v1    # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3075
    .end local v0    # "uidi":I
    :cond_1
    return-void
.end method

.method private filterAppAccessUnlocked(Ljava/lang/String;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 3313
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 3314
    .local v0, "callingUid":I
    const-class v1, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageManagerInternal;

    .line 3315
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Ljava/lang/String;II)Z

    move-result v1

    .line 3314
    return v1
.end method

.method private finishOperationImpl(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "clientId"    # Landroid/os/IBinder;
    .param p2, "code"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "attributionTag"    # Ljava/lang/String;

    .line 4036
    invoke-direct {p0, p3}, Lcom/android/server/appop/AppOpsService;->verifyIncomingUid(I)V

    .line 4037
    invoke-direct {p0, p2}, Lcom/android/server/appop/AppOpsService;->verifyIncomingOp(I)V

    .line 4038
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-direct {p0, p4, v0}, Lcom/android/server/appop/AppOpsService;->verifyIncomingPackage(Ljava/lang/String;I)V

    .line 4040
    invoke-static {p3, p4}, Landroid/app/AppOpsManager;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4041
    .local v0, "resolvedPackageName":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 4042
    return-void

    .line 4045
    :cond_0
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, v0

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/server/appop/AppOpsService;->finishOperationUnchecked(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;)V

    .line 4046
    return-void
.end method

.method private finishOperationUnchecked(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "clientId"    # Landroid/os/IBinder;
    .param p2, "code"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "attributionTag"    # Ljava/lang/String;

    .line 4101
    :try_start_0
    invoke-direct {p0, p3, p4, p5}, Lcom/android/server/appop/AppOpsService;->verifyAndGetBypass(ILjava/lang/String;Ljava/lang/String;)Lcom/android/server/appop/AppOpsService$PackageVerificationResult;

    move-result-object v0

    .line 4102
    .local v0, "pvr":Lcom/android/server/appop/AppOpsService$PackageVerificationResult;
    iget-boolean v1, v0, Lcom/android/server/appop/AppOpsService$PackageVerificationResult;->isAttributionTagValid:Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_0

    .line 4103
    const/4 p5, 0x0

    move-object v9, p5

    goto :goto_0

    .line 4102
    :cond_0
    move-object v9, p5

    .line 4108
    .end local p5    # "attributionTag":Ljava/lang/String;
    .local v9, "attributionTag":Ljava/lang/String;
    :goto_0
    nop

    .line 4110
    monitor-enter p0

    .line 4111
    :try_start_1
    iget-boolean v6, v0, Lcom/android/server/appop/AppOpsService$PackageVerificationResult;->isAttributionTagValid:Z

    iget-object v7, v0, Lcom/android/server/appop/AppOpsService$PackageVerificationResult;->bypass:Landroid/app/AppOpsManager$RestrictionBypass;

    const/4 v8, 0x1

    move-object v1, p0

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, v9

    invoke-direct/range {v1 .. v8}, Lcom/android/server/appop/AppOpsService;->getOpLocked(IILjava/lang/String;Ljava/lang/String;ZLandroid/app/AppOpsManager$RestrictionBypass;Z)Lcom/android/server/appop/AppOpsService$Op;

    move-result-object p5

    .line 4113
    .local p5, "op":Lcom/android/server/appop/AppOpsService$Op;
    if-nez p5, :cond_1

    .line 4114
    const-string v1, "AppOps"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Operation not found: uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " pkg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") op="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4115
    invoke-static {p2}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4114
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4116
    monitor-exit p0

    return-void

    .line 4118
    :cond_1
    iget-object v1, p5, Lcom/android/server/appop/AppOpsService$Op;->mAttributions:Landroid/util/ArrayMap;

    invoke-virtual {v1, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/appop/AppOpsService$AttributedOp;

    .line 4119
    .local v1, "attributedOp":Lcom/android/server/appop/AppOpsService$AttributedOp;
    if-nez v1, :cond_2

    .line 4120
    const-string v2, "AppOps"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attribution not found: uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " pkg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ") op="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4121
    invoke-static {p2}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4120
    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4122
    monitor-exit p0

    return-void

    .line 4125
    :cond_2
    invoke-virtual {v1}, Lcom/android/server/appop/AppOpsService$AttributedOp;->isRunning()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v1}, Lcom/android/server/appop/AppOpsService$AttributedOp;->isPaused()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    .line 4128
    :cond_3
    const-string v2, "AppOps"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Operation not started: uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " pkg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ") op="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4129
    invoke-static {p2}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4128
    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 4126
    :cond_4
    :goto_1
    invoke-virtual {v1, p1}, Lcom/android/server/appop/AppOpsService$AttributedOp;->finished(Landroid/os/IBinder;)V

    .line 4131
    .end local v1    # "attributedOp":Lcom/android/server/appop/AppOpsService$AttributedOp;
    .end local p5    # "op":Lcom/android/server/appop/AppOpsService$Op;
    :goto_2
    monitor-exit p0

    .line 4132
    return-void

    .line 4131
    :catchall_0
    move-exception p5

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p5

    .line 4105
    .end local v0    # "pvr":Lcom/android/server/appop/AppOpsService$PackageVerificationResult;
    .end local v9    # "attributionTag":Ljava/lang/String;
    .local p5, "attributionTag":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 4106
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v1, "AppOps"

    const-string v2, "Cannot finishOperation"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4107
    return-void
.end method

.method private finishProxyOperationImpl(ILandroid/content/AttributionSource;Z)Ljava/lang/Void;
    .locals 20
    .param p1, "code"    # I
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .param p3, "skipProxyOperation"    # Z

    .line 4057
    move-object/from16 v6, p0

    move-object/from16 v7, p2

    invoke-virtual/range {p2 .. p2}, Landroid/content/AttributionSource;->getUid()I

    move-result v8

    .line 4058
    .local v8, "proxyUid":I
    invoke-virtual/range {p2 .. p2}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 4059
    .local v9, "proxyPackageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/content/AttributionSource;->getAttributionTag()Ljava/lang/String;

    move-result-object v10

    .line 4060
    .local v10, "proxyAttributionTag":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/content/AttributionSource;->getToken()Landroid/os/IBinder;

    move-result-object v11

    .line 4061
    .local v11, "proxyToken":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/content/AttributionSource;->getNextUid()I

    move-result v12

    .line 4062
    .local v12, "proxiedUid":I
    invoke-virtual/range {p2 .. p2}, Landroid/content/AttributionSource;->getNextPackageName()Ljava/lang/String;

    move-result-object v13

    .line 4063
    .local v13, "proxiedPackageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/content/AttributionSource;->getNextAttributionTag()Ljava/lang/String;

    move-result-object v14

    .line 4064
    .local v14, "proxiedAttributionTag":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/content/AttributionSource;->getNextToken()Landroid/os/IBinder;

    move-result-object v15

    .line 4066
    .local v15, "proxiedToken":Landroid/os/IBinder;
    if-eqz p3, :cond_0

    .line 4067
    invoke-direct {v6, v7}, Lcom/android/server/appop/AppOpsService;->isCallerAndAttributionTrusted(Landroid/content/AttributionSource;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move/from16 v16, v0

    .line 4069
    .end local p3    # "skipProxyOperation":Z
    .local v16, "skipProxyOperation":Z
    invoke-direct {v6, v7}, Lcom/android/server/appop/AppOpsService;->verifyIncomingProxyUid(Landroid/content/AttributionSource;)V

    .line 4070
    invoke-direct/range {p0 .. p1}, Lcom/android/server/appop/AppOpsService;->verifyIncomingOp(I)V

    .line 4071
    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-direct {v6, v9, v0}, Lcom/android/server/appop/AppOpsService;->verifyIncomingPackage(Ljava/lang/String;I)V

    .line 4072
    invoke-static {v12}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-direct {v6, v13, v0}, Lcom/android/server/appop/AppOpsService;->verifyIncomingPackage(Ljava/lang/String;I)V

    .line 4074
    invoke-static {v8, v9}, Landroid/app/AppOpsManager;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 4076
    .local v17, "resolvedProxyPackageName":Ljava/lang/String;
    const/16 v18, 0x0

    if-nez v17, :cond_1

    .line 4077
    return-object v18

    .line 4080
    :cond_1
    if-nez v16, :cond_2

    .line 4081
    move-object/from16 v0, p0

    move-object v1, v11

    move/from16 v2, p1

    move v3, v8

    move-object/from16 v4, v17

    move-object v5, v10

    invoke-direct/range {v0 .. v5}, Lcom/android/server/appop/AppOpsService;->finishOperationUnchecked(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;)V

    .line 4085
    :cond_2
    invoke-static {v12, v13}, Landroid/app/AppOpsManager;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 4087
    .local v19, "resolvedProxiedPackageName":Ljava/lang/String;
    if-nez v19, :cond_3

    .line 4088
    return-object v18

    .line 4091
    :cond_3
    move-object/from16 v0, p0

    move-object v1, v15

    move/from16 v2, p1

    move v3, v12

    move-object/from16 v4, v19

    move-object v5, v14

    invoke-direct/range {v0 .. v5}, Lcom/android/server/appop/AppOpsService;->finishOperationUnchecked(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;)V

    .line 4094
    return-object v18
.end method

.method private getAsyncNotedOpsKey(Ljava/lang/String;I)Landroid/util/Pair;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 3717
    new-instance v0, Landroid/util/Pair;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method private getBypassforPackage(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Landroid/app/AppOpsManager$RestrictionBypass;
    .locals 6
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 4484
    new-instance v0, Landroid/app/AppOpsManager$RestrictionBypass;

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isPrivileged()Z

    move-result v1

    iget-object v2, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    .line 4485
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUid()I

    move-result v3

    .line 4484
    const-string v4, "android.permission.EXEMPT_FROM_AUDIO_RECORD_RESTRICTIONS"

    const/4 v5, -0x1

    invoke-virtual {v2, v4, v5, v3}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-direct {v0, v1, v2}, Landroid/app/AppOpsManager$RestrictionBypass;-><init>(ZZ)V

    return-object v0
.end method

.method private static getOpEntryForResult(Lcom/android/server/appop/AppOpsService$Op;J)Landroid/app/AppOpsManager$OpEntry;
    .locals 1
    .param p0, "op"    # Lcom/android/server/appop/AppOpsService$Op;
    .param p1, "elapsedNow"    # J

    .line 2224
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService$Op;->createEntryLocked()Landroid/app/AppOpsManager$OpEntry;

    move-result-object v0

    return-object v0
.end method

.method private getOpLocked(IILjava/lang/String;Ljava/lang/String;ZLandroid/app/AppOpsManager$RestrictionBypass;Z)Lcom/android/server/appop/AppOpsService$Op;
    .locals 7
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "attributionTag"    # Ljava/lang/String;
    .param p5, "isAttributionTagValid"    # Z
    .param p6, "bypass"    # Landroid/app/AppOpsManager$RestrictionBypass;
    .param p7, "edit"    # Z

    .line 4713
    move-object v0, p0

    move v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    move-object v5, p6

    move v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/android/server/appop/AppOpsService;->getOpsLocked(ILjava/lang/String;Ljava/lang/String;ZLandroid/app/AppOpsManager$RestrictionBypass;Z)Lcom/android/server/appop/AppOpsService$Ops;

    move-result-object v0

    .line 4715
    .local v0, "ops":Lcom/android/server/appop/AppOpsService$Ops;
    if-nez v0, :cond_0

    .line 4716
    const/4 v1, 0x0

    return-object v1

    .line 4718
    :cond_0
    invoke-direct {p0, v0, p1, p2, p7}, Lcom/android/server/appop/AppOpsService;->getOpLocked(Lcom/android/server/appop/AppOpsService$Ops;IIZ)Lcom/android/server/appop/AppOpsService$Op;

    move-result-object v1

    return-object v1
.end method

.method private getOpLocked(Lcom/android/server/appop/AppOpsService$Ops;IIZ)Lcom/android/server/appop/AppOpsService$Op;
    .locals 8
    .param p1, "ops"    # Lcom/android/server/appop/AppOpsService$Ops;
    .param p2, "code"    # I
    .param p3, "uid"    # I
    .param p4, "edit"    # Z

    .line 4722
    invoke-virtual {p1, p2}, Lcom/android/server/appop/AppOpsService$Ops;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/appop/AppOpsService$Op;

    .line 4723
    .local v0, "op":Lcom/android/server/appop/AppOpsService$Op;
    if-nez v0, :cond_1

    .line 4724
    if-nez p4, :cond_0

    .line 4725
    const/4 v1, 0x0

    return-object v1

    .line 4727
    :cond_0
    new-instance v1, Lcom/android/server/appop/AppOpsService$Op;

    iget-object v4, p1, Lcom/android/server/appop/AppOpsService$Ops;->uidState:Lcom/android/server/appop/AppOpsService$UidState;

    iget-object v5, p1, Lcom/android/server/appop/AppOpsService$Ops;->packageName:Ljava/lang/String;

    move-object v2, v1

    move-object v3, p0

    move v6, p2

    move v7, p3

    invoke-direct/range {v2 .. v7}, Lcom/android/server/appop/AppOpsService$Op;-><init>(Lcom/android/server/appop/AppOpsService;Lcom/android/server/appop/AppOpsService$UidState;Ljava/lang/String;II)V

    move-object v0, v1

    .line 4728
    invoke-virtual {p1, p2, v0}, Lcom/android/server/appop/AppOpsService$Ops;->put(ILjava/lang/Object;)V

    .line 4730
    :cond_1
    if-eqz p4, :cond_2

    .line 4731
    invoke-direct {p0}, Lcom/android/server/appop/AppOpsService;->scheduleWriteLocked()V

    .line 4733
    :cond_2
    return-object v0
.end method

.method private getOpsLocked(ILjava/lang/String;Ljava/lang/String;ZLandroid/app/AppOpsManager$RestrictionBypass;Z)Lcom/android/server/appop/AppOpsService$Ops;
    .locals 3
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "attributionTag"    # Ljava/lang/String;
    .param p4, "isAttributionTagValid"    # Z
    .param p5, "bypass"    # Landroid/app/AppOpsManager$RestrictionBypass;
    .param p6, "edit"    # Z

    .line 4642
    invoke-direct {p0, p1, p6}, Lcom/android/server/appop/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/appop/AppOpsService$UidState;

    move-result-object v0

    .line 4643
    .local v0, "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 4644
    return-object v1

    .line 4647
    :cond_0
    iget-object v2, v0, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    if-nez v2, :cond_2

    .line 4648
    if-nez p6, :cond_1

    .line 4649
    return-object v1

    .line 4651
    :cond_1
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, v0, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .line 4654
    :cond_2
    iget-object v2, v0, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appop/AppOpsService$Ops;

    .line 4655
    .local v2, "ops":Lcom/android/server/appop/AppOpsService$Ops;
    if-nez v2, :cond_4

    .line 4656
    if-nez p6, :cond_3

    .line 4657
    return-object v1

    .line 4659
    :cond_3
    new-instance v1, Lcom/android/server/appop/AppOpsService$Ops;

    invoke-direct {v1, p2, v0}, Lcom/android/server/appop/AppOpsService$Ops;-><init>(Ljava/lang/String;Lcom/android/server/appop/AppOpsService$UidState;)V

    move-object v2, v1

    .line 4660
    iget-object v1, v0, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4663
    :cond_4
    if-eqz p6, :cond_7

    .line 4664
    if-eqz p5, :cond_5

    .line 4665
    iput-object p5, v2, Lcom/android/server/appop/AppOpsService$Ops;->bypass:Landroid/app/AppOpsManager$RestrictionBypass;

    .line 4668
    :cond_5
    if-eqz p3, :cond_7

    .line 4669
    iget-object v1, v2, Lcom/android/server/appop/AppOpsService$Ops;->knownAttributionTags:Landroid/util/ArraySet;

    invoke-virtual {v1, p3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 4670
    if-eqz p4, :cond_6

    .line 4671
    iget-object v1, v2, Lcom/android/server/appop/AppOpsService$Ops;->validAttributionTags:Landroid/util/ArraySet;

    invoke-virtual {v1, p3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4673
    :cond_6
    iget-object v1, v2, Lcom/android/server/appop/AppOpsService$Ops;->validAttributionTags:Landroid/util/ArraySet;

    invoke-virtual {v1, p3}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 4678
    :cond_7
    :goto_0
    return-object v2
.end method

.method private getPackageListAndResample()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 6860
    invoke-direct {p0}, Lcom/android/server/appop/AppOpsService;->getPackageNamesForSampling()Ljava/util/List;

    move-result-object v0

    .line 6861
    .local v0, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    monitor-enter p0

    .line 6862
    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/appop/AppOpsService;->resamplePackageAndAppOpLocked(Ljava/util/List;)V

    .line 6863
    monitor-exit p0

    .line 6864
    return-object v0

    .line 6863
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;
    .locals 1

    .line 4469
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    if-nez v0, :cond_0

    .line 4470
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 4473
    :cond_0
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    return-object v0
.end method

.method private getPackageNamesForSampling()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 6948
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6949
    .local v0, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-class v1, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageManagerInternal;

    .line 6951
    .local v1, "packageManagerInternal":Landroid/content/pm/PackageManagerInternal;
    invoke-virtual {v1}, Landroid/content/pm/PackageManagerInternal;->getPackageList()Lcom/android/server/pm/PackageList;

    move-result-object v2

    .line 6952
    .local v2, "packages":Lcom/android/server/pm/PackageList;
    invoke-virtual {v2}, Lcom/android/server/pm/PackageList;->getPackageNames()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 6953
    .local v4, "packageName":Ljava/lang/String;
    const/16 v5, 0x1000

    .line 6954
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v6

    iget-object v7, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getUserId()I

    move-result v7

    .line 6953
    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/content/pm/PackageManagerInternal;->getPackageInfo(Ljava/lang/String;III)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 6955
    .local v5, "pkg":Landroid/content/pm/PackageInfo;
    invoke-direct {p0, v5}, Lcom/android/server/appop/AppOpsService;->isSamplingTarget(Landroid/content/pm/PackageInfo;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 6956
    iget-object v6, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6958
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "pkg":Landroid/content/pm/PackageInfo;
    :cond_0
    goto :goto_0

    .line 6959
    :cond_1
    return-object v0
.end method

.method private static getPackagesForUid(I)[Ljava/lang/String;
    .locals 2
    .param p0, "uid"    # I

    .line 7022
    const/4 v0, 0x0

    .line 7026
    .local v0, "packageNames":[Ljava/lang/String;
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 7028
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 7031
    goto :goto_0

    .line 7029
    :catch_0
    move-exception v1

    .line 7033
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 7034
    sget-object v1, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    return-object v1

    .line 7036
    :cond_1
    return-object v0
.end method

.method private getRuntimeAppOpsList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 6937
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6938
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0x74

    if-ge v1, v2, :cond_1

    .line 6939
    invoke-virtual {p0, v1}, Lcom/android/server/appop/AppOpsService;->shouldCollectNotes(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6940
    invoke-static {v1}, Landroid/app/AppOpsManager;->opToPublicName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6938
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6943
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method private getUidStateLocked(IZ)Lcom/android/server/appop/AppOpsService$UidState;
    .locals 2
    .param p1, "uid"    # I
    .param p2, "edit"    # Z

    .line 4361
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/appop/AppOpsService$UidState;

    .line 4362
    .local v0, "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    if-nez v0, :cond_1

    .line 4363
    if-nez p2, :cond_0

    .line 4364
    const/4 v1, 0x0

    return-object v1

    .line 4366
    :cond_0
    new-instance v1, Lcom/android/server/appop/AppOpsService$UidState;

    invoke-direct {v1, p0, p1}, Lcom/android/server/appop/AppOpsService$UidState;-><init>(Lcom/android/server/appop/AppOpsService;I)V

    move-object v0, v1

    .line 4367
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 4369
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/server/appop/AppOpsService;->updatePendingStateIfNeededLocked(Lcom/android/server/appop/AppOpsService$UidState;)V

    .line 4371
    :goto_0
    return-object v0
.end method

.method private initializeRarelyUsedPackagesList(Landroid/util/ArraySet;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 6895
    .local p1, "candidates":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/AppOpsManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    .line 6896
    .local v0, "appOps":Landroid/app/AppOpsManager;
    invoke-direct {p0}, Lcom/android/server/appop/AppOpsService;->getRuntimeAppOpsList()Ljava/util/List;

    move-result-object v1

    .line 6897
    .local v1, "runtimeAppOpsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;

    .line 6899
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v3

    sget-object v4, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    const-wide/16 v5, 0x7

    invoke-virtual {v3, v5, v6, v4}, Ljava/time/Instant;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/Instant;

    move-result-object v3

    invoke-virtual {v3}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    const-wide v5, 0x7fffffffffffffffL

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;-><init>(JJ)V

    .line 6900
    invoke-virtual {v2, v1}, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;->setOpNames(Ljava/util/List;)Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;

    move-result-object v2

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;->setFlags(I)Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;

    move-result-object v2

    .line 6901
    invoke-virtual {v2}, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;->build()Landroid/app/AppOpsManager$HistoricalOpsRequest;

    move-result-object v2

    .line 6902
    .local v2, "histOpsRequest":Landroid/app/AppOpsManager$HistoricalOpsRequest;
    sget-object v3, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v4, Lcom/android/server/appop/AppOpsService$8;

    invoke-direct {v4, p0, p1}, Lcom/android/server/appop/AppOpsService$8;-><init>(Lcom/android/server/appop/AppOpsService;Landroid/util/ArraySet;)V

    invoke-virtual {v0, v2, v3, v4}, Landroid/app/AppOpsManager;->getHistoricalOps(Landroid/app/AppOpsManager$HistoricalOpsRequest;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 6933
    return-void
.end method

.method private isAttributionInPackage(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/lang/String;)Z
    .locals 5
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "attributionTag"    # Ljava/lang/String;

    .line 4611
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 4612
    return v0

    .line 4613
    :cond_0
    const/4 v1, 0x1

    if-nez p2, :cond_1

    .line 4614
    return v1

    .line 4616
    :cond_1
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getAttributions()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 4617
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getAttributions()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 4618
    .local v2, "numAttributions":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_3

    .line 4619
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getAttributions()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/parsing/component/ParsedAttribution;

    iget-object v4, v4, Landroid/content/pm/parsing/component/ParsedAttribution;->tag:Ljava/lang/String;

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 4620
    return v1

    .line 4618
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4625
    .end local v2    # "numAttributions":I
    .end local v3    # "i":I
    :cond_3
    return v0
.end method

.method private isCallerAndAttributionTrusted(Landroid/content/AttributionSource;)Z
    .locals 6
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;

    .line 4351
    invoke-virtual {p1}, Landroid/content/AttributionSource;->getUid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    .line 4352
    invoke-virtual {p1, v0}, Landroid/content/AttributionSource;->isTrusted(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4353
    return v2

    .line 4355
    :cond_0
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    .line 4356
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/4 v4, 0x0

    .line 4355
    const-string v5, "android.permission.UPDATE_APP_OPS_STATS"

    invoke-virtual {v0, v5, v1, v3, v4}, Landroid/content/Context;->checkPermission(Ljava/lang/String;IILandroid/os/IBinder;)I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method private isOpRestrictedDueToSuspend(ILjava/lang/String;I)Z
    .locals 2
    .param p1, "code"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "uid"    # I

    .line 4737
    sget-object v0, Lcom/android/server/appop/AppOpsService;->OPS_RESTRICTED_ON_SUSPEND:[I

    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4738
    const/4 v0, 0x0

    return v0

    .line 4740
    :cond_0
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 4741
    .local v0, "pmi":Landroid/content/pm/PackageManagerInternal;
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-virtual {v0, p2, v1}, Landroid/content/pm/PackageManagerInternal;->isPackageSuspended(Ljava/lang/String;I)Z

    move-result v1

    return v1
.end method

.method private isOpRestrictedLocked(IILjava/lang/String;Ljava/lang/String;Landroid/app/AppOpsManager$RestrictionBypass;)Z
    .locals 8
    .param p1, "uid"    # I
    .param p2, "code"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "attributionTag"    # Ljava/lang/String;
    .param p5, "appBypass"    # Landroid/app/AppOpsManager$RestrictionBypass;

    .line 4746
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mOpGlobalRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 4748
    .local v0, "restrictionSetCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x1

    if-ge v1, v0, :cond_1

    .line 4749
    iget-object v3, p0, Lcom/android/server/appop/AppOpsService;->mOpGlobalRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appop/AppOpsService$ClientGlobalRestrictionState;

    .line 4750
    .local v3, "restrictionState":Lcom/android/server/appop/AppOpsService$ClientGlobalRestrictionState;
    invoke-virtual {v3, p2}, Lcom/android/server/appop/AppOpsService$ClientGlobalRestrictionState;->hasRestriction(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4751
    return v2

    .line 4748
    .end local v3    # "restrictionState":Lcom/android/server/appop/AppOpsService$ClientGlobalRestrictionState;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4755
    .end local v1    # "i":I
    :cond_1
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 4756
    .local v1, "userHandle":I
    iget-object v3, p0, Lcom/android/server/appop/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 4758
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    const/4 v4, 0x0

    if-ge v3, v0, :cond_6

    .line 4761
    iget-object v5, p0, Lcom/android/server/appop/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;

    .line 4762
    .local v5, "restrictionState":Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;
    invoke-virtual {v5, p2, p3, p4, v1}, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->hasRestriction(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 4763
    invoke-static {p2}, Landroid/app/AppOpsManager;->opAllowSystemBypassRestriction(I)Landroid/app/AppOpsManager$RestrictionBypass;

    move-result-object v6

    .line 4764
    .local v6, "opBypass":Landroid/app/AppOpsManager$RestrictionBypass;
    if-eqz v6, :cond_4

    .line 4766
    monitor-enter p0

    .line 4767
    :try_start_0
    iget-boolean v7, v6, Landroid/app/AppOpsManager$RestrictionBypass;->isPrivileged:Z

    if-eqz v7, :cond_2

    if-eqz p5, :cond_2

    iget-boolean v7, p5, Landroid/app/AppOpsManager$RestrictionBypass;->isPrivileged:Z

    if-eqz v7, :cond_2

    .line 4768
    monitor-exit p0

    return v4

    .line 4770
    :cond_2
    iget-boolean v7, v6, Landroid/app/AppOpsManager$RestrictionBypass;->isRecordAudioRestrictionExcept:Z

    if-eqz v7, :cond_3

    if-eqz p5, :cond_3

    iget-boolean v7, p5, Landroid/app/AppOpsManager$RestrictionBypass;->isRecordAudioRestrictionExcept:Z

    if-eqz v7, :cond_3

    .line 4772
    monitor-exit p0

    return v4

    .line 4774
    :cond_3
    monitor-exit p0

    goto :goto_2

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 4776
    :cond_4
    :goto_2
    return v2

    .line 4758
    .end local v5    # "restrictionState":Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;
    .end local v6    # "opBypass":Landroid/app/AppOpsManager$RestrictionBypass;
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 4779
    .end local v3    # "i":I
    :cond_6
    return v4
.end method

.method private isSamplingTarget(Landroid/content/pm/PackageInfo;)Z
    .locals 8
    .param p1, "pkg"    # Landroid/content/pm/PackageInfo;

    .line 6964
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 6965
    return v0

    .line 6967
    :cond_0
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 6968
    .local v1, "requestedPermissions":[Ljava/lang/String;
    if-nez v1, :cond_1

    .line 6969
    return v0

    .line 6971
    :cond_1
    array-length v2, v1

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v1, v3

    .line 6974
    .local v4, "permission":Ljava/lang/String;
    :try_start_0
    iget-object v5, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, v4, v0}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v5
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6977
    .local v5, "permissionInfo":Landroid/content/pm/PermissionInfo;
    nop

    .line 6978
    invoke-virtual {v5}, Landroid/content/pm/PermissionInfo;->getProtection()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    .line 6979
    return v7

    .line 6975
    .end local v5    # "permissionInfo":Landroid/content/pm/PermissionInfo;
    :catch_0
    move-exception v5

    .line 6976
    .local v5, "ignored":Landroid/content/pm/PackageManager$NameNotFoundException;
    nop

    .line 6971
    .end local v4    # "permission":Ljava/lang/String;
    .end local v5    # "ignored":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 6982
    :cond_3
    return v0
.end method

.method static synthetic lambda$collectAsyncNotedOp$2(Landroid/app/AsyncNotedAppOp;[ZILjava/lang/String;ILjava/lang/String;Lcom/android/internal/app/IAppOpsAsyncNotedCallback;)V
    .locals 3
    .param p0, "asyncNotedOp"    # Landroid/app/AsyncNotedAppOp;
    .param p1, "wasNoteForwarded"    # [Z
    .param p2, "opCode"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "uid"    # I
    .param p5, "attributionTag"    # Ljava/lang/String;
    .param p6, "cb"    # Lcom/android/internal/app/IAppOpsAsyncNotedCallback;

    .line 3679
    :try_start_0
    invoke-interface {p6, p0}, Lcom/android/internal/app/IAppOpsAsyncNotedCallback;->opNoted(Landroid/app/AsyncNotedAppOp;)V

    .line 3680
    const/4 v0, 0x0

    const/4 v1, 0x1

    aput-boolean v1, p1, v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3685
    goto :goto_0

    .line 3681
    :catch_0
    move-exception v0

    .line 3682
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not forward noteOp of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppOps"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3686
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method static synthetic lambda$collectNoteOpCallsForValidation$3(Lcom/android/server/appop/AppOpsService;)V
    .locals 0
    .param p0, "that"    # Lcom/android/server/appop/AppOpsService;

    .line 7425
    invoke-direct {p0}, Lcom/android/server/appop/AppOpsService;->writeNoteOps()V

    .line 7426
    return-void
.end method

.method private static synthetic lambda$collectNoteOpCallsForValidation$4(Lcom/android/server/appop/AppOpsService;)V
    .locals 1
    .param p0, "that"    # Lcom/android/server/appop/AppOpsService;

    .line 7424
    new-instance v0, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda13;

    invoke-direct {v0, p0}, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda13;-><init>(Lcom/android/server/appop/AppOpsService;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 7427
    return-void
.end method

.method static synthetic lambda$getHistoricalOps$1(Landroid/os/RemoteCallback;)V
    .locals 1
    .param p0, "callback"    # Landroid/os/RemoteCallback;

    .line 2366
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, v0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    return-void
.end method

.method private noteOperationImpl(IILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)Landroid/app/SyncNotedAppOp;
    .locals 16
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "attributionTag"    # Ljava/lang/String;
    .param p5, "shouldCollectAsyncNotedOp"    # Z
    .param p6, "message"    # Ljava/lang/String;
    .param p7, "shouldCollectMessage"    # Z

    .line 3394
    move-object/from16 v12, p0

    move-object/from16 v13, p3

    move/from16 v14, p2

    invoke-direct {v12, v14}, Lcom/android/server/appop/AppOpsService;->verifyIncomingUid(I)V

    .line 3395
    invoke-direct/range {p0 .. p1}, Lcom/android/server/appop/AppOpsService;->verifyIncomingOp(I)V

    .line 3396
    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-direct {v12, v13, v0}, Lcom/android/server/appop/AppOpsService;->verifyIncomingPackage(Ljava/lang/String;I)V

    .line 3398
    invoke-static/range {p2 .. p3}, Landroid/app/AppOpsManager;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 3399
    .local v15, "resolvedPackageName":Ljava/lang/String;
    if-nez v15, :cond_0

    .line 3400
    new-instance v0, Landroid/app/SyncNotedAppOp;

    const/4 v1, 0x1

    move/from16 v11, p1

    move-object/from16 v10, p4

    invoke-direct {v0, v1, v11, v10, v13}, Landroid/app/SyncNotedAppOp;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 3403
    :cond_0
    move/from16 v11, p1

    move-object/from16 v10, p4

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object v3, v15

    move-object/from16 v4, p4

    move/from16 v9, p5

    move-object/from16 v10, p6

    move/from16 v11, p7

    invoke-direct/range {v0 .. v11}, Lcom/android/server/appop/AppOpsService;->noteOperationUnchecked(IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZLjava/lang/String;Z)Landroid/app/SyncNotedAppOp;

    move-result-object v0

    return-object v0
.end method

.method private noteOperationUnchecked(IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZLjava/lang/String;Z)Landroid/app/SyncNotedAppOp;
    .locals 21
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "attributionTag"    # Ljava/lang/String;
    .param p5, "proxyUid"    # I
    .param p6, "proxyPackageName"    # Ljava/lang/String;
    .param p7, "proxyAttributionTag"    # Ljava/lang/String;
    .param p8, "flags"    # I
    .param p9, "shouldCollectAsyncNotedOp"    # Z
    .param p10, "message"    # Ljava/lang/String;
    .param p11, "shouldCollectMessage"    # Z

    move-object/from16 v9, p0

    move/from16 v10, p1

    move/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v1, p4

    move/from16 v13, p8

    .line 3415
    const/4 v8, 0x2

    move-object/from16 v14, p6

    :try_start_0
    invoke-direct {v9, v11, v12, v1, v14}, Lcom/android/server/appop/AppOpsService;->verifyAndGetBypass(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/appop/AppOpsService$PackageVerificationResult;

    move-result-object v0

    move-object v15, v0

    .line 3416
    .local v15, "pvr":Lcom/android/server/appop/AppOpsService$PackageVerificationResult;
    const/4 v7, 0x1

    if-nez v1, :cond_0

    move v2, v7

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 3417
    .local v2, "wasNull":Z
    :goto_0
    iget-boolean v3, v15, Lcom/android/server/appop/AppOpsService$PackageVerificationResult;->isAttributionTagValid:Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v3, :cond_1

    .line 3418
    const/4 v1, 0x0

    move-object v6, v1

    .end local p4    # "attributionTag":Ljava/lang/String;
    .local v1, "attributionTag":Ljava/lang/String;
    goto :goto_1

    .line 3417
    .end local v1    # "attributionTag":Ljava/lang/String;
    .restart local p4    # "attributionTag":Ljava/lang/String;
    :cond_1
    move-object v6, v1

    .line 3424
    .end local v2    # "wasNull":Z
    .end local p4    # "attributionTag":Ljava/lang/String;
    .local v6, "attributionTag":Ljava/lang/String;
    :goto_1
    nop

    .line 3426
    monitor-enter p0

    .line 3427
    :try_start_1
    iget-boolean v5, v15, Lcom/android/server/appop/AppOpsService$PackageVerificationResult;->isAttributionTagValid:Z

    iget-object v4, v15, Lcom/android/server/appop/AppOpsService$PackageVerificationResult;->bypass:Landroid/app/AppOpsManager$RestrictionBypass;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_8

    const/16 v16, 0x1

    move-object/from16 v1, p0

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v17, v4

    move-object v4, v6

    move-object/from16 v18, v6

    .end local v6    # "attributionTag":Ljava/lang/String;
    .local v18, "attributionTag":Ljava/lang/String;
    move-object/from16 v6, v17

    move v0, v7

    move/from16 v7, v16

    :try_start_2
    invoke-direct/range {v1 .. v7}, Lcom/android/server/appop/AppOpsService;->getOpsLocked(ILjava/lang/String;Ljava/lang/String;ZLandroid/app/AppOpsManager$RestrictionBypass;Z)Lcom/android/server/appop/AppOpsService$Ops;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_7

    move-object v7, v1

    .line 3429
    .local v7, "ops":Lcom/android/server/appop/AppOpsService$Ops;
    if-nez v7, :cond_2

    .line 3430
    const/4 v0, 0x1

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, v18

    move/from16 v6, p8

    move-object/from16 v19, v7

    .end local v7    # "ops":Lcom/android/server/appop/AppOpsService$Ops;
    .local v19, "ops":Lcom/android/server/appop/AppOpsService$Ops;
    move v7, v0

    :try_start_3
    invoke-direct/range {v1 .. v7}, Lcom/android/server/appop/AppOpsService;->scheduleOpNotedIfNeededLocked(IILjava/lang/String;Ljava/lang/String;II)V

    .line 3435
    new-instance v0, Landroid/app/SyncNotedAppOp;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " flags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3436
    invoke-static/range {p8 .. p8}, Landroid/app/AppOpsManager;->flagsToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object/from16 v7, v18

    .end local v18    # "attributionTag":Ljava/lang/String;
    .local v7, "attributionTag":Ljava/lang/String;
    :try_start_4
    invoke-direct {v0, v8, v10, v7, v1}, Landroid/app/SyncNotedAppOp;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 3435
    return-object v0

    .line 3501
    .end local v7    # "attributionTag":Ljava/lang/String;
    .end local v19    # "ops":Lcom/android/server/appop/AppOpsService$Ops;
    .restart local v18    # "attributionTag":Ljava/lang/String;
    :catchall_0
    move-exception v0

    move-object/from16 v19, v15

    move-object/from16 v11, v18

    .end local v18    # "attributionTag":Ljava/lang/String;
    .restart local v7    # "attributionTag":Ljava/lang/String;
    goto/16 :goto_6

    .line 3438
    .local v7, "ops":Lcom/android/server/appop/AppOpsService$Ops;
    .restart local v18    # "attributionTag":Ljava/lang/String;
    :cond_2
    move-object/from16 v19, v7

    move-object/from16 v7, v18

    .end local v18    # "attributionTag":Ljava/lang/String;
    .local v7, "attributionTag":Ljava/lang/String;
    .restart local v19    # "ops":Lcom/android/server/appop/AppOpsService$Ops;
    move-object/from16 v8, v19

    .end local v19    # "ops":Lcom/android/server/appop/AppOpsService$Ops;
    .local v8, "ops":Lcom/android/server/appop/AppOpsService$Ops;
    :try_start_5
    invoke-direct {v9, v8, v10, v11, v0}, Lcom/android/server/appop/AppOpsService;->getOpLocked(Lcom/android/server/appop/AppOpsService$Ops;IIZ)Lcom/android/server/appop/AppOpsService$Op;

    move-result-object v1

    move-object v6, v1

    .line 3439
    .local v6, "op":Lcom/android/server/appop/AppOpsService$Op;
    invoke-static {v6, v6, v7}, Lcom/android/server/appop/AppOpsService$Op;->access$1500(Lcom/android/server/appop/AppOpsService$Op;Lcom/android/server/appop/AppOpsService$Op;Ljava/lang/String;)Lcom/android/server/appop/AppOpsService$AttributedOp;

    move-result-object v1

    move-object v5, v1

    .line 3440
    .local v5, "attributedOp":Lcom/android/server/appop/AppOpsService$AttributedOp;
    invoke-virtual {v5}, Lcom/android/server/appop/AppOpsService$AttributedOp;->isRunning()Z

    move-result v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    if-eqz v1, :cond_3

    .line 3441
    :try_start_6
    const-string v1, "AppOps"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Noting op not finished: uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " pkg "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " startTime of in progress event="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3443
    invoke-static {v5}, Lcom/android/server/appop/AppOpsService$AttributedOp;->access$2300(Lcom/android/server/appop/AppOpsService$AttributedOp;)Landroid/util/ArrayMap;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;

    invoke-virtual {v3}, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->getStartTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3441
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_2

    .line 3501
    .end local v5    # "attributedOp":Lcom/android/server/appop/AppOpsService$AttributedOp;
    .end local v6    # "op":Lcom/android/server/appop/AppOpsService$Op;
    .end local v8    # "ops":Lcom/android/server/appop/AppOpsService$Ops;
    :catchall_1
    move-exception v0

    move-object v11, v7

    move-object/from16 v19, v15

    goto/16 :goto_6

    .line 3446
    .restart local v5    # "attributedOp":Lcom/android/server/appop/AppOpsService$AttributedOp;
    .restart local v6    # "op":Lcom/android/server/appop/AppOpsService$Op;
    .restart local v8    # "ops":Lcom/android/server/appop/AppOpsService$Ops;
    :cond_3
    :goto_2
    :try_start_7
    invoke-static/range {p1 .. p1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v1

    move v4, v1

    .line 3447
    .local v4, "switchCode":I
    iget-object v1, v8, Lcom/android/server/appop/AppOpsService$Ops;->uidState:Lcom/android/server/appop/AppOpsService$UidState;

    move-object v3, v1

    .line 3448
    .local v3, "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    iget-object v2, v15, Lcom/android/server/appop/AppOpsService$PackageVerificationResult;->bypass:Landroid/app/AppOpsManager$RestrictionBypass;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    move-object/from16 v1, p0

    move-object/from16 v16, v2

    move/from16 v2, p2

    move-object v0, v3

    .end local v3    # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .local v0, "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    move/from16 v3, p1

    move v14, v4

    .end local v4    # "switchCode":I
    .local v14, "switchCode":I
    move-object/from16 v4, p3

    move-object/from16 v19, v15

    move-object v15, v5

    .end local v5    # "attributedOp":Lcom/android/server/appop/AppOpsService$AttributedOp;
    .local v15, "attributedOp":Lcom/android/server/appop/AppOpsService$AttributedOp;
    .local v19, "pvr":Lcom/android/server/appop/AppOpsService$PackageVerificationResult;
    move-object v5, v7

    move-object/from16 v20, v6

    .end local v6    # "op":Lcom/android/server/appop/AppOpsService$Op;
    .local v20, "op":Lcom/android/server/appop/AppOpsService$Op;
    move-object/from16 v6, v16

    :try_start_8
    invoke-direct/range {v1 .. v6}, Lcom/android/server/appop/AppOpsService;->isOpRestrictedLocked(IILjava/lang/String;Ljava/lang/String;Landroid/app/AppOpsManager$RestrictionBypass;)Z

    move-result v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    if-eqz v1, :cond_4

    .line 3449
    :try_start_9
    iget v1, v0, Lcom/android/server/appop/AppOpsService$UidState;->state:I

    invoke-virtual {v15, v1, v13}, Lcom/android/server/appop/AppOpsService$AttributedOp;->rejected(II)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 3450
    const/16 v16, 0x1

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object v5, v7

    move/from16 v6, p8

    move-object/from16 p4, v8

    move-object v8, v7

    .end local v7    # "attributionTag":Ljava/lang/String;
    .local v8, "attributionTag":Ljava/lang/String;
    .local p4, "ops":Lcom/android/server/appop/AppOpsService$Ops;
    move/from16 v7, v16

    :try_start_a
    invoke-direct/range {v1 .. v7}, Lcom/android/server/appop/AppOpsService;->scheduleOpNotedIfNeededLocked(IILjava/lang/String;Ljava/lang/String;II)V

    .line 3452
    new-instance v1, Landroid/app/SyncNotedAppOp;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v10, v8, v12}, Landroid/app/SyncNotedAppOp;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    return-object v1

    .line 3501
    .end local v0    # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .end local v8    # "attributionTag":Ljava/lang/String;
    .end local v14    # "switchCode":I
    .end local v15    # "attributedOp":Lcom/android/server/appop/AppOpsService$AttributedOp;
    .end local v20    # "op":Lcom/android/server/appop/AppOpsService$Op;
    .end local p4    # "ops":Lcom/android/server/appop/AppOpsService$Ops;
    .restart local v7    # "attributionTag":Ljava/lang/String;
    :catchall_2
    move-exception v0

    move-object v11, v7

    .end local v7    # "attributionTag":Ljava/lang/String;
    .restart local v8    # "attributionTag":Ljava/lang/String;
    goto/16 :goto_6

    .line 3457
    .restart local v0    # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .restart local v7    # "attributionTag":Ljava/lang/String;
    .local v8, "ops":Lcom/android/server/appop/AppOpsService$Ops;
    .restart local v14    # "switchCode":I
    .restart local v15    # "attributedOp":Lcom/android/server/appop/AppOpsService$AttributedOp;
    .restart local v20    # "op":Lcom/android/server/appop/AppOpsService$Op;
    :cond_4
    move-object/from16 p4, v8

    move-object v8, v7

    .end local v7    # "attributionTag":Ljava/lang/String;
    .local v8, "attributionTag":Ljava/lang/String;
    .restart local p4    # "ops":Lcom/android/server/appop/AppOpsService$Ops;
    :try_start_b
    iget-object v1, v0, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    if-eqz v1, :cond_6

    :try_start_c
    iget-object v1, v0, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v14}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_6

    .line 3458
    iget-object v1, v0, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v14}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    invoke-virtual {v0, v10, v1}, Lcom/android/server/appop/AppOpsService$UidState;->evalMode(II)I

    move-result v1

    move v7, v1

    .line 3459
    .local v7, "uidMode":I
    if-eqz v7, :cond_5

    .line 3463
    iget v1, v0, Lcom/android/server/appop/AppOpsService$UidState;->state:I

    invoke-virtual {v15, v1, v13}, Lcom/android/server/appop/AppOpsService$AttributedOp;->rejected(II)V

    .line 3464
    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object v5, v8

    move/from16 v6, p8

    move/from16 v16, v7

    .end local v7    # "uidMode":I
    .local v16, "uidMode":I
    invoke-direct/range {v1 .. v7}, Lcom/android/server/appop/AppOpsService;->scheduleOpNotedIfNeededLocked(IILjava/lang/String;Ljava/lang/String;II)V

    .line 3466
    new-instance v1, Landroid/app/SyncNotedAppOp;

    move/from16 v2, v16

    .end local v16    # "uidMode":I
    .local v2, "uidMode":I
    invoke-direct {v1, v2, v10, v8, v12}, Landroid/app/SyncNotedAppOp;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    monitor-exit p0

    return-object v1

    .line 3459
    .end local v2    # "uidMode":I
    .restart local v7    # "uidMode":I
    :cond_5
    move v2, v7

    .line 3468
    .end local v7    # "uidMode":I
    move-object/from16 v18, p4

    goto :goto_4

    .line 3501
    .end local v0    # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .end local v14    # "switchCode":I
    .end local v15    # "attributedOp":Lcom/android/server/appop/AppOpsService$AttributedOp;
    .end local v20    # "op":Lcom/android/server/appop/AppOpsService$Op;
    .end local p4    # "ops":Lcom/android/server/appop/AppOpsService$Ops;
    :catchall_3
    move-exception v0

    move-object v11, v8

    goto/16 :goto_6

    .line 3469
    .restart local v0    # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .restart local v14    # "switchCode":I
    .restart local v15    # "attributedOp":Lcom/android/server/appop/AppOpsService$AttributedOp;
    .restart local v20    # "op":Lcom/android/server/appop/AppOpsService$Op;
    .restart local p4    # "ops":Lcom/android/server/appop/AppOpsService$Ops;
    :cond_6
    if-eq v14, v10, :cond_7

    move-object/from16 v7, p4

    const/4 v1, 0x1

    .end local p4    # "ops":Lcom/android/server/appop/AppOpsService$Ops;
    .local v7, "ops":Lcom/android/server/appop/AppOpsService$Ops;
    invoke-direct {v9, v7, v14, v11, v1}, Lcom/android/server/appop/AppOpsService;->getOpLocked(Lcom/android/server/appop/AppOpsService$Ops;IIZ)Lcom/android/server/appop/AppOpsService$Op;

    move-result-object v6
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    goto :goto_3

    .line 3470
    .end local v7    # "ops":Lcom/android/server/appop/AppOpsService$Ops;
    .restart local p4    # "ops":Lcom/android/server/appop/AppOpsService$Ops;
    :cond_7
    move-object/from16 v7, p4

    .end local p4    # "ops":Lcom/android/server/appop/AppOpsService$Ops;
    .restart local v7    # "ops":Lcom/android/server/appop/AppOpsService$Ops;
    move-object/from16 v6, v20

    :goto_3
    move-object/from16 v16, v6

    .line 3471
    .local v16, "switchOp":Lcom/android/server/appop/AppOpsService$Op;
    :try_start_d
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/appop/AppOpsService$Op;->evalMode()I

    move-result v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    move v6, v1

    .line 3472
    .local v6, "mode":I
    if-eqz v6, :cond_8

    .line 3476
    :try_start_e
    iget v1, v0, Lcom/android/server/appop/AppOpsService$UidState;->state:I

    invoke-virtual {v15, v1, v13}, Lcom/android/server/appop/AppOpsService$AttributedOp;->rejected(II)V

    .line 3477
    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object v5, v8

    move/from16 p4, v6

    .end local v6    # "mode":I
    .local p4, "mode":I
    move/from16 v6, p8

    move-object/from16 v18, v7

    .end local v7    # "ops":Lcom/android/server/appop/AppOpsService$Ops;
    .local v18, "ops":Lcom/android/server/appop/AppOpsService$Ops;
    move/from16 v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/server/appop/AppOpsService;->scheduleOpNotedIfNeededLocked(IILjava/lang/String;Ljava/lang/String;II)V

    .line 3479
    new-instance v1, Landroid/app/SyncNotedAppOp;

    move/from16 v2, p4

    .end local p4    # "mode":I
    .local v2, "mode":I
    invoke-direct {v1, v2, v10, v8, v12}, Landroid/app/SyncNotedAppOp;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    return-object v1

    .line 3472
    .end local v2    # "mode":I
    .end local v18    # "ops":Lcom/android/server/appop/AppOpsService$Ops;
    .restart local v6    # "mode":I
    .restart local v7    # "ops":Lcom/android/server/appop/AppOpsService$Ops;
    :cond_8
    move v2, v6

    move-object/from16 v18, v7

    .line 3489
    .end local v6    # "mode":I
    .end local v7    # "ops":Lcom/android/server/appop/AppOpsService$Ops;
    .end local v16    # "switchOp":Lcom/android/server/appop/AppOpsService$Op;
    .restart local v18    # "ops":Lcom/android/server/appop/AppOpsService$Ops;
    :goto_4
    const/4 v7, 0x0

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object v5, v8

    move/from16 v6, p8

    :try_start_f
    invoke-direct/range {v1 .. v7}, Lcom/android/server/appop/AppOpsService;->scheduleOpNotedIfNeededLocked(IILjava/lang/String;Ljava/lang/String;II)V

    .line 3491
    iget v5, v0, Lcom/android/server/appop/AppOpsService$UidState;->state:I

    move-object v1, v15

    move/from16 v2, p5

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    move/from16 v6, p8

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/appop/AppOpsService$AttributedOp;->accessed(ILjava/lang/String;Ljava/lang/String;II)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    .line 3494
    if-eqz p9, :cond_9

    .line 3495
    move-object/from16 v1, p0

    move/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p1

    move-object v5, v8

    move/from16 v6, p8

    move-object/from16 v7, p10

    move-object v11, v8

    move-object/from16 v16, v18

    .end local v8    # "attributionTag":Ljava/lang/String;
    .end local v18    # "ops":Lcom/android/server/appop/AppOpsService$Ops;
    .local v11, "attributionTag":Ljava/lang/String;
    .local v16, "ops":Lcom/android/server/appop/AppOpsService$Ops;
    move/from16 v8, p11

    :try_start_10
    invoke-direct/range {v1 .. v8}, Lcom/android/server/appop/AppOpsService;->collectAsyncNotedOp(ILjava/lang/String;ILjava/lang/String;ILjava/lang/String;Z)V

    goto :goto_5

    .line 3494
    .end local v11    # "attributionTag":Ljava/lang/String;
    .end local v16    # "ops":Lcom/android/server/appop/AppOpsService$Ops;
    .restart local v8    # "attributionTag":Ljava/lang/String;
    .restart local v18    # "ops":Lcom/android/server/appop/AppOpsService$Ops;
    :cond_9
    move-object v11, v8

    move-object/from16 v16, v18

    .line 3499
    .end local v8    # "attributionTag":Ljava/lang/String;
    .end local v18    # "ops":Lcom/android/server/appop/AppOpsService$Ops;
    .restart local v11    # "attributionTag":Ljava/lang/String;
    .restart local v16    # "ops":Lcom/android/server/appop/AppOpsService$Ops;
    :goto_5
    new-instance v1, Landroid/app/SyncNotedAppOp;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v10, v11, v12}, Landroid/app/SyncNotedAppOp;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    monitor-exit p0

    return-object v1

    .line 3501
    .end local v0    # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .end local v11    # "attributionTag":Ljava/lang/String;
    .end local v14    # "switchCode":I
    .end local v15    # "attributedOp":Lcom/android/server/appop/AppOpsService$AttributedOp;
    .end local v16    # "ops":Lcom/android/server/appop/AppOpsService$Ops;
    .end local v20    # "op":Lcom/android/server/appop/AppOpsService$Op;
    .restart local v8    # "attributionTag":Ljava/lang/String;
    :catchall_4
    move-exception v0

    move-object v11, v8

    .end local v8    # "attributionTag":Ljava/lang/String;
    .restart local v11    # "attributionTag":Ljava/lang/String;
    goto :goto_6

    .end local v11    # "attributionTag":Ljava/lang/String;
    .local v7, "attributionTag":Ljava/lang/String;
    :catchall_5
    move-exception v0

    move-object v11, v7

    .end local v7    # "attributionTag":Ljava/lang/String;
    .restart local v11    # "attributionTag":Ljava/lang/String;
    goto :goto_6

    .end local v11    # "attributionTag":Ljava/lang/String;
    .end local v19    # "pvr":Lcom/android/server/appop/AppOpsService$PackageVerificationResult;
    .restart local v7    # "attributionTag":Ljava/lang/String;
    .local v15, "pvr":Lcom/android/server/appop/AppOpsService$PackageVerificationResult;
    :catchall_6
    move-exception v0

    move-object v11, v7

    move-object/from16 v19, v15

    .end local v7    # "attributionTag":Ljava/lang/String;
    .end local v15    # "pvr":Lcom/android/server/appop/AppOpsService$PackageVerificationResult;
    .restart local v11    # "attributionTag":Ljava/lang/String;
    .restart local v19    # "pvr":Lcom/android/server/appop/AppOpsService$PackageVerificationResult;
    goto :goto_6

    .end local v11    # "attributionTag":Ljava/lang/String;
    .end local v19    # "pvr":Lcom/android/server/appop/AppOpsService$PackageVerificationResult;
    .restart local v15    # "pvr":Lcom/android/server/appop/AppOpsService$PackageVerificationResult;
    .local v18, "attributionTag":Ljava/lang/String;
    :catchall_7
    move-exception v0

    move-object/from16 v19, v15

    move-object/from16 v11, v18

    .end local v15    # "pvr":Lcom/android/server/appop/AppOpsService$PackageVerificationResult;
    .end local v18    # "attributionTag":Ljava/lang/String;
    .restart local v11    # "attributionTag":Ljava/lang/String;
    .restart local v19    # "pvr":Lcom/android/server/appop/AppOpsService$PackageVerificationResult;
    goto :goto_6

    .end local v11    # "attributionTag":Ljava/lang/String;
    .end local v19    # "pvr":Lcom/android/server/appop/AppOpsService$PackageVerificationResult;
    .local v6, "attributionTag":Ljava/lang/String;
    .restart local v15    # "pvr":Lcom/android/server/appop/AppOpsService$PackageVerificationResult;
    :catchall_8
    move-exception v0

    move-object v11, v6

    move-object/from16 v19, v15

    .end local v6    # "attributionTag":Ljava/lang/String;
    .end local v15    # "pvr":Lcom/android/server/appop/AppOpsService$PackageVerificationResult;
    .restart local v11    # "attributionTag":Ljava/lang/String;
    .restart local v19    # "pvr":Lcom/android/server/appop/AppOpsService$PackageVerificationResult;
    :goto_6
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_9

    throw v0

    :catchall_9
    move-exception v0

    goto :goto_6

    .line 3420
    .end local v11    # "attributionTag":Ljava/lang/String;
    .end local v19    # "pvr":Lcom/android/server/appop/AppOpsService$PackageVerificationResult;
    .local p4, "attributionTag":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 3421
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v2, "AppOps"

    const-string/jumbo v3, "noteOperation"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3422
    new-instance v2, Landroid/app/SyncNotedAppOp;

    invoke-direct {v2, v8, v10, v1, v12}, Landroid/app/SyncNotedAppOp;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method private noteProxyOperationImpl(ILandroid/content/AttributionSource;ZLjava/lang/String;ZZ)Landroid/app/SyncNotedAppOp;
    .locals 29
    .param p1, "code"    # I
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .param p3, "shouldCollectAsyncNotedOp"    # Z
    .param p4, "message"    # Ljava/lang/String;
    .param p5, "shouldCollectMessage"    # Z
    .param p6, "skipProxyOperation"    # Z

    .line 3329
    move-object/from16 v12, p0

    move/from16 v13, p1

    move-object/from16 v14, p2

    invoke-virtual/range {p2 .. p2}, Landroid/content/AttributionSource;->getUid()I

    move-result v15

    .line 3330
    .local v15, "proxyUid":I
    invoke-virtual/range {p2 .. p2}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v11

    .line 3331
    .local v11, "proxyPackageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/content/AttributionSource;->getAttributionTag()Ljava/lang/String;

    move-result-object v16

    .line 3332
    .local v16, "proxyAttributionTag":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/content/AttributionSource;->getNextUid()I

    move-result v10

    .line 3333
    .local v10, "proxiedUid":I
    invoke-virtual/range {p2 .. p2}, Landroid/content/AttributionSource;->getNextPackageName()Ljava/lang/String;

    move-result-object v9

    .line 3334
    .local v9, "proxiedPackageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/content/AttributionSource;->getNextAttributionTag()Ljava/lang/String;

    move-result-object v7

    .line 3336
    .local v7, "proxiedAttributionTag":Ljava/lang/String;
    invoke-direct {v12, v14}, Lcom/android/server/appop/AppOpsService;->verifyIncomingProxyUid(Landroid/content/AttributionSource;)V

    .line 3337
    invoke-direct/range {p0 .. p1}, Lcom/android/server/appop/AppOpsService;->verifyIncomingOp(I)V

    .line 3338
    invoke-static {v10}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-direct {v12, v9, v0}, Lcom/android/server/appop/AppOpsService;->verifyIncomingPackage(Ljava/lang/String;I)V

    .line 3339
    invoke-static {v15}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-direct {v12, v11, v0}, Lcom/android/server/appop/AppOpsService;->verifyIncomingPackage(Ljava/lang/String;I)V

    .line 3341
    const/4 v0, 0x0

    const/4 v6, 0x1

    if-eqz p6, :cond_0

    .line 3342
    invoke-direct {v12, v14}, Lcom/android/server/appop/AppOpsService;->isCallerAndAttributionTrusted(Landroid/content/AttributionSource;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v6

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    move/from16 v17, v1

    .line 3344
    .end local p6    # "skipProxyOperation":Z
    .local v17, "skipProxyOperation":Z
    invoke-static {v15, v11}, Landroid/app/AppOpsManager;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 3346
    .local v18, "resolveProxyPackageName":Ljava/lang/String;
    if-nez v18, :cond_1

    .line 3347
    new-instance v0, Landroid/app/SyncNotedAppOp;

    invoke-direct {v0, v6, v13, v7, v9}, Landroid/app/SyncNotedAppOp;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 3351
    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    if-ne v1, v10, :cond_2

    move v1, v6

    goto :goto_1

    :cond_2
    move v1, v0

    :goto_1
    move/from16 v19, v1

    .line 3352
    .local v19, "isSelfBlame":Z
    iget-object v1, v12, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    const/4 v2, -0x1

    const-string v3, "android.permission.UPDATE_APP_OPS_STATS"

    invoke-virtual {v1, v3, v2, v15}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_4

    if-eqz v19, :cond_3

    goto :goto_2

    :cond_3
    move v1, v0

    goto :goto_3

    :cond_4
    :goto_2
    move v1, v6

    :goto_3
    move/from16 v20, v1

    .line 3356
    .local v20, "isProxyTrusted":Z
    if-nez v17, :cond_8

    .line 3357
    if-eqz v20, :cond_5

    const/4 v1, 0x2

    move v8, v1

    goto :goto_4

    .line 3358
    :cond_5
    const/4 v1, 0x4

    move v8, v1

    :goto_4
    nop

    .line 3360
    .local v8, "proxyFlags":I
    const/4 v5, -0x1

    const/16 v21, 0x0

    const/16 v22, 0x0

    if-nez v20, :cond_6

    move/from16 v23, v6

    goto :goto_5

    :cond_6
    move/from16 v23, v0

    :goto_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "proxy "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, p4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move/from16 v1, p1

    move v2, v15

    move-object/from16 v3, v18

    move-object/from16 v4, v16

    move-object/from16 v6, v21

    move-object/from16 v26, v7

    .end local v7    # "proxiedAttributionTag":Ljava/lang/String;
    .local v26, "proxiedAttributionTag":Ljava/lang/String;
    move-object/from16 v7, v22

    move-object/from16 v27, v9

    .end local v9    # "proxiedPackageName":Ljava/lang/String;
    .local v27, "proxiedPackageName":Ljava/lang/String;
    move/from16 v9, v23

    move/from16 v28, v10

    .end local v10    # "proxiedUid":I
    .local v28, "proxiedUid":I
    move-object/from16 v10, v24

    move-object/from16 v21, v11

    .end local v11    # "proxyPackageName":Ljava/lang/String;
    .local v21, "proxyPackageName":Ljava/lang/String;
    move/from16 v11, p5

    invoke-direct/range {v0 .. v11}, Lcom/android/server/appop/AppOpsService;->noteOperationUnchecked(IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZLjava/lang/String;Z)Landroid/app/SyncNotedAppOp;

    move-result-object v0

    .line 3363
    .local v0, "proxyReturn":Landroid/app/SyncNotedAppOp;
    invoke-virtual {v0}, Landroid/app/SyncNotedAppOp;->getOpMode()I

    move-result v1

    if-eqz v1, :cond_7

    .line 3364
    new-instance v1, Landroid/app/SyncNotedAppOp;

    invoke-virtual {v0}, Landroid/app/SyncNotedAppOp;->getOpMode()I

    move-result v2

    move-object/from16 v10, v26

    move-object/from16 v11, v27

    .end local v26    # "proxiedAttributionTag":Ljava/lang/String;
    .end local v27    # "proxiedPackageName":Ljava/lang/String;
    .local v10, "proxiedAttributionTag":Ljava/lang/String;
    .local v11, "proxiedPackageName":Ljava/lang/String;
    invoke-direct {v1, v2, v13, v10, v11}, Landroid/app/SyncNotedAppOp;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 3363
    .end local v10    # "proxiedAttributionTag":Ljava/lang/String;
    .end local v11    # "proxiedPackageName":Ljava/lang/String;
    .restart local v26    # "proxiedAttributionTag":Ljava/lang/String;
    .restart local v27    # "proxiedPackageName":Ljava/lang/String;
    :cond_7
    move-object/from16 v10, v26

    move-object/from16 v11, v27

    .end local v26    # "proxiedAttributionTag":Ljava/lang/String;
    .end local v27    # "proxiedPackageName":Ljava/lang/String;
    .restart local v10    # "proxiedAttributionTag":Ljava/lang/String;
    .restart local v11    # "proxiedPackageName":Ljava/lang/String;
    goto :goto_6

    .line 3356
    .end local v0    # "proxyReturn":Landroid/app/SyncNotedAppOp;
    .end local v8    # "proxyFlags":I
    .end local v21    # "proxyPackageName":Ljava/lang/String;
    .end local v28    # "proxiedUid":I
    .restart local v7    # "proxiedAttributionTag":Ljava/lang/String;
    .restart local v9    # "proxiedPackageName":Ljava/lang/String;
    .local v10, "proxiedUid":I
    .local v11, "proxyPackageName":Ljava/lang/String;
    :cond_8
    move/from16 v28, v10

    move-object/from16 v21, v11

    move-object v10, v7

    move-object v11, v9

    .line 3369
    .end local v7    # "proxiedAttributionTag":Ljava/lang/String;
    .end local v9    # "proxiedPackageName":Ljava/lang/String;
    .local v10, "proxiedAttributionTag":Ljava/lang/String;
    .local v11, "proxiedPackageName":Ljava/lang/String;
    .restart local v21    # "proxyPackageName":Ljava/lang/String;
    .restart local v28    # "proxiedUid":I
    :goto_6
    move/from16 v9, v28

    .end local v28    # "proxiedUid":I
    .local v9, "proxiedUid":I
    invoke-static {v9, v11}, Landroid/app/AppOpsManager;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 3371
    .local v22, "resolveProxiedPackageName":Ljava/lang/String;
    if-nez v22, :cond_9

    .line 3372
    new-instance v0, Landroid/app/SyncNotedAppOp;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v13, v10, v11}, Landroid/app/SyncNotedAppOp;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 3376
    :cond_9
    if-eqz v20, :cond_a

    const/16 v0, 0x8

    move v8, v0

    goto :goto_7

    .line 3377
    :cond_a
    const/16 v0, 0x10

    move v8, v0

    :goto_7
    nop

    .line 3378
    .local v8, "proxiedFlags":I
    move-object/from16 v0, p0

    move/from16 v1, p1

    move v2, v9

    move-object/from16 v3, v22

    move-object v4, v10

    move v5, v15

    move-object/from16 v6, v18

    move-object/from16 v7, v16

    move/from16 v23, v9

    .end local v9    # "proxiedUid":I
    .local v23, "proxiedUid":I
    move/from16 v9, p3

    move-object/from16 v24, v10

    .end local v10    # "proxiedAttributionTag":Ljava/lang/String;
    .local v24, "proxiedAttributionTag":Ljava/lang/String;
    move-object/from16 v10, p4

    move-object/from16 v25, v11

    .end local v11    # "proxiedPackageName":Ljava/lang/String;
    .local v25, "proxiedPackageName":Ljava/lang/String;
    move/from16 v11, p5

    invoke-direct/range {v0 .. v11}, Lcom/android/server/appop/AppOpsService;->noteOperationUnchecked(IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZLjava/lang/String;Z)Landroid/app/SyncNotedAppOp;

    move-result-object v0

    return-object v0
.end method

.method private notifyOpActiveChanged(Landroid/util/ArraySet;IILjava/lang/String;Ljava/lang/String;ZII)V
    .locals 15
    .param p2, "code"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "attributionTag"    # Ljava/lang/String;
    .param p6, "active"    # Z
    .param p7, "attributionFlags"    # I
    .param p8, "attributionChainId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/appop/AppOpsService$ActiveCallback;",
            ">;II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZII)V"
        }
    .end annotation

    .line 4167
    .local p1, "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ActiveCallback;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 4169
    .local v1, "identity":J
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/util/ArraySet;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move v3, v0

    .line 4170
    .local v3, "callbackCount":I
    const/4 v0, 0x0

    move v4, v0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_0

    .line 4171
    move-object/from16 v5, p1

    :try_start_1
    invoke-virtual {v5, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/appop/AppOpsService$ActiveCallback;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v6, v0

    .line 4173
    .local v6, "callback":Lcom/android/server/appop/AppOpsService$ActiveCallback;
    :try_start_2
    iget-object v7, v6, Lcom/android/server/appop/AppOpsService$ActiveCallback;->mCallback:Lcom/android/internal/app/IAppOpsActiveCallback;

    move/from16 v8, p2

    move/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move/from16 v12, p6

    move/from16 v13, p7

    move/from16 v14, p8

    invoke-interface/range {v7 .. v14}, Lcom/android/internal/app/IAppOpsActiveCallback;->opActiveChanged(IILjava/lang/String;Ljava/lang/String;ZII)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4177
    goto :goto_1

    .line 4175
    :catch_0
    move-exception v0

    .line 4170
    .end local v6    # "callback":Lcom/android/server/appop/AppOpsService$ActiveCallback;
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 4180
    .end local v3    # "callbackCount":I
    .end local v4    # "i":I
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 4170
    .restart local v3    # "callbackCount":I
    .restart local v4    # "i":I
    :cond_0
    move-object/from16 v5, p1

    .line 4180
    .end local v3    # "callbackCount":I
    .end local v4    # "i":I
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4181
    nop

    .line 4182
    return-void

    .line 4180
    :catchall_1
    move-exception v0

    move-object/from16 v5, p1

    :goto_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4181
    throw v0
.end method

.method private notifyOpChanged(Landroid/util/ArraySet;IILjava/lang/String;)V
    .locals 2
    .param p2, "code"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/appop/AppOpsService$ModeCallback;",
            ">;II",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 2827
    .local p1, "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2828
    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/appop/AppOpsService$ModeCallback;

    .line 2829
    .local v1, "callback":Lcom/android/server/appop/AppOpsService$ModeCallback;
    invoke-direct {p0, v1, p2, p3, p4}, Lcom/android/server/appop/AppOpsService;->notifyOpChanged(Lcom/android/server/appop/AppOpsService$ModeCallback;IILjava/lang/String;)V

    .line 2827
    .end local v1    # "callback":Lcom/android/server/appop/AppOpsService$ModeCallback;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2831
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private notifyOpChanged(Lcom/android/server/appop/AppOpsService$ModeCallback;IILjava/lang/String;)V
    .locals 7
    .param p1, "callback"    # Lcom/android/server/appop/AppOpsService$ModeCallback;
    .param p2, "code"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;

    .line 2835
    const/4 v0, -0x2

    if-eq p3, v0, :cond_0

    iget v1, p1, Lcom/android/server/appop/AppOpsService$ModeCallback;->mWatchingUid:I

    if-ltz v1, :cond_0

    iget v1, p1, Lcom/android/server/appop/AppOpsService$ModeCallback;->mWatchingUid:I

    if-eq v1, p3, :cond_0

    .line 2836
    return-void

    .line 2841
    :cond_0
    iget v1, p1, Lcom/android/server/appop/AppOpsService$ModeCallback;->mWatchedOpCode:I

    const/4 v2, 0x0

    if-ne v1, v0, :cond_1

    .line 2842
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mSwitchedOps:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .local v0, "switchedCodes":[I
    goto :goto_0

    .line 2843
    .end local v0    # "switchedCodes":[I
    :cond_1
    iget v0, p1, Lcom/android/server/appop/AppOpsService$ModeCallback;->mWatchedOpCode:I

    const/4 v1, -0x1

    const/4 v3, 0x1

    if-ne v0, v1, :cond_2

    .line 2844
    new-array v0, v3, [I

    aput p2, v0, v2

    .restart local v0    # "switchedCodes":[I
    goto :goto_0

    .line 2846
    .end local v0    # "switchedCodes":[I
    :cond_2
    new-array v0, v3, [I

    iget v1, p1, Lcom/android/server/appop/AppOpsService$ModeCallback;->mWatchedOpCode:I

    aput v1, v0, v2

    .line 2849
    .restart local v0    # "switchedCodes":[I
    :goto_0
    array-length v1, v0

    :goto_1
    if-ge v2, v1, :cond_3

    aget v3, v0, v2

    .line 2853
    .local v3, "switchedCode":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 2855
    .local v4, "identity":J
    :try_start_0
    iget-object v6, p1, Lcom/android/server/appop/AppOpsService$ModeCallback;->mCallback:Lcom/android/internal/app/IAppOpsCallback;

    invoke-interface {v6, v3, p3, p4}, Lcom/android/internal/app/IAppOpsCallback;->opChanged(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 2859
    :catchall_0
    move-exception v1

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2860
    throw v1

    .line 2856
    :catch_0
    move-exception v6

    .line 2859
    :goto_2
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2860
    nop

    .line 2849
    .end local v3    # "switchedCode":I
    .end local v4    # "identity":J
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2862
    :cond_3
    return-void
.end method

.method private notifyOpChangedForAllPkgsInUid(IIZLcom/android/internal/app/IAppOpsCallback;)V
    .locals 17
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "onlyForeground"    # Z
    .param p4, "callbackToIgnore"    # Lcom/android/internal/app/IAppOpsCallback;

    .line 2572
    move-object/from16 v7, p0

    invoke-static/range {p2 .. p2}, Lcom/android/server/appop/AppOpsService;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v8

    .line 2573
    .local v8, "uidPackageNames":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 2575
    .local v1, "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/appop/AppOpsService$ModeCallback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    monitor-enter p0

    .line 2576
    :try_start_0
    iget-object v0, v7, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    move/from16 v9, p1

    :try_start_1
    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 2577
    .local v0, "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    if-eqz v0, :cond_2

    .line 2578
    :try_start_2
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v2

    .line 2579
    .local v2, "callbackCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 2580
    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/appop/AppOpsService$ModeCallback;

    .line 2581
    .local v4, "callback":Lcom/android/server/appop/AppOpsService$ModeCallback;
    if-eqz p3, :cond_0

    iget v5, v4, Lcom/android/server/appop/AppOpsService$ModeCallback;->mFlags:I

    and-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_0

    .line 2582
    goto :goto_1

    .line 2585
    :cond_0
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    .line 2586
    .local v5, "changedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-static {v5, v8}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 2587
    if-nez v1, :cond_1

    .line 2588
    new-instance v6, Landroid/util/ArrayMap;

    invoke-direct {v6}, Landroid/util/ArrayMap;-><init>()V

    move-object v1, v6

    .line 2590
    :cond_1
    invoke-virtual {v1, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2579
    .end local v4    # "callback":Lcom/android/server/appop/AppOpsService$ModeCallback;
    .end local v5    # "changedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2620
    .end local v0    # "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    .end local v2    # "callbackCount":I
    .end local v3    # "i":I
    :catchall_0
    move-exception v0

    move-object/from16 v16, v8

    goto/16 :goto_a

    .line 2594
    .restart local v0    # "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    :cond_2
    :try_start_3
    array-length v2, v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    const/4 v3, 0x0

    move-object v10, v1

    .end local v1    # "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/appop/AppOpsService$ModeCallback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .local v10, "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/appop/AppOpsService$ModeCallback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    :goto_2
    if-ge v3, v2, :cond_8

    :try_start_4
    aget-object v1, v8, v3

    .line 2595
    .local v1, "uidPackageName":Ljava/lang/String;
    iget-object v4, v7, Lcom/android/server/appop/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArraySet;

    move-object v0, v4

    .line 2596
    if-eqz v0, :cond_7

    .line 2597
    if-nez v10, :cond_3

    .line 2598
    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .end local v10    # "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/appop/AppOpsService$ModeCallback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .local v4, "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/appop/AppOpsService$ModeCallback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    goto :goto_3

    .line 2597
    .end local v4    # "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/appop/AppOpsService$ModeCallback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .restart local v10    # "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/appop/AppOpsService$ModeCallback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    :cond_3
    move-object v4, v10

    .line 2600
    .end local v10    # "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/appop/AppOpsService$ModeCallback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .restart local v4    # "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/appop/AppOpsService$ModeCallback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    :goto_3
    :try_start_5
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v5

    .line 2601
    .local v5, "callbackCount":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_4
    if-ge v6, v5, :cond_6

    .line 2602
    invoke-virtual {v0, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/appop/AppOpsService$ModeCallback;

    .line 2603
    .local v10, "callback":Lcom/android/server/appop/AppOpsService$ModeCallback;
    if-eqz p3, :cond_4

    iget v11, v10, Lcom/android/server/appop/AppOpsService$ModeCallback;->mFlags:I

    and-int/lit8 v11, v11, 0x1

    if-nez v11, :cond_4

    .line 2604
    goto :goto_5

    .line 2607
    :cond_4
    invoke-virtual {v4, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/util/ArraySet;

    .line 2608
    .local v11, "changedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-nez v11, :cond_5

    .line 2609
    new-instance v12, Landroid/util/ArraySet;

    invoke-direct {v12}, Landroid/util/ArraySet;-><init>()V

    move-object v11, v12

    .line 2610
    invoke-virtual {v4, v10, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2612
    :cond_5
    invoke-virtual {v11, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 2601
    .end local v10    # "callback":Lcom/android/server/appop/AppOpsService$ModeCallback;
    .end local v11    # "changedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_6
    move-object v10, v4

    goto :goto_6

    .line 2620
    .end local v0    # "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    .end local v1    # "uidPackageName":Ljava/lang/String;
    .end local v5    # "callbackCount":I
    .end local v6    # "i":I
    :catchall_1
    move-exception v0

    move-object v1, v4

    move-object/from16 v16, v8

    goto/16 :goto_a

    .line 2594
    .end local v4    # "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/appop/AppOpsService$ModeCallback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .restart local v0    # "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    .local v10, "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/appop/AppOpsService$ModeCallback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    :cond_7
    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 2620
    .end local v0    # "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    :catchall_2
    move-exception v0

    move-object/from16 v16, v8

    move-object v1, v10

    goto/16 :goto_a

    .line 2617
    .restart local v0    # "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    :cond_8
    if-eqz v10, :cond_9

    if-eqz p4, :cond_9

    .line 2618
    :try_start_6
    iget-object v1, v7, Lcom/android/server/appop/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-interface/range {p4 .. p4}, Lcom/android/internal/app/IAppOpsCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 2620
    .end local v0    # "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    :cond_9
    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 2622
    if-nez v10, :cond_a

    .line 2623
    return-void

    .line 2626
    :cond_a
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_d

    .line 2627
    invoke-virtual {v10, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/android/server/appop/AppOpsService$ModeCallback;

    .line 2628
    .local v11, "callback":Lcom/android/server/appop/AppOpsService$ModeCallback;
    invoke-virtual {v10, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroid/util/ArraySet;

    .line 2629
    .local v12, "reportedPackageNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-nez v12, :cond_b

    .line 2630
    iget-object v13, v7, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda7;->INSTANCE:Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda7;

    .line 2632
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v2, 0x0

    move-object v6, v2

    check-cast v6, Ljava/lang/String;

    .line 2630
    move-object/from16 v2, p0

    move-object v3, v11

    invoke-static/range {v1 .. v6}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuintConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v13, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-object/from16 v16, v8

    goto :goto_9

    .line 2635
    :cond_b
    invoke-virtual {v12}, Landroid/util/ArraySet;->size()I

    move-result v13

    .line 2636
    .local v13, "reportedPackageCount":I
    const/4 v1, 0x0

    move v14, v1

    .local v14, "j":I
    :goto_8
    if-ge v14, v13, :cond_c

    .line 2637
    invoke-virtual {v12, v14}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Ljava/lang/String;

    .line 2638
    .local v15, "reportedPackageName":Ljava/lang/String;
    iget-object v6, v7, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda7;->INSTANCE:Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda7;

    .line 2640
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 2638
    move-object/from16 v2, p0

    move-object v3, v11

    move-object/from16 v16, v8

    move-object v8, v6

    .end local v8    # "uidPackageNames":[Ljava/lang/String;
    .local v16, "uidPackageNames":[Ljava/lang/String;
    move-object v6, v15

    invoke-static/range {v1 .. v6}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuintConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2636
    .end local v15    # "reportedPackageName":Ljava/lang/String;
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v8, v16

    goto :goto_8

    .end local v16    # "uidPackageNames":[Ljava/lang/String;
    .restart local v8    # "uidPackageNames":[Ljava/lang/String;
    :cond_c
    move-object/from16 v16, v8

    .line 2626
    .end local v8    # "uidPackageNames":[Ljava/lang/String;
    .end local v11    # "callback":Lcom/android/server/appop/AppOpsService$ModeCallback;
    .end local v12    # "reportedPackageNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v13    # "reportedPackageCount":I
    .end local v14    # "j":I
    .restart local v16    # "uidPackageNames":[Ljava/lang/String;
    :goto_9
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v8, v16

    goto :goto_7

    .line 2644
    .end local v0    # "i":I
    .end local v16    # "uidPackageNames":[Ljava/lang/String;
    .restart local v8    # "uidPackageNames":[Ljava/lang/String;
    :cond_d
    return-void

    .line 2620
    :catchall_3
    move-exception v0

    move-object/from16 v16, v8

    move-object v1, v10

    .end local v8    # "uidPackageNames":[Ljava/lang/String;
    .restart local v16    # "uidPackageNames":[Ljava/lang/String;
    goto :goto_a

    .end local v10    # "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/appop/AppOpsService$ModeCallback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .end local v16    # "uidPackageNames":[Ljava/lang/String;
    .local v1, "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/appop/AppOpsService$ModeCallback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .restart local v8    # "uidPackageNames":[Ljava/lang/String;
    :catchall_4
    move-exception v0

    move-object/from16 v16, v8

    .end local v8    # "uidPackageNames":[Ljava/lang/String;
    .restart local v16    # "uidPackageNames":[Ljava/lang/String;
    goto :goto_a

    .end local v16    # "uidPackageNames":[Ljava/lang/String;
    .restart local v8    # "uidPackageNames":[Ljava/lang/String;
    :catchall_5
    move-exception v0

    move/from16 v9, p1

    move-object/from16 v16, v8

    .end local v8    # "uidPackageNames":[Ljava/lang/String;
    .restart local v16    # "uidPackageNames":[Ljava/lang/String;
    :goto_a
    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    throw v0

    :catchall_6
    move-exception v0

    goto :goto_a
.end method

.method private notifyOpChangedSync(IILjava/lang/String;II)V
    .locals 7
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "mode"    # I
    .param p5, "previousMode"    # I

    .line 2739
    const-class v0, Landroid/os/storage/StorageManagerInternal;

    .line 2740
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManagerInternal;

    .line 2741
    .local v0, "storageManagerInternal":Landroid/os/storage/StorageManagerInternal;
    if-eqz v0, :cond_0

    .line 2742
    move-object v1, v0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Landroid/os/storage/StorageManagerInternal;->onAppOpsChanged(IILjava/lang/String;II)V

    .line 2744
    :cond_0
    return-void
.end method

.method private notifyOpChecked(Landroid/util/ArraySet;IILjava/lang/String;Ljava/lang/String;II)V
    .locals 14
    .param p2, "code"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "attributionTag"    # Ljava/lang/String;
    .param p6, "flags"    # I
    .param p7, "result"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/appop/AppOpsService$NotedCallback;",
            ">;II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    .line 4265
    .local p1, "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$NotedCallback;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 4267
    .local v1, "identity":J
    :try_start_0
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move v3, v0

    .line 4268
    .local v3, "callbackCount":I
    const/4 v0, 0x0

    move v4, v0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_0

    .line 4269
    move-object v5, p1

    :try_start_1
    invoke-virtual {p1, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/appop/AppOpsService$NotedCallback;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v6, v0

    .line 4271
    .local v6, "callback":Lcom/android/server/appop/AppOpsService$NotedCallback;
    :try_start_2
    iget-object v7, v6, Lcom/android/server/appop/AppOpsService$NotedCallback;->mCallback:Lcom/android/internal/app/IAppOpsNotedCallback;

    move/from16 v8, p2

    move/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move/from16 v12, p6

    move/from16 v13, p7

    invoke-interface/range {v7 .. v13}, Lcom/android/internal/app/IAppOpsNotedCallback;->opNoted(IILjava/lang/String;Ljava/lang/String;II)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4275
    goto :goto_1

    .line 4273
    :catch_0
    move-exception v0

    .line 4268
    .end local v6    # "callback":Lcom/android/server/appop/AppOpsService$NotedCallback;
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 4278
    .end local v3    # "callbackCount":I
    .end local v4    # "i":I
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 4268
    .restart local v3    # "callbackCount":I
    .restart local v4    # "i":I
    :cond_0
    move-object v5, p1

    .line 4278
    .end local v3    # "callbackCount":I
    .end local v4    # "i":I
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4279
    nop

    .line 4280
    return-void

    .line 4278
    :catchall_1
    move-exception v0

    move-object v5, p1

    :goto_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4279
    throw v0
.end method

.method private notifyOpStarted(Landroid/util/ArraySet;IILjava/lang/String;Ljava/lang/String;II)V
    .locals 14
    .param p2, "code"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "attributionTag"    # Ljava/lang/String;
    .param p6, "flags"    # I
    .param p7, "result"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/appop/AppOpsService$StartedCallback;",
            ">;II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    .line 4217
    .local p1, "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$StartedCallback;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 4219
    .local v1, "identity":J
    :try_start_0
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move v3, v0

    .line 4220
    .local v3, "callbackCount":I
    const/4 v0, 0x0

    move v4, v0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_0

    .line 4221
    move-object v5, p1

    :try_start_1
    invoke-virtual {p1, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/appop/AppOpsService$StartedCallback;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v6, v0

    .line 4223
    .local v6, "callback":Lcom/android/server/appop/AppOpsService$StartedCallback;
    :try_start_2
    iget-object v7, v6, Lcom/android/server/appop/AppOpsService$StartedCallback;->mCallback:Lcom/android/internal/app/IAppOpsStartedCallback;

    move/from16 v8, p2

    move/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move/from16 v12, p6

    move/from16 v13, p7

    invoke-interface/range {v7 .. v13}, Lcom/android/internal/app/IAppOpsStartedCallback;->opStarted(IILjava/lang/String;Ljava/lang/String;II)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4227
    goto :goto_1

    .line 4225
    :catch_0
    move-exception v0

    .line 4220
    .end local v6    # "callback":Lcom/android/server/appop/AppOpsService$StartedCallback;
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 4230
    .end local v3    # "callbackCount":I
    .end local v4    # "i":I
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 4220
    .restart local v3    # "callbackCount":I
    .restart local v4    # "i":I
    :cond_0
    move-object v5, p1

    .line 4230
    .end local v3    # "callbackCount":I
    .end local v4    # "i":I
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4231
    nop

    .line 4232
    return-void

    .line 4230
    :catchall_1
    move-exception v0

    move-object v5, p1

    :goto_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4231
    throw v0
.end method

.method private notifyWatchersOfChange(II)V
    .locals 2
    .param p1, "code"    # I
    .param p2, "uid"    # I

    .line 6565
    monitor-enter p0

    .line 6566
    :try_start_0
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    .line 6567
    .local v0, "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    if-nez v0, :cond_0

    .line 6568
    monitor-exit p0

    return-void

    .line 6570
    :cond_0
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1, v0}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    move-object v0, v1

    .line 6571
    .local v0, "clonedCallbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6573
    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/android/server/appop/AppOpsService;->notifyOpChanged(Landroid/util/ArraySet;IILjava/lang/String;)V

    .line 6574
    return-void

    .line 6571
    .end local v0    # "clonedCallbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static onClientDeath(Lcom/android/server/appop/AppOpsService$AttributedOp;Landroid/os/IBinder;)V
    .locals 0
    .param p0, "attributedOp"    # Lcom/android/server/appop/AppOpsService$AttributedOp;
    .param p1, "clientId"    # Landroid/os/IBinder;

    .line 1730
    invoke-virtual {p0, p1}, Lcom/android/server/appop/AppOpsService$AttributedOp;->onClientDeath(Landroid/os/IBinder;)V

    .line 1731
    return-void
.end method

.method static onShellCommand(Lcom/android/server/appop/AppOpsService$Shell;Ljava/lang/String;)I
    .locals 22
    .param p0, "shell"    # Lcom/android/server/appop/AppOpsService$Shell;
    .param p1, "cmd"    # Ljava/lang/String;

    .line 5437
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    if-nez v2, :cond_0

    .line 5438
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/appop/AppOpsService$Shell;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 5440
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/appop/AppOpsService$Shell;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    .line 5441
    .local v3, "pw":Ljava/io/PrintWriter;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/appop/AppOpsService$Shell;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v4

    .line 5443
    .local v4, "err":Ljava/io/PrintWriter;
    const/4 v5, -0x1

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v6, 0x1

    const/4 v7, 0x0

    sparse-switch v0, :sswitch_data_0

    :cond_1
    goto :goto_0

    :sswitch_0
    const-string/jumbo v0, "read-settings"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_1
    const-string/jumbo v0, "start"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_2
    const-string/jumbo v0, "reset"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_3
    const-string/jumbo v0, "stop"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_4
    const-string/jumbo v0, "set"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v7

    goto :goto_1

    :sswitch_5
    const-string v0, "get"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v6

    goto :goto_1

    :sswitch_6
    const-string/jumbo v0, "query-op"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_7
    const-string/jumbo v0, "write-settings"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    goto :goto_1

    :goto_0
    move v0, v5

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 5696
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/appop/AppOpsService$Shell;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_12

    .line 5682
    :pswitch_0
    invoke-virtual {v1, v6, v4}, Lcom/android/server/appop/AppOpsService$Shell;->parseUserPackageOp(ZLjava/io/PrintWriter;)I

    move-result v0

    .line 5683
    .local v0, "res":I
    if-gez v0, :cond_2

    .line 5684
    return v0

    .line 5687
    :cond_2
    iget-object v6, v1, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    if-eqz v6, :cond_3

    .line 5688
    iget-object v8, v1, Lcom/android/server/appop/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    iget-object v9, v1, Lcom/android/server/appop/AppOpsService$Shell;->mToken:Landroid/os/IBinder;

    iget v10, v1, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    iget v11, v1, Lcom/android/server/appop/AppOpsService$Shell;->packageUid:I

    iget-object v12, v1, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    iget-object v13, v1, Lcom/android/server/appop/AppOpsService$Shell;->attributionTag:Ljava/lang/String;

    invoke-interface/range {v8 .. v13}, Lcom/android/internal/app/IAppOpsService;->finishOperation(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;)V

    .line 5693
    return v7

    .line 5691
    :cond_3
    return v5

    .line 5666
    .end local v0    # "res":I
    :pswitch_1
    invoke-virtual {v1, v6, v4}, Lcom/android/server/appop/AppOpsService$Shell;->parseUserPackageOp(ZLjava/io/PrintWriter;)I

    move-result v0

    .line 5667
    .restart local v0    # "res":I
    if-gez v0, :cond_4

    .line 5668
    return v0

    .line 5671
    :cond_4
    iget-object v6, v1, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    if-eqz v6, :cond_5

    .line 5672
    iget-object v8, v1, Lcom/android/server/appop/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    iget-object v9, v1, Lcom/android/server/appop/AppOpsService$Shell;->mToken:Landroid/os/IBinder;

    iget v10, v1, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    iget v11, v1, Lcom/android/server/appop/AppOpsService$Shell;->packageUid:I

    iget-object v12, v1, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    iget-object v13, v1, Lcom/android/server/appop/AppOpsService$Shell;->attributionTag:Ljava/lang/String;

    const/4 v14, 0x1

    const/4 v15, 0x1

    const-string v16, "appops start shell command"

    const/16 v17, 0x1

    const/16 v18, 0x1

    const/16 v19, -0x1

    invoke-interface/range {v8 .. v19}, Lcom/android/internal/app/IAppOpsService;->startOperation(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZII)Landroid/app/SyncNotedAppOp;

    .line 5679
    return v7

    .line 5677
    :cond_5
    return v5

    .line 5654
    .end local v0    # "res":I
    :pswitch_2
    iget-object v0, v1, Lcom/android/server/appop/AppOpsService$Shell;->mInternal:Lcom/android/server/appop/AppOpsService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    .line 5655
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    .line 5654
    invoke-direct {v0, v6, v8, v5}, Lcom/android/server/appop/AppOpsService;->enforceManageAppOpsModes(III)V

    .line 5656
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 5658
    .local v8, "token":J
    :try_start_1
    iget-object v0, v1, Lcom/android/server/appop/AppOpsService$Shell;->mInternal:Lcom/android/server/appop/AppOpsService;

    invoke-virtual {v0}, Lcom/android/server/appop/AppOpsService;->readState()V

    .line 5659
    const-string v0, "Last settings read."

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5661
    :try_start_2
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5662
    nop

    .line 5663
    return v7

    .line 5661
    :catchall_0
    move-exception v0

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5662
    nop

    .end local v3    # "pw":Ljava/io/PrintWriter;
    .end local v4    # "err":Ljava/io/PrintWriter;
    .end local p0    # "shell":Lcom/android/server/appop/AppOpsService$Shell;
    .end local p1    # "cmd":Ljava/lang/String;
    throw v0

    .line 5639
    .end local v8    # "token":J
    .restart local v3    # "pw":Ljava/io/PrintWriter;
    .restart local v4    # "err":Ljava/io/PrintWriter;
    .restart local p0    # "shell":Lcom/android/server/appop/AppOpsService$Shell;
    .restart local p1    # "cmd":Ljava/lang/String;
    :pswitch_3
    iget-object v0, v1, Lcom/android/server/appop/AppOpsService$Shell;->mInternal:Lcom/android/server/appop/AppOpsService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    .line 5640
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    .line 5639
    invoke-direct {v0, v6, v8, v5}, Lcom/android/server/appop/AppOpsService;->enforceManageAppOpsModes(III)V

    .line 5641
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 5643
    .restart local v8    # "token":J
    :try_start_3
    iget-object v6, v1, Lcom/android/server/appop/AppOpsService$Shell;->mInternal:Lcom/android/server/appop/AppOpsService;

    monitor-enter v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 5644
    :try_start_4
    iget-object v0, v1, Lcom/android/server/appop/AppOpsService$Shell;->mInternal:Lcom/android/server/appop/AppOpsService;

    iget-object v0, v0, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    iget-object v10, v1, Lcom/android/server/appop/AppOpsService$Shell;->mInternal:Lcom/android/server/appop/AppOpsService;

    iget-object v10, v10, Lcom/android/server/appop/AppOpsService;->mWriteRunner:Ljava/lang/Runnable;

    invoke-virtual {v0, v10}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5645
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 5646
    :try_start_5
    iget-object v0, v1, Lcom/android/server/appop/AppOpsService$Shell;->mInternal:Lcom/android/server/appop/AppOpsService;

    invoke-virtual {v0}, Lcom/android/server/appop/AppOpsService;->writeState()V

    .line 5647
    const-string v0, "Current settings written."

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 5649
    :try_start_6
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1

    .line 5650
    nop

    .line 5651
    return v7

    .line 5645
    :catchall_1
    move-exception v0

    :try_start_7
    monitor-exit v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .end local v3    # "pw":Ljava/io/PrintWriter;
    .end local v4    # "err":Ljava/io/PrintWriter;
    .end local v8    # "token":J
    .end local p0    # "shell":Lcom/android/server/appop/AppOpsService$Shell;
    .end local p1    # "cmd":Ljava/lang/String;
    :try_start_8
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 5649
    .restart local v3    # "pw":Ljava/io/PrintWriter;
    .restart local v4    # "err":Ljava/io/PrintWriter;
    .restart local v8    # "token":J
    .restart local p0    # "shell":Lcom/android/server/appop/AppOpsService$Shell;
    .restart local p1    # "cmd":Ljava/lang/String;
    :catchall_2
    move-exception v0

    :try_start_9
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5650
    nop

    .end local v3    # "pw":Ljava/io/PrintWriter;
    .end local v4    # "err":Ljava/io/PrintWriter;
    .end local p0    # "shell":Lcom/android/server/appop/AppOpsService$Shell;
    .end local p1    # "cmd":Ljava/lang/String;
    throw v0

    .line 5603
    .end local v8    # "token":J
    .restart local v3    # "pw":Ljava/io/PrintWriter;
    .restart local v4    # "err":Ljava/io/PrintWriter;
    .restart local p0    # "shell":Lcom/android/server/appop/AppOpsService$Shell;
    .restart local p1    # "cmd":Ljava/lang/String;
    :pswitch_4
    const/4 v0, 0x0

    .line 5604
    .local v0, "packageName":Ljava/lang/String;
    const/4 v6, -0x2

    .line 5605
    .local v6, "userId":I
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/appop/AppOpsService$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v8

    move-object v9, v8

    .local v9, "argument":Ljava/lang/String;
    if-eqz v8, :cond_8

    .line 5606
    const-string v8, "--user"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 5607
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/appop/AppOpsService$Shell;->getNextArgRequired()Ljava/lang/String;

    move-result-object v8

    .line 5608
    .local v8, "userStr":Ljava/lang/String;
    invoke-static {v8}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v10

    move v6, v10

    .line 5609
    .end local v8    # "userStr":Ljava/lang/String;
    goto :goto_2

    .line 5610
    :cond_6
    if-nez v0, :cond_7

    .line 5611
    move-object v0, v9

    goto :goto_2

    .line 5613
    :cond_7
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error: Unsupported argument: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5614
    return v5

    .line 5619
    .end local v9    # "argument":Ljava/lang/String;
    :cond_8
    const/4 v8, -0x2

    if-ne v6, v8, :cond_9

    .line 5620
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v8

    move v6, v8

    .line 5623
    :cond_9
    iget-object v8, v1, Lcom/android/server/appop/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v8, v6, v0}, Lcom/android/internal/app/IAppOpsService;->resetAllModes(ILjava/lang/String;)V

    .line 5624
    const-string v8, "Reset all modes for: "

    invoke-virtual {v3, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5625
    if-ne v6, v5, :cond_a

    .line 5626
    const-string v8, "all users"

    invoke-virtual {v3, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_3

    .line 5628
    :cond_a
    const-string/jumbo v8, "user "

    invoke-virtual {v3, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/io/PrintWriter;->print(I)V

    .line 5630
    :goto_3
    const-string v8, ", "

    invoke-virtual {v3, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5631
    if-nez v0, :cond_b

    .line 5632
    const-string v8, "all packages"

    invoke-virtual {v3, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_4

    .line 5634
    :cond_b
    const-string/jumbo v8, "package "

    invoke-virtual {v3, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5636
    :goto_4
    return v7

    .line 5575
    .end local v0    # "packageName":Ljava/lang/String;
    .end local v6    # "userId":I
    :pswitch_5
    invoke-virtual {v1, v6, v4}, Lcom/android/server/appop/AppOpsService$Shell;->parseUserOpMode(ILjava/io/PrintWriter;)I

    move-result v0

    .line 5576
    .local v0, "res":I
    if-gez v0, :cond_c

    .line 5577
    return v0

    .line 5579
    :cond_c
    iget-object v8, v1, Lcom/android/server/appop/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    new-array v6, v6, [I

    iget v9, v1, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    aput v9, v6, v7

    invoke-interface {v8, v6}, Lcom/android/internal/app/IAppOpsService;->getPackagesForOps([I)Ljava/util/List;

    move-result-object v6

    .line 5581
    .local v6, "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    if-eqz v6, :cond_12

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-gtz v8, :cond_d

    goto :goto_8

    .line 5585
    :cond_d
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_5
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_11

    .line 5586
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/AppOpsManager$PackageOps;

    .line 5587
    .local v9, "pkg":Landroid/app/AppOpsManager$PackageOps;
    const/4 v10, 0x0

    .line 5588
    .local v10, "hasMatch":Z
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/AppOpsManager$PackageOps;

    invoke-virtual {v11}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v11

    .line 5589
    .local v11, "entries":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    const/4 v12, 0x0

    .local v12, "j":I
    :goto_6
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v13

    if-ge v12, v13, :cond_f

    .line 5590
    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/app/AppOpsManager$OpEntry;

    .line 5591
    .local v13, "ent":Landroid/app/AppOpsManager$OpEntry;
    invoke-virtual {v13}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v14

    iget v15, v1, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    if-ne v14, v15, :cond_e

    invoke-virtual {v13}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v14

    iget v15, v1, Lcom/android/server/appop/AppOpsService$Shell;->mode:I

    if-ne v14, v15, :cond_e

    .line 5592
    const/4 v10, 0x1

    .line 5593
    goto :goto_7

    .line 5589
    .end local v13    # "ent":Landroid/app/AppOpsManager$OpEntry;
    :cond_e
    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    .line 5596
    .end local v12    # "j":I
    :cond_f
    :goto_7
    if-eqz v10, :cond_10

    .line 5597
    invoke-virtual {v9}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5585
    .end local v9    # "pkg":Landroid/app/AppOpsManager$PackageOps;
    .end local v10    # "hasMatch":Z
    .end local v11    # "entries":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    :cond_10
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 5600
    .end local v8    # "i":I
    :cond_11
    return v7

    .line 5582
    :cond_12
    :goto_8
    const-string v8, "No operations."

    invoke-virtual {v3, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5583
    return v7

    .line 5477
    .end local v0    # "res":I
    .end local v6    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    :pswitch_6
    invoke-virtual {v1, v7, v4}, Lcom/android/server/appop/AppOpsService$Shell;->parseUserPackageOp(ZLjava/io/PrintWriter;)I

    move-result v0

    .line 5478
    .restart local v0    # "res":I
    if-gez v0, :cond_13

    .line 5479
    return v0

    .line 5482
    :cond_13
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 5483
    .local v8, "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    iget-object v9, v1, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    const/4 v10, 0x0

    if-eqz v9, :cond_18

    .line 5485
    iget-object v9, v1, Lcom/android/server/appop/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    iget v11, v1, Lcom/android/server/appop/AppOpsService$Shell;->packageUid:I

    .line 5487
    iget v12, v1, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    if-eq v12, v5, :cond_14

    new-array v12, v6, [I

    iget v13, v1, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    aput v13, v12, v7

    goto :goto_9

    :cond_14
    move-object v12, v10

    .line 5485
    :goto_9
    invoke-interface {v9, v11, v12}, Lcom/android/internal/app/IAppOpsService;->getUidOps(I[I)Ljava/util/List;

    move-result-object v9

    .line 5488
    .local v9, "r":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    if-eqz v9, :cond_15

    .line 5489
    invoke-interface {v8, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 5491
    :cond_15
    iget-object v11, v1, Lcom/android/server/appop/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    iget v12, v1, Lcom/android/server/appop/AppOpsService$Shell;->packageUid:I

    iget-object v13, v1, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    .line 5493
    iget v14, v1, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    if-eq v14, v5, :cond_16

    new-array v10, v6, [I

    iget v6, v1, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    aput v6, v10, v7

    .line 5491
    :cond_16
    invoke-interface {v11, v12, v13, v10}, Lcom/android/internal/app/IAppOpsService;->getOpsForPackage(ILjava/lang/String;[I)Ljava/util/List;

    move-result-object v6

    .line 5494
    .end local v9    # "r":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .local v6, "r":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    if-eqz v6, :cond_17

    .line 5495
    invoke-interface {v8, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 5497
    .end local v6    # "r":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    :cond_17
    goto :goto_a

    .line 5498
    :cond_18
    iget-object v9, v1, Lcom/android/server/appop/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    iget v11, v1, Lcom/android/server/appop/AppOpsService$Shell;->nonpackageUid:I

    .line 5500
    iget v12, v1, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    if-eq v12, v5, :cond_19

    new-array v10, v6, [I

    iget v6, v1, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    aput v6, v10, v7

    .line 5498
    :cond_19
    invoke-interface {v9, v11, v10}, Lcom/android/internal/app/IAppOpsService;->getUidOps(I[I)Ljava/util/List;

    move-result-object v6

    move-object v8, v6

    .line 5502
    :goto_a
    if-eqz v8, :cond_28

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v6

    if-gtz v6, :cond_1a

    move-object/from16 v21, v8

    goto/16 :goto_10

    .line 5510
    :cond_1a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 5511
    .local v9, "now":J
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_b
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    if-ge v6, v11, :cond_27

    .line 5512
    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/AppOpsManager$PackageOps;

    .line 5513
    .local v11, "packageOps":Landroid/app/AppOpsManager$PackageOps;
    invoke-virtual {v11}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_1b

    .line 5514
    const-string v12, "Uid mode: "

    invoke-virtual {v3, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5516
    :cond_1b
    invoke-virtual {v11}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v12

    .line 5517
    .local v12, "entries":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_c
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v14

    if-ge v13, v14, :cond_26

    .line 5518
    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/app/AppOpsManager$OpEntry;

    .line 5519
    .local v14, "ent":Landroid/app/AppOpsManager$OpEntry;
    invoke-virtual {v14}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v15

    invoke-static {v15}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5520
    const-string v15, ": "

    invoke-virtual {v3, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5521
    invoke-virtual {v14}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v15

    invoke-static {v15}, Landroid/app/AppOpsManager;->modeToName(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5522
    iget-object v15, v1, Lcom/android/server/appop/AppOpsService$Shell;->attributionTag:Ljava/lang/String;

    const-wide/16 v16, -0x1

    const/16 v5, 0x1f

    if-nez v15, :cond_20

    .line 5523
    invoke-virtual {v14, v5}, Landroid/app/AppOpsManager$OpEntry;->getLastAccessTime(I)J

    move-result-wide v19

    cmp-long v15, v19, v16

    if-eqz v15, :cond_1c

    .line 5524
    const-string v15, "; time="

    invoke-virtual {v3, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5525
    nop

    .line 5526
    invoke-virtual {v14, v5}, Landroid/app/AppOpsManager$OpEntry;->getLastAccessTime(I)J

    move-result-wide v19

    move-object/from16 v21, v8

    .end local v8    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .local v21, "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    sub-long v7, v9, v19

    .line 5525
    invoke-static {v7, v8, v3}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 5527
    const-string v7, " ago"

    invoke-virtual {v3, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_d

    .line 5523
    .end local v21    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v8    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    :cond_1c
    move-object/from16 v21, v8

    .line 5529
    .end local v8    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v21    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    :goto_d
    invoke-virtual {v14, v5}, Landroid/app/AppOpsManager$OpEntry;->getLastRejectTime(I)J

    move-result-wide v7

    cmp-long v7, v7, v16

    if-eqz v7, :cond_1d

    .line 5530
    const-string v7, "; rejectTime="

    invoke-virtual {v3, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5531
    nop

    .line 5532
    invoke-virtual {v14, v5}, Landroid/app/AppOpsManager$OpEntry;->getLastRejectTime(I)J

    move-result-wide v7

    sub-long v7, v9, v7

    .line 5531
    invoke-static {v7, v8, v3}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 5533
    const-string v7, " ago"

    invoke-virtual {v3, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5535
    :cond_1d
    invoke-virtual {v14}, Landroid/app/AppOpsManager$OpEntry;->isRunning()Z

    move-result v7

    if-eqz v7, :cond_1e

    .line 5536
    const-string v5, " (running)"

    invoke-virtual {v3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move v8, v6

    goto/16 :goto_f

    .line 5537
    :cond_1e
    invoke-virtual {v14, v5}, Landroid/app/AppOpsManager$OpEntry;->getLastDuration(I)J

    move-result-wide v7

    cmp-long v7, v7, v16

    if-eqz v7, :cond_1f

    .line 5538
    const-string v7, "; duration="

    invoke-virtual {v3, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5539
    invoke-virtual {v14, v5}, Landroid/app/AppOpsManager$OpEntry;->getLastDuration(I)J

    move-result-wide v7

    invoke-static {v7, v8, v3}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    move v8, v6

    goto/16 :goto_f

    .line 5537
    :cond_1f
    move v8, v6

    goto/16 :goto_f

    .line 5542
    .end local v21    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v8    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    :cond_20
    move-object/from16 v21, v8

    .line 5543
    .end local v8    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v21    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    invoke-virtual {v14}, Landroid/app/AppOpsManager$OpEntry;->getAttributedOpEntries()Ljava/util/Map;

    move-result-object v7

    iget-object v8, v1, Lcom/android/server/appop/AppOpsService$Shell;->attributionTag:Ljava/lang/String;

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/AppOpsManager$AttributedOpEntry;

    .line 5544
    .local v7, "attributionEnt":Landroid/app/AppOpsManager$AttributedOpEntry;
    if-eqz v7, :cond_24

    .line 5545
    invoke-virtual {v7, v5}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastAccessTime(I)J

    move-result-wide v19

    cmp-long v8, v19, v16

    if-eqz v8, :cond_21

    .line 5546
    const-string v8, "; time="

    invoke-virtual {v3, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5547
    nop

    .line 5548
    invoke-virtual {v7, v5}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastAccessTime(I)J

    move-result-wide v19

    move v8, v6

    .end local v6    # "i":I
    .local v8, "i":I
    sub-long v5, v9, v19

    .line 5547
    invoke-static {v5, v6, v3}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 5550
    const-string v5, " ago"

    invoke-virtual {v3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_e

    .line 5545
    .end local v8    # "i":I
    .restart local v6    # "i":I
    :cond_21
    move v8, v6

    .line 5552
    .end local v6    # "i":I
    .restart local v8    # "i":I
    :goto_e
    const/16 v5, 0x1f

    invoke-virtual {v7, v5}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastRejectTime(I)J

    move-result-wide v19

    cmp-long v5, v19, v16

    if-eqz v5, :cond_22

    .line 5553
    const-string v5, "; rejectTime="

    invoke-virtual {v3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5554
    nop

    .line 5555
    const/16 v5, 0x1f

    invoke-virtual {v7, v5}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastRejectTime(I)J

    move-result-wide v19

    sub-long v5, v9, v19

    .line 5554
    invoke-static {v5, v6, v3}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 5557
    const-string v5, " ago"

    invoke-virtual {v3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5559
    :cond_22
    invoke-virtual {v7}, Landroid/app/AppOpsManager$AttributedOpEntry;->isRunning()Z

    move-result v5

    if-eqz v5, :cond_23

    .line 5560
    const-string v5, " (running)"

    invoke-virtual {v3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_f

    .line 5561
    :cond_23
    const/16 v5, 0x1f

    invoke-virtual {v7, v5}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastDuration(I)J

    move-result-wide v19

    cmp-long v5, v19, v16

    if-eqz v5, :cond_25

    .line 5563
    const-string v5, "; duration="

    invoke-virtual {v3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5564
    nop

    .line 5565
    const/16 v5, 0x1f

    invoke-virtual {v7, v5}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastDuration(I)J

    move-result-wide v5

    .line 5564
    invoke-static {v5, v6, v3}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    goto :goto_f

    .line 5544
    .end local v8    # "i":I
    .restart local v6    # "i":I
    :cond_24
    move v8, v6

    .line 5569
    .end local v6    # "i":I
    .end local v7    # "attributionEnt":Landroid/app/AppOpsManager$AttributedOpEntry;
    .restart local v8    # "i":I
    :cond_25
    :goto_f
    invoke-virtual {v3}, Ljava/io/PrintWriter;->println()V

    .line 5517
    .end local v14    # "ent":Landroid/app/AppOpsManager$OpEntry;
    add-int/lit8 v13, v13, 0x1

    move v6, v8

    move-object/from16 v8, v21

    const/4 v5, -0x1

    const/4 v7, 0x0

    goto/16 :goto_c

    .end local v21    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v6    # "i":I
    .local v8, "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    :cond_26
    move-object/from16 v21, v8

    move v8, v6

    .line 5511
    .end local v6    # "i":I
    .end local v11    # "packageOps":Landroid/app/AppOpsManager$PackageOps;
    .end local v12    # "entries":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    .end local v13    # "j":I
    .local v8, "i":I
    .restart local v21    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    add-int/lit8 v6, v8, 0x1

    move-object/from16 v8, v21

    const/4 v5, -0x1

    const/4 v7, 0x0

    .end local v8    # "i":I
    .restart local v6    # "i":I
    goto/16 :goto_b

    .line 5572
    .end local v6    # "i":I
    .end local v21    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .local v8, "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    :cond_27
    const/4 v5, 0x0

    return v5

    .line 5502
    .end local v9    # "now":J
    :cond_28
    move-object/from16 v21, v8

    .line 5503
    .end local v8    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v21    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    :goto_10
    const-string v5, "No operations."

    invoke-virtual {v3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5504
    iget v5, v1, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    const/4 v6, -0x1

    if-le v5, v6, :cond_29

    iget v5, v1, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    const/16 v6, 0x74

    if-ge v5, v6, :cond_29

    .line 5505
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Default mode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    .line 5506
    invoke-static {v6}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v6

    .line 5505
    invoke-static {v6}, Landroid/app/AppOpsManager;->modeToName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5508
    :cond_29
    const/4 v5, 0x0

    return v5

    .line 5445
    .end local v0    # "res":I
    .end local v21    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    :pswitch_7
    invoke-virtual {v1, v6, v4}, Lcom/android/server/appop/AppOpsService$Shell;->parseUserPackageOp(ZLjava/io/PrintWriter;)I

    move-result v0

    move v5, v0

    .line 5446
    .local v5, "res":I
    if-gez v5, :cond_2a

    .line 5447
    return v5

    .line 5449
    :cond_2a
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/appop/AppOpsService$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    .line 5450
    .local v6, "modeStr":Ljava/lang/String;
    if-nez v6, :cond_2b

    .line 5451
    const-string v0, "Error: Mode not specified."

    invoke-virtual {v4, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5452
    const/4 v7, -0x1

    return v7

    .line 5455
    :cond_2b
    invoke-static {v6, v4}, Lcom/android/server/appop/AppOpsService$Shell;->strModeToMode(Ljava/lang/String;Ljava/io/PrintWriter;)I

    move-result v0

    move v7, v0

    .line 5456
    .local v7, "mode":I
    if-gez v7, :cond_2c

    .line 5457
    const/4 v8, -0x1

    return v8

    .line 5460
    :cond_2c
    iget-boolean v0, v1, Lcom/android/server/appop/AppOpsService$Shell;->targetsUid:Z

    if-nez v0, :cond_2d

    iget-object v0, v1, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_2d

    .line 5461
    iget-object v0, v1, Lcom/android/server/appop/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    iget v8, v1, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    iget v9, v1, Lcom/android/server/appop/AppOpsService$Shell;->packageUid:I

    iget-object v10, v1, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    invoke-interface {v0, v8, v9, v10, v7}, Lcom/android/internal/app/IAppOpsService;->setMode(IILjava/lang/String;I)V

    goto :goto_11

    .line 5463
    :cond_2d
    iget-boolean v0, v1, Lcom/android/server/appop/AppOpsService$Shell;->targetsUid:Z

    if-eqz v0, :cond_2e

    iget-object v0, v1, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_1

    if-eqz v0, :cond_2e

    .line 5465
    :try_start_a
    iget-object v0, v1, Lcom/android/server/appop/AppOpsService$Shell;->mInternal:Lcom/android/server/appop/AppOpsService;

    iget-object v0, v0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v8, v1, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    iget v9, v1, Lcom/android/server/appop/AppOpsService$Shell;->userId:I

    .line 5466
    invoke-virtual {v0, v8, v9}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v0

    .line 5467
    .local v0, "uid":I
    iget-object v8, v1, Lcom/android/server/appop/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    iget v9, v1, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    invoke-interface {v8, v9, v0, v7}, Lcom/android/internal/app/IAppOpsService;->setUidMode(III)V
    :try_end_a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a .. :try_end_a} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_1

    .line 5470
    .end local v0    # "uid":I
    goto :goto_11

    .line 5468
    :catch_0
    move-exception v0

    .line 5469
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v8, -0x1

    return v8

    .line 5472
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_2e
    :try_start_b
    iget-object v0, v1, Lcom/android/server/appop/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    iget v8, v1, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    iget v9, v1, Lcom/android/server/appop/AppOpsService$Shell;->nonpackageUid:I

    invoke-interface {v0, v8, v9, v7}, Lcom/android/internal/app/IAppOpsService;->setUidMode(III)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_1

    .line 5474
    :goto_11
    const/4 v0, 0x0

    return v0

    .line 5696
    .end local v5    # "res":I
    .end local v6    # "modeStr":Ljava/lang/String;
    .end local v7    # "mode":I
    :goto_12
    return v0

    .line 5698
    :catch_1
    move-exception v0

    .line 5699
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Remote exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5701
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v5, -0x1

    return v5

    :sswitch_data_0
    .sparse-switch
        -0x658cadaf -> :sswitch_7
        -0x458a76fa -> :sswitch_6
        0x18f56 -> :sswitch_5
        0x1bc62 -> :sswitch_4
        0x360802 -> :sswitch_3
        0x6761d4f -> :sswitch_2
        0x68ac462 -> :sswitch_1
        0x7c514e7a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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

.method private pruneOpLocked(Lcom/android/server/appop/AppOpsService$Op;ILjava/lang/String;)V
    .locals 8
    .param p1, "op"    # Lcom/android/server/appop/AppOpsService$Op;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 2455
    invoke-virtual {p1}, Lcom/android/server/appop/AppOpsService$Op;->removeAttributionsWithNoTime()V

    .line 2457
    iget-object v0, p1, Lcom/android/server/appop/AppOpsService$Op;->mAttributions:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2458
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v1 .. v7}, Lcom/android/server/appop/AppOpsService;->getOpsLocked(ILjava/lang/String;Ljava/lang/String;ZLandroid/app/AppOpsManager$RestrictionBypass;Z)Lcom/android/server/appop/AppOpsService$Ops;

    move-result-object v0

    .line 2459
    .local v0, "ops":Lcom/android/server/appop/AppOpsService$Ops;
    if-eqz v0, :cond_1

    .line 2460
    iget v1, p1, Lcom/android/server/appop/AppOpsService$Op;->op:I

    invoke-virtual {v0, v1}, Lcom/android/server/appop/AppOpsService$Ops;->remove(I)V

    .line 2461
    invoke-virtual {v0}, Lcom/android/server/appop/AppOpsService$Ops;->size()I

    move-result v1

    if-gtz v1, :cond_1

    .line 2462
    iget-object v1, v0, Lcom/android/server/appop/AppOpsService$Ops;->uidState:Lcom/android/server/appop/AppOpsService$UidState;

    .line 2463
    .local v1, "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    iget-object v2, v1, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .line 2464
    .local v2, "pkgOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    if-eqz v2, :cond_1

    .line 2465
    iget-object v3, v0, Lcom/android/server/appop/AppOpsService$Ops;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2466
    invoke-virtual {v2}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2467
    const/4 v3, 0x0

    iput-object v3, v1, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .line 2469
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/appop/AppOpsService$UidState;->isDefault()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2470
    iget-object v3, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 2476
    .end local v0    # "ops":Lcom/android/server/appop/AppOpsService$Ops;
    .end local v1    # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .end local v2    # "pkgOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    :cond_1
    return-void
.end method

.method private readAttributionOp(Landroid/util/TypedXmlPullParser;Lcom/android/server/appop/AppOpsService$Op;Ljava/lang/String;)V
    .locals 26
    .param p1, "parser"    # Landroid/util/TypedXmlPullParser;
    .param p2, "parent"    # Lcom/android/server/appop/AppOpsService$Op;
    .param p3, "attribution"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 4979
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-static {v1, v1, v2}, Lcom/android/server/appop/AppOpsService$Op;->access$1500(Lcom/android/server/appop/AppOpsService$Op;Lcom/android/server/appop/AppOpsService$Op;Ljava/lang/String;)Lcom/android/server/appop/AppOpsService$AttributedOp;

    move-result-object v13

    .line 4981
    .local v13, "attributedOp":Lcom/android/server/appop/AppOpsService$AttributedOp;
    const/4 v3, 0x0

    const-string/jumbo v4, "n"

    invoke-interface {v0, v3, v4}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v14

    .line 4982
    .local v14, "key":J
    invoke-static {v14, v15}, Landroid/app/AppOpsManager;->extractUidStateFromKey(J)I

    move-result v12

    .line 4983
    .local v12, "uidState":I
    invoke-static {v14, v15}, Landroid/app/AppOpsManager;->extractFlagsFromKey(J)I

    move-result v11

    .line 4985
    .local v11, "opFlags":I
    const-string/jumbo v4, "t"

    const-wide/16 v9, 0x0

    invoke-interface {v0, v3, v4, v9, v10}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v16

    .line 4986
    .local v16, "accessTime":J
    const-string/jumbo v4, "r"

    invoke-interface {v0, v3, v4, v9, v10}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v6

    .line 4987
    .local v6, "rejectTime":J
    const-string v4, "d"

    const-wide/16 v9, -0x1

    invoke-interface {v0, v3, v4, v9, v10}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v20

    .line 4988
    .local v20, "accessDuration":J
    const-string/jumbo v4, "pp"

    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 4989
    .local v22, "proxyPkg":Ljava/lang/String;
    const-string/jumbo v4, "pu"

    const/4 v5, -0x1

    invoke-interface {v0, v3, v4, v5}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v23

    .line 4990
    .local v23, "proxyUid":I
    const-string/jumbo v3, "pc"

    invoke-static {v0, v3}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 4992
    .local v24, "proxyAttributionTag":Ljava/lang/String;
    const-wide/16 v9, 0x0

    cmp-long v3, v16, v9

    if-lez v3, :cond_0

    .line 4993
    move-object v3, v13

    move-wide/from16 v4, v16

    move-wide v0, v6

    .end local v6    # "rejectTime":J
    .local v0, "rejectTime":J
    move-wide/from16 v6, v20

    move/from16 v8, v23

    move-wide/from16 v18, v9

    move-object/from16 v9, v22

    move-object/from16 v10, v24

    move/from16 v25, v11

    .end local v11    # "opFlags":I
    .local v25, "opFlags":I
    move v11, v12

    move v2, v12

    .end local v12    # "uidState":I
    .local v2, "uidState":I
    move/from16 v12, v25

    invoke-virtual/range {v3 .. v12}, Lcom/android/server/appop/AppOpsService$AttributedOp;->accessed(JJILjava/lang/String;Ljava/lang/String;II)V

    goto :goto_0

    .line 4992
    .end local v0    # "rejectTime":J
    .end local v2    # "uidState":I
    .end local v25    # "opFlags":I
    .restart local v6    # "rejectTime":J
    .restart local v11    # "opFlags":I
    .restart local v12    # "uidState":I
    :cond_0
    move-wide v0, v6

    move-wide/from16 v18, v9

    move/from16 v25, v11

    move v2, v12

    .line 4996
    .end local v6    # "rejectTime":J
    .end local v11    # "opFlags":I
    .end local v12    # "uidState":I
    .restart local v0    # "rejectTime":J
    .restart local v2    # "uidState":I
    .restart local v25    # "opFlags":I
    :goto_0
    cmp-long v3, v0, v18

    if-lez v3, :cond_1

    .line 4997
    move/from16 v3, v25

    .end local v25    # "opFlags":I
    .local v3, "opFlags":I
    invoke-virtual {v13, v0, v1, v2, v3}, Lcom/android/server/appop/AppOpsService$AttributedOp;->rejected(JII)V

    goto :goto_1

    .line 4996
    .end local v3    # "opFlags":I
    .restart local v25    # "opFlags":I
    :cond_1
    move/from16 v3, v25

    .line 4999
    .end local v25    # "opFlags":I
    .restart local v3    # "opFlags":I
    :goto_1
    return-void
.end method

.method private readNoteOpCallerStackTraces()V
    .locals 4

    .line 1740
    :try_start_0
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mNoteOpCallerStacktracesFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1741
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mNoteOpCallerStacktracesFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 1742
    return-void

    .line 1745
    :cond_0
    new-instance v0, Ljava/util/Scanner;

    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mNoteOpCallerStacktracesFile:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/util/Scanner;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1746
    .local v0, "read":Ljava/util/Scanner;
    :try_start_1
    const-string v1, "\\},"

    invoke-virtual {v0, v1}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    .line 1747
    :goto_0
    invoke-virtual {v0}, Ljava/util/Scanner;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1748
    invoke-virtual {v0}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v1

    .line 1749
    .local v1, "jsonOps":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService;->mNoteOpCallerStacktraces:Landroid/util/ArraySet;

    invoke-static {v1}, Lcom/android/server/appop/AppOpsService$NoteOpTrace;->fromJson(Ljava/lang/String;)Lcom/android/server/appop/AppOpsService$NoteOpTrace;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1750
    nop

    .end local v1    # "jsonOps":Ljava/lang/String;
    goto :goto_0

    .line 1751
    :cond_1
    :try_start_2
    invoke-virtual {v0}, Ljava/util/Scanner;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1754
    .end local v0    # "read":Ljava/util/Scanner;
    goto :goto_2

    .line 1745
    .restart local v0    # "read":Ljava/util/Scanner;
    :catchall_0
    move-exception v1

    :try_start_3
    invoke-virtual {v0}, Ljava/util/Scanner;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/server/appop/AppOpsService;
    :goto_1
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 1752
    .end local v0    # "read":Ljava/util/Scanner;
    .restart local p0    # "this":Lcom/android/server/appop/AppOpsService;
    :catch_0
    move-exception v0

    .line 1753
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "AppOps"

    const-string v2, "Cannot parse traces noteOps"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1755
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    return-void
.end method

.method private readOp(Landroid/util/TypedXmlPullParser;Lcom/android/server/appop/AppOpsService$UidState;Ljava/lang/String;)V
    .locals 9
    .param p1, "parser"    # Landroid/util/TypedXmlPullParser;
    .param p2, "uidState"    # Lcom/android/server/appop/AppOpsService$UidState;
    .param p3, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 5004
    const/4 v0, 0x0

    const-string/jumbo v1, "n"

    invoke-interface {p1, v0, v1}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 5005
    .local v1, "opCode":I
    new-instance v8, Lcom/android/server/appop/AppOpsService$Op;

    iget v7, p2, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    move-object v2, v8

    move-object v3, p0

    move-object v4, p2

    move-object v5, p3

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lcom/android/server/appop/AppOpsService$Op;-><init>(Lcom/android/server/appop/AppOpsService;Lcom/android/server/appop/AppOpsService$UidState;Ljava/lang/String;II)V

    .line 5007
    .local v2, "op":Lcom/android/server/appop/AppOpsService$Op;
    iget v3, v2, Lcom/android/server/appop/AppOpsService$Op;->op:I

    invoke-static {v3}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v3

    const-string/jumbo v4, "m"

    invoke-interface {p1, v0, v4, v3}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 5008
    .local v0, "mode":I
    invoke-static {v2, v0}, Lcom/android/server/appop/AppOpsService$Op;->access$402(Lcom/android/server/appop/AppOpsService$Op;I)I

    .line 5010
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v3

    .line 5012
    .local v3, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v4

    move v5, v4

    .local v5, "type":I
    const/4 v6, 0x1

    if-eq v4, v6, :cond_4

    const/4 v4, 0x3

    if-ne v5, v4, :cond_1

    .line 5013
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v6

    if-le v6, v3, :cond_4

    .line 5014
    :cond_1
    if-eq v5, v4, :cond_0

    const/4 v4, 0x4

    if-ne v5, v4, :cond_2

    .line 5015
    goto :goto_0

    .line 5017
    :cond_2
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 5018
    .local v4, "tagName":Ljava/lang/String;
    const-string/jumbo v6, "st"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 5019
    const-string v6, "id"

    invoke-static {p1, v6}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, p1, v2, v6}, Lcom/android/server/appop/AppOpsService;->readAttributionOp(Landroid/util/TypedXmlPullParser;Lcom/android/server/appop/AppOpsService$Op;Ljava/lang/String;)V

    goto :goto_1

    .line 5021
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown element under <op>: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5022
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 5021
    const-string v7, "AppOps"

    invoke-static {v7, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5023
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 5025
    .end local v4    # "tagName":Ljava/lang/String;
    :goto_1
    goto :goto_0

    .line 5027
    :cond_4
    iget-object v4, p2, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    if-nez v4, :cond_5

    .line 5028
    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    iput-object v4, p2, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .line 5030
    :cond_5
    iget-object v4, p2, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v4, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/appop/AppOpsService$Ops;

    .line 5031
    .local v4, "ops":Lcom/android/server/appop/AppOpsService$Ops;
    if-nez v4, :cond_6

    .line 5032
    new-instance v6, Lcom/android/server/appop/AppOpsService$Ops;

    invoke-direct {v6, p3, p2}, Lcom/android/server/appop/AppOpsService$Ops;-><init>(Ljava/lang/String;Lcom/android/server/appop/AppOpsService$UidState;)V

    move-object v4, v6

    .line 5033
    iget-object v6, p2, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v6, p3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5035
    :cond_6
    iget v6, v2, Lcom/android/server/appop/AppOpsService$Op;->op:I

    invoke-virtual {v4, v6, v2}, Lcom/android/server/appop/AppOpsService$Ops;->put(ILjava/lang/Object;)V

    .line 5036
    return-void
.end method

.method private readPackage(Landroid/util/TypedXmlPullParser;)V
    .locals 6
    .param p1, "parser"    # Landroid/util/TypedXmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 4933
    const/4 v0, 0x0

    const-string/jumbo v1, "n"

    invoke-interface {p1, v0, v1}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4934
    .local v0, "pkgName":Ljava/lang/String;
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v1

    .line 4936
    .local v1, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v2

    move v3, v2

    .local v3, "type":I
    const/4 v4, 0x1

    if-eq v2, v4, :cond_4

    const/4 v2, 0x3

    if-ne v3, v2, :cond_1

    .line 4937
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v1, :cond_4

    .line 4938
    :cond_1
    if-eq v3, v2, :cond_0

    const/4 v2, 0x4

    if-ne v3, v2, :cond_2

    .line 4939
    goto :goto_0

    .line 4942
    :cond_2
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 4943
    .local v2, "tagName":Ljava/lang/String;
    const-string/jumbo v4, "uid"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 4944
    invoke-direct {p0, p1, v0}, Lcom/android/server/appop/AppOpsService;->readUid(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)V

    goto :goto_1

    .line 4946
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown element under <pkg>: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4947
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 4946
    const-string v5, "AppOps"

    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4948
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 4950
    .end local v2    # "tagName":Ljava/lang/String;
    :goto_1
    goto :goto_0

    .line 4951
    :cond_4
    return-void
.end method

.method private readUid(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)V
    .locals 8
    .param p1, "parser"    # Landroid/util/TypedXmlPullParser;
    .param p2, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 4955
    const/4 v0, 0x0

    const-string/jumbo v1, "n"

    invoke-interface {p1, v0, v1}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 4956
    .local v0, "uid":I
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/appop/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/appop/AppOpsService$UidState;

    move-result-object v2

    .line 4957
    .local v2, "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v3

    .line 4959
    .local v3, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v4

    move v5, v4

    .local v5, "type":I
    if-eq v4, v1, :cond_4

    const/4 v4, 0x3

    if-ne v5, v4, :cond_1

    .line 4960
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v6

    if-le v6, v3, :cond_4

    .line 4961
    :cond_1
    if-eq v5, v4, :cond_0

    const/4 v4, 0x4

    if-ne v5, v4, :cond_2

    .line 4962
    goto :goto_0

    .line 4964
    :cond_2
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 4965
    .local v4, "tagName":Ljava/lang/String;
    const-string/jumbo v6, "op"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 4966
    invoke-direct {p0, p1, v2, p2}, Lcom/android/server/appop/AppOpsService;->readOp(Landroid/util/TypedXmlPullParser;Lcom/android/server/appop/AppOpsService$UidState;Ljava/lang/String;)V

    goto :goto_1

    .line 4968
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown element under <pkg>: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4969
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 4968
    const-string v7, "AppOps"

    invoke-static {v7, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4970
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 4972
    .end local v4    # "tagName":Ljava/lang/String;
    :goto_1
    goto :goto_0

    .line 4973
    :cond_4
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Lcom/android/server/appop/AppOpsService$UidState;->evalForegroundOps(Landroid/util/SparseArray;)V

    .line 4974
    return-void
.end method

.method private readUidOps(Landroid/util/TypedXmlPullParser;)V
    .locals 8
    .param p1, "parser"    # Landroid/util/TypedXmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 4909
    const/4 v0, 0x0

    const-string/jumbo v1, "n"

    invoke-interface {p1, v0, v1}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 4910
    .local v2, "uid":I
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v3

    .line 4912
    .local v3, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v4

    move v5, v4

    .local v5, "type":I
    const/4 v6, 0x1

    if-eq v4, v6, :cond_4

    const/4 v4, 0x3

    if-ne v5, v4, :cond_1

    .line 4913
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v6

    if-le v6, v3, :cond_4

    .line 4914
    :cond_1
    if-eq v5, v4, :cond_0

    const/4 v4, 0x4

    if-ne v5, v4, :cond_2

    .line 4915
    goto :goto_0

    .line 4918
    :cond_2
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 4919
    .local v4, "tagName":Ljava/lang/String;
    const-string/jumbo v6, "op"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 4920
    invoke-interface {p1, v0, v1}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 4921
    .local v6, "code":I
    const-string/jumbo v7, "m"

    invoke-interface {p1, v0, v7}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 4922
    .local v7, "mode":I
    invoke-virtual {p0, v6, v2, v7}, Lcom/android/server/appop/AppOpsService;->setUidMode(III)V

    .line 4923
    .end local v6    # "code":I
    .end local v7    # "mode":I
    goto :goto_1

    .line 4924
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown element under <uid-ops>: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4925
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 4924
    const-string v7, "AppOps"

    invoke-static {v7, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4926
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 4928
    .end local v4    # "tagName":Ljava/lang/String;
    :goto_1
    goto :goto_0

    .line 4929
    :cond_4
    return-void
.end method

.method private removeUidsForUserLocked(I)V
    .locals 3
    .param p1, "userHandle"    # I

    .line 6986
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 6987
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 6988
    .local v1, "uid":I
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 6989
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->removeAt(I)V

    .line 6986
    .end local v1    # "uid":I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 6992
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private reportRuntimeAppOpAccessMessageAsyncLocked(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "opCode"    # I
    .param p4, "attributionTag"    # Ljava/lang/String;
    .param p5, "message"    # Ljava/lang/String;

    .line 6779
    invoke-direct {p0, p2}, Lcom/android/server/appop/AppOpsService;->switchPackageIfBootTimeOrRarelyUsedLocked(Ljava/lang/String;)V

    .line 6780
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mSampledPackage:Ljava/lang/String;

    invoke-static {v0, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6781
    return-void

    .line 6783
    :cond_0
    invoke-direct/range {p0 .. p5}, Lcom/android/server/appop/AppOpsService;->reportRuntimeAppOpAccessMessageInternalLocked(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 6785
    return-void
.end method

.method private reportRuntimeAppOpAccessMessageInternalLocked(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "opCode"    # I
    .param p4, "attributionTag"    # Ljava/lang/String;
    .param p5, "message"    # Ljava/lang/String;

    .line 6794
    iget v0, p0, Lcom/android/server/appop/AppOpsService;->mSampledAppOpCode:I

    const/16 v1, 0x74

    invoke-static {p3, v0, v1}, Landroid/app/AppOpsManager;->leftCircularDistance(III)I

    move-result v0

    .line 6797
    .local v0, "newLeftDistance":I
    iget v1, p0, Lcom/android/server/appop/AppOpsService;->mAcceptableLeftDistance:I

    const/4 v2, 0x4

    if-ge v1, v0, :cond_0

    iget v3, p0, Lcom/android/server/appop/AppOpsService;->mSamplingStrategy:I

    if-eq v3, v2, :cond_0

    .line 6799
    return-void

    .line 6802
    :cond_0
    if-le v1, v0, :cond_1

    iget v1, p0, Lcom/android/server/appop/AppOpsService;->mSamplingStrategy:I

    if-eq v1, v2, :cond_1

    .line 6804
    iput v0, p0, Lcom/android/server/appop/AppOpsService;->mAcceptableLeftDistance:I

    .line 6805
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/appop/AppOpsService;->mMessagesCollectedCount:F

    .line 6808
    :cond_1
    iget v1, p0, Lcom/android/server/appop/AppOpsService;->mMessagesCollectedCount:F

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    iput v1, p0, Lcom/android/server/appop/AppOpsService;->mMessagesCollectedCount:F

    .line 6809
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/ThreadLocalRandom;->nextFloat()F

    move-result v1

    iget v3, p0, Lcom/android/server/appop/AppOpsService;->mMessagesCollectedCount:F

    div-float/2addr v2, v3

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_2

    .line 6810
    new-instance v1, Landroid/app/RuntimeAppOpAccessMessage;

    iget v8, p0, Lcom/android/server/appop/AppOpsService;->mSamplingStrategy:I

    move-object v2, v1

    move v3, p1

    move v4, p3

    move-object v5, p2

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v2 .. v8}, Landroid/app/RuntimeAppOpAccessMessage;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/android/server/appop/AppOpsService;->mCollectedRuntimePermissionMessage:Landroid/app/RuntimeAppOpAccessMessage;

    .line 6813
    :cond_2
    return-void
.end method

.method private resampleAppOpForPackageLocked(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pickOp"    # Z

    .line 6884
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/appop/AppOpsService;->mMessagesCollectedCount:F

    .line 6885
    if-eqz p2, :cond_0

    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v0

    const/16 v1, 0x74

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadLocalRandom;->nextInt(I)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    iput v0, p0, Lcom/android/server/appop/AppOpsService;->mSampledAppOpCode:I

    .line 6886
    const/16 v0, 0x73

    iput v0, p0, Lcom/android/server/appop/AppOpsService;->mAcceptableLeftDistance:I

    .line 6887
    iput-object p1, p0, Lcom/android/server/appop/AppOpsService;->mSampledPackage:Ljava/lang/String;

    .line 6888
    return-void
.end method

.method private resamplePackageAndAppOpLocked(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 6869
    .local p1, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 6870
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadLocalRandom;->nextFloat()F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 6871
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/appop/AppOpsService;->mSamplingStrategy:I

    .line 6872
    nop

    .line 6873
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadLocalRandom;->nextInt(I)I

    move-result v1

    .line 6872
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/android/server/appop/AppOpsService;->resampleAppOpForPackageLocked(Ljava/lang/String;Z)V

    goto :goto_0

    .line 6875
    :cond_0
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/server/appop/AppOpsService;->mSamplingStrategy:I

    .line 6876
    nop

    .line 6877
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadLocalRandom;->nextInt(I)I

    move-result v0

    .line 6876
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/appop/AppOpsService;->resampleAppOpForPackageLocked(Ljava/lang/String;Z)V

    .line 6880
    :cond_1
    :goto_0
    return-void
.end method

.method private static resolveUid(Ljava/lang/String;)I
    .locals 3
    .param p0, "packageName"    # Ljava/lang/String;

    .line 7002
    const/4 v0, -0x1

    if-nez p0, :cond_0

    .line 7003
    return v0

    .line 7005
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    sparse-switch v1, :sswitch_data_0

    :cond_1
    goto :goto_0

    :sswitch_0
    const-string v1, "audioserver"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    goto :goto_1

    :sswitch_1
    const-string/jumbo v1, "shell"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_2
    const-string/jumbo v1, "media"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x3

    goto :goto_1

    :sswitch_3
    const-string/jumbo v1, "root"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_1

    :sswitch_4
    const-string v1, "cameraserver"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x5

    goto :goto_1

    :sswitch_5
    const-string v1, "dumpstate"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    goto :goto_1

    :goto_0
    move v1, v0

    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 7018
    return v0

    .line 7016
    :pswitch_0
    const/16 v0, 0x417

    return v0

    .line 7014
    :pswitch_1
    const/16 v0, 0x411

    return v0

    .line 7012
    :pswitch_2
    const/16 v0, 0x3f5

    return v0

    .line 7010
    :pswitch_3
    const/16 v0, 0x7d0

    return v0

    .line 7007
    :pswitch_4
    return v2

    :sswitch_data_0
    .sparse-switch
        -0x4faa5ce3 -> :sswitch_5
        -0x1dbbd58 -> :sswitch_4
        0x3580e2 -> :sswitch_3
        0x62f6fe4 -> :sswitch_2
        0x6855e30 -> :sswitch_1
        0x50251299 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private scheduleFastWriteLocked()V
    .locals 4

    .line 4689
    iget-boolean v0, p0, Lcom/android/server/appop/AppOpsService;->mFastWriteScheduled:Z

    if-nez v0, :cond_0

    .line 4690
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/appop/AppOpsService;->mWriteScheduled:Z

    .line 4691
    iput-boolean v0, p0, Lcom/android/server/appop/AppOpsService;->mFastWriteScheduled:Z

    .line 4692
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mWriteRunner:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4693
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mWriteRunner:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4695
    :cond_0
    return-void
.end method

.method private scheduleOpActiveChangedIfNeededLocked(IILjava/lang/String;Ljava/lang/String;ZII)V
    .locals 16
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "attributionTag"    # Ljava/lang/String;
    .param p5, "active"    # Z
    .param p6, "attributionFlags"    # I
    .param p7, "attributionChainId"    # I

    .line 4137
    move-object/from16 v10, p0

    const/4 v0, 0x0

    .line 4138
    .local v0, "dispatchedCallbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ActiveCallback;>;"
    iget-object v1, v10, Lcom/android/server/appop/AppOpsService;->mActiveWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v11

    .line 4139
    .local v11, "callbackListCount":I
    const/4 v1, 0x0

    move-object v12, v0

    .end local v0    # "dispatchedCallbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ActiveCallback;>;"
    .local v1, "i":I
    .local v12, "dispatchedCallbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ActiveCallback;>;"
    :goto_0
    if-ge v1, v11, :cond_4

    .line 4140
    iget-object v0, v10, Lcom/android/server/appop/AppOpsService;->mActiveWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 4141
    .local v0, "callbacks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/appop/AppOpsService$ActiveCallback;>;"
    move/from16 v13, p1

    invoke-virtual {v0, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appop/AppOpsService$ActiveCallback;

    .line 4142
    .local v2, "callback":Lcom/android/server/appop/AppOpsService$ActiveCallback;
    if-eqz v2, :cond_3

    .line 4143
    iget v3, v2, Lcom/android/server/appop/AppOpsService$ActiveCallback;->mWatchingUid:I

    if-ltz v3, :cond_0

    iget v3, v2, Lcom/android/server/appop/AppOpsService$ActiveCallback;->mWatchingUid:I

    move/from16 v14, p2

    if-eq v3, v14, :cond_1

    .line 4144
    goto :goto_1

    .line 4143
    :cond_0
    move/from16 v14, p2

    .line 4146
    :cond_1
    if-nez v12, :cond_2

    .line 4147
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    move-object v12, v3

    .line 4149
    :cond_2
    invoke-virtual {v12, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 4142
    :cond_3
    move/from16 v14, p2

    .line 4139
    .end local v0    # "callbacks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/appop/AppOpsService$ActiveCallback;>;"
    .end local v2    # "callback":Lcom/android/server/appop/AppOpsService$ActiveCallback;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    move/from16 v13, p1

    move/from16 v14, p2

    .line 4152
    .end local v1    # "i":I
    if-nez v12, :cond_5

    .line 4153
    return-void

    .line 4155
    :cond_5
    iget-object v15, v10, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    sget-object v0, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda2;->INSTANCE:Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda2;

    .line 4157
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static/range {p5 .. p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 4158
    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 4155
    move-object/from16 v1, p0

    move-object v2, v12

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    invoke-static/range {v0 .. v9}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/NonaConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v15, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 4159
    return-void
.end method

.method private scheduleOpNotedIfNeededLocked(IILjava/lang/String;Ljava/lang/String;II)V
    .locals 15
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "attributionTag"    # Ljava/lang/String;
    .param p5, "flags"    # I
    .param p6, "result"    # I

    .line 4236
    move-object v9, p0

    const/4 v0, 0x0

    .line 4237
    .local v0, "dispatchedCallbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$NotedCallback;>;"
    iget-object v1, v9, Lcom/android/server/appop/AppOpsService;->mNotedWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v10

    .line 4238
    .local v10, "callbackListCount":I
    const/4 v1, 0x0

    move-object v11, v0

    .end local v0    # "dispatchedCallbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$NotedCallback;>;"
    .local v1, "i":I
    .local v11, "dispatchedCallbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$NotedCallback;>;"
    :goto_0
    if-ge v1, v10, :cond_4

    .line 4239
    iget-object v0, v9, Lcom/android/server/appop/AppOpsService;->mNotedWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 4240
    .local v0, "callbacks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/appop/AppOpsService$NotedCallback;>;"
    move/from16 v12, p1

    invoke-virtual {v0, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appop/AppOpsService$NotedCallback;

    .line 4241
    .local v2, "callback":Lcom/android/server/appop/AppOpsService$NotedCallback;
    if-eqz v2, :cond_3

    .line 4242
    iget v3, v2, Lcom/android/server/appop/AppOpsService$NotedCallback;->mWatchingUid:I

    if-ltz v3, :cond_0

    iget v3, v2, Lcom/android/server/appop/AppOpsService$NotedCallback;->mWatchingUid:I

    move/from16 v13, p2

    if-eq v3, v13, :cond_1

    .line 4243
    goto :goto_1

    .line 4242
    :cond_0
    move/from16 v13, p2

    .line 4245
    :cond_1
    if-nez v11, :cond_2

    .line 4246
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    move-object v11, v3

    .line 4248
    :cond_2
    invoke-virtual {v11, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 4241
    :cond_3
    move/from16 v13, p2

    .line 4238
    .end local v0    # "callbacks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/appop/AppOpsService$NotedCallback;>;"
    .end local v2    # "callback":Lcom/android/server/appop/AppOpsService$NotedCallback;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    move/from16 v12, p1

    move/from16 v13, p2

    .line 4251
    .end local v1    # "i":I
    if-nez v11, :cond_5

    .line 4252
    return-void

    .line 4254
    :cond_5
    iget-object v14, v9, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    sget-object v0, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda3;->INSTANCE:Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda3;

    .line 4256
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 4257
    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 4254
    move-object v1, p0

    move-object v2, v11

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    invoke-static/range {v0 .. v8}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/OctConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v14, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 4258
    return-void
.end method

.method private scheduleOpStartedIfNeededLocked(IILjava/lang/String;Ljava/lang/String;II)V
    .locals 15
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "pkgName"    # Ljava/lang/String;
    .param p4, "attributionTag"    # Ljava/lang/String;
    .param p5, "flags"    # I
    .param p6, "result"    # I

    .line 4186
    move-object v9, p0

    const/4 v0, 0x0

    .line 4187
    .local v0, "dispatchedCallbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$StartedCallback;>;"
    iget-object v1, v9, Lcom/android/server/appop/AppOpsService;->mStartedWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v10

    .line 4188
    .local v10, "callbackListCount":I
    const/4 v1, 0x0

    move-object v11, v0

    .end local v0    # "dispatchedCallbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$StartedCallback;>;"
    .local v1, "i":I
    .local v11, "dispatchedCallbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$StartedCallback;>;"
    :goto_0
    if-ge v1, v10, :cond_4

    .line 4189
    iget-object v0, v9, Lcom/android/server/appop/AppOpsService;->mStartedWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 4191
    .local v0, "callbacks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/appop/AppOpsService$StartedCallback;>;"
    move/from16 v12, p1

    invoke-virtual {v0, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appop/AppOpsService$StartedCallback;

    .line 4192
    .local v2, "callback":Lcom/android/server/appop/AppOpsService$StartedCallback;
    if-eqz v2, :cond_3

    .line 4193
    iget v3, v2, Lcom/android/server/appop/AppOpsService$StartedCallback;->mWatchingUid:I

    if-ltz v3, :cond_0

    iget v3, v2, Lcom/android/server/appop/AppOpsService$StartedCallback;->mWatchingUid:I

    move/from16 v13, p2

    if-eq v3, v13, :cond_1

    .line 4194
    goto :goto_1

    .line 4193
    :cond_0
    move/from16 v13, p2

    .line 4197
    :cond_1
    if-nez v11, :cond_2

    .line 4198
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    move-object v11, v3

    .line 4200
    :cond_2
    invoke-virtual {v11, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 4192
    :cond_3
    move/from16 v13, p2

    .line 4188
    .end local v0    # "callbacks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/appop/AppOpsService$StartedCallback;>;"
    .end local v2    # "callback":Lcom/android/server/appop/AppOpsService$StartedCallback;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    move/from16 v12, p1

    move/from16 v13, p2

    .line 4204
    .end local v1    # "i":I
    if-nez v11, :cond_5

    .line 4205
    return-void

    .line 4208
    :cond_5
    iget-object v14, v9, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    sget-object v0, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda4;->INSTANCE:Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda4;

    .line 4210
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 4211
    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 4208
    move-object v1, p0

    move-object v2, v11

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    invoke-static/range {v0 .. v8}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/OctConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v14, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 4212
    return-void
.end method

.method private scheduleWriteLocked()V
    .locals 4

    .line 4682
    iget-boolean v0, p0, Lcom/android/server/appop/AppOpsService;->mWriteScheduled:Z

    if-nez v0, :cond_0

    .line 4683
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/appop/AppOpsService;->mWriteScheduled:Z

    .line 4684
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mWriteRunner:Ljava/lang/Runnable;

    const-wide/32 v2, 0x1b7740

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4686
    :cond_0
    return-void
.end method

.method private setMode(IILjava/lang/String;ILcom/android/internal/app/IAppOpsCallback;)V
    .locals 18
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "mode"    # I
    .param p5, "permissionPolicyCallback"    # Lcom/android/internal/app/IAppOpsCallback;

    .line 2761
    move-object/from16 v9, p0

    move/from16 v10, p2

    move-object/from16 v11, p3

    move/from16 v12, p4

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-direct {v9, v0, v1, v10}, Lcom/android/server/appop/AppOpsService;->enforceManageAppOpsModes(III)V

    .line 2762
    invoke-direct/range {p0 .. p1}, Lcom/android/server/appop/AppOpsService;->verifyIncomingOp(I)V

    .line 2763
    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-direct {v9, v11, v0}, Lcom/android/server/appop/AppOpsService;->verifyIncomingPackage(Ljava/lang/String;I)V

    .line 2765
    const/4 v13, 0x0

    .line 2766
    .local v13, "repCbs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    invoke-static/range {p1 .. p1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v14

    .line 2770
    .end local p1    # "code":I
    .local v14, "code":I
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {v9, v10, v11, v0}, Lcom/android/server/appop/AppOpsService;->verifyAndGetBypass(ILjava/lang/String;Ljava/lang/String;)Lcom/android/server/appop/AppOpsService$PackageVerificationResult;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v15, v0

    .line 2774
    .local v15, "pvr":Lcom/android/server/appop/AppOpsService$PackageVerificationResult;
    nop

    .line 2776
    const/16 v16, 0x3

    .line 2777
    .local v16, "previousMode":I
    monitor-enter p0

    .line 2778
    const/4 v0, 0x0

    :try_start_1
    invoke-direct {v9, v10, v0}, Lcom/android/server/appop/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/appop/AppOpsService$UidState;

    move-result-object v1

    move-object v8, v1

    .line 2779
    .local v8, "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v7, v15, Lcom/android/server/appop/AppOpsService$PackageVerificationResult;->bypass:Landroid/app/AppOpsManager$RestrictionBypass;

    const/16 v17, 0x1

    move-object/from16 v1, p0

    move v2, v14

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object v0, v8

    .end local v8    # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .local v0, "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    move/from16 v8, v17

    invoke-direct/range {v1 .. v8}, Lcom/android/server/appop/AppOpsService;->getOpLocked(IILjava/lang/String;Ljava/lang/String;ZLandroid/app/AppOpsManager$RestrictionBypass;Z)Lcom/android/server/appop/AppOpsService$Op;

    move-result-object v1

    .line 2780
    .local v1, "op":Lcom/android/server/appop/AppOpsService$Op;
    if-eqz v1, :cond_8

    .line 2781
    invoke-static {v1}, Lcom/android/server/appop/AppOpsService$Op;->access$400(Lcom/android/server/appop/AppOpsService$Op;)I

    move-result v2

    if-eq v2, v12, :cond_8

    .line 2782
    invoke-static {v1}, Lcom/android/server/appop/AppOpsService$Op;->access$400(Lcom/android/server/appop/AppOpsService$Op;)I

    move-result v2

    move/from16 v16, v2

    .line 2783
    invoke-static {v1, v12}, Lcom/android/server/appop/AppOpsService$Op;->access$402(Lcom/android/server/appop/AppOpsService$Op;I)I

    .line 2784
    if-eqz v0, :cond_0

    .line 2785
    iget-object v2, v9, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Lcom/android/server/appop/AppOpsService$UidState;->evalForegroundOps(Landroid/util/SparseArray;)V

    .line 2787
    :cond_0
    iget-object v2, v9, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v2, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    .line 2788
    .local v2, "cbs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    if-eqz v2, :cond_2

    .line 2789
    if-nez v13, :cond_1

    .line 2790
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    move-object v13, v3

    .line 2792
    :cond_1
    invoke-virtual {v13, v2}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 2794
    :cond_2
    iget-object v3, v9, Lcom/android/server/appop/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v3, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArraySet;

    move-object v2, v3

    .line 2795
    if-eqz v2, :cond_4

    .line 2796
    if-nez v13, :cond_3

    .line 2797
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    move-object v13, v3

    .line 2799
    :cond_3
    invoke-virtual {v13, v2}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 2801
    :cond_4
    if-eqz v13, :cond_5

    if-eqz p5, :cond_5

    .line 2802
    iget-object v3, v9, Lcom/android/server/appop/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-interface/range {p5 .. p5}, Lcom/android/internal/app/IAppOpsCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v13, v3}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 2804
    :cond_5
    iget v3, v1, Lcom/android/server/appop/AppOpsService$Op;->op:I

    invoke-static {v3}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v3

    if-ne v12, v3, :cond_6

    .line 2807
    invoke-direct {v9, v1, v10, v11}, Lcom/android/server/appop/AppOpsService;->pruneOpLocked(Lcom/android/server/appop/AppOpsService$Op;ILjava/lang/String;)V

    .line 2809
    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/android/server/appop/AppOpsService;->scheduleFastWriteLocked()V

    .line 2810
    const/4 v3, 0x2

    if-eq v12, v3, :cond_8

    .line 2811
    const/4 v3, 0x1

    if-ne v12, v3, :cond_7

    goto :goto_0

    :cond_7
    const/4 v3, 0x0

    :goto_0
    invoke-direct {v9, v14, v3, v10}, Lcom/android/server/appop/AppOpsService;->updateStartedOpModeForUidLocked(IZI)V

    .line 2815
    .end local v0    # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .end local v1    # "op":Lcom/android/server/appop/AppOpsService$Op;
    .end local v2    # "cbs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    :cond_8
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2816
    if-eqz v13, :cond_9

    .line 2817
    iget-object v0, v9, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda6;->INSTANCE:Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda6;

    .line 2819
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 2817
    move-object/from16 v2, p0

    move-object v3, v13

    move-object/from16 v6, p3

    invoke-static/range {v1 .. v6}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuintConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2822
    :cond_9
    move-object/from16 v1, p0

    move v2, v14

    move/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, v16

    invoke-direct/range {v1 .. v6}, Lcom/android/server/appop/AppOpsService;->notifyOpChangedSync(IILjava/lang/String;II)V

    .line 2823
    return-void

    .line 2815
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 2771
    .end local v15    # "pvr":Lcom/android/server/appop/AppOpsService$PackageVerificationResult;
    .end local v16    # "previousMode":I
    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v0, v1

    .line 2772
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v1, "AppOps"

    const-string v2, "Cannot setMode"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2773
    return-void
.end method

.method private setUidMode(IIILcom/android/internal/app/IAppOpsCallback;)V
    .locals 9
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "mode"    # I
    .param p4, "permissionPolicyCallback"    # Lcom/android/internal/app/IAppOpsCallback;

    .line 2508
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-direct {p0, v0, v1, p2}, Lcom/android/server/appop/AppOpsService;->enforceManageAppOpsModes(III)V

    .line 2509
    invoke-direct {p0, p1}, Lcom/android/server/appop/AppOpsService;->verifyIncomingOp(I)V

    .line 2510
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result p1

    .line 2512
    if-nez p4, :cond_0

    .line 2513
    invoke-direct {p0, p2, p1, p3}, Lcom/android/server/appop/AppOpsService;->updatePermissionRevokedCompat(III)V

    .line 2517
    :cond_0
    monitor-enter p0

    .line 2518
    :try_start_0
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v0

    .line 2520
    .local v0, "defaultMode":I
    const/4 v1, 0x0

    invoke-direct {p0, p2, v1}, Lcom/android/server/appop/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/appop/AppOpsService$UidState;

    move-result-object v2

    .line 2521
    .local v2, "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    if-nez v2, :cond_2

    .line 2522
    if-ne p3, v0, :cond_1

    .line 2523
    monitor-exit p0

    return-void

    .line 2525
    :cond_1
    const/4 v3, 0x3

    .line 2526
    .local v3, "previousMode":I
    new-instance v4, Lcom/android/server/appop/AppOpsService$UidState;

    invoke-direct {v4, p0, p2}, Lcom/android/server/appop/AppOpsService$UidState;-><init>(Lcom/android/server/appop/AppOpsService;I)V

    move-object v2, v4

    .line 2527
    new-instance v4, Landroid/util/SparseIntArray;

    invoke-direct {v4}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v4, v2, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    .line 2528
    iget-object v4, v2, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v4, p1, p3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2529
    iget-object v4, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v4, p2, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2530
    invoke-direct {p0}, Lcom/android/server/appop/AppOpsService;->scheduleWriteLocked()V

    move v8, v3

    goto :goto_1

    .line 2531
    .end local v3    # "previousMode":I
    :cond_2
    iget-object v3, v2, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    if-nez v3, :cond_4

    .line 2532
    const/4 v3, 0x3

    .line 2533
    .restart local v3    # "previousMode":I
    if-eq p3, v0, :cond_3

    .line 2534
    new-instance v4, Landroid/util/SparseIntArray;

    invoke-direct {v4}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v4, v2, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    .line 2535
    iget-object v4, v2, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v4, p1, p3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2536
    invoke-direct {p0}, Lcom/android/server/appop/AppOpsService;->scheduleWriteLocked()V

    .line 2553
    :cond_3
    move v8, v3

    goto :goto_1

    .line 2539
    .end local v3    # "previousMode":I
    :cond_4
    iget-object v3, v2, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v3

    if-ltz v3, :cond_5

    iget-object v3, v2, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    if-ne v3, p3, :cond_5

    .line 2540
    monitor-exit p0

    return-void

    .line 2542
    :cond_5
    iget-object v3, v2, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    .line 2543
    .restart local v3    # "previousMode":I
    if-ne p3, v0, :cond_6

    .line 2544
    iget-object v4, v2, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 2545
    iget-object v4, v2, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    if-gtz v4, :cond_7

    .line 2546
    const/4 v4, 0x0

    iput-object v4, v2, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    goto :goto_0

    .line 2549
    :cond_6
    iget-object v4, v2, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v4, p1, p3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2551
    :cond_7
    :goto_0
    invoke-direct {p0}, Lcom/android/server/appop/AppOpsService;->scheduleWriteLocked()V

    move v8, v3

    .line 2553
    .end local v3    # "previousMode":I
    .local v8, "previousMode":I
    :goto_1
    iget-object v3, p0, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v2, v3}, Lcom/android/server/appop/AppOpsService$UidState;->evalForegroundOps(Landroid/util/SparseArray;)V

    .line 2554
    const/4 v3, 0x2

    if-eq p3, v3, :cond_9

    if-eq p3, v8, :cond_9

    .line 2555
    const/4 v3, 0x1

    if-ne p3, v3, :cond_8

    goto :goto_2

    :cond_8
    move v3, v1

    :goto_2
    invoke-direct {p0, p1, v3, p2}, Lcom/android/server/appop/AppOpsService;->updateStartedOpModeForUidLocked(IZI)V

    .line 2557
    .end local v0    # "defaultMode":I
    .end local v2    # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    :cond_9
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2559
    invoke-direct {p0, p1, p2, v1, p4}, Lcom/android/server/appop/AppOpsService;->notifyOpChangedForAllPkgsInUid(IIZLcom/android/internal/app/IAppOpsCallback;)V

    .line 2560
    const/4 v5, 0x0

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v6, p3

    move v7, v8

    invoke-direct/range {v2 .. v7}, Lcom/android/server/appop/AppOpsService;->notifyOpChangedSync(IILjava/lang/String;II)V

    .line 2561
    return-void

    .line 2557
    .end local v8    # "previousMode":I
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private setUserRestrictionNoCheck(IZLandroid/os/IBinder;ILandroid/os/PackageTagsList;)V
    .locals 6
    .param p1, "code"    # I
    .param p2, "restricted"    # Z
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "userHandle"    # I
    .param p5, "excludedPackageTags"    # Landroid/os/PackageTagsList;

    .line 6497
    monitor-enter p0

    .line 6498
    :try_start_0
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v0, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6500
    .local v0, "restrictionState":Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;
    if-nez v0, :cond_0

    .line 6502
    :try_start_1
    new-instance v1, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;

    invoke-direct {v1, p0, p3}, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;-><init>(Lcom/android/server/appop/AppOpsService;Landroid/os/IBinder;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v1

    .line 6505
    nop

    .line 6506
    :try_start_2
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v1, p3, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 6503
    :catch_0
    move-exception v1

    .line 6504
    .local v1, "e":Landroid/os/RemoteException;
    monitor-exit p0

    return-void

    .line 6509
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    invoke-virtual {v0, p1, p2, p5, p4}, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->setRestriction(IZLandroid/os/PackageTagsList;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6511
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    sget-object v2, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda9;->INSTANCE:Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda9;

    .line 6512
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, -0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 6511
    invoke-static {v2, p0, v3, v4}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 6513
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    sget-object v2, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda5;->INSTANCE:Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda5;

    .line 6514
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 6515
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 6513
    invoke-static {v2, p0, v3, v4, v5}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 6518
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->isDefault()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6519
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v1, p3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6520
    invoke-virtual {v0}, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->destroy()V

    .line 6522
    .end local v0    # "restrictionState":Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;
    :cond_2
    monitor-exit p0

    .line 6523
    return-void

    .line 6522
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private shouldDeferResetOpToDpm(I)Z
    .locals 1
    .param p1, "op"    # I

    .line 3058
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->dpmi:Landroid/app/admin/DevicePolicyManagerInternal;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManagerInternal;->supportsResetOp(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private shouldStartForMode(IZ)Z
    .locals 1
    .param p1, "mode"    # I
    .param p2, "startIfModeDefault"    # Z

    .line 3921
    if-eqz p1, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    if-eqz p2, :cond_0

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

.method private startOperationImpl(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZII)Landroid/app/SyncNotedAppOp;
    .locals 18
    .param p1, "clientId"    # Landroid/os/IBinder;
    .param p2, "code"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "attributionTag"    # Ljava/lang/String;
    .param p6, "startIfModeDefault"    # Z
    .param p7, "shouldCollectAsyncNotedOp"    # Z
    .param p8, "message"    # Ljava/lang/String;
    .param p9, "shouldCollectMessage"    # Z
    .param p10, "attributionFlags"    # I
    .param p11, "attributionChainId"    # I

    .line 3800
    move-object/from16 v15, p0

    move/from16 v14, p2

    move/from16 v13, p3

    move-object/from16 v12, p4

    move-object/from16 v11, p5

    invoke-direct {v15, v13}, Lcom/android/server/appop/AppOpsService;->verifyIncomingUid(I)V

    .line 3801
    invoke-direct {v15, v14}, Lcom/android/server/appop/AppOpsService;->verifyIncomingOp(I)V

    .line 3802
    invoke-static/range {p3 .. p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-direct {v15, v12, v0}, Lcom/android/server/appop/AppOpsService;->verifyIncomingPackage(Ljava/lang/String;I)V

    .line 3804
    invoke-static/range {p3 .. p4}, Landroid/app/AppOpsManager;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 3805
    .local v17, "resolvedPackageName":Ljava/lang/String;
    if-nez v17, :cond_0

    .line 3806
    new-instance v0, Landroid/app/SyncNotedAppOp;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v14, v11, v12}, Landroid/app/SyncNotedAppOp;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 3815
    :cond_0
    const/16 v0, 0x66

    if-ne v14, v0, :cond_1

    .line 3816
    const/16 v0, 0x1b

    invoke-virtual {v15, v0, v13, v12}, Lcom/android/server/appop/AppOpsService;->checkOperation(IILjava/lang/String;)I

    move-result v0

    .line 3817
    .local v0, "result":I
    if-eqz v0, :cond_1

    .line 3818
    new-instance v1, Landroid/app/SyncNotedAppOp;

    invoke-direct {v1, v0, v14, v11, v12}, Landroid/app/SyncNotedAppOp;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 3821
    .end local v0    # "result":I
    :cond_1
    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v10, p6

    move/from16 v11, p7

    move-object/from16 v12, p8

    move/from16 v13, p9

    move/from16 v14, p10

    move/from16 v15, p11

    invoke-direct/range {v0 .. v16}, Lcom/android/server/appop/AppOpsService;->startOperationUnchecked(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZZLjava/lang/String;ZIIZ)Landroid/app/SyncNotedAppOp;

    move-result-object v0

    return-object v0
.end method

.method private startOperationUnchecked(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZZLjava/lang/String;ZIIZ)Landroid/app/SyncNotedAppOp;
    .locals 28
    .param p1, "clientId"    # Landroid/os/IBinder;
    .param p2, "code"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "attributionTag"    # Ljava/lang/String;
    .param p6, "proxyUid"    # I
    .param p7, "proxyPackageName"    # Ljava/lang/String;
    .param p8, "proxyAttributionTag"    # Ljava/lang/String;
    .param p9, "flags"    # I
    .param p10, "startIfModeDefault"    # Z
    .param p11, "shouldCollectAsyncNotedOp"    # Z
    .param p12, "message"    # Ljava/lang/String;
    .param p13, "shouldCollectMessage"    # Z
    .param p14, "attributionFlags"    # I
    .param p15, "attributionChainId"    # I
    .param p16, "dryRun"    # Z

    move-object/from16 v9, p0

    move/from16 v10, p2

    move/from16 v11, p3

    move-object/from16 v12, p4

    move-object/from16 v1, p5

    move/from16 v8, p9

    move/from16 v15, p10

    .line 3932
    const/4 v13, 0x2

    move-object/from16 v14, p7

    :try_start_0
    invoke-direct {v9, v11, v12, v1, v14}, Lcom/android/server/appop/AppOpsService;->verifyAndGetBypass(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/appop/AppOpsService$PackageVerificationResult;

    move-result-object v0

    move-object v7, v0

    .line 3933
    .local v7, "pvr":Lcom/android/server/appop/AppOpsService$PackageVerificationResult;
    iget-boolean v0, v7, Lcom/android/server/appop/AppOpsService$PackageVerificationResult;->isAttributionTagValid:Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_3

    if-nez v0, :cond_0

    .line 3934
    const/4 v0, 0x0

    move-object v6, v0

    .end local p5    # "attributionTag":Ljava/lang/String;
    .local v0, "attributionTag":Ljava/lang/String;
    goto :goto_0

    .line 3933
    .end local v0    # "attributionTag":Ljava/lang/String;
    .restart local p5    # "attributionTag":Ljava/lang/String;
    :cond_0
    move-object v6, v1

    .line 3940
    .end local p5    # "attributionTag":Ljava/lang/String;
    .local v6, "attributionTag":Ljava/lang/String;
    :goto_0
    nop

    .line 3942
    const/16 v16, 0x0

    .line 3943
    .local v16, "isRestricted":Z
    monitor-enter p0

    .line 3944
    :try_start_1
    iget-boolean v5, v7, Lcom/android/server/appop/AppOpsService$PackageVerificationResult;->isAttributionTagValid:Z

    iget-object v0, v7, Lcom/android/server/appop/AppOpsService$PackageVerificationResult;->bypass:Landroid/app/AppOpsManager$RestrictionBypass;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_11

    const/16 v17, 0x1

    move-object/from16 v1, p0

    move/from16 v2, p3

    move-object/from16 v3, p4

    move-object v4, v6

    move-object/from16 v22, v6

    .end local v6    # "attributionTag":Ljava/lang/String;
    .local v22, "attributionTag":Ljava/lang/String;
    move-object v6, v0

    move-object/from16 v23, v7

    .end local v7    # "pvr":Lcom/android/server/appop/AppOpsService$PackageVerificationResult;
    .local v23, "pvr":Lcom/android/server/appop/AppOpsService$PackageVerificationResult;
    move/from16 v7, v17

    :try_start_2
    invoke-direct/range {v1 .. v7}, Lcom/android/server/appop/AppOpsService;->getOpsLocked(ILjava/lang/String;Ljava/lang/String;ZLandroid/app/AppOpsManager$RestrictionBypass;Z)Lcom/android/server/appop/AppOpsService$Ops;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_10

    move-object v7, v0

    .line 3946
    .local v7, "ops":Lcom/android/server/appop/AppOpsService$Ops;
    if-nez v7, :cond_2

    .line 3947
    if-nez p16, :cond_1

    .line 3948
    const/4 v0, 0x1

    move-object/from16 v1, p0

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, v22

    move/from16 v6, p9

    move-object/from16 v24, v7

    .end local v7    # "ops":Lcom/android/server/appop/AppOpsService$Ops;
    .local v24, "ops":Lcom/android/server/appop/AppOpsService$Ops;
    move v7, v0

    :try_start_3
    invoke-direct/range {v1 .. v7}, Lcom/android/server/appop/AppOpsService;->scheduleOpStartedIfNeededLocked(IILjava/lang/String;Ljava/lang/String;II)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 4016
    .end local v24    # "ops":Lcom/android/server/appop/AppOpsService$Ops;
    :catchall_0
    move-exception v0

    move-object/from16 v15, v22

    move-object/from16 v22, v23

    goto/16 :goto_c

    .line 3947
    .restart local v7    # "ops":Lcom/android/server/appop/AppOpsService$Ops;
    :cond_1
    move-object/from16 v24, v7

    .line 3954
    .end local v7    # "ops":Lcom/android/server/appop/AppOpsService$Ops;
    .restart local v24    # "ops":Lcom/android/server/appop/AppOpsService$Ops;
    :goto_1
    :try_start_4
    new-instance v0, Landroid/app/SyncNotedAppOp;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object/from16 v7, v22

    .end local v22    # "attributionTag":Ljava/lang/String;
    .local v7, "attributionTag":Ljava/lang/String;
    :try_start_5
    invoke-direct {v0, v13, v10, v7, v12}, Landroid/app/SyncNotedAppOp;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    return-object v0

    .line 4016
    .end local v24    # "ops":Lcom/android/server/appop/AppOpsService$Ops;
    :catchall_1
    move-exception v0

    move-object v15, v7

    move-object/from16 v22, v23

    goto/16 :goto_c

    .end local v7    # "attributionTag":Ljava/lang/String;
    .restart local v22    # "attributionTag":Ljava/lang/String;
    :catchall_2
    move-exception v0

    move-object/from16 v15, v22

    move-object/from16 v22, v23

    .end local v22    # "attributionTag":Ljava/lang/String;
    .restart local v7    # "attributionTag":Ljava/lang/String;
    goto/16 :goto_c

    .line 3957
    .local v7, "ops":Lcom/android/server/appop/AppOpsService$Ops;
    .restart local v22    # "attributionTag":Ljava/lang/String;
    :cond_2
    move-object/from16 v24, v7

    move-object/from16 v7, v22

    .end local v22    # "attributionTag":Ljava/lang/String;
    .local v7, "attributionTag":Ljava/lang/String;
    .restart local v24    # "ops":Lcom/android/server/appop/AppOpsService$Ops;
    const/4 v0, 0x1

    move-object/from16 v13, v24

    .end local v24    # "ops":Lcom/android/server/appop/AppOpsService$Ops;
    .local v13, "ops":Lcom/android/server/appop/AppOpsService$Ops;
    :try_start_6
    invoke-direct {v9, v13, v10, v11, v0}, Lcom/android/server/appop/AppOpsService;->getOpLocked(Lcom/android/server/appop/AppOpsService$Ops;IIZ)Lcom/android/server/appop/AppOpsService$Op;

    move-result-object v1

    move-object v6, v1

    .line 3958
    .local v6, "op":Lcom/android/server/appop/AppOpsService$Op;
    invoke-static {v6, v6, v7}, Lcom/android/server/appop/AppOpsService$Op;->access$1500(Lcom/android/server/appop/AppOpsService$Op;Lcom/android/server/appop/AppOpsService$Op;Ljava/lang/String;)Lcom/android/server/appop/AppOpsService$AttributedOp;

    move-result-object v1

    move-object v5, v1

    .line 3959
    .local v5, "attributedOp":Lcom/android/server/appop/AppOpsService$AttributedOp;
    iget-object v1, v13, Lcom/android/server/appop/AppOpsService$Ops;->uidState:Lcom/android/server/appop/AppOpsService$UidState;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_f

    move-object v4, v1

    .line 3960
    .local v4, "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    move-object/from16 v3, v23

    .end local v23    # "pvr":Lcom/android/server/appop/AppOpsService$PackageVerificationResult;
    .local v3, "pvr":Lcom/android/server/appop/AppOpsService$PackageVerificationResult;
    :try_start_7
    iget-object v2, v3, Lcom/android/server/appop/AppOpsService$PackageVerificationResult;->bypass:Landroid/app/AppOpsManager$RestrictionBypass;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_e

    move-object/from16 v1, p0

    move-object/from16 v17, v2

    move/from16 v2, p3

    move-object/from16 v22, v3

    .end local v3    # "pvr":Lcom/android/server/appop/AppOpsService$PackageVerificationResult;
    .local v22, "pvr":Lcom/android/server/appop/AppOpsService$PackageVerificationResult;
    move/from16 v3, p2

    move-object v14, v4

    .end local v4    # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .local v14, "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    move-object/from16 v4, p4

    move-object v11, v5

    .end local v5    # "attributedOp":Lcom/android/server/appop/AppOpsService$AttributedOp;
    .local v11, "attributedOp":Lcom/android/server/appop/AppOpsService$AttributedOp;
    move-object v5, v7

    move-object/from16 v23, v6

    .end local v6    # "op":Lcom/android/server/appop/AppOpsService$Op;
    .local v23, "op":Lcom/android/server/appop/AppOpsService$Op;
    move-object/from16 v6, v17

    :try_start_8
    invoke-direct/range {v1 .. v6}, Lcom/android/server/appop/AppOpsService;->isOpRestrictedLocked(IILjava/lang/String;Ljava/lang/String;Landroid/app/AppOpsManager$RestrictionBypass;)Z

    move-result v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_d

    move/from16 v24, v1

    .line 3961
    .end local v16    # "isRestricted":Z
    .local v24, "isRestricted":Z
    :try_start_9
    invoke-static/range {p2 .. p2}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v1

    move v6, v1

    .line 3964
    .local v6, "switchCode":I
    iget-object v1, v14, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_c

    if-eqz v1, :cond_5

    :try_start_a
    iget-object v1, v14, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v6}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_5

    .line 3965
    iget-object v1, v14, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v6}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    invoke-virtual {v14, v10, v1}, Lcom/android/server/appop/AppOpsService$UidState;->evalMode(II)I

    move-result v1

    move v5, v1

    .line 3966
    .local v5, "uidMode":I
    invoke-direct {v9, v5, v15}, Lcom/android/server/appop/AppOpsService;->shouldStartForMode(IZ)Z

    move-result v1

    if-nez v1, :cond_4

    .line 3972
    if-nez p16, :cond_3

    .line 3973
    iget v0, v14, Lcom/android/server/appop/AppOpsService$UidState;->state:I

    invoke-virtual {v11, v0, v8}, Lcom/android/server/appop/AppOpsService$AttributedOp;->rejected(II)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 3974
    move-object/from16 v1, p0

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move v0, v5

    .end local v5    # "uidMode":I
    .local v0, "uidMode":I
    move-object v5, v7

    move-object/from16 v17, v11

    move v11, v6

    .end local v6    # "switchCode":I
    .local v11, "switchCode":I
    .local v17, "attributedOp":Lcom/android/server/appop/AppOpsService$AttributedOp;
    move/from16 v6, p9

    move-object v8, v7

    .end local v7    # "attributionTag":Ljava/lang/String;
    .local v8, "attributionTag":Ljava/lang/String;
    move v7, v0

    :try_start_b
    invoke-direct/range {v1 .. v7}, Lcom/android/server/appop/AppOpsService;->scheduleOpStartedIfNeededLocked(IILjava/lang/String;Ljava/lang/String;II)V

    goto :goto_2

    .line 3972
    .end local v0    # "uidMode":I
    .end local v8    # "attributionTag":Ljava/lang/String;
    .end local v17    # "attributedOp":Lcom/android/server/appop/AppOpsService$AttributedOp;
    .restart local v5    # "uidMode":I
    .restart local v6    # "switchCode":I
    .restart local v7    # "attributionTag":Ljava/lang/String;
    .local v11, "attributedOp":Lcom/android/server/appop/AppOpsService$AttributedOp;
    :cond_3
    move v0, v5

    move-object v8, v7

    move-object/from16 v17, v11

    move v11, v6

    .line 3977
    .end local v5    # "uidMode":I
    .end local v6    # "switchCode":I
    .end local v7    # "attributionTag":Ljava/lang/String;
    .restart local v0    # "uidMode":I
    .restart local v8    # "attributionTag":Ljava/lang/String;
    .local v11, "switchCode":I
    .restart local v17    # "attributedOp":Lcom/android/server/appop/AppOpsService$AttributedOp;
    :goto_2
    new-instance v1, Landroid/app/SyncNotedAppOp;

    invoke-direct {v1, v0, v10, v8, v12}, Landroid/app/SyncNotedAppOp;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    monitor-exit p0

    return-object v1

    .line 3966
    .end local v0    # "uidMode":I
    .end local v8    # "attributionTag":Ljava/lang/String;
    .end local v17    # "attributedOp":Lcom/android/server/appop/AppOpsService$AttributedOp;
    .restart local v5    # "uidMode":I
    .restart local v6    # "switchCode":I
    .restart local v7    # "attributionTag":Ljava/lang/String;
    .local v11, "attributedOp":Lcom/android/server/appop/AppOpsService$AttributedOp;
    :cond_4
    move v1, v5

    move-object v8, v7

    move-object/from16 v17, v11

    move v11, v6

    .line 3979
    .end local v5    # "uidMode":I
    .end local v6    # "switchCode":I
    .end local v7    # "attributionTag":Ljava/lang/String;
    .restart local v8    # "attributionTag":Ljava/lang/String;
    .local v11, "switchCode":I
    .restart local v17    # "attributedOp":Lcom/android/server/appop/AppOpsService$AttributedOp;
    move-object/from16 v26, v17

    move/from16 v8, p9

    goto/16 :goto_6

    .line 4016
    .end local v8    # "attributionTag":Ljava/lang/String;
    .end local v11    # "switchCode":I
    .end local v13    # "ops":Lcom/android/server/appop/AppOpsService$Ops;
    .end local v14    # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .end local v17    # "attributedOp":Lcom/android/server/appop/AppOpsService$AttributedOp;
    .end local v23    # "op":Lcom/android/server/appop/AppOpsService$Op;
    .restart local v7    # "attributionTag":Ljava/lang/String;
    :catchall_3
    move-exception v0

    move-object v15, v7

    move/from16 v16, v24

    .end local v7    # "attributionTag":Ljava/lang/String;
    .restart local v8    # "attributionTag":Ljava/lang/String;
    goto/16 :goto_c

    .line 3964
    .end local v8    # "attributionTag":Ljava/lang/String;
    .restart local v6    # "switchCode":I
    .restart local v7    # "attributionTag":Ljava/lang/String;
    .local v11, "attributedOp":Lcom/android/server/appop/AppOpsService$AttributedOp;
    .restart local v13    # "ops":Lcom/android/server/appop/AppOpsService$Ops;
    .restart local v14    # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .restart local v23    # "op":Lcom/android/server/appop/AppOpsService$Op;
    :cond_5
    move-object v8, v7

    move-object/from16 v17, v11

    move v11, v6

    .line 3980
    .end local v6    # "switchCode":I
    .end local v7    # "attributionTag":Ljava/lang/String;
    .restart local v8    # "attributionTag":Ljava/lang/String;
    .local v11, "switchCode":I
    .restart local v17    # "attributedOp":Lcom/android/server/appop/AppOpsService$AttributedOp;
    if-eq v11, v10, :cond_6

    move/from16 v7, p3

    move-object/from16 v6, v17

    .end local v17    # "attributedOp":Lcom/android/server/appop/AppOpsService$AttributedOp;
    .local v6, "attributedOp":Lcom/android/server/appop/AppOpsService$AttributedOp;
    invoke-direct {v9, v13, v11, v7, v0}, Lcom/android/server/appop/AppOpsService;->getOpLocked(Lcom/android/server/appop/AppOpsService$Ops;IIZ)Lcom/android/server/appop/AppOpsService$Op;

    move-result-object v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    goto :goto_3

    .line 4016
    .end local v6    # "attributedOp":Lcom/android/server/appop/AppOpsService$AttributedOp;
    .end local v11    # "switchCode":I
    .end local v13    # "ops":Lcom/android/server/appop/AppOpsService$Ops;
    .end local v14    # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .end local v23    # "op":Lcom/android/server/appop/AppOpsService$Op;
    :catchall_4
    move-exception v0

    move-object v15, v8

    move/from16 v16, v24

    goto/16 :goto_c

    .line 3981
    .restart local v11    # "switchCode":I
    .restart local v13    # "ops":Lcom/android/server/appop/AppOpsService$Ops;
    .restart local v14    # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .restart local v17    # "attributedOp":Lcom/android/server/appop/AppOpsService$AttributedOp;
    .restart local v23    # "op":Lcom/android/server/appop/AppOpsService$Op;
    :cond_6
    move/from16 v7, p3

    move-object/from16 v6, v17

    .end local v17    # "attributedOp":Lcom/android/server/appop/AppOpsService$AttributedOp;
    .restart local v6    # "attributedOp":Lcom/android/server/appop/AppOpsService$AttributedOp;
    move-object/from16 v1, v23

    :goto_3
    move-object/from16 v16, v1

    .line 3982
    .local v16, "switchOp":Lcom/android/server/appop/AppOpsService$Op;
    :try_start_c
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/appop/AppOpsService$Op;->evalMode()I

    move-result v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_b

    move v5, v1

    .line 3983
    .local v5, "mode":I
    if-eqz v5, :cond_a

    if-eqz v15, :cond_8

    const/4 v1, 0x3

    if-eq v5, v1, :cond_7

    goto :goto_4

    :cond_7
    move-object/from16 v26, v6

    move-object v7, v8

    move/from16 v8, p9

    goto/16 :goto_6

    .line 3988
    :cond_8
    :goto_4
    if-nez p16, :cond_9

    .line 3989
    :try_start_d
    iget v0, v14, Lcom/android/server/appop/AppOpsService$UidState;->state:I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    move-object v4, v8

    move/from16 v8, p9

    .end local v8    # "attributionTag":Ljava/lang/String;
    .local v4, "attributionTag":Ljava/lang/String;
    :try_start_e
    invoke-virtual {v6, v0, v8}, Lcom/android/server/appop/AppOpsService$AttributedOp;->rejected(II)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    .line 3990
    move-object/from16 v1, p0

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v25, v4

    .end local v4    # "attributionTag":Ljava/lang/String;
    .local v25, "attributionTag":Ljava/lang/String;
    move-object/from16 v4, p4

    move v0, v5

    .end local v5    # "mode":I
    .local v0, "mode":I
    move-object/from16 v5, v25

    move-object/from16 v26, v6

    .end local v6    # "attributedOp":Lcom/android/server/appop/AppOpsService$AttributedOp;
    .local v26, "attributedOp":Lcom/android/server/appop/AppOpsService$AttributedOp;
    move/from16 v6, p9

    move v7, v0

    :try_start_f
    invoke-direct/range {v1 .. v7}, Lcom/android/server/appop/AppOpsService;->scheduleOpStartedIfNeededLocked(IILjava/lang/String;Ljava/lang/String;II)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    goto :goto_5

    .line 4016
    .end local v0    # "mode":I
    .end local v11    # "switchCode":I
    .end local v13    # "ops":Lcom/android/server/appop/AppOpsService$Ops;
    .end local v14    # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .end local v16    # "switchOp":Lcom/android/server/appop/AppOpsService$Op;
    .end local v23    # "op":Lcom/android/server/appop/AppOpsService$Op;
    .end local v26    # "attributedOp":Lcom/android/server/appop/AppOpsService$AttributedOp;
    :catchall_5
    move-exception v0

    move/from16 v16, v24

    move-object/from16 v15, v25

    goto/16 :goto_c

    .end local v25    # "attributionTag":Ljava/lang/String;
    .restart local v4    # "attributionTag":Ljava/lang/String;
    :catchall_6
    move-exception v0

    move-object v15, v4

    move/from16 v16, v24

    .end local v4    # "attributionTag":Ljava/lang/String;
    .restart local v25    # "attributionTag":Ljava/lang/String;
    goto/16 :goto_c

    .end local v25    # "attributionTag":Ljava/lang/String;
    .restart local v8    # "attributionTag":Ljava/lang/String;
    :catchall_7
    move-exception v0

    move-object/from16 v25, v8

    move/from16 v8, p9

    move/from16 v16, v24

    move-object/from16 v15, v25

    .end local v8    # "attributionTag":Ljava/lang/String;
    .restart local v25    # "attributionTag":Ljava/lang/String;
    goto/16 :goto_c

    .line 3988
    .end local v25    # "attributionTag":Ljava/lang/String;
    .restart local v5    # "mode":I
    .restart local v6    # "attributedOp":Lcom/android/server/appop/AppOpsService$AttributedOp;
    .restart local v8    # "attributionTag":Ljava/lang/String;
    .restart local v11    # "switchCode":I
    .restart local v13    # "ops":Lcom/android/server/appop/AppOpsService$Ops;
    .restart local v14    # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .restart local v16    # "switchOp":Lcom/android/server/appop/AppOpsService$Op;
    .restart local v23    # "op":Lcom/android/server/appop/AppOpsService$Op;
    :cond_9
    move v0, v5

    move-object/from16 v26, v6

    move-object/from16 v25, v8

    move/from16 v8, p9

    .line 3993
    .end local v5    # "mode":I
    .end local v6    # "attributedOp":Lcom/android/server/appop/AppOpsService$AttributedOp;
    .end local v8    # "attributionTag":Ljava/lang/String;
    .restart local v0    # "mode":I
    .restart local v25    # "attributionTag":Ljava/lang/String;
    .restart local v26    # "attributedOp":Lcom/android/server/appop/AppOpsService$AttributedOp;
    :goto_5
    :try_start_10
    new-instance v1, Landroid/app/SyncNotedAppOp;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_8

    move-object/from16 v7, v25

    .end local v25    # "attributionTag":Ljava/lang/String;
    .restart local v7    # "attributionTag":Ljava/lang/String;
    :try_start_11
    invoke-direct {v1, v0, v10, v7, v12}, Landroid/app/SyncNotedAppOp;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_9

    return-object v1

    .line 4016
    .end local v0    # "mode":I
    .end local v7    # "attributionTag":Ljava/lang/String;
    .end local v11    # "switchCode":I
    .end local v13    # "ops":Lcom/android/server/appop/AppOpsService$Ops;
    .end local v14    # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .end local v16    # "switchOp":Lcom/android/server/appop/AppOpsService$Op;
    .end local v23    # "op":Lcom/android/server/appop/AppOpsService$Op;
    .end local v26    # "attributedOp":Lcom/android/server/appop/AppOpsService$AttributedOp;
    .restart local v25    # "attributionTag":Ljava/lang/String;
    :catchall_8
    move-exception v0

    move/from16 v16, v24

    move-object/from16 v15, v25

    .end local v25    # "attributionTag":Ljava/lang/String;
    .restart local v7    # "attributionTag":Ljava/lang/String;
    goto/16 :goto_c

    .line 3983
    .end local v7    # "attributionTag":Ljava/lang/String;
    .restart local v5    # "mode":I
    .restart local v6    # "attributedOp":Lcom/android/server/appop/AppOpsService$AttributedOp;
    .restart local v8    # "attributionTag":Ljava/lang/String;
    .restart local v11    # "switchCode":I
    .restart local v13    # "ops":Lcom/android/server/appop/AppOpsService$Ops;
    .restart local v14    # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .restart local v16    # "switchOp":Lcom/android/server/appop/AppOpsService$Op;
    .restart local v23    # "op":Lcom/android/server/appop/AppOpsService$Op;
    :cond_a
    move v1, v5

    move-object/from16 v26, v6

    move-object v7, v8

    move/from16 v8, p9

    .line 3999
    .end local v5    # "mode":I
    .end local v6    # "attributedOp":Lcom/android/server/appop/AppOpsService$AttributedOp;
    .end local v8    # "attributionTag":Ljava/lang/String;
    .end local v16    # "switchOp":Lcom/android/server/appop/AppOpsService$Op;
    .restart local v7    # "attributionTag":Ljava/lang/String;
    .restart local v26    # "attributedOp":Lcom/android/server/appop/AppOpsService$AttributedOp;
    :goto_6
    const/16 v25, 0x0

    if-nez p16, :cond_d

    .line 4001
    if-eqz v24, :cond_b

    .line 4002
    :try_start_12
    iget v1, v14, Lcom/android/server/appop/AppOpsService$UidState;->state:I
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_12} :catch_1
    .catchall {:try_start_12 .. :try_end_12} :catchall_9

    move-object/from16 v27, v13

    .end local v13    # "ops":Lcom/android/server/appop/AppOpsService$Ops;
    .local v27, "ops":Lcom/android/server/appop/AppOpsService$Ops;
    move-object/from16 v13, v26

    move-object v6, v14

    .end local v14    # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .local v6, "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    move-object/from16 v14, p1

    move/from16 v15, p6

    move-object/from16 v16, p7

    move-object/from16 v17, p8

    move/from16 v18, v1

    move/from16 v19, p9

    move/from16 v20, p14

    move/from16 v21, p15

    :try_start_13
    invoke-virtual/range {v13 .. v21}, Lcom/android/server/appop/AppOpsService$AttributedOp;->createPaused(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;IIII)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_13} :catch_0
    .catchall {:try_start_13 .. :try_end_13} :catchall_9

    goto :goto_7

    .line 4010
    :catch_0
    move-exception v0

    move-object v14, v6

    move-object v15, v7

    goto :goto_9

    .line 4016
    .end local v6    # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .end local v11    # "switchCode":I
    .end local v23    # "op":Lcom/android/server/appop/AppOpsService$Op;
    .end local v26    # "attributedOp":Lcom/android/server/appop/AppOpsService$AttributedOp;
    .end local v27    # "ops":Lcom/android/server/appop/AppOpsService$Ops;
    :catchall_9
    move-exception v0

    move-object v15, v7

    move/from16 v16, v24

    goto/16 :goto_c

    .line 4010
    .restart local v11    # "switchCode":I
    .restart local v13    # "ops":Lcom/android/server/appop/AppOpsService$Ops;
    .restart local v14    # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .restart local v23    # "op":Lcom/android/server/appop/AppOpsService$Op;
    .restart local v26    # "attributedOp":Lcom/android/server/appop/AppOpsService$AttributedOp;
    :catch_1
    move-exception v0

    move-object/from16 v27, v13

    move-object v15, v7

    .end local v13    # "ops":Lcom/android/server/appop/AppOpsService$Ops;
    .end local v14    # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .restart local v6    # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .restart local v27    # "ops":Lcom/android/server/appop/AppOpsService$Ops;
    goto :goto_9

    .line 4006
    .end local v6    # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .end local v27    # "ops":Lcom/android/server/appop/AppOpsService$Ops;
    .restart local v13    # "ops":Lcom/android/server/appop/AppOpsService$Ops;
    .restart local v14    # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    :cond_b
    move-object/from16 v27, v13

    move-object v6, v14

    .end local v13    # "ops":Lcom/android/server/appop/AppOpsService$Ops;
    .end local v14    # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .restart local v6    # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .restart local v27    # "ops":Lcom/android/server/appop/AppOpsService$Ops;
    :try_start_14
    iget v1, v6, Lcom/android/server/appop/AppOpsService$UidState;->state:I

    move-object/from16 v13, v26

    move-object/from16 v14, p1

    move/from16 v15, p6

    move-object/from16 v16, p7

    move-object/from16 v17, p8

    move/from16 v18, v1

    move/from16 v19, p9

    move/from16 v20, p14

    move/from16 v21, p15

    invoke-virtual/range {v13 .. v21}, Lcom/android/server/appop/AppOpsService$AttributedOp;->started(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;IIII)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_14} :catch_2
    .catchall {:try_start_14 .. :try_end_14} :catchall_c

    .line 4012
    :goto_7
    nop

    .line 4013
    nop

    .line 4014
    if-eqz v24, :cond_c

    move v13, v0

    goto :goto_8

    :cond_c
    move/from16 v13, v25

    .line 4013
    :goto_8
    move-object/from16 v1, p0

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object v5, v7

    move-object v14, v6

    .end local v6    # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .restart local v14    # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    move/from16 v6, p9

    move-object v15, v7

    .end local v7    # "attributionTag":Ljava/lang/String;
    .local v15, "attributionTag":Ljava/lang/String;
    move v7, v13

    :try_start_15
    invoke-direct/range {v1 .. v7}, Lcom/android/server/appop/AppOpsService;->scheduleOpStartedIfNeededLocked(IILjava/lang/String;Ljava/lang/String;II)V

    goto :goto_a

    .line 4010
    .end local v14    # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .end local v15    # "attributionTag":Ljava/lang/String;
    .restart local v6    # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .restart local v7    # "attributionTag":Ljava/lang/String;
    :catch_2
    move-exception v0

    move-object v14, v6

    move-object v15, v7

    .line 4011
    .end local v6    # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .end local v7    # "attributionTag":Ljava/lang/String;
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v14    # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .restart local v15    # "attributionTag":Ljava/lang/String;
    :goto_9
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local v15    # "attributionTag":Ljava/lang/String;
    .end local v22    # "pvr":Lcom/android/server/appop/AppOpsService$PackageVerificationResult;
    .end local v24    # "isRestricted":Z
    .end local p0    # "this":Lcom/android/server/appop/AppOpsService;
    .end local p1    # "clientId":Landroid/os/IBinder;
    .end local p2    # "code":I
    .end local p3    # "uid":I
    .end local p4    # "packageName":Ljava/lang/String;
    .end local p6    # "proxyUid":I
    .end local p7    # "proxyPackageName":Ljava/lang/String;
    .end local p8    # "proxyAttributionTag":Ljava/lang/String;
    .end local p9    # "flags":I
    .end local p10    # "startIfModeDefault":Z
    .end local p11    # "shouldCollectAsyncNotedOp":Z
    .end local p12    # "message":Ljava/lang/String;
    .end local p13    # "shouldCollectMessage":Z
    .end local p14    # "attributionFlags":I
    .end local p15    # "attributionChainId":I
    .end local p16    # "dryRun":Z
    throw v1

    .line 3999
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v27    # "ops":Lcom/android/server/appop/AppOpsService$Ops;
    .restart local v7    # "attributionTag":Ljava/lang/String;
    .restart local v13    # "ops":Lcom/android/server/appop/AppOpsService$Ops;
    .restart local v22    # "pvr":Lcom/android/server/appop/AppOpsService$PackageVerificationResult;
    .restart local v24    # "isRestricted":Z
    .restart local p0    # "this":Lcom/android/server/appop/AppOpsService;
    .restart local p1    # "clientId":Landroid/os/IBinder;
    .restart local p2    # "code":I
    .restart local p3    # "uid":I
    .restart local p4    # "packageName":Ljava/lang/String;
    .restart local p6    # "proxyUid":I
    .restart local p7    # "proxyPackageName":Ljava/lang/String;
    .restart local p8    # "proxyAttributionTag":Ljava/lang/String;
    .restart local p9    # "flags":I
    .restart local p10    # "startIfModeDefault":Z
    .restart local p11    # "shouldCollectAsyncNotedOp":Z
    .restart local p12    # "message":Ljava/lang/String;
    .restart local p13    # "shouldCollectMessage":Z
    .restart local p14    # "attributionFlags":I
    .restart local p15    # "attributionChainId":I
    .restart local p16    # "dryRun":Z
    :cond_d
    move-object v15, v7

    move-object/from16 v27, v13

    .line 4016
    .end local v7    # "attributionTag":Ljava/lang/String;
    .end local v11    # "switchCode":I
    .end local v13    # "ops":Lcom/android/server/appop/AppOpsService$Ops;
    .end local v14    # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .end local v23    # "op":Lcom/android/server/appop/AppOpsService$Op;
    .end local v26    # "attributedOp":Lcom/android/server/appop/AppOpsService$AttributedOp;
    .restart local v15    # "attributionTag":Ljava/lang/String;
    :goto_a
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_a

    .line 4018
    if-eqz p11, :cond_e

    if-nez p16, :cond_e

    if-nez v24, :cond_e

    .line 4019
    const/4 v6, 0x1

    move-object/from16 v1, p0

    move/from16 v2, p3

    move-object/from16 v3, p4

    move/from16 v4, p2

    move-object v5, v15

    move-object/from16 v7, p12

    move/from16 v8, p13

    invoke-direct/range {v1 .. v8}, Lcom/android/server/appop/AppOpsService;->collectAsyncNotedOp(ILjava/lang/String;ILjava/lang/String;ILjava/lang/String;Z)V

    .line 4023
    :cond_e
    new-instance v1, Landroid/app/SyncNotedAppOp;

    if-eqz v24, :cond_f

    goto :goto_b

    :cond_f
    move/from16 v0, v25

    :goto_b
    invoke-direct {v1, v0, v10, v15, v12}, Landroid/app/SyncNotedAppOp;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 4016
    :catchall_a
    move-exception v0

    move/from16 v16, v24

    goto :goto_c

    .end local v15    # "attributionTag":Ljava/lang/String;
    .restart local v8    # "attributionTag":Ljava/lang/String;
    :catchall_b
    move-exception v0

    move-object v15, v8

    move/from16 v16, v24

    .end local v8    # "attributionTag":Ljava/lang/String;
    .restart local v15    # "attributionTag":Ljava/lang/String;
    goto :goto_c

    .end local v15    # "attributionTag":Ljava/lang/String;
    .restart local v7    # "attributionTag":Ljava/lang/String;
    :catchall_c
    move-exception v0

    move-object v15, v7

    move/from16 v16, v24

    .end local v7    # "attributionTag":Ljava/lang/String;
    .restart local v15    # "attributionTag":Ljava/lang/String;
    goto :goto_c

    .end local v15    # "attributionTag":Ljava/lang/String;
    .end local v24    # "isRestricted":Z
    .restart local v7    # "attributionTag":Ljava/lang/String;
    .local v16, "isRestricted":Z
    :catchall_d
    move-exception v0

    move-object v15, v7

    .end local v7    # "attributionTag":Ljava/lang/String;
    .restart local v15    # "attributionTag":Ljava/lang/String;
    goto :goto_c

    .end local v15    # "attributionTag":Ljava/lang/String;
    .end local v22    # "pvr":Lcom/android/server/appop/AppOpsService$PackageVerificationResult;
    .restart local v3    # "pvr":Lcom/android/server/appop/AppOpsService$PackageVerificationResult;
    .restart local v7    # "attributionTag":Ljava/lang/String;
    :catchall_e
    move-exception v0

    move-object/from16 v22, v3

    move-object v15, v7

    .end local v3    # "pvr":Lcom/android/server/appop/AppOpsService$PackageVerificationResult;
    .end local v7    # "attributionTag":Ljava/lang/String;
    .restart local v15    # "attributionTag":Ljava/lang/String;
    .restart local v22    # "pvr":Lcom/android/server/appop/AppOpsService$PackageVerificationResult;
    goto :goto_c

    .end local v15    # "attributionTag":Ljava/lang/String;
    .end local v22    # "pvr":Lcom/android/server/appop/AppOpsService$PackageVerificationResult;
    .restart local v7    # "attributionTag":Ljava/lang/String;
    .local v23, "pvr":Lcom/android/server/appop/AppOpsService$PackageVerificationResult;
    :catchall_f
    move-exception v0

    move-object v15, v7

    move-object/from16 v22, v23

    .end local v7    # "attributionTag":Ljava/lang/String;
    .end local v23    # "pvr":Lcom/android/server/appop/AppOpsService$PackageVerificationResult;
    .restart local v15    # "attributionTag":Ljava/lang/String;
    .restart local v22    # "pvr":Lcom/android/server/appop/AppOpsService$PackageVerificationResult;
    goto :goto_c

    .end local v15    # "attributionTag":Ljava/lang/String;
    .local v22, "attributionTag":Ljava/lang/String;
    .restart local v23    # "pvr":Lcom/android/server/appop/AppOpsService$PackageVerificationResult;
    :catchall_10
    move-exception v0

    move-object/from16 v15, v22

    move-object/from16 v22, v23

    .end local v23    # "pvr":Lcom/android/server/appop/AppOpsService$PackageVerificationResult;
    .restart local v15    # "attributionTag":Ljava/lang/String;
    .local v22, "pvr":Lcom/android/server/appop/AppOpsService$PackageVerificationResult;
    goto :goto_c

    .end local v15    # "attributionTag":Ljava/lang/String;
    .end local v22    # "pvr":Lcom/android/server/appop/AppOpsService$PackageVerificationResult;
    .local v6, "attributionTag":Ljava/lang/String;
    .local v7, "pvr":Lcom/android/server/appop/AppOpsService$PackageVerificationResult;
    :catchall_11
    move-exception v0

    move-object v15, v6

    move-object/from16 v22, v7

    .end local v6    # "attributionTag":Ljava/lang/String;
    .end local v7    # "pvr":Lcom/android/server/appop/AppOpsService$PackageVerificationResult;
    .restart local v15    # "attributionTag":Ljava/lang/String;
    .restart local v22    # "pvr":Lcom/android/server/appop/AppOpsService$PackageVerificationResult;
    :goto_c
    :try_start_16
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_12

    throw v0

    :catchall_12
    move-exception v0

    goto :goto_c

    .line 3936
    .end local v15    # "attributionTag":Ljava/lang/String;
    .end local v16    # "isRestricted":Z
    .end local v22    # "pvr":Lcom/android/server/appop/AppOpsService$PackageVerificationResult;
    .restart local p5    # "attributionTag":Ljava/lang/String;
    :catch_3
    move-exception v0

    .line 3937
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v2, "AppOps"

    const-string/jumbo v3, "startOperation"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3938
    new-instance v2, Landroid/app/SyncNotedAppOp;

    invoke-direct {v2, v13, v10, v1, v12}, Landroid/app/SyncNotedAppOp;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method private startProxyOperationImpl(ILandroid/content/AttributionSource;ZZLjava/lang/String;ZZIII)Landroid/app/SyncNotedAppOp;
    .locals 42
    .param p1, "code"    # I
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .param p3, "startIfModeDefault"    # Z
    .param p4, "shouldCollectAsyncNotedOp"    # Z
    .param p5, "message"    # Ljava/lang/String;
    .param p6, "shouldCollectMessage"    # Z
    .param p7, "skipProxyOperation"    # Z
    .param p8, "proxyAttributionFlags"    # I
    .param p9, "proxiedAttributionFlags"    # I
    .param p10, "attributionChainId"    # I

    .line 3845
    move-object/from16 v15, p0

    move/from16 v14, p1

    move-object/from16 v13, p2

    move/from16 v12, p3

    invoke-virtual/range {p2 .. p2}, Landroid/content/AttributionSource;->getUid()I

    move-result v11

    .line 3846
    .local v11, "proxyUid":I
    invoke-virtual/range {p2 .. p2}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v10

    .line 3847
    .local v10, "proxyPackageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/content/AttributionSource;->getAttributionTag()Ljava/lang/String;

    move-result-object v27

    .line 3848
    .local v27, "proxyAttributionTag":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/content/AttributionSource;->getToken()Landroid/os/IBinder;

    move-result-object v28

    .line 3849
    .local v28, "proxyToken":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/content/AttributionSource;->getNextUid()I

    move-result v8

    .line 3850
    .local v8, "proxiedUid":I
    invoke-virtual/range {p2 .. p2}, Landroid/content/AttributionSource;->getNextPackageName()Ljava/lang/String;

    move-result-object v7

    .line 3851
    .local v7, "proxiedPackageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/content/AttributionSource;->getNextAttributionTag()Ljava/lang/String;

    move-result-object v6

    .line 3852
    .local v6, "proxiedAttributionTag":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/content/AttributionSource;->getNextToken()Landroid/os/IBinder;

    move-result-object v29

    .line 3854
    .local v29, "proxiedToken":Landroid/os/IBinder;
    invoke-direct {v15, v13}, Lcom/android/server/appop/AppOpsService;->verifyIncomingProxyUid(Landroid/content/AttributionSource;)V

    .line 3855
    invoke-direct/range {p0 .. p1}, Lcom/android/server/appop/AppOpsService;->verifyIncomingOp(I)V

    .line 3856
    invoke-static {v11}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-direct {v15, v10, v0}, Lcom/android/server/appop/AppOpsService;->verifyIncomingPackage(Ljava/lang/String;I)V

    .line 3857
    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-direct {v15, v7, v0}, Lcom/android/server/appop/AppOpsService;->verifyIncomingPackage(Ljava/lang/String;I)V

    .line 3859
    invoke-direct {v15, v13}, Lcom/android/server/appop/AppOpsService;->isCallerAndAttributionTrusted(Landroid/content/AttributionSource;)Z

    move-result v30

    .line 3860
    .local v30, "isCallerTrusted":Z
    const/16 v17, 0x0

    const/4 v5, 0x1

    if-eqz v30, :cond_0

    if-eqz p7, :cond_0

    move v0, v5

    goto :goto_0

    :cond_0
    move/from16 v0, v17

    :goto_0
    move/from16 v31, v0

    .line 3862
    .end local p7    # "skipProxyOperation":Z
    .local v31, "skipProxyOperation":Z
    invoke-static {v11, v10}, Landroid/app/AppOpsManager;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 3864
    .local v32, "resolvedProxyPackageName":Ljava/lang/String;
    if-nez v32, :cond_1

    .line 3865
    new-instance v0, Landroid/app/SyncNotedAppOp;

    invoke-direct {v0, v5, v14, v6, v7}, Landroid/app/SyncNotedAppOp;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 3869
    :cond_1
    const/4 v0, -0x1

    if-eqz v30, :cond_3

    move/from16 v4, p10

    if-eq v4, v0, :cond_4

    and-int/lit8 v1, p8, 0x8

    if-nez v1, :cond_2

    and-int/lit8 v1, p9, 0x8

    if-eqz v1, :cond_4

    :cond_2
    move v1, v5

    goto :goto_1

    :cond_3
    move/from16 v4, p10

    :cond_4
    move/from16 v1, v17

    :goto_1
    move/from16 v33, v1

    .line 3873
    .local v33, "isChainTrusted":Z
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    if-ne v1, v8, :cond_5

    move v1, v5

    goto :goto_2

    :cond_5
    move/from16 v1, v17

    :goto_2
    move/from16 v34, v1

    .line 3874
    .local v34, "isSelfBlame":Z
    iget-object v1, v15, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.UPDATE_APP_OPS_STATS"

    invoke-virtual {v1, v2, v0, v11}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_7

    if-nez v34, :cond_7

    if-eqz v33, :cond_6

    goto :goto_3

    :cond_6
    move/from16 v0, v17

    goto :goto_4

    :cond_7
    :goto_3
    move v0, v5

    :goto_4
    move/from16 v35, v0

    .line 3879
    .local v35, "isProxyTrusted":Z
    invoke-static {v8, v7}, Landroid/app/AppOpsManager;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v36

    .line 3881
    .local v36, "resolvedProxiedPackageName":Ljava/lang/String;
    if-nez v36, :cond_8

    .line 3882
    new-instance v0, Landroid/app/SyncNotedAppOp;

    invoke-direct {v0, v5, v14, v6, v7}, Landroid/app/SyncNotedAppOp;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 3886
    :cond_8
    if-eqz v35, :cond_9

    const/16 v0, 0x8

    move v9, v0

    goto :goto_5

    .line 3887
    :cond_9
    const/16 v0, 0x10

    move v9, v0

    :goto_5
    nop

    .line 3889
    .local v9, "proxiedFlags":I
    if-nez v31, :cond_d

    .line 3891
    const/16 v16, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move/from16 v2, p1

    move v3, v8

    move-object/from16 v4, v36

    move/from16 v18, v5

    move-object v5, v6

    move-object/from16 v37, v6

    .end local v6    # "proxiedAttributionTag":Ljava/lang/String;
    .local v37, "proxiedAttributionTag":Ljava/lang/String;
    move v6, v11

    move-object/from16 v38, v7

    .end local v7    # "proxiedPackageName":Ljava/lang/String;
    .local v38, "proxiedPackageName":Ljava/lang/String;
    move-object/from16 v7, v32

    move/from16 v39, v8

    .end local v8    # "proxiedUid":I
    .local v39, "proxiedUid":I
    move-object/from16 v8, v27

    move-object/from16 v40, v10

    .end local v10    # "proxyPackageName":Ljava/lang/String;
    .local v40, "proxyPackageName":Ljava/lang/String;
    move/from16 v10, p3

    move/from16 v41, v11

    .end local v11    # "proxyUid":I
    .local v41, "proxyUid":I
    move/from16 v11, p4

    move-object/from16 v12, p5

    move/from16 v13, p6

    move/from16 v14, p9

    move/from16 v15, p10

    invoke-direct/range {v0 .. v16}, Lcom/android/server/appop/AppOpsService;->startOperationUnchecked(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZZLjava/lang/String;ZIIZ)Landroid/app/SyncNotedAppOp;

    move-result-object v0

    .line 3896
    .local v0, "testProxiedOp":Landroid/app/SyncNotedAppOp;
    invoke-virtual {v0}, Landroid/app/SyncNotedAppOp;->getOpMode()I

    move-result v1

    move-object/from16 v2, p0

    move/from16 v3, p3

    invoke-direct {v2, v1, v3}, Lcom/android/server/appop/AppOpsService;->shouldStartForMode(IZ)Z

    move-result v1

    if-nez v1, :cond_a

    .line 3897
    return-object v0

    .line 3900
    :cond_a
    if-eqz v35, :cond_b

    const/4 v1, 0x2

    move/from16 v19, v1

    goto :goto_6

    .line 3901
    :cond_b
    const/4 v1, 0x4

    move/from16 v19, v1

    :goto_6
    nop

    .line 3903
    .local v19, "proxyFlags":I
    const/16 v16, -0x1

    const/4 v1, 0x0

    const/4 v4, 0x0

    if-nez v35, :cond_c

    move/from16 v21, v18

    goto :goto_7

    :cond_c
    move/from16 v21, v17

    :goto_7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "proxy "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v6, p5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    const/16 v26, 0x0

    move-object/from16 v10, p0

    move-object/from16 v11, v28

    move/from16 v12, p1

    move/from16 v13, v41

    move-object/from16 v14, v32

    move-object/from16 v15, v27

    move-object/from16 v17, v1

    move-object/from16 v18, v4

    move/from16 v20, p3

    move/from16 v23, p6

    move/from16 v24, p8

    move/from16 v25, p10

    invoke-direct/range {v10 .. v26}, Lcom/android/server/appop/AppOpsService;->startOperationUnchecked(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZZLjava/lang/String;ZIIZ)Landroid/app/SyncNotedAppOp;

    move-result-object v1

    .line 3908
    .local v1, "proxyAppOp":Landroid/app/SyncNotedAppOp;
    invoke-virtual {v1}, Landroid/app/SyncNotedAppOp;->getOpMode()I

    move-result v4

    invoke-direct {v2, v4, v3}, Lcom/android/server/appop/AppOpsService;->shouldStartForMode(IZ)Z

    move-result v4

    if-nez v4, :cond_e

    .line 3909
    return-object v1

    .line 3889
    .end local v0    # "testProxiedOp":Landroid/app/SyncNotedAppOp;
    .end local v1    # "proxyAppOp":Landroid/app/SyncNotedAppOp;
    .end local v19    # "proxyFlags":I
    .end local v37    # "proxiedAttributionTag":Ljava/lang/String;
    .end local v38    # "proxiedPackageName":Ljava/lang/String;
    .end local v39    # "proxiedUid":I
    .end local v40    # "proxyPackageName":Ljava/lang/String;
    .end local v41    # "proxyUid":I
    .restart local v6    # "proxiedAttributionTag":Ljava/lang/String;
    .restart local v7    # "proxiedPackageName":Ljava/lang/String;
    .restart local v8    # "proxiedUid":I
    .restart local v10    # "proxyPackageName":Ljava/lang/String;
    .restart local v11    # "proxyUid":I
    :cond_d
    move-object/from16 v37, v6

    move-object/from16 v38, v7

    move/from16 v39, v8

    move-object/from16 v40, v10

    move/from16 v41, v11

    move v3, v12

    move-object v2, v15

    move-object/from16 v6, p5

    .line 3913
    .end local v6    # "proxiedAttributionTag":Ljava/lang/String;
    .end local v7    # "proxiedPackageName":Ljava/lang/String;
    .end local v8    # "proxiedUid":I
    .end local v10    # "proxyPackageName":Ljava/lang/String;
    .end local v11    # "proxyUid":I
    .restart local v37    # "proxiedAttributionTag":Ljava/lang/String;
    .restart local v38    # "proxiedPackageName":Ljava/lang/String;
    .restart local v39    # "proxiedUid":I
    .restart local v40    # "proxyPackageName":Ljava/lang/String;
    .restart local v41    # "proxyUid":I
    :cond_e
    const/16 v26, 0x0

    move-object/from16 v10, p0

    move-object/from16 v11, v29

    move/from16 v12, p1

    move/from16 v13, v39

    move-object/from16 v14, v36

    move-object/from16 v15, v37

    move/from16 v16, v41

    move-object/from16 v17, v32

    move-object/from16 v18, v27

    move/from16 v19, v9

    move/from16 v20, p3

    move/from16 v21, p4

    move-object/from16 v22, p5

    move/from16 v23, p6

    move/from16 v24, p9

    move/from16 v25, p10

    invoke-direct/range {v10 .. v26}, Lcom/android/server/appop/AppOpsService;->startOperationUnchecked(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZZLjava/lang/String;ZIIZ)Landroid/app/SyncNotedAppOp;

    move-result-object v0

    return-object v0
.end method

.method private switchPackageIfBootTimeOrRarelyUsedLocked(Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 6844
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mSampledPackage:Ljava/lang/String;

    const/4 v1, 0x1

    const/high16 v2, 0x3f000000    # 0.5f

    if-nez v0, :cond_0

    .line 6845
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadLocalRandom;->nextFloat()F

    move-result v0

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    .line 6846
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/appop/AppOpsService;->mSamplingStrategy:I

    .line 6847
    invoke-direct {p0, p1, v1}, Lcom/android/server/appop/AppOpsService;->resampleAppOpForPackageLocked(Ljava/lang/String;Z)V

    goto :goto_0

    .line 6849
    :cond_0
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mRarelyUsedPackages:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6850
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mRarelyUsedPackages:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 6851
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadLocalRandom;->nextFloat()F

    move-result v0

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    .line 6852
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/appop/AppOpsService;->mSamplingStrategy:I

    .line 6853
    invoke-direct {p0, p1, v1}, Lcom/android/server/appop/AppOpsService;->resampleAppOpForPackageLocked(Ljava/lang/String;Z)V

    .line 6856
    :cond_1
    :goto_0
    return-void
.end method

.method private updateAppWidgetVisibility(Landroid/util/SparseArray;Z)V
    .locals 6
    .param p2, "visible"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 4451
    .local p1, "uidPackageNames":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    monitor-enter p0

    .line 4452
    :try_start_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 4453
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 4454
    .local v2, "uid":I
    invoke-direct {p0, v2, v1}, Lcom/android/server/appop/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/appop/AppOpsService$UidState;

    move-result-object v3

    .line 4455
    .local v3, "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    if-eqz v3, :cond_0

    iget-boolean v4, v3, Lcom/android/server/appop/AppOpsService$UidState;->pendingAppWidgetVisible:Z

    if-eq v4, p2, :cond_0

    .line 4456
    iput-boolean p2, v3, Lcom/android/server/appop/AppOpsService$UidState;->pendingAppWidgetVisible:Z

    .line 4457
    iget-boolean v4, v3, Lcom/android/server/appop/AppOpsService$UidState;->pendingAppWidgetVisible:Z

    iget-boolean v5, v3, Lcom/android/server/appop/AppOpsService$UidState;->appWidgetVisible:Z

    if-eq v4, v5, :cond_0

    .line 4458
    invoke-direct {p0, v3}, Lcom/android/server/appop/AppOpsService;->commitUidPendingStateLocked(Lcom/android/server/appop/AppOpsService$UidState;)V

    .line 4452
    .end local v2    # "uid":I
    .end local v3    # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 4462
    .end local v0    # "i":I
    :cond_1
    monitor-exit p0

    .line 4463
    return-void

    .line 4462
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private updatePendingState(JI)V
    .locals 2
    .param p1, "currentTime"    # J
    .param p3, "uid"    # I

    .line 2077
    monitor-enter p0

    .line 2078
    :try_start_0
    iget-wide v0, p0, Lcom/android/server/appop/AppOpsService;->mLastRealtime:J

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Long;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/appop/AppOpsService;->mLastRealtime:J

    .line 2079
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/appop/AppOpsService$UidState;

    invoke-direct {p0, v0}, Lcom/android/server/appop/AppOpsService;->updatePendingStateIfNeededLocked(Lcom/android/server/appop/AppOpsService$UidState;)V

    .line 2080
    monitor-exit p0

    .line 2081
    return-void

    .line 2080
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private updatePendingStateIfNeededLocked(Lcom/android/server/appop/AppOpsService$UidState;)V
    .locals 4
    .param p1, "uidState"    # Lcom/android/server/appop/AppOpsService$UidState;

    .line 4380
    if-eqz p1, :cond_1

    .line 4381
    iget-wide v0, p1, Lcom/android/server/appop/AppOpsService$UidState;->pendingStateCommitTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 4382
    iget-wide v0, p1, Lcom/android/server/appop/AppOpsService$UidState;->pendingStateCommitTime:J

    iget-wide v2, p0, Lcom/android/server/appop/AppOpsService;->mLastRealtime:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 4383
    invoke-direct {p0, p1}, Lcom/android/server/appop/AppOpsService;->commitUidPendingStateLocked(Lcom/android/server/appop/AppOpsService$UidState;)V

    goto :goto_0

    .line 4385
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/appop/AppOpsService;->mLastRealtime:J

    .line 4386
    iget-wide v0, p1, Lcom/android/server/appop/AppOpsService$UidState;->pendingStateCommitTime:J

    iget-wide v2, p0, Lcom/android/server/appop/AppOpsService;->mLastRealtime:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 4387
    invoke-direct {p0, p1}, Lcom/android/server/appop/AppOpsService;->commitUidPendingStateLocked(Lcom/android/server/appop/AppOpsService$UidState;)V

    .line 4392
    :cond_1
    :goto_0
    return-void
.end method

.method private updatePermissionRevokedCompat(III)V
    .locals 31
    .param p1, "uid"    # I
    .param p2, "switchCode"    # I
    .param p3, "mode"    # I

    .line 2647
    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    iget-object v0, v1, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    .line 2648
    .local v11, "packageManager":Landroid/content/pm/PackageManager;
    if-nez v11, :cond_0

    .line 2651
    return-void

    .line 2654
    :cond_0
    invoke-virtual {v11, v2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v12

    .line 2655
    .local v12, "packageNames":[Ljava/lang/String;
    invoke-static {v12}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2656
    return-void

    .line 2658
    :cond_1
    const/4 v13, 0x0

    aget-object v14, v12, v13

    .line 2660
    .local v14, "packageName":Ljava/lang/String;
    iget-object v0, v1, Lcom/android/server/appop/AppOpsService;->mSwitchedOps:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, [I

    .line 2661
    .local v15, "ops":[I
    array-length v10, v15

    move v9, v13

    :goto_0
    if-ge v9, v10, :cond_f

    aget v16, v15, v9

    .line 2662
    .local v16, "code":I
    invoke-static/range {v16 .. v16}, Landroid/app/AppOpsManager;->opToPermission(I)Ljava/lang/String;

    move-result-object v8

    .line 2663
    .local v8, "permissionName":Ljava/lang/String;
    if-nez v8, :cond_2

    .line 2664
    move/from16 v21, v9

    move/from16 v26, v10

    move-object/from16 v30, v12

    goto/16 :goto_b

    .line 2667
    :cond_2
    invoke-virtual {v11, v8, v14}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_3

    .line 2669
    move/from16 v21, v9

    move/from16 v26, v10

    move-object/from16 v30, v12

    goto/16 :goto_b

    .line 2674
    :cond_3
    :try_start_0
    invoke-virtual {v11, v8, v13}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v7, v0

    .line 2678
    .local v7, "permissionInfo":Landroid/content/pm/PermissionInfo;
    nop

    .line 2680
    invoke-virtual {v7}, Landroid/content/pm/PermissionInfo;->isRuntime()Z

    move-result v0

    if-nez v0, :cond_4

    .line 2681
    move/from16 v21, v9

    move/from16 v26, v10

    move-object/from16 v30, v12

    goto/16 :goto_b

    .line 2684
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/android/server/appop/AppOpsService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    .line 2685
    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManagerInternal;->getUidTargetSdkVersion(I)I

    move-result v0

    const/16 v5, 0x17

    const/16 v17, 0x1

    if-lt v0, v5, :cond_5

    move/from16 v0, v17

    goto :goto_1

    :cond_5
    move v0, v13

    :goto_1
    move/from16 v18, v0

    .line 2687
    .local v18, "supportsRuntimePermissions":Z
    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v19

    .line 2689
    .local v19, "user":Landroid/os/UserHandle;
    iget-object v0, v7, Landroid/content/pm/PermissionInfo;->backgroundPermission:Ljava/lang/String;

    const/16 v20, 0x8

    const-string v6, ", permission="

    const-string v5, ", mode="

    const-string v13, ", switchCode="

    move-object/from16 v21, v8

    .end local v8    # "permissionName":Ljava/lang/String;
    .local v21, "permissionName":Ljava/lang/String;
    const-string/jumbo v8, "setUidMode() called with a mode inconsistent with runtime permission state, this is discouraged and you should revoke the runtime permission instead: uid="

    const-string v1, "AppOps"

    if-eqz v0, :cond_b

    .line 2690
    iget-object v0, v7, Landroid/content/pm/PermissionInfo;->backgroundPermission:Ljava/lang/String;

    invoke-virtual {v11, v0, v14}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_9

    .line 2692
    if-eqz v4, :cond_6

    move/from16 v0, v17

    goto :goto_2

    :cond_6
    const/4 v0, 0x0

    :goto_2
    move/from16 v22, v0

    .line 2694
    .local v22, "isBackgroundRevokedCompat":Z
    if-eqz v22, :cond_7

    if-eqz v18, :cond_7

    .line 2695
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v23, v5

    iget-object v5, v7, Landroid/content/pm/PermissionInfo;->backgroundPermission:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 2694
    :cond_7
    move-object/from16 v23, v5

    .line 2702
    :goto_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v24

    .line 2704
    .local v24, "identity":J
    :try_start_1
    iget-object v0, v7, Landroid/content/pm/PermissionInfo;->backgroundPermission:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 v26, 0x8

    .line 2706
    if-eqz v22, :cond_8

    .line 2707
    move/from16 v27, v20

    goto :goto_4

    :cond_8
    const/16 v27, 0x0

    .line 2704
    :goto_4
    move-object/from16 v28, v23

    move-object v5, v11

    move-object/from16 v29, v6

    move-object v6, v0

    move-object/from16 v23, v7

    .end local v7    # "permissionInfo":Landroid/content/pm/PermissionInfo;
    .local v23, "permissionInfo":Landroid/content/pm/PermissionInfo;
    move-object v7, v14

    move-object v0, v8

    move-object/from16 v30, v12

    move-object/from16 v12, v21

    .end local v21    # "permissionName":Ljava/lang/String;
    .local v12, "permissionName":Ljava/lang/String;
    .local v30, "packageNames":[Ljava/lang/String;
    move/from16 v8, v26

    move/from16 v21, v9

    move/from16 v9, v27

    move/from16 v26, v10

    move-object/from16 v10, v19

    :try_start_2
    invoke-virtual/range {v5 .. v10}, Landroid/content/pm/PackageManager;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2709
    invoke-static/range {v24 .. v25}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2710
    goto :goto_6

    .line 2709
    :catchall_0
    move-exception v0

    goto :goto_5

    .end local v23    # "permissionInfo":Landroid/content/pm/PermissionInfo;
    .end local v30    # "packageNames":[Ljava/lang/String;
    .restart local v7    # "permissionInfo":Landroid/content/pm/PermissionInfo;
    .local v12, "packageNames":[Ljava/lang/String;
    .restart local v21    # "permissionName":Ljava/lang/String;
    :catchall_1
    move-exception v0

    move-object/from16 v23, v7

    move-object/from16 v30, v12

    move-object/from16 v12, v21

    .end local v7    # "permissionInfo":Landroid/content/pm/PermissionInfo;
    .end local v21    # "permissionName":Ljava/lang/String;
    .local v12, "permissionName":Ljava/lang/String;
    .restart local v23    # "permissionInfo":Landroid/content/pm/PermissionInfo;
    .restart local v30    # "packageNames":[Ljava/lang/String;
    :goto_5
    invoke-static/range {v24 .. v25}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2710
    throw v0

    .line 2690
    .end local v22    # "isBackgroundRevokedCompat":Z
    .end local v23    # "permissionInfo":Landroid/content/pm/PermissionInfo;
    .end local v24    # "identity":J
    .end local v30    # "packageNames":[Ljava/lang/String;
    .restart local v7    # "permissionInfo":Landroid/content/pm/PermissionInfo;
    .local v12, "packageNames":[Ljava/lang/String;
    .restart local v21    # "permissionName":Ljava/lang/String;
    :cond_9
    move-object/from16 v28, v5

    move-object/from16 v29, v6

    move-object/from16 v23, v7

    move-object v0, v8

    move/from16 v26, v10

    move-object/from16 v30, v12

    move-object/from16 v12, v21

    move/from16 v21, v9

    .line 2713
    .end local v7    # "permissionInfo":Landroid/content/pm/PermissionInfo;
    .end local v21    # "permissionName":Ljava/lang/String;
    .local v12, "permissionName":Ljava/lang/String;
    .restart local v23    # "permissionInfo":Landroid/content/pm/PermissionInfo;
    .restart local v30    # "packageNames":[Ljava/lang/String;
    :goto_6
    if-eqz v4, :cond_a

    const/4 v5, 0x4

    if-eq v4, v5, :cond_a

    goto :goto_7

    :cond_a
    const/16 v17, 0x0

    :goto_7
    move/from16 v5, v17

    .local v5, "isRevokedCompat":Z
    goto :goto_9

    .line 2716
    .end local v5    # "isRevokedCompat":Z
    .end local v23    # "permissionInfo":Landroid/content/pm/PermissionInfo;
    .end local v30    # "packageNames":[Ljava/lang/String;
    .restart local v7    # "permissionInfo":Landroid/content/pm/PermissionInfo;
    .local v12, "packageNames":[Ljava/lang/String;
    .restart local v21    # "permissionName":Ljava/lang/String;
    :cond_b
    move-object/from16 v28, v5

    move-object/from16 v29, v6

    move-object/from16 v23, v7

    move-object v0, v8

    move/from16 v26, v10

    move-object/from16 v30, v12

    move-object/from16 v12, v21

    move/from16 v21, v9

    .end local v7    # "permissionInfo":Landroid/content/pm/PermissionInfo;
    .end local v21    # "permissionName":Ljava/lang/String;
    .local v12, "permissionName":Ljava/lang/String;
    .restart local v23    # "permissionInfo":Landroid/content/pm/PermissionInfo;
    .restart local v30    # "packageNames":[Ljava/lang/String;
    if-eqz v4, :cond_c

    goto :goto_8

    :cond_c
    const/16 v17, 0x0

    :goto_8
    move/from16 v5, v17

    .line 2719
    .local v17, "isRevokedCompat":Z
    :goto_9
    if-eqz v17, :cond_d

    if-eqz v18, :cond_d

    .line 2720
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2726
    :cond_d
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v24

    .line 2728
    .restart local v24    # "identity":J
    const/16 v8, 0x8

    .line 2729
    if-eqz v17, :cond_e

    .line 2730
    move/from16 v9, v20

    goto :goto_a

    :cond_e
    const/4 v9, 0x0

    .line 2728
    :goto_a
    move-object v5, v11

    move-object v6, v12

    move-object v7, v14

    move-object/from16 v10, v19

    :try_start_3
    invoke-virtual/range {v5 .. v10}, Landroid/content/pm/PackageManager;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 2732
    invoke-static/range {v24 .. v25}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2733
    goto :goto_b

    .line 2732
    :catchall_2
    move-exception v0

    move-object v1, v0

    invoke-static/range {v24 .. v25}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2733
    throw v1

    .line 2675
    .end local v17    # "isRevokedCompat":Z
    .end local v18    # "supportsRuntimePermissions":Z
    .end local v19    # "user":Landroid/os/UserHandle;
    .end local v23    # "permissionInfo":Landroid/content/pm/PermissionInfo;
    .end local v24    # "identity":J
    .end local v30    # "packageNames":[Ljava/lang/String;
    .restart local v8    # "permissionName":Ljava/lang/String;
    .local v12, "packageNames":[Ljava/lang/String;
    :catch_0
    move-exception v0

    move/from16 v21, v9

    move/from16 v26, v10

    move-object/from16 v30, v12

    move-object v12, v8

    move-object v1, v0

    .end local v8    # "permissionName":Ljava/lang/String;
    .local v12, "permissionName":Ljava/lang/String;
    .restart local v30    # "packageNames":[Ljava/lang/String;
    move-object v0, v1

    .line 2676
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 2677
    nop

    .line 2661
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v12    # "permissionName":Ljava/lang/String;
    .end local v16    # "code":I
    :goto_b
    add-int/lit8 v9, v21, 0x1

    const/4 v13, 0x0

    move-object/from16 v1, p0

    move/from16 v10, v26

    move-object/from16 v12, v30

    goto/16 :goto_0

    .line 2735
    .end local v30    # "packageNames":[Ljava/lang/String;
    .local v12, "packageNames":[Ljava/lang/String;
    :cond_f
    return-void
.end method

.method private updateStartedOpModeForUidLocked(IZI)V
    .locals 9
    .param p1, "code"    # I
    .param p2, "restricted"    # Z
    .param p3, "uid"    # I

    .line 6539
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/appop/AppOpsService$UidState;

    .line 6540
    .local v0, "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    if-eqz v0, :cond_7

    iget-object v1, v0, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    if-nez v1, :cond_0

    goto :goto_5

    .line 6544
    :cond_0
    iget-object v1, v0, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 6545
    .local v1, "numPkgOps":I
    const/4 v2, 0x0

    .local v2, "pkgNum":I
    :goto_0
    if-ge v2, v1, :cond_6

    .line 6546
    iget-object v3, v0, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appop/AppOpsService$Ops;

    .line 6547
    .local v3, "ops":Lcom/android/server/appop/AppOpsService$Ops;
    if-eqz v3, :cond_1

    invoke-virtual {v3, p1}, Lcom/android/server/appop/AppOpsService$Ops;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/appop/AppOpsService$Op;

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    .line 6548
    .local v4, "op":Lcom/android/server/appop/AppOpsService$Op;
    :goto_1
    if-eqz v4, :cond_5

    invoke-static {v4}, Lcom/android/server/appop/AppOpsService$Op;->access$400(Lcom/android/server/appop/AppOpsService$Op;)I

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {v4}, Lcom/android/server/appop/AppOpsService$Op;->access$400(Lcom/android/server/appop/AppOpsService$Op;)I

    move-result v5

    const/4 v6, 0x4

    if-eq v5, v6, :cond_2

    .line 6549
    goto :goto_4

    .line 6551
    :cond_2
    iget-object v5, v4, Lcom/android/server/appop/AppOpsService$Op;->mAttributions:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    .line 6552
    .local v5, "numAttrTags":I
    const/4 v6, 0x0

    .local v6, "attrNum":I
    :goto_2
    if-ge v6, v5, :cond_5

    .line 6553
    iget-object v7, v4, Lcom/android/server/appop/AppOpsService$Op;->mAttributions:Landroid/util/ArrayMap;

    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/appop/AppOpsService$AttributedOp;

    .line 6554
    .local v7, "attrOp":Lcom/android/server/appop/AppOpsService$AttributedOp;
    if-eqz p2, :cond_3

    invoke-virtual {v7}, Lcom/android/server/appop/AppOpsService$AttributedOp;->isRunning()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 6555
    invoke-virtual {v7}, Lcom/android/server/appop/AppOpsService$AttributedOp;->pause()V

    goto :goto_3

    .line 6556
    :cond_3
    invoke-virtual {v7}, Lcom/android/server/appop/AppOpsService$AttributedOp;->isPaused()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 6557
    invoke-virtual {v7}, Lcom/android/server/appop/AppOpsService$AttributedOp;->resume()V

    .line 6552
    .end local v7    # "attrOp":Lcom/android/server/appop/AppOpsService$AttributedOp;
    :cond_4
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 6545
    .end local v3    # "ops":Lcom/android/server/appop/AppOpsService$Ops;
    .end local v4    # "op":Lcom/android/server/appop/AppOpsService$Op;
    .end local v5    # "numAttrTags":I
    .end local v6    # "attrNum":I
    :cond_5
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6561
    .end local v2    # "pkgNum":I
    :cond_6
    return-void

    .line 6541
    .end local v1    # "numPkgOps":I
    :cond_7
    :goto_5
    return-void
.end method

.method private updateStartedOpModeForUser(IZI)V
    .locals 4
    .param p1, "code"    # I
    .param p2, "restricted"    # Z
    .param p3, "userId"    # I

    .line 6526
    monitor-enter p0

    .line 6527
    :try_start_0
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 6528
    .local v0, "numUids":I
    const/4 v1, 0x0

    .local v1, "uidNum":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 6529
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 6530
    .local v2, "uid":I
    const/4 v3, -0x1

    if-eq p3, v3, :cond_0

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    if-eq v3, p3, :cond_0

    .line 6531
    goto :goto_1

    .line 6533
    :cond_0
    invoke-direct {p0, p1, p2, v2}, Lcom/android/server/appop/AppOpsService;->updateStartedOpModeForUidLocked(IZI)V

    .line 6528
    .end local v2    # "uid":I
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6535
    .end local v0    # "numUids":I
    .end local v1    # "uidNum":I
    :cond_1
    monitor-exit p0

    .line 6536
    return-void

    .line 6535
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private upgradeLocked(I)V
    .locals 3
    .param p1, "oldVersion"    # I

    .line 4893
    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    .line 4894
    return-void

    .line 4896
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Upgrading app-ops xml from version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppOps"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4897
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 4899
    :pswitch_0
    invoke-direct {p0}, Lcom/android/server/appop/AppOpsService;->upgradeRunAnyInBackgroundLocked()V

    .line 4904
    :goto_0
    invoke-direct {p0}, Lcom/android/server/appop/AppOpsService;->scheduleFastWriteLocked()V

    .line 4905
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

.method private upgradeRunAnyInBackgroundLocked()V
    .locals 16

    .line 4857
    move-object/from16 v6, p0

    const/4 v0, 0x0

    move v7, v0

    .local v7, "i":I
    :goto_0
    iget-object v0, v6, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v7, v0, :cond_6

    .line 4858
    iget-object v0, v6, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/android/server/appop/AppOpsService$UidState;

    .line 4859
    .local v8, "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    if-nez v8, :cond_0

    .line 4860
    goto/16 :goto_2

    .line 4862
    :cond_0
    iget-object v0, v8, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    const/16 v9, 0x46

    const/16 v10, 0x3f

    if-eqz v0, :cond_1

    .line 4863
    iget-object v0, v8, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v10}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    .line 4864
    .local v0, "idx":I
    if-ltz v0, :cond_1

    .line 4865
    iget-object v1, v8, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    iget-object v2, v8, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    .line 4866
    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    .line 4865
    invoke-virtual {v1, v9, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 4869
    .end local v0    # "idx":I
    :cond_1
    iget-object v0, v8, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    if-nez v0, :cond_2

    .line 4870
    goto :goto_2

    .line 4872
    :cond_2
    const/4 v0, 0x0

    .line 4873
    .local v0, "changed":Z
    const/4 v1, 0x0

    move v11, v0

    move v12, v1

    .end local v0    # "changed":Z
    .local v11, "changed":Z
    .local v12, "j":I
    :goto_1
    iget-object v0, v8, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-ge v12, v0, :cond_4

    .line 4874
    iget-object v0, v8, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v0, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lcom/android/server/appop/AppOpsService$Ops;

    .line 4875
    .local v13, "ops":Lcom/android/server/appop/AppOpsService$Ops;
    if-eqz v13, :cond_3

    .line 4876
    invoke-virtual {v13, v10}, Lcom/android/server/appop/AppOpsService$Ops;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Lcom/android/server/appop/AppOpsService$Op;

    .line 4877
    .local v14, "op":Lcom/android/server/appop/AppOpsService$Op;
    if-eqz v14, :cond_3

    invoke-static {v14}, Lcom/android/server/appop/AppOpsService$Op;->access$400(Lcom/android/server/appop/AppOpsService$Op;)I

    move-result v0

    iget v1, v14, Lcom/android/server/appop/AppOpsService$Op;->op:I

    invoke-static {v1}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v1

    if-eq v0, v1, :cond_3

    .line 4878
    new-instance v15, Lcom/android/server/appop/AppOpsService$Op;

    iget-object v2, v14, Lcom/android/server/appop/AppOpsService$Op;->uidState:Lcom/android/server/appop/AppOpsService$UidState;

    iget-object v3, v14, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    const/16 v4, 0x46

    iget v5, v8, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    move-object v0, v15

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/appop/AppOpsService$Op;-><init>(Lcom/android/server/appop/AppOpsService;Lcom/android/server/appop/AppOpsService$UidState;Ljava/lang/String;II)V

    .line 4880
    .local v0, "copy":Lcom/android/server/appop/AppOpsService$Op;
    invoke-static {v14}, Lcom/android/server/appop/AppOpsService$Op;->access$400(Lcom/android/server/appop/AppOpsService$Op;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/appop/AppOpsService$Op;->access$402(Lcom/android/server/appop/AppOpsService$Op;I)I

    .line 4881
    invoke-virtual {v13, v9, v0}, Lcom/android/server/appop/AppOpsService$Ops;->put(ILjava/lang/Object;)V

    .line 4882
    const/4 v1, 0x1

    move v11, v1

    .line 4873
    .end local v0    # "copy":Lcom/android/server/appop/AppOpsService$Op;
    .end local v13    # "ops":Lcom/android/server/appop/AppOpsService$Ops;
    .end local v14    # "op":Lcom/android/server/appop/AppOpsService$Op;
    :cond_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 4886
    .end local v12    # "j":I
    :cond_4
    if-eqz v11, :cond_5

    .line 4887
    iget-object v0, v6, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v8, v0}, Lcom/android/server/appop/AppOpsService$UidState;->evalForegroundOps(Landroid/util/SparseArray;)V

    .line 4857
    .end local v8    # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .end local v11    # "changed":Z
    :cond_5
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 4890
    .end local v7    # "i":I
    :cond_6
    return-void
.end method

.method private verifyAndGetBypass(ILjava/lang/String;Ljava/lang/String;)Lcom/android/server/appop/AppOpsService$PackageVerificationResult;
    .locals 1
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "attributionTag"    # Ljava/lang/String;

    .line 4494
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/appop/AppOpsService;->verifyAndGetBypass(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/appop/AppOpsService$PackageVerificationResult;

    move-result-object v0

    return-object v0
.end method

.method private verifyAndGetBypass(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/appop/AppOpsService$PackageVerificationResult;
    .locals 17
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "attributionTag"    # Ljava/lang/String;
    .param p4, "proxyPackageName"    # Ljava/lang/String;

    .line 4512
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    const/4 v0, 0x1

    const/4 v6, 0x0

    if-nez v2, :cond_0

    .line 4514
    new-instance v7, Lcom/android/server/appop/AppOpsService$PackageVerificationResult;

    invoke-direct {v7, v6, v0}, Lcom/android/server/appop/AppOpsService$PackageVerificationResult;-><init>(Landroid/app/AppOpsManager$RestrictionBypass;Z)V

    return-object v7

    .line 4519
    :cond_0
    monitor-enter p0

    .line 4520
    :try_start_0
    iget-object v7, v1, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v7, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/appop/AppOpsService$UidState;

    .line 4521
    .local v7, "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    if-eqz v7, :cond_2

    iget-object v8, v7, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    if-eqz v8, :cond_2

    .line 4522
    iget-object v8, v7, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v8, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/appop/AppOpsService$Ops;

    .line 4524
    .local v8, "ops":Lcom/android/server/appop/AppOpsService$Ops;
    if-eqz v8, :cond_2

    if-eqz v4, :cond_1

    iget-object v9, v8, Lcom/android/server/appop/AppOpsService$Ops;->knownAttributionTags:Landroid/util/ArraySet;

    invoke-virtual {v9, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    :cond_1
    iget-object v9, v8, Lcom/android/server/appop/AppOpsService$Ops;->bypass:Landroid/app/AppOpsManager$RestrictionBypass;

    if-eqz v9, :cond_2

    .line 4526
    new-instance v0, Lcom/android/server/appop/AppOpsService$PackageVerificationResult;

    iget-object v6, v8, Lcom/android/server/appop/AppOpsService$Ops;->bypass:Landroid/app/AppOpsManager$RestrictionBypass;

    iget-object v9, v8, Lcom/android/server/appop/AppOpsService$Ops;->validAttributionTags:Landroid/util/ArraySet;

    .line 4527
    invoke-virtual {v9, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v9

    invoke-direct {v0, v6, v9}, Lcom/android/server/appop/AppOpsService$PackageVerificationResult;-><init>(Landroid/app/AppOpsManager$RestrictionBypass;Z)V

    monitor-exit p0

    .line 4526
    return-object v0

    .line 4530
    .end local v7    # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .end local v8    # "ops":Lcom/android/server/appop/AppOpsService$Ops;
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4532
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 4536
    .local v7, "callingUid":I
    const-string v8, "com.android.shell"

    invoke-static {v3, v8}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 4539
    const/16 v8, 0x7d0

    .local v8, "pkgUid":I
    goto :goto_0

    .line 4541
    .end local v8    # "pkgUid":I
    :cond_3
    invoke-static/range {p2 .. p2}, Lcom/android/server/appop/AppOpsService;->resolveUid(Ljava/lang/String;)I

    move-result v8

    .line 4543
    .restart local v8    # "pkgUid":I
    :goto_0
    const/4 v9, -0x1

    if-eq v8, v9, :cond_5

    .line 4544
    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v6

    if-ne v8, v6, :cond_4

    .line 4549
    new-instance v6, Lcom/android/server/appop/AppOpsService$PackageVerificationResult;

    sget-object v9, Landroid/app/AppOpsManager$RestrictionBypass;->UNRESTRICTED:Landroid/app/AppOpsManager$RestrictionBypass;

    invoke-direct {v6, v9, v0}, Lcom/android/server/appop/AppOpsService$PackageVerificationResult;-><init>(Landroid/app/AppOpsManager$RestrictionBypass;Z)V

    return-object v6

    .line 4545
    :cond_4
    const-string v0, " but it is not"

    .line 4546
    .local v0, "otherUidMessage":Ljava/lang/String;
    new-instance v6, Ljava/lang/SecurityException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Specified package "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " under uid "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4547
    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v9}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 4553
    .end local v0    # "otherUidMessage":Ljava/lang/String;
    :cond_5
    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    .line 4554
    .local v9, "userId":I
    const/4 v10, 0x0

    .line 4555
    .local v10, "bypass":Landroid/app/AppOpsManager$RestrictionBypass;
    const/4 v11, 0x0

    .line 4557
    .local v11, "isAttributionTagValid":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 4559
    .local v12, "ident":J
    :try_start_1
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    move-object v14, v0

    .line 4560
    .local v14, "pmInt":Landroid/content/pm/PackageManagerInternal;
    invoke-virtual {v14, v3}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v0

    move-object v15, v0

    .line 4561
    .local v15, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-eqz v15, :cond_6

    .line 4562
    invoke-direct {v1, v15, v4}, Lcom/android/server/appop/AppOpsService;->isAttributionInPackage(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/lang/String;)Z

    move-result v0

    move v11, v0

    .line 4563
    invoke-interface {v15}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    invoke-static {v9, v0}, Landroid/os/UserHandle;->getUid(II)I

    move-result v0

    move v8, v0

    .line 4564
    invoke-direct {v1, v15}, Lcom/android/server/appop/AppOpsService;->getBypassforPackage(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Landroid/app/AppOpsManager$RestrictionBypass;

    move-result-object v0

    move-object v10, v0

    .line 4566
    :cond_6
    if-nez v11, :cond_c

    .line 4567
    if-eqz v5, :cond_7

    .line 4568
    invoke-virtual {v14, v5}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v6

    goto :goto_1

    :cond_7
    nop

    .line 4570
    .local v6, "proxyPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :goto_1
    invoke-direct {v1, v6, v4}, Lcom/android/server/appop/AppOpsService;->isAttributionInPackage(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/lang/String;)Z

    move-result v0

    move v11, v0

    .line 4572
    if-eqz v15, :cond_8

    if-eqz v11, :cond_8

    .line 4573
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v6

    .end local v6    # "proxyPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .local v16, "proxyPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    const-string v6, "attributionTag "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " declared in manifest of the proxy package "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", this is not advised"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    .local v0, "msg":Ljava/lang/String;
    goto :goto_2

    .line 4572
    .end local v0    # "msg":Ljava/lang/String;
    .end local v16    # "proxyPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .restart local v6    # "proxyPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :cond_8
    move-object/from16 v16, v6

    .line 4575
    .end local v6    # "proxyPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .restart local v16    # "proxyPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-eqz v15, :cond_9

    .line 4576
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "attributionTag "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " not declared in manifest of "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    .restart local v0    # "msg":Ljava/lang/String;
    goto :goto_2

    .line 4579
    .end local v0    # "msg":Ljava/lang/String;
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "package "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " not found, can\'t check for attributionTag "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v6, v0

    .line 4584
    .local v6, "msg":Ljava/lang/String;
    :goto_2
    :try_start_2
    iget-object v0, v1, Lcom/android/server/appop/AppOpsService;->mPlatformCompat:Lcom/android/internal/compat/IPlatformCompat;

    const-wide/32 v4, 0x901b1a2

    invoke-interface {v0, v4, v5, v3, v9}, Lcom/android/internal/compat/IPlatformCompat;->isChangeEnabledByPackageName(JLjava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, v1, Lcom/android/server/appop/AppOpsService;->mPlatformCompat:Lcom/android/internal/compat/IPlatformCompat;

    .line 4586
    invoke-interface {v0, v4, v5, v7}, Lcom/android/internal/compat/IPlatformCompat;->isChangeEnabledByUid(JI)Z

    move-result v0

    if-nez v0, :cond_b

    .line 4590
    :cond_a
    const/4 v0, 0x1

    .end local v11    # "isAttributionTagValid":Z
    .local v0, "isAttributionTagValid":Z
    move v11, v0

    .line 4592
    .end local v0    # "isAttributionTagValid":Z
    .restart local v11    # "isAttributionTagValid":Z
    :cond_b
    const-string v0, "AppOps"

    invoke-static {v0, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4594
    goto :goto_3

    .line 4593
    :catch_0
    move-exception v0

    .line 4597
    .end local v6    # "msg":Ljava/lang/String;
    .end local v14    # "pmInt":Landroid/content/pm/PackageManagerInternal;
    .end local v15    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local v16    # "proxyPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :cond_c
    :goto_3
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4598
    nop

    .line 4600
    if-ne v8, v2, :cond_d

    .line 4606
    new-instance v0, Lcom/android/server/appop/AppOpsService$PackageVerificationResult;

    invoke-direct {v0, v10, v11}, Lcom/android/server/appop/AppOpsService$PackageVerificationResult;-><init>(Landroid/app/AppOpsManager$RestrictionBypass;Z)V

    return-object v0

    .line 4601
    :cond_d
    const-string v0, " but it is not"

    .line 4602
    .local v0, "otherUidMessage":Ljava/lang/String;
    new-instance v4, Ljava/lang/SecurityException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Specified package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " under uid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 4597
    .end local v0    # "otherUidMessage":Ljava/lang/String;
    :catchall_0
    move-exception v0

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4598
    throw v0

    .line 4530
    .end local v7    # "callingUid":I
    .end local v8    # "pkgUid":I
    .end local v9    # "userId":I
    .end local v10    # "bypass":Landroid/app/AppOpsManager$RestrictionBypass;
    .end local v11    # "isAttributionTagValid":Z
    .end local v12    # "ident":J
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method private verifyIncomingOp(I)V
    .locals 3
    .param p1, "op"    # I

    .line 4336
    if-ltz p1, :cond_0

    const/16 v0, 0x74

    if-ge p1, v0, :cond_0

    .line 4337
    return-void

    .line 4339
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad operation #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private verifyIncomingPackage(Ljava/lang/String;I)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 4343
    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/android/server/appop/AppOpsService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    .line 4344
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 4343
    invoke-virtual {v0, p1, v1, p2}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Ljava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 4345
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " not found from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4346
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4348
    :cond_1
    :goto_0
    return-void
.end method

.method private verifyIncomingProxyUid(Landroid/content/AttributionSource;)V
    .locals 5
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;

    .line 4311
    invoke-virtual {p1}, Landroid/content/AttributionSource;->getUid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 4312
    return-void

    .line 4314
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 4315
    return-void

    .line 4317
    :cond_1
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/AttributionSource;->isTrusted(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4318
    return-void

    .line 4320
    :cond_2
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    .line 4321
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/4 v3, 0x0

    .line 4320
    const-string v4, "android.permission.UPDATE_APP_OPS_STATS"

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 4322
    return-void
.end method

.method private verifyIncomingUid(I)V
    .locals 5
    .param p1, "uid"    # I

    .line 4325
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 4326
    return-void

    .line 4328
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 4329
    return-void

    .line 4331
    :cond_1
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    .line 4332
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/4 v3, 0x0

    .line 4331
    const-string v4, "android.permission.UPDATE_APP_OPS_STATS"

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 4333
    return-void
.end method

.method private writeNoteOps()V
    .locals 5

    .line 7300
    monitor-enter p0

    .line 7301
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/appop/AppOpsService;->mWriteNoteOpsScheduled:Z

    .line 7302
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 7303
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mNoteOpCallerStacktracesFile:Ljava/io/File;

    monitor-enter v0

    .line 7304
    :try_start_1
    new-instance v1, Ljava/io/FileWriter;

    iget-object v2, p0, Lcom/android/server/appop/AppOpsService;->mNoteOpCallerStacktracesFile:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 7305
    .local v1, "writer":Ljava/io/FileWriter;
    :try_start_2
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService;->mNoteOpCallerStacktraces:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    .line 7306
    .local v2, "numTraces":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 7308
    iget-object v4, p0, Lcom/android/server/appop/AppOpsService;->mNoteOpCallerStacktraces:Landroid/util/ArraySet;

    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/appop/AppOpsService$NoteOpTrace;

    invoke-virtual {v4}, Lcom/android/server/appop/AppOpsService$NoteOpTrace;->asJson()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 7311
    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 7306
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 7313
    .end local v2    # "numTraces":I
    .end local v3    # "i":I
    :cond_0
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 7315
    .end local v1    # "writer":Ljava/io/FileWriter;
    goto :goto_2

    .line 7304
    .restart local v1    # "writer":Ljava/io/FileWriter;
    :catchall_0
    move-exception v2

    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v3

    :try_start_5
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/server/appop/AppOpsService;
    :goto_1
    throw v2
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 7316
    .end local v1    # "writer":Ljava/io/FileWriter;
    .restart local p0    # "this":Lcom/android/server/appop/AppOpsService;
    :catchall_2
    move-exception v1

    goto :goto_3

    .line 7313
    :catch_0
    move-exception v1

    .line 7314
    .local v1, "e":Ljava/io/IOException;
    :try_start_6
    const-string v2, "AppOps"

    const-string v3, "Failed to load opsValidation file for FileWriter"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7316
    .end local v1    # "e":Ljava/io/IOException;
    :goto_2
    monitor-exit v0

    .line 7317
    return-void

    .line 7316
    :goto_3
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v1

    .line 7302
    :catchall_3
    move-exception v0

    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v0
.end method


# virtual methods
.method public addHistoricalOps(Landroid/app/AppOpsManager$HistoricalOps;)V
    .locals 3
    .param p1, "ops"    # Landroid/app/AppOpsManager$HistoricalOps;

    .line 6693
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_APPOPS"

    const-string v2, "addHistoricalOps"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 6696
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistry;

    invoke-virtual {v0, p1}, Lcom/android/server/appop/HistoricalRegistry;->addHistoricalOps(Landroid/app/AppOpsManager$HistoricalOps;)V

    .line 6697
    return-void
.end method

.method public checkAudioOperation(IIILjava/lang/String;)I
    .locals 1
    .param p1, "code"    # I
    .param p2, "usage"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;

    .line 3251
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mCheckOpsDelegateDispatcher:Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->checkAudioOperation(IIILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public checkOperation(IILjava/lang/String;)I
    .locals 6
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 3191
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mCheckOpsDelegateDispatcher:Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->checkOperation(IILjava/lang/String;Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public checkOperationRaw(IILjava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "attributionTag"    # Ljava/lang/String;

    .line 3185
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mCheckOpsDelegateDispatcher:Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;

    const/4 v5, 0x1

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->checkOperation(IILjava/lang/String;Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public checkPackage(ILjava/lang/String;)I
    .locals 2
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 3294
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3296
    const/4 v0, 0x0

    const/4 v1, 0x2

    :try_start_0
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/appop/AppOpsService;->verifyAndGetBypass(ILjava/lang/String;Ljava/lang/String;)Lcom/android/server/appop/AppOpsService$PackageVerificationResult;

    .line 3297
    invoke-direct {p0, p2}, Lcom/android/server/appop/AppOpsService;->filterAppAccessUnlocked(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    .line 3298
    return v1

    .line 3300
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 3301
    :catch_0
    move-exception v0

    .line 3302
    .local v0, "ignored":Ljava/lang/SecurityException;
    return v1
.end method

.method public clearHistory()V
    .locals 3

    .line 6709
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_APPOPS"

    const-string v2, "clearHistory"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 6712
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistry;

    invoke-virtual {v0}, Lcom/android/server/appop/HistoricalRegistry;->clearAllHistory()V

    .line 6713
    return-void
.end method

.method public collectNoteOpCallsForValidation(Ljava/lang/String;ILjava/lang/String;J)V
    .locals 0
    .param p1, "stackTrace"    # Ljava/lang/String;
    .param p2, "op"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "version"    # J

    .line 7408
    return-void
.end method

.method public collectRuntimeAppOpAccessMessage()Landroid/app/RuntimeAppOpAccessMessage;
    .locals 8

    .line 6819
    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    .line 6820
    .local v0, "ami":Landroid/app/ActivityManagerInternal;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerInternal;->isUidCurrentlyInstrumented(I)Z

    move-result v1

    .line 6821
    .local v1, "isCallerInstrumented":Z
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 6822
    .local v2, "isCallerSystem":Z
    :goto_0
    const/4 v3, 0x0

    if-nez v2, :cond_1

    if-nez v1, :cond_1

    .line 6823
    return-object v3

    .line 6825
    :cond_1
    iget-object v4, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.GET_APP_OPS_STATS"

    .line 6826
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 6825
    invoke-virtual {v4, v5, v6, v7, v3}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 6828
    monitor-enter p0

    .line 6829
    :try_start_0
    iget-object v4, p0, Lcom/android/server/appop/AppOpsService;->mCollectedRuntimePermissionMessage:Landroid/app/RuntimeAppOpAccessMessage;

    .line 6830
    .local v4, "result":Landroid/app/RuntimeAppOpAccessMessage;
    iput-object v3, p0, Lcom/android/server/appop/AppOpsService;->mCollectedRuntimePermissionMessage:Landroid/app/RuntimeAppOpAccessMessage;

    .line 6831
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6832
    iget-object v3, p0, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    sget-object v5, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda16;->INSTANCE:Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda16;

    invoke-static {v5, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 6835
    return-object v4

    .line 6831
    .end local v4    # "result":Landroid/app/RuntimeAppOpAccessMessage;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 47
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 5846
    move-object/from16 v13, p0

    move-object/from16 v15, p2

    move-object/from16 v14, p3

    iget-object v1, v13, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    const-string v2, "AppOps"

    invoke-static {v1, v2, v15}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 5848
    :cond_0
    const/4 v1, -0x1

    .line 5849
    .local v1, "dumpOp":I
    const/4 v2, 0x0

    .line 5850
    .local v2, "dumpPackage":Ljava/lang/String;
    const/4 v3, 0x0

    .line 5851
    .local v3, "dumpAttributionTag":Ljava/lang/String;
    const/4 v4, -0x1

    .line 5852
    .local v4, "dumpUid":I
    const/4 v5, -0x1

    .line 5853
    .local v5, "dumpMode":I
    const/4 v6, 0x0

    .line 5855
    .local v6, "dumpWatchers":Z
    const/4 v7, 0x0

    .line 5856
    .local v7, "dumpHistory":Z
    const/4 v8, 0x0

    .line 5857
    .local v8, "includeDiscreteOps":Z
    const/16 v9, 0xa

    .line 5858
    .local v9, "nDiscreteOps":I
    const/4 v10, 0x0

    .line 5860
    .local v10, "dumpFilter":I
    if-eqz v14, :cond_14

    .line 5861
    const/16 v16, 0x0

    move/from16 v11, v16

    .local v11, "i":I
    :goto_0
    array-length v12, v14

    if-ge v11, v12, :cond_13

    .line 5862
    aget-object v12, v14, v11

    .line 5863
    .local v12, "arg":Ljava/lang/String;
    move/from16 v18, v1

    .end local v1    # "dumpOp":I
    .local v18, "dumpOp":I
    const-string v1, "-h"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5864
    invoke-direct {v13, v15}, Lcom/android/server/appop/AppOpsService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 5865
    return-void

    .line 5866
    :cond_1
    const-string v1, "-a"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move/from16 v1, v18

    goto/16 :goto_3

    .line 5868
    :cond_2
    const-string v1, "--op"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 5869
    add-int/lit8 v11, v11, 0x1

    .line 5870
    array-length v1, v14

    if-lt v11, v1, :cond_3

    .line 5871
    const-string v1, "No argument for --op option"

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5872
    return-void

    .line 5874
    :cond_3
    aget-object v1, v14, v11

    invoke-static {v1, v15}, Lcom/android/server/appop/AppOpsService$Shell;->access$2800(Ljava/lang/String;Ljava/io/PrintWriter;)I

    move-result v1

    .line 5875
    .end local v18    # "dumpOp":I
    .restart local v1    # "dumpOp":I
    or-int/lit8 v10, v10, 0x8

    .line 5876
    if-gez v1, :cond_10

    .line 5877
    return-void

    .line 5879
    .end local v1    # "dumpOp":I
    .restart local v18    # "dumpOp":I
    :cond_4
    const-string v1, "--package"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 5880
    add-int/lit8 v11, v11, 0x1

    .line 5881
    array-length v1, v14

    if-lt v11, v1, :cond_5

    .line 5882
    const-string v1, "No argument for --package option"

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5883
    return-void

    .line 5885
    :cond_5
    aget-object v1, v14, v11

    .line 5886
    .end local v2    # "dumpPackage":Ljava/lang/String;
    .local v1, "dumpPackage":Ljava/lang/String;
    or-int/lit8 v2, v10, 0x2

    .line 5888
    .end local v10    # "dumpFilter":I
    .local v2, "dumpFilter":I
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v10
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v19, v3

    .end local v3    # "dumpAttributionTag":Ljava/lang/String;
    .local v19, "dumpAttributionTag":Ljava/lang/String;
    const v3, 0xc02000

    move/from16 v20, v4

    const/4 v4, 0x0

    .end local v4    # "dumpUid":I
    .local v20, "dumpUid":I
    :try_start_1
    invoke-interface {v10, v1, v3, v4}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;II)I

    move-result v3
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move v4, v3

    .line 5892
    .end local v20    # "dumpUid":I
    .restart local v4    # "dumpUid":I
    goto :goto_2

    .line 5891
    .end local v4    # "dumpUid":I
    .restart local v20    # "dumpUid":I
    :catch_0
    move-exception v0

    goto :goto_1

    .end local v19    # "dumpAttributionTag":Ljava/lang/String;
    .end local v20    # "dumpUid":I
    .restart local v3    # "dumpAttributionTag":Ljava/lang/String;
    .restart local v4    # "dumpUid":I
    :catch_1
    move-exception v0

    move-object/from16 v19, v3

    move/from16 v20, v4

    .end local v3    # "dumpAttributionTag":Ljava/lang/String;
    .end local v4    # "dumpUid":I
    .restart local v19    # "dumpAttributionTag":Ljava/lang/String;
    .restart local v20    # "dumpUid":I
    :goto_1
    move/from16 v4, v20

    .line 5893
    .end local v20    # "dumpUid":I
    .restart local v4    # "dumpUid":I
    :goto_2
    if-gez v4, :cond_6

    .line 5894
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unknown package: "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5895
    return-void

    .line 5897
    :cond_6
    invoke-static {v4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    .line 5898
    .end local v4    # "dumpUid":I
    .local v3, "dumpUid":I
    or-int/lit8 v2, v2, 0x1

    move v10, v2

    move v4, v3

    move-object/from16 v3, v19

    move-object v2, v1

    move/from16 v1, v18

    goto/16 :goto_3

    .line 5899
    .end local v1    # "dumpPackage":Ljava/lang/String;
    .end local v19    # "dumpAttributionTag":Ljava/lang/String;
    .local v2, "dumpPackage":Ljava/lang/String;
    .local v3, "dumpAttributionTag":Ljava/lang/String;
    .restart local v4    # "dumpUid":I
    .restart local v10    # "dumpFilter":I
    :cond_7
    move-object/from16 v19, v3

    move/from16 v20, v4

    .end local v3    # "dumpAttributionTag":Ljava/lang/String;
    .end local v4    # "dumpUid":I
    .restart local v19    # "dumpAttributionTag":Ljava/lang/String;
    .restart local v20    # "dumpUid":I
    const-string v1, "--attributionTag"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 5900
    add-int/lit8 v11, v11, 0x1

    .line 5901
    array-length v1, v14

    if-lt v11, v1, :cond_8

    .line 5902
    const-string v1, "No argument for --attributionTag option"

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5903
    return-void

    .line 5905
    :cond_8
    aget-object v1, v14, v11

    .line 5906
    .end local v19    # "dumpAttributionTag":Ljava/lang/String;
    .local v1, "dumpAttributionTag":Ljava/lang/String;
    or-int/lit8 v3, v10, 0x4

    move v10, v3

    move/from16 v4, v20

    move-object v3, v1

    move/from16 v1, v18

    .end local v10    # "dumpFilter":I
    .local v3, "dumpFilter":I
    goto/16 :goto_3

    .line 5907
    .end local v1    # "dumpAttributionTag":Ljava/lang/String;
    .end local v3    # "dumpFilter":I
    .restart local v10    # "dumpFilter":I
    .restart local v19    # "dumpAttributionTag":Ljava/lang/String;
    :cond_9
    const-string v1, "--mode"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 5908
    add-int/lit8 v11, v11, 0x1

    .line 5909
    array-length v1, v14

    if-lt v11, v1, :cond_a

    .line 5910
    const-string v1, "No argument for --mode option"

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5911
    return-void

    .line 5913
    :cond_a
    aget-object v1, v14, v11

    invoke-static {v1, v15}, Lcom/android/server/appop/AppOpsService$Shell;->strModeToMode(Ljava/lang/String;Ljava/io/PrintWriter;)I

    move-result v1

    .line 5914
    .end local v5    # "dumpMode":I
    .local v1, "dumpMode":I
    if-gez v1, :cond_b

    .line 5915
    return-void

    .line 5914
    :cond_b
    move v5, v1

    move/from16 v1, v18

    move-object/from16 v3, v19

    move/from16 v4, v20

    goto :goto_3

    .line 5917
    .end local v1    # "dumpMode":I
    .restart local v5    # "dumpMode":I
    :cond_c
    const-string v1, "--watchers"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 5918
    const/4 v6, 0x1

    move/from16 v1, v18

    move-object/from16 v3, v19

    move/from16 v4, v20

    goto :goto_3

    .line 5919
    :cond_d
    const-string v1, "--include-discrete"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 5920
    add-int/lit8 v11, v11, 0x1

    .line 5921
    array-length v1, v14

    if-lt v11, v1, :cond_e

    .line 5922
    const-string v1, "No argument for --include-discrete option"

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5923
    return-void

    .line 5926
    :cond_e
    :try_start_2
    aget-object v1, v14, v11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    .line 5930
    .end local v9    # "nDiscreteOps":I
    .local v1, "nDiscreteOps":I
    nop

    .line 5931
    const/4 v3, 0x1

    move v9, v1

    move v8, v3

    move/from16 v1, v18

    move-object/from16 v3, v19

    move/from16 v4, v20

    .end local v8    # "includeDiscreteOps":Z
    .local v3, "includeDiscreteOps":Z
    goto :goto_3

    .line 5927
    .end local v1    # "nDiscreteOps":I
    .end local v3    # "includeDiscreteOps":Z
    .restart local v8    # "includeDiscreteOps":Z
    .restart local v9    # "nDiscreteOps":I
    :catch_2
    move-exception v0

    move-object v1, v0

    .line 5928
    .local v1, "e":Ljava/lang/NumberFormatException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Wrong parameter: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v14, v11

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5929
    return-void

    .line 5932
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_f
    const-string v1, "--history"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 5933
    const/4 v7, 0x1

    move/from16 v1, v18

    move-object/from16 v3, v19

    move/from16 v4, v20

    .line 5861
    .end local v12    # "arg":Ljava/lang/String;
    .end local v18    # "dumpOp":I
    .end local v19    # "dumpAttributionTag":Ljava/lang/String;
    .end local v20    # "dumpUid":I
    .local v1, "dumpOp":I
    .local v3, "dumpAttributionTag":Ljava/lang/String;
    .restart local v4    # "dumpUid":I
    :cond_10
    :goto_3
    const/16 v16, 0x1

    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    .line 5934
    .end local v1    # "dumpOp":I
    .end local v3    # "dumpAttributionTag":Ljava/lang/String;
    .end local v4    # "dumpUid":I
    .restart local v12    # "arg":Ljava/lang/String;
    .restart local v18    # "dumpOp":I
    .restart local v19    # "dumpAttributionTag":Ljava/lang/String;
    .restart local v20    # "dumpUid":I
    :cond_11
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_12

    const/4 v1, 0x0

    invoke-virtual {v12, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x2d

    if-ne v1, v3, :cond_12

    .line 5935
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown option: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5936
    return-void

    .line 5938
    :cond_12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown command: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5939
    return-void

    .line 5861
    .end local v12    # "arg":Ljava/lang/String;
    .end local v18    # "dumpOp":I
    .end local v19    # "dumpAttributionTag":Ljava/lang/String;
    .end local v20    # "dumpUid":I
    .restart local v1    # "dumpOp":I
    .restart local v3    # "dumpAttributionTag":Ljava/lang/String;
    .restart local v4    # "dumpUid":I
    :cond_13
    move/from16 v18, v1

    move-object/from16 v19, v3

    move/from16 v20, v4

    const/16 v16, 0x1

    .end local v1    # "dumpOp":I
    .end local v3    # "dumpAttributionTag":Ljava/lang/String;
    .end local v4    # "dumpUid":I
    .restart local v18    # "dumpOp":I
    .restart local v19    # "dumpAttributionTag":Ljava/lang/String;
    .restart local v20    # "dumpUid":I
    move/from16 v26, v6

    move/from16 v27, v7

    move/from16 v28, v8

    move/from16 v29, v9

    move/from16 v30, v10

    move/from16 v12, v18

    move-object/from16 v25, v19

    move-object v7, v2

    move v6, v5

    move/from16 v5, v20

    goto :goto_4

    .line 5860
    .end local v11    # "i":I
    .end local v18    # "dumpOp":I
    .end local v19    # "dumpAttributionTag":Ljava/lang/String;
    .end local v20    # "dumpUid":I
    .restart local v1    # "dumpOp":I
    .restart local v3    # "dumpAttributionTag":Ljava/lang/String;
    .restart local v4    # "dumpUid":I
    :cond_14
    const/16 v16, 0x1

    move v12, v1

    move-object/from16 v25, v3

    move/from16 v26, v6

    move/from16 v27, v7

    move/from16 v28, v8

    move/from16 v29, v9

    move/from16 v30, v10

    move-object v7, v2

    move v6, v5

    move v5, v4

    .line 5944
    .end local v1    # "dumpOp":I
    .end local v2    # "dumpPackage":Ljava/lang/String;
    .end local v3    # "dumpAttributionTag":Ljava/lang/String;
    .end local v4    # "dumpUid":I
    .end local v8    # "includeDiscreteOps":Z
    .end local v9    # "nDiscreteOps":I
    .end local v10    # "dumpFilter":I
    .local v5, "dumpUid":I
    .local v6, "dumpMode":I
    .local v7, "dumpPackage":Ljava/lang/String;
    .local v12, "dumpOp":I
    .local v25, "dumpAttributionTag":Ljava/lang/String;
    .local v26, "dumpWatchers":Z
    .local v27, "dumpHistory":Z
    .local v28, "includeDiscreteOps":Z
    .local v29, "nDiscreteOps":I
    .local v30, "dumpFilter":I
    :goto_4
    new-instance v10, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v10, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 5945
    .local v10, "sdf":Ljava/text/SimpleDateFormat;
    new-instance v11, Ljava/util/Date;

    invoke-direct {v11}, Ljava/util/Date;-><init>()V

    move/from16 v4, v16

    .line 5946
    .local v11, "date":Ljava/util/Date;
    monitor-enter p0

    .line 5947
    :try_start_3
    const-string v1, "Current AppOps Service state:"

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_a

    .line 5948
    if-nez v27, :cond_15

    if-nez v26, :cond_15

    .line 5949
    :try_start_4
    iget-object v1, v13, Lcom/android/server/appop/AppOpsService;->mConstants:Lcom/android/server/appop/AppOpsService$Constants;

    invoke-virtual {v1, v15}, Lcom/android/server/appop/AppOpsService$Constants;->dump(Ljava/io/PrintWriter;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_5

    .line 6446
    :catchall_0
    move-exception v0

    move-object v1, v0

    move/from16 v40, v5

    move/from16 v32, v6

    move v9, v12

    move-object v12, v7

    goto/16 :goto_57

    .line 5951
    :cond_15
    :goto_5
    :try_start_5
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 5952
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 5953
    .local v8, "now":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    move-wide v2, v1

    .line 5954
    .local v2, "nowElapsed":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v18
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_a

    .line 5955
    .local v18, "nowUptime":J
    const/4 v1, 0x0

    .line 5956
    .local v1, "needSep":Z
    if-nez v30, :cond_17

    if-gez v6, :cond_17

    :try_start_6
    iget-object v4, v13, Lcom/android/server/appop/AppOpsService;->mProfileOwners:Landroid/util/SparseIntArray;

    if-eqz v4, :cond_17

    if-nez v26, :cond_17

    if-nez v27, :cond_17

    .line 5958
    const-string v4, "  Profile owners:"

    invoke-virtual {v15, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5959
    const/4 v4, 0x0

    .local v4, "poi":I
    :goto_6
    move/from16 v20, v1

    .end local v1    # "needSep":Z
    .local v20, "needSep":Z
    iget-object v1, v13, Lcom/android/server/appop/AppOpsService;->mProfileOwners:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-ge v4, v1, :cond_16

    .line 5960
    const-string v1, "    User #"

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5961
    iget-object v1, v13, Lcom/android/server/appop/AppOpsService;->mProfileOwners:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v4}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v1

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 5962
    const-string v1, ": "

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5963
    iget-object v1, v13, Lcom/android/server/appop/AppOpsService;->mProfileOwners:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v4}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v1

    invoke-static {v15, v1}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 5964
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 5959
    add-int/lit8 v4, v4, 0x1

    move/from16 v1, v20

    goto :goto_6

    .line 5966
    .end local v4    # "poi":I
    :cond_16
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_7

    .line 5956
    .end local v20    # "needSep":Z
    .restart local v1    # "needSep":Z
    :cond_17
    move/from16 v20, v1

    .line 5968
    .end local v1    # "needSep":Z
    .restart local v20    # "needSep":Z
    :goto_7
    :try_start_7
    iget-object v1, v13, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_a

    if-lez v1, :cond_1e

    if-nez v27, :cond_1e

    .line 5969
    const/4 v1, 0x0

    .line 5970
    .local v1, "printedHeader":Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_8
    move/from16 v21, v1

    .end local v1    # "printedHeader":Z
    .local v21, "printedHeader":Z
    :try_start_8
    iget-object v1, v13, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v4, v1, :cond_1d

    .line 5971
    if-ltz v12, :cond_18

    iget-object v1, v13, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    if-eq v12, v1, :cond_18

    .line 5972
    move-wide/from16 v23, v8

    move/from16 v1, v21

    goto/16 :goto_c

    .line 5974
    :cond_18
    const/4 v1, 0x0

    .line 5975
    .local v1, "printedOpHeader":Z
    move/from16 v22, v1

    .end local v1    # "printedOpHeader":Z
    .local v22, "printedOpHeader":Z
    iget-object v1, v13, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    .line 5976
    .local v1, "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    const/16 v23, 0x0

    move/from16 v14, v23

    .local v14, "j":I
    :goto_9
    move-wide/from16 v23, v8

    .end local v8    # "now":J
    .local v23, "now":J
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v8

    if-ge v14, v8, :cond_1c

    .line 5977
    invoke-virtual {v1, v14}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/appop/AppOpsService$ModeCallback;

    .line 5978
    .local v8, "cb":Lcom/android/server/appop/AppOpsService$ModeCallback;
    if-eqz v7, :cond_19

    iget v9, v8, Lcom/android/server/appop/AppOpsService$ModeCallback;->mWatchingUid:I

    .line 5979
    invoke-static {v9}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v9

    if-eq v5, v9, :cond_19

    .line 5980
    move-object/from16 v31, v1

    goto :goto_b

    .line 5982
    :cond_19
    const/4 v9, 0x1

    .line 5983
    .end local v20    # "needSep":Z
    .local v9, "needSep":Z
    if-nez v21, :cond_1a

    .line 5984
    move-object/from16 v31, v1

    .end local v1    # "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    .local v31, "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    const-string v1, "  Op mode watchers:"

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5985
    const/16 v21, 0x1

    goto :goto_a

    .line 5983
    .end local v31    # "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    .restart local v1    # "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    :cond_1a
    move-object/from16 v31, v1

    .line 5987
    .end local v1    # "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    .restart local v31    # "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    :goto_a
    if-nez v22, :cond_1b

    .line 5988
    const-string v1, "    Op "

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5989
    iget-object v1, v13, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-static {v1}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5990
    const-string v1, ":"

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5991
    const/16 v22, 0x1

    .line 5993
    :cond_1b
    const-string v1, "      #"

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v15, v14}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, ": "

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5994
    invoke-virtual {v15, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move/from16 v20, v9

    .line 5976
    .end local v8    # "cb":Lcom/android/server/appop/AppOpsService$ModeCallback;
    .end local v9    # "needSep":Z
    .restart local v20    # "needSep":Z
    :goto_b
    add-int/lit8 v14, v14, 0x1

    move-wide/from16 v8, v23

    move-object/from16 v1, v31

    goto :goto_9

    .end local v31    # "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    .restart local v1    # "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    :cond_1c
    move-object/from16 v31, v1

    .end local v1    # "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    .restart local v31    # "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    move/from16 v1, v21

    .line 5970
    .end local v14    # "j":I
    .end local v21    # "printedHeader":Z
    .end local v22    # "printedOpHeader":Z
    .end local v31    # "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    .local v1, "printedHeader":Z
    :goto_c
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v14, p3

    move-wide/from16 v8, v23

    goto/16 :goto_8

    .end local v1    # "printedHeader":Z
    .end local v23    # "now":J
    .local v8, "now":J
    .restart local v21    # "printedHeader":Z
    :cond_1d
    move-wide/from16 v23, v8

    .end local v8    # "now":J
    .restart local v23    # "now":J
    move/from16 v1, v20

    goto :goto_d

    .line 5968
    .end local v4    # "i":I
    .end local v21    # "printedHeader":Z
    .end local v23    # "now":J
    .restart local v8    # "now":J
    :cond_1e
    move-wide/from16 v23, v8

    .line 5998
    .end local v8    # "now":J
    .restart local v23    # "now":J
    move/from16 v1, v20

    .end local v20    # "needSep":Z
    .local v1, "needSep":Z
    :goto_d
    :try_start_9
    iget-object v4, v13, Lcom/android/server/appop/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_a

    if-lez v4, :cond_22

    if-gez v12, :cond_22

    if-nez v27, :cond_22

    .line 5999
    const/4 v4, 0x0

    .line 6000
    .local v4, "printedHeader":Z
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_e
    :try_start_a
    iget-object v9, v13, Lcom/android/server/appop/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    move-result v9

    if-ge v8, v9, :cond_22

    .line 6001
    if-eqz v7, :cond_1f

    iget-object v9, v13, Lcom/android/server/appop/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v9, v8}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1f

    .line 6002
    goto :goto_10

    .line 6004
    :cond_1f
    const/4 v1, 0x1

    .line 6005
    if-nez v4, :cond_20

    .line 6006
    const-string v9, "  Package mode watchers:"

    invoke-virtual {v15, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6007
    const/4 v4, 0x1

    .line 6009
    :cond_20
    const-string v9, "    Pkg "

    invoke-virtual {v15, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v9, v13, Lcom/android/server/appop/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v9, v8}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v15, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6010
    const-string v9, ":"

    invoke-virtual {v15, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6011
    iget-object v9, v13, Lcom/android/server/appop/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v9, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/ArraySet;

    .line 6012
    .local v9, "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    const/4 v14, 0x0

    .restart local v14    # "j":I
    :goto_f
    move/from16 v20, v1

    .end local v1    # "needSep":Z
    .restart local v20    # "needSep":Z
    invoke-virtual {v9}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v14, v1, :cond_21

    .line 6013
    const-string v1, "      #"

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v15, v14}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, ": "

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6014
    invoke-virtual {v9, v14}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 6012
    add-int/lit8 v14, v14, 0x1

    move/from16 v1, v20

    goto :goto_f

    :cond_21
    move/from16 v1, v20

    .line 6000
    .end local v9    # "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    .end local v14    # "j":I
    .end local v20    # "needSep":Z
    .restart local v1    # "needSep":Z
    :goto_10
    add-int/lit8 v8, v8, 0x1

    goto :goto_e

    .line 6018
    .end local v4    # "printedHeader":Z
    .end local v8    # "i":I
    :cond_22
    :try_start_b
    iget-object v4, v13, Lcom/android/server/appop/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_a

    if-lez v4, :cond_25

    if-gez v12, :cond_25

    if-nez v27, :cond_25

    .line 6019
    const/4 v4, 0x0

    .line 6020
    .restart local v4    # "printedHeader":Z
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_11
    :try_start_c
    iget-object v9, v13, Lcom/android/server/appop/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    move-result v9

    if-ge v8, v9, :cond_25

    .line 6021
    iget-object v9, v13, Lcom/android/server/appop/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v9, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/appop/AppOpsService$ModeCallback;

    .line 6022
    .local v9, "cb":Lcom/android/server/appop/AppOpsService$ModeCallback;
    if-eqz v7, :cond_23

    iget v14, v9, Lcom/android/server/appop/AppOpsService$ModeCallback;->mWatchingUid:I

    .line 6023
    invoke-static {v14}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v14

    if-eq v5, v14, :cond_23

    .line 6024
    goto :goto_12

    .line 6026
    :cond_23
    const/4 v1, 0x1

    .line 6027
    if-nez v4, :cond_24

    .line 6028
    const-string v14, "  All op mode watchers:"

    invoke-virtual {v15, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6029
    const/4 v4, 0x1

    .line 6031
    :cond_24
    const-string v14, "    "

    invoke-virtual {v15, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6032
    iget-object v14, v13, Lcom/android/server/appop/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v14, v8}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v15, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6033
    const-string v14, ": "

    invoke-virtual {v15, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v15, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 6020
    .end local v9    # "cb":Lcom/android/server/appop/AppOpsService$ModeCallback;
    :goto_12
    add-int/lit8 v8, v8, 0x1

    goto :goto_11

    .line 6036
    .end local v4    # "printedHeader":Z
    .end local v8    # "i":I
    :cond_25
    :try_start_d
    iget-object v4, v13, Lcom/android/server/appop/AppOpsService;->mActiveWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_a

    if-lez v4, :cond_2f

    if-gez v6, :cond_2f

    .line 6037
    const/4 v1, 0x1

    .line 6038
    const/4 v4, 0x0

    .line 6039
    .restart local v4    # "printedHeader":Z
    const/4 v14, 0x0

    .local v14, "watcherNum":I
    :goto_13
    :try_start_e
    iget-object v8, v13, Lcom/android/server/appop/AppOpsService;->mActiveWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v8

    if-ge v14, v8, :cond_2e

    .line 6040
    iget-object v8, v13, Lcom/android/server/appop/AppOpsService;->mActiveWatchers:Landroid/util/ArrayMap;

    .line 6041
    invoke-virtual {v8, v14}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/SparseArray;

    .line 6042
    .local v8, "activeWatchers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/appop/AppOpsService$ActiveCallback;>;"
    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v21

    if-gtz v21, :cond_26

    .line 6043
    move/from16 v22, v1

    goto :goto_14

    .line 6045
    :cond_26
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/server/appop/AppOpsService$ActiveCallback;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    move-object/from16 v9, v22

    .line 6046
    .local v9, "cb":Lcom/android/server/appop/AppOpsService$ActiveCallback;
    if-ltz v12, :cond_27

    :try_start_f
    invoke-virtual {v8, v12}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v22

    if-gez v22, :cond_27

    .line 6047
    move/from16 v22, v1

    goto :goto_14

    .line 6049
    :cond_27
    if-eqz v7, :cond_28

    move/from16 v22, v1

    .end local v1    # "needSep":Z
    .local v22, "needSep":Z
    iget v1, v9, Lcom/android/server/appop/AppOpsService$ActiveCallback;->mWatchingUid:I

    .line 6050
    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    if-eq v5, v1, :cond_29

    .line 6051
    nop

    .line 6039
    .end local v8    # "activeWatchers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/appop/AppOpsService$ActiveCallback;>;"
    .end local v9    # "cb":Lcom/android/server/appop/AppOpsService$ActiveCallback;
    .end local v22    # "needSep":Z
    .restart local v1    # "needSep":Z
    :goto_14
    move-object/from16 v31, v10

    .end local v1    # "needSep":Z
    .restart local v22    # "needSep":Z
    goto :goto_17

    .line 6049
    .end local v22    # "needSep":Z
    .restart local v1    # "needSep":Z
    .restart local v8    # "activeWatchers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/appop/AppOpsService$ActiveCallback;>;"
    .restart local v9    # "cb":Lcom/android/server/appop/AppOpsService$ActiveCallback;
    :cond_28
    move/from16 v22, v1

    .line 6053
    .end local v1    # "needSep":Z
    .restart local v22    # "needSep":Z
    :cond_29
    if-nez v4, :cond_2a

    .line 6054
    const-string v1, "  All op active watchers:"

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 6055
    const/4 v4, 0x1

    .line 6057
    :cond_2a
    :try_start_10
    const-string v1, "    "

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6058
    iget-object v1, v13, Lcom/android/server/appop/AppOpsService;->mActiveWatchers:Landroid/util/ArrayMap;

    .line 6059
    invoke-virtual {v1, v14}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    .line 6058
    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6060
    const-string v1, " ->"

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6061
    const-string v1, "        ["

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6062
    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v1
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    .line 6063
    .local v1, "opCount":I
    const/16 v31, 0x0

    move/from16 v32, v4

    move/from16 v4, v31

    .local v4, "opNum":I
    .local v32, "printedHeader":Z
    :goto_15
    if-ge v4, v1, :cond_2d

    .line 6064
    if-lez v4, :cond_2b

    .line 6065
    move-object/from16 v31, v10

    const/16 v10, 0x20

    .end local v10    # "sdf":Ljava/text/SimpleDateFormat;
    .local v31, "sdf":Ljava/text/SimpleDateFormat;
    :try_start_11
    invoke-virtual {v15, v10}, Ljava/io/PrintWriter;->print(C)V

    goto :goto_16

    .line 6064
    .end local v31    # "sdf":Ljava/text/SimpleDateFormat;
    .restart local v10    # "sdf":Ljava/text/SimpleDateFormat;
    :cond_2b
    move-object/from16 v31, v10

    .line 6067
    .end local v10    # "sdf":Ljava/text/SimpleDateFormat;
    .restart local v31    # "sdf":Ljava/text/SimpleDateFormat;
    :goto_16
    invoke-virtual {v8, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v10

    invoke-static {v10}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v15, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6068
    add-int/lit8 v10, v1, -0x1

    if-ge v4, v10, :cond_2c

    .line 6069
    const/16 v10, 0x2c

    invoke-virtual {v15, v10}, Ljava/io/PrintWriter;->print(C)V

    .line 6063
    :cond_2c
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v10, v31

    goto :goto_15

    .end local v31    # "sdf":Ljava/text/SimpleDateFormat;
    .restart local v10    # "sdf":Ljava/text/SimpleDateFormat;
    :cond_2d
    move-object/from16 v31, v10

    .line 6072
    .end local v4    # "opNum":I
    .end local v10    # "sdf":Ljava/text/SimpleDateFormat;
    .restart local v31    # "sdf":Ljava/text/SimpleDateFormat;
    const-string v4, "]"

    invoke-virtual {v15, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6073
    const-string v4, "        "

    invoke-virtual {v15, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6074
    invoke-virtual {v15, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    move/from16 v4, v32

    .line 6039
    .end local v1    # "opCount":I
    .end local v8    # "activeWatchers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/appop/AppOpsService$ActiveCallback;>;"
    .end local v9    # "cb":Lcom/android/server/appop/AppOpsService$ActiveCallback;
    .end local v32    # "printedHeader":Z
    .local v4, "printedHeader":Z
    :goto_17
    add-int/lit8 v14, v14, 0x1

    move/from16 v1, v22

    move-object/from16 v10, v31

    goto/16 :goto_13

    .end local v22    # "needSep":Z
    .end local v31    # "sdf":Ljava/text/SimpleDateFormat;
    .local v1, "needSep":Z
    .restart local v10    # "sdf":Ljava/text/SimpleDateFormat;
    :cond_2e
    move/from16 v22, v1

    move-object/from16 v31, v10

    .end local v1    # "needSep":Z
    .end local v10    # "sdf":Ljava/text/SimpleDateFormat;
    .restart local v22    # "needSep":Z
    .restart local v31    # "sdf":Ljava/text/SimpleDateFormat;
    goto :goto_18

    .line 6446
    .end local v2    # "nowElapsed":J
    .end local v4    # "printedHeader":Z
    .end local v14    # "watcherNum":I
    .end local v18    # "nowUptime":J
    .end local v22    # "needSep":Z
    .end local v23    # "now":J
    .end local v31    # "sdf":Ljava/text/SimpleDateFormat;
    .restart local v10    # "sdf":Ljava/text/SimpleDateFormat;
    :catchall_1
    move-exception v0

    move-object v1, v0

    move/from16 v40, v5

    move/from16 v32, v6

    move v9, v12

    move-object v12, v7

    .end local v10    # "sdf":Ljava/text/SimpleDateFormat;
    .restart local v31    # "sdf":Ljava/text/SimpleDateFormat;
    goto/16 :goto_57

    .line 6036
    .end local v31    # "sdf":Ljava/text/SimpleDateFormat;
    .restart local v1    # "needSep":Z
    .restart local v2    # "nowElapsed":J
    .restart local v10    # "sdf":Ljava/text/SimpleDateFormat;
    .restart local v18    # "nowUptime":J
    .restart local v23    # "now":J
    :cond_2f
    move-object/from16 v31, v10

    .line 6077
    .end local v10    # "sdf":Ljava/text/SimpleDateFormat;
    .restart local v31    # "sdf":Ljava/text/SimpleDateFormat;
    :goto_18
    :try_start_12
    iget-object v4, v13, Lcom/android/server/appop/AppOpsService;->mStartedWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_9

    if-lez v4, :cond_39

    if-gez v6, :cond_39

    .line 6078
    const/4 v1, 0x1

    .line 6079
    const/4 v4, 0x0

    .line 6081
    .restart local v4    # "printedHeader":Z
    :try_start_13
    iget-object v8, v13, Lcom/android/server/appop/AppOpsService;->mStartedWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v8

    .line 6082
    .local v8, "watchersSize":I
    const/4 v9, 0x0

    .local v9, "watcherNum":I
    :goto_19
    if-ge v9, v8, :cond_38

    .line 6083
    iget-object v10, v13, Lcom/android/server/appop/AppOpsService;->mStartedWatchers:Landroid/util/ArrayMap;

    .line 6084
    invoke-virtual {v10, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/SparseArray;

    .line 6085
    .local v10, "startedWatchers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/appop/AppOpsService$StartedCallback;>;"
    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v14

    if-gtz v14, :cond_30

    .line 6086
    move/from16 v22, v1

    goto :goto_1a

    .line 6089
    :cond_30
    const/4 v14, 0x0

    invoke-virtual {v10, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/server/appop/AppOpsService$StartedCallback;

    move-object/from16 v14, v22

    .line 6090
    .local v14, "cb":Lcom/android/server/appop/AppOpsService$StartedCallback;
    if-ltz v12, :cond_31

    invoke-virtual {v10, v12}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v22

    if-gez v22, :cond_31

    .line 6091
    move/from16 v22, v1

    goto :goto_1a

    .line 6094
    :cond_31
    if-eqz v7, :cond_32

    move/from16 v22, v1

    .end local v1    # "needSep":Z
    .restart local v22    # "needSep":Z
    iget v1, v14, Lcom/android/server/appop/AppOpsService$StartedCallback;->mWatchingUid:I

    .line 6095
    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    if-eq v5, v1, :cond_33

    .line 6096
    nop

    .line 6082
    .end local v10    # "startedWatchers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/appop/AppOpsService$StartedCallback;>;"
    .end local v14    # "cb":Lcom/android/server/appop/AppOpsService$StartedCallback;
    .end local v22    # "needSep":Z
    .restart local v1    # "needSep":Z
    :goto_1a
    move/from16 v32, v8

    .end local v1    # "needSep":Z
    .restart local v22    # "needSep":Z
    goto :goto_1d

    .line 6094
    .end local v22    # "needSep":Z
    .restart local v1    # "needSep":Z
    .restart local v10    # "startedWatchers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/appop/AppOpsService$StartedCallback;>;"
    .restart local v14    # "cb":Lcom/android/server/appop/AppOpsService$StartedCallback;
    :cond_32
    move/from16 v22, v1

    .line 6099
    .end local v1    # "needSep":Z
    .restart local v22    # "needSep":Z
    :cond_33
    if-nez v4, :cond_34

    .line 6100
    const-string v1, "  All op started watchers:"

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6101
    const/4 v4, 0x1

    .line 6104
    :cond_34
    const-string v1, "    "

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6105
    iget-object v1, v13, Lcom/android/server/appop/AppOpsService;->mStartedWatchers:Landroid/util/ArrayMap;

    .line 6106
    invoke-virtual {v1, v9}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    .line 6105
    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6107
    const-string v1, " ->"

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6109
    const-string v1, "        ["

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6110
    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 6111
    .local v1, "opCount":I
    const/16 v32, 0x0

    move/from16 v33, v4

    move/from16 v4, v32

    .local v4, "opNum":I
    .local v33, "printedHeader":Z
    :goto_1b
    if-ge v4, v1, :cond_37

    .line 6112
    if-lez v4, :cond_35

    .line 6113
    move/from16 v32, v8

    const/16 v8, 0x20

    .end local v8    # "watchersSize":I
    .local v32, "watchersSize":I
    invoke-virtual {v15, v8}, Ljava/io/PrintWriter;->print(C)V

    goto :goto_1c

    .line 6112
    .end local v32    # "watchersSize":I
    .restart local v8    # "watchersSize":I
    :cond_35
    move/from16 v32, v8

    .line 6116
    .end local v8    # "watchersSize":I
    .restart local v32    # "watchersSize":I
    :goto_1c
    invoke-virtual {v10, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    invoke-static {v8}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v15, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6117
    add-int/lit8 v8, v1, -0x1

    if-ge v4, v8, :cond_36

    .line 6118
    const/16 v8, 0x2c

    invoke-virtual {v15, v8}, Ljava/io/PrintWriter;->print(C)V

    .line 6111
    :cond_36
    add-int/lit8 v4, v4, 0x1

    move/from16 v8, v32

    goto :goto_1b

    .end local v32    # "watchersSize":I
    .restart local v8    # "watchersSize":I
    :cond_37
    move/from16 v32, v8

    .line 6121
    .end local v4    # "opNum":I
    .end local v8    # "watchersSize":I
    .restart local v32    # "watchersSize":I
    const-string v4, "]"

    invoke-virtual {v15, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6123
    const-string v4, "        "

    invoke-virtual {v15, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6124
    invoke-virtual {v15, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    move/from16 v4, v33

    .line 6082
    .end local v1    # "opCount":I
    .end local v10    # "startedWatchers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/appop/AppOpsService$StartedCallback;>;"
    .end local v14    # "cb":Lcom/android/server/appop/AppOpsService$StartedCallback;
    .end local v33    # "printedHeader":Z
    .local v4, "printedHeader":Z
    :goto_1d
    add-int/lit8 v9, v9, 0x1

    move/from16 v1, v22

    move/from16 v8, v32

    goto/16 :goto_19

    .end local v22    # "needSep":Z
    .end local v32    # "watchersSize":I
    .local v1, "needSep":Z
    .restart local v8    # "watchersSize":I
    :cond_38
    move/from16 v22, v1

    move/from16 v32, v8

    .end local v1    # "needSep":Z
    .end local v8    # "watchersSize":I
    .restart local v22    # "needSep":Z
    .restart local v32    # "watchersSize":I
    goto :goto_1e

    .line 6446
    .end local v2    # "nowElapsed":J
    .end local v4    # "printedHeader":Z
    .end local v9    # "watcherNum":I
    .end local v18    # "nowUptime":J
    .end local v22    # "needSep":Z
    .end local v23    # "now":J
    .end local v32    # "watchersSize":I
    :catchall_2
    move-exception v0

    move-object v1, v0

    move/from16 v40, v5

    move/from16 v32, v6

    move v9, v12

    move-object/from16 v10, v31

    move-object v12, v7

    goto/16 :goto_57

    .line 6127
    .restart local v1    # "needSep":Z
    .restart local v2    # "nowElapsed":J
    .restart local v18    # "nowUptime":J
    .restart local v23    # "now":J
    :cond_39
    :goto_1e
    :try_start_14
    iget-object v4, v13, Lcom/android/server/appop/AppOpsService;->mNotedWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_9

    if-lez v4, :cond_42

    if-gez v6, :cond_42

    .line 6128
    const/4 v1, 0x1

    .line 6129
    const/4 v4, 0x0

    .line 6130
    .restart local v4    # "printedHeader":Z
    const/4 v8, 0x0

    .local v8, "watcherNum":I
    :goto_1f
    :try_start_15
    iget-object v9, v13, Lcom/android/server/appop/AppOpsService;->mNotedWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    move-result v9

    if-ge v8, v9, :cond_41

    .line 6131
    iget-object v9, v13, Lcom/android/server/appop/AppOpsService;->mNotedWatchers:Landroid/util/ArrayMap;

    .line 6132
    invoke-virtual {v9, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/SparseArray;

    .line 6133
    .local v9, "notedWatchers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/appop/AppOpsService$NotedCallback;>;"
    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v10

    if-gtz v10, :cond_3a

    .line 6134
    goto :goto_20

    .line 6136
    :cond_3a
    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/appop/AppOpsService$NotedCallback;

    .line 6137
    .local v14, "cb":Lcom/android/server/appop/AppOpsService$NotedCallback;
    if-ltz v12, :cond_3b

    invoke-virtual {v9, v12}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v17

    if-gez v17, :cond_3b

    .line 6138
    goto :goto_20

    .line 6140
    :cond_3b
    if-eqz v7, :cond_3c

    iget v10, v14, Lcom/android/server/appop/AppOpsService$NotedCallback;->mWatchingUid:I

    .line 6141
    invoke-static {v10}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v10

    if-eq v5, v10, :cond_3c

    .line 6142
    nop

    .line 6130
    .end local v9    # "notedWatchers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/appop/AppOpsService$NotedCallback;>;"
    .end local v14    # "cb":Lcom/android/server/appop/AppOpsService$NotedCallback;
    :goto_20
    move/from16 v32, v1

    move/from16 v22, v4

    const/16 v4, 0x2c

    goto/16 :goto_24

    .line 6144
    .restart local v9    # "notedWatchers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/appop/AppOpsService$NotedCallback;>;"
    .restart local v14    # "cb":Lcom/android/server/appop/AppOpsService$NotedCallback;
    :cond_3c
    if-nez v4, :cond_3d

    .line 6145
    const-string v10, "  All op noted watchers:"

    invoke-virtual {v15, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6146
    const/4 v4, 0x1

    .line 6148
    :cond_3d
    const-string v10, "    "

    invoke-virtual {v15, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6149
    iget-object v10, v13, Lcom/android/server/appop/AppOpsService;->mNotedWatchers:Landroid/util/ArrayMap;

    .line 6150
    invoke-virtual {v10, v8}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v10

    .line 6149
    invoke-static {v10}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v15, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6151
    const-string v10, " ->"

    invoke-virtual {v15, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6152
    const-string v10, "        ["

    invoke-virtual {v15, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6153
    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v10

    .line 6154
    .local v10, "opCount":I
    const/16 v22, 0x0

    move/from16 v32, v1

    move/from16 v1, v22

    .local v1, "opNum":I
    .local v32, "needSep":Z
    :goto_21
    if-ge v1, v10, :cond_40

    .line 6155
    if-lez v1, :cond_3e

    .line 6156
    move/from16 v22, v4

    const/16 v4, 0x20

    .end local v4    # "printedHeader":Z
    .local v22, "printedHeader":Z
    invoke-virtual {v15, v4}, Ljava/io/PrintWriter;->print(C)V

    goto :goto_22

    .line 6155
    .end local v22    # "printedHeader":Z
    .restart local v4    # "printedHeader":Z
    :cond_3e
    move/from16 v22, v4

    const/16 v4, 0x20

    .line 6158
    .end local v4    # "printedHeader":Z
    .restart local v22    # "printedHeader":Z
    :goto_22
    invoke-virtual {v9, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v21

    invoke-static/range {v21 .. v21}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6159
    add-int/lit8 v4, v10, -0x1

    if-ge v1, v4, :cond_3f

    .line 6160
    const/16 v4, 0x2c

    invoke-virtual {v15, v4}, Ljava/io/PrintWriter;->print(C)V

    goto :goto_23

    .line 6159
    :cond_3f
    const/16 v4, 0x2c

    .line 6154
    :goto_23
    add-int/lit8 v1, v1, 0x1

    move/from16 v4, v22

    goto :goto_21

    .end local v22    # "printedHeader":Z
    .restart local v4    # "printedHeader":Z
    :cond_40
    move/from16 v22, v4

    const/16 v4, 0x2c

    .line 6163
    .end local v1    # "opNum":I
    .end local v4    # "printedHeader":Z
    .restart local v22    # "printedHeader":Z
    const-string v1, "]"

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6164
    const-string v1, "        "

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6165
    invoke-virtual {v15, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_2

    .line 6130
    .end local v9    # "notedWatchers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/appop/AppOpsService$NotedCallback;>;"
    .end local v10    # "opCount":I
    .end local v14    # "cb":Lcom/android/server/appop/AppOpsService$NotedCallback;
    :goto_24
    add-int/lit8 v8, v8, 0x1

    move/from16 v4, v22

    move/from16 v1, v32

    goto/16 :goto_1f

    .end local v22    # "printedHeader":Z
    .end local v32    # "needSep":Z
    .local v1, "needSep":Z
    .restart local v4    # "printedHeader":Z
    :cond_41
    move/from16 v32, v1

    .line 6168
    .end local v4    # "printedHeader":Z
    .end local v8    # "watcherNum":I
    :cond_42
    :try_start_16
    iget-object v4, v13, Lcom/android/server/appop/AppOpsService;->mAudioRestrictionManager:Lcom/android/server/appop/AudioRestrictionManager;

    invoke-virtual {v4}, Lcom/android/server/appop/AudioRestrictionManager;->hasActiveRestrictions()Z

    move-result v4
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_9

    if-eqz v4, :cond_43

    if-gez v12, :cond_43

    if-eqz v7, :cond_43

    if-gez v6, :cond_43

    if-nez v26, :cond_43

    if-nez v26, :cond_43

    .line 6170
    :try_start_17
    iget-object v4, v13, Lcom/android/server/appop/AppOpsService;->mAudioRestrictionManager:Lcom/android/server/appop/AudioRestrictionManager;

    invoke-virtual {v4, v15}, Lcom/android/server/appop/AudioRestrictionManager;->dump(Ljava/io/PrintWriter;)Z

    move-result v4

    or-int/2addr v1, v4

    .line 6172
    :cond_43
    if-eqz v1, :cond_44

    .line 6173
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_2

    .line 6175
    :cond_44
    const/4 v4, 0x0

    move v14, v4

    .local v14, "i":I
    :goto_25
    :try_start_18
    iget-object v4, v13, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_9

    if-ge v14, v4, :cond_77

    .line 6176
    :try_start_19
    iget-object v4, v13, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v4, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/appop/AppOpsService$UidState;

    move-object v8, v4

    .line 6177
    .local v8, "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    iget-object v4, v8, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    move-object v9, v4

    .line 6178
    .local v9, "opModes":Landroid/util/SparseIntArray;
    iget-object v4, v8, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_5

    move-object v10, v4

    .line 6180
    .local v10, "pkgOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    if-nez v26, :cond_76

    if-eqz v27, :cond_45

    .line 6181
    move/from16 v33, v1

    move-wide/from16 v36, v2

    move/from16 v40, v5

    move/from16 v32, v6

    move-object/from16 v42, v7

    move/from16 v43, v12

    move/from16 v35, v14

    move-wide/from16 v8, v23

    move-object/from16 v10, v31

    const/4 v14, 0x1

    const/16 v17, 0x0

    goto/16 :goto_42

    .line 6183
    :cond_45
    if-gez v12, :cond_47

    if-nez v7, :cond_47

    if-ltz v6, :cond_46

    goto :goto_26

    :cond_46
    move/from16 v33, v1

    move/from16 v32, v5

    move/from16 v35, v14

    goto/16 :goto_33

    .line 6184
    :cond_47
    :goto_26
    if-ltz v12, :cond_49

    :try_start_1a
    iget-object v4, v8, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    if-eqz v4, :cond_48

    iget-object v4, v8, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    .line 6185
    invoke-virtual {v4, v12}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v4

    if-ltz v4, :cond_48

    goto :goto_27

    :cond_48
    const/4 v4, 0x0

    goto :goto_28

    :cond_49
    :goto_27
    const/4 v4, 0x1

    .line 6186
    .local v4, "hasOp":Z
    :goto_28
    if-eqz v7, :cond_4b

    move/from16 v20, v4

    .end local v4    # "hasOp":Z
    .local v20, "hasOp":Z
    iget-object v4, v13, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v4, v14}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_2

    if-ne v5, v4, :cond_4a

    goto :goto_29

    :cond_4a
    const/4 v4, 0x0

    goto :goto_2a

    .end local v20    # "hasOp":Z
    .restart local v4    # "hasOp":Z
    :cond_4b
    move/from16 v20, v4

    .end local v4    # "hasOp":Z
    .restart local v20    # "hasOp":Z
    :goto_29
    const/4 v4, 0x1

    .line 6187
    .local v4, "hasPackage":Z
    :goto_2a
    if-gez v6, :cond_4c

    const/16 v21, 0x1

    goto :goto_2b

    :cond_4c
    const/16 v21, 0x0

    .line 6188
    .local v21, "hasMode":Z
    :goto_2b
    if-nez v21, :cond_4f

    if-eqz v9, :cond_4f

    .line 6189
    const/16 v22, 0x0

    move/from16 v44, v22

    move/from16 v22, v4

    move/from16 v4, v44

    .local v4, "opi":I
    .local v22, "hasPackage":Z
    :goto_2c
    if-nez v21, :cond_4e

    move/from16 v32, v5

    .end local v5    # "dumpUid":I
    .local v32, "dumpUid":I
    :try_start_1b
    invoke-virtual {v9}, Landroid/util/SparseIntArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_50

    .line 6190
    invoke-virtual {v9, v4}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v5

    if-ne v5, v6, :cond_4d

    .line 6191
    const/16 v21, 0x1

    .line 6189
    :cond_4d
    add-int/lit8 v4, v4, 0x1

    move/from16 v5, v32

    goto :goto_2c

    .end local v32    # "dumpUid":I
    .restart local v5    # "dumpUid":I
    :cond_4e
    move/from16 v32, v5

    .end local v5    # "dumpUid":I
    .restart local v32    # "dumpUid":I
    goto :goto_2d

    .line 6188
    .end local v22    # "hasPackage":Z
    .end local v32    # "dumpUid":I
    .local v4, "hasPackage":Z
    .restart local v5    # "dumpUid":I
    :cond_4f
    move/from16 v22, v4

    move/from16 v32, v5

    .line 6195
    .end local v4    # "hasPackage":Z
    .end local v5    # "dumpUid":I
    .restart local v22    # "hasPackage":Z
    .restart local v32    # "dumpUid":I
    :cond_50
    :goto_2d
    if-eqz v10, :cond_5a

    .line 6196
    const/4 v4, 0x0

    move v5, v4

    move/from16 v4, v20

    .line 6197
    .end local v20    # "hasOp":Z
    .local v4, "hasOp":Z
    .local v5, "pkgi":I
    :goto_2e
    if-eqz v4, :cond_52

    if-eqz v22, :cond_52

    if-nez v21, :cond_51

    goto :goto_2f

    :cond_51
    move/from16 v33, v1

    move/from16 v35, v14

    goto/16 :goto_32

    :cond_52
    :goto_2f
    move/from16 v33, v1

    .end local v1    # "needSep":Z
    .local v33, "needSep":Z
    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v5, v1, :cond_59

    .line 6199
    invoke-virtual {v10, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/appop/AppOpsService$Ops;

    .line 6200
    .local v1, "ops":Lcom/android/server/appop/AppOpsService$Ops;
    if-nez v4, :cond_53

    if-eqz v1, :cond_53

    invoke-virtual {v1, v12}, Lcom/android/server/appop/AppOpsService$Ops;->indexOfKey(I)I

    move-result v20

    if-ltz v20, :cond_53

    .line 6201
    const/4 v4, 0x1

    .line 6203
    :cond_53
    if-nez v21, :cond_56

    .line 6204
    const/16 v20, 0x0

    move/from16 v34, v4

    move/from16 v4, v20

    .local v4, "opi":I
    .local v34, "hasOp":Z
    :goto_30
    if-nez v21, :cond_55

    move/from16 v35, v14

    .end local v14    # "i":I
    .local v35, "i":I
    invoke-virtual {v1}, Lcom/android/server/appop/AppOpsService$Ops;->size()I

    move-result v14

    if-ge v4, v14, :cond_57

    .line 6205
    invoke-virtual {v1, v4}, Lcom/android/server/appop/AppOpsService$Ops;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/appop/AppOpsService$Op;

    invoke-static {v14}, Lcom/android/server/appop/AppOpsService$Op;->access$400(Lcom/android/server/appop/AppOpsService$Op;)I

    move-result v14

    if-ne v14, v6, :cond_54

    .line 6206
    const/16 v21, 0x1

    .line 6204
    :cond_54
    add-int/lit8 v4, v4, 0x1

    move/from16 v14, v35

    goto :goto_30

    .end local v35    # "i":I
    .restart local v14    # "i":I
    :cond_55
    move/from16 v35, v14

    .end local v14    # "i":I
    .restart local v35    # "i":I
    goto :goto_31

    .line 6203
    .end local v34    # "hasOp":Z
    .end local v35    # "i":I
    .local v4, "hasOp":Z
    .restart local v14    # "i":I
    :cond_56
    move/from16 v34, v4

    move/from16 v35, v14

    .line 6210
    .end local v4    # "hasOp":Z
    .end local v14    # "i":I
    .restart local v34    # "hasOp":Z
    .restart local v35    # "i":I
    :cond_57
    :goto_31
    if-nez v22, :cond_58

    iget-object v4, v1, Lcom/android/server/appop/AppOpsService$Ops;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_3

    if-eqz v4, :cond_58

    .line 6211
    const/16 v22, 0x1

    .line 6198
    .end local v1    # "ops":Lcom/android/server/appop/AppOpsService$Ops;
    :cond_58
    add-int/lit8 v5, v5, 0x1

    move/from16 v1, v33

    move/from16 v4, v34

    move/from16 v14, v35

    goto :goto_2e

    .line 6197
    .end local v34    # "hasOp":Z
    .end local v35    # "i":I
    .restart local v4    # "hasOp":Z
    .restart local v14    # "i":I
    :cond_59
    move/from16 v35, v14

    .end local v14    # "i":I
    .restart local v35    # "i":I
    goto :goto_32

    .line 6446
    .end local v2    # "nowElapsed":J
    .end local v4    # "hasOp":Z
    .end local v5    # "pkgi":I
    .end local v8    # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .end local v9    # "opModes":Landroid/util/SparseIntArray;
    .end local v10    # "pkgOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    .end local v18    # "nowUptime":J
    .end local v21    # "hasMode":Z
    .end local v22    # "hasPackage":Z
    .end local v23    # "now":J
    .end local v33    # "needSep":Z
    .end local v35    # "i":I
    :catchall_3
    move-exception v0

    move-object v1, v0

    move v9, v12

    move-object/from16 v10, v31

    move/from16 v40, v32

    move/from16 v32, v6

    move-object v12, v7

    goto/16 :goto_57

    .line 6195
    .local v1, "needSep":Z
    .restart local v2    # "nowElapsed":J
    .restart local v8    # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .restart local v9    # "opModes":Landroid/util/SparseIntArray;
    .restart local v10    # "pkgOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    .restart local v14    # "i":I
    .restart local v18    # "nowUptime":J
    .restart local v20    # "hasOp":Z
    .restart local v21    # "hasMode":Z
    .restart local v22    # "hasPackage":Z
    .restart local v23    # "now":J
    :cond_5a
    move/from16 v33, v1

    move/from16 v35, v14

    .end local v1    # "needSep":Z
    .end local v14    # "i":I
    .restart local v33    # "needSep":Z
    .restart local v35    # "i":I
    move/from16 v4, v20

    .line 6215
    .end local v20    # "hasOp":Z
    .restart local v4    # "hasOp":Z
    :goto_32
    :try_start_1c
    iget-object v1, v8, Lcom/android/server/appop/AppOpsService$UidState;->foregroundOps:Landroid/util/SparseBooleanArray;
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_4

    if-eqz v1, :cond_5b

    if-nez v4, :cond_5b

    .line 6216
    :try_start_1d
    iget-object v1, v8, Lcom/android/server/appop/AppOpsService$UidState;->foregroundOps:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v12}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v1
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_3

    if-lez v1, :cond_5b

    .line 6217
    const/4 v4, 0x1

    .line 6220
    :cond_5b
    if-eqz v4, :cond_75

    if-eqz v22, :cond_75

    if-nez v21, :cond_5c

    .line 6221
    move-wide/from16 v36, v2

    move-object/from16 v42, v7

    move/from16 v43, v12

    move-wide/from16 v8, v23

    move-object/from16 v10, v31

    move/from16 v40, v32

    const/4 v14, 0x1

    const/16 v17, 0x0

    move/from16 v32, v6

    goto/16 :goto_42

    .line 6225
    .end local v4    # "hasOp":Z
    .end local v21    # "hasMode":Z
    .end local v22    # "hasPackage":Z
    :cond_5c
    :goto_33
    :try_start_1e
    const-string v1, "  Uid "

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, v8, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    invoke-static {v15, v1}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    const-string v1, ":"

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6226
    const-string v1, "    state="

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6227
    iget v1, v8, Lcom/android/server/appop/AppOpsService$UidState;->state:I

    invoke-static {v1}, Landroid/app/AppOpsManager;->getUidStateName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6228
    iget v1, v8, Lcom/android/server/appop/AppOpsService$UidState;->state:I

    iget v4, v8, Lcom/android/server/appop/AppOpsService$UidState;->pendingState:I
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_4

    if-eq v1, v4, :cond_5d

    .line 6229
    :try_start_1f
    const-string v1, "    pendingState="

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6230
    iget v1, v8, Lcom/android/server/appop/AppOpsService$UidState;->pendingState:I

    invoke-static {v1}, Landroid/app/AppOpsManager;->getUidStateName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_3

    .line 6232
    :cond_5d
    :try_start_20
    const-string v1, "    capability="

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6233
    iget v1, v8, Lcom/android/server/appop/AppOpsService$UidState;->capability:I

    invoke-static {v15, v1}, Landroid/app/ActivityManager;->printCapabilitiesFull(Ljava/io/PrintWriter;I)V

    .line 6234
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 6235
    iget v1, v8, Lcom/android/server/appop/AppOpsService$UidState;->capability:I

    iget v4, v8, Lcom/android/server/appop/AppOpsService$UidState;->pendingCapability:I
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_4

    if-eq v1, v4, :cond_5e

    .line 6236
    :try_start_21
    const-string v1, "    pendingCapability="

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6237
    iget v1, v8, Lcom/android/server/appop/AppOpsService$UidState;->pendingCapability:I

    invoke-static {v15, v1}, Landroid/app/ActivityManager;->printCapabilitiesFull(Ljava/io/PrintWriter;I)V

    .line 6238
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_3

    .line 6240
    :cond_5e
    :try_start_22
    const-string v1, "    appWidgetVisible="

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6241
    iget-boolean v1, v8, Lcom/android/server/appop/AppOpsService$UidState;->appWidgetVisible:Z

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 6242
    iget-boolean v1, v8, Lcom/android/server/appop/AppOpsService$UidState;->appWidgetVisible:Z

    iget-boolean v4, v8, Lcom/android/server/appop/AppOpsService$UidState;->pendingAppWidgetVisible:Z
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_4

    if-eq v1, v4, :cond_5f

    .line 6243
    :try_start_23
    const-string v1, "    pendingAppWidgetVisible="

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6244
    iget-boolean v1, v8, Lcom/android/server/appop/AppOpsService$UidState;->pendingAppWidgetVisible:Z

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->println(Z)V
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_3

    .line 6246
    :cond_5f
    :try_start_24
    iget-wide v4, v8, Lcom/android/server/appop/AppOpsService$UidState;->pendingStateCommitTime:J
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_4

    const-wide/16 v20, 0x0

    cmp-long v1, v4, v20

    if-eqz v1, :cond_60

    .line 6247
    :try_start_25
    const-string v1, "    pendingStateCommitTime="

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6248
    iget-wide v4, v8, Lcom/android/server/appop/AppOpsService$UidState;->pendingStateCommitTime:J

    invoke-static {v4, v5, v2, v3, v15}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 6249
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_3

    .line 6251
    :cond_60
    :try_start_26
    iget-object v1, v8, Lcom/android/server/appop/AppOpsService$UidState;->foregroundOps:Landroid/util/SparseBooleanArray;
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_4

    if-eqz v1, :cond_65

    if-ltz v6, :cond_61

    const/4 v1, 0x4

    if-ne v6, v1, :cond_65

    .line 6253
    :cond_61
    :try_start_27
    const-string v1, "    foregroundOps:"

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6254
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_34
    iget-object v4, v8, Lcom/android/server/appop/AppOpsService$UidState;->foregroundOps:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4}, Landroid/util/SparseBooleanArray;->size()I

    move-result v4

    if-ge v1, v4, :cond_64

    .line 6255
    if-ltz v12, :cond_62

    iget-object v4, v8, Lcom/android/server/appop/AppOpsService$UidState;->foregroundOps:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v4

    if-eq v12, v4, :cond_62

    .line 6256
    goto :goto_36

    .line 6258
    :cond_62
    const-string v4, "      "

    invoke-virtual {v15, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6259
    iget-object v4, v8, Lcom/android/server/appop/AppOpsService$UidState;->foregroundOps:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v4

    invoke-static {v4}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6260
    const-string v4, ": "

    invoke-virtual {v15, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6261
    iget-object v4, v8, Lcom/android/server/appop/AppOpsService$UidState;->foregroundOps:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v4

    if-eqz v4, :cond_63

    const-string v4, "WATCHER"

    goto :goto_35

    :cond_63
    const-string v4, "SILENT"

    :goto_35
    invoke-virtual {v15, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6254
    :goto_36
    add-int/lit8 v1, v1, 0x1

    goto :goto_34

    .line 6263
    .end local v1    # "j":I
    :cond_64
    const-string v1, "    hasForegroundWatchers="

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6264
    iget-boolean v1, v8, Lcom/android/server/appop/AppOpsService$UidState;->hasForegroundWatchers:Z

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 6266
    :cond_65
    const/4 v14, 0x1

    .line 6268
    .end local v33    # "needSep":Z
    .local v14, "needSep":Z
    if-eqz v9, :cond_6a

    .line 6269
    invoke-virtual {v9}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    .line 6270
    .local v1, "opModeCount":I
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_37
    if-ge v4, v1, :cond_69

    .line 6271
    invoke-virtual {v9, v4}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v5

    .line 6272
    .local v5, "code":I
    invoke-virtual {v9, v4}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v20

    move/from16 v21, v20

    .line 6273
    .local v21, "mode":I
    if-ltz v12, :cond_66

    if-eq v12, v5, :cond_66

    .line 6274
    move/from16 v20, v1

    move-wide/from16 v36, v2

    goto :goto_38

    .line 6276
    :cond_66
    if-ltz v6, :cond_67

    move/from16 v20, v1

    move/from16 v1, v21

    .end local v21    # "mode":I
    .local v1, "mode":I
    .local v20, "opModeCount":I
    if-eq v6, v1, :cond_68

    .line 6277
    move-wide/from16 v36, v2

    goto :goto_38

    .line 6276
    .end local v20    # "opModeCount":I
    .local v1, "opModeCount":I
    .restart local v21    # "mode":I
    :cond_67
    move/from16 v20, v1

    move/from16 v1, v21

    .line 6279
    .end local v21    # "mode":I
    .local v1, "mode":I
    .restart local v20    # "opModeCount":I
    :cond_68
    move-wide/from16 v36, v2

    .end local v2    # "nowElapsed":J
    .local v36, "nowElapsed":J
    const-string v2, "      "

    invoke-virtual {v15, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v5}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6280
    const-string v2, ": mode="

    invoke-virtual {v15, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/app/AppOpsManager;->modeToName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_3

    .line 6270
    .end local v1    # "mode":I
    .end local v5    # "code":I
    :goto_38
    add-int/lit8 v4, v4, 0x1

    move/from16 v1, v20

    move-wide/from16 v2, v36

    goto :goto_37

    .end local v20    # "opModeCount":I
    .end local v36    # "nowElapsed":J
    .local v1, "opModeCount":I
    .restart local v2    # "nowElapsed":J
    :cond_69
    move/from16 v20, v1

    move-wide/from16 v36, v2

    .end local v1    # "opModeCount":I
    .end local v2    # "nowElapsed":J
    .restart local v20    # "opModeCount":I
    .restart local v36    # "nowElapsed":J
    goto :goto_39

    .line 6268
    .end local v4    # "j":I
    .end local v20    # "opModeCount":I
    .end local v36    # "nowElapsed":J
    .restart local v2    # "nowElapsed":J
    :cond_6a
    move-wide/from16 v36, v2

    .line 6284
    .end local v2    # "nowElapsed":J
    .restart local v36    # "nowElapsed":J
    :goto_39
    if-nez v10, :cond_6b

    .line 6285
    move-object/from16 v42, v7

    move/from16 v43, v12

    move/from16 v39, v14

    move-wide/from16 v8, v23

    move-object/from16 v10, v31

    move/from16 v40, v32

    const/4 v14, 0x1

    const/16 v17, 0x0

    move/from16 v32, v6

    goto/16 :goto_41

    .line 6288
    :cond_6b
    const/4 v1, 0x0

    move v5, v1

    .local v5, "pkgi":I
    :goto_3a
    :try_start_28
    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v5, v1, :cond_74

    .line 6289
    invoke-virtual {v10, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/appop/AppOpsService$Ops;
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_4

    move-object v4, v1

    .line 6290
    .local v4, "ops":Lcom/android/server/appop/AppOpsService$Ops;
    if-eqz v7, :cond_6c

    :try_start_29
    iget-object v1, v4, Lcom/android/server/appop/AppOpsService$Ops;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_3

    if-nez v1, :cond_6c

    .line 6291
    move/from16 v21, v5

    move-object/from16 v42, v7

    move/from16 v43, v12

    move/from16 v39, v14

    move/from16 v40, v32

    const/4 v14, 0x1

    const/16 v17, 0x0

    move/from16 v32, v6

    move-wide/from16 v44, v23

    move-object/from16 v23, v8

    move-object/from16 v24, v9

    move-wide/from16 v8, v44

    move-object/from16 v46, v31

    move-object/from16 v31, v10

    move-object/from16 v10, v46

    goto/16 :goto_40

    .line 6293
    :cond_6c
    const/4 v1, 0x0

    .line 6294
    .local v1, "printedPackage":Z
    const/4 v2, 0x0

    move v3, v2

    .local v3, "j":I
    :goto_3b
    :try_start_2a
    invoke-virtual {v4}, Lcom/android/server/appop/AppOpsService$Ops;->size()I

    move-result v2

    if-ge v3, v2, :cond_73

    .line 6295
    invoke-virtual {v4, v3}, Lcom/android/server/appop/AppOpsService$Ops;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appop/AppOpsService$Op;

    .line 6296
    .local v2, "op":Lcom/android/server/appop/AppOpsService$Op;
    move/from16 v20, v3

    .end local v3    # "j":I
    .local v20, "j":I
    iget v3, v2, Lcom/android/server/appop/AppOpsService$Op;->op:I
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_4

    .line 6297
    .local v3, "opCode":I
    if-ltz v12, :cond_6d

    if-eq v12, v3, :cond_6d

    .line 6298
    move/from16 v21, v5

    goto :goto_3c

    .line 6300
    :cond_6d
    if-ltz v6, :cond_6e

    move/from16 v21, v5

    .end local v5    # "pkgi":I
    .local v21, "pkgi":I
    :try_start_2b
    invoke-static {v2}, Lcom/android/server/appop/AppOpsService$Op;->access$400(Lcom/android/server/appop/AppOpsService$Op;)I

    move-result v5

    if-eq v6, v5, :cond_6f

    .line 6301
    nop

    .line 6294
    .end local v2    # "op":Lcom/android/server/appop/AppOpsService$Op;
    .end local v3    # "opCode":I
    .end local v21    # "pkgi":I
    .restart local v5    # "pkgi":I
    :goto_3c
    move-object/from16 v16, v4

    move-object/from16 v42, v7

    move/from16 v43, v12

    move/from16 v39, v14

    move/from16 v40, v32

    const/4 v14, 0x1

    const/16 v17, 0x0

    move/from16 v32, v6

    move-wide/from16 v44, v23

    move-object/from16 v23, v8

    move-object/from16 v24, v9

    move-wide/from16 v8, v44

    move-object/from16 v46, v31

    move-object/from16 v31, v10

    move-object/from16 v10, v46

    .end local v5    # "pkgi":I
    .restart local v21    # "pkgi":I
    goto/16 :goto_3f

    .line 6300
    .end local v21    # "pkgi":I
    .restart local v2    # "op":Lcom/android/server/appop/AppOpsService$Op;
    .restart local v3    # "opCode":I
    .restart local v5    # "pkgi":I
    :cond_6e
    move/from16 v21, v5

    .line 6303
    .end local v5    # "pkgi":I
    .restart local v21    # "pkgi":I
    :cond_6f
    if-nez v1, :cond_70

    .line 6304
    const-string v5, "    Package "

    invoke-virtual {v15, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v4, Lcom/android/server/appop/AppOpsService$Ops;->packageName:Ljava/lang/String;

    invoke-virtual {v15, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, ":"

    invoke-virtual {v15, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_3

    .line 6305
    const/4 v1, 0x1

    move/from16 v22, v1

    goto :goto_3d

    .line 6303
    :cond_70
    move/from16 v22, v1

    .line 6307
    .end local v1    # "printedPackage":Z
    .local v22, "printedPackage":Z
    :goto_3d
    :try_start_2c
    const-string v1, "      "

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6308
    const-string v1, " ("

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/android/server/appop/AppOpsService$Op;->access$400(Lcom/android/server/appop/AppOpsService$Op;)I

    move-result v1

    invoke-static {v1}, Landroid/app/AppOpsManager;->modeToName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6309
    invoke-static {v3}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v1
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_4

    move v5, v1

    .line 6310
    .local v5, "switchOp":I
    if-eq v5, v3, :cond_72

    .line 6311
    :try_start_2d
    const-string v1, " / switch "

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6312
    invoke-static {v5}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6313
    invoke-virtual {v4, v5}, Lcom/android/server/appop/AppOpsService$Ops;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/appop/AppOpsService$Op;

    .line 6314
    .local v1, "switchObj":Lcom/android/server/appop/AppOpsService$Op;
    if-eqz v1, :cond_71

    invoke-static {v1}, Lcom/android/server/appop/AppOpsService$Op;->access$400(Lcom/android/server/appop/AppOpsService$Op;)I

    move-result v33

    goto :goto_3e

    .line 6315
    :cond_71
    invoke-static {v5}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v33

    :goto_3e
    nop

    .line 6316
    .local v33, "mode":I
    move-object/from16 v34, v1

    .end local v1    # "switchObj":Lcom/android/server/appop/AppOpsService$Op;
    .local v34, "switchObj":Lcom/android/server/appop/AppOpsService$Op;
    const-string v1, "="

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static/range {v33 .. v33}, Landroid/app/AppOpsManager;->modeToName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_3

    .line 6318
    .end local v33    # "mode":I
    .end local v34    # "switchObj":Lcom/android/server/appop/AppOpsService$Op;
    :cond_72
    :try_start_2e
    const-string v1, "): "

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6319
    const-string v33, "        "
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_4

    move-object/from16 v1, p0

    move-object/from16 v34, v2

    .end local v2    # "op":Lcom/android/server/appop/AppOpsService$Op;
    .local v34, "op":Lcom/android/server/appop/AppOpsService$Op;
    move-object/from16 v2, p2

    move/from16 v38, v3

    .end local v3    # "opCode":I
    .local v38, "opCode":I
    move-object/from16 v3, v25

    move-object/from16 v16, v4

    move/from16 v39, v14

    const/4 v14, 0x1

    .end local v4    # "ops":Lcom/android/server/appop/AppOpsService$Ops;
    .end local v14    # "needSep":Z
    .local v16, "ops":Lcom/android/server/appop/AppOpsService$Ops;
    .local v39, "needSep":Z
    move/from16 v4, v30

    move/from16 v41, v5

    move/from16 v40, v32

    move/from16 v32, v6

    .end local v5    # "switchOp":I
    .end local v6    # "dumpMode":I
    .local v32, "dumpMode":I
    .local v40, "dumpUid":I
    .local v41, "switchOp":I
    move-wide/from16 v5, v36

    move-object/from16 v42, v7

    .end local v7    # "dumpPackage":Ljava/lang/String;
    .local v42, "dumpPackage":Ljava/lang/String;
    move-object/from16 v7, v34

    move/from16 v43, v12

    const/16 v17, 0x0

    .end local v12    # "dumpOp":I
    .local v43, "dumpOp":I
    move-object/from16 v12, v33

    move-wide/from16 v44, v23

    move-object/from16 v23, v8

    move-object/from16 v24, v9

    move-wide/from16 v8, v44

    move-object/from16 v46, v31

    move-object/from16 v31, v10

    move-object/from16 v10, v46

    .end local v9    # "opModes":Landroid/util/SparseIntArray;
    .local v8, "now":J
    .local v10, "sdf":Ljava/text/SimpleDateFormat;
    .local v23, "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .local v24, "opModes":Landroid/util/SparseIntArray;
    .local v31, "pkgOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    :try_start_2f
    invoke-direct/range {v1 .. v12}, Lcom/android/server/appop/AppOpsService;->dumpStatesLocked(Ljava/io/PrintWriter;Ljava/lang/String;IJLcom/android/server/appop/AppOpsService$Op;JLjava/text/SimpleDateFormat;Ljava/util/Date;Ljava/lang/String;)V

    move/from16 v1, v22

    .line 6294
    .end local v22    # "printedPackage":Z
    .end local v34    # "op":Lcom/android/server/appop/AppOpsService$Op;
    .end local v38    # "opCode":I
    .end local v41    # "switchOp":I
    .local v1, "printedPackage":Z
    :goto_3f
    add-int/lit8 v3, v20, 0x1

    move-object/from16 v4, v16

    move/from16 v5, v21

    move/from16 v6, v32

    move/from16 v14, v39

    move/from16 v32, v40

    move-object/from16 v7, v42

    move/from16 v12, v43

    move-object/from16 v44, v31

    move-object/from16 v31, v10

    move-object/from16 v10, v44

    move-wide/from16 v45, v8

    move-object/from16 v8, v23

    move-object/from16 v9, v24

    move-wide/from16 v23, v45

    .end local v20    # "j":I
    .local v3, "j":I
    goto/16 :goto_3b

    .end local v16    # "ops":Lcom/android/server/appop/AppOpsService$Ops;
    .end local v21    # "pkgi":I
    .end local v24    # "opModes":Landroid/util/SparseIntArray;
    .end local v39    # "needSep":Z
    .end local v40    # "dumpUid":I
    .end local v42    # "dumpPackage":Ljava/lang/String;
    .end local v43    # "dumpOp":I
    .restart local v4    # "ops":Lcom/android/server/appop/AppOpsService$Ops;
    .local v5, "pkgi":I
    .restart local v6    # "dumpMode":I
    .restart local v7    # "dumpPackage":Ljava/lang/String;
    .local v8, "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .restart local v9    # "opModes":Landroid/util/SparseIntArray;
    .local v10, "pkgOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    .restart local v12    # "dumpOp":I
    .restart local v14    # "needSep":Z
    .local v23, "now":J
    .local v31, "sdf":Ljava/text/SimpleDateFormat;
    .local v32, "dumpUid":I
    :cond_73
    move/from16 v20, v3

    move-object/from16 v16, v4

    move/from16 v21, v5

    move-object/from16 v42, v7

    move/from16 v43, v12

    move/from16 v39, v14

    move/from16 v40, v32

    const/4 v14, 0x1

    const/16 v17, 0x0

    move/from16 v32, v6

    move-wide/from16 v44, v23

    move-object/from16 v23, v8

    move-object/from16 v24, v9

    move-wide/from16 v8, v44

    move-object/from16 v46, v31

    move-object/from16 v31, v10

    move-object/from16 v10, v46

    .line 6288
    .end local v1    # "printedPackage":Z
    .end local v3    # "j":I
    .end local v4    # "ops":Lcom/android/server/appop/AppOpsService$Ops;
    .end local v5    # "pkgi":I
    .end local v6    # "dumpMode":I
    .end local v7    # "dumpPackage":Ljava/lang/String;
    .end local v9    # "opModes":Landroid/util/SparseIntArray;
    .end local v12    # "dumpOp":I
    .end local v14    # "needSep":Z
    .local v8, "now":J
    .local v10, "sdf":Ljava/text/SimpleDateFormat;
    .restart local v21    # "pkgi":I
    .local v23, "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .restart local v24    # "opModes":Landroid/util/SparseIntArray;
    .local v31, "pkgOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    .local v32, "dumpMode":I
    .restart local v39    # "needSep":Z
    .restart local v40    # "dumpUid":I
    .restart local v42    # "dumpPackage":Ljava/lang/String;
    .restart local v43    # "dumpOp":I
    :goto_40
    add-int/lit8 v5, v21, 0x1

    move/from16 v6, v32

    move/from16 v14, v39

    move/from16 v32, v40

    move-object/from16 v7, v42

    move/from16 v12, v43

    move-object/from16 v44, v31

    move-object/from16 v31, v10

    move-object/from16 v10, v44

    move-wide/from16 v45, v8

    move-object/from16 v8, v23

    move-object/from16 v9, v24

    move-wide/from16 v23, v45

    .end local v21    # "pkgi":I
    .restart local v5    # "pkgi":I
    goto/16 :goto_3a

    .end local v24    # "opModes":Landroid/util/SparseIntArray;
    .end local v39    # "needSep":Z
    .end local v40    # "dumpUid":I
    .end local v42    # "dumpPackage":Ljava/lang/String;
    .end local v43    # "dumpOp":I
    .restart local v6    # "dumpMode":I
    .restart local v7    # "dumpPackage":Ljava/lang/String;
    .local v8, "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .restart local v9    # "opModes":Landroid/util/SparseIntArray;
    .local v10, "pkgOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    .restart local v12    # "dumpOp":I
    .restart local v14    # "needSep":Z
    .local v23, "now":J
    .local v31, "sdf":Ljava/text/SimpleDateFormat;
    .local v32, "dumpUid":I
    :cond_74
    move/from16 v21, v5

    move-object/from16 v42, v7

    move/from16 v43, v12

    move/from16 v39, v14

    move/from16 v40, v32

    const/4 v14, 0x1

    const/16 v17, 0x0

    move/from16 v32, v6

    move-wide/from16 v44, v23

    move-object/from16 v23, v8

    move-object/from16 v24, v9

    move-wide/from16 v8, v44

    move-object/from16 v46, v31

    move-object/from16 v31, v10

    move-object/from16 v10, v46

    .line 6175
    .end local v5    # "pkgi":I
    .end local v8    # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .end local v9    # "opModes":Landroid/util/SparseIntArray;
    .end local v10    # "pkgOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    :goto_41
    move/from16 v1, v39

    .end local v6    # "dumpMode":I
    .end local v7    # "dumpPackage":Ljava/lang/String;
    .end local v12    # "dumpOp":I
    .end local v14    # "needSep":Z
    .end local v23    # "now":J
    .end local v31    # "sdf":Ljava/text/SimpleDateFormat;
    .local v8, "now":J
    .local v10, "sdf":Ljava/text/SimpleDateFormat;
    .local v32, "dumpMode":I
    .restart local v39    # "needSep":Z
    .restart local v40    # "dumpUid":I
    .restart local v42    # "dumpPackage":Ljava/lang/String;
    .restart local v43    # "dumpOp":I
    goto :goto_43

    .line 6446
    .end local v8    # "now":J
    .end local v10    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v18    # "nowUptime":J
    .end local v35    # "i":I
    .end local v36    # "nowElapsed":J
    .end local v39    # "needSep":Z
    .end local v40    # "dumpUid":I
    .end local v42    # "dumpPackage":Ljava/lang/String;
    .end local v43    # "dumpOp":I
    .restart local v6    # "dumpMode":I
    .restart local v7    # "dumpPackage":Ljava/lang/String;
    .restart local v12    # "dumpOp":I
    .restart local v31    # "sdf":Ljava/text/SimpleDateFormat;
    .local v32, "dumpUid":I
    :catchall_4
    move-exception v0

    move-object/from16 v10, v31

    move/from16 v40, v32

    move/from16 v32, v6

    move-object v1, v0

    move v9, v12

    move-object v12, v7

    .end local v6    # "dumpMode":I
    .end local v7    # "dumpPackage":Ljava/lang/String;
    .end local v12    # "dumpOp":I
    .end local v31    # "sdf":Ljava/text/SimpleDateFormat;
    .restart local v10    # "sdf":Ljava/text/SimpleDateFormat;
    .local v32, "dumpMode":I
    .restart local v40    # "dumpUid":I
    .restart local v42    # "dumpPackage":Ljava/lang/String;
    .restart local v43    # "dumpOp":I
    goto/16 :goto_57

    .line 6220
    .end local v40    # "dumpUid":I
    .end local v42    # "dumpPackage":Ljava/lang/String;
    .end local v43    # "dumpOp":I
    .local v2, "nowElapsed":J
    .local v4, "hasOp":Z
    .restart local v6    # "dumpMode":I
    .restart local v7    # "dumpPackage":Ljava/lang/String;
    .local v8, "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .restart local v9    # "opModes":Landroid/util/SparseIntArray;
    .local v10, "pkgOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    .restart local v12    # "dumpOp":I
    .restart local v18    # "nowUptime":J
    .local v21, "hasMode":Z
    .local v22, "hasPackage":Z
    .restart local v23    # "now":J
    .restart local v31    # "sdf":Ljava/text/SimpleDateFormat;
    .local v32, "dumpUid":I
    .local v33, "needSep":Z
    .restart local v35    # "i":I
    :cond_75
    move-wide/from16 v36, v2

    move-object/from16 v42, v7

    move/from16 v43, v12

    move/from16 v40, v32

    const/4 v14, 0x1

    const/16 v17, 0x0

    move/from16 v32, v6

    move-wide/from16 v44, v23

    move-object/from16 v23, v8

    move-object/from16 v24, v9

    move-wide/from16 v8, v44

    move-object/from16 v46, v31

    move-object/from16 v31, v10

    move-object/from16 v10, v46

    .end local v2    # "nowElapsed":J
    .end local v6    # "dumpMode":I
    .end local v7    # "dumpPackage":Ljava/lang/String;
    .end local v9    # "opModes":Landroid/util/SparseIntArray;
    .end local v12    # "dumpOp":I
    .local v8, "now":J
    .local v10, "sdf":Ljava/text/SimpleDateFormat;
    .local v23, "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .restart local v24    # "opModes":Landroid/util/SparseIntArray;
    .local v31, "pkgOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    .local v32, "dumpMode":I
    .restart local v36    # "nowElapsed":J
    .restart local v40    # "dumpUid":I
    .restart local v42    # "dumpPackage":Ljava/lang/String;
    .restart local v43    # "dumpOp":I
    goto :goto_42

    .line 6180
    .end local v4    # "hasOp":Z
    .end local v21    # "hasMode":Z
    .end local v22    # "hasPackage":Z
    .end local v24    # "opModes":Landroid/util/SparseIntArray;
    .end local v32    # "dumpMode":I
    .end local v33    # "needSep":Z
    .end local v35    # "i":I
    .end local v36    # "nowElapsed":J
    .end local v40    # "dumpUid":I
    .end local v42    # "dumpPackage":Ljava/lang/String;
    .end local v43    # "dumpOp":I
    .local v1, "needSep":Z
    .restart local v2    # "nowElapsed":J
    .local v5, "dumpUid":I
    .restart local v6    # "dumpMode":I
    .restart local v7    # "dumpPackage":Ljava/lang/String;
    .local v8, "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .restart local v9    # "opModes":Landroid/util/SparseIntArray;
    .local v10, "pkgOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    .restart local v12    # "dumpOp":I
    .local v14, "i":I
    .local v23, "now":J
    .local v31, "sdf":Ljava/text/SimpleDateFormat;
    :cond_76
    move/from16 v33, v1

    move-wide/from16 v36, v2

    move/from16 v40, v5

    move/from16 v32, v6

    move-object/from16 v42, v7

    move/from16 v43, v12

    move/from16 v35, v14

    const/4 v14, 0x1

    const/16 v17, 0x0

    move-wide/from16 v44, v23

    move-object/from16 v23, v8

    move-object/from16 v24, v9

    move-wide/from16 v8, v44

    move-object/from16 v46, v31

    move-object/from16 v31, v10

    move-object/from16 v10, v46

    .line 6175
    .end local v1    # "needSep":Z
    .end local v2    # "nowElapsed":J
    .end local v5    # "dumpUid":I
    .end local v6    # "dumpMode":I
    .end local v7    # "dumpPackage":Ljava/lang/String;
    .end local v9    # "opModes":Landroid/util/SparseIntArray;
    .end local v12    # "dumpOp":I
    .end local v14    # "i":I
    .end local v23    # "now":J
    .end local v31    # "sdf":Ljava/text/SimpleDateFormat;
    .local v8, "now":J
    .local v10, "sdf":Ljava/text/SimpleDateFormat;
    .restart local v32    # "dumpMode":I
    .restart local v33    # "needSep":Z
    .restart local v35    # "i":I
    .restart local v36    # "nowElapsed":J
    .restart local v40    # "dumpUid":I
    .restart local v42    # "dumpPackage":Ljava/lang/String;
    .restart local v43    # "dumpOp":I
    :goto_42
    move/from16 v1, v33

    .end local v33    # "needSep":Z
    .restart local v1    # "needSep":Z
    :goto_43
    add-int/lit8 v2, v35, 0x1

    move v14, v2

    move-wide/from16 v23, v8

    move-object/from16 v31, v10

    move/from16 v6, v32

    move-wide/from16 v2, v36

    move/from16 v5, v40

    move-object/from16 v7, v42

    move/from16 v12, v43

    .end local v35    # "i":I
    .local v2, "i":I
    goto/16 :goto_25

    .line 6446
    .end local v1    # "needSep":Z
    .end local v2    # "i":I
    .end local v8    # "now":J
    .end local v10    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v18    # "nowUptime":J
    .end local v32    # "dumpMode":I
    .end local v36    # "nowElapsed":J
    .end local v40    # "dumpUid":I
    .end local v42    # "dumpPackage":Ljava/lang/String;
    .end local v43    # "dumpOp":I
    .restart local v5    # "dumpUid":I
    .restart local v6    # "dumpMode":I
    .restart local v7    # "dumpPackage":Ljava/lang/String;
    .restart local v12    # "dumpOp":I
    .restart local v31    # "sdf":Ljava/text/SimpleDateFormat;
    :catchall_5
    move-exception v0

    move/from16 v40, v5

    move/from16 v32, v6

    move-object/from16 v10, v31

    move-object v1, v0

    move v9, v12

    move-object v12, v7

    .end local v5    # "dumpUid":I
    .end local v6    # "dumpMode":I
    .end local v7    # "dumpPackage":Ljava/lang/String;
    .end local v12    # "dumpOp":I
    .end local v31    # "sdf":Ljava/text/SimpleDateFormat;
    .restart local v10    # "sdf":Ljava/text/SimpleDateFormat;
    .restart local v32    # "dumpMode":I
    .restart local v40    # "dumpUid":I
    .restart local v42    # "dumpPackage":Ljava/lang/String;
    .restart local v43    # "dumpOp":I
    goto/16 :goto_57

    .line 6175
    .end local v10    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v32    # "dumpMode":I
    .end local v40    # "dumpUid":I
    .end local v42    # "dumpPackage":Ljava/lang/String;
    .end local v43    # "dumpOp":I
    .restart local v1    # "needSep":Z
    .local v2, "nowElapsed":J
    .restart local v5    # "dumpUid":I
    .restart local v6    # "dumpMode":I
    .restart local v7    # "dumpPackage":Ljava/lang/String;
    .restart local v12    # "dumpOp":I
    .restart local v14    # "i":I
    .restart local v18    # "nowUptime":J
    .restart local v23    # "now":J
    .restart local v31    # "sdf":Ljava/text/SimpleDateFormat;
    :cond_77
    move/from16 v33, v1

    move-wide/from16 v36, v2

    move/from16 v40, v5

    move/from16 v32, v6

    move-object/from16 v42, v7

    move/from16 v43, v12

    move/from16 v35, v14

    move-wide/from16 v8, v23

    move-object/from16 v10, v31

    const/4 v14, 0x1

    const/16 v17, 0x0

    .line 6324
    .end local v1    # "needSep":Z
    .end local v2    # "nowElapsed":J
    .end local v5    # "dumpUid":I
    .end local v6    # "dumpMode":I
    .end local v7    # "dumpPackage":Ljava/lang/String;
    .end local v12    # "dumpOp":I
    .end local v14    # "i":I
    .end local v23    # "now":J
    .end local v31    # "sdf":Ljava/text/SimpleDateFormat;
    .restart local v8    # "now":J
    .restart local v10    # "sdf":Ljava/text/SimpleDateFormat;
    .restart local v32    # "dumpMode":I
    .restart local v33    # "needSep":Z
    .restart local v36    # "nowElapsed":J
    .restart local v40    # "dumpUid":I
    .restart local v42    # "dumpPackage":Ljava/lang/String;
    .restart local v43    # "dumpOp":I
    if-eqz v33, :cond_78

    .line 6325
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_6

    goto :goto_44

    .line 6446
    .end local v8    # "now":J
    .end local v18    # "nowUptime":J
    .end local v33    # "needSep":Z
    .end local v36    # "nowElapsed":J
    :catchall_6
    move-exception v0

    move-object v1, v0

    move-object/from16 v12, v42

    move/from16 v9, v43

    goto/16 :goto_57

    .line 6328
    .restart local v8    # "now":J
    .restart local v18    # "nowUptime":J
    .restart local v33    # "needSep":Z
    .restart local v36    # "nowElapsed":J
    :cond_78
    :goto_44
    :try_start_30
    iget-object v1, v13, Lcom/android/server/appop/AppOpsService;->mOpGlobalRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_8

    .line 6329
    .local v1, "globalRestrictionCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_45
    if-ge v2, v1, :cond_7b

    .line 6330
    :try_start_31
    iget-object v3, v13, Lcom/android/server/appop/AppOpsService;->mOpGlobalRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/IBinder;

    .line 6331
    .local v3, "token":Landroid/os/IBinder;
    iget-object v4, v13, Lcom/android/server/appop/AppOpsService;->mOpGlobalRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/appop/AppOpsService$ClientGlobalRestrictionState;

    .line 6332
    .local v4, "restrictionState":Lcom/android/server/appop/AppOpsService$ClientGlobalRestrictionState;
    iget-object v5, v4, Lcom/android/server/appop/AppOpsService$ClientGlobalRestrictionState;->mRestrictedOps:Landroid/util/ArraySet;

    .line 6334
    .local v5, "restrictedOps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  Global restrictions for token "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v15, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6335
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 6336
    .local v6, "restrictedOpsValue":Ljava/lang/StringBuilder;
    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6337
    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v7

    .line 6338
    .local v7, "restrictedOpCount":I
    const/4 v12, 0x0

    .local v12, "j":I
    :goto_46
    if-ge v12, v7, :cond_7a

    .line 6339
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v14

    move/from16 v20, v1

    const/4 v1, 0x1

    .end local v1    # "globalRestrictionCount":I
    .local v20, "globalRestrictionCount":I
    if-le v14, v1, :cond_79

    .line 6340
    const-string v1, ", "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6342
    :cond_79
    invoke-virtual {v5, v12}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6338
    add-int/lit8 v12, v12, 0x1

    move/from16 v1, v20

    const/4 v14, 0x1

    goto :goto_46

    .end local v20    # "globalRestrictionCount":I
    .restart local v1    # "globalRestrictionCount":I
    :cond_7a
    move/from16 v20, v1

    .line 6344
    .end local v1    # "globalRestrictionCount":I
    .end local v12    # "j":I
    .restart local v20    # "globalRestrictionCount":I
    const-string v1, "]"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6345
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "      Restricted ops: "

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_6

    .line 6329
    .end local v3    # "token":Landroid/os/IBinder;
    .end local v4    # "restrictionState":Lcom/android/server/appop/AppOpsService$ClientGlobalRestrictionState;
    .end local v5    # "restrictedOps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    .end local v6    # "restrictedOpsValue":Ljava/lang/StringBuilder;
    .end local v7    # "restrictedOpCount":I
    add-int/lit8 v2, v2, 0x1

    move/from16 v1, v20

    const/4 v14, 0x1

    goto/16 :goto_45

    .end local v20    # "globalRestrictionCount":I
    .restart local v1    # "globalRestrictionCount":I
    :cond_7b
    move/from16 v20, v1

    .line 6349
    .end local v1    # "globalRestrictionCount":I
    .end local v2    # "i":I
    .restart local v20    # "globalRestrictionCount":I
    :try_start_32
    iget-object v1, v13, Lcom/android/server/appop/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 6350
    .local v1, "userRestrictionCount":I
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_47
    if-ge v2, v1, :cond_92

    .line 6351
    iget-object v3, v13, Lcom/android/server/appop/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/IBinder;

    .line 6352
    .restart local v3    # "token":Landroid/os/IBinder;
    iget-object v4, v13, Lcom/android/server/appop/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;

    .line 6353
    .local v4, "restrictionState":Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;
    const/4 v5, 0x0

    .line 6355
    .local v5, "printedTokenHeader":Z
    if-gez v32, :cond_91

    if-nez v26, :cond_91

    if-eqz v27, :cond_7c

    .line 6356
    move/from16 v21, v1

    move-wide/from16 v23, v8

    move-object/from16 v12, v42

    move/from16 v9, v43

    goto/16 :goto_56

    .line 6359
    :cond_7c
    iget-object v6, v4, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_8

    if-eqz v6, :cond_7d

    .line 6360
    :try_start_33
    iget-object v6, v4, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v12
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_6

    goto :goto_48

    :cond_7d
    move/from16 v12, v17

    :goto_48
    move v6, v12

    .line 6361
    .local v6, "restrictionCount":I
    if-lez v6, :cond_88

    move-object/from16 v12, v42

    .end local v42    # "dumpPackage":Ljava/lang/String;
    .local v12, "dumpPackage":Ljava/lang/String;
    if-nez v12, :cond_87

    .line 6362
    const/4 v7, 0x0

    .line 6363
    .local v7, "printedOpsHeader":Z
    const/4 v14, 0x0

    .local v14, "j":I
    :goto_49
    if-ge v14, v6, :cond_86

    .line 6364
    move/from16 v21, v1

    .end local v1    # "userRestrictionCount":I
    .local v21, "userRestrictionCount":I
    :try_start_34
    iget-object v1, v4, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v1, v14}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 6365
    .local v1, "userId":I
    move/from16 v22, v6

    .end local v6    # "restrictionCount":I
    .local v22, "restrictionCount":I
    iget-object v6, v4, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v6, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Z
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_7

    .line 6366
    .local v6, "restrictedOps":[Z
    if-nez v6, :cond_7e

    .line 6367
    move-wide/from16 v23, v8

    move/from16 v9, v43

    goto :goto_4a

    .line 6369
    :cond_7e
    move-wide/from16 v23, v8

    move/from16 v9, v43

    .end local v8    # "now":J
    .end local v43    # "dumpOp":I
    .local v9, "dumpOp":I
    .restart local v23    # "now":J
    if-ltz v9, :cond_80

    :try_start_35
    array-length v8, v6

    if-ge v9, v8, :cond_7f

    aget-boolean v8, v6, v9

    if-nez v8, :cond_80

    .line 6363
    .end local v1    # "userId":I
    .end local v6    # "restrictedOps":[Z
    .end local v9    # "dumpOp":I
    .end local v23    # "now":J
    .restart local v8    # "now":J
    .restart local v43    # "dumpOp":I
    :cond_7f
    :goto_4a
    const/4 v6, 0x1

    .end local v8    # "now":J
    .end local v43    # "dumpOp":I
    .restart local v9    # "dumpOp":I
    .restart local v23    # "now":J
    goto/16 :goto_4e

    .line 6373
    .restart local v1    # "userId":I
    .restart local v6    # "restrictedOps":[Z
    :cond_80
    if-nez v5, :cond_81

    .line 6374
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v31, v5

    .end local v5    # "printedTokenHeader":Z
    .local v31, "printedTokenHeader":Z
    const-string v5, "  User restrictions for token "

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6375
    const/4 v5, 0x1

    .end local v31    # "printedTokenHeader":Z
    .restart local v5    # "printedTokenHeader":Z
    goto :goto_4b

    .line 6373
    :cond_81
    move/from16 v31, v5

    .line 6377
    :goto_4b
    if-nez v7, :cond_82

    .line 6378
    const-string v8, "      Restricted ops:"

    invoke-virtual {v15, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6379
    const/4 v7, 0x1

    .line 6381
    :cond_82
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 6382
    .local v8, "restrictedOpsValue":Ljava/lang/StringBuilder;
    move/from16 v31, v5

    .end local v5    # "printedTokenHeader":Z
    .restart local v31    # "printedTokenHeader":Z
    const-string v5, "["

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6383
    array-length v5, v6

    .line 6384
    .local v5, "restrictedOpCount":I
    const/16 v34, 0x0

    move/from16 v35, v7

    move/from16 v7, v34

    .local v7, "k":I
    .local v35, "printedOpsHeader":Z
    :goto_4c
    if-ge v7, v5, :cond_85

    .line 6385
    aget-boolean v34, v6, v7

    if-eqz v34, :cond_84

    .line 6386
    move/from16 v34, v5

    .end local v5    # "restrictedOpCount":I
    .local v34, "restrictedOpCount":I
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    move-object/from16 v38, v6

    const/4 v6, 0x1

    .end local v6    # "restrictedOps":[Z
    .local v38, "restrictedOps":[Z
    if-le v5, v6, :cond_83

    .line 6387
    const-string v5, ", "

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6389
    :cond_83
    invoke-static {v7}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4d

    .line 6385
    .end local v34    # "restrictedOpCount":I
    .end local v38    # "restrictedOps":[Z
    .restart local v5    # "restrictedOpCount":I
    .restart local v6    # "restrictedOps":[Z
    :cond_84
    move/from16 v34, v5

    move-object/from16 v38, v6

    const/4 v6, 0x1

    .line 6384
    .end local v5    # "restrictedOpCount":I
    .end local v6    # "restrictedOps":[Z
    .restart local v34    # "restrictedOpCount":I
    .restart local v38    # "restrictedOps":[Z
    :goto_4d
    add-int/lit8 v7, v7, 0x1

    move/from16 v5, v34

    move-object/from16 v6, v38

    goto :goto_4c

    .end local v34    # "restrictedOpCount":I
    .end local v38    # "restrictedOps":[Z
    .restart local v5    # "restrictedOpCount":I
    .restart local v6    # "restrictedOps":[Z
    :cond_85
    move/from16 v34, v5

    move-object/from16 v38, v6

    const/4 v6, 0x1

    .line 6392
    .end local v5    # "restrictedOpCount":I
    .end local v6    # "restrictedOps":[Z
    .end local v7    # "k":I
    .restart local v34    # "restrictedOpCount":I
    .restart local v38    # "restrictedOps":[Z
    const-string v5, "]"

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6393
    const-string v5, "        "

    invoke-virtual {v15, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v5, "user: "

    invoke-virtual {v15, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 6394
    const-string v5, " restricted ops: "

    invoke-virtual {v15, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v15, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    move/from16 v5, v31

    move/from16 v7, v35

    .line 6363
    .end local v1    # "userId":I
    .end local v8    # "restrictedOpsValue":Ljava/lang/StringBuilder;
    .end local v31    # "printedTokenHeader":Z
    .end local v34    # "restrictedOpCount":I
    .end local v35    # "printedOpsHeader":Z
    .end local v38    # "restrictedOps":[Z
    .local v5, "printedTokenHeader":Z
    .local v7, "printedOpsHeader":Z
    :goto_4e
    add-int/lit8 v14, v14, 0x1

    move/from16 v43, v9

    move/from16 v1, v21

    move/from16 v6, v22

    move-wide/from16 v8, v23

    goto/16 :goto_49

    .line 6446
    .end local v2    # "i":I
    .end local v3    # "token":Landroid/os/IBinder;
    .end local v4    # "restrictionState":Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;
    .end local v5    # "printedTokenHeader":Z
    .end local v7    # "printedOpsHeader":Z
    .end local v9    # "dumpOp":I
    .end local v14    # "j":I
    .end local v18    # "nowUptime":J
    .end local v20    # "globalRestrictionCount":I
    .end local v21    # "userRestrictionCount":I
    .end local v22    # "restrictionCount":I
    .end local v23    # "now":J
    .end local v33    # "needSep":Z
    .end local v36    # "nowElapsed":J
    .restart local v43    # "dumpOp":I
    :catchall_7
    move-exception v0

    move/from16 v9, v43

    move-object v1, v0

    .end local v43    # "dumpOp":I
    .restart local v9    # "dumpOp":I
    goto/16 :goto_57

    .line 6363
    .end local v9    # "dumpOp":I
    .local v1, "userRestrictionCount":I
    .restart local v2    # "i":I
    .restart local v3    # "token":Landroid/os/IBinder;
    .restart local v4    # "restrictionState":Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;
    .restart local v5    # "printedTokenHeader":Z
    .local v6, "restrictionCount":I
    .restart local v7    # "printedOpsHeader":Z
    .local v8, "now":J
    .restart local v14    # "j":I
    .restart local v18    # "nowUptime":J
    .restart local v20    # "globalRestrictionCount":I
    .restart local v33    # "needSep":Z
    .restart local v36    # "nowElapsed":J
    .restart local v43    # "dumpOp":I
    :cond_86
    move/from16 v21, v1

    move/from16 v31, v5

    move/from16 v22, v6

    move-wide/from16 v23, v8

    move/from16 v9, v43

    const/4 v6, 0x1

    .end local v1    # "userRestrictionCount":I
    .end local v5    # "printedTokenHeader":Z
    .end local v6    # "restrictionCount":I
    .end local v8    # "now":J
    .end local v43    # "dumpOp":I
    .restart local v9    # "dumpOp":I
    .restart local v21    # "userRestrictionCount":I
    .restart local v22    # "restrictionCount":I
    .restart local v23    # "now":J
    .restart local v31    # "printedTokenHeader":Z
    goto :goto_4f

    .line 6361
    .end local v7    # "printedOpsHeader":Z
    .end local v9    # "dumpOp":I
    .end local v14    # "j":I
    .end local v21    # "userRestrictionCount":I
    .end local v22    # "restrictionCount":I
    .end local v23    # "now":J
    .end local v31    # "printedTokenHeader":Z
    .restart local v1    # "userRestrictionCount":I
    .restart local v5    # "printedTokenHeader":Z
    .restart local v6    # "restrictionCount":I
    .restart local v8    # "now":J
    .restart local v43    # "dumpOp":I
    :cond_87
    move/from16 v21, v1

    move/from16 v22, v6

    move-wide/from16 v23, v8

    move/from16 v9, v43

    const/4 v6, 0x1

    .end local v1    # "userRestrictionCount":I
    .end local v6    # "restrictionCount":I
    .end local v8    # "now":J
    .end local v43    # "dumpOp":I
    .restart local v9    # "dumpOp":I
    .restart local v21    # "userRestrictionCount":I
    .restart local v22    # "restrictionCount":I
    .restart local v23    # "now":J
    goto :goto_4f

    .end local v9    # "dumpOp":I
    .end local v12    # "dumpPackage":Ljava/lang/String;
    .end local v21    # "userRestrictionCount":I
    .end local v22    # "restrictionCount":I
    .end local v23    # "now":J
    .restart local v1    # "userRestrictionCount":I
    .restart local v6    # "restrictionCount":I
    .restart local v8    # "now":J
    .restart local v42    # "dumpPackage":Ljava/lang/String;
    .restart local v43    # "dumpOp":I
    :cond_88
    move/from16 v21, v1

    move/from16 v22, v6

    move-wide/from16 v23, v8

    move-object/from16 v12, v42

    move/from16 v9, v43

    const/4 v6, 0x1

    .line 6398
    .end local v1    # "userRestrictionCount":I
    .end local v6    # "restrictionCount":I
    .end local v8    # "now":J
    .end local v42    # "dumpPackage":Ljava/lang/String;
    .end local v43    # "dumpOp":I
    .restart local v9    # "dumpOp":I
    .restart local v12    # "dumpPackage":Ljava/lang/String;
    .restart local v21    # "userRestrictionCount":I
    .restart local v22    # "restrictionCount":I
    .restart local v23    # "now":J
    :goto_4f
    iget-object v1, v4, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->perUserExcludedPackageTags:Landroid/util/SparseArray;

    if-eqz v1, :cond_89

    .line 6399
    iget-object v1, v4, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->perUserExcludedPackageTags:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    goto :goto_50

    :cond_89
    move/from16 v1, v17

    .line 6400
    .local v1, "excludedPackageCount":I
    :goto_50
    if-lez v1, :cond_90

    if-gez v9, :cond_90

    .line 6401
    new-instance v7, Landroid/util/IndentingPrintWriter;

    invoke-direct {v7, v15}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;)V

    .line 6402
    .local v7, "ipw":Landroid/util/IndentingPrintWriter;
    invoke-virtual {v7}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 6403
    const/4 v8, 0x0

    .line 6404
    .local v8, "printedPackagesHeader":Z
    const/4 v14, 0x0

    .restart local v14    # "j":I
    :goto_51
    if-ge v14, v1, :cond_8f

    .line 6405
    iget-object v6, v4, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->perUserExcludedPackageTags:Landroid/util/SparseArray;

    invoke-virtual {v6, v14}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    .line 6406
    .local v6, "userId":I
    move/from16 v31, v1

    .end local v1    # "excludedPackageCount":I
    .local v31, "excludedPackageCount":I
    iget-object v1, v4, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->perUserExcludedPackageTags:Landroid/util/SparseArray;

    .line 6407
    invoke-virtual {v1, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PackageTagsList;

    .line 6408
    .local v1, "packageNames":Landroid/os/PackageTagsList;
    if-nez v1, :cond_8a

    .line 6409
    goto :goto_53

    .line 6412
    :cond_8a
    if-eqz v12, :cond_8b

    .line 6413
    invoke-virtual {v1, v12}, Landroid/os/PackageTagsList;->includes(Ljava/lang/String;)Z

    move-result v34

    .local v34, "hasPackage":Z
    goto :goto_52

    .line 6415
    .end local v34    # "hasPackage":Z
    :cond_8b
    const/16 v34, 0x1

    .line 6417
    .restart local v34    # "hasPackage":Z
    :goto_52
    if-nez v34, :cond_8c

    .line 6418
    nop

    .line 6404
    .end local v1    # "packageNames":Landroid/os/PackageTagsList;
    .end local v6    # "userId":I
    .end local v34    # "hasPackage":Z
    :goto_53
    move-object/from16 v35, v4

    goto :goto_55

    .line 6420
    .restart local v1    # "packageNames":Landroid/os/PackageTagsList;
    .restart local v6    # "userId":I
    .restart local v34    # "hasPackage":Z
    :cond_8c
    if-nez v5, :cond_8d

    .line 6421
    move-object/from16 v35, v4

    .end local v4    # "restrictionState":Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;
    .local v35, "restrictionState":Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v38, v5

    .end local v5    # "printedTokenHeader":Z
    .local v38, "printedTokenHeader":Z
    const-string v5, "User restrictions for token "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 6422
    const/4 v5, 0x1

    .end local v38    # "printedTokenHeader":Z
    .restart local v5    # "printedTokenHeader":Z
    goto :goto_54

    .line 6420
    .end local v35    # "restrictionState":Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;
    .restart local v4    # "restrictionState":Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;
    :cond_8d
    move-object/from16 v35, v4

    move/from16 v38, v5

    .line 6425
    .end local v4    # "restrictionState":Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;
    .restart local v35    # "restrictionState":Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;
    :goto_54
    invoke-virtual {v7}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 6426
    if-nez v8, :cond_8e

    .line 6427
    const-string v4, "Excluded packages:"

    invoke-virtual {v7, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 6428
    const/4 v8, 0x1

    .line 6431
    :cond_8e
    invoke-virtual {v7}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 6432
    const-string/jumbo v4, "user: "

    invoke-virtual {v7, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 6433
    invoke-virtual {v7, v6}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 6434
    const-string v4, " packages: "

    invoke-virtual {v7, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 6436
    invoke-virtual {v7}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 6437
    invoke-virtual {v1, v7}, Landroid/os/PackageTagsList;->dump(Ljava/io/PrintWriter;)V

    .line 6439
    invoke-virtual {v7}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 6440
    invoke-virtual {v7}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 6441
    invoke-virtual {v7}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 6404
    .end local v1    # "packageNames":Landroid/os/PackageTagsList;
    .end local v6    # "userId":I
    .end local v34    # "hasPackage":Z
    :goto_55
    add-int/lit8 v14, v14, 0x1

    move/from16 v1, v31

    move-object/from16 v4, v35

    const/4 v6, 0x1

    goto :goto_51

    .end local v31    # "excludedPackageCount":I
    .end local v35    # "restrictionState":Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;
    .local v1, "excludedPackageCount":I
    .restart local v4    # "restrictionState":Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;
    :cond_8f
    move/from16 v31, v1

    move-object/from16 v35, v4

    move/from16 v38, v5

    .line 6443
    .end local v1    # "excludedPackageCount":I
    .end local v4    # "restrictionState":Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;
    .end local v5    # "printedTokenHeader":Z
    .end local v14    # "j":I
    .restart local v31    # "excludedPackageCount":I
    .restart local v35    # "restrictionState":Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;
    .restart local v38    # "printedTokenHeader":Z
    invoke-virtual {v7}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    goto :goto_56

    .line 6400
    .end local v7    # "ipw":Landroid/util/IndentingPrintWriter;
    .end local v8    # "printedPackagesHeader":Z
    .end local v31    # "excludedPackageCount":I
    .end local v35    # "restrictionState":Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;
    .end local v38    # "printedTokenHeader":Z
    .restart local v1    # "excludedPackageCount":I
    .restart local v4    # "restrictionState":Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;
    .restart local v5    # "printedTokenHeader":Z
    :cond_90
    move/from16 v31, v1

    move-object/from16 v35, v4

    .end local v1    # "excludedPackageCount":I
    .end local v4    # "restrictionState":Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;
    .restart local v31    # "excludedPackageCount":I
    .restart local v35    # "restrictionState":Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;
    goto :goto_56

    .line 6355
    .end local v9    # "dumpOp":I
    .end local v12    # "dumpPackage":Ljava/lang/String;
    .end local v21    # "userRestrictionCount":I
    .end local v22    # "restrictionCount":I
    .end local v23    # "now":J
    .end local v31    # "excludedPackageCount":I
    .end local v35    # "restrictionState":Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;
    .local v1, "userRestrictionCount":I
    .restart local v4    # "restrictionState":Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;
    .local v8, "now":J
    .restart local v42    # "dumpPackage":Ljava/lang/String;
    .restart local v43    # "dumpOp":I
    :cond_91
    move/from16 v21, v1

    move-object/from16 v35, v4

    move-wide/from16 v23, v8

    move-object/from16 v12, v42

    move/from16 v9, v43

    .line 6350
    .end local v1    # "userRestrictionCount":I
    .end local v3    # "token":Landroid/os/IBinder;
    .end local v4    # "restrictionState":Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;
    .end local v5    # "printedTokenHeader":Z
    .end local v8    # "now":J
    .end local v42    # "dumpPackage":Ljava/lang/String;
    .end local v43    # "dumpOp":I
    .restart local v9    # "dumpOp":I
    .restart local v12    # "dumpPackage":Ljava/lang/String;
    .restart local v21    # "userRestrictionCount":I
    .restart local v23    # "now":J
    :goto_56
    add-int/lit8 v2, v2, 0x1

    move/from16 v43, v9

    move-object/from16 v42, v12

    move/from16 v1, v21

    move-wide/from16 v8, v23

    goto/16 :goto_47

    .end local v9    # "dumpOp":I
    .end local v12    # "dumpPackage":Ljava/lang/String;
    .end local v21    # "userRestrictionCount":I
    .end local v23    # "now":J
    .restart local v1    # "userRestrictionCount":I
    .restart local v8    # "now":J
    .restart local v42    # "dumpPackage":Ljava/lang/String;
    .restart local v43    # "dumpOp":I
    :cond_92
    move/from16 v21, v1

    move-wide/from16 v23, v8

    move-object/from16 v12, v42

    move/from16 v9, v43

    .line 6446
    .end local v1    # "userRestrictionCount":I
    .end local v2    # "i":I
    .end local v8    # "now":J
    .end local v18    # "nowUptime":J
    .end local v20    # "globalRestrictionCount":I
    .end local v33    # "needSep":Z
    .end local v36    # "nowElapsed":J
    .end local v42    # "dumpPackage":Ljava/lang/String;
    .end local v43    # "dumpOp":I
    .restart local v9    # "dumpOp":I
    .restart local v12    # "dumpPackage":Ljava/lang/String;
    monitor-exit p0
    :try_end_35
    .catchall {:try_start_35 .. :try_end_35} :catchall_b

    .line 6449
    if-eqz v27, :cond_93

    if-nez v26, :cond_93

    .line 6450
    iget-object v1, v13, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistry;

    const-string v2, "  "

    move-object/from16 v3, p2

    move/from16 v4, v40

    move-object v5, v12

    move-object/from16 v6, v25

    move v7, v9

    move/from16 v8, v30

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/appop/HistoricalRegistry;->dump(Ljava/lang/String;Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;II)V

    .line 6453
    :cond_93
    if-eqz v28, :cond_94

    .line 6454
    const-string v1, "Discrete accesses: "

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6455
    iget-object v14, v13, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistry;

    const-string v23, "  "

    move-object/from16 v15, p2

    move/from16 v16, v40

    move-object/from16 v17, v12

    move-object/from16 v18, v25

    move/from16 v19, v30

    move/from16 v20, v9

    move-object/from16 v21, v10

    move-object/from16 v22, v11

    move/from16 v24, v29

    invoke-virtual/range {v14 .. v24}, Lcom/android/server/appop/HistoricalRegistry;->dumpDiscreteData(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;IILjava/text/SimpleDateFormat;Ljava/util/Date;Ljava/lang/String;I)V

    .line 6458
    :cond_94
    return-void

    .line 6446
    .end local v9    # "dumpOp":I
    .end local v12    # "dumpPackage":Ljava/lang/String;
    .restart local v42    # "dumpPackage":Ljava/lang/String;
    .restart local v43    # "dumpOp":I
    :catchall_8
    move-exception v0

    move-object/from16 v12, v42

    move/from16 v9, v43

    move-object v1, v0

    .end local v42    # "dumpPackage":Ljava/lang/String;
    .end local v43    # "dumpOp":I
    .restart local v9    # "dumpOp":I
    .restart local v12    # "dumpPackage":Ljava/lang/String;
    goto :goto_57

    .end local v9    # "dumpOp":I
    .end local v10    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v32    # "dumpMode":I
    .end local v40    # "dumpUid":I
    .local v5, "dumpUid":I
    .local v6, "dumpMode":I
    .local v7, "dumpPackage":Ljava/lang/String;
    .local v12, "dumpOp":I
    .local v31, "sdf":Ljava/text/SimpleDateFormat;
    :catchall_9
    move-exception v0

    move/from16 v40, v5

    move/from16 v32, v6

    move v9, v12

    move-object/from16 v10, v31

    move-object v12, v7

    move-object v1, v0

    .end local v5    # "dumpUid":I
    .end local v6    # "dumpMode":I
    .end local v7    # "dumpPackage":Ljava/lang/String;
    .end local v31    # "sdf":Ljava/text/SimpleDateFormat;
    .restart local v9    # "dumpOp":I
    .restart local v10    # "sdf":Ljava/text/SimpleDateFormat;
    .local v12, "dumpPackage":Ljava/lang/String;
    .restart local v32    # "dumpMode":I
    .restart local v40    # "dumpUid":I
    goto :goto_57

    .end local v9    # "dumpOp":I
    .end local v32    # "dumpMode":I
    .end local v40    # "dumpUid":I
    .restart local v5    # "dumpUid":I
    .restart local v6    # "dumpMode":I
    .restart local v7    # "dumpPackage":Ljava/lang/String;
    .local v12, "dumpOp":I
    :catchall_a
    move-exception v0

    move/from16 v40, v5

    move/from16 v32, v6

    move v9, v12

    move-object v12, v7

    move-object v1, v0

    .end local v5    # "dumpUid":I
    .end local v6    # "dumpMode":I
    .end local v7    # "dumpPackage":Ljava/lang/String;
    .restart local v9    # "dumpOp":I
    .local v12, "dumpPackage":Ljava/lang/String;
    .restart local v32    # "dumpMode":I
    .restart local v40    # "dumpUid":I
    :goto_57
    :try_start_36
    monitor-exit p0
    :try_end_36
    .catchall {:try_start_36 .. :try_end_36} :catchall_b

    throw v1

    :catchall_b
    move-exception v0

    move-object v1, v0

    goto :goto_57
.end method

.method public extractAsyncOps(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/app/AsyncNotedAppOp;",
            ">;"
        }
    .end annotation

    .line 3773
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3775
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 3777
    .local v0, "uid":I
    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/android/server/appop/AppOpsService;->verifyAndGetBypass(ILjava/lang/String;Ljava/lang/String;)Lcom/android/server/appop/AppOpsService$PackageVerificationResult;

    .line 3779
    monitor-enter p0

    .line 3780
    :try_start_0
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mUnforwardedAsyncNotedOps:Landroid/util/ArrayMap;

    invoke-direct {p0, p1, v0}, Lcom/android/server/appop/AppOpsService;->getAsyncNotedOpsKey(Ljava/lang/String;I)Landroid/util/Pair;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    monitor-exit p0

    return-object v1

    .line 3781
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public finishOperation(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "clientId"    # Landroid/os/IBinder;
    .param p2, "code"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "attributionTag"    # Ljava/lang/String;

    .line 4030
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mCheckOpsDelegateDispatcher:Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->finishOperation(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;)V

    .line 4032
    return-void
.end method

.method public finishProxyOperation(ILandroid/content/AttributionSource;Z)V
    .locals 1
    .param p1, "code"    # I
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .param p3, "skipProxyOperation"    # Z

    .line 4051
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mCheckOpsDelegateDispatcher:Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->finishProxyOperation(ILandroid/content/AttributionSource;Z)V

    .line 4053
    return-void
.end method

.method public getAppOpsServiceDelegate()Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;
    .locals 2

    .line 3168
    monitor-enter p0

    .line 3169
    :try_start_0
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mCheckOpsDelegateDispatcher:Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;

    .line 3170
    .local v0, "dispatcher":Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->getCheckOpsDelegate()Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit p0

    return-object v1

    .line 3171
    .end local v0    # "dispatcher":Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getHistoricalOps(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;IIJJILandroid/os/RemoteCallback;)V
    .locals 27
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "attributionTag"    # Ljava/lang/String;
    .param p5, "dataType"    # I
    .param p6, "filter"    # I
    .param p7, "beginTimeMillis"    # J
    .param p9, "endTimeMillis"    # J
    .param p11, "flags"    # I
    .param p12, "callback"    # Landroid/os/RemoteCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;IIJJI",
            "Landroid/os/RemoteCallback;",
            ")V"
        }
    .end annotation

    .line 2345
    .local p4, "opNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v12, p0

    move-object/from16 v13, p4

    move-object/from16 v15, p12

    iget-object v0, v12, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    .line 2347
    .local v14, "pm":Landroid/content/pm/PackageManager;
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p6

    move-wide/from16 v7, p7

    move-wide/from16 v9, p9

    move/from16 v11, p11

    invoke-direct/range {v1 .. v11}, Lcom/android/server/appop/AppOpsService;->ensureHistoricalOpRequestIsValid(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;IJJI)V

    .line 2349
    const-string v0, "callback cannot be null"

    invoke-static {v15, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2350
    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/app/ActivityManagerInternal;

    .line 2351
    .local v1, "ami":Landroid/app/ActivityManagerInternal;
    and-int/lit8 v0, p6, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    move/from16 v4, p1

    if-ne v4, v0, :cond_1

    move v0, v3

    goto :goto_0

    :cond_0
    move/from16 v4, p1

    :cond_1
    move v0, v2

    :goto_0
    move v5, v0

    .line 2352
    .local v5, "isSelfRequest":Z
    if-nez v5, :cond_5

    .line 2353
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/app/ActivityManagerInternal;->isUidCurrentlyInstrumented(I)Z

    move-result v6

    .line 2354
    .local v6, "isCallerInstrumented":Z
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    if-ne v0, v7, :cond_2

    move v0, v3

    goto :goto_1

    :cond_2
    move v0, v2

    :goto_1
    move v7, v0

    .line 2357
    .local v7, "isCallerSystem":Z
    :try_start_0
    iget-object v0, v12, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    .line 2358
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getPermissionControllerPackageName()Ljava/lang/String;

    move-result-object v0

    .line 2359
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    .line 2357
    invoke-virtual {v14, v0, v2, v8}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;II)I

    move-result v0

    .line 2360
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v0, v8, :cond_3

    move v2, v3

    :cond_3
    move v0, v2

    .line 2363
    .local v0, "isCallerPermissionController":Z
    nop

    .line 2365
    if-nez v7, :cond_4

    if-nez v6, :cond_4

    if-nez v0, :cond_4

    .line 2366
    iget-object v2, v12, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda12;

    invoke-direct {v3, v15}, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda12;-><init>(Landroid/os/RemoteCallback;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2367
    return-void

    .line 2370
    :cond_4
    iget-object v2, v12, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    .line 2371
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    .line 2370
    const-string v9, "android.permission.GET_APP_OPS_STATS"

    const-string v10, "getHistoricalOps"

    invoke-virtual {v2, v9, v3, v8, v10}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_2

    .line 2361
    .end local v0    # "isCallerPermissionController":Z
    :catch_0
    move-exception v0

    .line 2362
    .local v0, "doesNotHappen":Landroid/content/pm/PackageManager$NameNotFoundException;
    return-void

    .line 2374
    .end local v0    # "doesNotHappen":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v6    # "isCallerInstrumented":Z
    .end local v7    # "isCallerSystem":Z
    :cond_5
    :goto_2
    const/4 v0, 0x0

    if-eqz v13, :cond_6

    .line 2375
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v13, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    move-object/from16 v19, v2

    goto :goto_3

    :cond_6
    move-object/from16 v19, v0

    .line 2377
    .local v19, "opNamesArray":[Ljava/lang/String;
    :goto_3
    const/4 v2, 0x0

    .line 2378
    .local v2, "attributionChainExemptPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    and-int/lit8 v3, p5, 0x4

    if-eqz v3, :cond_7

    .line 2379
    iget-object v3, v12, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    .line 2380
    invoke-static {v3}, Landroid/permission/PermissionManager;->getIndicatorExemptedPackages(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v2

    .line 2383
    :cond_7
    if-eqz v2, :cond_8

    .line 2384
    nop

    .line 2385
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 2384
    invoke-interface {v2, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    move-object/from16 v25, v0

    goto :goto_4

    .line 2385
    :cond_8
    move-object/from16 v25, v0

    :goto_4
    nop

    .line 2388
    .local v25, "chainExemptPkgArray":[Ljava/lang/String;
    iget-object v0, v12, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    sget-object v3, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda0;->INSTANCE:Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda0;

    iget-object v6, v12, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistry;

    .line 2389
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    .line 2390
    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-static/range {p7 .. p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    invoke-static/range {p9 .. p10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    invoke-static/range {p11 .. p11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    .line 2388
    move-object v7, v14

    .end local v14    # "pm":Landroid/content/pm/PackageManager;
    .local v7, "pm":Landroid/content/pm/PackageManager;
    move-object v14, v3

    move-object v15, v6

    move-object/from16 v17, p2

    move-object/from16 v18, p3

    move-object/from16 v26, p12

    invoke-static/range {v14 .. v26}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainRunnable(Lcom/android/internal/util/function/DodecConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v3

    .line 2391
    invoke-interface {v3}, Lcom/android/internal/util/function/pooled/PooledRunnable;->recycleOnUse()Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v3

    .line 2388
    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2392
    return-void
.end method

.method public getHistoricalOpsFromDiskRaw(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;IIJJILandroid/os/RemoteCallback;)V
    .locals 26
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "attributionTag"    # Ljava/lang/String;
    .param p5, "dataType"    # I
    .param p6, "filter"    # I
    .param p7, "beginTimeMillis"    # J
    .param p9, "endTimeMillis"    # J
    .param p11, "flags"    # I
    .param p12, "callback"    # Landroid/os/RemoteCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;IIJJI",
            "Landroid/os/RemoteCallback;",
            ")V"
        }
    .end annotation

    .line 2398
    .local p4, "opNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v11, p0

    move-object/from16 v12, p4

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p6

    move-wide/from16 v6, p7

    move-wide/from16 v8, p9

    move/from16 v10, p11

    invoke-direct/range {v0 .. v10}, Lcom/android/server/appop/AppOpsService;->ensureHistoricalOpRequestIsValid(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;IJJI)V

    .line 2400
    const-string v0, "callback cannot be null"

    move-object/from16 v1, p12

    invoke-static {v1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2402
    iget-object v0, v11, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    .line 2403
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 2402
    const-string v4, "android.permission.MANAGE_APPOPS"

    const-string v5, "getHistoricalOps"

    invoke-virtual {v0, v4, v2, v3, v5}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 2405
    const/4 v0, 0x0

    if-eqz v12, :cond_0

    .line 2406
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v12, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    move-object/from16 v18, v2

    goto :goto_0

    :cond_0
    move-object/from16 v18, v0

    .line 2408
    .local v18, "opNamesArray":[Ljava/lang/String;
    :goto_0
    const/4 v2, 0x0

    .line 2409
    .local v2, "attributionChainExemptPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    and-int/lit8 v3, p5, 0x4

    if-eqz v3, :cond_1

    .line 2410
    iget-object v3, v11, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    .line 2411
    invoke-static {v3}, Landroid/permission/PermissionManager;->getIndicatorExemptedPackages(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v2

    .line 2414
    :cond_1
    if-eqz v2, :cond_2

    .line 2415
    nop

    .line 2416
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 2415
    invoke-interface {v2, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    move-object/from16 v24, v0

    goto :goto_1

    .line 2416
    :cond_2
    move-object/from16 v24, v0

    :goto_1
    nop

    .line 2419
    .local v24, "chainExemptPkgArray":[Ljava/lang/String;
    iget-object v0, v11, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    sget-object v13, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda1;->INSTANCE:Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda1;

    iget-object v14, v11, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistry;

    .line 2420
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    .line 2421
    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-static/range {p7 .. p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    invoke-static/range {p9 .. p10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    invoke-static/range {p11 .. p11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    .line 2419
    move-object/from16 v16, p2

    move-object/from16 v17, p3

    move-object/from16 v25, p12

    invoke-static/range {v13 .. v25}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainRunnable(Lcom/android/internal/util/function/DodecConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v3

    .line 2422
    invoke-interface {v3}, Lcom/android/internal/util/function/pooled/PooledRunnable;->recycleOnUse()Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v3

    .line 2419
    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2423
    return-void
.end method

.method public getOpsForPackage(ILjava/lang/String;[I)Ljava/util/List;
    .locals 8
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "ops"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "[I)",
            "Ljava/util/List<",
            "Landroid/app/AppOpsManager$PackageOps;",
            ">;"
        }
    .end annotation

    .line 2266
    invoke-direct {p0, p1, p2}, Lcom/android/server/appop/AppOpsService;->enforceGetAppOpsStatsPermissionIfNeeded(ILjava/lang/String;)V

    .line 2267
    invoke-static {p1, p2}, Landroid/app/AppOpsManager;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2268
    .local v7, "resolvedPackageName":Ljava/lang/String;
    if-nez v7, :cond_0

    .line 2269
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 2271
    :cond_0
    monitor-enter p0

    .line 2272
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, v7

    :try_start_0
    invoke-direct/range {v0 .. v6}, Lcom/android/server/appop/AppOpsService;->getOpsLocked(ILjava/lang/String;Ljava/lang/String;ZLandroid/app/AppOpsManager$RestrictionBypass;Z)Lcom/android/server/appop/AppOpsService$Ops;

    move-result-object v0

    .line 2274
    .local v0, "pkgOps":Lcom/android/server/appop/AppOpsService$Ops;
    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 2275
    monitor-exit p0

    return-object v1

    .line 2277
    :cond_1
    invoke-direct {p0, v0, p3}, Lcom/android/server/appop/AppOpsService;->collectOps(Lcom/android/server/appop/AppOpsService$Ops;[I)Ljava/util/ArrayList;

    move-result-object v2

    .line 2278
    .local v2, "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    if-nez v2, :cond_2

    .line 2279
    monitor-exit p0

    return-object v1

    .line 2281
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2282
    .local v1, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    new-instance v3, Landroid/app/AppOpsManager$PackageOps;

    iget-object v4, v0, Lcom/android/server/appop/AppOpsService$Ops;->packageName:Ljava/lang/String;

    iget-object v5, v0, Lcom/android/server/appop/AppOpsService$Ops;->uidState:Lcom/android/server/appop/AppOpsService$UidState;

    iget v5, v5, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    invoke-direct {v3, v4, v5, v2}, Landroid/app/AppOpsManager$PackageOps;-><init>(Ljava/lang/String;ILjava/util/List;)V

    .line 2284
    .local v3, "resPackage":Landroid/app/AppOpsManager$PackageOps;
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2285
    monitor-exit p0

    return-object v1

    .line 2286
    .end local v0    # "pkgOps":Lcom/android/server/appop/AppOpsService$Ops;
    .end local v1    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    .end local v2    # "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    .end local v3    # "resPackage":Landroid/app/AppOpsManager$PackageOps;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getPackagesForOps([I)Ljava/util/List;
    .locals 14
    .param p1, "ops"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List<",
            "Landroid/app/AppOpsManager$PackageOps;",
            ">;"
        }
    .end annotation

    .line 2229
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2230
    .local v0, "callingUid":I
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.GET_APP_OPS_STATS"

    .line 2231
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 2232
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 2230
    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/Context;->checkPermission(Ljava/lang/String;IILandroid/os/IBinder;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2233
    .local v1, "hasAllPackageAccess":Z
    :goto_0
    const/4 v2, 0x0

    .line 2234
    .local v2, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    monitor-enter p0

    .line 2235
    :try_start_0
    iget-object v3, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 2236
    .local v3, "uidStateCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v3, :cond_6

    .line 2237
    iget-object v5, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/appop/AppOpsService$UidState;

    .line 2238
    .local v5, "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    iget-object v6, v5, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    if-eqz v6, :cond_5

    iget-object v6, v5, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2239
    goto :goto_3

    .line 2241
    :cond_1
    iget-object v6, v5, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .line 2242
    .local v6, "packages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v7

    .line 2243
    .local v7, "packageCount":I
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_2
    if-ge v8, v7, :cond_5

    .line 2244
    invoke-virtual {v6, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/appop/AppOpsService$Ops;

    .line 2245
    .local v9, "pkgOps":Lcom/android/server/appop/AppOpsService$Ops;
    invoke-direct {p0, v9, p1}, Lcom/android/server/appop/AppOpsService;->collectOps(Lcom/android/server/appop/AppOpsService$Ops;[I)Ljava/util/ArrayList;

    move-result-object v10

    .line 2246
    .local v10, "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    if-eqz v10, :cond_4

    .line 2247
    if-nez v2, :cond_2

    .line 2248
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v11

    .line 2250
    :cond_2
    new-instance v11, Landroid/app/AppOpsManager$PackageOps;

    iget-object v12, v9, Lcom/android/server/appop/AppOpsService$Ops;->packageName:Ljava/lang/String;

    iget-object v13, v9, Lcom/android/server/appop/AppOpsService$Ops;->uidState:Lcom/android/server/appop/AppOpsService$UidState;

    iget v13, v13, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    invoke-direct {v11, v12, v13, v10}, Landroid/app/AppOpsManager$PackageOps;-><init>(Ljava/lang/String;ILjava/util/List;)V

    .line 2253
    .local v11, "resPackage":Landroid/app/AppOpsManager$PackageOps;
    if-nez v1, :cond_3

    iget-object v12, v9, Lcom/android/server/appop/AppOpsService$Ops;->uidState:Lcom/android/server/appop/AppOpsService$UidState;

    iget v12, v12, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    if-ne v0, v12, :cond_4

    .line 2254
    :cond_3
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2243
    .end local v9    # "pkgOps":Lcom/android/server/appop/AppOpsService$Ops;
    .end local v10    # "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    .end local v11    # "resPackage":Landroid/app/AppOpsManager$PackageOps;
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 2236
    .end local v5    # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .end local v6    # "packages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    .end local v7    # "packageCount":I
    .end local v8    # "j":I
    :cond_5
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 2259
    .end local v3    # "uidStateCount":I
    .end local v4    # "i":I
    :cond_6
    monitor-exit p0

    .line 2260
    return-object v2

    .line 2259
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public getUidOps(I[I)Ljava/util/List;
    .locals 6
    .param p1, "uid"    # I
    .param p2, "ops"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[I)",
            "Ljava/util/List<",
            "Landroid/app/AppOpsManager$PackageOps;",
            ">;"
        }
    .end annotation

    .line 2435
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.GET_APP_OPS_STATS"

    .line 2436
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 2435
    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 2437
    monitor-enter p0

    .line 2438
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/android/server/appop/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/appop/AppOpsService$UidState;

    move-result-object v0

    .line 2439
    .local v0, "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    if-nez v0, :cond_0

    .line 2440
    monitor-exit p0

    return-object v4

    .line 2442
    :cond_0
    invoke-direct {p0, v0, p2}, Lcom/android/server/appop/AppOpsService;->collectUidOps(Lcom/android/server/appop/AppOpsService$UidState;[I)Ljava/util/ArrayList;

    move-result-object v1

    .line 2443
    .local v1, "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    if-nez v1, :cond_1

    .line 2444
    monitor-exit p0

    return-object v4

    .line 2446
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2447
    .local v2, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    new-instance v3, Landroid/app/AppOpsManager$PackageOps;

    iget v5, v0, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    invoke-direct {v3, v4, v5, v1}, Landroid/app/AppOpsManager$PackageOps;-><init>(Ljava/lang/String;ILjava/util/List;)V

    .line 2449
    .local v3, "resPackage":Landroid/app/AppOpsManager$PackageOps;
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2450
    monitor-exit p0

    return-object v2

    .line 2451
    .end local v0    # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .end local v1    # "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    .end local v2    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    .end local v3    # "resPackage":Landroid/app/AppOpsManager$PackageOps;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isOperationActive(IILjava/lang/String;)Z
    .locals 9
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 6591
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/4 v1, 0x0

    if-eq v0, p2, :cond_0

    .line 6592
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.WATCH_APPOPS"

    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 6594
    return v1

    .line 6597
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/appop/AppOpsService;->verifyIncomingOp(I)V

    .line 6598
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-direct {p0, p3, v0}, Lcom/android/server/appop/AppOpsService;->verifyIncomingPackage(Ljava/lang/String;I)V

    .line 6600
    invoke-static {p2, p3}, Landroid/app/AppOpsManager;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6601
    .local v0, "resolvedPackageName":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 6602
    return v1

    .line 6605
    :cond_1
    monitor-enter p0

    .line 6606
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    move v3, p2

    move-object v4, v0

    :try_start_0
    invoke-direct/range {v2 .. v8}, Lcom/android/server/appop/AppOpsService;->getOpsLocked(ILjava/lang/String;Ljava/lang/String;ZLandroid/app/AppOpsManager$RestrictionBypass;Z)Lcom/android/server/appop/AppOpsService$Ops;

    move-result-object v2

    .line 6607
    .local v2, "pkgOps":Lcom/android/server/appop/AppOpsService$Ops;
    if-nez v2, :cond_2

    .line 6608
    monitor-exit p0

    return v1

    .line 6611
    :cond_2
    invoke-virtual {v2, p1}, Lcom/android/server/appop/AppOpsService$Ops;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appop/AppOpsService$Op;

    .line 6612
    .local v3, "op":Lcom/android/server/appop/AppOpsService$Op;
    if-nez v3, :cond_3

    .line 6613
    monitor-exit p0

    return v1

    .line 6616
    :cond_3
    invoke-virtual {v3}, Lcom/android/server/appop/AppOpsService$Op;->isRunning()Z

    move-result v1

    monitor-exit p0

    return v1

    .line 6617
    .end local v2    # "pkgOps":Lcom/android/server/appop/AppOpsService$Ops;
    .end local v3    # "op":Lcom/android/server/appop/AppOpsService$Op;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isProxying(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z
    .locals 16
    .param p1, "op"    # I
    .param p2, "proxyPackageName"    # Ljava/lang/String;
    .param p3, "proxyAttributionTag"    # Ljava/lang/String;
    .param p4, "proxiedUid"    # I
    .param p5, "proxiedPackageName"    # Ljava/lang/String;

    .line 6624
    invoke-static/range {p2 .. p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6625
    invoke-static/range {p5 .. p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6626
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    int-to-long v1, v0

    .line 6627
    .local v1, "callingUid":J
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 6629
    .local v3, "identity":J
    const/4 v0, 0x1

    :try_start_0
    new-array v5, v0, [I

    const/4 v6, 0x0

    aput p1, v5, v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    move-object/from16 v7, p0

    move/from16 v8, p4

    move-object/from16 v9, p5

    :try_start_1
    invoke-virtual {v7, v8, v9, v5}, Lcom/android/server/appop/AppOpsService;->getOpsForPackage(ILjava/lang/String;[I)Ljava/util/List;

    move-result-object v5

    .line 6631
    .local v5, "packageOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    if-eqz v5, :cond_6

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_0

    move-object/from16 v14, p2

    move-object/from16 v15, p3

    goto :goto_2

    .line 6634
    :cond_0
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/AppOpsManager$PackageOps;

    invoke-virtual {v10}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v10

    .line 6635
    .local v10, "opEntries":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v11, :cond_1

    .line 6636
    nop

    .line 6648
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6636
    return v6

    .line 6638
    :cond_1
    :try_start_2
    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/AppOpsManager$OpEntry;

    .line 6639
    .local v11, "opEntry":Landroid/app/AppOpsManager$OpEntry;
    invoke-virtual {v11}, Landroid/app/AppOpsManager$OpEntry;->isRunning()Z

    move-result v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-nez v12, :cond_2

    .line 6640
    nop

    .line 6648
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6640
    return v6

    .line 6642
    :cond_2
    const/16 v12, 0x18

    :try_start_3
    invoke-virtual {v11, v12}, Landroid/app/AppOpsManager$OpEntry;->getLastProxyInfo(I)Landroid/app/AppOpsManager$OpEventProxyInfo;

    move-result-object v12

    .line 6644
    .local v12, "proxyInfo":Landroid/app/AppOpsManager$OpEventProxyInfo;
    if-eqz v12, :cond_4

    invoke-virtual {v12}, Landroid/app/AppOpsManager$OpEventProxyInfo;->getUid()I

    move-result v13

    int-to-long v13, v13

    cmp-long v13, v1, v13

    if-nez v13, :cond_4

    .line 6645
    invoke-virtual {v12}, Landroid/app/AppOpsManager$OpEventProxyInfo;->getPackageName()Ljava/lang/String;

    move-result-object v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-object/from16 v14, p2

    :try_start_4
    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 6646
    invoke-virtual {v12}, Landroid/app/AppOpsManager$OpEventProxyInfo;->getAttributionTag()Ljava/lang/String;

    move-result-object v13
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object/from16 v15, p3

    :try_start_5
    invoke-static {v15, v13}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v13, :cond_5

    goto :goto_1

    .line 6648
    .end local v5    # "packageOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .end local v10    # "opEntries":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    .end local v11    # "opEntry":Landroid/app/AppOpsManager$OpEntry;
    .end local v12    # "proxyInfo":Landroid/app/AppOpsManager$OpEventProxyInfo;
    :catchall_0
    move-exception v0

    goto :goto_4

    .line 6645
    .restart local v5    # "packageOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v10    # "opEntries":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    .restart local v11    # "opEntry":Landroid/app/AppOpsManager$OpEntry;
    .restart local v12    # "proxyInfo":Landroid/app/AppOpsManager$OpEventProxyInfo;
    :cond_3
    move-object/from16 v15, p3

    goto :goto_0

    .line 6648
    .end local v5    # "packageOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .end local v10    # "opEntries":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    .end local v11    # "opEntry":Landroid/app/AppOpsManager$OpEntry;
    .end local v12    # "proxyInfo":Landroid/app/AppOpsManager$OpEventProxyInfo;
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 6644
    .restart local v5    # "packageOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v10    # "opEntries":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    .restart local v11    # "opEntry":Landroid/app/AppOpsManager$OpEntry;
    .restart local v12    # "proxyInfo":Landroid/app/AppOpsManager$OpEventProxyInfo;
    :cond_4
    move-object/from16 v14, p2

    move-object/from16 v15, p3

    .line 6646
    :cond_5
    :goto_0
    move v0, v6

    .line 6648
    :goto_1
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6644
    return v0

    .line 6631
    .end local v10    # "opEntries":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    .end local v11    # "opEntry":Landroid/app/AppOpsManager$OpEntry;
    .end local v12    # "proxyInfo":Landroid/app/AppOpsManager$OpEventProxyInfo;
    :cond_6
    move-object/from16 v14, p2

    move-object/from16 v15, p3

    .line 6632
    :goto_2
    nop

    .line 6648
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6632
    return v6

    .line 6648
    .end local v5    # "packageOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    :catchall_2
    move-exception v0

    move-object/from16 v14, p2

    :goto_3
    move-object/from16 v15, p3

    goto :goto_4

    :catchall_3
    move-exception v0

    move-object/from16 v7, p0

    move-object/from16 v14, p2

    move-object/from16 v15, p3

    move/from16 v8, p4

    move-object/from16 v9, p5

    :goto_4
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6649
    throw v0
.end method

.method public synthetic lambda$systemReady$0$AppOpsService(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "uid"    # I

    .line 1918
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mOnPackageUpdatedReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1919
    const-string/jumbo v3, "package"

    const/4 v4, 0x0

    invoke-static {v3, p2, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v2

    .line 1920
    const-string v3, "android.intent.extra.UID"

    invoke-virtual {v2, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    .line 1918
    invoke-virtual {v0, v1, v2}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public noteOperation(IILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)Landroid/app/SyncNotedAppOp;
    .locals 8
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "attributionTag"    # Ljava/lang/String;
    .param p5, "shouldCollectAsyncNotedOp"    # Z
    .param p6, "message"    # Ljava/lang/String;
    .param p7, "shouldCollectMessage"    # Z

    .line 3387
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mCheckOpsDelegateDispatcher:Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->noteOperation(IILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)Landroid/app/SyncNotedAppOp;

    move-result-object v0

    return-object v0
.end method

.method public noteProxyOperation(ILandroid/content/AttributionSource;ZLjava/lang/String;ZZ)Landroid/app/SyncNotedAppOp;
    .locals 7
    .param p1, "code"    # I
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .param p3, "shouldCollectAsyncNotedOp"    # Z
    .param p4, "message"    # Ljava/lang/String;
    .param p5, "shouldCollectMessage"    # Z
    .param p6, "skipProxyOperation"    # Z

    .line 3322
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mCheckOpsDelegateDispatcher:Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->noteProxyOperation(ILandroid/content/AttributionSource;ZLjava/lang/String;ZZ)Landroid/app/SyncNotedAppOp;

    move-result-object v0

    return-object v0
.end method

.method public offsetHistory(J)V
    .locals 3
    .param p1, "offsetMillis"    # J

    .line 6684
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_APPOPS"

    const-string/jumbo v2, "offsetHistory"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 6687
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistry;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/appop/HistoricalRegistry;->offsetHistory(J)V

    .line 6688
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistry;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/appop/HistoricalRegistry;->offsetDiscreteHistory(J)V

    .line 6689
    return-void
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 8
    .param p1, "in"    # Ljava/io/FileDescriptor;
    .param p2, "out"    # Ljava/io/FileDescriptor;
    .param p3, "err"    # Ljava/io/FileDescriptor;
    .param p4, "args"    # [Ljava/lang/String;
    .param p5, "callback"    # Landroid/os/ShellCallback;
    .param p6, "resultReceiver"    # Landroid/os/ResultReceiver;

    .line 5402
    new-instance v0, Lcom/android/server/appop/AppOpsService$Shell;

    invoke-direct {v0, p0, p0}, Lcom/android/server/appop/AppOpsService$Shell;-><init>(Lcom/android/internal/app/IAppOpsService;Lcom/android/server/appop/AppOpsService;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/appop/AppOpsService$Shell;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 5403
    return-void
.end method

.method public packageRemoved(ILjava/lang/String;)V
    .locals 10
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 2015
    monitor-enter p0

    .line 2016
    :try_start_0
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/appop/AppOpsService$UidState;

    .line 2017
    .local v0, "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    if-nez v0, :cond_0

    .line 2018
    monitor-exit p0

    return-void

    .line 2021
    :cond_0
    const/4 v1, 0x0

    .line 2024
    .local v1, "ops":Lcom/android/server/appop/AppOpsService$Ops;
    iget-object v2, v0, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    if-eqz v2, :cond_1

    .line 2025
    iget-object v2, v0, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appop/AppOpsService$Ops;

    move-object v1, v2

    .line 2029
    :cond_1
    if-eqz v1, :cond_2

    iget-object v2, v0, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2030
    invoke-static {p1}, Lcom/android/server/appop/AppOpsService;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-gtz v2, :cond_2

    .line 2031
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 2034
    :cond_2
    if-eqz v1, :cond_6

    .line 2035
    invoke-direct {p0}, Lcom/android/server/appop/AppOpsService;->scheduleFastWriteLocked()V

    .line 2037
    invoke-virtual {v1}, Lcom/android/server/appop/AppOpsService$Ops;->size()I

    move-result v2

    .line 2038
    .local v2, "numOps":I
    const/4 v3, 0x0

    .local v3, "opNum":I
    :goto_0
    if-ge v3, v2, :cond_6

    .line 2039
    invoke-virtual {v1, v3}, Lcom/android/server/appop/AppOpsService$Ops;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/appop/AppOpsService$Op;

    .line 2041
    .local v4, "op":Lcom/android/server/appop/AppOpsService$Op;
    iget-object v5, v4, Lcom/android/server/appop/AppOpsService$Op;->mAttributions:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    .line 2042
    .local v5, "numAttributions":I
    const/4 v6, 0x0

    .local v6, "attributionNum":I
    :goto_1
    if-ge v6, v5, :cond_5

    .line 2044
    iget-object v7, v4, Lcom/android/server/appop/AppOpsService$Op;->mAttributions:Landroid/util/ArrayMap;

    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/appop/AppOpsService$AttributedOp;

    .line 2046
    .local v7, "attributedOp":Lcom/android/server/appop/AppOpsService$AttributedOp;
    :goto_2
    invoke-virtual {v7}, Lcom/android/server/appop/AppOpsService$AttributedOp;->isRunning()Z

    move-result v8

    const/4 v9, 0x0

    if-eqz v8, :cond_3

    .line 2047
    invoke-static {v7}, Lcom/android/server/appop/AppOpsService$AttributedOp;->access$2300(Lcom/android/server/appop/AppOpsService$AttributedOp;)Landroid/util/ArrayMap;

    move-result-object v8

    invoke-virtual {v8, v9}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/IBinder;

    invoke-virtual {v7, v8}, Lcom/android/server/appop/AppOpsService$AttributedOp;->finished(Landroid/os/IBinder;)V

    goto :goto_2

    .line 2049
    :cond_3
    :goto_3
    invoke-virtual {v7}, Lcom/android/server/appop/AppOpsService$AttributedOp;->isPaused()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 2050
    invoke-static {v7}, Lcom/android/server/appop/AppOpsService$AttributedOp;->access$2400(Lcom/android/server/appop/AppOpsService$AttributedOp;)Landroid/util/ArrayMap;

    move-result-object v8

    invoke-virtual {v8, v9}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/IBinder;

    invoke-virtual {v7, v8}, Lcom/android/server/appop/AppOpsService$AttributedOp;->finished(Landroid/os/IBinder;)V

    goto :goto_3

    .line 2043
    .end local v7    # "attributedOp":Lcom/android/server/appop/AppOpsService$AttributedOp;
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 2038
    .end local v4    # "op":Lcom/android/server/appop/AppOpsService$Op;
    .end local v5    # "numAttributions":I
    .end local v6    # "attributionNum":I
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2055
    .end local v0    # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .end local v1    # "ops":Lcom/android/server/appop/AppOpsService$Ops;
    .end local v2    # "numOps":I
    .end local v3    # "opNum":I
    :cond_6
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2057
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda10;->INSTANCE:Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda10;

    iget-object v2, p0, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistry;

    .line 2058
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 2057
    invoke-static {v1, v2, v3, p2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainRunnable(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2059
    return-void

    .line 2055
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public permissionToOpCode(Ljava/lang/String;)I
    .locals 1
    .param p1, "permission"    # Ljava/lang/String;

    .line 4284
    if-nez p1, :cond_0

    .line 4285
    const/4 v0, -0x1

    return v0

    .line 4287
    :cond_0
    invoke-static {p1}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public publish()V
    .locals 2

    .line 1781
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const-string v1, "appops"

    invoke-static {v1, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1782
    const-class v0, Landroid/app/AppOpsManagerInternal;

    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mAppOpsManagerInternal:Lcom/android/server/appop/AppOpsService$AppOpsManagerInternalImpl;

    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 1783
    return-void
.end method

.method readState()V
    .locals 12

    .line 4783
    const/4 v0, -0x1

    .line 4784
    .local v0, "oldVersion":I
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mFile:Landroid/util/AtomicFile;

    monitor-enter v1

    .line 4785
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 4788
    :try_start_1
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v2
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 4792
    .local v2, "stream":Ljava/io/FileInputStream;
    nop

    .line 4793
    const/4 v3, 0x0

    .line 4794
    .local v3, "success":Z
    :try_start_2
    iget-object v4, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 4796
    :try_start_3
    invoke-static {v2}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Landroid/util/TypedXmlPullParser;

    move-result-object v4

    .line 4798
    .local v4, "parser":Landroid/util/TypedXmlPullParser;
    :goto_0
    invoke-interface {v4}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v5

    move v6, v5

    .local v6, "type":I
    const/4 v7, 0x1

    const/4 v8, 0x2

    if-eq v5, v8, :cond_0

    if-eq v6, v7, :cond_0

    goto :goto_0

    .line 4803
    :cond_0
    if-ne v6, v8, :cond_8

    .line 4807
    const/4 v5, 0x0

    const-string/jumbo v8, "v"

    const/4 v9, -0x1

    invoke-interface {v4, v5, v8, v9}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v5

    move v0, v5

    .line 4809
    invoke-interface {v4}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v5

    .line 4810
    .local v5, "outerDepth":I
    :cond_1
    :goto_1
    invoke-interface {v4}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v8

    move v6, v8

    if-eq v8, v7, :cond_6

    const/4 v8, 0x3

    if-ne v6, v8, :cond_2

    .line 4811
    invoke-interface {v4}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v9

    if-le v9, v5, :cond_6

    .line 4812
    :cond_2
    if-eq v6, v8, :cond_1

    const/4 v8, 0x4

    if-ne v6, v8, :cond_3

    .line 4813
    goto :goto_1

    .line 4816
    :cond_3
    invoke-interface {v4}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 4817
    .local v8, "tagName":Ljava/lang/String;
    const-string/jumbo v9, "pkg"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 4818
    invoke-direct {p0, v4}, Lcom/android/server/appop/AppOpsService;->readPackage(Landroid/util/TypedXmlPullParser;)V

    goto :goto_2

    .line 4819
    :cond_4
    const-string/jumbo v9, "uid"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 4820
    invoke-direct {p0, v4}, Lcom/android/server/appop/AppOpsService;->readUidOps(Landroid/util/TypedXmlPullParser;)V

    goto :goto_2

    .line 4822
    :cond_5
    const-string v9, "AppOps"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unknown element under <app-ops>: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4823
    invoke-interface {v4}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 4822
    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4824
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 4826
    .end local v8    # "tagName":Ljava/lang/String;
    :goto_2
    goto :goto_1

    .line 4827
    :cond_6
    const/4 v3, 0x1

    .line 4841
    .end local v4    # "parser":Landroid/util/TypedXmlPullParser;
    .end local v5    # "outerDepth":I
    .end local v6    # "type":I
    if-nez v3, :cond_7

    .line 4842
    :try_start_4
    iget-object v4, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 4845
    :cond_7
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 4847
    :goto_3
    goto/16 :goto_4

    .line 4846
    :catch_0
    move-exception v4

    .line 4848
    goto/16 :goto_4

    .line 4804
    .restart local v4    # "parser":Landroid/util/TypedXmlPullParser;
    .restart local v6    # "type":I
    :cond_8
    :try_start_6
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string/jumbo v7, "no start tag found"

    invoke-direct {v5, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "oldVersion":I
    .end local v2    # "stream":Ljava/io/FileInputStream;
    .end local v3    # "success":Z
    .end local p0    # "this":Lcom/android/server/appop/AppOpsService;
    throw v5
    :try_end_6
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 4841
    .end local v4    # "parser":Landroid/util/TypedXmlPullParser;
    .end local v6    # "type":I
    .restart local v0    # "oldVersion":I
    .restart local v2    # "stream":Ljava/io/FileInputStream;
    .restart local v3    # "success":Z
    .restart local p0    # "this":Lcom/android/server/appop/AppOpsService;
    :catchall_0
    move-exception v4

    goto/16 :goto_5

    .line 4838
    :catch_1
    move-exception v4

    .line 4839
    .local v4, "e":Ljava/lang/IndexOutOfBoundsException;
    :try_start_7
    const-string v5, "AppOps"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed parsing "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 4841
    .end local v4    # "e":Ljava/lang/IndexOutOfBoundsException;
    if-nez v3, :cond_9

    .line 4842
    :try_start_8
    iget-object v4, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 4845
    :cond_9
    :try_start_9
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto :goto_3

    .line 4836
    :catch_2
    move-exception v4

    .line 4837
    .local v4, "e":Ljava/io/IOException;
    :try_start_a
    const-string v5, "AppOps"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed parsing "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 4841
    .end local v4    # "e":Ljava/io/IOException;
    if-nez v3, :cond_a

    .line 4842
    :try_start_b
    iget-object v4, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 4845
    :cond_a
    :try_start_c
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    goto :goto_3

    .line 4834
    :catch_3
    move-exception v4

    .line 4835
    .local v4, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_d
    const-string v5, "AppOps"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed parsing "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 4841
    .end local v4    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    if-nez v3, :cond_b

    .line 4842
    :try_start_e
    iget-object v4, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 4845
    :cond_b
    :try_start_f
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_0
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    goto :goto_3

    .line 4832
    :catch_4
    move-exception v4

    .line 4833
    .local v4, "e":Ljava/lang/NumberFormatException;
    :try_start_10
    const-string v5, "AppOps"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed parsing "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 4841
    .end local v4    # "e":Ljava/lang/NumberFormatException;
    if-nez v3, :cond_c

    .line 4842
    :try_start_11
    iget-object v4, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    .line 4845
    :cond_c
    :try_start_12
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_0
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    goto/16 :goto_3

    .line 4830
    :catch_5
    move-exception v4

    .line 4831
    .local v4, "e":Ljava/lang/NullPointerException;
    :try_start_13
    const-string v5, "AppOps"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed parsing "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    .line 4841
    .end local v4    # "e":Ljava/lang/NullPointerException;
    if-nez v3, :cond_d

    .line 4842
    :try_start_14
    iget-object v4, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    .line 4845
    :cond_d
    :try_start_15
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_0
    .catchall {:try_start_15 .. :try_end_15} :catchall_2

    goto/16 :goto_3

    .line 4828
    :catch_6
    move-exception v4

    .line 4829
    .local v4, "e":Ljava/lang/IllegalStateException;
    :try_start_16
    const-string v5, "AppOps"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed parsing "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    .line 4841
    .end local v4    # "e":Ljava/lang/IllegalStateException;
    if-nez v3, :cond_e

    .line 4842
    :try_start_17
    iget-object v4, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_2

    .line 4845
    :cond_e
    :try_start_18
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_0
    .catchall {:try_start_18 .. :try_end_18} :catchall_2

    goto/16 :goto_3

    .line 4849
    .end local v2    # "stream":Ljava/io/FileInputStream;
    .end local v3    # "success":Z
    :goto_4
    :try_start_19
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_2

    .line 4850
    :try_start_1a
    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_3

    .line 4851
    monitor-enter p0

    .line 4852
    :try_start_1b
    invoke-direct {p0, v0}, Lcom/android/server/appop/AppOpsService;->upgradeLocked(I)V

    .line 4853
    monitor-exit p0

    .line 4854
    return-void

    .line 4853
    :catchall_1
    move-exception v1

    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_1

    throw v1

    .line 4841
    .restart local v2    # "stream":Ljava/io/FileInputStream;
    .restart local v3    # "success":Z
    :goto_5
    if-nez v3, :cond_f

    .line 4842
    :try_start_1c
    iget-object v5, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->clear()V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_2

    .line 4845
    :cond_f
    :try_start_1d
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_7
    .catchall {:try_start_1d .. :try_end_1d} :catchall_2

    .line 4847
    goto :goto_6

    .line 4846
    :catch_7
    move-exception v5

    .line 4848
    :goto_6
    nop

    .end local v0    # "oldVersion":I
    .end local p0    # "this":Lcom/android/server/appop/AppOpsService;
    :try_start_1e
    throw v4

    .line 4849
    .end local v2    # "stream":Ljava/io/FileInputStream;
    .end local v3    # "success":Z
    .restart local v0    # "oldVersion":I
    .restart local p0    # "this":Lcom/android/server/appop/AppOpsService;
    :catchall_2
    move-exception v2

    goto :goto_7

    .line 4789
    :catch_8
    move-exception v2

    .line 4790
    .local v2, "e":Ljava/io/FileNotFoundException;
    const-string v3, "AppOps"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No existing app ops "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/appop/AppOpsService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v5}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "; starting empty"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4791
    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_2

    :try_start_1f
    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_3

    return-void

    .line 4849
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :goto_7
    :try_start_20
    monitor-exit p0
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_2

    .end local v0    # "oldVersion":I
    .end local p0    # "this":Lcom/android/server/appop/AppOpsService;
    :try_start_21
    throw v2

    .line 4850
    .restart local v0    # "oldVersion":I
    .restart local p0    # "this":Lcom/android/server/appop/AppOpsService;
    :catchall_3
    move-exception v2

    monitor-exit v1
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_3

    throw v2
.end method

.method public rebootHistory(J)V
    .locals 3
    .param p1, "offlineDurationMillis"    # J

    .line 6717
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_APPOPS"

    const-string/jumbo v2, "rebootHistory"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 6720
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 6723
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistry;

    invoke-virtual {v2}, Lcom/android/server/appop/HistoricalRegistry;->shutdown()V

    .line 6725
    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    .line 6726
    invoke-static {p1, p2}, Landroid/os/SystemClock;->sleep(J)V

    .line 6729
    :cond_1
    new-instance v0, Lcom/android/server/appop/HistoricalRegistry;

    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistry;

    invoke-direct {v0, v1}, Lcom/android/server/appop/HistoricalRegistry;-><init>(Lcom/android/server/appop/HistoricalRegistry;)V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistry;

    .line 6730
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistry;

    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/appop/HistoricalRegistry;->systemReady(Landroid/content/ContentResolver;)V

    .line 6731
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistry;

    invoke-virtual {v0}, Lcom/android/server/appop/HistoricalRegistry;->persistPendingHistory()V

    .line 6732
    return-void
.end method

.method public reloadNonHistoricalState()V
    .locals 5

    .line 2427
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    .line 2428
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 2427
    const-string v3, "android.permission.MANAGE_APPOPS"

    const-string/jumbo v4, "reloadNonHistoricalState"

    invoke-virtual {v0, v3, v1, v2, v4}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 2429
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService;->writeState()V

    .line 2430
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService;->readState()V

    .line 2431
    return-void
.end method

.method public removeUser(I)V
    .locals 3
    .param p1, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6578
    const-string/jumbo v0, "removeUser"

    invoke-direct {p0, v0}, Lcom/android/server/appop/AppOpsService;->checkSystemUid(Ljava/lang/String;)V

    .line 6579
    monitor-enter p0

    .line 6580
    :try_start_0
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 6581
    .local v0, "tokenCount":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 6582
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;

    .line 6583
    .local v2, "opRestrictions":Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;
    invoke-virtual {v2, p1}, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->removeUser(I)V

    .line 6581
    .end local v2    # "opRestrictions":Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 6585
    .end local v1    # "i":I
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/appop/AppOpsService;->removeUidsForUserLocked(I)V

    .line 6586
    .end local v0    # "tokenCount":I
    monitor-exit p0

    .line 6587
    return-void

    .line 6586
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public reportRuntimeAppOpAccessMessageAndGetConfig(Ljava/lang/String;Landroid/app/SyncNotedAppOp;Ljava/lang/String;)Lcom/android/internal/app/MessageSamplingConfig;
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "notedAppOp"    # Landroid/app/SyncNotedAppOp;
    .param p3, "message"    # Ljava/lang/String;

    .line 6746
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 6747
    .local v6, "uid":I
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6748
    monitor-enter p0

    .line 6749
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/appop/AppOpsService;->switchPackageIfBootTimeOrRarelyUsedLocked(Ljava/lang/String;)V

    .line 6750
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mSampledPackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-wide/16 v7, 0x1

    if-nez v0, :cond_0

    .line 6751
    new-instance v0, Lcom/android/internal/app/MessageSamplingConfig;

    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 6752
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v3

    sget-object v4, Ljava/time/temporal/ChronoUnit;->HOURS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v3, v7, v8, v4}, Ljava/time/Instant;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/Instant;

    move-result-object v3

    invoke-virtual {v3}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/app/MessageSamplingConfig;-><init>(IIJ)V

    monitor-exit p0

    .line 6751
    return-object v0

    .line 6755
    :cond_0
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6756
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6758
    nop

    .line 6759
    invoke-virtual {p2}, Landroid/app/SyncNotedAppOp;->getOp()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v3

    .line 6760
    invoke-virtual {p2}, Landroid/app/SyncNotedAppOp;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    .line 6758
    move-object v0, p0

    move v1, v6

    move-object v2, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/appop/AppOpsService;->reportRuntimeAppOpAccessMessageInternalLocked(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 6762
    new-instance v0, Lcom/android/internal/app/MessageSamplingConfig;

    iget v1, p0, Lcom/android/server/appop/AppOpsService;->mSampledAppOpCode:I

    iget v2, p0, Lcom/android/server/appop/AppOpsService;->mAcceptableLeftDistance:I

    .line 6763
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v3

    sget-object v4, Ljava/time/temporal/ChronoUnit;->HOURS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v3, v7, v8, v4}, Ljava/time/Instant;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/Instant;

    move-result-object v3

    invoke-virtual {v3}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/app/MessageSamplingConfig;-><init>(IIJ)V

    monitor-exit p0

    .line 6762
    return-object v0

    .line 6764
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public resetAllModes(ILjava/lang/String;)V
    .locals 28
    .param p1, "reqUserId"    # I
    .param p2, "reqPackageName"    # Ljava/lang/String;

    .line 2923
    move-object/from16 v7, p0

    move-object/from16 v8, p2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    .line 2924
    .local v6, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 2925
    .local v5, "callingUid":I
    const-string/jumbo v14, "resetAllModes"

    const/4 v12, 0x1

    const/4 v13, 0x1

    const/4 v15, 0x0

    move v9, v6

    move v10, v5

    move/from16 v11, p1

    invoke-static/range {v9 .. v15}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 2928
    .end local p1    # "reqUserId":I
    .local v9, "reqUserId":I
    const/4 v1, -0x1

    .line 2929
    .local v1, "reqUid":I
    if-eqz v8, :cond_0

    .line 2931
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    const/16 v2, 0x2000

    invoke-interface {v0, v8, v2, v9}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;II)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v0

    .line 2935
    move v10, v1

    goto :goto_0

    .line 2933
    :catch_0
    move-exception v0

    .line 2938
    :cond_0
    move v10, v1

    .end local v1    # "reqUid":I
    .local v10, "reqUid":I
    :goto_0
    invoke-direct {v7, v6, v5, v10}, Lcom/android/server/appop/AppOpsService;->enforceManageAppOpsModes(III)V

    .line 2940
    const/4 v1, 0x0

    .line 2941
    .local v1, "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/appop/AppOpsService$ModeCallback;Ljava/util/ArrayList<Lcom/android/server/appop/AppOpsService$ChangeRec;>;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v0

    .line 2942
    .local v2, "allChanges":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appop/AppOpsService$ChangeRec;>;"
    monitor-enter p0

    .line 2943
    const/4 v0, 0x0

    .line 2944
    .local v0, "changed":Z
    :try_start_1
    iget-object v3, v7, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_10

    add-int/lit8 v3, v3, -0x1

    move-object v11, v1

    move-object v12, v2

    .end local v1    # "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/appop/AppOpsService$ModeCallback;Ljava/util/ArrayList<Lcom/android/server/appop/AppOpsService$ChangeRec;>;>;"
    .end local v2    # "allChanges":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appop/AppOpsService$ChangeRec;>;"
    .local v3, "i":I
    .local v11, "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/appop/AppOpsService$ModeCallback;Ljava/util/ArrayList<Lcom/android/server/appop/AppOpsService$ChangeRec;>;>;"
    .local v12, "allChanges":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appop/AppOpsService$ChangeRec;>;"
    :goto_1
    if-ltz v3, :cond_14

    .line 2945
    :try_start_2
    iget-object v1, v7, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/appop/AppOpsService$UidState;

    .line 2947
    .local v1, "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    iget-object v2, v1, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_d

    .line 2948
    .local v2, "opModes":Landroid/util/SparseIntArray;
    const/4 v4, -0x1

    if-eqz v2, :cond_7

    :try_start_3
    iget v13, v1, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    if-eq v13, v10, :cond_2

    if-ne v10, v4, :cond_1

    goto :goto_2

    :cond_1
    move-object/from16 v23, v2

    move/from16 v24, v5

    goto/16 :goto_7

    .line 2949
    :cond_2
    :goto_2
    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v13

    .line 2950
    .local v13, "uidOpCount":I
    add-int/lit8 v14, v13, -0x1

    .local v14, "j":I
    :goto_3
    if-ltz v14, :cond_6

    .line 2951
    invoke-virtual {v2, v14}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v15

    .line 2952
    .local v15, "code":I
    invoke-static {v15}, Landroid/app/AppOpsManager;->opAllowsReset(I)Z

    move-result v16

    if-eqz v16, :cond_5

    .line 2953
    invoke-virtual {v2, v14}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v16

    move/from16 p1, v16

    .line 2954
    .local p1, "previousMode":I
    invoke-virtual {v2, v14}, Landroid/util/SparseIntArray;->removeAt(I)V

    .line 2955
    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v16
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    if-gtz v16, :cond_3

    .line 2956
    const/4 v4, 0x0

    :try_start_4
    iput-object v4, v1, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_4

    .line 3033
    .end local v0    # "changed":Z
    .end local v1    # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .end local v2    # "opModes":Landroid/util/SparseIntArray;
    .end local v3    # "i":I
    .end local v13    # "uidOpCount":I
    .end local v14    # "j":I
    .end local v15    # "code":I
    .end local p1    # "previousMode":I
    :catchall_0
    move-exception v0

    move/from16 v16, v5

    move/from16 v17, v6

    move/from16 v25, v9

    move/from16 v26, v10

    move-object v1, v11

    move-object v2, v12

    goto/16 :goto_14

    .line 2958
    .restart local v0    # "changed":Z
    .restart local v1    # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .restart local v2    # "opModes":Landroid/util/SparseIntArray;
    .restart local v3    # "i":I
    .restart local v13    # "uidOpCount":I
    .restart local v14    # "j":I
    .restart local v15    # "code":I
    .restart local p1    # "previousMode":I
    :cond_3
    :goto_4
    :try_start_5
    iget v4, v1, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    invoke-static {v4}, Lcom/android/server/appop/AppOpsService;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v4

    move-object/from16 v23, v2

    .end local v2    # "opModes":Landroid/util/SparseIntArray;
    .local v23, "opModes":Landroid/util/SparseIntArray;
    array-length v2, v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    const/16 v16, 0x0

    move/from16 v24, v5

    move/from16 v5, v16

    .end local v5    # "callingUid":I
    .local v24, "callingUid":I
    :goto_5
    if-ge v5, v2, :cond_4

    :try_start_6
    aget-object v16, v4, v5

    move-object/from16 v25, v16

    .line 2959
    .local v25, "packageName":Ljava/lang/String;
    move/from16 v26, v2

    iget v2, v1, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    move-object/from16 v27, v4

    iget-object v4, v7, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    .line 2960
    invoke-virtual {v4, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v21, v4

    check-cast v21, Landroid/util/ArraySet;

    .line 2959
    move-object/from16 v16, v11

    move/from16 v17, v15

    move/from16 v18, v2

    move-object/from16 v19, v25

    move/from16 v20, p1

    invoke-static/range {v16 .. v21}, Lcom/android/server/appop/AppOpsService;->addCallbacks(Ljava/util/HashMap;IILjava/lang/String;ILandroid/util/ArraySet;)Ljava/util/HashMap;

    move-result-object v16
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 2961
    .end local v11    # "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/appop/AppOpsService$ModeCallback;Ljava/util/ArrayList<Lcom/android/server/appop/AppOpsService$ChangeRec;>;>;"
    .local v16, "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/appop/AppOpsService$ModeCallback;Ljava/util/ArrayList<Lcom/android/server/appop/AppOpsService$ChangeRec;>;>;"
    :try_start_7
    iget v2, v1, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    iget-object v4, v7, Lcom/android/server/appop/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    .line 2962
    move-object/from16 v11, v25

    .end local v25    # "packageName":Ljava/lang/String;
    .local v11, "packageName":Ljava/lang/String;
    invoke-virtual {v4, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v21, v4

    check-cast v21, Landroid/util/ArraySet;

    .line 2961
    move/from16 v17, v15

    move/from16 v18, v2

    move-object/from16 v19, v11

    move/from16 v20, p1

    invoke-static/range {v16 .. v21}, Lcom/android/server/appop/AppOpsService;->addCallbacks(Ljava/util/HashMap;IILjava/lang/String;ILandroid/util/ArraySet;)Ljava/util/HashMap;

    move-result-object v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 2964
    .end local v16    # "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/appop/AppOpsService$ModeCallback;Ljava/util/ArrayList<Lcom/android/server/appop/AppOpsService$ChangeRec;>;>;"
    .local v2, "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/appop/AppOpsService$ModeCallback;Ljava/util/ArrayList<Lcom/android/server/appop/AppOpsService$ChangeRec;>;>;"
    :try_start_8
    iget v4, v1, Lcom/android/server/appop/AppOpsService$UidState;->uid:I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-object/from16 v16, v2

    move/from16 v2, p1

    .end local p1    # "previousMode":I
    .local v2, "previousMode":I
    .restart local v16    # "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/appop/AppOpsService$ModeCallback;Ljava/util/ArrayList<Lcom/android/server/appop/AppOpsService$ChangeRec;>;>;"
    :try_start_9
    invoke-static {v12, v15, v4, v11, v2}, Lcom/android/server/appop/AppOpsService;->addChange(Ljava/util/ArrayList;IILjava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    move-object v12, v4

    .line 2958
    .end local v11    # "packageName":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    move/from16 p1, v2

    move-object/from16 v11, v16

    move/from16 v2, v26

    move-object/from16 v4, v27

    goto :goto_5

    .line 3033
    .end local v0    # "changed":Z
    .end local v1    # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .end local v3    # "i":I
    .end local v13    # "uidOpCount":I
    .end local v14    # "j":I
    .end local v15    # "code":I
    .end local v16    # "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/appop/AppOpsService$ModeCallback;Ljava/util/ArrayList<Lcom/android/server/appop/AppOpsService$ChangeRec;>;>;"
    .end local v23    # "opModes":Landroid/util/SparseIntArray;
    .local v2, "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/appop/AppOpsService$ModeCallback;Ljava/util/ArrayList<Lcom/android/server/appop/AppOpsService$ChangeRec;>;>;"
    :catchall_1
    move-exception v0

    move-object/from16 v16, v2

    move/from16 v17, v6

    move/from16 v25, v9

    move/from16 v26, v10

    move-object v2, v12

    move-object/from16 v1, v16

    move/from16 v16, v24

    .end local v2    # "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/appop/AppOpsService$ModeCallback;Ljava/util/ArrayList<Lcom/android/server/appop/AppOpsService$ChangeRec;>;>;"
    .restart local v16    # "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/appop/AppOpsService$ModeCallback;Ljava/util/ArrayList<Lcom/android/server/appop/AppOpsService$ChangeRec;>;>;"
    goto/16 :goto_14

    :catchall_2
    move-exception v0

    move/from16 v17, v6

    move/from16 v25, v9

    move/from16 v26, v10

    move-object v2, v12

    move-object/from16 v1, v16

    move/from16 v16, v24

    goto/16 :goto_14

    .end local v16    # "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/appop/AppOpsService$ModeCallback;Ljava/util/ArrayList<Lcom/android/server/appop/AppOpsService$ChangeRec;>;>;"
    .local v11, "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/appop/AppOpsService$ModeCallback;Ljava/util/ArrayList<Lcom/android/server/appop/AppOpsService$ChangeRec;>;>;"
    :catchall_3
    move-exception v0

    move/from16 v17, v6

    move/from16 v25, v9

    move/from16 v26, v10

    move-object v1, v11

    move-object v2, v12

    move/from16 v16, v24

    goto/16 :goto_14

    .line 2958
    .restart local v0    # "changed":Z
    .restart local v1    # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .restart local v3    # "i":I
    .restart local v13    # "uidOpCount":I
    .restart local v14    # "j":I
    .restart local v15    # "code":I
    .restart local v23    # "opModes":Landroid/util/SparseIntArray;
    .restart local p1    # "previousMode":I
    :cond_4
    move/from16 v2, p1

    .end local p1    # "previousMode":I
    .local v2, "previousMode":I
    goto :goto_6

    .line 2952
    .end local v23    # "opModes":Landroid/util/SparseIntArray;
    .end local v24    # "callingUid":I
    .local v2, "opModes":Landroid/util/SparseIntArray;
    .restart local v5    # "callingUid":I
    :cond_5
    move-object/from16 v23, v2

    move/from16 v24, v5

    .line 2950
    .end local v2    # "opModes":Landroid/util/SparseIntArray;
    .end local v5    # "callingUid":I
    .end local v15    # "code":I
    .restart local v23    # "opModes":Landroid/util/SparseIntArray;
    .restart local v24    # "callingUid":I
    :goto_6
    add-int/lit8 v14, v14, -0x1

    move-object/from16 v2, v23

    move/from16 v5, v24

    const/4 v4, -0x1

    goto/16 :goto_3

    .end local v23    # "opModes":Landroid/util/SparseIntArray;
    .end local v24    # "callingUid":I
    .restart local v2    # "opModes":Landroid/util/SparseIntArray;
    .restart local v5    # "callingUid":I
    :cond_6
    move-object/from16 v23, v2

    move/from16 v24, v5

    .end local v2    # "opModes":Landroid/util/SparseIntArray;
    .end local v5    # "callingUid":I
    .restart local v23    # "opModes":Landroid/util/SparseIntArray;
    .restart local v24    # "callingUid":I
    move-object v2, v12

    goto :goto_8

    .line 3033
    .end local v0    # "changed":Z
    .end local v1    # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .end local v3    # "i":I
    .end local v13    # "uidOpCount":I
    .end local v14    # "j":I
    .end local v23    # "opModes":Landroid/util/SparseIntArray;
    .end local v24    # "callingUid":I
    .restart local v5    # "callingUid":I
    :catchall_4
    move-exception v0

    move/from16 v16, v5

    move/from16 v17, v6

    move/from16 v25, v9

    move/from16 v26, v10

    move-object v1, v11

    move-object v2, v12

    .end local v5    # "callingUid":I
    .restart local v24    # "callingUid":I
    goto/16 :goto_14

    .line 2948
    .end local v24    # "callingUid":I
    .restart local v0    # "changed":Z
    .restart local v1    # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .restart local v2    # "opModes":Landroid/util/SparseIntArray;
    .restart local v3    # "i":I
    .restart local v5    # "callingUid":I
    :cond_7
    move-object/from16 v23, v2

    move/from16 v24, v5

    .line 2971
    .end local v2    # "opModes":Landroid/util/SparseIntArray;
    .end local v5    # "callingUid":I
    .restart local v23    # "opModes":Landroid/util/SparseIntArray;
    .restart local v24    # "callingUid":I
    :goto_7
    move-object v2, v12

    .end local v12    # "allChanges":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appop/AppOpsService$ChangeRec;>;"
    .local v2, "allChanges":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appop/AppOpsService$ChangeRec;>;"
    :goto_8
    :try_start_a
    iget-object v4, v1, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_c

    if-nez v4, :cond_8

    .line 2972
    goto :goto_9

    .line 2975
    :cond_8
    const/4 v4, -0x1

    if-eq v9, v4, :cond_9

    :try_start_b
    iget v4, v1, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    .line 2976
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    if-eq v9, v4, :cond_9

    .line 2978
    nop

    .line 2944
    .end local v1    # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .end local v23    # "opModes":Landroid/util/SparseIntArray;
    :goto_9
    move-object v12, v2

    move/from16 v21, v6

    move/from16 v25, v9

    move/from16 v26, v10

    goto/16 :goto_e

    .line 3033
    .end local v0    # "changed":Z
    .end local v3    # "i":I
    :catchall_5
    move-exception v0

    move/from16 v17, v6

    move/from16 v25, v9

    move/from16 v26, v10

    move-object v1, v11

    move/from16 v16, v24

    goto/16 :goto_14

    .line 2981
    .restart local v0    # "changed":Z
    .restart local v1    # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .restart local v3    # "i":I
    .restart local v23    # "opModes":Landroid/util/SparseIntArray;
    :cond_9
    :try_start_c
    iget-object v4, v1, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .line 2982
    .local v4, "packages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 2983
    .local v5, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;>;"
    const/4 v12, 0x0

    .line 2984
    .local v12, "uidChanged":Z
    :goto_a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_11

    .line 2985
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    .line 2986
    .local v13, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_c

    .line 2987
    .local v14, "packageName":Ljava/lang/String;
    if-eqz v8, :cond_a

    :try_start_d
    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    if-nez v15, :cond_a

    .line 2989
    goto :goto_a

    .line 2991
    :cond_a
    :try_start_e
    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/appop/AppOpsService$Ops;

    .line 2992
    .local v15, "pkgOps":Lcom/android/server/appop/AppOpsService$Ops;
    invoke-virtual {v15}, Lcom/android/server/appop/AppOpsService$Ops;->size()I

    move-result v16

    add-int/lit8 v16, v16, -0x1

    move/from16 p1, v0

    move/from16 v0, v16

    .local v0, "j":I
    .local p1, "changed":Z
    :goto_b
    if-ltz v0, :cond_f

    .line 2993
    invoke-virtual {v15, v0}, Lcom/android/server/appop/AppOpsService$Ops;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/appop/AppOpsService$Op;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_c

    move-object/from16 v21, v16

    .line 2994
    .local v21, "curOp":Lcom/android/server/appop/AppOpsService$Op;
    move-object/from16 v22, v4

    move-object/from16 v4, v21

    move/from16 v21, v6

    .end local v6    # "callingPid":I
    .local v4, "curOp":Lcom/android/server/appop/AppOpsService$Op;
    .local v21, "callingPid":I
    .local v22, "packages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    :try_start_f
    iget v6, v4, Lcom/android/server/appop/AppOpsService$Op;->op:I

    invoke-direct {v7, v6}, Lcom/android/server/appop/AppOpsService;->shouldDeferResetOpToDpm(I)Z

    move-result v6
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_a

    if-eqz v6, :cond_b

    .line 2995
    :try_start_10
    iget v6, v4, Lcom/android/server/appop/AppOpsService$Op;->op:I

    invoke-direct {v7, v6, v8, v9}, Lcom/android/server/appop/AppOpsService;->deferResetOpToDpm(ILjava/lang/String;I)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    .line 2996
    move/from16 v25, v9

    move/from16 v26, v10

    move-object v10, v15

    goto/16 :goto_c

    .line 3033
    .end local v0    # "j":I
    .end local v1    # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .end local v3    # "i":I
    .end local v4    # "curOp":Lcom/android/server/appop/AppOpsService$Op;
    .end local v5    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;>;"
    .end local v12    # "uidChanged":Z
    .end local v13    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    .end local v14    # "packageName":Ljava/lang/String;
    .end local v15    # "pkgOps":Lcom/android/server/appop/AppOpsService$Ops;
    .end local v22    # "packages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    .end local v23    # "opModes":Landroid/util/SparseIntArray;
    .end local p1    # "changed":Z
    :catchall_6
    move-exception v0

    move/from16 v25, v9

    move/from16 v26, v10

    move-object v1, v11

    move/from16 v17, v21

    move/from16 v16, v24

    goto/16 :goto_14

    .line 2998
    .restart local v0    # "j":I
    .restart local v1    # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .restart local v3    # "i":I
    .restart local v4    # "curOp":Lcom/android/server/appop/AppOpsService$Op;
    .restart local v5    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;>;"
    .restart local v12    # "uidChanged":Z
    .restart local v13    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    .restart local v14    # "packageName":Ljava/lang/String;
    .restart local v15    # "pkgOps":Lcom/android/server/appop/AppOpsService$Ops;
    .restart local v22    # "packages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    .restart local v23    # "opModes":Landroid/util/SparseIntArray;
    .restart local p1    # "changed":Z
    :cond_b
    :try_start_11
    iget v6, v4, Lcom/android/server/appop/AppOpsService$Op;->op:I

    invoke-static {v6}, Landroid/app/AppOpsManager;->opAllowsReset(I)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 2999
    invoke-static {v4}, Lcom/android/server/appop/AppOpsService$Op;->access$400(Lcom/android/server/appop/AppOpsService$Op;)I

    move-result v6

    iget v8, v4, Lcom/android/server/appop/AppOpsService$Op;->op:I

    invoke-static {v8}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v8

    if-eq v6, v8, :cond_d

    .line 3000
    invoke-static {v4}, Lcom/android/server/appop/AppOpsService$Op;->access$400(Lcom/android/server/appop/AppOpsService$Op;)I

    move-result v6

    .line 3001
    .local v6, "previousMode":I
    iget v8, v4, Lcom/android/server/appop/AppOpsService$Op;->op:I

    invoke-static {v8}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v8

    invoke-static {v4, v8}, Lcom/android/server/appop/AppOpsService$Op;->access$402(Lcom/android/server/appop/AppOpsService$Op;I)I

    .line 3002
    const/4 v8, 0x1

    .line 3003
    .end local p1    # "changed":Z
    .local v8, "changed":Z
    const/4 v12, 0x1

    .line 3004
    move/from16 p1, v8

    .end local v8    # "changed":Z
    .restart local p1    # "changed":Z
    iget-object v8, v4, Lcom/android/server/appop/AppOpsService$Op;->uidState:Lcom/android/server/appop/AppOpsService$UidState;

    iget v8, v8, Lcom/android/server/appop/AppOpsService$UidState;->uid:I
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_a

    .line 3005
    .local v8, "uid":I
    move/from16 v25, v9

    .end local v9    # "reqUserId":I
    .local v25, "reqUserId":I
    :try_start_12
    iget v9, v4, Lcom/android/server/appop/AppOpsService$Op;->op:I
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_9

    move/from16 v26, v10

    .end local v10    # "reqUid":I
    .local v26, "reqUid":I
    :try_start_13
    iget-object v10, v7, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    move/from16 v27, v12

    .end local v12    # "uidChanged":Z
    .local v27, "uidChanged":Z
    iget v12, v4, Lcom/android/server/appop/AppOpsService$Op;->op:I

    .line 3006
    invoke-virtual {v10, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    move-object/from16 v20, v10

    check-cast v20, Landroid/util/ArraySet;

    .line 3005
    move-object v10, v15

    .end local v15    # "pkgOps":Lcom/android/server/appop/AppOpsService$Ops;
    .local v10, "pkgOps":Lcom/android/server/appop/AppOpsService$Ops;
    move-object v15, v11

    move/from16 v16, v9

    move/from16 v17, v8

    move-object/from16 v18, v14

    move/from16 v19, v6

    invoke-static/range {v15 .. v20}, Lcom/android/server/appop/AppOpsService;->addCallbacks(Ljava/util/HashMap;IILjava/lang/String;ILandroid/util/ArraySet;)Ljava/util/HashMap;

    move-result-object v15
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_b

    .line 3007
    .end local v11    # "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/appop/AppOpsService$ModeCallback;Ljava/util/ArrayList<Lcom/android/server/appop/AppOpsService$ChangeRec;>;>;"
    .local v15, "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/appop/AppOpsService$ModeCallback;Ljava/util/ArrayList<Lcom/android/server/appop/AppOpsService$ChangeRec;>;>;"
    :try_start_14
    iget v9, v4, Lcom/android/server/appop/AppOpsService$Op;->op:I

    iget-object v11, v7, Lcom/android/server/appop/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    .line 3008
    invoke-virtual {v11, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    move-object/from16 v20, v11

    check-cast v20, Landroid/util/ArraySet;

    .line 3007
    move/from16 v16, v9

    move/from16 v17, v8

    move-object/from16 v18, v14

    move/from16 v19, v6

    invoke-static/range {v15 .. v20}, Lcom/android/server/appop/AppOpsService;->addCallbacks(Ljava/util/HashMap;IILjava/lang/String;ILandroid/util/ArraySet;)Ljava/util/HashMap;

    move-result-object v9
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_8

    .line 3010
    .end local v15    # "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/appop/AppOpsService$ModeCallback;Ljava/util/ArrayList<Lcom/android/server/appop/AppOpsService$ChangeRec;>;>;"
    .local v9, "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/appop/AppOpsService$ModeCallback;Ljava/util/ArrayList<Lcom/android/server/appop/AppOpsService$ChangeRec;>;>;"
    :try_start_15
    iget v11, v4, Lcom/android/server/appop/AppOpsService$Op;->op:I

    invoke-static {v2, v11, v8, v14, v6}, Lcom/android/server/appop/AppOpsService;->addChange(Ljava/util/ArrayList;IILjava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v11

    move-object v2, v11

    .line 3012
    invoke-virtual {v4}, Lcom/android/server/appop/AppOpsService$Op;->removeAttributionsWithNoTime()V

    .line 3013
    iget-object v11, v4, Lcom/android/server/appop/AppOpsService$Op;->mAttributions:Landroid/util/ArrayMap;

    invoke-virtual {v11}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_c

    .line 3014
    invoke-virtual {v10, v0}, Lcom/android/server/appop/AppOpsService$Ops;->removeAt(I)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_7

    .line 2992
    .end local v4    # "curOp":Lcom/android/server/appop/AppOpsService$Op;
    .end local v6    # "previousMode":I
    .end local v8    # "uid":I
    :cond_c
    move-object v4, v2

    move-object v11, v9

    move/from16 v12, v27

    move/from16 v2, p1

    goto :goto_d

    .line 3033
    .end local v0    # "j":I
    .end local v1    # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .end local v3    # "i":I
    .end local v5    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;>;"
    .end local v10    # "pkgOps":Lcom/android/server/appop/AppOpsService$Ops;
    .end local v13    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    .end local v14    # "packageName":Ljava/lang/String;
    .end local v22    # "packages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    .end local v23    # "opModes":Landroid/util/SparseIntArray;
    .end local v27    # "uidChanged":Z
    .end local p1    # "changed":Z
    :catchall_7
    move-exception v0

    move-object v1, v9

    move/from16 v17, v21

    move/from16 v16, v24

    goto/16 :goto_14

    .end local v9    # "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/appop/AppOpsService$ModeCallback;Ljava/util/ArrayList<Lcom/android/server/appop/AppOpsService$ChangeRec;>;>;"
    .restart local v15    # "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/appop/AppOpsService$ModeCallback;Ljava/util/ArrayList<Lcom/android/server/appop/AppOpsService$ChangeRec;>;>;"
    :catchall_8
    move-exception v0

    move-object v1, v15

    move/from16 v17, v21

    move/from16 v16, v24

    goto/16 :goto_14

    .end local v15    # "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/appop/AppOpsService$ModeCallback;Ljava/util/ArrayList<Lcom/android/server/appop/AppOpsService$ChangeRec;>;>;"
    .end local v26    # "reqUid":I
    .local v10, "reqUid":I
    .restart local v11    # "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/appop/AppOpsService$ModeCallback;Ljava/util/ArrayList<Lcom/android/server/appop/AppOpsService$ChangeRec;>;>;"
    :catchall_9
    move-exception v0

    move/from16 v26, v10

    move-object v1, v11

    move/from16 v17, v21

    move/from16 v16, v24

    .end local v10    # "reqUid":I
    .restart local v26    # "reqUid":I
    goto/16 :goto_14

    .line 2999
    .end local v25    # "reqUserId":I
    .end local v26    # "reqUid":I
    .restart local v0    # "j":I
    .restart local v1    # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .restart local v3    # "i":I
    .restart local v4    # "curOp":Lcom/android/server/appop/AppOpsService$Op;
    .restart local v5    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;>;"
    .local v9, "reqUserId":I
    .restart local v10    # "reqUid":I
    .restart local v12    # "uidChanged":Z
    .restart local v13    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    .restart local v14    # "packageName":Ljava/lang/String;
    .local v15, "pkgOps":Lcom/android/server/appop/AppOpsService$Ops;
    .restart local v22    # "packages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    .restart local v23    # "opModes":Landroid/util/SparseIntArray;
    .restart local p1    # "changed":Z
    :cond_d
    move/from16 v25, v9

    move/from16 v26, v10

    move-object v10, v15

    .end local v9    # "reqUserId":I
    .end local v15    # "pkgOps":Lcom/android/server/appop/AppOpsService$Ops;
    .local v10, "pkgOps":Lcom/android/server/appop/AppOpsService$Ops;
    .restart local v25    # "reqUserId":I
    .restart local v26    # "reqUid":I
    goto :goto_c

    .line 2998
    .end local v25    # "reqUserId":I
    .end local v26    # "reqUid":I
    .restart local v9    # "reqUserId":I
    .local v10, "reqUid":I
    .restart local v15    # "pkgOps":Lcom/android/server/appop/AppOpsService$Ops;
    :cond_e
    move/from16 v25, v9

    move/from16 v26, v10

    move-object v10, v15

    .line 2992
    .end local v4    # "curOp":Lcom/android/server/appop/AppOpsService$Op;
    .end local v9    # "reqUserId":I
    .end local v15    # "pkgOps":Lcom/android/server/appop/AppOpsService$Ops;
    .local v10, "pkgOps":Lcom/android/server/appop/AppOpsService$Ops;
    .restart local v25    # "reqUserId":I
    .restart local v26    # "reqUid":I
    :goto_c
    move-object v4, v2

    move/from16 v2, p1

    .end local p1    # "changed":Z
    .local v2, "changed":Z
    .local v4, "allChanges":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appop/AppOpsService$ChangeRec;>;"
    :goto_d
    add-int/lit8 v0, v0, -0x1

    move-object/from16 v8, p2

    move/from16 p1, v2

    move-object v2, v4

    move-object v15, v10

    move/from16 v6, v21

    move-object/from16 v4, v22

    move/from16 v9, v25

    move/from16 v10, v26

    goto/16 :goto_b

    .line 3033
    .end local v0    # "j":I
    .end local v1    # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .end local v3    # "i":I
    .end local v4    # "allChanges":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appop/AppOpsService$ChangeRec;>;"
    .end local v5    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;>;"
    .end local v12    # "uidChanged":Z
    .end local v13    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    .end local v14    # "packageName":Ljava/lang/String;
    .end local v22    # "packages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    .end local v23    # "opModes":Landroid/util/SparseIntArray;
    .end local v25    # "reqUserId":I
    .end local v26    # "reqUid":I
    .local v2, "allChanges":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appop/AppOpsService$ChangeRec;>;"
    .restart local v9    # "reqUserId":I
    .local v10, "reqUid":I
    :catchall_a
    move-exception v0

    move/from16 v25, v9

    move/from16 v26, v10

    move-object v1, v11

    move/from16 v17, v21

    move/from16 v16, v24

    .end local v9    # "reqUserId":I
    .end local v10    # "reqUid":I
    .restart local v25    # "reqUserId":I
    .restart local v26    # "reqUid":I
    goto/16 :goto_14

    .line 2992
    .end local v21    # "callingPid":I
    .end local v25    # "reqUserId":I
    .end local v26    # "reqUid":I
    .restart local v0    # "j":I
    .restart local v1    # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .restart local v3    # "i":I
    .local v4, "packages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    .restart local v5    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;>;"
    .local v6, "callingPid":I
    .restart local v9    # "reqUserId":I
    .restart local v10    # "reqUid":I
    .restart local v12    # "uidChanged":Z
    .restart local v13    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    .restart local v14    # "packageName":Ljava/lang/String;
    .restart local v15    # "pkgOps":Lcom/android/server/appop/AppOpsService$Ops;
    .restart local v23    # "opModes":Landroid/util/SparseIntArray;
    .restart local p1    # "changed":Z
    :cond_f
    move-object/from16 v22, v4

    move/from16 v21, v6

    move/from16 v25, v9

    move/from16 v26, v10

    move-object v10, v15

    .line 3018
    .end local v0    # "j":I
    .end local v4    # "packages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    .end local v6    # "callingPid":I
    .end local v9    # "reqUserId":I
    .end local v15    # "pkgOps":Lcom/android/server/appop/AppOpsService$Ops;
    .local v10, "pkgOps":Lcom/android/server/appop/AppOpsService$Ops;
    .restart local v21    # "callingPid":I
    .restart local v22    # "packages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    .restart local v25    # "reqUserId":I
    .restart local v26    # "reqUid":I
    :try_start_16
    invoke-virtual {v10}, Lcom/android/server/appop/AppOpsService$Ops;->size()I

    move-result v0

    if-nez v0, :cond_10

    .line 3019
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    .line 3021
    .end local v10    # "pkgOps":Lcom/android/server/appop/AppOpsService$Ops;
    .end local v13    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    .end local v14    # "packageName":Ljava/lang/String;
    :cond_10
    move/from16 v0, p1

    move-object/from16 v8, p2

    move/from16 v6, v21

    move-object/from16 v4, v22

    move/from16 v9, v25

    move/from16 v10, v26

    goto/16 :goto_a

    .line 3022
    .end local v21    # "callingPid":I
    .end local v22    # "packages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    .end local v25    # "reqUserId":I
    .end local v26    # "reqUid":I
    .end local p1    # "changed":Z
    .local v0, "changed":Z
    .restart local v4    # "packages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    .restart local v6    # "callingPid":I
    .restart local v9    # "reqUserId":I
    .local v10, "reqUid":I
    :cond_11
    move-object/from16 v22, v4

    move/from16 v21, v6

    move/from16 v25, v9

    move/from16 v26, v10

    .end local v4    # "packages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    .end local v6    # "callingPid":I
    .end local v9    # "reqUserId":I
    .end local v10    # "reqUid":I
    .restart local v21    # "callingPid":I
    .restart local v22    # "packages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    .restart local v25    # "reqUserId":I
    .restart local v26    # "reqUid":I
    invoke-virtual {v1}, Lcom/android/server/appop/AppOpsService$UidState;->isDefault()Z

    move-result v4

    if-eqz v4, :cond_12

    .line 3023
    iget-object v4, v7, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    iget v6, v1, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->remove(I)V

    .line 3025
    :cond_12
    if-eqz v12, :cond_13

    .line 3026
    iget-object v4, v7, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v1, v4}, Lcom/android/server/appop/AppOpsService$UidState;->evalForegroundOps(Landroid/util/SparseArray;)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_b

    .line 2944
    .end local v1    # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .end local v5    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;>;"
    .end local v12    # "uidChanged":Z
    .end local v22    # "packages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    .end local v23    # "opModes":Landroid/util/SparseIntArray;
    :cond_13
    move-object v12, v2

    .end local v2    # "allChanges":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appop/AppOpsService$ChangeRec;>;"
    .local v12, "allChanges":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appop/AppOpsService$ChangeRec;>;"
    :goto_e
    add-int/lit8 v3, v3, -0x1

    move-object/from16 v8, p2

    move/from16 v6, v21

    move/from16 v5, v24

    move/from16 v9, v25

    move/from16 v10, v26

    goto/16 :goto_1

    .line 3033
    .end local v0    # "changed":Z
    .end local v3    # "i":I
    .end local v12    # "allChanges":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appop/AppOpsService$ChangeRec;>;"
    .restart local v2    # "allChanges":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appop/AppOpsService$ChangeRec;>;"
    :catchall_b
    move-exception v0

    move-object v1, v11

    move/from16 v17, v21

    move/from16 v16, v24

    goto/16 :goto_14

    .end local v21    # "callingPid":I
    .end local v25    # "reqUserId":I
    .end local v26    # "reqUid":I
    .restart local v6    # "callingPid":I
    .restart local v9    # "reqUserId":I
    .restart local v10    # "reqUid":I
    :catchall_c
    move-exception v0

    move/from16 v25, v9

    move/from16 v26, v10

    move/from16 v17, v6

    move-object v1, v11

    move/from16 v16, v24

    .end local v6    # "callingPid":I
    .end local v9    # "reqUserId":I
    .end local v10    # "reqUid":I
    .restart local v21    # "callingPid":I
    .restart local v25    # "reqUserId":I
    .restart local v26    # "reqUid":I
    goto/16 :goto_14

    .end local v2    # "allChanges":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appop/AppOpsService$ChangeRec;>;"
    .end local v21    # "callingPid":I
    .end local v24    # "callingUid":I
    .end local v25    # "reqUserId":I
    .end local v26    # "reqUid":I
    .local v5, "callingUid":I
    .restart local v6    # "callingPid":I
    .restart local v9    # "reqUserId":I
    .restart local v10    # "reqUid":I
    .restart local v12    # "allChanges":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appop/AppOpsService$ChangeRec;>;"
    :catchall_d
    move-exception v0

    move/from16 v25, v9

    move/from16 v26, v10

    move/from16 v16, v5

    move/from16 v17, v6

    move-object v1, v11

    move-object v2, v12

    .end local v5    # "callingUid":I
    .end local v6    # "callingPid":I
    .end local v9    # "reqUserId":I
    .end local v10    # "reqUid":I
    .restart local v21    # "callingPid":I
    .restart local v24    # "callingUid":I
    .restart local v25    # "reqUserId":I
    .restart local v26    # "reqUid":I
    goto/16 :goto_14

    .line 2944
    .end local v21    # "callingPid":I
    .end local v24    # "callingUid":I
    .end local v25    # "reqUserId":I
    .end local v26    # "reqUid":I
    .restart local v0    # "changed":Z
    .restart local v3    # "i":I
    .restart local v5    # "callingUid":I
    .restart local v6    # "callingPid":I
    .restart local v9    # "reqUserId":I
    .restart local v10    # "reqUid":I
    :cond_14
    move/from16 v24, v5

    move/from16 v21, v6

    move/from16 v25, v9

    move/from16 v26, v10

    .line 3030
    .end local v3    # "i":I
    .end local v5    # "callingUid":I
    .end local v6    # "callingPid":I
    .end local v9    # "reqUserId":I
    .end local v10    # "reqUid":I
    .restart local v21    # "callingPid":I
    .restart local v24    # "callingUid":I
    .restart local v25    # "reqUserId":I
    .restart local v26    # "reqUid":I
    if-eqz v0, :cond_15

    .line 3031
    :try_start_17
    invoke-direct/range {p0 .. p0}, Lcom/android/server/appop/AppOpsService;->scheduleFastWriteLocked()V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_e

    goto :goto_f

    .line 3033
    .end local v0    # "changed":Z
    :catchall_e
    move-exception v0

    move-object v1, v11

    move-object v2, v12

    move/from16 v17, v21

    move/from16 v16, v24

    goto/16 :goto_14

    :cond_15
    :goto_f
    :try_start_18
    monitor-exit p0
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_f

    .line 3034
    if-eqz v11, :cond_18

    .line 3035
    invoke-virtual {v11}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Ljava/util/Map$Entry;

    .line 3036
    .local v8, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/appop/AppOpsService$ModeCallback;Ljava/util/ArrayList<Lcom/android/server/appop/AppOpsService$ChangeRec;>;>;"
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/android/server/appop/AppOpsService$ModeCallback;

    .line 3037
    .local v9, "cb":Lcom/android/server/appop/AppOpsService$ModeCallback;
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Ljava/util/ArrayList;

    .line 3038
    .local v10, "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appop/AppOpsService$ChangeRec;>;"
    const/4 v1, 0x0

    move v13, v1

    .local v13, "i":I
    :goto_11
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v13, v1, :cond_16

    .line 3039
    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Lcom/android/server/appop/AppOpsService$ChangeRec;

    .line 3040
    .local v14, "rep":Lcom/android/server/appop/AppOpsService$ChangeRec;
    iget-object v15, v7, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda7;->INSTANCE:Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda7;

    iget v2, v14, Lcom/android/server/appop/AppOpsService$ChangeRec;->op:I

    .line 3042
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v2, v14, Lcom/android/server/appop/AppOpsService$ChangeRec;->uid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, v14, Lcom/android/server/appop/AppOpsService$ChangeRec;->pkg:Ljava/lang/String;

    .line 3040
    move-object/from16 v2, p0

    move-object v3, v9

    move/from16 v16, v24

    .end local v24    # "callingUid":I
    .local v16, "callingUid":I
    move/from16 v17, v21

    .end local v21    # "callingPid":I
    .local v17, "callingPid":I
    invoke-static/range {v1 .. v6}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuintConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v15, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3038
    .end local v14    # "rep":Lcom/android/server/appop/AppOpsService$ChangeRec;
    add-int/lit8 v13, v13, 0x1

    goto :goto_11

    .end local v16    # "callingUid":I
    .end local v17    # "callingPid":I
    .restart local v21    # "callingPid":I
    .restart local v24    # "callingUid":I
    :cond_16
    move/from16 v17, v21

    move/from16 v16, v24

    .line 3044
    .end local v8    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/appop/AppOpsService$ModeCallback;Ljava/util/ArrayList<Lcom/android/server/appop/AppOpsService$ChangeRec;>;>;"
    .end local v9    # "cb":Lcom/android/server/appop/AppOpsService$ModeCallback;
    .end local v10    # "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appop/AppOpsService$ChangeRec;>;"
    .end local v13    # "i":I
    .end local v21    # "callingPid":I
    .end local v24    # "callingUid":I
    .restart local v16    # "callingUid":I
    .restart local v17    # "callingPid":I
    goto :goto_10

    .line 3035
    .end local v16    # "callingUid":I
    .end local v17    # "callingPid":I
    .restart local v21    # "callingPid":I
    .restart local v24    # "callingUid":I
    :cond_17
    move/from16 v17, v21

    move/from16 v16, v24

    .end local v21    # "callingPid":I
    .end local v24    # "callingUid":I
    .restart local v16    # "callingUid":I
    .restart local v17    # "callingPid":I
    goto :goto_12

    .line 3034
    .end local v16    # "callingUid":I
    .end local v17    # "callingPid":I
    .restart local v21    # "callingPid":I
    .restart local v24    # "callingUid":I
    :cond_18
    move/from16 v17, v21

    move/from16 v16, v24

    .line 3047
    .end local v21    # "callingPid":I
    .end local v24    # "callingUid":I
    .restart local v16    # "callingUid":I
    .restart local v17    # "callingPid":I
    :goto_12
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3048
    .local v0, "numChanges":I
    const/4 v1, 0x0

    move v8, v1

    .local v8, "i":I
    :goto_13
    if-ge v8, v0, :cond_19

    .line 3049
    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/android/server/appop/AppOpsService$ChangeRec;

    .line 3050
    .local v9, "change":Lcom/android/server/appop/AppOpsService$ChangeRec;
    iget v2, v9, Lcom/android/server/appop/AppOpsService$ChangeRec;->op:I

    iget v3, v9, Lcom/android/server/appop/AppOpsService$ChangeRec;->uid:I

    iget-object v4, v9, Lcom/android/server/appop/AppOpsService$ChangeRec;->pkg:Ljava/lang/String;

    iget v1, v9, Lcom/android/server/appop/AppOpsService$ChangeRec;->op:I

    .line 3051
    invoke-static {v1}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v5

    iget v6, v9, Lcom/android/server/appop/AppOpsService$ChangeRec;->previous_mode:I

    .line 3050
    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/appop/AppOpsService;->notifyOpChangedSync(IILjava/lang/String;II)V

    .line 3048
    .end local v9    # "change":Lcom/android/server/appop/AppOpsService$ChangeRec;
    add-int/lit8 v8, v8, 0x1

    goto :goto_13

    .line 3053
    .end local v8    # "i":I
    :cond_19
    return-void

    .line 3033
    .end local v0    # "numChanges":I
    .end local v16    # "callingUid":I
    .end local v17    # "callingPid":I
    .restart local v21    # "callingPid":I
    .restart local v24    # "callingUid":I
    :catchall_f
    move-exception v0

    move/from16 v17, v21

    move/from16 v16, v24

    move-object v1, v11

    move-object v2, v12

    .end local v21    # "callingPid":I
    .end local v24    # "callingUid":I
    .restart local v16    # "callingUid":I
    .restart local v17    # "callingPid":I
    goto :goto_14

    .end local v11    # "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/appop/AppOpsService$ModeCallback;Ljava/util/ArrayList<Lcom/android/server/appop/AppOpsService$ChangeRec;>;>;"
    .end local v12    # "allChanges":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appop/AppOpsService$ChangeRec;>;"
    .end local v16    # "callingUid":I
    .end local v17    # "callingPid":I
    .end local v25    # "reqUserId":I
    .end local v26    # "reqUid":I
    .local v1, "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/appop/AppOpsService$ModeCallback;Ljava/util/ArrayList<Lcom/android/server/appop/AppOpsService$ChangeRec;>;>;"
    .restart local v2    # "allChanges":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appop/AppOpsService$ChangeRec;>;"
    .restart local v5    # "callingUid":I
    .restart local v6    # "callingPid":I
    .local v9, "reqUserId":I
    .local v10, "reqUid":I
    :catchall_10
    move-exception v0

    move/from16 v16, v5

    move/from16 v17, v6

    move/from16 v25, v9

    move/from16 v26, v10

    .end local v5    # "callingUid":I
    .end local v6    # "callingPid":I
    .end local v9    # "reqUserId":I
    .end local v10    # "reqUid":I
    .restart local v16    # "callingUid":I
    .restart local v17    # "callingPid":I
    .restart local v25    # "reqUserId":I
    .restart local v26    # "reqUid":I
    :goto_14
    :try_start_19
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_11

    throw v0

    :catchall_11
    move-exception v0

    goto :goto_14
.end method

.method public resetHistoryParameters()V
    .locals 3

    .line 6701
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_APPOPS"

    const-string/jumbo v2, "resetHistoryParameters"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 6704
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistry;

    invoke-virtual {v0}, Lcom/android/server/appop/HistoricalRegistry;->resetHistoryParameters()V

    .line 6705
    return-void
.end method

.method public resetPackageOpsNoHistory(Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 6654
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_APPOPS"

    const-string/jumbo v2, "resetPackageOpsNoHistory"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 6656
    monitor-enter p0

    .line 6657
    :try_start_0
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    const/4 v1, 0x0

    .line 6658
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    .line 6657
    invoke-virtual {v0, p1, v1, v2}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;II)I

    move-result v0

    .line 6659
    .local v0, "uid":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 6660
    monitor-exit p0

    return-void

    .line 6662
    :cond_0
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/appop/AppOpsService$UidState;

    .line 6663
    .local v1, "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    if-eqz v1, :cond_3

    iget-object v2, v1, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    if-nez v2, :cond_1

    goto :goto_0

    .line 6666
    :cond_1
    iget-object v2, v1, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appop/AppOpsService$Ops;

    .line 6667
    .local v2, "removedOps":Lcom/android/server/appop/AppOpsService$Ops;
    if-eqz v2, :cond_2

    .line 6668
    invoke-direct {p0}, Lcom/android/server/appop/AppOpsService;->scheduleFastWriteLocked()V

    .line 6670
    .end local v0    # "uid":I
    .end local v1    # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .end local v2    # "removedOps":Lcom/android/server/appop/AppOpsService$Ops;
    :cond_2
    monitor-exit p0

    .line 6671
    return-void

    .line 6664
    .restart local v0    # "uid":I
    .restart local v1    # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    :cond_3
    :goto_0
    monitor-exit p0

    return-void

    .line 6670
    .end local v0    # "uid":I
    .end local v1    # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setAppOpsPolicy(Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;)V
    .locals 3
    .param p1, "policy"    # Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    .line 2008
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mCheckOpsDelegateDispatcher:Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;

    .line 2009
    .local v0, "oldDispatcher":Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;
    if-eqz v0, :cond_0

    .line 2010
    invoke-static {v0}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->access$2200(Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;)Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2011
    .local v1, "delegate":Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;
    :goto_0
    new-instance v2, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;

    invoke-direct {v2, p0, p1, v1}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;-><init>(Lcom/android/server/appop/AppOpsService;Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;)V

    iput-object v2, p0, Lcom/android/server/appop/AppOpsService;->mCheckOpsDelegateDispatcher:Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;

    .line 2012
    return-void
.end method

.method public setAppOpsServiceDelegate(Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;)V
    .locals 3
    .param p1, "delegate"    # Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    .line 3175
    monitor-enter p0

    .line 3176
    :try_start_0
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mCheckOpsDelegateDispatcher:Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;

    .line 3177
    .local v0, "oldDispatcher":Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->access$2500(Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;)Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 3178
    .local v1, "policy":Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;
    :goto_0
    new-instance v2, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;

    invoke-direct {v2, p0, v1, p1}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;-><init>(Lcom/android/server/appop/AppOpsService;Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;)V

    iput-object v2, p0, Lcom/android/server/appop/AppOpsService;->mCheckOpsDelegateDispatcher:Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;

    .line 3179
    .end local v0    # "oldDispatcher":Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;
    .end local v1    # "policy":Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;
    monitor-exit p0

    .line 3180
    return-void

    .line 3179
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setAudioRestriction(IIII[Ljava/lang/String;)V
    .locals 8
    .param p1, "code"    # I
    .param p2, "usage"    # I
    .param p3, "uid"    # I
    .param p4, "mode"    # I
    .param p5, "exceptionPackages"    # [Ljava/lang/String;

    .line 3266
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-direct {p0, v0, v1, p3}, Lcom/android/server/appop/AppOpsService;->enforceManageAppOpsModes(III)V

    .line 3267
    invoke-direct {p0, p3}, Lcom/android/server/appop/AppOpsService;->verifyIncomingUid(I)V

    .line 3268
    invoke-direct {p0, p1}, Lcom/android/server/appop/AppOpsService;->verifyIncomingOp(I)V

    .line 3270
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService;->mAudioRestrictionManager:Lcom/android/server/appop/AudioRestrictionManager;

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/appop/AudioRestrictionManager;->setZenModeAudioRestriction(IIII[Ljava/lang/String;)V

    .line 3273
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda9;->INSTANCE:Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda9;

    .line 3274
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, -0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 3273
    invoke-static {v1, p0, v2, v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3275
    return-void
.end method

.method public setCameraAudioRestriction(I)V
    .locals 4
    .param p1, "mode"    # I

    .line 3280
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/4 v2, -0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/appop/AppOpsService;->enforceManageAppOpsModes(III)V

    .line 3282
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mAudioRestrictionManager:Lcom/android/server/appop/AudioRestrictionManager;

    invoke-virtual {v0, p1}, Lcom/android/server/appop/AudioRestrictionManager;->setCameraAudioRestriction(I)V

    .line 3284
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda9;->INSTANCE:Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda9;

    .line 3286
    const/16 v2, 0x1c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, -0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 3284
    invoke-static {v1, p0, v2, v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3287
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda9;->INSTANCE:Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda9;

    .line 3289
    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 3287
    invoke-static {v1, p0, v2, v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3290
    return-void
.end method

.method public setHistoryParameters(IJI)V
    .locals 9
    .param p1, "mode"    # I
    .param p2, "baseSnapshotInterval"    # J
    .param p4, "compressionStep"    # I

    .line 6676
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_APPOPS"

    const-string/jumbo v2, "setHistoryParameters"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 6679
    iget-object v3, p0, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistry;

    int-to-long v7, p4

    move v4, p1

    move-wide v5, p2

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/appop/HistoricalRegistry;->setHistoryParameters(IJJ)V

    .line 6680
    return-void
.end method

.method public setMode(IILjava/lang/String;I)V
    .locals 6
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "mode"    # I

    .line 2756
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/appop/AppOpsService;->setMode(IILjava/lang/String;ILcom/android/internal/app/IAppOpsCallback;)V

    .line 2757
    return-void
.end method

.method public setUidMode(III)V
    .locals 1
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "mode"    # I

    .line 2498
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/appop/AppOpsService;->setUidMode(IIILcom/android/internal/app/IAppOpsCallback;)V

    .line 2499
    return-void
.end method

.method public setUserRestriction(IZLandroid/os/IBinder;ILandroid/os/PackageTagsList;)V
    .locals 5
    .param p1, "code"    # I
    .param p2, "restricted"    # Z
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "userHandle"    # I
    .param p5, "excludedPackageTags"    # Landroid/os/PackageTagsList;

    .line 6477
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 6478
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    .line 6479
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/4 v3, 0x0

    .line 6478
    const-string v4, "android.permission.MANAGE_APP_OPS_RESTRICTIONS"

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 6481
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq p4, v0, :cond_2

    .line 6482
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    .line 6484
    const-string v1, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 6486
    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Need INTERACT_ACROSS_USERS_FULL or INTERACT_ACROSS_USERS to interact cross user "

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6490
    :cond_2
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/server/appop/AppOpsService;->verifyIncomingOp(I)V

    .line 6491
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6492
    invoke-direct/range {p0 .. p5}, Lcom/android/server/appop/AppOpsService;->setUserRestrictionNoCheck(IZLandroid/os/IBinder;ILandroid/os/PackageTagsList;)V

    .line 6493
    return-void
.end method

.method public setUserRestrictions(Landroid/os/Bundle;Landroid/os/IBinder;I)V
    .locals 8
    .param p1, "restrictions"    # Landroid/os/Bundle;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "userHandle"    # I

    .line 6462
    const-string/jumbo v0, "setUserRestrictions"

    invoke-direct {p0, v0}, Lcom/android/server/appop/AppOpsService;->checkSystemUid(Ljava/lang/String;)V

    .line 6463
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6464
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6465
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x74

    if-ge v0, v1, :cond_1

    .line 6466
    invoke-static {v0}, Landroid/app/AppOpsManager;->opToRestriction(I)Ljava/lang/String;

    move-result-object v7

    .line 6467
    .local v7, "restriction":Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 6468
    const/4 v1, 0x0

    invoke-virtual {p1, v7, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const/4 v6, 0x0

    move-object v1, p0

    move v2, v0

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/server/appop/AppOpsService;->setUserRestrictionNoCheck(IZLandroid/os/IBinder;ILandroid/os/PackageTagsList;)V

    .line 6465
    .end local v7    # "restriction":Ljava/lang/String;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6472
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public shouldCollectNotes(I)Z
    .locals 5
    .param p1, "opCode"    # I

    .line 4292
    const/4 v0, 0x0

    const/16 v1, 0x73

    const-string/jumbo v2, "opCode"

    invoke-static {p1, v0, v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 4294
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToPermission(I)Ljava/lang/String;

    move-result-object v1

    .line 4295
    .local v1, "perm":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 4296
    return v0

    .line 4301
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4304
    .local v2, "permInfo":Landroid/content/pm/PermissionInfo;
    nop

    .line 4306
    invoke-virtual {v2}, Landroid/content/pm/PermissionInfo;->getProtection()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    .line 4307
    invoke-virtual {v2}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result v3

    and-int/lit8 v3, v3, 0x40

    if-eqz v3, :cond_2

    :cond_1
    move v0, v4

    .line 4306
    :cond_2
    return v0

    .line 4302
    .end local v2    # "permInfo":Landroid/content/pm/PermissionInfo;
    :catch_0
    move-exception v2

    .line 4303
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v0
.end method

.method public shutdown()V
    .locals 3

    .line 2147
    const-string v0, "AppOps"

    const-string v1, "Writing app ops before shutdown..."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2148
    const/4 v0, 0x0

    .line 2149
    .local v0, "doWrite":Z
    monitor-enter p0

    .line 2150
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/appop/AppOpsService;->mWriteScheduled:Z

    if-eqz v1, :cond_0

    .line 2151
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/appop/AppOpsService;->mWriteScheduled:Z

    .line 2152
    iput-boolean v1, p0, Lcom/android/server/appop/AppOpsService;->mFastWriteScheduled:Z

    .line 2153
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/appop/AppOpsService;->mWriteRunner:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2154
    const/4 v0, 0x1

    .line 2156
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2157
    if-eqz v0, :cond_1

    .line 2158
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService;->writeState()V

    .line 2164
    :cond_1
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistry;

    invoke-virtual {v1}, Lcom/android/server/appop/HistoricalRegistry;->shutdown()V

    .line 2165
    return-void

    .line 2156
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public startOperation(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZII)Landroid/app/SyncNotedAppOp;
    .locals 13
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "code"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "attributionTag"    # Ljava/lang/String;
    .param p6, "startIfModeDefault"    # Z
    .param p7, "shouldCollectAsyncNotedOp"    # Z
    .param p8, "message"    # Ljava/lang/String;
    .param p9, "shouldCollectMessage"    # Z
    .param p10, "attributionFlags"    # I
    .param p11, "attributionChainId"    # I

    .line 3790
    move-object v0, p0

    iget-object v1, v0, Lcom/android/server/appop/AppOpsService;->mCheckOpsDelegateDispatcher:Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;

    move-object v2, p1

    move v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    invoke-virtual/range {v1 .. v12}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->startOperation(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZII)Landroid/app/SyncNotedAppOp;

    move-result-object v1

    return-object v1
.end method

.method public startProxyOperation(ILandroid/content/AttributionSource;ZZLjava/lang/String;ZZIII)Landroid/app/SyncNotedAppOp;
    .locals 12
    .param p1, "code"    # I
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .param p3, "startIfModeDefault"    # Z
    .param p4, "shouldCollectAsyncNotedOp"    # Z
    .param p5, "message"    # Ljava/lang/String;
    .param p6, "shouldCollectMessage"    # Z
    .param p7, "skipProxyOperation"    # Z
    .param p8, "proxyAttributionFlags"    # I
    .param p9, "proxiedAttributionFlags"    # I
    .param p10, "attributionChainId"    # I

    .line 3833
    move-object v0, p0

    iget-object v1, v0, Lcom/android/server/appop/AppOpsService;->mCheckOpsDelegateDispatcher:Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;

    move v2, p1

    move-object v3, p2

    move v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    invoke-virtual/range {v1 .. v11}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->startProxyOperation(ILandroid/content/AttributionSource;ZZLjava/lang/String;ZZIII)Landroid/app/SyncNotedAppOp;

    move-result-object v1

    return-object v1
.end method

.method public startWatchingActive([ILcom/android/internal/app/IAppOpsActiveCallback;)V
    .locals 12
    .param p1, "ops"    # [I
    .param p2, "callback"    # Lcom/android/internal/app/IAppOpsActiveCallback;

    .line 3507
    const/4 v0, -0x1

    .line 3508
    .local v0, "watchedUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 3509
    .local v7, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    .line 3510
    .local v8, "callingPid":I
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.WATCH_APPOPS"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 3512
    move v0, v7

    .line 3514
    :cond_0
    const/4 v9, 0x0

    if-eqz p1, :cond_1

    .line 3515
    const/16 v1, 0x73

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid op code in: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3516
    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3515
    invoke-static {p1, v9, v1, v2}, Lcom/android/internal/util/Preconditions;->checkArrayElementsInRange([IIILjava/lang/String;)[I

    .line 3518
    :cond_1
    if-nez p2, :cond_2

    .line 3519
    return-void

    .line 3521
    :cond_2
    monitor-enter p0

    .line 3522
    :try_start_0
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mActiveWatchers:Landroid/util/ArrayMap;

    invoke-interface {p2}, Lcom/android/internal/app/IAppOpsActiveCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    .line 3523
    .local v1, "callbacks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/appop/AppOpsService$ActiveCallback;>;"
    if-nez v1, :cond_3

    .line 3524
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    move-object v1, v2

    .line 3525
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService;->mActiveWatchers:Landroid/util/ArrayMap;

    invoke-interface {p2}, Lcom/android/internal/app/IAppOpsActiveCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v10, v1

    goto :goto_0

    .line 3523
    :cond_3
    move-object v10, v1

    .line 3527
    .end local v1    # "callbacks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/appop/AppOpsService$ActiveCallback;>;"
    .local v10, "callbacks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/appop/AppOpsService$ActiveCallback;>;"
    :goto_0
    new-instance v11, Lcom/android/server/appop/AppOpsService$ActiveCallback;

    move-object v1, v11

    move-object v2, p0

    move-object v3, p2

    move v4, v0

    move v5, v7

    move v6, v8

    invoke-direct/range {v1 .. v6}, Lcom/android/server/appop/AppOpsService$ActiveCallback;-><init>(Lcom/android/server/appop/AppOpsService;Lcom/android/internal/app/IAppOpsActiveCallback;III)V

    move-object v1, v11

    .line 3529
    .local v1, "activeCallback":Lcom/android/server/appop/AppOpsService$ActiveCallback;
    array-length v2, p1

    :goto_1
    if-ge v9, v2, :cond_4

    aget v3, p1, v9

    .line 3530
    .local v3, "op":I
    invoke-virtual {v10, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3529
    .end local v3    # "op":I
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 3532
    .end local v1    # "activeCallback":Lcom/android/server/appop/AppOpsService$ActiveCallback;
    .end local v10    # "callbacks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/appop/AppOpsService$ActiveCallback;>;"
    :cond_4
    monitor-exit p0

    .line 3533
    return-void

    .line 3532
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public startWatchingAsyncNoted(Ljava/lang/String;Lcom/android/internal/app/IAppOpsAsyncNotedCallback;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/android/internal/app/IAppOpsAsyncNotedCallback;

    .line 3722
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3723
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3725
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 3726
    .local v0, "uid":I
    invoke-direct {p0, p1, v0}, Lcom/android/server/appop/AppOpsService;->getAsyncNotedOpsKey(Ljava/lang/String;I)Landroid/util/Pair;

    move-result-object v1

    .line 3728
    .local v1, "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    invoke-direct {p0, v0, p1, v2}, Lcom/android/server/appop/AppOpsService;->verifyAndGetBypass(ILjava/lang/String;Ljava/lang/String;)Lcom/android/server/appop/AppOpsService$PackageVerificationResult;

    .line 3730
    monitor-enter p0

    .line 3731
    :try_start_0
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService;->mAsyncOpWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/RemoteCallbackList;

    .line 3732
    .local v2, "callbacks":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Lcom/android/internal/app/IAppOpsAsyncNotedCallback;>;"
    if-nez v2, :cond_0

    .line 3733
    new-instance v3, Lcom/android/server/appop/AppOpsService$7;

    invoke-direct {v3, p0, v1}, Lcom/android/server/appop/AppOpsService$7;-><init>(Lcom/android/server/appop/AppOpsService;Landroid/util/Pair;)V

    move-object v2, v3

    .line 3743
    iget-object v3, p0, Lcom/android/server/appop/AppOpsService;->mAsyncOpWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3746
    :cond_0
    invoke-virtual {v2, p2}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 3747
    nop

    .end local v2    # "callbacks":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Lcom/android/internal/app/IAppOpsAsyncNotedCallback;>;"
    monitor-exit p0

    .line 3748
    return-void

    .line 3747
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public startWatchingMode(ILjava/lang/String;Lcom/android/internal/app/IAppOpsCallback;)V
    .locals 1
    .param p1, "op"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/android/internal/app/IAppOpsCallback;

    .line 3079
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/server/appop/AppOpsService;->startWatchingModeWithFlags(ILjava/lang/String;ILcom/android/internal/app/IAppOpsCallback;)V

    .line 3080
    return-void
.end method

.method public startWatchingModeWithFlags(ILjava/lang/String;ILcom/android/internal/app/IAppOpsCallback;)V
    .locals 20
    .param p1, "op"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p4, "callback"    # Lcom/android/internal/app/IAppOpsCallback;

    .line 3085
    move-object/from16 v9, p0

    move/from16 v10, p1

    move-object/from16 v11, p2

    const/4 v12, -0x1

    .line 3086
    .local v12, "watchedUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v13

    .line 3087
    .local v13, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v14

    .line 3092
    .local v14, "callingPid":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid op code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v15, -0x1

    const/16 v1, 0x73

    invoke-static {v10, v15, v1, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 3094
    if-nez p4, :cond_0

    .line 3095
    return-void

    .line 3097
    :cond_0
    if-eqz v11, :cond_1

    .line 3098
    invoke-direct {v9, v11}, Lcom/android/server/appop/AppOpsService;->filterAppAccessUnlocked(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    move/from16 v16, v0

    .line 3099
    .local v16, "mayWatchPackageName":Z
    monitor-enter p0

    .line 3100
    if-eq v10, v15, :cond_2

    :try_start_0
    invoke-static/range {p1 .. p1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v0

    goto :goto_1

    .line 3136
    :catchall_0
    move-exception v0

    goto/16 :goto_4

    .line 3100
    :cond_2
    move v0, v10

    .line 3103
    .local v0, "switchOp":I
    :goto_1
    and-int/lit8 v1, p3, 0x2

    if-nez v1, :cond_4

    .line 3104
    if-ne v10, v15, :cond_3

    .line 3105
    const/4 v1, -0x2

    move/from16 v17, v1

    .local v1, "notifiedOps":I
    goto :goto_2

    .line 3107
    .end local v1    # "notifiedOps":I
    :cond_3
    move/from16 v1, p1

    move/from16 v17, v1

    .restart local v1    # "notifiedOps":I
    goto :goto_2

    .line 3110
    .end local v1    # "notifiedOps":I
    :cond_4
    move v1, v0

    move/from16 v17, v1

    .line 3113
    .local v17, "notifiedOps":I
    :goto_2
    iget-object v1, v9, Lcom/android/server/appop/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-interface/range {p4 .. p4}, Lcom/android/internal/app/IAppOpsCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/appop/AppOpsService$ModeCallback;

    move-object/from16 v18, v1

    .line 3114
    .local v18, "cb":Lcom/android/server/appop/AppOpsService$ModeCallback;
    if-nez v18, :cond_5

    .line 3115
    new-instance v19, Lcom/android/server/appop/AppOpsService$ModeCallback;

    move-object/from16 v1, v19

    move-object/from16 v2, p0

    move-object/from16 v3, p4

    move v4, v12

    move/from16 v5, p3

    move/from16 v6, v17

    move v7, v13

    move v8, v14

    invoke-direct/range {v1 .. v8}, Lcom/android/server/appop/AppOpsService$ModeCallback;-><init>(Lcom/android/server/appop/AppOpsService;Lcom/android/internal/app/IAppOpsCallback;IIIII)V

    move-object/from16 v1, v19

    .line 3117
    .end local v18    # "cb":Lcom/android/server/appop/AppOpsService$ModeCallback;
    .local v1, "cb":Lcom/android/server/appop/AppOpsService$ModeCallback;
    iget-object v2, v9, Lcom/android/server/appop/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-interface/range {p4 .. p4}, Lcom/android/internal/app/IAppOpsCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 3114
    .end local v1    # "cb":Lcom/android/server/appop/AppOpsService$ModeCallback;
    .restart local v18    # "cb":Lcom/android/server/appop/AppOpsService$ModeCallback;
    :cond_5
    move-object/from16 v1, v18

    .line 3119
    .end local v18    # "cb":Lcom/android/server/appop/AppOpsService$ModeCallback;
    .restart local v1    # "cb":Lcom/android/server/appop/AppOpsService$ModeCallback;
    :goto_3
    if-eq v0, v15, :cond_7

    .line 3120
    iget-object v2, v9, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    .line 3121
    .local v2, "cbs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    if-nez v2, :cond_6

    .line 3122
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    move-object v2, v3

    .line 3123
    iget-object v3, v9, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v3, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3125
    :cond_6
    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 3127
    .end local v2    # "cbs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    :cond_7
    if-eqz v16, :cond_9

    .line 3128
    iget-object v2, v9, Lcom/android/server/appop/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v2, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    .line 3129
    .restart local v2    # "cbs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    if-nez v2, :cond_8

    .line 3130
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    move-object v2, v3

    .line 3131
    iget-object v3, v9, Lcom/android/server/appop/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v3, v11, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3133
    :cond_8
    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 3135
    .end local v2    # "cbs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/android/server/appop/AppOpsService;->evalAllForegroundOpsLocked()V

    .line 3136
    .end local v0    # "switchOp":I
    .end local v1    # "cb":Lcom/android/server/appop/AppOpsService$ModeCallback;
    .end local v17    # "notifiedOps":I
    monitor-exit p0

    .line 3137
    return-void

    .line 3136
    :goto_4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public startWatchingNoted([ILcom/android/internal/app/IAppOpsNotedCallback;)V
    .locals 12
    .param p1, "ops"    # [I
    .param p2, "callback"    # Lcom/android/internal/app/IAppOpsNotedCallback;

    .line 3603
    const/4 v0, -0x1

    .line 3604
    .local v0, "watchedUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 3605
    .local v7, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    .line 3606
    .local v8, "callingPid":I
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.WATCH_APPOPS"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 3608
    move v0, v7

    .line 3610
    :cond_0
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    const-string v2, "Ops cannot be null or empty"

    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 3611
    const/16 v1, 0x73

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid op code in: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3612
    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3611
    const/4 v9, 0x0

    invoke-static {p1, v9, v1, v2}, Lcom/android/internal/util/Preconditions;->checkArrayElementsInRange([IIILjava/lang/String;)[I

    .line 3613
    const-string v1, "Callback cannot be null"

    invoke-static {p2, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3614
    monitor-enter p0

    .line 3615
    :try_start_0
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mNotedWatchers:Landroid/util/ArrayMap;

    invoke-interface {p2}, Lcom/android/internal/app/IAppOpsNotedCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    .line 3616
    .local v1, "callbacks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/appop/AppOpsService$NotedCallback;>;"
    if-nez v1, :cond_1

    .line 3617
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    move-object v1, v2

    .line 3618
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService;->mNotedWatchers:Landroid/util/ArrayMap;

    invoke-interface {p2}, Lcom/android/internal/app/IAppOpsNotedCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v10, v1

    goto :goto_0

    .line 3616
    :cond_1
    move-object v10, v1

    .line 3620
    .end local v1    # "callbacks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/appop/AppOpsService$NotedCallback;>;"
    .local v10, "callbacks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/appop/AppOpsService$NotedCallback;>;"
    :goto_0
    new-instance v11, Lcom/android/server/appop/AppOpsService$NotedCallback;

    move-object v1, v11

    move-object v2, p0

    move-object v3, p2

    move v4, v0

    move v5, v7

    move v6, v8

    invoke-direct/range {v1 .. v6}, Lcom/android/server/appop/AppOpsService$NotedCallback;-><init>(Lcom/android/server/appop/AppOpsService;Lcom/android/internal/app/IAppOpsNotedCallback;III)V

    move-object v1, v11

    .line 3622
    .local v1, "notedCallback":Lcom/android/server/appop/AppOpsService$NotedCallback;
    array-length v2, p1

    :goto_1
    if-ge v9, v2, :cond_2

    aget v3, p1, v9

    .line 3623
    .local v3, "op":I
    invoke-virtual {v10, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3622
    .end local v3    # "op":I
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 3625
    .end local v1    # "notedCallback":Lcom/android/server/appop/AppOpsService$NotedCallback;
    .end local v10    # "callbacks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/appop/AppOpsService$NotedCallback;>;"
    :cond_2
    monitor-exit p0

    .line 3626
    return-void

    .line 3625
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public startWatchingStarted([ILcom/android/internal/app/IAppOpsStartedCallback;)V
    .locals 12
    .param p1, "ops"    # [I
    .param p2, "callback"    # Lcom/android/internal/app/IAppOpsStartedCallback;

    .line 3555
    const/4 v0, -0x1

    .line 3556
    .local v0, "watchedUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 3557
    .local v7, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    .line 3558
    .local v8, "callingPid":I
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.WATCH_APPOPS"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 3560
    move v0, v7

    .line 3563
    :cond_0
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    const-string v2, "Ops cannot be null or empty"

    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 3564
    const/16 v1, 0x73

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid op code in: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3565
    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3564
    const/4 v9, 0x0

    invoke-static {p1, v9, v1, v2}, Lcom/android/internal/util/Preconditions;->checkArrayElementsInRange([IIILjava/lang/String;)[I

    .line 3566
    const-string v1, "Callback cannot be null"

    invoke-static {p2, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3568
    monitor-enter p0

    .line 3569
    :try_start_0
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mStartedWatchers:Landroid/util/ArrayMap;

    invoke-interface {p2}, Lcom/android/internal/app/IAppOpsStartedCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    .line 3570
    .local v1, "callbacks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/appop/AppOpsService$StartedCallback;>;"
    if-nez v1, :cond_1

    .line 3571
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    move-object v1, v2

    .line 3572
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService;->mStartedWatchers:Landroid/util/ArrayMap;

    invoke-interface {p2}, Lcom/android/internal/app/IAppOpsStartedCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v10, v1

    goto :goto_0

    .line 3570
    :cond_1
    move-object v10, v1

    .line 3575
    .end local v1    # "callbacks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/appop/AppOpsService$StartedCallback;>;"
    .local v10, "callbacks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/appop/AppOpsService$StartedCallback;>;"
    :goto_0
    new-instance v11, Lcom/android/server/appop/AppOpsService$StartedCallback;

    move-object v1, v11

    move-object v2, p0

    move-object v3, p2

    move v4, v0

    move v5, v7

    move v6, v8

    invoke-direct/range {v1 .. v6}, Lcom/android/server/appop/AppOpsService$StartedCallback;-><init>(Lcom/android/server/appop/AppOpsService;Lcom/android/internal/app/IAppOpsStartedCallback;III)V

    move-object v1, v11

    .line 3577
    .local v1, "startedCallback":Lcom/android/server/appop/AppOpsService$StartedCallback;
    array-length v2, p1

    :goto_1
    if-ge v9, v2, :cond_2

    aget v3, p1, v9

    .line 3578
    .local v3, "op":I
    invoke-virtual {v10, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3577
    .end local v3    # "op":I
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 3580
    .end local v1    # "startedCallback":Lcom/android/server/appop/AppOpsService$StartedCallback;
    .end local v10    # "callbacks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/appop/AppOpsService$StartedCallback;>;"
    :cond_2
    monitor-exit p0

    .line 3581
    return-void

    .line 3580
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public stopWatchingActive(Lcom/android/internal/app/IAppOpsActiveCallback;)V
    .locals 4
    .param p1, "callback"    # Lcom/android/internal/app/IAppOpsActiveCallback;

    .line 3537
    if-nez p1, :cond_0

    .line 3538
    return-void

    .line 3540
    :cond_0
    monitor-enter p0

    .line 3541
    :try_start_0
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mActiveWatchers:Landroid/util/ArrayMap;

    .line 3542
    invoke-interface {p1}, Lcom/android/internal/app/IAppOpsActiveCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 3543
    .local v0, "activeCallbacks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/appop/AppOpsService$ActiveCallback;>;"
    if-nez v0, :cond_1

    .line 3544
    monitor-exit p0

    return-void

    .line 3546
    :cond_1
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 3547
    .local v1, "callbackCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 3548
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appop/AppOpsService$ActiveCallback;

    invoke-virtual {v3}, Lcom/android/server/appop/AppOpsService$ActiveCallback;->destroy()V

    .line 3547
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3550
    .end local v0    # "activeCallbacks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/appop/AppOpsService$ActiveCallback;>;"
    .end local v1    # "callbackCount":I
    .end local v2    # "i":I
    :cond_2
    monitor-exit p0

    .line 3551
    return-void

    .line 3550
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public stopWatchingAsyncNoted(Ljava/lang/String;Lcom/android/internal/app/IAppOpsAsyncNotedCallback;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/android/internal/app/IAppOpsAsyncNotedCallback;

    .line 3752
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3753
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3755
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 3756
    .local v0, "uid":I
    invoke-direct {p0, p1, v0}, Lcom/android/server/appop/AppOpsService;->getAsyncNotedOpsKey(Ljava/lang/String;I)Landroid/util/Pair;

    move-result-object v1

    .line 3758
    .local v1, "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    invoke-direct {p0, v0, p1, v2}, Lcom/android/server/appop/AppOpsService;->verifyAndGetBypass(ILjava/lang/String;Ljava/lang/String;)Lcom/android/server/appop/AppOpsService$PackageVerificationResult;

    .line 3760
    monitor-enter p0

    .line 3761
    :try_start_0
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService;->mAsyncOpWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/RemoteCallbackList;

    .line 3762
    .local v2, "callbacks":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Lcom/android/internal/app/IAppOpsAsyncNotedCallback;>;"
    if-eqz v2, :cond_0

    .line 3763
    invoke-virtual {v2, p2}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 3764
    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v3

    if-nez v3, :cond_0

    .line 3765
    iget-object v3, p0, Lcom/android/server/appop/AppOpsService;->mAsyncOpWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3768
    .end local v2    # "callbacks":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Lcom/android/internal/app/IAppOpsAsyncNotedCallback;>;"
    :cond_0
    monitor-exit p0

    .line 3769
    return-void

    .line 3768
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public stopWatchingMode(Lcom/android/internal/app/IAppOpsCallback;)V
    .locals 4
    .param p1, "callback"    # Lcom/android/internal/app/IAppOpsCallback;

    .line 3141
    if-nez p1, :cond_0

    .line 3142
    return-void

    .line 3144
    :cond_0
    monitor-enter p0

    .line 3145
    :try_start_0
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-interface {p1}, Lcom/android/internal/app/IAppOpsCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/appop/AppOpsService$ModeCallback;

    .line 3146
    .local v0, "cb":Lcom/android/server/appop/AppOpsService$ModeCallback;
    if-eqz v0, :cond_4

    .line 3147
    invoke-virtual {v0}, Lcom/android/server/appop/AppOpsService$ModeCallback;->unlinkToDeath()V

    .line 3148
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 3149
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    .line 3150
    .local v2, "cbs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 3151
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-gtz v3, :cond_1

    .line 3152
    iget-object v3, p0, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 3148
    .end local v2    # "cbs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 3155
    .end local v1    # "i":I
    :cond_2
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .restart local v1    # "i":I
    :goto_1
    if-ltz v1, :cond_4

    .line 3156
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    .line 3157
    .restart local v2    # "cbs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 3158
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-gtz v3, :cond_3

    .line 3159
    iget-object v3, p0, Lcom/android/server/appop/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 3155
    .end local v2    # "cbs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 3163
    .end local v1    # "i":I
    :cond_4
    invoke-direct {p0}, Lcom/android/server/appop/AppOpsService;->evalAllForegroundOpsLocked()V

    .line 3164
    .end local v0    # "cb":Lcom/android/server/appop/AppOpsService$ModeCallback;
    monitor-exit p0

    .line 3165
    return-void

    .line 3164
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public stopWatchingNoted(Lcom/android/internal/app/IAppOpsNotedCallback;)V
    .locals 4
    .param p1, "callback"    # Lcom/android/internal/app/IAppOpsNotedCallback;

    .line 3630
    const-string v0, "Callback cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3631
    monitor-enter p0

    .line 3632
    :try_start_0
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mNotedWatchers:Landroid/util/ArrayMap;

    .line 3633
    invoke-interface {p1}, Lcom/android/internal/app/IAppOpsNotedCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 3634
    .local v0, "notedCallbacks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/appop/AppOpsService$NotedCallback;>;"
    if-nez v0, :cond_0

    .line 3635
    monitor-exit p0

    return-void

    .line 3637
    :cond_0
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 3638
    .local v1, "callbackCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 3639
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appop/AppOpsService$NotedCallback;

    invoke-virtual {v3}, Lcom/android/server/appop/AppOpsService$NotedCallback;->destroy()V

    .line 3638
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3641
    .end local v0    # "notedCallbacks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/appop/AppOpsService$NotedCallback;>;"
    .end local v1    # "callbackCount":I
    .end local v2    # "i":I
    :cond_1
    monitor-exit p0

    .line 3642
    return-void

    .line 3641
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public stopWatchingStarted(Lcom/android/internal/app/IAppOpsStartedCallback;)V
    .locals 4
    .param p1, "callback"    # Lcom/android/internal/app/IAppOpsStartedCallback;

    .line 3585
    const-string v0, "Callback cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3587
    monitor-enter p0

    .line 3588
    :try_start_0
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mStartedWatchers:Landroid/util/ArrayMap;

    .line 3589
    invoke-interface {p1}, Lcom/android/internal/app/IAppOpsStartedCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 3590
    .local v0, "startedCallbacks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/appop/AppOpsService$StartedCallback;>;"
    if-nez v0, :cond_0

    .line 3591
    monitor-exit p0

    return-void

    .line 3594
    :cond_0
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 3595
    .local v1, "callbackCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 3596
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appop/AppOpsService$StartedCallback;

    invoke-virtual {v3}, Lcom/android/server/appop/AppOpsService$StartedCallback;->destroy()V

    .line 3595
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3598
    .end local v0    # "startedCallbacks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/appop/AppOpsService$StartedCallback;>;"
    .end local v1    # "callbackCount":I
    .end local v2    # "i":I
    :cond_1
    monitor-exit p0

    .line 3599
    return-void

    .line 3598
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public systemReady()V
    .locals 13

    .line 1877
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mConstants:Lcom/android/server/appop/AppOpsService$Constants;

    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/appop/AppOpsService$Constants;->startMonitoring(Landroid/content/ContentResolver;)V

    .line 1878
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistry;

    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/appop/HistoricalRegistry;->systemReady(Landroid/content/ContentResolver;)V

    .line 1880
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1881
    .local v0, "packageUpdateFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1882
    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1883
    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1885
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/appop/AppOpsService;->mOnPackageUpdatedReceiver:Landroid/content/BroadcastReceiver;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1888
    monitor-enter p0

    .line 1889
    :try_start_0
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "uidNum":I
    :goto_0
    if-ltz v1, :cond_4

    .line 1890
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 1891
    .local v2, "uid":I
    iget-object v3, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appop/AppOpsService$UidState;

    .line 1893
    .local v3, "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    iget v4, v3, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    invoke-static {v4}, Lcom/android/server/appop/AppOpsService;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v4

    .line 1894
    .local v4, "pkgsInUid":[Ljava/lang/String;
    invoke-static {v4}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1895
    invoke-virtual {v3}, Lcom/android/server/appop/AppOpsService$UidState;->clear()V

    .line 1896
    iget-object v5, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 1897
    invoke-direct {p0}, Lcom/android/server/appop/AppOpsService;->scheduleFastWriteLocked()V

    .line 1898
    goto :goto_3

    .line 1901
    :cond_0
    iget-object v5, v3, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .line 1902
    .local v5, "pkgs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    if-nez v5, :cond_1

    .line 1903
    goto :goto_3

    .line 1906
    :cond_1
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v6

    .line 1907
    .local v6, "numPkgs":I
    const/4 v7, 0x0

    .local v7, "pkgNum":I
    :goto_1
    if-ge v7, v6, :cond_3

    .line 1908
    invoke-virtual {v5, v7}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 1911
    .local v8, "pkg":Ljava/lang/String;
    invoke-static {v4, v8}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 1912
    const-string v9, "android.intent.action.PACKAGE_REMOVED"

    .local v9, "action":Ljava/lang/String;
    goto :goto_2

    .line 1914
    .end local v9    # "action":Ljava/lang/String;
    :cond_2
    const-string v9, "android.intent.action.PACKAGE_REPLACED"

    .line 1917
    .restart local v9    # "action":Ljava/lang/String;
    :goto_2
    new-instance v10, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda14;

    invoke-direct {v10, p0, v9, v8, v2}, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda14;-><init>(Lcom/android/server/appop/AppOpsService;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Update app-ops uidState in case package "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " changed"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    .line 1907
    nop

    .end local v8    # "pkg":Ljava/lang/String;
    .end local v9    # "action":Ljava/lang/String;
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1889
    .end local v2    # "uid":I
    .end local v3    # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .end local v4    # "pkgsInUid":[Ljava/lang/String;
    .end local v5    # "pkgs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    .end local v6    # "numPkgs":I
    .end local v7    # "pkgNum":I
    :cond_3
    :goto_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1924
    .end local v1    # "uidNum":I
    :cond_4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1926
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 1927
    .local v1, "packageSuspendFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.PACKAGES_UNSUSPENDED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1928
    const-string v2, "android.intent.action.PACKAGES_SUSPENDED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1929
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/server/appop/AppOpsService$3;

    invoke-direct {v3, p0}, Lcom/android/server/appop/AppOpsService$3;-><init>(Lcom/android/server/appop/AppOpsService;)V

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v5, v1

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1955
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 1956
    .local v2, "packageAddedFilter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1957
    const-string/jumbo v3, "package"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1958
    iget-object v3, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/android/server/appop/AppOpsService$4;

    invoke-direct {v4, p0}, Lcom/android/server/appop/AppOpsService$4;-><init>(Lcom/android/server/appop/AppOpsService;)V

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1974
    iget-object v3, p0, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/appop/AppOpsService$5;

    invoke-direct {v4, p0}, Lcom/android/server/appop/AppOpsService$5;-><init>(Lcom/android/server/appop/AppOpsService;)V

    const-wide/32 v5, 0x493e0

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1982
    invoke-direct {p0}, Lcom/android/server/appop/AppOpsService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v3

    new-instance v4, Lcom/android/server/appop/AppOpsService$6;

    invoke-direct {v4, p0}, Lcom/android/server/appop/AppOpsService$6;-><init>(Lcom/android/server/appop/AppOpsService;)V

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManagerInternal;->setExternalSourcesPolicy(Landroid/content/pm/PackageManagerInternal$ExternalSourcesPolicy;)V

    .line 1999
    const-class v3, Landroid/app/ActivityManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManagerInternal;

    iput-object v3, p0, Lcom/android/server/appop/AppOpsService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 2000
    return-void

    .line 1924
    .end local v1    # "packageSuspendFilter":Landroid/content/IntentFilter;
    .end local v2    # "packageAddedFilter":Landroid/content/IntentFilter;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public uidRemoved(I)V
    .locals 1
    .param p1, "uid"    # I

    .line 2062
    monitor-enter p0

    .line 2063
    :try_start_0
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_0

    .line 2064
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 2065
    invoke-direct {p0}, Lcom/android/server/appop/AppOpsService;->scheduleFastWriteLocked()V

    .line 2067
    :cond_0
    monitor-exit p0

    .line 2068
    return-void

    .line 2067
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public updateUidProcState(III)V
    .locals 16
    .param p1, "uid"    # I
    .param p2, "procState"    # I
    .param p3, "capability"    # I

    .line 2085
    move-object/from16 v1, p0

    move/from16 v2, p3

    monitor-enter p0

    .line 2086
    const/4 v0, 0x1

    move/from16 v3, p1

    :try_start_0
    invoke-direct {v1, v3, v0}, Lcom/android/server/appop/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/appop/AppOpsService$UidState;

    move-result-object v0

    .line 2087
    .local v0, "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    sget-object v4, Lcom/android/server/appop/AppOpsService;->PROCESS_STATE_TO_UID_STATE:[I

    aget v4, v4, p2

    .line 2088
    .local v4, "newState":I
    if-eqz v0, :cond_9

    iget v5, v0, Lcom/android/server/appop/AppOpsService$UidState;->pendingState:I

    if-ne v5, v4, :cond_0

    iget v5, v0, Lcom/android/server/appop/AppOpsService$UidState;->pendingCapability:I

    if-eq v5, v2, :cond_9

    .line 2090
    :cond_0
    iget v5, v0, Lcom/android/server/appop/AppOpsService$UidState;->pendingState:I

    .line 2091
    .local v5, "oldPendingState":I
    iput v4, v0, Lcom/android/server/appop/AppOpsService$UidState;->pendingState:I

    .line 2092
    iput v2, v0, Lcom/android/server/appop/AppOpsService$UidState;->pendingCapability:I

    .line 2093
    iget v6, v0, Lcom/android/server/appop/AppOpsService$UidState;->state:I

    if-lt v4, v6, :cond_5

    const/16 v6, 0x1f4

    if-gt v4, v6, :cond_1

    iget v7, v0, Lcom/android/server/appop/AppOpsService$UidState;->state:I

    if-le v7, v6, :cond_1

    goto :goto_1

    .line 2100
    :cond_1
    iget v6, v0, Lcom/android/server/appop/AppOpsService$UidState;->state:I

    if-ne v4, v6, :cond_2

    iget v6, v0, Lcom/android/server/appop/AppOpsService$UidState;->capability:I

    if-eq v2, v6, :cond_2

    .line 2102
    invoke-direct {v1, v0}, Lcom/android/server/appop/AppOpsService;->commitUidPendingStateLocked(Lcom/android/server/appop/AppOpsService$UidState;)V

    goto :goto_2

    .line 2103
    :cond_2
    iget-wide v6, v0, Lcom/android/server/appop/AppOpsService$UidState;->pendingStateCommitTime:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_6

    .line 2107
    iget v6, v0, Lcom/android/server/appop/AppOpsService$UidState;->state:I

    const/16 v7, 0xc8

    if-gt v6, v7, :cond_3

    .line 2108
    iget-object v6, v1, Lcom/android/server/appop/AppOpsService;->mConstants:Lcom/android/server/appop/AppOpsService$Constants;

    iget-wide v6, v6, Lcom/android/server/appop/AppOpsService$Constants;->TOP_STATE_SETTLE_TIME:J

    .local v6, "settleTime":J
    goto :goto_0

    .line 2109
    .end local v6    # "settleTime":J
    :cond_3
    iget v6, v0, Lcom/android/server/appop/AppOpsService$UidState;->state:I

    const/16 v7, 0x190

    if-gt v6, v7, :cond_4

    .line 2110
    iget-object v6, v1, Lcom/android/server/appop/AppOpsService;->mConstants:Lcom/android/server/appop/AppOpsService$Constants;

    iget-wide v6, v6, Lcom/android/server/appop/AppOpsService$Constants;->FG_SERVICE_STATE_SETTLE_TIME:J

    .restart local v6    # "settleTime":J
    goto :goto_0

    .line 2112
    .end local v6    # "settleTime":J
    :cond_4
    iget-object v6, v1, Lcom/android/server/appop/AppOpsService;->mConstants:Lcom/android/server/appop/AppOpsService$Constants;

    iget-wide v6, v6, Lcom/android/server/appop/AppOpsService$Constants;->BG_STATE_SETTLE_TIME:J

    .line 2114
    .restart local v6    # "settleTime":J
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    add-long/2addr v8, v6

    .line 2115
    .local v8, "commitTime":J
    iput-wide v8, v0, Lcom/android/server/appop/AppOpsService$UidState;->pendingStateCommitTime:J

    .line 2117
    iget-object v10, v1, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    sget-object v11, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda11;->INSTANCE:Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda11;

    const-wide/16 v12, 0x1

    add-long v14, v8, v12

    .line 2119
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    .line 2118
    invoke-static {v11, v1, v14, v15}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    add-long/2addr v12, v6

    .line 2117
    invoke-virtual {v10, v11, v12, v13}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_2

    .line 2099
    .end local v6    # "settleTime":J
    .end local v8    # "commitTime":J
    :cond_5
    :goto_1
    invoke-direct {v1, v0}, Lcom/android/server/appop/AppOpsService;->commitUidPendingStateLocked(Lcom/android/server/appop/AppOpsService$UidState;)V

    .line 2122
    :cond_6
    :goto_2
    iget-object v6, v0, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    if-eqz v6, :cond_9

    .line 2123
    iget-object v6, v0, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    .line 2124
    .local v6, "numPkgs":I
    const/4 v7, 0x0

    .local v7, "pkgNum":I
    :goto_3
    if-ge v7, v6, :cond_9

    .line 2125
    iget-object v8, v0, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v8, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/appop/AppOpsService$Ops;

    .line 2127
    .local v8, "ops":Lcom/android/server/appop/AppOpsService$Ops;
    invoke-virtual {v8}, Lcom/android/server/appop/AppOpsService$Ops;->size()I

    move-result v9

    .line 2128
    .local v9, "numOps":I
    const/4 v10, 0x0

    .local v10, "opNum":I
    :goto_4
    if-ge v10, v9, :cond_8

    .line 2129
    invoke-virtual {v8, v10}, Lcom/android/server/appop/AppOpsService$Ops;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/appop/AppOpsService$Op;

    .line 2131
    .local v11, "op":Lcom/android/server/appop/AppOpsService$Op;
    iget-object v12, v11, Lcom/android/server/appop/AppOpsService$Op;->mAttributions:Landroid/util/ArrayMap;

    invoke-virtual {v12}, Landroid/util/ArrayMap;->size()I

    move-result v12

    .line 2132
    .local v12, "numAttributions":I
    const/4 v13, 0x0

    .local v13, "attributionNum":I
    :goto_5
    if-ge v13, v12, :cond_7

    .line 2134
    iget-object v14, v11, Lcom/android/server/appop/AppOpsService$Op;->mAttributions:Landroid/util/ArrayMap;

    invoke-virtual {v14, v13}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/appop/AppOpsService$AttributedOp;

    .line 2137
    .local v14, "attributedOp":Lcom/android/server/appop/AppOpsService$AttributedOp;
    invoke-virtual {v14, v4}, Lcom/android/server/appop/AppOpsService$AttributedOp;->onUidStateChanged(I)V

    .line 2133
    .end local v14    # "attributedOp":Lcom/android/server/appop/AppOpsService$AttributedOp;
    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    .line 2128
    .end local v11    # "op":Lcom/android/server/appop/AppOpsService$Op;
    .end local v12    # "numAttributions":I
    .end local v13    # "attributionNum":I
    :cond_7
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 2124
    .end local v8    # "ops":Lcom/android/server/appop/AppOpsService$Ops;
    .end local v9    # "numOps":I
    .end local v10    # "opNum":I
    :cond_8
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 2143
    .end local v0    # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .end local v4    # "newState":I
    .end local v5    # "oldPendingState":I
    .end local v6    # "numPkgs":I
    .end local v7    # "pkgNum":I
    :cond_9
    monitor-exit p0

    .line 2144
    return-void

    .line 2143
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method writeState()V
    .locals 37

    .line 5039
    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/android/server/appop/AppOpsService;->mFile:Landroid/util/AtomicFile;

    monitor-enter v2

    .line 5042
    :try_start_0
    iget-object v0, v1, Lcom/android/server/appop/AppOpsService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_9
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    move-object v3, v0

    .line 5046
    .local v3, "stream":Ljava/io/FileOutputStream;
    nop

    .line 5048
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {v1, v0}, Lcom/android/server/appop/AppOpsService;->getPackagesForOps([I)Ljava/util/List;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 5051
    .local v4, "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    :try_start_2
    invoke-static {v3}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Landroid/util/TypedXmlSerializer;

    move-result-object v5

    .line 5052
    .local v5, "out":Landroid/util/TypedXmlSerializer;
    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v5, v0, v7}, Landroid/util/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 5053
    const-string v7, "app-ops"

    invoke-interface {v5, v0, v7}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5054
    const-string/jumbo v7, "v"

    invoke-interface {v5, v0, v7, v6}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 5057
    monitor-enter p0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 5058
    :try_start_3
    new-instance v6, Landroid/util/SparseArray;

    iget-object v7, v1, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    invoke-direct {v6, v7}, Landroid/util/SparseArray;-><init>(I)V

    .line 5060
    .local v6, "uidStatesClone":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseIntArray;>;"
    iget-object v7, v1, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 5061
    .local v7, "uidStateCount":I
    const/4 v8, 0x0

    .local v8, "uidStateNum":I
    :goto_0
    if-ge v8, v7, :cond_1

    .line 5062
    :try_start_4
    iget-object v9, v1, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v9, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/appop/AppOpsService$UidState;

    .line 5063
    .local v9, "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    iget-object v10, v1, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v10, v8}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v10

    .line 5065
    .local v10, "uid":I
    iget-object v11, v9, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    .line 5066
    .local v11, "opModes":Landroid/util/SparseIntArray;
    if-eqz v11, :cond_0

    invoke-virtual {v11}, Landroid/util/SparseIntArray;->size()I

    move-result v12

    if-lez v12, :cond_0

    .line 5067
    new-instance v12, Landroid/util/SparseIntArray;

    invoke-virtual {v11}, Landroid/util/SparseIntArray;->size()I

    move-result v13

    invoke-direct {v12, v13}, Landroid/util/SparseIntArray;-><init>(I)V

    invoke-virtual {v6, v10, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5069
    invoke-virtual {v11}, Landroid/util/SparseIntArray;->size()I

    move-result v12

    .line 5070
    .local v12, "opCount":I
    const/4 v13, 0x0

    .local v13, "opCountNum":I
    :goto_1
    if-ge v13, v12, :cond_0

    .line 5071
    invoke-virtual {v6, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/util/SparseIntArray;

    .line 5072
    invoke-virtual {v11, v13}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v15

    .line 5073
    invoke-virtual {v11, v13}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v0

    .line 5071
    invoke-virtual {v14, v15, v0}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 5070
    add-int/lit8 v13, v13, 0x1

    const/4 v0, 0x0

    goto :goto_1

    .line 5061
    .end local v9    # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .end local v10    # "uid":I
    .end local v11    # "opModes":Landroid/util/SparseIntArray;
    .end local v12    # "opCount":I
    .end local v13    # "opCountNum":I
    :cond_0
    add-int/lit8 v8, v8, 0x1

    const/4 v0, 0x0

    goto :goto_0

    .line 5077
    .end local v6    # "uidStatesClone":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseIntArray;>;"
    .end local v7    # "uidStateCount":I
    .end local v8    # "uidStateNum":I
    :catchall_0
    move-exception v0

    move-object/from16 v16, v4

    goto/16 :goto_f

    .restart local v6    # "uidStatesClone":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseIntArray;>;"
    :cond_1
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 5079
    :try_start_6
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_8
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 5080
    .local v0, "uidStateCount":I
    const/4 v7, 0x0

    .local v7, "uidStateNum":I
    :goto_2
    if-ge v7, v0, :cond_4

    .line 5081
    :try_start_7
    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/SparseIntArray;

    .line 5082
    .local v8, "opModes":Landroid/util/SparseIntArray;
    if-eqz v8, :cond_3

    invoke-virtual {v8}, Landroid/util/SparseIntArray;->size()I

    move-result v9

    if-lez v9, :cond_3

    .line 5083
    const-string/jumbo v9, "uid"

    const/4 v10, 0x0

    invoke-interface {v5, v10, v9}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5084
    const-string/jumbo v9, "n"

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v11

    invoke-interface {v5, v10, v9, v11}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 5085
    invoke-virtual {v8}, Landroid/util/SparseIntArray;->size()I

    move-result v9

    .line 5086
    .local v9, "opCount":I
    const/4 v10, 0x0

    .local v10, "opCountNum":I
    :goto_3
    if-ge v10, v9, :cond_2

    .line 5087
    invoke-virtual {v8, v10}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v11

    .line 5088
    .local v11, "op":I
    invoke-virtual {v8, v10}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v12

    .line 5089
    .local v12, "mode":I
    const-string/jumbo v13, "op"

    const/4 v14, 0x0

    invoke-interface {v5, v14, v13}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5090
    const-string/jumbo v13, "n"

    invoke-interface {v5, v14, v13, v11}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 5091
    const-string/jumbo v13, "m"

    invoke-interface {v5, v14, v13, v12}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 5092
    const-string/jumbo v13, "op"

    invoke-interface {v5, v14, v13}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5086
    nop

    .end local v11    # "op":I
    .end local v12    # "mode":I
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 5094
    .end local v10    # "opCountNum":I
    :cond_2
    const-string/jumbo v10, "uid"

    const/4 v11, 0x0

    invoke-interface {v5, v11, v10}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 5080
    .end local v8    # "opModes":Landroid/util/SparseIntArray;
    .end local v9    # "opCount":I
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 5197
    .end local v0    # "uidStateCount":I
    .end local v5    # "out":Landroid/util/TypedXmlSerializer;
    .end local v6    # "uidStatesClone":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseIntArray;>;"
    .end local v7    # "uidStateNum":I
    :catch_0
    move-exception v0

    move-object/from16 v16, v4

    goto/16 :goto_10

    .line 5098
    .restart local v0    # "uidStateCount":I
    .restart local v5    # "out":Landroid/util/TypedXmlSerializer;
    .restart local v6    # "uidStatesClone":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseIntArray;>;"
    :cond_4
    if-eqz v4, :cond_17

    .line 5099
    const/4 v7, 0x0

    .line 5100
    .local v7, "lastPkg":Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_4
    :try_start_8
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_16

    .line 5101
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/AppOpsManager$PackageOps;

    .line 5102
    .local v9, "pkg":Landroid/app/AppOpsManager$PackageOps;
    invoke-virtual {v9}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-nez v10, :cond_6

    .line 5103
    if-eqz v7, :cond_5

    .line 5104
    :try_start_9
    const-string/jumbo v10, "pkg"

    const/4 v11, 0x0

    invoke-interface {v5, v11, v10}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5106
    :cond_5
    invoke-virtual {v9}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v10

    move-object v7, v10

    .line 5107
    const-string/jumbo v10, "pkg"

    const/4 v11, 0x0

    invoke-interface {v5, v11, v10}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5108
    const-string/jumbo v10, "n"

    invoke-interface {v5, v11, v10, v7}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 5110
    :cond_6
    :try_start_a
    const-string/jumbo v10, "uid"

    const/4 v11, 0x0

    invoke-interface {v5, v11, v10}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5111
    const-string/jumbo v10, "n"

    invoke-virtual {v9}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v12

    invoke-interface {v5, v11, v10, v12}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 5112
    invoke-virtual {v9}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v10

    .line 5113
    .local v10, "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_5
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v12

    if-ge v11, v12, :cond_15

    .line 5114
    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/AppOpsManager$OpEntry;

    .line 5115
    .local v12, "op":Landroid/app/AppOpsManager$OpEntry;
    const-string/jumbo v13, "op"

    const/4 v14, 0x0

    invoke-interface {v5, v14, v13}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5116
    const-string/jumbo v13, "n"

    invoke-virtual {v12}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v15

    invoke-interface {v5, v14, v13, v15}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 5117
    invoke-virtual {v12}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v13

    invoke-virtual {v12}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v14

    invoke-static {v14}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v14
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    if-eq v13, v14, :cond_7

    .line 5118
    :try_start_b
    const-string/jumbo v13, "m"

    invoke-virtual {v12}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v14

    const/4 v15, 0x0

    invoke-interface {v5, v15, v13, v14}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 5121
    :cond_7
    :try_start_c
    invoke-virtual {v12}, Landroid/app/AppOpsManager$OpEntry;->getAttributedOpEntries()Ljava/util/Map;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_6
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_14

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 5122
    .local v14, "attributionTag":Ljava/lang/String;
    nop

    .line 5123
    invoke-virtual {v12}, Landroid/app/AppOpsManager$OpEntry;->getAttributedOpEntries()Ljava/util/Map;

    move-result-object v15

    invoke-interface {v15, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/app/AppOpsManager$AttributedOpEntry;

    .line 5125
    .local v15, "attribution":Landroid/app/AppOpsManager$AttributedOpEntry;
    invoke-virtual {v15}, Landroid/app/AppOpsManager$AttributedOpEntry;->collectKeys()Landroid/util/ArraySet;

    move-result-object v16

    move-object/from16 v17, v16

    .line 5127
    .local v17, "keys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    invoke-virtual/range {v17 .. v17}, Landroid/util/ArraySet;->size()I

    move-result v16
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    move/from16 v18, v16

    .line 5128
    .local v18, "keyCount":I
    const/16 v16, 0x0

    move/from16 v19, v0

    move/from16 v0, v16

    .local v0, "k":I
    .local v19, "uidStateCount":I
    :goto_7
    move-object/from16 v16, v4

    move/from16 v4, v18

    .end local v18    # "keyCount":I
    .local v4, "keyCount":I
    .local v16, "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    if-ge v0, v4, :cond_13

    .line 5129
    move/from16 v18, v4

    move-object/from16 v4, v17

    .end local v17    # "keys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    .local v4, "keys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    .restart local v18    # "keyCount":I
    :try_start_d
    invoke-virtual {v4, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Long;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    move-wide/from16 v22, v20

    .line 5131
    .local v22, "key":J
    invoke-static/range {v22 .. v23}, Landroid/app/AppOpsManager;->extractUidStateFromKey(J)I

    move-result v17

    move/from16 v20, v17

    .line 5132
    .local v20, "uidState":I
    invoke-static/range {v22 .. v23}, Landroid/app/AppOpsManager;->extractFlagsFromKey(J)I

    move-result v17

    move/from16 v21, v17

    .line 5134
    .local v21, "flags":I
    move-object/from16 v17, v4

    move/from16 v4, v20

    move-object/from16 v20, v6

    move/from16 v6, v21

    .end local v21    # "flags":I
    .local v4, "uidState":I
    .local v6, "flags":I
    .restart local v17    # "keys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    .local v20, "uidStatesClone":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseIntArray;>;"
    invoke-virtual {v15, v4, v4, v6}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastAccessTime(III)J

    move-result-wide v24

    move-wide/from16 v26, v24

    .line 5136
    .local v26, "accessTime":J
    invoke-virtual {v15, v4, v4, v6}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastRejectTime(III)J

    move-result-wide v24

    move-wide/from16 v28, v24

    .line 5138
    .local v28, "rejectTime":J
    invoke-virtual {v15, v4, v4, v6}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastDuration(III)J

    move-result-wide v24

    move-wide/from16 v30, v24

    .line 5141
    .local v30, "accessDuration":J
    invoke-virtual {v15, v4, v4, v6}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastProxyInfo(III)Landroid/app/AppOpsManager$OpEventProxyInfo;

    move-result-object v21
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 5144
    .local v21, "proxy":Landroid/app/AppOpsManager$OpEventProxyInfo;
    const-wide/16 v24, 0x0

    move/from16 v33, v6

    move-object/from16 v32, v7

    move-wide/from16 v6, v26

    .end local v7    # "lastPkg":Ljava/lang/String;
    .end local v26    # "accessTime":J
    .local v6, "accessTime":J
    .local v32, "lastPkg":Ljava/lang/String;
    .local v33, "flags":I
    cmp-long v26, v6, v24

    if-gtz v26, :cond_9

    move-object/from16 v26, v9

    move-object/from16 v27, v10

    move-wide/from16 v9, v28

    .end local v10    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    .end local v28    # "rejectTime":J
    .local v9, "rejectTime":J
    .local v26, "pkg":Landroid/app/AppOpsManager$PackageOps;
    .local v27, "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    cmp-long v28, v9, v24

    if-gtz v28, :cond_8

    move-object/from16 v28, v12

    move-object/from16 v29, v13

    move-wide/from16 v12, v30

    .end local v30    # "accessDuration":J
    .local v12, "accessDuration":J
    .local v28, "op":Landroid/app/AppOpsManager$OpEntry;
    cmp-long v30, v12, v24

    if-gtz v30, :cond_a

    if-nez v21, :cond_a

    .line 5146
    move-object/from16 v31, v3

    move/from16 v34, v8

    move/from16 v36, v11

    move-object/from16 v22, v14

    move-object/from16 v30, v15

    move v11, v0

    goto/16 :goto_b

    .line 5144
    .end local v28    # "op":Landroid/app/AppOpsManager$OpEntry;
    .local v12, "op":Landroid/app/AppOpsManager$OpEntry;
    .restart local v30    # "accessDuration":J
    :cond_8
    move-object/from16 v28, v12

    move-object/from16 v29, v13

    move-wide/from16 v12, v30

    .end local v30    # "accessDuration":J
    .local v12, "accessDuration":J
    .restart local v28    # "op":Landroid/app/AppOpsManager$OpEntry;
    goto :goto_8

    .end local v26    # "pkg":Landroid/app/AppOpsManager$PackageOps;
    .end local v27    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    .local v9, "pkg":Landroid/app/AppOpsManager$PackageOps;
    .restart local v10    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    .local v12, "op":Landroid/app/AppOpsManager$OpEntry;
    .local v28, "rejectTime":J
    .restart local v30    # "accessDuration":J
    :cond_9
    move-object/from16 v26, v9

    move-object/from16 v27, v10

    move-wide/from16 v9, v28

    move-object/from16 v28, v12

    move-object/from16 v29, v13

    move-wide/from16 v12, v30

    .line 5149
    .end local v10    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    .end local v30    # "accessDuration":J
    .local v9, "rejectTime":J
    .local v12, "accessDuration":J
    .restart local v26    # "pkg":Landroid/app/AppOpsManager$PackageOps;
    .restart local v27    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    .local v28, "op":Landroid/app/AppOpsManager$OpEntry;
    :cond_a
    :goto_8
    const/16 v30, 0x0

    .line 5150
    .local v30, "proxyPkg":Ljava/lang/String;
    const/16 v31, 0x0

    .line 5151
    .local v31, "proxyAttributionTag":Ljava/lang/String;
    const/16 v34, -0x1

    .line 5152
    .local v34, "proxyUid":I
    if-eqz v21, :cond_b

    .line 5153
    :try_start_e
    invoke-virtual/range {v21 .. v21}, Landroid/app/AppOpsManager$OpEventProxyInfo;->getPackageName()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v30, v35

    .line 5154
    invoke-virtual/range {v21 .. v21}, Landroid/app/AppOpsManager$OpEventProxyInfo;->getAttributionTag()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v31, v35

    .line 5155
    invoke-virtual/range {v21 .. v21}, Landroid/app/AppOpsManager$OpEventProxyInfo;->getUid()I

    move-result v35
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_7
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    move/from16 v34, v35

    move/from16 v35, v4

    move-object/from16 v4, v30

    move-object/from16 v30, v15

    move-object/from16 v15, v31

    move-object/from16 v31, v3

    move/from16 v3, v34

    goto :goto_9

    .line 5152
    :cond_b
    move/from16 v35, v4

    move-object/from16 v4, v30

    move-object/from16 v30, v15

    move-object/from16 v15, v31

    move-object/from16 v31, v3

    move/from16 v3, v34

    .line 5158
    .end local v34    # "proxyUid":I
    .local v3, "proxyUid":I
    .local v4, "proxyPkg":Ljava/lang/String;
    .local v15, "proxyAttributionTag":Ljava/lang/String;
    .local v30, "attribution":Landroid/app/AppOpsManager$AttributedOpEntry;
    .local v31, "stream":Ljava/io/FileOutputStream;
    .local v35, "uidState":I
    :goto_9
    move/from16 v34, v8

    .end local v8    # "i":I
    .local v34, "i":I
    :try_start_f
    const-string/jumbo v8, "st"

    move/from16 v36, v11

    const/4 v11, 0x0

    .end local v11    # "j":I
    .local v36, "j":I
    invoke-interface {v5, v11, v8}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_3
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 5159
    if-eqz v14, :cond_c

    .line 5160
    :try_start_10
    const-string v8, "id"

    invoke-interface {v5, v11, v8, v14}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_1
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    goto :goto_a

    .line 5197
    .end local v0    # "k":I
    .end local v3    # "proxyUid":I
    .end local v4    # "proxyPkg":Ljava/lang/String;
    .end local v5    # "out":Landroid/util/TypedXmlSerializer;
    .end local v6    # "accessTime":J
    .end local v9    # "rejectTime":J
    .end local v12    # "accessDuration":J
    .end local v14    # "attributionTag":Ljava/lang/String;
    .end local v15    # "proxyAttributionTag":Ljava/lang/String;
    .end local v17    # "keys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    .end local v18    # "keyCount":I
    .end local v19    # "uidStateCount":I
    .end local v20    # "uidStatesClone":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseIntArray;>;"
    .end local v21    # "proxy":Landroid/app/AppOpsManager$OpEventProxyInfo;
    .end local v22    # "key":J
    .end local v26    # "pkg":Landroid/app/AppOpsManager$PackageOps;
    .end local v27    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    .end local v28    # "op":Landroid/app/AppOpsManager$OpEntry;
    .end local v30    # "attribution":Landroid/app/AppOpsManager$AttributedOpEntry;
    .end local v32    # "lastPkg":Ljava/lang/String;
    .end local v33    # "flags":I
    .end local v34    # "i":I
    .end local v35    # "uidState":I
    .end local v36    # "j":I
    :catch_1
    move-exception v0

    goto/16 :goto_c

    .line 5162
    .restart local v0    # "k":I
    .restart local v3    # "proxyUid":I
    .restart local v4    # "proxyPkg":Ljava/lang/String;
    .restart local v5    # "out":Landroid/util/TypedXmlSerializer;
    .restart local v6    # "accessTime":J
    .restart local v9    # "rejectTime":J
    .restart local v12    # "accessDuration":J
    .restart local v14    # "attributionTag":Ljava/lang/String;
    .restart local v15    # "proxyAttributionTag":Ljava/lang/String;
    .restart local v17    # "keys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    .restart local v18    # "keyCount":I
    .restart local v19    # "uidStateCount":I
    .restart local v20    # "uidStatesClone":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseIntArray;>;"
    .restart local v21    # "proxy":Landroid/app/AppOpsManager$OpEventProxyInfo;
    .restart local v22    # "key":J
    .restart local v26    # "pkg":Landroid/app/AppOpsManager$PackageOps;
    .restart local v27    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    .restart local v28    # "op":Landroid/app/AppOpsManager$OpEntry;
    .restart local v30    # "attribution":Landroid/app/AppOpsManager$AttributedOpEntry;
    .restart local v32    # "lastPkg":Ljava/lang/String;
    .restart local v33    # "flags":I
    .restart local v34    # "i":I
    .restart local v35    # "uidState":I
    .restart local v36    # "j":I
    :cond_c
    :goto_a
    :try_start_11
    const-string/jumbo v8, "n"

    move v11, v0

    move-wide/from16 v0, v22

    move-object/from16 v22, v14

    const/4 v14, 0x0

    .end local v14    # "attributionTag":Ljava/lang/String;
    .local v0, "key":J
    .local v11, "k":I
    .local v22, "attributionTag":Ljava/lang/String;
    invoke-interface {v5, v14, v8, v0, v1}, Landroid/util/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 5163
    cmp-long v8, v6, v24

    if-lez v8, :cond_d

    .line 5164
    const-string/jumbo v8, "t"

    invoke-interface {v5, v14, v8, v6, v7}, Landroid/util/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 5166
    :cond_d
    cmp-long v8, v9, v24

    if-lez v8, :cond_e

    .line 5167
    const-string/jumbo v8, "r"

    const/4 v14, 0x0

    invoke-interface {v5, v14, v8, v9, v10}, Landroid/util/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 5169
    :cond_e
    cmp-long v8, v12, v24

    if-lez v8, :cond_f

    .line 5170
    const-string v8, "d"

    const/4 v14, 0x0

    invoke-interface {v5, v14, v8, v12, v13}, Landroid/util/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 5172
    :cond_f
    if-eqz v4, :cond_10

    .line 5173
    const-string/jumbo v8, "pp"

    const/4 v14, 0x0

    invoke-interface {v5, v14, v8, v4}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5175
    :cond_10
    if-eqz v15, :cond_11

    .line 5176
    const-string/jumbo v8, "pc"

    const/4 v14, 0x0

    invoke-interface {v5, v14, v8, v15}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5178
    :cond_11
    if-ltz v3, :cond_12

    .line 5179
    const-string/jumbo v8, "pu"

    const/4 v14, 0x0

    invoke-interface {v5, v14, v8, v3}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 5181
    :cond_12
    const-string/jumbo v8, "st"

    const/4 v14, 0x0

    invoke-interface {v5, v14, v8}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5128
    .end local v0    # "key":J
    .end local v3    # "proxyUid":I
    .end local v4    # "proxyPkg":Ljava/lang/String;
    .end local v6    # "accessTime":J
    .end local v9    # "rejectTime":J
    .end local v12    # "accessDuration":J
    .end local v15    # "proxyAttributionTag":Ljava/lang/String;
    .end local v21    # "proxy":Landroid/app/AppOpsManager$OpEventProxyInfo;
    .end local v33    # "flags":I
    .end local v35    # "uidState":I
    :goto_b
    add-int/lit8 v0, v11, 0x1

    move-object/from16 v1, p0

    move-object/from16 v4, v16

    move-object/from16 v6, v20

    move-object/from16 v14, v22

    move-object/from16 v9, v26

    move-object/from16 v10, v27

    move-object/from16 v12, v28

    move-object/from16 v13, v29

    move-object/from16 v15, v30

    move-object/from16 v3, v31

    move-object/from16 v7, v32

    move/from16 v8, v34

    move/from16 v11, v36

    .end local v11    # "k":I
    .local v0, "k":I
    goto/16 :goto_7

    .line 5197
    .end local v0    # "k":I
    .end local v5    # "out":Landroid/util/TypedXmlSerializer;
    .end local v17    # "keys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    .end local v18    # "keyCount":I
    .end local v19    # "uidStateCount":I
    .end local v20    # "uidStatesClone":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseIntArray;>;"
    .end local v22    # "attributionTag":Ljava/lang/String;
    .end local v26    # "pkg":Landroid/app/AppOpsManager$PackageOps;
    .end local v27    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    .end local v28    # "op":Landroid/app/AppOpsManager$OpEntry;
    .end local v30    # "attribution":Landroid/app/AppOpsManager$AttributedOpEntry;
    .end local v31    # "stream":Ljava/io/FileOutputStream;
    .end local v32    # "lastPkg":Ljava/lang/String;
    .end local v34    # "i":I
    .end local v36    # "j":I
    .local v3, "stream":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v0

    move-object/from16 v1, p0

    .end local v3    # "stream":Ljava/io/FileOutputStream;
    .restart local v31    # "stream":Ljava/io/FileOutputStream;
    goto/16 :goto_10

    .line 5128
    .end local v31    # "stream":Ljava/io/FileOutputStream;
    .restart local v0    # "k":I
    .restart local v3    # "stream":Ljava/io/FileOutputStream;
    .local v4, "keyCount":I
    .restart local v5    # "out":Landroid/util/TypedXmlSerializer;
    .local v6, "uidStatesClone":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseIntArray;>;"
    .restart local v7    # "lastPkg":Ljava/lang/String;
    .restart local v8    # "i":I
    .local v9, "pkg":Landroid/app/AppOpsManager$PackageOps;
    .restart local v10    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    .local v11, "j":I
    .local v12, "op":Landroid/app/AppOpsManager$OpEntry;
    .restart local v14    # "attributionTag":Ljava/lang/String;
    .local v15, "attribution":Landroid/app/AppOpsManager$AttributedOpEntry;
    .restart local v17    # "keys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    .restart local v19    # "uidStateCount":I
    :cond_13
    move-object/from16 v31, v3

    move/from16 v18, v4

    move-object/from16 v20, v6

    move-object/from16 v32, v7

    move/from16 v34, v8

    move-object/from16 v26, v9

    move-object/from16 v27, v10

    move/from16 v36, v11

    move-object/from16 v28, v12

    move-object/from16 v29, v13

    move-object/from16 v22, v14

    move-object/from16 v30, v15

    move v11, v0

    .line 5183
    .end local v0    # "k":I
    .end local v3    # "stream":Ljava/io/FileOutputStream;
    .end local v4    # "keyCount":I
    .end local v6    # "uidStatesClone":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseIntArray;>;"
    .end local v7    # "lastPkg":Ljava/lang/String;
    .end local v8    # "i":I
    .end local v9    # "pkg":Landroid/app/AppOpsManager$PackageOps;
    .end local v10    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    .end local v11    # "j":I
    .end local v12    # "op":Landroid/app/AppOpsManager$OpEntry;
    .end local v14    # "attributionTag":Ljava/lang/String;
    .end local v15    # "attribution":Landroid/app/AppOpsManager$AttributedOpEntry;
    .end local v17    # "keys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    .restart local v20    # "uidStatesClone":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseIntArray;>;"
    .restart local v26    # "pkg":Landroid/app/AppOpsManager$PackageOps;
    .restart local v27    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    .restart local v28    # "op":Landroid/app/AppOpsManager$OpEntry;
    .restart local v31    # "stream":Ljava/io/FileOutputStream;
    .restart local v32    # "lastPkg":Ljava/lang/String;
    .restart local v34    # "i":I
    .restart local v36    # "j":I
    move-object/from16 v1, p0

    move-object/from16 v4, v16

    move/from16 v0, v19

    move/from16 v11, v36

    goto/16 :goto_6

    .line 5185
    .end local v16    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .end local v19    # "uidStateCount":I
    .end local v20    # "uidStatesClone":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseIntArray;>;"
    .end local v26    # "pkg":Landroid/app/AppOpsManager$PackageOps;
    .end local v27    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    .end local v28    # "op":Landroid/app/AppOpsManager$OpEntry;
    .end local v31    # "stream":Ljava/io/FileOutputStream;
    .end local v32    # "lastPkg":Ljava/lang/String;
    .end local v34    # "i":I
    .end local v36    # "j":I
    .local v0, "uidStateCount":I
    .restart local v3    # "stream":Ljava/io/FileOutputStream;
    .local v4, "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v6    # "uidStatesClone":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseIntArray;>;"
    .restart local v7    # "lastPkg":Ljava/lang/String;
    .restart local v8    # "i":I
    .restart local v9    # "pkg":Landroid/app/AppOpsManager$PackageOps;
    .restart local v10    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    .restart local v11    # "j":I
    .restart local v12    # "op":Landroid/app/AppOpsManager$OpEntry;
    :cond_14
    move/from16 v19, v0

    move-object/from16 v31, v3

    move-object/from16 v16, v4

    move-object/from16 v20, v6

    move-object/from16 v32, v7

    move/from16 v34, v8

    move-object/from16 v26, v9

    move-object/from16 v27, v10

    move/from16 v36, v11

    move-object/from16 v28, v12

    .end local v0    # "uidStateCount":I
    .end local v3    # "stream":Ljava/io/FileOutputStream;
    .end local v4    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .end local v6    # "uidStatesClone":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseIntArray;>;"
    .end local v7    # "lastPkg":Ljava/lang/String;
    .end local v8    # "i":I
    .end local v9    # "pkg":Landroid/app/AppOpsManager$PackageOps;
    .end local v10    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    .end local v11    # "j":I
    .end local v12    # "op":Landroid/app/AppOpsManager$OpEntry;
    .restart local v16    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v19    # "uidStateCount":I
    .restart local v20    # "uidStatesClone":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseIntArray;>;"
    .restart local v26    # "pkg":Landroid/app/AppOpsManager$PackageOps;
    .restart local v27    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    .restart local v28    # "op":Landroid/app/AppOpsManager$OpEntry;
    .restart local v31    # "stream":Ljava/io/FileOutputStream;
    .restart local v32    # "lastPkg":Ljava/lang/String;
    .restart local v34    # "i":I
    .restart local v36    # "j":I
    const-string/jumbo v0, "op"

    const/4 v1, 0x0

    invoke-interface {v5, v1, v0}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5113
    nop

    .end local v28    # "op":Landroid/app/AppOpsManager$OpEntry;
    add-int/lit8 v11, v36, 0x1

    move-object/from16 v1, p0

    move-object/from16 v4, v16

    move/from16 v0, v19

    move-object/from16 v6, v20

    move-object/from16 v9, v26

    move-object/from16 v10, v27

    move-object/from16 v3, v31

    move-object/from16 v7, v32

    move/from16 v8, v34

    .end local v36    # "j":I
    .restart local v11    # "j":I
    goto/16 :goto_5

    .end local v16    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .end local v19    # "uidStateCount":I
    .end local v20    # "uidStatesClone":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseIntArray;>;"
    .end local v26    # "pkg":Landroid/app/AppOpsManager$PackageOps;
    .end local v27    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    .end local v31    # "stream":Ljava/io/FileOutputStream;
    .end local v32    # "lastPkg":Ljava/lang/String;
    .end local v34    # "i":I
    .restart local v0    # "uidStateCount":I
    .restart local v3    # "stream":Ljava/io/FileOutputStream;
    .restart local v4    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v6    # "uidStatesClone":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseIntArray;>;"
    .restart local v7    # "lastPkg":Ljava/lang/String;
    .restart local v8    # "i":I
    .restart local v9    # "pkg":Landroid/app/AppOpsManager$PackageOps;
    .restart local v10    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    :cond_15
    move/from16 v19, v0

    move-object/from16 v31, v3

    move-object/from16 v16, v4

    move-object/from16 v20, v6

    move-object/from16 v32, v7

    move/from16 v34, v8

    move-object/from16 v26, v9

    move-object/from16 v27, v10

    move/from16 v36, v11

    .line 5187
    .end local v0    # "uidStateCount":I
    .end local v3    # "stream":Ljava/io/FileOutputStream;
    .end local v4    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .end local v6    # "uidStatesClone":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseIntArray;>;"
    .end local v7    # "lastPkg":Ljava/lang/String;
    .end local v8    # "i":I
    .end local v9    # "pkg":Landroid/app/AppOpsManager$PackageOps;
    .end local v10    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    .end local v11    # "j":I
    .restart local v16    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v19    # "uidStateCount":I
    .restart local v20    # "uidStatesClone":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseIntArray;>;"
    .restart local v26    # "pkg":Landroid/app/AppOpsManager$PackageOps;
    .restart local v27    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    .restart local v31    # "stream":Ljava/io/FileOutputStream;
    .restart local v32    # "lastPkg":Ljava/lang/String;
    .restart local v34    # "i":I
    const-string/jumbo v0, "uid"

    const/4 v1, 0x0

    invoke-interface {v5, v1, v0}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5100
    nop

    .end local v26    # "pkg":Landroid/app/AppOpsManager$PackageOps;
    .end local v27    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    add-int/lit8 v8, v34, 0x1

    move-object/from16 v1, p0

    move-object/from16 v4, v16

    move/from16 v0, v19

    move-object/from16 v6, v20

    move-object/from16 v3, v31

    move-object/from16 v7, v32

    .end local v34    # "i":I
    .restart local v8    # "i":I
    goto/16 :goto_4

    .end local v16    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .end local v19    # "uidStateCount":I
    .end local v20    # "uidStatesClone":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseIntArray;>;"
    .end local v31    # "stream":Ljava/io/FileOutputStream;
    .end local v32    # "lastPkg":Ljava/lang/String;
    .restart local v0    # "uidStateCount":I
    .restart local v3    # "stream":Ljava/io/FileOutputStream;
    .restart local v4    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v6    # "uidStatesClone":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseIntArray;>;"
    .restart local v7    # "lastPkg":Ljava/lang/String;
    :cond_16
    move/from16 v19, v0

    move-object/from16 v31, v3

    move-object/from16 v16, v4

    move-object/from16 v20, v6

    move/from16 v34, v8

    .line 5189
    .end local v0    # "uidStateCount":I
    .end local v3    # "stream":Ljava/io/FileOutputStream;
    .end local v4    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .end local v6    # "uidStatesClone":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseIntArray;>;"
    .end local v8    # "i":I
    .restart local v16    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v19    # "uidStateCount":I
    .restart local v20    # "uidStatesClone":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseIntArray;>;"
    .restart local v31    # "stream":Ljava/io/FileOutputStream;
    if-eqz v7, :cond_18

    .line 5190
    const-string/jumbo v0, "pkg"

    const/4 v1, 0x0

    invoke-interface {v5, v1, v0}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_3
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    goto :goto_d

    .line 5197
    .end local v5    # "out":Landroid/util/TypedXmlSerializer;
    .end local v7    # "lastPkg":Ljava/lang/String;
    .end local v19    # "uidStateCount":I
    .end local v20    # "uidStatesClone":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseIntArray;>;"
    :catch_3
    move-exception v0

    move-object/from16 v1, p0

    :goto_c
    move-object/from16 v3, v31

    goto :goto_10

    .end local v16    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .end local v31    # "stream":Ljava/io/FileOutputStream;
    .restart local v3    # "stream":Ljava/io/FileOutputStream;
    .restart local v4    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    :catch_4
    move-exception v0

    move-object/from16 v16, v4

    move-object/from16 v1, p0

    .end local v3    # "stream":Ljava/io/FileOutputStream;
    .end local v4    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v16    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v31    # "stream":Ljava/io/FileOutputStream;
    goto :goto_10

    .line 5098
    .end local v16    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .end local v31    # "stream":Ljava/io/FileOutputStream;
    .restart local v0    # "uidStateCount":I
    .restart local v3    # "stream":Ljava/io/FileOutputStream;
    .restart local v4    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v5    # "out":Landroid/util/TypedXmlSerializer;
    .restart local v6    # "uidStatesClone":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseIntArray;>;"
    :cond_17
    move/from16 v19, v0

    move-object/from16 v31, v3

    move-object/from16 v16, v4

    move-object/from16 v20, v6

    .line 5194
    .end local v0    # "uidStateCount":I
    .end local v3    # "stream":Ljava/io/FileOutputStream;
    .end local v4    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .end local v6    # "uidStatesClone":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseIntArray;>;"
    .restart local v16    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v19    # "uidStateCount":I
    .restart local v20    # "uidStatesClone":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseIntArray;>;"
    .restart local v31    # "stream":Ljava/io/FileOutputStream;
    :cond_18
    :goto_d
    :try_start_12
    const-string v0, "app-ops"

    const/4 v1, 0x0

    invoke-interface {v5, v1, v0}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5195
    invoke-interface {v5}, Landroid/util/TypedXmlSerializer;->endDocument()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_6
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    .line 5196
    move-object/from16 v1, p0

    :try_start_13
    iget-object v0, v1, Lcom/android/server/appop/AppOpsService;->mFile:Landroid/util/AtomicFile;
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_5
    .catchall {:try_start_13 .. :try_end_13} :catchall_4

    move-object/from16 v3, v31

    .end local v31    # "stream":Ljava/io/FileOutputStream;
    .restart local v3    # "stream":Ljava/io/FileOutputStream;
    :try_start_14
    invoke-virtual {v0, v3}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_7
    .catchall {:try_start_14 .. :try_end_14} :catchall_4

    .line 5200
    .end local v5    # "out":Landroid/util/TypedXmlSerializer;
    .end local v19    # "uidStateCount":I
    .end local v20    # "uidStatesClone":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseIntArray;>;"
    goto :goto_11

    .line 5197
    .end local v3    # "stream":Ljava/io/FileOutputStream;
    .restart local v31    # "stream":Ljava/io/FileOutputStream;
    :catch_5
    move-exception v0

    goto :goto_e

    .line 5201
    .end local v16    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .end local v31    # "stream":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v0

    move-object/from16 v1, p0

    goto :goto_12

    .line 5197
    .restart local v16    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v31    # "stream":Ljava/io/FileOutputStream;
    :catch_6
    move-exception v0

    move-object/from16 v1, p0

    :goto_e
    move-object/from16 v3, v31

    .end local v31    # "stream":Ljava/io/FileOutputStream;
    .restart local v3    # "stream":Ljava/io/FileOutputStream;
    goto :goto_10

    .line 5077
    .end local v16    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v4    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v5    # "out":Landroid/util/TypedXmlSerializer;
    :catchall_2
    move-exception v0

    move-object/from16 v16, v4

    .end local v4    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v16    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    :goto_f
    :try_start_15
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_3

    .end local v3    # "stream":Ljava/io/FileOutputStream;
    .end local v16    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .end local p0    # "this":Lcom/android/server/appop/AppOpsService;
    :try_start_16
    throw v0
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_7
    .catchall {:try_start_16 .. :try_end_16} :catchall_4

    .line 5197
    .end local v5    # "out":Landroid/util/TypedXmlSerializer;
    .restart local v3    # "stream":Ljava/io/FileOutputStream;
    .restart local v16    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local p0    # "this":Lcom/android/server/appop/AppOpsService;
    :catch_7
    move-exception v0

    goto :goto_10

    .line 5077
    .restart local v5    # "out":Landroid/util/TypedXmlSerializer;
    :catchall_3
    move-exception v0

    goto :goto_f

    .line 5197
    .end local v5    # "out":Landroid/util/TypedXmlSerializer;
    .end local v16    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v4    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    :catch_8
    move-exception v0

    move-object/from16 v16, v4

    .line 5198
    .end local v4    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .local v0, "e":Ljava/io/IOException;
    .restart local v16    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    :goto_10
    :try_start_17
    const-string v4, "AppOps"

    const-string v5, "Failed to write state, restoring backup."

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5199
    iget-object v4, v1, Lcom/android/server/appop/AppOpsService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v4, v3}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 5201
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "stream":Ljava/io/FileOutputStream;
    .end local v16    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    :goto_11
    monitor-exit v2
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_4

    .line 5202
    iget-object v0, v1, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistry;

    invoke-virtual {v0}, Lcom/android/server/appop/HistoricalRegistry;->writeAndClearDiscreteHistory()V

    .line 5203
    return-void

    .line 5201
    :catchall_4
    move-exception v0

    goto :goto_12

    .line 5043
    :catch_9
    move-exception v0

    .line 5044
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_18
    const-string v3, "AppOps"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to write state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5045
    monitor-exit v2

    return-void

    .line 5201
    .end local v0    # "e":Ljava/io/IOException;
    :goto_12
    monitor-exit v2
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_4

    throw v0
.end method
