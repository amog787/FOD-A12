.class public final Lcom/android/server/am/ActiveServices;
.super Ljava/lang/Object;
.source "ActiveServices.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ActiveServices$ServiceDumper;,
        Lcom/android/server/am/ActiveServices$ServiceRestarter;,
        Lcom/android/server/am/ActiveServices$ServiceLookupResult;,
        Lcom/android/server/am/ActiveServices$AppOpCallback;,
        Lcom/android/server/am/ActiveServices$ServiceMap;,
        Lcom/android/server/am/ActiveServices$ActiveForegroundApp;,
        Lcom/android/server/am/ActiveServices$ForcedStandbyListener;
    }
.end annotation


# static fields
.field private static final DATE_FORMATTER:Ljava/text/SimpleDateFormat;

.field private static final DEBUG_DELAYED_SERVICE:Z = false

.field private static final DEBUG_DELAYED_STARTS:Z = false

.field static final FGS_BG_START_RESTRICTION_CHANGE_ID:J = 0xa2c30a7L

.field static final FGS_IMMEDIATE_DISPLAY_MASK:I = 0x36

.field static final FGS_START_EXCEPTION_CHANGE_ID:J = 0xa5fa937L

.field static final LAST_ANR_LIFETIME_DURATION_MSECS:I = 0x6ddd00

.field private static final LOG_SERVICE_START_STOP:Z = false

.field static final SERVICE_BACKGROUND_TIMEOUT:I

.field static final SERVICE_START_FOREGROUND_TIMEOUT:I

.field static final SERVICE_TIMEOUT:I

.field private static final SHOW_DUNGEON_NOTIFICATION:Z = false

.field private static final TAG:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_MU:Ljava/lang/String; = "ActivityManager_MU"

.field private static final TAG_SERVICE:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_SERVICE_EXECUTING:Ljava/lang/String; = "ActivityManager"


# instance fields
.field mAllowListWhileInUsePermissionInFgs:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mAm:Lcom/android/server/am/ActivityManagerService;

.field mAppWidgetManagerInternal:Landroid/appwidget/AppWidgetManagerInternal;

.field final mDestroyingServices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ServiceRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mFgsAppOpCallbacks:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/am/ActiveServices$AppOpCallback;",
            ">;"
        }
    .end annotation
.end field

.field final mFgsDeferralEligible:Landroid/util/SparseLongArray;

.field private mFgsDeferralRateLimited:Z

.field mLastAnrDump:Ljava/lang/String;

.field final mLastAnrDumpClearer:Ljava/lang/Runnable;

.field final mMaxStartingBackground:I

.field private mPendingBringups:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/android/server/am/ServiceRecord;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;>;"
        }
    .end annotation
.end field

.field final mPendingFgsNotifications:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ServiceRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mPendingServices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ServiceRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mPostDeferredFGSNotifications:Ljava/lang/Runnable;

.field private final mRestartBackoffDisabledPackages:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mRestartingServices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ServiceRecord;",
            ">;"
        }
    .end annotation
.end field

.field mScreenOn:Z

.field final mServiceConnections:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ConnectionRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field final mServiceMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/am/ActiveServices$ServiceMap;",
            ">;"
        }
    .end annotation
.end field

.field private mTmpCollectionResults:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ServiceRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 196
    sget v0, Landroid/os/Build;->HW_TIMEOUT_MULTIPLIER:I

    mul-int/lit16 v0, v0, 0x4e20

    sput v0, Lcom/android/server/am/ActiveServices;->SERVICE_TIMEOUT:I

    .line 199
    mul-int/lit8 v0, v0, 0xa

    sput v0, Lcom/android/server/am/ActiveServices;->SERVICE_BACKGROUND_TIMEOUT:I

    .line 203
    sget v0, Landroid/os/Build;->HW_TIMEOUT_MULTIPLIER:I

    mul-int/lit16 v0, v0, 0x2710

    sput v0, Lcom/android/server/am/ActiveServices;->SERVICE_START_FOREGROUND_TIMEOUT:I

    .line 301
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/am/ActiveServices;->DATE_FORMATTER:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 4
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;

    .line 507
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 223
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    .line 229
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActiveServices;->mServiceConnections:Landroid/util/ArrayMap;

    .line 237
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    .line 242
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    .line 247
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    .line 252
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActiveServices;->mPendingFgsNotifications:Ljava/util/ArrayList;

    .line 260
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/ActiveServices;->mFgsDeferralRateLimited:Z

    .line 265
    new-instance v1, Landroid/util/SparseLongArray;

    invoke-direct {v1}, Landroid/util/SparseLongArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActiveServices;->mFgsDeferralEligible:Landroid/util/SparseLongArray;

    .line 270
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActiveServices;->mPendingBringups:Landroid/util/ArrayMap;

    .line 273
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/am/ActiveServices;->mTmpCollectionResults:Ljava/util/ArrayList;

    .line 276
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActiveServices;->mFgsAppOpCallbacks:Landroid/util/SparseArray;

    .line 282
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActiveServices;->mRestartBackoffDisabledPackages:Landroid/util/ArraySet;

    .line 288
    iput-boolean v0, p0, Lcom/android/server/am/ActiveServices;->mScreenOn:Z

    .line 298
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActiveServices;->mAllowListWhileInUsePermissionInFgs:Landroid/util/ArraySet;

    .line 320
    new-instance v1, Lcom/android/server/am/ActiveServices$1;

    invoke-direct {v1, p0}, Lcom/android/server/am/ActiveServices$1;-><init>(Lcom/android/server/am/ActiveServices;)V

    iput-object v1, p0, Lcom/android/server/am/ActiveServices;->mLastAnrDumpClearer:Ljava/lang/Runnable;

    .line 2179
    new-instance v1, Lcom/android/server/am/ActiveServices$5;

    invoke-direct {v1, p0}, Lcom/android/server/am/ActiveServices$5;-><init>(Lcom/android/server/am/ActiveServices;)V

    iput-object v1, p0, Lcom/android/server/am/ActiveServices;->mPostDeferredFGSNotifications:Ljava/lang/Runnable;

    .line 508
    iput-object p1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 509
    const/4 v1, 0x0

    .line 511
    .local v1, "maxBg":I
    :try_start_0
    const-string/jumbo v2, "ro.config.max_starting_bg"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    .line 513
    goto :goto_0

    .line 512
    :catch_0
    move-exception v2

    .line 514
    :goto_0
    if-lez v1, :cond_0

    .line 515
    move v0, v1

    goto :goto_1

    :cond_0
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    const/16 v0, 0x8

    :goto_1
    iput v0, p0, Lcom/android/server/am/ActiveServices;->mMaxStartingBackground:I

    .line 517
    const-string/jumbo v0, "platform_compat"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 518
    .local v0, "b":Landroid/os/IBinder;
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/ActiveServices;Lcom/android/server/am/ServiceRecord;IZZZZZ)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/ActiveServices;
    .param p1, "x1"    # Lcom/android/server/am/ServiceRecord;
    .param p2, "x2"    # I
    .param p3, "x3"    # Z
    .param p4, "x4"    # Z
    .param p5, "x5"    # Z
    .param p6, "x6"    # Z
    .param p7, "x7"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/TransactionTooLargeException;
        }
    .end annotation

    .line 182
    invoke-direct/range {p0 .. p7}, Lcom/android/server/am/ActiveServices;->bringUpServiceLocked(Lcom/android/server/am/ServiceRecord;IZZZZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/am/ActiveServices;)Landroid/util/ArrayMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/ActiveServices;

    .line 182
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mPendingBringups:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/am/ActiveServices;Lcom/android/server/am/ServiceRecord;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Intent;ZIZLandroid/app/IServiceConnection;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/ActiveServices;
    .param p1, "x1"    # Lcom/android/server/am/ServiceRecord;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # I
    .param p5, "x5"    # Landroid/content/Intent;
    .param p6, "x6"    # Z
    .param p7, "x7"    # I
    .param p8, "x8"    # Z
    .param p9, "x9"    # Landroid/app/IServiceConnection;

    .line 182
    invoke-direct/range {p0 .. p9}, Lcom/android/server/am/ActiveServices;->requestStartTargetPermissionsReviewIfNeededLocked(Lcom/android/server/am/ServiceRecord;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Intent;ZIZLandroid/app/IServiceConnection;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/am/ActiveServices;Lcom/android/server/am/ServiceRecord;Landroid/content/Intent;IIZZZLandroid/os/IBinder;)Landroid/content/ComponentName;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/ActiveServices;
    .param p1, "x1"    # Lcom/android/server/am/ServiceRecord;
    .param p2, "x2"    # Landroid/content/Intent;
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # Z
    .param p6, "x6"    # Z
    .param p7, "x7"    # Z
    .param p8, "x8"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/TransactionTooLargeException;
        }
    .end annotation

    .line 182
    invoke-direct/range {p0 .. p8}, Lcom/android/server/am/ActiveServices;->startServiceInnerLocked(Lcom/android/server/am/ServiceRecord;Landroid/content/Intent;IIZZZLandroid/os/IBinder;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/am/ActiveServices;I)Lcom/android/server/am/ActiveServices$ServiceMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/ActiveServices;
    .param p1, "x1"    # I

    .line 182
    invoke-direct {p0, p1}, Lcom/android/server/am/ActiveServices;->getServiceMapLocked(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v0

    return-object v0
.end method

.method private appIsTopLocked(I)Z
    .locals 2
    .param p1, "uid"    # I

    .line 1660
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityManagerService;->getUidStateLocked(I)I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private appRestrictedAnyInBackground(ILjava/lang/String;)Z
    .locals 2
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 605
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getAppOpsManager()Landroid/app/AppOpsManager;

    move-result-object v0

    const/16 v1, 0x46

    invoke-virtual {v0, v1, p1, p2}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v0

    .line 607
    .local v0, "mode":I
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private final bringDownServiceIfNeededLocked(Lcom/android/server/am/ServiceRecord;ZZZ)V
    .locals 1
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;
    .param p2, "knowConn"    # Z
    .param p3, "hasConn"    # Z
    .param p4, "enqueueOomAdj"    # Z

    .line 4083
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/ActiveServices;->isServiceNeededLocked(Lcom/android/server/am/ServiceRecord;ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4084
    return-void

    .line 4088
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4089
    return-void

    .line 4092
    :cond_1
    invoke-direct {p0, p1, p4}, Lcom/android/server/am/ActiveServices;->bringDownServiceLocked(Lcom/android/server/am/ServiceRecord;Z)V

    .line 4093
    return-void
.end method

.method private bringDownServiceLocked(Lcom/android/server/am/ServiceRecord;Z)V
    .locals 20
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;
    .param p2, "enqueueOomAdj"    # Z

    .line 4101
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ServiceRecord;->getConnections()Landroid/util/ArrayMap;

    move-result-object v3

    .line 4102
    .local v3, "connections":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;>;"
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v4, 0x1

    sub-int/2addr v0, v4

    move v5, v0

    .local v5, "conni":I
    :goto_0
    const-string v6, "ActivityManager"

    const/4 v7, 0x0

    if-ltz v5, :cond_1

    .line 4103
    invoke-virtual {v3, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljava/util/ArrayList;

    .line 4104
    .local v8, "c":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    const/4 v0, 0x0

    move v9, v0

    .local v9, "i":I
    :goto_1
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v9, v0, :cond_0

    .line 4105
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/android/server/am/ConnectionRecord;

    .line 4108
    .local v10, "cr":Lcom/android/server/am/ConnectionRecord;
    iput-boolean v4, v10, Lcom/android/server/am/ConnectionRecord;->serviceDead:Z

    .line 4109
    invoke-virtual {v10}, Lcom/android/server/am/ConnectionRecord;->stopAssociation()V

    .line 4111
    :try_start_0
    iget-object v0, v10, Lcom/android/server/am/ConnectionRecord;->conn:Landroid/app/IServiceConnection;

    iget-object v11, v2, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-interface {v0, v11, v7, v4}, Landroid/app/IServiceConnection;->connected(Landroid/content/ComponentName;Landroid/os/IBinder;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4116
    goto :goto_2

    .line 4112
    :catch_0
    move-exception v0

    .line 4113
    .local v0, "e":Ljava/lang/Exception;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failure disconnecting service "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v2, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " to connection "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4114
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/am/ConnectionRecord;

    iget-object v12, v12, Lcom/android/server/am/ConnectionRecord;->conn:Landroid/app/IServiceConnection;

    invoke-interface {v12}, Landroid/app/IServiceConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, " (in "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4115
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/am/ConnectionRecord;

    iget-object v12, v12, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v12, v12, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    iget-object v12, v12, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 4113
    invoke-static {v6, v11, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4104
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v10    # "cr":Lcom/android/server/am/ConnectionRecord;
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 4102
    .end local v8    # "c":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .end local v9    # "i":I
    :cond_0
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 4120
    .end local v5    # "conni":I
    :cond_1
    const/4 v0, 0x0

    .line 4122
    .local v0, "needOomAdj":Z
    iget-object v5, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v8, 0x0

    if-eqz v5, :cond_3

    iget-object v5, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v5}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 4123
    iget-object v5, v2, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    sub-int/2addr v5, v4

    move v9, v5

    move v5, v0

    .end local v0    # "needOomAdj":Z
    .local v5, "needOomAdj":Z
    .restart local v9    # "i":I
    :goto_3
    if-ltz v9, :cond_4

    .line 4124
    iget-object v0, v2, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {v0, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/android/server/am/IntentBindRecord;

    .line 4127
    .local v10, "ibr":Lcom/android/server/am/IntentBindRecord;
    iget-boolean v0, v10, Lcom/android/server/am/IntentBindRecord;->hasBound:Z

    if-eqz v0, :cond_2

    .line 4129
    :try_start_1
    const-string v0, "bring down unbind"

    invoke-direct {v1, v2, v8, v0}, Lcom/android/server/am/ActiveServices;->bumpServiceExecutingLocked(Lcom/android/server/am/ServiceRecord;ZLjava/lang/String;)V

    .line 4130
    const/4 v5, 0x1

    .line 4131
    iput-boolean v8, v10, Lcom/android/server/am/IntentBindRecord;->hasBound:Z

    .line 4132
    iput-boolean v8, v10, Lcom/android/server/am/IntentBindRecord;->requested:Z

    .line 4133
    iget-object v0, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v0

    iget-object v11, v10, Lcom/android/server/am/IntentBindRecord;->intent:Landroid/content/Intent$FilterComparison;

    .line 4134
    invoke-virtual {v11}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    move-result-object v11

    .line 4133
    invoke-interface {v0, v2, v11}, Landroid/app/IApplicationThread;->scheduleUnbindService(Landroid/os/IBinder;Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 4141
    goto :goto_4

    .line 4135
    :catch_1
    move-exception v0

    .line 4136
    .local v0, "e":Ljava/lang/Exception;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Exception when unbinding service "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v2, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v6, v11, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4138
    const/4 v5, 0x0

    .line 4139
    invoke-direct/range {p0 .. p2}, Lcom/android/server/am/ActiveServices;->serviceProcessGoneLocked(Lcom/android/server/am/ServiceRecord;Z)V

    .line 4140
    goto :goto_5

    .line 4123
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v10    # "ibr":Lcom/android/server/am/IntentBindRecord;
    :cond_2
    :goto_4
    add-int/lit8 v9, v9, -0x1

    goto :goto_3

    .line 4146
    .end local v5    # "needOomAdj":Z
    .end local v9    # "i":I
    .local v0, "needOomAdj":Z
    :cond_3
    move v5, v0

    .end local v0    # "needOomAdj":Z
    .restart local v5    # "needOomAdj":Z
    :cond_4
    :goto_5
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 4149
    .local v9, "now":J
    iget-boolean v0, v2, Lcom/android/server/am/ServiceRecord;->fgRequired:Z

    if-eqz v0, :cond_6

    .line 4150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Bringing down service while still waiting for start foreground: "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4152
    iput-boolean v8, v2, Lcom/android/server/am/ServiceRecord;->fgRequired:Z

    .line 4153
    iput-boolean v8, v2, Lcom/android/server/am/ServiceRecord;->fgWaiting:Z

    .line 4154
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ServiceRecord;->getTracker()Lcom/android/internal/app/procstats/ServiceState;

    move-result-object v0

    .line 4155
    .local v0, "stracker":Lcom/android/internal/app/procstats/ServiceState;
    if-eqz v0, :cond_5

    .line 4156
    iget-object v11, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v11}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v11

    invoke-virtual {v0, v8, v11, v9, v10}, Lcom/android/internal/app/procstats/ServiceState;->setForeground(ZIJ)V

    .line 4158
    :cond_5
    iget-object v11, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v12, v11, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    iget-object v11, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    invoke-static {v11}, Landroid/app/AppOpsManager;->getToken(Lcom/android/internal/app/IAppOpsService;)Landroid/os/IBinder;

    move-result-object v13

    const/16 v14, 0x4c

    iget-object v11, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v15, v11, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v11, v2, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    const/16 v17, 0x0

    move-object/from16 v16, v11

    invoke-virtual/range {v12 .. v17}, Lcom/android/server/appop/AppOpsService;->finishOperation(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;)V

    .line 4160
    iget-object v11, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v12, 0x42

    invoke-virtual {v11, v12, v2}, Lcom/android/server/am/ActivityManagerService$MainHandler;->removeMessages(ILjava/lang/Object;)V

    .line 4162
    iget-object v11, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v11, :cond_6

    .line 4163
    iget-object v11, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v12, 0x45

    invoke-virtual {v11, v12}, Lcom/android/server/am/ActivityManagerService$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    .line 4165
    .local v11, "msg":Landroid/os/Message;
    iget-object v12, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iput-object v12, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4166
    invoke-virtual {v11}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v12

    .line 4167
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ServiceRecord;->toString()Ljava/lang/String;

    move-result-object v13

    .line 4166
    const-string/jumbo v14, "servicerecord"

    invoke-virtual {v12, v14, v13}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 4168
    iget-object v12, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v12, v12, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    invoke-virtual {v12, v11}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendMessage(Landroid/os/Message;)Z

    .line 4177
    .end local v0    # "stracker":Lcom/android/internal/app/procstats/ServiceState;
    .end local v11    # "msg":Landroid/os/Message;
    :cond_6
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    iput-wide v11, v2, Lcom/android/server/am/ServiceRecord;->destroyTime:J

    .line 4183
    iget v0, v2, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-direct {v1, v0}, Lcom/android/server/am/ActiveServices;->getServiceMapLocked(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v11

    .line 4184
    .local v11, "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    iget-object v0, v11, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    iget-object v12, v2, Lcom/android/server/am/ServiceRecord;->instanceName:Landroid/content/ComponentName;

    invoke-virtual {v0, v12}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/android/server/am/ServiceRecord;

    .line 4188
    .local v12, "found":Lcom/android/server/am/ServiceRecord;
    if-eqz v12, :cond_8

    if-ne v12, v2, :cond_7

    goto :goto_6

    .line 4191
    :cond_7
    iget-object v0, v11, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    iget-object v4, v2, Lcom/android/server/am/ServiceRecord;->instanceName:Landroid/content/ComponentName;

    invoke-virtual {v0, v4, v12}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4192
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bringing down "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " but actually running "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4195
    :cond_8
    :goto_6
    iget-object v0, v11, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByIntent:Landroid/util/ArrayMap;

    iget-object v13, v2, Lcom/android/server/am/ServiceRecord;->intent:Landroid/content/Intent$FilterComparison;

    invoke-virtual {v0, v13}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4196
    iput v8, v2, Lcom/android/server/am/ServiceRecord;->totalRestartCount:I

    .line 4197
    invoke-direct {v1, v2, v8, v4}, Lcom/android/server/am/ActiveServices;->unscheduleServiceRestartLocked(Lcom/android/server/am/ServiceRecord;IZ)Z

    .line 4200
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v4

    .local v0, "i":I
    :goto_7
    if-ltz v0, :cond_a

    .line 4201
    iget-object v13, v1, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    if-ne v13, v2, :cond_9

    .line 4202
    iget-object v13, v1, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 4200
    :cond_9
    add-int/lit8 v0, v0, -0x1

    goto :goto_7

    .line 4206
    .end local v0    # "i":I
    :cond_a
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mPendingBringups:Landroid/util/ArrayMap;

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4210
    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/ActiveServices;->cancelForegroundNotificationLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 4211
    iget-boolean v0, v2, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    if-eqz v0, :cond_d

    .line 4212
    invoke-direct {v1, v11, v2}, Lcom/android/server/am/ActiveServices;->decActiveForegroundAppLocked(Lcom/android/server/am/ActiveServices$ServiceMap;Lcom/android/server/am/ServiceRecord;)V

    .line 4213
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ServiceRecord;->getTracker()Lcom/android/internal/app/procstats/ServiceState;

    move-result-object v0

    .line 4214
    .local v0, "stracker":Lcom/android/internal/app/procstats/ServiceState;
    if-eqz v0, :cond_b

    .line 4215
    iget-object v13, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v13, v13, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v13}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v13

    invoke-virtual {v0, v8, v13, v9, v10}, Lcom/android/internal/app/procstats/ServiceState;->setForeground(ZIJ)V

    .line 4217
    :cond_b
    iget-object v13, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v14, v13, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    iget-object v13, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v13, v13, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    .line 4218
    invoke-static {v13}, Landroid/app/AppOpsManager;->getToken(Lcom/android/internal/app/IAppOpsService;)Landroid/os/IBinder;

    move-result-object v15

    const/16 v16, 0x4c

    iget-object v13, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v13, v13, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v4, v2, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    const/16 v19, 0x0

    .line 4217
    move/from16 v17, v13

    move-object/from16 v18, v4

    invoke-virtual/range {v14 .. v19}, Lcom/android/server/appop/AppOpsService;->finishOperation(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;)V

    .line 4220
    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/ActiveServices;->unregisterAppOpCallbackLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 4221
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v13

    iput-wide v13, v2, Lcom/android/server/am/ServiceRecord;->mFgsExitTime:J

    .line 4222
    const/4 v4, 0x2

    .line 4224
    iget-wide v13, v2, Lcom/android/server/am/ServiceRecord;->mFgsExitTime:J

    iget-wide v7, v2, Lcom/android/server/am/ServiceRecord;->mFgsEnterTime:J

    cmp-long v7, v13, v7

    if-lez v7, :cond_c

    .line 4225
    iget-wide v7, v2, Lcom/android/server/am/ServiceRecord;->mFgsExitTime:J

    iget-wide v13, v2, Lcom/android/server/am/ServiceRecord;->mFgsEnterTime:J

    sub-long/2addr v7, v13

    long-to-int v7, v7

    goto :goto_8

    :cond_c
    const/4 v7, 0x0

    .line 4222
    :goto_8
    invoke-direct {v1, v2, v4, v7}, Lcom/android/server/am/ActiveServices;->logFGSStateChangeLocked(Lcom/android/server/am/ServiceRecord;II)V

    .line 4226
    iget-object v4, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v2, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    iget v8, v2, Lcom/android/server/am/ServiceRecord;->userId:I

    const/4 v13, 0x0

    invoke-virtual {v4, v7, v8, v13}, Lcom/android/server/am/ActivityManagerService;->updateForegroundServiceUsageStats(Landroid/content/ComponentName;IZ)V

    goto :goto_9

    .line 4211
    .end local v0    # "stracker":Lcom/android/internal/app/procstats/ServiceState;
    :cond_d
    move v13, v8

    .line 4229
    :goto_9
    iput-boolean v13, v2, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    .line 4230
    iput-boolean v13, v2, Lcom/android/server/am/ServiceRecord;->mFgsNotificationWasDeferred:Z

    .line 4231
    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/ActiveServices;->dropFgsNotificationStateLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 4232
    iput v13, v2, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    .line 4233
    const/4 v4, 0x0

    iput-object v4, v2, Lcom/android/server/am/ServiceRecord;->foregroundNoti:Landroid/app/Notification;

    .line 4234
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/ActiveServices;->resetFgsRestrictionLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 4237
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ServiceRecord;->clearDeliveredStartsLocked()V

    .line 4238
    iget-object v0, v2, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4239
    iget-object v0, v11, Lcom/android/server/am/ActiveServices$ServiceMap;->mDelayedStartList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4241
    iget-object v0, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_e

    .line 4242
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    iget-object v4, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v7, v2, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v2, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    .line 4243
    invoke-virtual {v8}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v8

    .line 4242
    invoke-virtual {v0, v4, v7, v8}, Lcom/android/server/am/BatteryStatsService;->noteServiceStopLaunch(ILjava/lang/String;Ljava/lang/String;)V

    .line 4244
    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/ActiveServices;->stopServiceAndUpdateAllowlistManagerLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 4245
    iget-object v0, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 4247
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v0, v4, v8, v7}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZLcom/android/server/am/ProcessRecord;)V

    .line 4248
    iget-object v0, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    invoke-direct {v1, v0, v8}, Lcom/android/server/am/ActiveServices;->updateServiceForegroundLocked(Lcom/android/server/am/ProcessServiceRecord;Z)V

    .line 4250
    :try_start_2
    const-string v0, "destroy"

    invoke-direct {v1, v2, v8, v0}, Lcom/android/server/am/ActiveServices;->bumpServiceExecutingLocked(Lcom/android/server/am/ServiceRecord;ZLjava/lang/String;)V

    .line 4251
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4252
    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/android/server/am/ServiceRecord;->destroying:Z

    .line 4253
    const/4 v5, 0x1

    .line 4254
    iget-object v0, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/app/IApplicationThread;->scheduleStopService(Landroid/os/IBinder;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 4259
    goto :goto_a

    .line 4255
    :catch_2
    move-exception v0

    .line 4256
    .local v0, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception when destroying service "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v2, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4258
    invoke-direct/range {p0 .. p2}, Lcom/android/server/am/ActiveServices;->serviceProcessGoneLocked(Lcom/android/server/am/ServiceRecord;Z)V

    .line 4269
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_e
    :goto_a
    if-eqz v5, :cond_10

    .line 4270
    if-eqz p2, :cond_f

    .line 4271
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0, v4}, Lcom/android/server/am/ActivityManagerService;->enqueueOomAdjTargetLocked(Lcom/android/server/am/ProcessRecord;)V

    goto :goto_b

    .line 4273
    :cond_f
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    const-string/jumbo v6, "updateOomAdj_unbindService"

    invoke-virtual {v0, v4, v6}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)Z

    .line 4276
    :cond_10
    :goto_b
    iget-object v0, v2, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-lez v0, :cond_11

    .line 4277
    iget-object v0, v2, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 4280
    :cond_11
    iget-object v0, v2, Lcom/android/server/am/ServiceRecord;->restarter:Ljava/lang/Runnable;

    instance-of v0, v0, Lcom/android/server/am/ActiveServices$ServiceRestarter;

    if-eqz v0, :cond_12

    .line 4281
    iget-object v0, v2, Lcom/android/server/am/ServiceRecord;->restarter:Ljava/lang/Runnable;

    check-cast v0, Lcom/android/server/am/ActiveServices$ServiceRestarter;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/android/server/am/ActiveServices$ServiceRestarter;->setService(Lcom/android/server/am/ServiceRecord;)V

    .line 4284
    :cond_12
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v0

    .line 4285
    .local v0, "memFactor":I
    iget-object v4, v2, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    if-eqz v4, :cond_13

    .line 4286
    iget-object v4, v2, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v0, v9, v10}, Lcom/android/internal/app/procstats/ServiceState;->setStarted(ZIJ)V

    .line 4287
    iget-object v4, v2, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    invoke-virtual {v4, v6, v0, v9, v10}, Lcom/android/internal/app/procstats/ServiceState;->setBound(ZIJ)V

    .line 4288
    iget v4, v2, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    if-nez v4, :cond_13

    .line 4289
    iget-object v4, v2, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    invoke-virtual {v4, v2, v6}, Lcom/android/internal/app/procstats/ServiceState;->clearCurrentOwner(Ljava/lang/Object;Z)V

    .line 4290
    const/4 v4, 0x0

    iput-object v4, v2, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    .line 4294
    :cond_13
    invoke-virtual {v11, v2}, Lcom/android/server/am/ActiveServices$ServiceMap;->ensureNotStartingBackgroundLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 4295
    return-void
.end method

.method private bringUpServiceLocked(Lcom/android/server/am/ServiceRecord;IZZZZZ)Ljava/lang/String;
    .locals 29
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;
    .param p2, "intentFlags"    # I
    .param p3, "execInFg"    # Z
    .param p4, "whileRestarting"    # Z
    .param p5, "permissionsReviewRequired"    # Z
    .param p6, "packageFrozen"    # Z
    .param p7, "enqueueOomAdj"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/TransactionTooLargeException;
        }
    .end annotation

    .line 3687
    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move/from16 v11, p7

    iget-object v0, v10, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v12, 0x0

    const/4 v13, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v10, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3688
    move/from16 v14, p3

    invoke-direct {v9, v10, v14, v13}, Lcom/android/server/am/ActiveServices;->sendServiceArgsLocked(Lcom/android/server/am/ServiceRecord;ZZ)V

    .line 3689
    return-object v12

    .line 3687
    :cond_0
    move/from16 v14, p3

    .line 3692
    if-nez p4, :cond_1

    iget-object v0, v9, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3694
    return-object v12

    .line 3703
    :cond_1
    iget-object v0, v9, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3704
    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/ActiveServices;->clearRestartingIfNeededLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 3708
    :cond_2
    iget-boolean v0, v10, Lcom/android/server/am/ServiceRecord;->delayed:Z

    if-eqz v0, :cond_3

    .line 3710
    iget v0, v10, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-direct {v9, v0}, Lcom/android/server/am/ActiveServices;->getServiceMapLocked(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mDelayedStartList:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3711
    iput-boolean v13, v10, Lcom/android/server/am/ServiceRecord;->delayed:Z

    .line 3716
    :cond_3
    iget-object v0, v9, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    iget v1, v10, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-virtual {v0, v1}, Lcom/android/server/am/UserController;->hasStartedUserState(I)Z

    move-result v0

    const-string v15, " for service "

    const-string v8, "/"

    const-string v7, "Unable to launch app "

    const-string v6, "ActivityManager"

    if-nez v0, :cond_4

    .line 3717
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v10, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v10, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v10, Lcom/android/server/am/ServiceRecord;->intent:Landroid/content/Intent$FilterComparison;

    .line 3720
    invoke-virtual {v1}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v10, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " is stopped"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3721
    .local v0, "msg":Ljava/lang/String;
    invoke-static {v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3722
    invoke-direct {v9, v10, v11}, Lcom/android/server/am/ActiveServices;->bringDownServiceLocked(Lcom/android/server/am/ServiceRecord;Z)V

    .line 3723
    return-object v0

    .line 3728
    .end local v0    # "msg":Ljava/lang/String;
    :cond_4
    iget-object v0, v10, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v1, v10, Lcom/android/server/am/ServiceRecord;->mRecentCallingPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-boolean v0, v10, Lcom/android/server/am/ServiceRecord;->isNotAppComponentUsage:Z

    if-nez v0, :cond_5

    .line 3730
    iget-object v0, v9, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUsageStatsService:Landroid/app/usage/UsageStatsManagerInternal;

    iget-object v1, v10, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    iget v2, v10, Lcom/android/server/am/ServiceRecord;->userId:I

    const/16 v3, 0x1f

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/usage/UsageStatsManagerInternal;->reportEvent(Ljava/lang/String;II)V

    .line 3736
    :cond_5
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iget-object v1, v10, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    iget v2, v10, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-interface {v0, v1, v13, v2}, Landroid/content/pm/IPackageManager;->setPackageStoppedState(Ljava/lang/String;ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3739
    :catch_0
    move-exception v0

    .line 3740
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed trying to unstop package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v10, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 3738
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 3742
    :goto_0
    nop

    .line 3744
    :goto_1
    iget-object v0, v10, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget v0, v0, Landroid/content/pm/ServiceInfo;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_2

    :cond_6
    move v0, v13

    :goto_2
    move/from16 v25, v0

    .line 3745
    .local v25, "isolated":Z
    iget-object v5, v10, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    .line 3746
    .local v5, "procName":Ljava/lang/String;
    new-instance v0, Lcom/android/server/am/HostingRecord;

    iget-object v1, v10, Lcom/android/server/am/ServiceRecord;->instanceName:Landroid/content/ComponentName;

    const-string/jumbo v2, "service"

    invoke-direct {v0, v2, v1}, Lcom/android/server/am/HostingRecord;-><init>(Ljava/lang/String;Landroid/content/ComponentName;)V

    move-object/from16 v16, v0

    .line 3749
    .local v16, "hostingRecord":Lcom/android/server/am/HostingRecord;
    if-nez v25, :cond_9

    .line 3750
    iget-object v0, v9, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v10, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v5, v1}, Lcom/android/server/am/ActivityManagerService;->getProcessRecordLocked(Ljava/lang/String;I)Lcom/android/server/am/ProcessRecord;

    move-result-object v4

    .line 3753
    .local v4, "app":Lcom/android/server/am/ProcessRecord;
    if-eqz v4, :cond_8

    .line 3754
    invoke-virtual {v4}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v17

    .line 3755
    .local v17, "thread":Landroid/app/IApplicationThread;
    invoke-virtual {v4}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v18

    .line 3756
    .local v18, "pid":I
    invoke-virtual {v4}, Lcom/android/server/am/ProcessRecord;->getUidRecord()Lcom/android/server/am/UidRecord;

    move-result-object v19

    .line 3757
    .local v19, "uidRecord":Lcom/android/server/am/UidRecord;
    if-eqz v17, :cond_7

    .line 3759
    :try_start_1
    iget-object v0, v10, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v1, v10, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-wide v1, v1, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    iget-object v3, v9, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/android/server/am/ProcessRecord;->addPackage(Ljava/lang/String;JLcom/android/server/am/ProcessStatsService;)Z
    :try_end_1
    .catch Landroid/os/TransactionTooLargeException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_4

    .line 3761
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v4

    move-object/from16 v20, v4

    .end local v4    # "app":Lcom/android/server/am/ProcessRecord;
    .local v20, "app":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v4, v17

    move-object/from16 v26, v5

    .end local v5    # "procName":Ljava/lang/String;
    .local v26, "procName":Ljava/lang/String;
    move/from16 v5, v18

    move-object v13, v6

    move-object/from16 v6, v19

    move-object/from16 v27, v7

    move/from16 v7, p3

    move-object/from16 v28, v8

    move/from16 v8, p7

    :try_start_2
    invoke-direct/range {v1 .. v8}, Lcom/android/server/am/ActiveServices;->realStartServiceLocked(Lcom/android/server/am/ServiceRecord;Lcom/android/server/am/ProcessRecord;Landroid/app/IApplicationThread;ILcom/android/server/am/UidRecord;ZZ)V
    :try_end_2
    .catch Landroid/os/TransactionTooLargeException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 3763
    return-object v12

    .line 3766
    :catch_2
    move-exception v0

    goto :goto_3

    .line 3764
    :catch_3
    move-exception v0

    goto :goto_4

    .line 3766
    .end local v20    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v26    # "procName":Ljava/lang/String;
    .restart local v4    # "app":Lcom/android/server/am/ProcessRecord;
    .restart local v5    # "procName":Ljava/lang/String;
    :catch_4
    move-exception v0

    move-object/from16 v20, v4

    move-object/from16 v26, v5

    move-object v13, v6

    move-object/from16 v27, v7

    move-object/from16 v28, v8

    .line 3767
    .end local v4    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v5    # "procName":Ljava/lang/String;
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v20    # "app":Lcom/android/server/am/ProcessRecord;
    .restart local v26    # "procName":Ljava/lang/String;
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception when starting service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v10, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 3764
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v20    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v26    # "procName":Ljava/lang/String;
    .restart local v4    # "app":Lcom/android/server/am/ProcessRecord;
    .restart local v5    # "procName":Ljava/lang/String;
    :catch_5
    move-exception v0

    move-object/from16 v20, v4

    move-object/from16 v26, v5

    .line 3765
    .end local v4    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v5    # "procName":Ljava/lang/String;
    .local v0, "e":Landroid/os/TransactionTooLargeException;
    .restart local v20    # "app":Lcom/android/server/am/ProcessRecord;
    .restart local v26    # "procName":Ljava/lang/String;
    :goto_4
    throw v0

    .line 3757
    .end local v0    # "e":Landroid/os/TransactionTooLargeException;
    .end local v20    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v26    # "procName":Ljava/lang/String;
    .restart local v4    # "app":Lcom/android/server/am/ProcessRecord;
    .restart local v5    # "procName":Ljava/lang/String;
    :cond_7
    move-object/from16 v20, v4

    move-object/from16 v26, v5

    move-object v13, v6

    move-object/from16 v27, v7

    move-object/from16 v28, v8

    .line 3773
    .end local v4    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v5    # "procName":Ljava/lang/String;
    .end local v17    # "thread":Landroid/app/IApplicationThread;
    .end local v18    # "pid":I
    .end local v19    # "uidRecord":Lcom/android/server/am/UidRecord;
    .restart local v20    # "app":Lcom/android/server/am/ProcessRecord;
    .restart local v26    # "procName":Ljava/lang/String;
    :goto_5
    goto :goto_6

    .line 3753
    .end local v20    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v26    # "procName":Ljava/lang/String;
    .restart local v4    # "app":Lcom/android/server/am/ProcessRecord;
    .restart local v5    # "procName":Ljava/lang/String;
    :cond_8
    move-object/from16 v20, v4

    move-object/from16 v26, v5

    move-object v13, v6

    move-object/from16 v27, v7

    move-object/from16 v28, v8

    .line 3794
    .end local v4    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v5    # "procName":Ljava/lang/String;
    .restart local v20    # "app":Lcom/android/server/am/ProcessRecord;
    .restart local v26    # "procName":Ljava/lang/String;
    :goto_6
    move-object/from16 v0, v16

    move-object/from16 v4, v20

    goto :goto_7

    .line 3781
    .end local v20    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v26    # "procName":Ljava/lang/String;
    .restart local v5    # "procName":Ljava/lang/String;
    :cond_9
    move-object/from16 v26, v5

    move-object v13, v6

    move-object/from16 v27, v7

    move-object/from16 v28, v8

    .end local v5    # "procName":Ljava/lang/String;
    .restart local v26    # "procName":Ljava/lang/String;
    iget-object v4, v10, Lcom/android/server/am/ServiceRecord;->isolatedProc:Lcom/android/server/am/ProcessRecord;

    .line 3782
    .restart local v4    # "app":Lcom/android/server/am/ProcessRecord;
    invoke-static {}, Landroid/webkit/WebViewZygote;->isMultiprocessEnabled()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, v10, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 3783
    invoke-static {}, Landroid/webkit/WebViewZygote;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 3784
    iget-object v0, v10, Lcom/android/server/am/ServiceRecord;->instanceName:Landroid/content/ComponentName;

    invoke-static {v0}, Lcom/android/server/am/HostingRecord;->byWebviewZygote(Landroid/content/ComponentName;)Lcom/android/server/am/HostingRecord;

    move-result-object v16

    .line 3786
    :cond_a
    iget-object v0, v10, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget v0, v0, Landroid/content/pm/ServiceInfo;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_b

    .line 3787
    iget-object v0, v10, Lcom/android/server/am/ServiceRecord;->instanceName:Landroid/content/ComponentName;

    iget-object v1, v10, Lcom/android/server/am/ServiceRecord;->definingPackageName:Ljava/lang/String;

    iget v2, v10, Lcom/android/server/am/ServiceRecord;->definingUid:I

    invoke-static {v0, v1, v2}, Lcom/android/server/am/HostingRecord;->byAppZygote(Landroid/content/ComponentName;Ljava/lang/String;I)Lcom/android/server/am/HostingRecord;

    move-result-object v16

    move-object/from16 v0, v16

    goto :goto_7

    .line 3786
    :cond_b
    move-object/from16 v0, v16

    .line 3794
    .end local v16    # "hostingRecord":Lcom/android/server/am/HostingRecord;
    .local v0, "hostingRecord":Lcom/android/server/am/HostingRecord;
    :goto_7
    if-nez v4, :cond_d

    if-nez p5, :cond_d

    if-nez p6, :cond_d

    .line 3797
    iget-object v1, v9, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v10, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    const/16 v19, 0x1

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v16, v1

    move-object/from16 v17, v26

    move-object/from16 v18, v2

    move/from16 v20, p2

    move-object/from16 v21, v0

    move/from16 v24, v25

    invoke-virtual/range {v16 .. v24}, Lcom/android/server/am/ActivityManagerService;->startProcessLocked(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;ZILcom/android/server/am/HostingRecord;IZZ)Lcom/android/server/am/ProcessRecord;

    move-result-object v1

    move-object v4, v1

    if-nez v1, :cond_c

    .line 3799
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v2, v27

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v10, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, v28

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v10, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v10, Lcom/android/server/am/ServiceRecord;->intent:Landroid/content/Intent$FilterComparison;

    .line 3802
    invoke-virtual {v2}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": process is bad"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3803
    .local v1, "msg":Ljava/lang/String;
    invoke-static {v13, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3804
    invoke-direct {v9, v10, v11}, Lcom/android/server/am/ActiveServices;->bringDownServiceLocked(Lcom/android/server/am/ServiceRecord;Z)V

    .line 3805
    return-object v1

    .line 3807
    .end local v1    # "msg":Ljava/lang/String;
    :cond_c
    if-eqz v25, :cond_d

    .line 3808
    iput-object v4, v10, Lcom/android/server/am/ServiceRecord;->isolatedProc:Lcom/android/server/am/ProcessRecord;

    .line 3812
    :cond_d
    iget-boolean v1, v10, Lcom/android/server/am/ServiceRecord;->fgRequired:Z

    if-eqz v1, :cond_e

    .line 3817
    iget-object v15, v9, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v10, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    sget v2, Lcom/android/server/am/ActiveServices;->SERVICE_START_FOREGROUND_TIMEOUT:I

    int-to-long v2, v2

    const/16 v19, 0x12f

    const/16 v21, 0x0

    iget v5, v10, Lcom/android/server/am/ServiceRecord;->mRecentCallingUid:I

    const-string v20, "fg-service-launch"

    move/from16 v16, v1

    move-wide/from16 v17, v2

    move/from16 v22, v5

    invoke-virtual/range {v15 .. v22}, Lcom/android/server/am/ActivityManagerService;->tempAllowlistUidLocked(IJILjava/lang/String;II)V

    .line 3824
    :cond_e
    iget-object v1, v9, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 3825
    iget-object v1, v9, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3828
    :cond_f
    iget-boolean v1, v10, Lcom/android/server/am/ServiceRecord;->delayedStop:Z

    if-eqz v1, :cond_10

    .line 3830
    const/4 v1, 0x0

    iput-boolean v1, v10, Lcom/android/server/am/ServiceRecord;->delayedStop:Z

    .line 3831
    iget-boolean v1, v10, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    if-eqz v1, :cond_10

    .line 3834
    invoke-direct {v9, v10, v11}, Lcom/android/server/am/ActiveServices;->stopServiceLocked(Lcom/android/server/am/ServiceRecord;Z)V

    .line 3838
    :cond_10
    return-object v12
.end method

.method private final bumpServiceExecutingLocked(Lcom/android/server/am/ServiceRecord;ZLjava/lang/String;)V
    .locals 7
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;
    .param p2, "fg"    # Z
    .param p3, "why"    # Ljava/lang/String;

    .line 3352
    const/4 v0, 0x1

    .line 3353
    .local v0, "timeoutNeeded":Z
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget v1, v1, Lcom/android/server/am/ActivityManagerService;->mBootPhase:I

    const/16 v2, 0x258

    if-ge v1, v2, :cond_0

    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 3354
    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v1

    sget v2, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-ne v1, v2, :cond_0

    .line 3356
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Too early to start/bind service in system_server: Phase="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget v2, v2, Lcom/android/server/am/ActivityManagerService;->mBootPhase:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3357
    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3356
    const-string v2, "ActivityManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3358
    const/4 v0, 0x0

    .line 3361
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 3363
    .local v1, "now":J
    iget v3, p1, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    const/4 v4, 0x1

    if-nez v3, :cond_4

    .line 3364
    iput-boolean p2, p1, Lcom/android/server/am/ServiceRecord;->executeFg:Z

    .line 3365
    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->getTracker()Lcom/android/internal/app/procstats/ServiceState;

    move-result-object v3

    .line 3366
    .local v3, "stracker":Lcom/android/internal/app/procstats/ServiceState;
    if-eqz v3, :cond_1

    .line 3367
    iget-object v5, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v5}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v5

    invoke-virtual {v3, v4, v5, v1, v2}, Lcom/android/internal/app/procstats/ServiceState;->setExecuting(ZIJ)V

    .line 3369
    :cond_1
    iget-object v5, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v5, :cond_5

    .line 3370
    iget-object v5, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 3371
    .local v5, "psr":Lcom/android/server/am/ProcessServiceRecord;
    invoke-virtual {v5, p1}, Lcom/android/server/am/ProcessServiceRecord;->startExecutingService(Lcom/android/server/am/ServiceRecord;)V

    .line 3372
    invoke-virtual {v5}, Lcom/android/server/am/ProcessServiceRecord;->shouldExecServicesFg()Z

    move-result v6

    if-nez v6, :cond_3

    if-eqz p2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    move v6, v4

    :goto_1
    invoke-virtual {v5, v6}, Lcom/android/server/am/ProcessServiceRecord;->setExecServicesFg(Z)V

    .line 3373
    if-eqz v0, :cond_5

    invoke-virtual {v5}, Lcom/android/server/am/ProcessServiceRecord;->numberOfExecutingServices()I

    move-result v6

    if-ne v6, v4, :cond_5

    .line 3374
    iget-object v6, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p0, v6}, Lcom/android/server/am/ActiveServices;->scheduleServiceTimeoutLocked(Lcom/android/server/am/ProcessRecord;)V

    goto :goto_2

    .line 3377
    .end local v3    # "stracker":Lcom/android/internal/app/procstats/ServiceState;
    .end local v5    # "psr":Lcom/android/server/am/ProcessServiceRecord;
    :cond_4
    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v3, :cond_5

    if-eqz p2, :cond_5

    .line 3378
    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 3379
    .local v3, "psr":Lcom/android/server/am/ProcessServiceRecord;
    invoke-virtual {v3}, Lcom/android/server/am/ProcessServiceRecord;->shouldExecServicesFg()Z

    move-result v5

    if-nez v5, :cond_6

    .line 3380
    invoke-virtual {v3, v4}, Lcom/android/server/am/ProcessServiceRecord;->setExecServicesFg(Z)V

    .line 3381
    if-eqz v0, :cond_6

    .line 3382
    iget-object v5, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p0, v5}, Lcom/android/server/am/ActiveServices;->scheduleServiceTimeoutLocked(Lcom/android/server/am/ProcessRecord;)V

    goto :goto_3

    .line 3377
    .end local v3    # "psr":Lcom/android/server/am/ProcessServiceRecord;
    :cond_5
    :goto_2
    nop

    .line 3386
    :cond_6
    :goto_3
    iget-boolean v3, p1, Lcom/android/server/am/ServiceRecord;->executeFg:Z

    or-int/2addr v3, p2

    iput-boolean v3, p1, Lcom/android/server/am/ServiceRecord;->executeFg:Z

    .line 3387
    iget v3, p1, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    add-int/2addr v3, v4

    iput v3, p1, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    .line 3388
    iput-wide v1, p1, Lcom/android/server/am/ServiceRecord;->executingStart:J

    .line 3389
    return-void
.end method

.method private cancelForegroundNotificationLocked(Lcom/android/server/am/ServiceRecord;)V
    .locals 5
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;

    .line 2492
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->foregroundNoti:Landroid/app/Notification;

    if-eqz v0, :cond_2

    .line 2497
    iget v0, p1, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-direct {p0, v0}, Lcom/android/server/am/ActiveServices;->getServiceMapLocked(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v0

    .line 2498
    .local v0, "sm":Lcom/android/server/am/ActiveServices$ServiceMap;
    if-eqz v0, :cond_1

    .line 2499
    iget-object v1, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 2500
    iget-object v2, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ServiceRecord;

    .line 2501
    .local v2, "other":Lcom/android/server/am/ServiceRecord;
    if-eq v2, p1, :cond_0

    iget-boolean v3, v2, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    if-eqz v3, :cond_0

    iget v3, v2, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    iget v4, p1, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    if-ne v3, v4, :cond_0

    iget-object v3, v2, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    .line 2504
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2511
    return-void

    .line 2499
    .end local v2    # "other":Lcom/android/server/am/ServiceRecord;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2515
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->cancelNotification()V

    .line 2517
    .end local v0    # "sm":Lcom/android/server/am/ActiveServices$ServiceMap;
    :cond_2
    return-void
.end method

.method private clearRestartingIfNeededLocked(Lcom/android/server/am/ServiceRecord;)V
    .locals 6
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;

    .line 3619
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->restartTracker:Lcom/android/internal/app/procstats/ServiceState;

    if-eqz v0, :cond_2

    .line 3622
    const/4 v0, 0x0

    .line 3623
    .local v0, "stillTracking":Z
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 3624
    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ServiceRecord;

    iget-object v2, v2, Lcom/android/server/am/ServiceRecord;->restartTracker:Lcom/android/internal/app/procstats/ServiceState;

    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->restartTracker:Lcom/android/internal/app/procstats/ServiceState;

    if-ne v2, v3, :cond_0

    .line 3625
    const/4 v0, 0x1

    .line 3626
    goto :goto_1

    .line 3623
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 3629
    .end local v1    # "i":I
    :cond_1
    :goto_1
    if-nez v0, :cond_2

    .line 3630
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->restartTracker:Lcom/android/internal/app/procstats/ServiceState;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v3}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v3

    .line 3631
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 3630
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/internal/app/procstats/ServiceState;->setRestarting(ZIJ)V

    .line 3632
    const/4 v1, 0x0

    iput-object v1, p1, Lcom/android/server/am/ServiceRecord;->restartTracker:Lcom/android/internal/app/procstats/ServiceState;

    .line 3635
    .end local v0    # "stillTracking":Z
    :cond_2
    return-void
.end method

.method private collectPackageServicesLocked(Ljava/lang/String;Ljava/util/Set;ZZLandroid/util/ArrayMap;)Z
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p3, "evenPersistent"    # Z
    .param p4, "doit"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;ZZ",
            "Landroid/util/ArrayMap<",
            "Landroid/content/ComponentName;",
            "Lcom/android/server/am/ServiceRecord;",
            ">;)Z"
        }
    .end annotation

    .line 4670
    .local p2, "filterByClasses":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local p5, "services":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Lcom/android/server/am/ServiceRecord;>;"
    const/4 v0, 0x0

    .line 4671
    .local v0, "didSomething":Z
    invoke-virtual {p5}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_7

    .line 4672
    invoke-virtual {p5, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ServiceRecord;

    .line 4673
    .local v3, "service":Lcom/android/server/am/ServiceRecord;
    const/4 v4, 0x0

    if-eqz p1, :cond_1

    iget-object v5, v3, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    .line 4674
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    if-eqz p2, :cond_1

    iget-object v5, v3, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    .line 4676
    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    move v5, v4

    goto :goto_2

    :cond_1
    :goto_1
    move v5, v2

    .line 4677
    .local v5, "sameComponent":Z
    :goto_2
    if-eqz v5, :cond_6

    iget-object v6, v3, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v6, :cond_2

    if-nez p3, :cond_2

    iget-object v6, v3, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 4678
    invoke-virtual {v6}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v6

    if-nez v6, :cond_6

    .line 4679
    :cond_2
    if-nez p4, :cond_3

    .line 4680
    return v2

    .line 4682
    :cond_3
    const/4 v0, 0x1

    .line 4683
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  Force stopping service "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "ActivityManager"

    invoke-static {v7, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4684
    iget-object v6, v3, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v6, :cond_4

    iget-object v6, v3, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v6}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v6

    if-nez v6, :cond_4

    .line 4685
    invoke-direct {p0, v3}, Lcom/android/server/am/ActiveServices;->stopServiceAndUpdateAllowlistManagerLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 4687
    :cond_4
    const/4 v6, 0x0

    invoke-virtual {v3, v6, v6, v4, v6}, Lcom/android/server/am/ServiceRecord;->setProcess(Lcom/android/server/am/ProcessRecord;Landroid/app/IApplicationThread;ILcom/android/server/am/UidRecord;)V

    .line 4688
    iput-object v6, v3, Lcom/android/server/am/ServiceRecord;->isolatedProc:Lcom/android/server/am/ProcessRecord;

    .line 4689
    iget-object v4, p0, Lcom/android/server/am/ActiveServices;->mTmpCollectionResults:Ljava/util/ArrayList;

    if-nez v4, :cond_5

    .line 4690
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/server/am/ActiveServices;->mTmpCollectionResults:Ljava/util/ArrayList;

    .line 4692
    :cond_5
    iget-object v4, p0, Lcom/android/server/am/ActiveServices;->mTmpCollectionResults:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4671
    .end local v3    # "service":Lcom/android/server/am/ServiceRecord;
    .end local v5    # "sameComponent":Z
    :cond_6
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 4695
    .end local v1    # "i":I
    :cond_7
    return v0
.end method

.method private decActiveForegroundAppLocked(Lcom/android/server/am/ActiveServices$ServiceMap;Lcom/android/server/am/ServiceRecord;)V
    .locals 5
    .param p1, "smap"    # Lcom/android/server/am/ActiveServices$ServiceMap;
    .param p2, "r"    # Lcom/android/server/am/ServiceRecord;

    .line 1564
    iget-object v0, p1, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundApps:Landroid/util/ArrayMap;

    iget-object v1, p2, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;

    .line 1565
    .local v0, "active":Lcom/android/server/am/ActiveServices$ActiveForegroundApp;
    if-eqz v0, :cond_1

    .line 1566
    iget v1, v0, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mNumActive:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mNumActive:I

    .line 1567
    iget v1, v0, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mNumActive:I

    if-gtz v1, :cond_1

    .line 1568
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mEndTime:J

    .line 1570
    iget-wide v3, v0, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mEndTime:J

    invoke-virtual {p0, v0, v3, v4}, Lcom/android/server/am/ActiveServices;->foregroundAppShownEnoughLocked(Lcom/android/server/am/ActiveServices$ActiveForegroundApp;J)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1572
    iget-object v1, p1, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundApps:Landroid/util/ArrayMap;

    iget-object v3, p2, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1573
    iput-boolean v2, p1, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundAppsChanged:Z

    .line 1574
    const-wide/16 v1, 0x0

    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/am/ActiveServices;->requestUpdateActiveForegroundAppsLocked(Lcom/android/server/am/ActiveServices$ServiceMap;J)V

    goto :goto_0

    .line 1575
    :cond_0
    iget-wide v1, v0, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mHideTime:J

    const-wide v3, 0x7fffffffffffffffL

    cmp-long v1, v1, v3

    if-gez v1, :cond_1

    .line 1576
    iget-wide v1, v0, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mHideTime:J

    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/am/ActiveServices;->requestUpdateActiveForegroundAppsLocked(Lcom/android/server/am/ActiveServices$ServiceMap;J)V

    .line 1580
    :cond_1
    :goto_0
    return-void
.end method

.method private deferServiceBringupIfFrozenLocked(Lcom/android/server/am/ServiceRecord;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;IIZZIZLandroid/os/IBinder;ZLandroid/app/IServiceConnection;)Z
    .locals 19
    .param p1, "s"    # Lcom/android/server/am/ServiceRecord;
    .param p2, "serviceIntent"    # Landroid/content/Intent;
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "callingFeatureId"    # Ljava/lang/String;
    .param p5, "callingUid"    # I
    .param p6, "callingPid"    # I
    .param p7, "fgRequired"    # Z
    .param p8, "callerFg"    # Z
    .param p9, "userId"    # I
    .param p10, "allowBackgroundActivityStarts"    # Z
    .param p11, "backgroundActivityStartsToken"    # Landroid/os/IBinder;
    .param p12, "isBinding"    # Z
    .param p13, "connection"    # Landroid/app/IServiceConnection;

    .line 993
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    iget-object v0, v15, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v13

    .line 994
    .local v13, "pm":Landroid/content/pm/PackageManagerInternal;
    iget-object v0, v14, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    iget v1, v14, Lcom/android/server/am/ServiceRecord;->userId:I

    move/from16 v12, p5

    invoke-virtual {v13, v0, v12, v1}, Landroid/content/pm/PackageManagerInternal;->isPackageFrozen(Ljava/lang/String;II)Z

    move-result v16

    .line 995
    .local v16, "frozen":Z
    if-nez v16, :cond_0

    .line 997
    const/4 v0, 0x0

    return v0

    .line 999
    :cond_0
    iget-object v0, v15, Lcom/android/server/am/ActiveServices;->mPendingBringups:Landroid/util/ArrayMap;

    invoke-virtual {v0, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1000
    .local v0, "curPendingBringups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Runnable;>;"
    if-nez v0, :cond_1

    .line 1001
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    .line 1002
    iget-object v1, v15, Lcom/android/server/am/ActiveServices;->mPendingBringups:Landroid/util/ArrayMap;

    invoke-virtual {v1, v14, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v11, v0

    goto :goto_0

    .line 1000
    :cond_1
    move-object v11, v0

    .line 1004
    .end local v0    # "curPendingBringups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Runnable;>;"
    .local v11, "curPendingBringups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Runnable;>;"
    :goto_0
    new-instance v10, Lcom/android/server/am/ActiveServices$4;

    move-object v0, v10

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p2

    move/from16 v7, p8

    move/from16 v8, p9

    move/from16 v9, p12

    move-object v15, v10

    move-object/from16 v10, p13

    move-object/from16 v17, v15

    move-object v15, v11

    .end local v11    # "curPendingBringups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Runnable;>;"
    .local v15, "curPendingBringups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Runnable;>;"
    move/from16 v11, p6

    move/from16 v12, p7

    move-object/from16 v18, v13

    .end local v13    # "pm":Landroid/content/pm/PackageManagerInternal;
    .local v18, "pm":Landroid/content/pm/PackageManagerInternal;
    move/from16 v13, p10

    move-object/from16 v14, p11

    invoke-direct/range {v0 .. v14}, Lcom/android/server/am/ActiveServices$4;-><init>(Lcom/android/server/am/ActiveServices;Lcom/android/server/am/ServiceRecord;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Intent;ZIZLandroid/app/IServiceConnection;IZZLandroid/os/IBinder;)V

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1045
    const/4 v0, 0x1

    return v0
.end method

.method private dropFgsNotificationStateLocked(Lcom/android/server/am/ServiceRecord;)V
    .locals 7
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;

    .line 4298
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->foregroundNoti:Landroid/app/Notification;

    if-nez v0, :cond_0

    .line 4299
    return-void

    .line 4303
    :cond_0
    const/4 v0, 0x0

    .line 4304
    .local v0, "shared":Z
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    iget v2, p1, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActiveServices$ServiceMap;

    .line 4305
    .local v1, "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    if-eqz v1, :cond_4

    .line 4307
    iget-object v2, v1, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 4308
    .local v2, "numServices":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_3

    .line 4309
    iget-object v4, v1, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ServiceRecord;

    .line 4310
    .local v4, "sr":Lcom/android/server/am/ServiceRecord;
    if-ne v4, p1, :cond_1

    .line 4311
    goto :goto_1

    .line 4313
    :cond_1
    iget-boolean v5, v4, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    if-eqz v5, :cond_2

    iget v5, p1, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    iget v6, v4, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    if-ne v5, v6, :cond_2

    iget-object v5, p1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v6, v4, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 4315
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 4316
    const/4 v0, 0x1

    .line 4317
    goto :goto_2

    .line 4308
    .end local v4    # "sr":Lcom/android/server/am/ServiceRecord;
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4320
    .end local v2    # "numServices":I
    .end local v3    # "i":I
    :cond_3
    :goto_2
    goto :goto_3

    .line 4321
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FGS "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " not found!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ActivityManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 4325
    :goto_3
    if-nez v0, :cond_5

    .line 4326
    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->stripForegroundServiceFlagFromNotification()V

    .line 4328
    :cond_5
    return-void
.end method

.method private dumpService(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Lcom/android/server/am/ServiceRecord;[Ljava/lang/String;Z)V
    .locals 5
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "pw"    # Ljava/io/PrintWriter;
    .param p4, "r"    # Lcom/android/server/am/ServiceRecord;
    .param p5, "args"    # [Ljava/lang/String;
    .param p6, "dumpAll"    # Z

    .line 5756
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5757
    .local v0, "innerPrefix":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 5758
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "SERVICE "

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5759
    iget-object v2, p4, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5760
    invoke-static {p4}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5761
    const-string v2, " pid="

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5762
    iget-object v2, p4, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_0

    .line 5763
    iget-object v2, p4, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v2

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 5764
    const-string v2, " user="

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p4, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(I)V

    goto :goto_0

    .line 5765
    :cond_0
    const-string v2, "(not running)"

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5766
    :goto_0
    if-eqz p6, :cond_1

    .line 5767
    invoke-virtual {p4, p3, v0}, Lcom/android/server/am/ServiceRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 5769
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 5771
    iget-object v1, p4, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_2

    iget-object v1, p4, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v1

    move-object v2, v1

    .local v2, "thread":Landroid/app/IApplicationThread;
    if-eqz v1, :cond_2

    .line 5772
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  Client:"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5773
    invoke-virtual {p3}, Ljava/io/PrintWriter;->flush()V

    .line 5775
    :try_start_1
    new-instance v1, Lcom/android/internal/os/TransferPipe;

    invoke-direct {v1}, Lcom/android/internal/os/TransferPipe;-><init>()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 5777
    .local v1, "tp":Lcom/android/internal/os/TransferPipe;
    :try_start_2
    invoke-virtual {v1}, Lcom/android/internal/os/TransferPipe;->getWriteFd()Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    invoke-interface {v2, v3, p4, p5}, Landroid/app/IApplicationThread;->dumpService(Landroid/os/ParcelFileDescriptor;Landroid/os/IBinder;[Ljava/lang/String;)V

    .line 5778
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/internal/os/TransferPipe;->setBufferPrefix(Ljava/lang/String;)V

    .line 5779
    invoke-virtual {v1, p2}, Lcom/android/internal/os/TransferPipe;->go(Ljava/io/FileDescriptor;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 5781
    :try_start_3
    invoke-virtual {v1}, Lcom/android/internal/os/TransferPipe;->kill()V

    .line 5782
    goto :goto_1

    .line 5781
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Lcom/android/internal/os/TransferPipe;->kill()V

    .line 5782
    nop

    .end local v0    # "innerPrefix":Ljava/lang/String;
    .end local v2    # "thread":Landroid/app/IApplicationThread;
    .end local p0    # "this":Lcom/android/server/am/ActiveServices;
    .end local p1    # "prefix":Ljava/lang/String;
    .end local p2    # "fd":Ljava/io/FileDescriptor;
    .end local p3    # "pw":Ljava/io/PrintWriter;
    .end local p4    # "r":Lcom/android/server/am/ServiceRecord;
    .end local p5    # "args":[Ljava/lang/String;
    .end local p6    # "dumpAll":Z
    throw v3
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 5785
    .end local v1    # "tp":Lcom/android/internal/os/TransferPipe;
    .restart local v0    # "innerPrefix":Ljava/lang/String;
    .restart local v2    # "thread":Landroid/app/IApplicationThread;
    .restart local p0    # "this":Lcom/android/server/am/ActiveServices;
    .restart local p1    # "prefix":Ljava/lang/String;
    .restart local p2    # "fd":Ljava/io/FileDescriptor;
    .restart local p3    # "pw":Ljava/io/PrintWriter;
    .restart local p4    # "r":Lcom/android/server/am/ServiceRecord;
    .restart local p5    # "args":[Ljava/lang/String;
    .restart local p6    # "dumpAll":Z
    :catch_0
    move-exception v1

    .line 5786
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "    Got a RemoteException while dumping the service"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 5783
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 5784
    .local v1, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "    Failure while dumping the service: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5789
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "thread":Landroid/app/IApplicationThread;
    :cond_2
    :goto_1
    return-void

    .line 5769
    :catchall_1
    move-exception v2

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v2
.end method

.method private final findServiceLocked(Landroid/content/ComponentName;Landroid/os/IBinder;I)Lcom/android/server/am/ServiceRecord;
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "userId"    # I

    .line 3048
    invoke-virtual {p0, p1, p3}, Lcom/android/server/am/ActiveServices;->getServiceByNameLocked(Landroid/content/ComponentName;I)Lcom/android/server/am/ServiceRecord;

    move-result-object v0

    .line 3049
    .local v0, "r":Lcom/android/server/am/ServiceRecord;
    if-ne v0, p2, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method private getAllowMode(Landroid/content/Intent;Ljava/lang/String;)I
    .locals 2
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 3327
    const/4 v0, 0x1

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 3330
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3331
    const/4 v0, 0x3

    return v0

    .line 3333
    :cond_1
    return v0

    .line 3328
    :cond_2
    :goto_0
    return v0
.end method

.method private getServiceMapLocked(I)Lcom/android/server/am/ActiveServices$ServiceMap;
    .locals 3
    .param p1, "callingUser"    # I

    .line 592
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActiveServices$ServiceMap;

    .line 593
    .local v0, "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    if-nez v0, :cond_0

    .line 594
    new-instance v1, Lcom/android/server/am/ActiveServices$ServiceMap;

    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService$MainHandler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2, p1}, Lcom/android/server/am/ActiveServices$ServiceMap;-><init>(Lcom/android/server/am/ActiveServices;Landroid/os/Looper;I)V

    move-object v0, v1

    .line 595
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 597
    :cond_0
    return-object v0
.end method

.method private isBgFgsRestrictionEnabled(Lcom/android/server/am/ServiceRecord;)Z
    .locals 3
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;

    .line 6245
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerConstants;->mFlagFgsStartRestrictionEnabled:Z

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 6247
    const-wide/32 v1, 0xa2c30a7

    invoke-static {v1, v2, v0}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerConstants;->mFgsStartRestrictionCheckCallerTargetSdk:Z

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/android/server/am/ServiceRecord;->mRecentCallingUid:I

    .line 6250
    invoke-static {v1, v2, v0}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 6245
    :goto_0
    return v0
.end method

.method private static isFgsBgStart(I)Z
    .locals 1
    .param p0, "code"    # I

    .line 6212
    const/16 v0, 0xa

    if-eq p0, v0, :cond_0

    const/16 v0, 0xb

    if-eq p0, v0, :cond_0

    const/16 v0, 0xc

    if-eq p0, v0, :cond_0

    const/16 v0, 0x32

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isPermissionGranted(Ljava/lang/String;II)Z
    .locals 1
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "callingPid"    # I
    .param p3, "callingUid"    # I

    .line 6208
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/am/ActivityManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final isServiceNeededLocked(Lcom/android/server/am/ServiceRecord;ZZ)Z
    .locals 2
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;
    .param p2, "knowConn"    # Z
    .param p3, "hasConn"    # Z

    .line 4063
    iget-boolean v0, p1, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 4064
    return v1

    .line 4068
    :cond_0
    if-nez p2, :cond_1

    .line 4069
    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->hasAutoCreateConnections()Z

    move-result p3

    .line 4071
    :cond_1
    if-eqz p3, :cond_2

    .line 4072
    return v1

    .line 4075
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$shouldAllowFgsWhileInUsePermissionLocked$0(ILcom/android/server/am/ProcessRecord;)Ljava/lang/Integer;
    .locals 1
    .param p0, "callingUid"    # I
    .param p1, "pr"    # Lcom/android/server/am/ProcessRecord;

    .line 5906
    iget v0, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    if-ne v0, p0, :cond_0

    .line 5907
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->areBackgroundFgsStartsAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5908
    const/16 v0, 0x34

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 5911
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private logFGSStateChangeLocked(Lcom/android/server/am/ServiceRecord;II)V
    .locals 20
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;
    .param p2, "state"    # I
    .param p3, "durationMs"    # I

    .line 6280
    move-object/from16 v0, p1

    move/from16 v15, p2

    iget-object v1, v0, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    move-object/from16 v14, p0

    iget-object v2, v14, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget v2, v2, Lcom/android/server/am/ActivityManagerConstants;->mFgsAtomSampleRate:F

    invoke-static {v1, v2}, Lcom/android/server/am/ActivityManagerUtils;->shouldSamplePackageForAtom(Ljava/lang/String;F)Z

    move-result v1

    if-nez v1, :cond_0

    .line 6282
    return-void

    .line 6286
    :cond_0
    const/4 v1, 0x1

    if-eq v15, v1, :cond_2

    const/4 v1, 0x2

    if-ne v15, v1, :cond_1

    goto :goto_0

    .line 6291
    :cond_1
    iget-boolean v1, v0, Lcom/android/server/am/ServiceRecord;->mAllowWhileInUsePermissionInFgs:Z

    .line 6292
    .local v1, "allowWhileInUsePermissionInFgs":Z
    iget v2, v0, Lcom/android/server/am/ServiceRecord;->mAllowStartForeground:I

    move/from16 v16, v1

    move/from16 v17, v2

    .local v2, "fgsStartReasonCode":I
    goto :goto_1

    .line 6288
    .end local v1    # "allowWhileInUsePermissionInFgs":Z
    .end local v2    # "fgsStartReasonCode":I
    :cond_2
    :goto_0
    iget-boolean v1, v0, Lcom/android/server/am/ServiceRecord;->mAllowWhileInUsePermissionInFgsAtEntering:Z

    .line 6289
    .restart local v1    # "allowWhileInUsePermissionInFgs":Z
    iget v2, v0, Lcom/android/server/am/ServiceRecord;->mAllowStartForegroundAtEntering:I

    move/from16 v16, v1

    move/from16 v17, v2

    .line 6294
    .end local v1    # "allowWhileInUsePermissionInFgs":Z
    .local v16, "allowWhileInUsePermissionInFgs":Z
    .local v17, "fgsStartReasonCode":I
    :goto_1
    const/16 v1, 0x3c

    iget-object v2, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v3, v0, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iget v8, v0, Lcom/android/server/am/ServiceRecord;->mRecentCallingUid:I

    .line 6302
    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->mRecentCallerApplicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v4, :cond_3

    .line 6303
    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->mRecentCallerApplicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    :goto_2
    move v9, v4

    .line 6304
    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->mInfoTempFgsAllowListReason:Lcom/android/server/am/ActivityManagerService$FgsTempAllowListItem;

    if-eqz v4, :cond_4

    .line 6305
    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->mInfoTempFgsAllowListReason:Lcom/android/server/am/ActivityManagerService$FgsTempAllowListItem;

    iget v4, v4, Lcom/android/server/am/ActivityManagerService$FgsTempAllowListItem;->mCallingUid:I

    goto :goto_3

    :cond_4
    const/4 v4, -0x1

    :goto_3
    move v10, v4

    iget-boolean v11, v0, Lcom/android/server/am/ServiceRecord;->mFgsNotificationWasDeferred:Z

    iget-boolean v12, v0, Lcom/android/server/am/ServiceRecord;->mFgsNotificationShown:Z

    iget v13, v0, Lcom/android/server/am/ServiceRecord;->mStartForegroundCount:I

    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    .line 6310
    invoke-static {v4}, Lcom/android/server/am/ActivityManagerUtils;->hashComponentNameForAtom(Ljava/lang/String;)I

    move-result v18

    .line 6294
    move/from16 v4, p2

    move/from16 v5, v16

    move/from16 v6, v17

    move/from16 v19, v13

    move/from16 v13, p3

    move/from16 v14, v19

    move/from16 v15, v18

    invoke-static/range {v1 .. v15}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;IZIIIIIZZIII)V

    .line 6311
    return-void
.end method

.method private logFgsBackgroundStart(Lcom/android/server/am/ServiceRecord;)V
    .locals 4
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;

    .line 6256
    iget v0, p1, Lcom/android/server/am/ServiceRecord;->mAllowStartForeground:I

    invoke-static {v0}, Lcom/android/server/am/ActiveServices;->isFgsBgStart(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6257
    return-void

    .line 6259
    :cond_0
    iget-boolean v0, p1, Lcom/android/server/am/ServiceRecord;->mLoggedInfoAllowStartForeground:Z

    if-nez v0, :cond_3

    .line 6260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Background started FGS: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6261
    iget v1, p1, Lcom/android/server/am/ServiceRecord;->mAllowStartForeground:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    const-string v1, "Allowed "

    goto :goto_0

    :cond_1
    const-string v1, "Disallowed "

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->mInfoAllowStartForeground:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6263
    .local v0, "msg":Ljava/lang/String;
    const-string v1, "ActivityManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtfQuiet(Ljava/lang/String;Ljava/lang/String;)V

    .line 6264
    iget v3, p1, Lcom/android/server/am/ServiceRecord;->mAllowStartForeground:I

    if-eq v3, v2, :cond_2

    .line 6265
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 6267
    :cond_2
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6269
    :goto_1
    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/android/server/am/ServiceRecord;->mLoggedInfoAllowStartForeground:Z

    .line 6271
    .end local v0    # "msg":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method private maybeLogBindCrossProfileService(ILjava/lang/String;I)V
    .locals 4
    .param p1, "userId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingUid"    # I

    .line 2862
    invoke-static {p3}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2863
    return-void

    .line 2865
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 2866
    .local v0, "callingUserId":I
    if-eq v0, p1, :cond_2

    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    .line 2867
    invoke-virtual {v1, v0, p1}, Lcom/android/server/am/UserController;->isSameProfileGroup(II)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 2870
    :cond_1
    const/16 v1, 0x97

    invoke-static {v1}, Landroid/app/admin/DevicePolicyEventLogger;->createEvent(I)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    .line 2871
    invoke-virtual {v1, v2}, Landroid/app/admin/DevicePolicyEventLogger;->setStrings([Ljava/lang/String;)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v1

    .line 2872
    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyEventLogger;->write()V

    .line 2873
    return-void

    .line 2868
    :cond_2
    :goto_0
    return-void
.end method

.method private realStartServiceLocked(Lcom/android/server/am/ServiceRecord;Lcom/android/server/am/ProcessRecord;Landroid/app/IApplicationThread;ILcom/android/server/am/UidRecord;ZZ)V
    .locals 22
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;
    .param p2, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p3, "thread"    # Landroid/app/IApplicationThread;
    .param p4, "pid"    # I
    .param p5, "uidRecord"    # Lcom/android/server/am/UidRecord;
    .param p6, "execInFg"    # Z
    .param p7, "enqueueOomAdj"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3859
    move-object/from16 v1, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move/from16 v12, p6

    move/from16 v13, p7

    if-eqz v11, :cond_a

    .line 3865
    invoke-virtual/range {p1 .. p5}, Lcom/android/server/am/ServiceRecord;->setProcess(Lcom/android/server/am/ProcessRecord;Landroid/app/IApplicationThread;ILcom/android/server/am/UidRecord;)V

    .line 3866
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, v9, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    iput-wide v2, v9, Lcom/android/server/am/ServiceRecord;->restartTime:J

    .line 3868
    iget-object v14, v10, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 3869
    .local v14, "psr":Lcom/android/server/am/ProcessServiceRecord;
    invoke-virtual {v14, v9}, Lcom/android/server/am/ProcessServiceRecord;->startService(Lcom/android/server/am/ServiceRecord;)Z

    move-result v15

    .line 3870
    .local v15, "newService":Z
    const-string v0, "create"

    invoke-direct {v1, v9, v12, v0}, Lcom/android/server/am/ActiveServices;->bumpServiceExecutingLocked(Lcom/android/server/am/ServiceRecord;ZLjava/lang/String;)V

    .line 3871
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    const/4 v8, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v10, v8, v2}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZLcom/android/server/am/ProcessRecord;)V

    .line 3872
    invoke-direct {v1, v14, v8}, Lcom/android/server/am/ActiveServices;->updateServiceForegroundLocked(Lcom/android/server/am/ProcessServiceRecord;Z)V

    .line 3873
    if-eqz v13, :cond_0

    .line 3874
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, v10}, Lcom/android/server/am/ActivityManagerService;->enqueueOomAdjTargetLocked(Lcom/android/server/am/ProcessRecord;)V

    goto :goto_0

    .line 3876
    :cond_0
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v3, "updateOomAdj_startService"

    invoke-virtual {v0, v10, v3}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)Z

    .line 3879
    :goto_0
    const/4 v3, 0x0

    .line 3890
    .local v3, "created":Z
    :try_start_0
    iget-object v0, v9, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 3891
    .local v0, "uid":I
    iget-object v4, v9, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 3892
    .local v4, "packageName":Ljava/lang/String;
    iget-object v5, v9, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    .line 3893
    .local v5, "serviceName":Ljava/lang/String;
    const/16 v6, 0x64

    invoke-static {v6, v0, v4, v5}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;Ljava/lang/String;)V

    .line 3895
    iget-object v6, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    invoke-virtual {v6, v0, v4, v5}, Lcom/android/server/am/BatteryStatsService;->noteServiceStartLaunch(ILjava/lang/String;Ljava/lang/String;)V

    .line 3896
    iget-object v6, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v9, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v16, v4

    .end local v4    # "packageName":Ljava/lang/String;
    .local v16, "packageName":Ljava/lang/String;
    const/4 v4, 0x1

    invoke-virtual {v6, v7, v4}, Lcom/android/server/am/ActivityManagerService;->notifyPackageUse(Ljava/lang/String;I)V

    .line 3898
    iget-object v6, v10, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    const/16 v7, 0xa

    invoke-virtual {v6, v7}, Lcom/android/server/am/ProcessStateRecord;->forceProcessStateUpTo(I)V

    .line 3899
    iget-object v6, v9, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v7, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v9, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 3900
    invoke-virtual {v7, v4}, Lcom/android/server/am/ActivityManagerService;->compatibilityInfoForPackage(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;

    move-result-object v4

    iget-object v7, v10, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 3901
    invoke-virtual {v7}, Lcom/android/server/am/ProcessStateRecord;->getReportedProcState()I

    move-result v7

    .line 3899
    invoke-interface {v11, v9, v6, v4, v7}, Landroid/app/IApplicationThread;->scheduleCreateService(Landroid/os/IBinder;Landroid/content/pm/ServiceInfo;Landroid/content/res/CompatibilityInfo;I)V

    .line 3902
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ServiceRecord;->postNotification()V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3903
    const/4 v0, 0x1

    .line 3909
    .end local v3    # "created":Z
    .end local v5    # "serviceName":Ljava/lang/String;
    .end local v16    # "packageName":Ljava/lang/String;
    .local v0, "created":Z
    if-nez v0, :cond_2

    .line 3911
    iget-object v3, v1, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    .line 3912
    .local v3, "inDestroying":Z
    invoke-direct {v1, v9, v3, v3, v8}, Lcom/android/server/am/ActiveServices;->serviceDoneExecutingLocked(Lcom/android/server/am/ServiceRecord;ZZZ)V

    .line 3915
    if-eqz v15, :cond_1

    .line 3916
    invoke-virtual {v14, v9}, Lcom/android/server/am/ProcessServiceRecord;->stopService(Lcom/android/server/am/ServiceRecord;)Z

    .line 3917
    invoke-virtual {v9, v2, v2, v8, v2}, Lcom/android/server/am/ServiceRecord;->setProcess(Lcom/android/server/am/ProcessRecord;Landroid/app/IApplicationThread;ILcom/android/server/am/UidRecord;)V

    .line 3921
    :cond_1
    if-nez v3, :cond_2

    .line 3922
    invoke-direct {v1, v9, v8}, Lcom/android/server/am/ActiveServices;->scheduleServiceRestartLocked(Lcom/android/server/am/ServiceRecord;Z)Z

    .line 3927
    .end local v3    # "inDestroying":Z
    :cond_2
    iget-boolean v3, v9, Lcom/android/server/am/ServiceRecord;->allowlistManager:Z

    if-eqz v3, :cond_3

    .line 3928
    const/4 v4, 0x1

    iput-boolean v4, v14, Lcom/android/server/am/ProcessServiceRecord;->mAllowlistManager:Z

    goto :goto_1

    .line 3927
    :cond_3
    const/4 v4, 0x1

    .line 3931
    :goto_1
    invoke-direct {v1, v9, v12}, Lcom/android/server/am/ActiveServices;->requestServiceBindingsLocked(Lcom/android/server/am/ServiceRecord;Z)V

    .line 3933
    invoke-direct {v1, v14, v2, v4}, Lcom/android/server/am/ActiveServices;->updateServiceClientActivitiesLocked(Lcom/android/server/am/ProcessServiceRecord;Lcom/android/server/am/ConnectionRecord;Z)Z

    .line 3935
    if-eqz v15, :cond_4

    if-eqz v0, :cond_4

    .line 3936
    invoke-virtual {v14, v9}, Lcom/android/server/am/ProcessServiceRecord;->addBoundClientUidsOfNewService(Lcom/android/server/am/ServiceRecord;)V

    .line 3942
    :cond_4
    iget-boolean v2, v9, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    if-eqz v2, :cond_5

    iget-boolean v2, v9, Lcom/android/server/am/ServiceRecord;->callStart:Z

    if-eqz v2, :cond_5

    iget-object v2, v9, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_5

    .line 3943
    iget-object v7, v9, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    new-instance v6, Lcom/android/server/am/ServiceRecord$StartItem;

    const/4 v5, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ServiceRecord;->makeNextStartId()I

    move-result v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v2, v6

    move-object/from16 v3, p1

    move v4, v5

    move/from16 v5, v16

    move-object/from16 v20, v6

    move-object/from16 v6, v17

    move-object/from16 v21, v7

    move-object/from16 v7, v18

    move v11, v8

    move/from16 v8, v19

    invoke-direct/range {v2 .. v8}, Lcom/android/server/am/ServiceRecord$StartItem;-><init>(Lcom/android/server/am/ServiceRecord;ZILandroid/content/Intent;Lcom/android/server/uri/NeededUriGrants;I)V

    move-object/from16 v3, v20

    move-object/from16 v2, v21

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 3942
    :cond_5
    move v11, v8

    .line 3947
    :goto_2
    const/4 v2, 0x1

    invoke-direct {v1, v9, v12, v2}, Lcom/android/server/am/ActiveServices;->sendServiceArgsLocked(Lcom/android/server/am/ServiceRecord;ZZ)V

    .line 3949
    iget-boolean v2, v9, Lcom/android/server/am/ServiceRecord;->delayed:Z

    if-eqz v2, :cond_6

    .line 3951
    iget v2, v9, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-direct {v1, v2}, Lcom/android/server/am/ActiveServices;->getServiceMapLocked(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/am/ActiveServices$ServiceMap;->mDelayedStartList:Ljava/util/ArrayList;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3952
    iput-boolean v11, v9, Lcom/android/server/am/ServiceRecord;->delayed:Z

    .line 3955
    :cond_6
    iget-boolean v2, v9, Lcom/android/server/am/ServiceRecord;->delayedStop:Z

    if-eqz v2, :cond_7

    .line 3957
    iput-boolean v11, v9, Lcom/android/server/am/ServiceRecord;->delayedStop:Z

    .line 3958
    iget-boolean v2, v9, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    if-eqz v2, :cond_7

    .line 3961
    invoke-direct {v1, v9, v13}, Lcom/android/server/am/ActiveServices;->stopServiceLocked(Lcom/android/server/am/ServiceRecord;Z)V

    .line 3964
    :cond_7
    return-void

    .line 3909
    .end local v0    # "created":Z
    .local v3, "created":Z
    :catchall_0
    move-exception v0

    move v11, v8

    goto :goto_3

    .line 3904
    :catch_0
    move-exception v0

    move v11, v8

    .line 3905
    .local v0, "e":Landroid/os/DeadObjectException;
    :try_start_1
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Application dead when creating service "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3906
    iget-object v4, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    const-string v5, "Died when creating service"

    invoke-virtual {v4, v10, v5}, Lcom/android/server/am/ActivityManagerService;->appDiedLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    .line 3907
    nop

    .end local v3    # "created":Z
    .end local v14    # "psr":Lcom/android/server/am/ProcessServiceRecord;
    .end local v15    # "newService":Z
    .end local p0    # "this":Lcom/android/server/am/ActiveServices;
    .end local p1    # "r":Lcom/android/server/am/ServiceRecord;
    .end local p2    # "app":Lcom/android/server/am/ProcessRecord;
    .end local p3    # "thread":Landroid/app/IApplicationThread;
    .end local p4    # "pid":I
    .end local p5    # "uidRecord":Lcom/android/server/am/UidRecord;
    .end local p6    # "execInFg":Z
    .end local p7    # "enqueueOomAdj":Z
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3909
    .end local v0    # "e":Landroid/os/DeadObjectException;
    .restart local v3    # "created":Z
    .restart local v14    # "psr":Lcom/android/server/am/ProcessServiceRecord;
    .restart local v15    # "newService":Z
    .restart local p0    # "this":Lcom/android/server/am/ActiveServices;
    .restart local p1    # "r":Lcom/android/server/am/ServiceRecord;
    .restart local p2    # "app":Lcom/android/server/am/ProcessRecord;
    .restart local p3    # "thread":Landroid/app/IApplicationThread;
    .restart local p4    # "pid":I
    .restart local p5    # "uidRecord":Lcom/android/server/am/UidRecord;
    .restart local p6    # "execInFg":Z
    .restart local p7    # "enqueueOomAdj":Z
    :catchall_1
    move-exception v0

    :goto_3
    if-nez v3, :cond_9

    .line 3911
    iget-object v4, v1, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    .line 3912
    .local v4, "inDestroying":Z
    invoke-direct {v1, v9, v4, v4, v11}, Lcom/android/server/am/ActiveServices;->serviceDoneExecutingLocked(Lcom/android/server/am/ServiceRecord;ZZZ)V

    .line 3915
    if-eqz v15, :cond_8

    .line 3916
    invoke-virtual {v14, v9}, Lcom/android/server/am/ProcessServiceRecord;->stopService(Lcom/android/server/am/ServiceRecord;)Z

    .line 3917
    invoke-virtual {v9, v2, v2, v11, v2}, Lcom/android/server/am/ServiceRecord;->setProcess(Lcom/android/server/am/ProcessRecord;Landroid/app/IApplicationThread;ILcom/android/server/am/UidRecord;)V

    .line 3921
    :cond_8
    if-nez v4, :cond_9

    .line 3922
    invoke-direct {v1, v9, v11}, Lcom/android/server/am/ActiveServices;->scheduleServiceRestartLocked(Lcom/android/server/am/ServiceRecord;Z)Z

    .line 3925
    .end local v4    # "inDestroying":Z
    :cond_9
    throw v0

    .line 3860
    .end local v3    # "created":Z
    .end local v14    # "psr":Lcom/android/server/am/ProcessServiceRecord;
    .end local v15    # "newService":Z
    :cond_a
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method private registerAppOpCallbackLocked(Lcom/android/server/am/ServiceRecord;)V
    .locals 5
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;

    .line 2303
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-nez v0, :cond_0

    .line 2304
    return-void

    .line 2306
    :cond_0
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 2307
    .local v0, "uid":I
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mFgsAppOpCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActiveServices$AppOpCallback;

    .line 2308
    .local v1, "callback":Lcom/android/server/am/ActiveServices$AppOpCallback;
    if-nez v1, :cond_1

    .line 2309
    new-instance v2, Lcom/android/server/am/ActiveServices$AppOpCallback;

    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v4, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->getAppOpsManager()Landroid/app/AppOpsManager;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/server/am/ActiveServices$AppOpCallback;-><init>(Lcom/android/server/am/ProcessRecord;Landroid/app/AppOpsManager;)V

    move-object v1, v2

    .line 2310
    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mFgsAppOpCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2312
    :cond_1
    invoke-virtual {v1}, Lcom/android/server/am/ActiveServices$AppOpCallback;->registerLocked()V

    .line 2313
    return-void
.end method

.method private removeServiceNotificationDeferralsLocked(Ljava/lang/String;I)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 2236
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mPendingFgsNotifications:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 2237
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mPendingFgsNotifications:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ServiceRecord;

    .line 2238
    .local v1, "r":Lcom/android/server/am/ServiceRecord;
    iget v2, v1, Lcom/android/server/am/ServiceRecord;->userId:I

    if-ne p2, v2, :cond_0

    iget-object v2, v1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 2239
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2240
    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mPendingFgsNotifications:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2236
    .end local v1    # "r":Lcom/android/server/am/ServiceRecord;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2247
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private removeServiceRestartBackoffEnabledLocked(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 3671
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mRestartBackoffDisabledPackages:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 3672
    return-void
.end method

.method private final requestServiceBindingLocked(Lcom/android/server/am/ServiceRecord;Lcom/android/server/am/IntentBindRecord;ZZ)Z
    .locals 5
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;
    .param p2, "i"    # Lcom/android/server/am/IntentBindRecord;
    .param p3, "execInFg"    # Z
    .param p4, "rebind"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/TransactionTooLargeException;
        }
    .end annotation

    .line 3393
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 3399
    :cond_0
    iget-boolean v0, p2, Lcom/android/server/am/IntentBindRecord;->requested:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    if-eqz p4, :cond_3

    :cond_1
    iget-object v0, p2, Lcom/android/server/am/IntentBindRecord;->apps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 3401
    :try_start_0
    const-string v0, "bind"

    invoke-direct {p0, p1, p3, v0}, Lcom/android/server/am/ActiveServices;->bumpServiceExecutingLocked(Lcom/android/server/am/ServiceRecord;ZLjava/lang/String;)V

    .line 3402
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Lcom/android/server/am/ProcessStateRecord;->forceProcessStateUpTo(I)V

    .line 3403
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v0

    iget-object v3, p2, Lcom/android/server/am/IntentBindRecord;->intent:Landroid/content/Intent$FilterComparison;

    invoke-virtual {v3}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    move-result-object v3

    iget-object v4, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 3404
    invoke-virtual {v4}, Lcom/android/server/am/ProcessStateRecord;->getReportedProcState()I

    move-result v4

    .line 3403
    invoke-interface {v0, p1, v3, p4, v4}, Landroid/app/IApplicationThread;->scheduleBindService(Landroid/os/IBinder;Landroid/content/Intent;ZI)V

    .line 3405
    if-nez p4, :cond_2

    .line 3406
    iput-boolean v2, p2, Lcom/android/server/am/IntentBindRecord;->requested:Z

    .line 3408
    :cond_2
    iput-boolean v2, p2, Lcom/android/server/am/IntentBindRecord;->hasBound:Z

    .line 3409
    iput-boolean v1, p2, Lcom/android/server/am/IntentBindRecord;->doRebind:Z
    :try_end_0
    .catch Landroid/os/TransactionTooLargeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3422
    goto :goto_0

    .line 3416
    :catch_0
    move-exception v0

    .line 3419
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    .line 3420
    .local v2, "inDestroying":Z
    invoke-direct {p0, p1, v2, v2, v1}, Lcom/android/server/am/ActiveServices;->serviceDoneExecutingLocked(Lcom/android/server/am/ServiceRecord;ZZZ)V

    .line 3421
    return v1

    .line 3410
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v2    # "inDestroying":Z
    :catch_1
    move-exception v0

    .line 3413
    .local v0, "e":Landroid/os/TransactionTooLargeException;
    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    .line 3414
    .restart local v2    # "inDestroying":Z
    invoke-direct {p0, p1, v2, v2, v1}, Lcom/android/server/am/ActiveServices;->serviceDoneExecutingLocked(Lcom/android/server/am/ServiceRecord;ZZZ)V

    .line 3415
    throw v0

    .line 3424
    .end local v0    # "e":Landroid/os/TransactionTooLargeException;
    .end local v2    # "inDestroying":Z
    :cond_3
    :goto_0
    return v2

    .line 3395
    :cond_4
    :goto_1
    return v1
.end method

.method private final requestServiceBindingsLocked(Lcom/android/server/am/ServiceRecord;Z)V
    .locals 3
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;
    .param p2, "execInFg"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/TransactionTooLargeException;
        }
    .end annotation

    .line 3843
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 3844
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/IntentBindRecord;

    .line 3845
    .local v1, "ibr":Lcom/android/server/am/IntentBindRecord;
    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, p2, v2}, Lcom/android/server/am/ActiveServices;->requestServiceBindingLocked(Lcom/android/server/am/ServiceRecord;Lcom/android/server/am/IntentBindRecord;ZZ)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3846
    goto :goto_1

    .line 3843
    .end local v1    # "ibr":Lcom/android/server/am/IntentBindRecord;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3849
    .end local v0    # "i":I
    :cond_1
    :goto_1
    return-void
.end method

.method private requestStartTargetPermissionsReviewIfNeededLocked(Lcom/android/server/am/ServiceRecord;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Intent;ZIZLandroid/app/IServiceConnection;)Z
    .locals 24
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingFeatureId"    # Ljava/lang/String;
    .param p4, "callingUid"    # I
    .param p5, "service"    # Landroid/content/Intent;
    .param p6, "callerFg"    # Z
    .param p7, "userId"    # I
    .param p8, "isBinding"    # Z
    .param p9, "connection"    # Landroid/app/IServiceConnection;

    .line 894
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p5

    iget-object v0, v6, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    iget-object v1, v7, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    iget v2, v7, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManagerInternal;->isPermissionsReviewRequired(Ljava/lang/String;I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 898
    const/4 v9, 0x0

    if-nez p6, :cond_1

    .line 899
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "u"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v7, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 900
    if-eqz p8, :cond_0

    const-string v1, " Binding"

    goto :goto_0

    :cond_0
    const-string v1, " Starting"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " a service in package"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v7, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " requires a permissions review"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 899
    const-string v1, "ActivityManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    return v9

    .line 905
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.REVIEW_PERMISSIONS"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v10, v0

    .line 906
    .local v10, "intent":Landroid/content/Intent;
    const/high16 v0, 0x18800000

    invoke-virtual {v10, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 909
    iget-object v0, v7, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    const-string v2, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v10, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 911
    if-eqz p8, :cond_2

    .line 912
    new-instance v11, Landroid/os/RemoteCallback;

    new-instance v12, Lcom/android/server/am/ActiveServices$2;

    move-object v0, v12

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p5

    move/from16 v4, p6

    move-object/from16 v5, p9

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/ActiveServices$2;-><init>(Lcom/android/server/am/ActiveServices;Lcom/android/server/am/ServiceRecord;Landroid/content/Intent;ZLandroid/app/IServiceConnection;)V

    invoke-direct {v11, v12}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    move-object v0, v11

    .line 953
    .local v0, "callback":Landroid/os/RemoteCallback;
    const-string v1, "android.intent.extra.REMOTE_CALLBACK"

    invoke-virtual {v10, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 954
    .end local v0    # "callback":Landroid/os/RemoteCallback;
    goto :goto_1

    .line 955
    :cond_2
    iget-object v0, v6, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v0, Lcom/android/server/am/ActivityManagerService;->mPendingIntentController:Lcom/android/server/am/PendingIntentController;

    const/4 v12, 0x4

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    new-array v0, v1, [Landroid/content/Intent;

    aput-object v8, v0, v9

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, v6, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 958
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/content/Intent;->resolveType(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v9

    const/high16 v22, 0x54000000

    const/16 v23, 0x0

    .line 955
    move-object/from16 v13, p2

    move-object/from16 v14, p3

    move/from16 v15, p4

    move/from16 v16, p7

    move-object/from16 v20, v0

    move-object/from16 v21, v1

    invoke-virtual/range {v11 .. v23}, Lcom/android/server/am/PendingIntentController;->getIntentSender(ILjava/lang/String;Ljava/lang/String;IILandroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;)Lcom/android/server/am/PendingIntentRecord;

    move-result-object v0

    .line 961
    .local v0, "target":Landroid/content/IIntentSender;
    new-instance v1, Landroid/content/IntentSender;

    invoke-direct {v1, v0}, Landroid/content/IntentSender;-><init>(Landroid/content/IIntentSender;)V

    const-string v2, "android.intent.extra.INTENT"

    invoke-virtual {v10, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 969
    .end local v0    # "target":Landroid/content/IIntentSender;
    :goto_1
    iget-object v0, v6, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    new-instance v1, Lcom/android/server/am/ActiveServices$3;

    move/from16 v2, p7

    invoke-direct {v1, v6, v10, v2}, Lcom/android/server/am/ActiveServices$3;-><init>(Lcom/android/server/am/ActiveServices;Landroid/content/Intent;I)V

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService$MainHandler;->post(Ljava/lang/Runnable;)Z

    .line 976
    return v9

    .line 979
    .end local v10    # "intent":Landroid/content/Intent;
    :cond_3
    move/from16 v2, p7

    return v1
.end method

.method private requestUpdateActiveForegroundAppsLocked(Lcom/android/server/am/ActiveServices$ServiceMap;J)V
    .locals 5
    .param p1, "smap"    # Lcom/android/server/am/ActiveServices$ServiceMap;
    .param p2, "timeElapsed"    # J

    .line 1553
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/android/server/am/ActiveServices$ServiceMap;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1554
    .local v0, "msg":Landroid/os/Message;
    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-eqz v1, :cond_0

    .line 1555
    nop

    .line 1556
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    add-long/2addr v1, p2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 1555
    invoke-virtual {p1, v0, v1, v2}, Lcom/android/server/am/ActiveServices$ServiceMap;->sendMessageAtTime(Landroid/os/Message;J)Z

    goto :goto_0

    .line 1558
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundAppsChanged:Z

    .line 1559
    invoke-virtual {p1, v0}, Lcom/android/server/am/ActiveServices$ServiceMap;->sendMessage(Landroid/os/Message;)Z

    .line 1561
    :goto_0
    return-void
.end method

.method private retrieveServiceLocked(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZZZZ)Lcom/android/server/am/ActiveServices$ServiceLookupResult;
    .locals 34
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "instanceName"    # Ljava/lang/String;
    .param p3, "resolvedType"    # Ljava/lang/String;
    .param p4, "callingPackage"    # Ljava/lang/String;
    .param p5, "callingPid"    # I
    .param p6, "callingUid"    # I
    .param p7, "userId"    # I
    .param p8, "createIfNeeded"    # Z
    .param p9, "callingFromFg"    # Z
    .param p10, "isBindExternal"    # Z
    .param p11, "allowInstant"    # Z

    .line 3081
    move-object/from16 v1, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v8, p4

    move/from16 v7, p5

    move/from16 v6, p6

    const/4 v0, 0x0

    .line 3085
    .local v0, "r":Lcom/android/server/am/ServiceRecord;
    iget-object v2, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v2, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    .line 3086
    invoke-direct {v1, v9, v8}, Lcom/android/server/am/ActiveServices;->getAllowMode(Landroid/content/Intent;Ljava/lang/String;)I

    move-result v16

    .line 3085
    const/4 v15, 0x0

    const-string/jumbo v17, "service"

    move/from16 v12, p5

    move/from16 v13, p6

    move/from16 v14, p7

    move-object/from16 v18, p4

    invoke-virtual/range {v11 .. v18}, Lcom/android/server/am/UserController;->handleIncomingUser(IIIZILjava/lang/String;Ljava/lang/String;)I

    move-result v11

    .line 3089
    .end local p7    # "userId":I
    .local v11, "userId":I
    invoke-direct {v1, v11}, Lcom/android/server/am/ActiveServices;->getServiceMapLocked(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v12

    .line 3091
    .local v12, "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    const-string v13, ":"

    if-nez v10, :cond_0

    .line 3092
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    move-object v14, v2

    .local v2, "comp":Landroid/content/ComponentName;
    goto :goto_0

    .line 3094
    .end local v2    # "comp":Landroid/content/ComponentName;
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    .line 3095
    .local v2, "realComp":Landroid/content/ComponentName;
    if-eqz v2, :cond_26

    .line 3099
    new-instance v3, Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 3100
    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v14, v3

    .line 3102
    .end local v2    # "realComp":Landroid/content/ComponentName;
    .local v14, "comp":Landroid/content/ComponentName;
    :goto_0
    if-eqz v14, :cond_1

    .line 3103
    iget-object v2, v12, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    invoke-virtual {v2, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/android/server/am/ServiceRecord;

    .line 3106
    :cond_1
    if-nez v0, :cond_2

    if-nez p10, :cond_2

    if-nez v10, :cond_2

    .line 3107
    new-instance v2, Landroid/content/Intent$FilterComparison;

    invoke-direct {v2, v9}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    .line 3108
    .local v2, "filter":Landroid/content/Intent$FilterComparison;
    iget-object v3, v12, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByIntent:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/android/server/am/ServiceRecord;

    .line 3111
    .end local v2    # "filter":Landroid/content/Intent$FilterComparison;
    :cond_2
    const-string v15, "Unable to start service "

    const-string v5, ": not found"

    const-string v4, " U="

    const-string v3, "ActivityManager"

    if-eqz v0, :cond_4

    .line 3114
    iget-object v2, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v2

    iget-object v7, v0, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v7, v6, v11}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Ljava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3116
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3118
    const/4 v2, 0x0

    return-object v2

    .line 3120
    :cond_3
    const/4 v2, 0x0

    iget-object v7, v0, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget v7, v7, Landroid/content/pm/ServiceInfo;->flags:I

    and-int/lit8 v7, v7, 0x4

    if-eqz v7, :cond_5

    iget-object v7, v0, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    .line 3121
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 3124
    const/4 v0, 0x0

    move-object/from16 v16, v0

    goto :goto_1

    .line 3111
    :cond_4
    const/4 v2, 0x0

    .line 3130
    :cond_5
    move-object/from16 v16, v0

    .end local v0    # "r":Lcom/android/server/am/ServiceRecord;
    .local v16, "r":Lcom/android/server/am/ServiceRecord;
    :goto_1
    const-string v7, "Service lookup failed: "

    move-object/from16 p7, v12

    .end local v12    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .local p7, "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    const-string v12, " and "

    move-object/from16 v17, v13

    const-string v13, "association not allowed between packages "

    move-object/from16 v18, v12

    if-nez v16, :cond_1d

    .line 3132
    const v0, 0x10000400

    .line 3134
    .local v0, "flags":I
    if-eqz p11, :cond_6

    .line 3135
    const/high16 v19, 0x800000

    or-int v0, v0, v19

    move/from16 v19, v0

    goto :goto_2

    .line 3134
    :cond_6
    move/from16 v19, v0

    .line 3138
    .end local v0    # "flags":I
    .local v19, "flags":I
    :goto_2
    :try_start_0
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_d

    move-object v12, v2

    move-object v2, v0

    move-object v12, v3

    move-object/from16 v3, p1

    move-object v0, v4

    move-object/from16 v4, p3

    move-object/from16 v20, v13

    move-object v13, v5

    move/from16 v5, v19

    move v8, v6

    move v6, v11

    move-object v8, v7

    move/from16 v7, p6

    :try_start_1
    invoke-virtual/range {v2 .. v7}, Landroid/content/pm/PackageManagerInternal;->resolveService(Landroid/content/Intent;Ljava/lang/String;III)Landroid/content/pm/ResolveInfo;

    move-result-object v2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_c

    move-object v7, v2

    .line 3140
    .local v7, "rInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v7, :cond_7

    :try_start_2
    iget-object v2, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    goto :goto_3

    .line 3259
    .end local v7    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v19    # "flags":I
    :catch_0
    move-exception v0

    move/from16 v13, p6

    move-object/from16 v22, p7

    move-object/from16 v21, v14

    move-object/from16 v15, v20

    move-object/from16 v14, p4

    move-object/from16 v33, v18

    move-object/from16 v18, v8

    move-object/from16 v8, v33

    goto/16 :goto_13

    .line 3140
    .restart local v7    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v19    # "flags":I
    :cond_7
    const/4 v2, 0x0

    .line 3141
    .local v2, "sInfo":Landroid/content/pm/ServiceInfo;
    :goto_3
    if-nez v2, :cond_8

    .line 3142
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3144
    const/4 v3, 0x0

    return-object v3

    .line 3146
    :cond_8
    if-eqz v10, :cond_a

    iget v3, v2, Landroid/content/pm/ServiceInfo;->flags:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_9

    goto :goto_4

    .line 3148
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t use instance name \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\' with non-isolated service \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v11    # "userId":I
    .end local v14    # "comp":Landroid/content/ComponentName;
    .end local v16    # "r":Lcom/android/server/am/ServiceRecord;
    .end local p0    # "this":Lcom/android/server/am/ActiveServices;
    .end local p1    # "service":Landroid/content/Intent;
    .end local p2    # "instanceName":Ljava/lang/String;
    .end local p3    # "resolvedType":Ljava/lang/String;
    .end local p4    # "callingPackage":Ljava/lang/String;
    .end local p5    # "callingPid":I
    .end local p6    # "callingUid":I
    .end local p7    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .end local p8    # "createIfNeeded":Z
    .end local p9    # "callingFromFg":Z
    .end local p10    # "isBindExternal":Z
    .end local p11    # "allowInstant":Z
    throw v0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 3151
    .restart local v11    # "userId":I
    .restart local v14    # "comp":Landroid/content/ComponentName;
    .restart local v16    # "r":Lcom/android/server/am/ServiceRecord;
    .restart local p0    # "this":Lcom/android/server/am/ActiveServices;
    .restart local p1    # "service":Landroid/content/Intent;
    .restart local p2    # "instanceName":Ljava/lang/String;
    .restart local p3    # "resolvedType":Ljava/lang/String;
    .restart local p4    # "callingPackage":Ljava/lang/String;
    .restart local p5    # "callingPid":I
    .restart local p6    # "callingUid":I
    .restart local p7    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .restart local p8    # "createIfNeeded":Z
    .restart local p9    # "callingFromFg":Z
    .restart local p10    # "isBindExternal":Z
    .restart local p11    # "allowInstant":Z
    :cond_a
    :goto_4
    :try_start_3
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, v2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v5, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3153
    .local v3, "className":Landroid/content/ComponentName;
    if-eqz v14, :cond_b

    move-object v4, v14

    goto :goto_5

    :cond_b
    move-object v4, v3

    .line 3154
    .local v4, "name":Landroid/content/ComponentName;
    :goto_5
    iget-object v5, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 3155
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    iget-object v15, v2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v15, v15, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_c

    .line 3154
    move-object/from16 v22, v13

    move-object/from16 v21, v14

    move-object/from16 v14, p4

    move/from16 v13, p6

    .end local v14    # "comp":Landroid/content/ComponentName;
    .local v21, "comp":Landroid/content/ComponentName;
    :try_start_4
    invoke-virtual {v5, v14, v13, v6, v15}, Lcom/android/server/am/ActivityManagerService;->validateAssociationAllowedLocked(Ljava/lang/String;ILjava/lang/String;I)Z

    move-result v5
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_b

    if-nez v5, :cond_c

    .line 3156
    :try_start_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_3

    move-object/from16 v15, v20

    :try_start_6
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_2

    move-object/from16 v6, v18

    :try_start_7
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3157
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3158
    .local v0, "msg":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v12, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3159
    new-instance v5, Lcom/android/server/am/ActiveServices$ServiceLookupResult;
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_1

    move-object/from16 v18, v6

    const/4 v6, 0x0

    :try_start_8
    invoke-direct {v5, v1, v6, v0}, Lcom/android/server/am/ActiveServices$ServiceLookupResult;-><init>(Lcom/android/server/am/ActiveServices;Lcom/android/server/am/ServiceRecord;Ljava/lang/String;)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_2

    return-object v5

    .line 3259
    .end local v0    # "msg":Ljava/lang/String;
    .end local v2    # "sInfo":Landroid/content/pm/ServiceInfo;
    .end local v3    # "className":Landroid/content/ComponentName;
    .end local v4    # "name":Landroid/content/ComponentName;
    .end local v7    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v19    # "flags":I
    :catch_1
    move-exception v0

    move-object/from16 v22, p7

    move-object/from16 v18, v8

    move-object v8, v6

    goto/16 :goto_13

    :catch_2
    move-exception v0

    move-object/from16 v22, p7

    move-object/from16 v33, v18

    move-object/from16 v18, v8

    move-object/from16 v8, v33

    goto/16 :goto_13

    :catch_3
    move-exception v0

    move-object/from16 v15, v20

    move-object/from16 v22, p7

    move-object/from16 v33, v18

    move-object/from16 v18, v8

    move-object/from16 v8, v33

    goto/16 :goto_13

    .line 3165
    .restart local v2    # "sInfo":Landroid/content/pm/ServiceInfo;
    .restart local v3    # "className":Landroid/content/ComponentName;
    .restart local v4    # "name":Landroid/content/ComponentName;
    .restart local v7    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v19    # "flags":I
    :cond_c
    move-object/from16 v15, v20

    :try_start_9
    iget-object v5, v2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v27, v5

    .line 3166
    .local v27, "definingPackageName":Ljava/lang/String;
    iget-object v5, v2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v28, v5

    .line 3167
    .local v28, "definingUid":I
    iget v5, v2, Landroid/content/pm/ServiceInfo;->flags:I
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_a

    and-int/lit8 v5, v5, 0x4

    const-string v6, "BIND_EXTERNAL_SERVICE failed, "

    if-eqz v5, :cond_12

    .line 3168
    if-eqz p10, :cond_11

    .line 3169
    :try_start_a
    iget-boolean v5, v2, Landroid/content/pm/ServiceInfo;->exported:Z

    if-eqz v5, :cond_10

    .line 3173
    iget v5, v2, Landroid/content/pm/ServiceInfo;->flags:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_f

    .line 3178
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v5

    const/16 v6, 0x400

    invoke-interface {v5, v14, v6, v11}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    .line 3180
    .local v5, "aInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v5, :cond_e

    .line 3184
    new-instance v6, Landroid/content/pm/ServiceInfo;

    invoke-direct {v6, v2}, Landroid/content/pm/ServiceInfo;-><init>(Landroid/content/pm/ServiceInfo;)V

    move-object v2, v6

    .line 3185
    new-instance v6, Landroid/content/pm/ApplicationInfo;

    move-object/from16 v20, v7

    .end local v7    # "rInfo":Landroid/content/pm/ResolveInfo;
    .local v20, "rInfo":Landroid/content/pm/ResolveInfo;
    iget-object v7, v2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v6, v7}, Landroid/content/pm/ApplicationInfo;-><init>(Landroid/content/pm/ApplicationInfo;)V

    iput-object v6, v2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 3186
    iget-object v6, v2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v7, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 3187
    iget-object v6, v2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v7, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 3188
    new-instance v6, Landroid/content/ComponentName;

    iget-object v7, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v23, v2

    .end local v2    # "sInfo":Landroid/content/pm/ServiceInfo;
    .local v23, "sInfo":Landroid/content/pm/ServiceInfo;
    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v6, v7, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v6

    .line 3189
    new-instance v2, Landroid/content/ComponentName;

    iget-object v6, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 3190
    if-nez v10, :cond_d

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v24, v5

    goto :goto_6

    .line 3191
    :cond_d
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v24, v5

    .end local v5    # "aInfo":Landroid/content/pm/ApplicationInfo;
    .local v24, "aInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, v17

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_6
    invoke-direct {v2, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v2

    .line 3192
    invoke-virtual {v9, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 3193
    move-object/from16 v17, v3

    move-object v6, v4

    move-object/from16 v7, v23

    .end local v24    # "aInfo":Landroid/content/pm/ApplicationInfo;
    goto/16 :goto_7

    .line 3181
    .end local v20    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v23    # "sInfo":Landroid/content/pm/ServiceInfo;
    .restart local v2    # "sInfo":Landroid/content/pm/ServiceInfo;
    .restart local v5    # "aInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v7    # "rInfo":Landroid/content/pm/ResolveInfo;
    :cond_e
    move-object/from16 v24, v5

    move-object/from16 v20, v7

    .end local v5    # "aInfo":Landroid/content/pm/ApplicationInfo;
    .end local v7    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v20    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v24    # "aInfo":Landroid/content/pm/ApplicationInfo;
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "BIND_EXTERNAL_SERVICE failed, could not resolve client package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v11    # "userId":I
    .end local v16    # "r":Lcom/android/server/am/ServiceRecord;
    .end local v21    # "comp":Landroid/content/ComponentName;
    .end local p0    # "this":Lcom/android/server/am/ActiveServices;
    .end local p1    # "service":Landroid/content/Intent;
    .end local p2    # "instanceName":Ljava/lang/String;
    .end local p3    # "resolvedType":Ljava/lang/String;
    .end local p4    # "callingPackage":Ljava/lang/String;
    .end local p5    # "callingPid":I
    .end local p6    # "callingUid":I
    .end local p7    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .end local p8    # "createIfNeeded":Z
    .end local p9    # "callingFromFg":Z
    .end local p10    # "isBindExternal":Z
    .end local p11    # "allowInstant":Z
    throw v0

    .line 3174
    .end local v20    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v24    # "aInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v7    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v11    # "userId":I
    .restart local v16    # "r":Lcom/android/server/am/ServiceRecord;
    .restart local v21    # "comp":Landroid/content/ComponentName;
    .restart local p0    # "this":Lcom/android/server/am/ActiveServices;
    .restart local p1    # "service":Landroid/content/Intent;
    .restart local p2    # "instanceName":Ljava/lang/String;
    .restart local p3    # "resolvedType":Ljava/lang/String;
    .restart local p4    # "callingPackage":Ljava/lang/String;
    .restart local p5    # "callingPid":I
    .restart local p6    # "callingUid":I
    .restart local p7    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .restart local p8    # "createIfNeeded":Z
    .restart local p9    # "callingFromFg":Z
    .restart local p10    # "isBindExternal":Z
    .restart local p11    # "allowInstant":Z
    :cond_f
    move-object/from16 v20, v7

    .end local v7    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v20    # "rInfo":Landroid/content/pm/ResolveInfo;
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " is not an isolatedProcess"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v11    # "userId":I
    .end local v16    # "r":Lcom/android/server/am/ServiceRecord;
    .end local v21    # "comp":Landroid/content/ComponentName;
    .end local p0    # "this":Lcom/android/server/am/ActiveServices;
    .end local p1    # "service":Landroid/content/Intent;
    .end local p2    # "instanceName":Ljava/lang/String;
    .end local p3    # "resolvedType":Ljava/lang/String;
    .end local p4    # "callingPackage":Ljava/lang/String;
    .end local p5    # "callingPid":I
    .end local p6    # "callingUid":I
    .end local p7    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .end local p8    # "createIfNeeded":Z
    .end local p9    # "callingFromFg":Z
    .end local p10    # "isBindExternal":Z
    .end local p11    # "allowInstant":Z
    throw v0

    .line 3170
    .end local v20    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v7    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v11    # "userId":I
    .restart local v16    # "r":Lcom/android/server/am/ServiceRecord;
    .restart local v21    # "comp":Landroid/content/ComponentName;
    .restart local p0    # "this":Lcom/android/server/am/ActiveServices;
    .restart local p1    # "service":Landroid/content/Intent;
    .restart local p2    # "instanceName":Ljava/lang/String;
    .restart local p3    # "resolvedType":Ljava/lang/String;
    .restart local p4    # "callingPackage":Ljava/lang/String;
    .restart local p5    # "callingPid":I
    .restart local p6    # "callingUid":I
    .restart local p7    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .restart local p8    # "createIfNeeded":Z
    .restart local p9    # "callingFromFg":Z
    .restart local p10    # "isBindExternal":Z
    .restart local p11    # "allowInstant":Z
    :cond_10
    move-object/from16 v20, v7

    .end local v7    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v20    # "rInfo":Landroid/content/pm/ResolveInfo;
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " is not exported"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v11    # "userId":I
    .end local v16    # "r":Lcom/android/server/am/ServiceRecord;
    .end local v21    # "comp":Landroid/content/ComponentName;
    .end local p0    # "this":Lcom/android/server/am/ActiveServices;
    .end local p1    # "service":Landroid/content/Intent;
    .end local p2    # "instanceName":Ljava/lang/String;
    .end local p3    # "resolvedType":Ljava/lang/String;
    .end local p4    # "callingPackage":Ljava/lang/String;
    .end local p5    # "callingPid":I
    .end local p6    # "callingUid":I
    .end local p7    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .end local p8    # "createIfNeeded":Z
    .end local p9    # "callingFromFg":Z
    .end local p10    # "isBindExternal":Z
    .end local p11    # "allowInstant":Z
    throw v0

    .line 3194
    .end local v20    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v7    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v11    # "userId":I
    .restart local v16    # "r":Lcom/android/server/am/ServiceRecord;
    .restart local v21    # "comp":Landroid/content/ComponentName;
    .restart local p0    # "this":Lcom/android/server/am/ActiveServices;
    .restart local p1    # "service":Landroid/content/Intent;
    .restart local p2    # "instanceName":Ljava/lang/String;
    .restart local p3    # "resolvedType":Ljava/lang/String;
    .restart local p4    # "callingPackage":Ljava/lang/String;
    .restart local p5    # "callingPid":I
    .restart local p6    # "callingUid":I
    .restart local p7    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .restart local p8    # "createIfNeeded":Z
    .restart local p9    # "callingFromFg":Z
    .restart local p10    # "isBindExternal":Z
    .restart local p11    # "allowInstant":Z
    :cond_11
    move-object/from16 v20, v7

    .end local v7    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v20    # "rInfo":Landroid/content/pm/ResolveInfo;
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "BIND_EXTERNAL_SERVICE required for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v11    # "userId":I
    .end local v16    # "r":Lcom/android/server/am/ServiceRecord;
    .end local v21    # "comp":Landroid/content/ComponentName;
    .end local p0    # "this":Lcom/android/server/am/ActiveServices;
    .end local p1    # "service":Landroid/content/Intent;
    .end local p2    # "instanceName":Ljava/lang/String;
    .end local p3    # "resolvedType":Ljava/lang/String;
    .end local p4    # "callingPackage":Ljava/lang/String;
    .end local p5    # "callingPid":I
    .end local p6    # "callingUid":I
    .end local p7    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .end local p8    # "createIfNeeded":Z
    .end local p9    # "callingFromFg":Z
    .end local p10    # "isBindExternal":Z
    .end local p11    # "allowInstant":Z
    throw v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_2

    .line 3197
    .end local v20    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v7    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v11    # "userId":I
    .restart local v16    # "r":Lcom/android/server/am/ServiceRecord;
    .restart local v21    # "comp":Landroid/content/ComponentName;
    .restart local p0    # "this":Lcom/android/server/am/ActiveServices;
    .restart local p1    # "service":Landroid/content/Intent;
    .restart local p2    # "instanceName":Ljava/lang/String;
    .restart local p3    # "resolvedType":Ljava/lang/String;
    .restart local p4    # "callingPackage":Ljava/lang/String;
    .restart local p5    # "callingPid":I
    .restart local p6    # "callingUid":I
    .restart local p7    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .restart local p8    # "createIfNeeded":Z
    .restart local p9    # "callingFromFg":Z
    .restart local p10    # "isBindExternal":Z
    .restart local p11    # "allowInstant":Z
    :cond_12
    move-object/from16 v20, v7

    .end local v7    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v20    # "rInfo":Landroid/content/pm/ResolveInfo;
    if-nez p10, :cond_1c

    move-object v7, v2

    move-object/from16 v17, v3

    move-object v6, v4

    .line 3201
    .end local v2    # "sInfo":Landroid/content/pm/ServiceInfo;
    .end local v3    # "className":Landroid/content/ComponentName;
    .end local v4    # "name":Landroid/content/ComponentName;
    .local v6, "name":Landroid/content/ComponentName;
    .local v7, "sInfo":Landroid/content/pm/ServiceInfo;
    .local v17, "className":Landroid/content/ComponentName;
    :goto_7
    if-lez v11, :cond_16

    .line 3202
    :try_start_b
    iget-object v2, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v7, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    iget-object v4, v7, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v7, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    move-object/from16 v23, v6

    .end local v6    # "name":Landroid/content/ComponentName;
    .local v23, "name":Landroid/content/ComponentName;
    iget v6, v7, Landroid/content/pm/ServiceInfo;->flags:I

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/server/am/ActivityManagerService;->isSingleton(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_15

    iget-object v2, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v7, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 3204
    invoke-virtual {v2, v13, v3}, Lcom/android/server/am/ActivityManagerService;->isValidSingletonCall(II)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 3205
    const/4 v11, 0x0

    .line 3206
    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/server/am/ActiveServices;->getServiceMapLocked(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v3
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_a

    move-object/from16 v24, v3

    .line 3208
    .end local p7    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .local v24, "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    :try_start_c
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_4

    move-wide/from16 v25, v2

    .line 3210
    .local v25, "token":J
    :try_start_d
    iget-object v2, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 3211
    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    move-object/from16 v3, p1

    move-object/from16 v4, p3

    move/from16 v5, v19

    move-object/from16 v10, v23

    move-object/from16 v33, v18

    move-object/from16 v18, v8

    move-object/from16 v8, v33

    .end local v23    # "name":Landroid/content/ComponentName;
    .local v10, "name":Landroid/content/ComponentName;
    move v6, v11

    move-object/from16 v23, v7

    .end local v7    # "sInfo":Landroid/content/pm/ServiceInfo;
    .local v23, "sInfo":Landroid/content/pm/ServiceInfo;
    move/from16 v7, p6

    :try_start_e
    invoke-virtual/range {v2 .. v7}, Landroid/content/pm/PackageManagerInternal;->resolveService(Landroid/content/Intent;Ljava/lang/String;III)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 3213
    .local v2, "rInfoForUserId0":Landroid/content/pm/ResolveInfo;
    if-nez v2, :cond_13

    .line 3214
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to resolve service "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 3217
    nop

    .line 3221
    :try_start_f
    invoke-static/range {v25 .. v26}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_f} :catch_5

    .line 3217
    const/4 v3, 0x0

    return-object v3

    .line 3219
    :cond_13
    :try_start_10
    iget-object v0, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    move-object v7, v0

    .line 3221
    .end local v2    # "rInfoForUserId0":Landroid/content/pm/ResolveInfo;
    .end local v23    # "sInfo":Landroid/content/pm/ServiceInfo;
    .restart local v7    # "sInfo":Landroid/content/pm/ServiceInfo;
    :try_start_11
    invoke-static/range {v25 .. v26}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3222
    goto :goto_a

    .line 3221
    .end local v7    # "sInfo":Landroid/content/pm/ServiceInfo;
    .restart local v23    # "sInfo":Landroid/content/pm/ServiceInfo;
    :catchall_0
    move-exception v0

    goto :goto_8

    .end local v10    # "name":Landroid/content/ComponentName;
    .restart local v7    # "sInfo":Landroid/content/pm/ServiceInfo;
    .local v23, "name":Landroid/content/ComponentName;
    :catchall_1
    move-exception v0

    move-object/from16 v10, v23

    move-object/from16 v23, v7

    move-object/from16 v33, v18

    move-object/from16 v18, v8

    move-object/from16 v8, v33

    .end local v7    # "sInfo":Landroid/content/pm/ServiceInfo;
    .restart local v10    # "name":Landroid/content/ComponentName;
    .local v23, "sInfo":Landroid/content/pm/ServiceInfo;
    :goto_8
    invoke-static/range {v25 .. v26}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3222
    nop

    .end local v11    # "userId":I
    .end local v16    # "r":Lcom/android/server/am/ServiceRecord;
    .end local v21    # "comp":Landroid/content/ComponentName;
    .end local v24    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .end local p0    # "this":Lcom/android/server/am/ActiveServices;
    .end local p1    # "service":Landroid/content/Intent;
    .end local p2    # "instanceName":Ljava/lang/String;
    .end local p3    # "resolvedType":Ljava/lang/String;
    .end local p4    # "callingPackage":Ljava/lang/String;
    .end local p5    # "callingPid":I
    .end local p6    # "callingUid":I
    .end local p8    # "createIfNeeded":Z
    .end local p9    # "callingFromFg":Z
    .end local p10    # "isBindExternal":Z
    .end local p11    # "allowInstant":Z
    throw v0

    .line 3259
    .end local v10    # "name":Landroid/content/ComponentName;
    .end local v17    # "className":Landroid/content/ComponentName;
    .end local v19    # "flags":I
    .end local v20    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v23    # "sInfo":Landroid/content/pm/ServiceInfo;
    .end local v25    # "token":J
    .end local v27    # "definingPackageName":Ljava/lang/String;
    .end local v28    # "definingUid":I
    .restart local v11    # "userId":I
    .restart local v16    # "r":Lcom/android/server/am/ServiceRecord;
    .restart local v21    # "comp":Landroid/content/ComponentName;
    .restart local v24    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .restart local p0    # "this":Lcom/android/server/am/ActiveServices;
    .restart local p1    # "service":Landroid/content/Intent;
    .restart local p2    # "instanceName":Ljava/lang/String;
    .restart local p3    # "resolvedType":Ljava/lang/String;
    .restart local p4    # "callingPackage":Ljava/lang/String;
    .restart local p5    # "callingPid":I
    .restart local p6    # "callingUid":I
    .restart local p8    # "createIfNeeded":Z
    .restart local p9    # "callingFromFg":Z
    .restart local p10    # "isBindExternal":Z
    .restart local p11    # "allowInstant":Z
    :catch_4
    move-exception v0

    move-object/from16 v33, v18

    move-object/from16 v18, v8

    move-object/from16 v8, v33

    goto :goto_b

    .line 3204
    .end local v24    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .restart local v7    # "sInfo":Landroid/content/pm/ServiceInfo;
    .restart local v17    # "className":Landroid/content/ComponentName;
    .restart local v19    # "flags":I
    .restart local v20    # "rInfo":Landroid/content/pm/ResolveInfo;
    .local v23, "name":Landroid/content/ComponentName;
    .restart local v27    # "definingPackageName":Ljava/lang/String;
    .restart local v28    # "definingUid":I
    .restart local p7    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    :cond_14
    move-object/from16 v10, v23

    move-object/from16 v23, v7

    move-object/from16 v33, v18

    move-object/from16 v18, v8

    move-object/from16 v8, v33

    .end local v7    # "sInfo":Landroid/content/pm/ServiceInfo;
    .restart local v10    # "name":Landroid/content/ComponentName;
    .local v23, "sInfo":Landroid/content/pm/ServiceInfo;
    goto :goto_9

    .line 3202
    .end local v10    # "name":Landroid/content/ComponentName;
    .restart local v7    # "sInfo":Landroid/content/pm/ServiceInfo;
    .local v23, "name":Landroid/content/ComponentName;
    :cond_15
    move-object/from16 v10, v23

    move-object/from16 v23, v7

    move-object/from16 v33, v18

    move-object/from16 v18, v8

    move-object/from16 v8, v33

    .line 3224
    .end local v7    # "sInfo":Landroid/content/pm/ServiceInfo;
    .restart local v10    # "name":Landroid/content/ComponentName;
    .local v23, "sInfo":Landroid/content/pm/ServiceInfo;
    :goto_9
    move-object/from16 v24, p7

    move-object/from16 v7, v23

    .end local v23    # "sInfo":Landroid/content/pm/ServiceInfo;
    .end local p7    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .restart local v7    # "sInfo":Landroid/content/pm/ServiceInfo;
    .restart local v24    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    :goto_a
    new-instance v0, Landroid/content/pm/ServiceInfo;

    invoke-direct {v0, v7}, Landroid/content/pm/ServiceInfo;-><init>(Landroid/content/pm/ServiceInfo;)V

    move-object v7, v0

    .line 3225
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v7, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v2, v11}, Lcom/android/server/am/ActivityManagerService;->getAppInfoForUser(Landroid/content/pm/ApplicationInfo;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iput-object v0, v7, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_11} :catch_5

    move-object/from16 v2, v24

    goto :goto_c

    .line 3259
    .end local v7    # "sInfo":Landroid/content/pm/ServiceInfo;
    .end local v10    # "name":Landroid/content/ComponentName;
    .end local v17    # "className":Landroid/content/ComponentName;
    .end local v19    # "flags":I
    .end local v20    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v27    # "definingPackageName":Ljava/lang/String;
    .end local v28    # "definingUid":I
    :catch_5
    move-exception v0

    :goto_b
    move-object/from16 v22, v24

    goto/16 :goto_13

    .line 3201
    .end local v24    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .restart local v6    # "name":Landroid/content/ComponentName;
    .restart local v7    # "sInfo":Landroid/content/pm/ServiceInfo;
    .restart local v17    # "className":Landroid/content/ComponentName;
    .restart local v19    # "flags":I
    .restart local v20    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v27    # "definingPackageName":Ljava/lang/String;
    .restart local v28    # "definingUid":I
    .restart local p7    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    :cond_16
    move-object v10, v6

    move-object/from16 v23, v7

    move-object/from16 v33, v18

    move-object/from16 v18, v8

    move-object/from16 v8, v33

    .end local v6    # "name":Landroid/content/ComponentName;
    .end local v7    # "sInfo":Landroid/content/pm/ServiceInfo;
    .restart local v10    # "name":Landroid/content/ComponentName;
    .restart local v23    # "sInfo":Landroid/content/pm/ServiceInfo;
    move-object/from16 v2, p7

    .line 3227
    .end local v23    # "sInfo":Landroid/content/pm/ServiceInfo;
    .end local p7    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .local v2, "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .restart local v7    # "sInfo":Landroid/content/pm/ServiceInfo;
    :goto_c
    :try_start_12
    iget-object v0, v2, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    invoke-virtual {v0, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ServiceRecord;
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_12} :catch_8

    move-object v3, v0

    .line 3230
    .end local v16    # "r":Lcom/android/server/am/ServiceRecord;
    .local v3, "r":Lcom/android/server/am/ServiceRecord;
    if-nez v3, :cond_1b

    if-eqz p8, :cond_1b

    .line 3231
    :try_start_13
    new-instance v0, Landroid/content/Intent$FilterComparison;

    .line 3232
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->cloneFilter()Landroid/content/Intent;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    .line 3233
    .local v0, "filter":Landroid/content/Intent$FilterComparison;
    new-instance v4, Lcom/android/server/am/ActiveServices$ServiceRestarter;

    const/4 v5, 0x0

    invoke-direct {v4, v1, v5}, Lcom/android/server/am/ActiveServices$ServiceRestarter;-><init>(Lcom/android/server/am/ActiveServices;Lcom/android/server/am/ActiveServices$1;)V

    .line 3234
    .local v4, "res":Lcom/android/server/am/ActiveServices$ServiceRestarter;
    new-instance v5, Lcom/android/server/am/ServiceRecord;

    iget-object v6, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v23, v5

    move-object/from16 v24, v6

    move-object/from16 v25, v17

    move-object/from16 v26, v10

    move-object/from16 v29, v0

    move-object/from16 v30, v7

    move/from16 v31, p9

    move-object/from16 v32, v4

    invoke-direct/range {v23 .. v32}, Lcom/android/server/am/ServiceRecord;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/ComponentName;Landroid/content/ComponentName;Ljava/lang/String;ILandroid/content/Intent$FilterComparison;Landroid/content/pm/ServiceInfo;ZLjava/lang/Runnable;)V

    move-object v3, v5

    .line 3236
    invoke-virtual {v4, v3}, Lcom/android/server/am/ActiveServices$ServiceRestarter;->setService(Lcom/android/server/am/ServiceRecord;)V

    .line 3237
    iget-object v5, v2, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    invoke-virtual {v5, v10, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3238
    iget-object v5, v2, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByIntent:Landroid/util/ArrayMap;

    invoke-virtual {v5, v0, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3241
    iget-object v5, v1, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    .local v5, "i":I
    :goto_d
    if-ltz v5, :cond_18

    .line 3242
    iget-object v6, v1, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ServiceRecord;

    .line 3243
    .local v6, "pr":Lcom/android/server/am/ServiceRecord;
    move-object/from16 p7, v0

    .end local v0    # "filter":Landroid/content/Intent$FilterComparison;
    .local p7, "filter":Landroid/content/Intent$FilterComparison;
    iget-object v0, v6, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_13} :catch_7

    move-object/from16 v22, v2

    .end local v2    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .local v22, "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    :try_start_14
    iget-object v2, v7, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v0, v2, :cond_17

    iget-object v0, v6, Lcom/android/server/am/ServiceRecord;->instanceName:Landroid/content/ComponentName;

    .line 3244
    invoke-virtual {v0, v10}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 3246
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3241
    .end local v6    # "pr":Lcom/android/server/am/ServiceRecord;
    :cond_17
    add-int/lit8 v5, v5, -0x1

    move-object/from16 v0, p7

    move-object/from16 v2, v22

    goto :goto_d

    .end local v22    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .end local p7    # "filter":Landroid/content/Intent$FilterComparison;
    .restart local v0    # "filter":Landroid/content/Intent$FilterComparison;
    .restart local v2    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    :cond_18
    move-object/from16 p7, v0

    move-object/from16 v22, v2

    .line 3249
    .end local v0    # "filter":Landroid/content/Intent$FilterComparison;
    .end local v2    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .end local v5    # "i":I
    .restart local v22    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .restart local p7    # "filter":Landroid/content/Intent$FilterComparison;
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mPendingBringups:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_e
    if-ltz v0, :cond_1a

    .line 3250
    iget-object v2, v1, Lcom/android/server/am/ActiveServices;->mPendingBringups:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ServiceRecord;

    .line 3251
    .local v2, "pr":Lcom/android/server/am/ServiceRecord;
    iget-object v5, v2, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v6, v7, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v5, v6, :cond_19

    iget-object v5, v2, Lcom/android/server/am/ServiceRecord;->instanceName:Landroid/content/ComponentName;

    .line 3252
    invoke-virtual {v5, v10}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    .line 3254
    iget-object v5, v1, Lcom/android/server/am/ActiveServices;->mPendingBringups:Landroid/util/ArrayMap;

    invoke-virtual {v5, v0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_14} :catch_6

    .line 3249
    .end local v2    # "pr":Lcom/android/server/am/ServiceRecord;
    :cond_19
    add-int/lit8 v0, v0, -0x1

    goto :goto_e

    :cond_1a
    move-object/from16 v16, v3

    goto :goto_f

    .line 3259
    .end local v0    # "i":I
    .end local v4    # "res":Lcom/android/server/am/ActiveServices$ServiceRestarter;
    .end local v7    # "sInfo":Landroid/content/pm/ServiceInfo;
    .end local v10    # "name":Landroid/content/ComponentName;
    .end local v17    # "className":Landroid/content/ComponentName;
    .end local v19    # "flags":I
    .end local v20    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v27    # "definingPackageName":Ljava/lang/String;
    .end local v28    # "definingUid":I
    .end local p7    # "filter":Landroid/content/Intent$FilterComparison;
    :catch_6
    move-exception v0

    move-object/from16 v16, v3

    goto/16 :goto_13

    .end local v22    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .local v2, "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    :catch_7
    move-exception v0

    move-object/from16 v22, v2

    move-object/from16 v16, v3

    .end local v2    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .restart local v22    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    goto/16 :goto_13

    .line 3230
    .end local v22    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .restart local v2    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .restart local v7    # "sInfo":Landroid/content/pm/ServiceInfo;
    .restart local v10    # "name":Landroid/content/ComponentName;
    .restart local v17    # "className":Landroid/content/ComponentName;
    .restart local v19    # "flags":I
    .restart local v20    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v27    # "definingPackageName":Ljava/lang/String;
    .restart local v28    # "definingUid":I
    :cond_1b
    move-object/from16 v22, v2

    .line 3261
    .end local v2    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .end local v7    # "sInfo":Landroid/content/pm/ServiceInfo;
    .end local v10    # "name":Landroid/content/ComponentName;
    .end local v17    # "className":Landroid/content/ComponentName;
    .end local v19    # "flags":I
    .end local v20    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v27    # "definingPackageName":Ljava/lang/String;
    .end local v28    # "definingUid":I
    .restart local v22    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    move-object/from16 v16, v3

    .end local v3    # "r":Lcom/android/server/am/ServiceRecord;
    .restart local v16    # "r":Lcom/android/server/am/ServiceRecord;
    :goto_f
    move-object/from16 v10, v16

    goto/16 :goto_14

    .line 3259
    .end local v22    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .restart local v2    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    :catch_8
    move-exception v0

    move-object/from16 v22, v2

    .end local v2    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .restart local v22    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    goto :goto_13

    .line 3198
    .end local v22    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .local v2, "sInfo":Landroid/content/pm/ServiceInfo;
    .local v3, "className":Landroid/content/ComponentName;
    .local v4, "name":Landroid/content/ComponentName;
    .restart local v19    # "flags":I
    .restart local v20    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v27    # "definingPackageName":Ljava/lang/String;
    .restart local v28    # "definingUid":I
    .local p7, "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    :cond_1c
    move-object/from16 v33, v18

    move-object/from16 v18, v8

    move-object/from16 v8, v33

    :try_start_15
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " is not an externalService"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v11    # "userId":I
    .end local v16    # "r":Lcom/android/server/am/ServiceRecord;
    .end local v21    # "comp":Landroid/content/ComponentName;
    .end local p0    # "this":Lcom/android/server/am/ActiveServices;
    .end local p1    # "service":Landroid/content/Intent;
    .end local p2    # "instanceName":Ljava/lang/String;
    .end local p3    # "resolvedType":Ljava/lang/String;
    .end local p4    # "callingPackage":Ljava/lang/String;
    .end local p5    # "callingPid":I
    .end local p6    # "callingUid":I
    .end local p7    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .end local p8    # "createIfNeeded":Z
    .end local p9    # "callingFromFg":Z
    .end local p10    # "isBindExternal":Z
    .end local p11    # "allowInstant":Z
    throw v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_15} :catch_9

    .line 3259
    .end local v2    # "sInfo":Landroid/content/pm/ServiceInfo;
    .end local v3    # "className":Landroid/content/ComponentName;
    .end local v4    # "name":Landroid/content/ComponentName;
    .end local v19    # "flags":I
    .end local v20    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v27    # "definingPackageName":Ljava/lang/String;
    .end local v28    # "definingUid":I
    .restart local v11    # "userId":I
    .restart local v16    # "r":Lcom/android/server/am/ServiceRecord;
    .restart local v21    # "comp":Landroid/content/ComponentName;
    .restart local p0    # "this":Lcom/android/server/am/ActiveServices;
    .restart local p1    # "service":Landroid/content/Intent;
    .restart local p2    # "instanceName":Ljava/lang/String;
    .restart local p3    # "resolvedType":Ljava/lang/String;
    .restart local p4    # "callingPackage":Ljava/lang/String;
    .restart local p5    # "callingPid":I
    .restart local p6    # "callingUid":I
    .restart local p7    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .restart local p8    # "createIfNeeded":Z
    .restart local p9    # "callingFromFg":Z
    .restart local p10    # "isBindExternal":Z
    .restart local p11    # "allowInstant":Z
    :catch_9
    move-exception v0

    goto :goto_11

    :catch_a
    move-exception v0

    goto :goto_10

    :catch_b
    move-exception v0

    move-object/from16 v15, v20

    :goto_10
    move-object/from16 v33, v18

    move-object/from16 v18, v8

    move-object/from16 v8, v33

    :goto_11
    move-object/from16 v22, p7

    goto :goto_13

    .end local v21    # "comp":Landroid/content/ComponentName;
    .restart local v14    # "comp":Landroid/content/ComponentName;
    :catch_c
    move-exception v0

    move/from16 v13, p6

    move-object/from16 v21, v14

    move-object/from16 v15, v20

    move-object/from16 v14, p4

    move-object/from16 v33, v18

    move-object/from16 v18, v8

    move-object/from16 v8, v33

    goto :goto_12

    :catch_d
    move-exception v0

    move-object v12, v3

    move-object v15, v13

    move-object/from16 v21, v14

    move v13, v6

    move-object v14, v8

    move-object/from16 v8, v18

    move-object/from16 v18, v7

    :goto_12
    move-object/from16 v22, p7

    .end local v14    # "comp":Landroid/content/ComponentName;
    .end local p7    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .restart local v21    # "comp":Landroid/content/ComponentName;
    .restart local v22    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    :goto_13
    move-object/from16 v10, v16

    goto :goto_14

    .line 3130
    .end local v21    # "comp":Landroid/content/ComponentName;
    .end local v22    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .restart local v14    # "comp":Landroid/content/ComponentName;
    .restart local p7    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    :cond_1d
    move-object v12, v3

    move-object v15, v13

    move-object/from16 v21, v14

    move v13, v6

    move-object v14, v8

    move-object/from16 v8, v18

    move-object/from16 v18, v7

    .end local v14    # "comp":Landroid/content/ComponentName;
    .restart local v21    # "comp":Landroid/content/ComponentName;
    move-object/from16 v22, p7

    move-object/from16 v10, v16

    .line 3263
    .end local v16    # "r":Lcom/android/server/am/ServiceRecord;
    .end local p7    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .local v10, "r":Lcom/android/server/am/ServiceRecord;
    .restart local v22    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    :goto_14
    if-eqz v10, :cond_25

    .line 3264
    iput-object v14, v10, Lcom/android/server/am/ServiceRecord;->mRecentCallingPackage:Ljava/lang/String;

    .line 3265
    iput v13, v10, Lcom/android/server/am/ServiceRecord;->mRecentCallingUid:I

    .line 3267
    :try_start_16
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 3268
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 3269
    invoke-static/range {p6 .. p6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 3268
    const/4 v3, 0x0

    invoke-virtual {v0, v14, v3, v2}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/am/ServiceRecord;->mRecentCallerApplicationInfo:Landroid/content/pm/ApplicationInfo;
    :try_end_16
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_16 .. :try_end_16} :catch_e

    .line 3271
    goto :goto_15

    .line 3270
    :catch_e
    move-exception v0

    .line 3272
    :goto_15
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v10, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    iget-object v3, v10, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v14, v13, v2, v3}, Lcom/android/server/am/ActivityManagerService;->validateAssociationAllowedLocked(Ljava/lang/String;ILjava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 3274
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v10, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3276
    .local v0, "msg":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v3, v18

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3277
    new-instance v2, Lcom/android/server/am/ActiveServices$ServiceLookupResult;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3, v0}, Lcom/android/server/am/ActiveServices$ServiceLookupResult;-><init>(Lcom/android/server/am/ActiveServices;Lcom/android/server/am/ServiceRecord;Ljava/lang/String;)V

    return-object v2

    .line 3279
    .end local v0    # "msg":Ljava/lang/String;
    :cond_1e
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService;->mIntentFirewall:Lcom/android/server/firewall/IntentFirewall;

    iget-object v3, v10, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    iget-object v8, v10, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v4, p1

    move/from16 v5, p6

    move/from16 v6, p5

    move-object/from16 v7, p3

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/firewall/IntentFirewall;->checkService(Landroid/content/ComponentName;Landroid/content/Intent;IILjava/lang/String;Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 3281
    new-instance v0, Lcom/android/server/am/ActiveServices$ServiceLookupResult;

    const-string v2, "blocked by firewall"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/android/server/am/ActiveServices$ServiceLookupResult;-><init>(Lcom/android/server/am/ActiveServices;Lcom/android/server/am/ServiceRecord;Ljava/lang/String;)V

    return-object v0

    .line 3283
    :cond_1f
    iget-object v0, v10, Lcom/android/server/am/ServiceRecord;->permission:Ljava/lang/String;

    iget-object v2, v10, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-boolean v3, v10, Lcom/android/server/am/ServiceRecord;->exported:Z

    move/from16 v4, p5

    invoke-static {v0, v4, v13, v2, v3}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    move-result v0

    const-string v2, "Permission Denial: Accessing service "

    const-string v3, ", uid="

    const-string v5, " from pid="

    if-eqz v0, :cond_21

    .line 3285
    iget-boolean v0, v10, Lcom/android/server/am/ServiceRecord;->exported:Z

    if-nez v0, :cond_20

    .line 3286
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v10, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " that is not exported from uid "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v10, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3290
    new-instance v0, Lcom/android/server/am/ActiveServices$ServiceLookupResult;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "not exported from uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v10, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/android/server/am/ActiveServices$ServiceLookupResult;-><init>(Lcom/android/server/am/ActiveServices;Lcom/android/server/am/ServiceRecord;Ljava/lang/String;)V

    return-object v0

    .line 3293
    :cond_20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v10, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " requires "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v10, Lcom/android/server/am/ServiceRecord;->permission:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3297
    new-instance v0, Lcom/android/server/am/ActiveServices$ServiceLookupResult;

    iget-object v2, v10, Lcom/android/server/am/ServiceRecord;->permission:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/android/server/am/ActiveServices$ServiceLookupResult;-><init>(Lcom/android/server/am/ActiveServices;Lcom/android/server/am/ServiceRecord;Ljava/lang/String;)V

    return-object v0

    .line 3298
    :cond_21
    iget-object v0, v10, Lcom/android/server/am/ServiceRecord;->permission:Ljava/lang/String;

    const-string v6, "android.permission.BIND_HOTWORD_DETECTION_SERVICE"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    const/16 v0, 0x3e8

    if-eq v13, v0, :cond_22

    .line 3303
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v10, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " requiring permission "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v10, Lcom/android/server/am/ServiceRecord;->permission:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " can only be bound to from the system."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3308
    new-instance v0, Lcom/android/server/am/ActiveServices$ServiceLookupResult;

    const-string v2, "can only be bound to by the system."

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/android/server/am/ActiveServices$ServiceLookupResult;-><init>(Lcom/android/server/am/ActiveServices;Lcom/android/server/am/ServiceRecord;Ljava/lang/String;)V

    return-object v0

    .line 3310
    :cond_22
    iget-object v0, v10, Lcom/android/server/am/ServiceRecord;->permission:Ljava/lang/String;

    if-eqz v0, :cond_24

    if-eqz v14, :cond_24

    .line 3311
    iget-object v0, v10, Lcom/android/server/am/ServiceRecord;->permission:Ljava/lang/String;

    invoke-static {v0}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v0

    .line 3312
    .local v0, "opCode":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_23

    iget-object v2, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->getAppOpsManager()Landroid/app/AppOpsManager;

    move-result-object v2

    invoke-virtual {v2, v0, v13, v14}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_23

    .line 3314
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Appop Denial: Accessing service "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v10, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " requires appop "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3317
    invoke-static {v0}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3314
    invoke-static {v12, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3318
    const/4 v2, 0x0

    return-object v2

    .line 3312
    :cond_23
    const/4 v2, 0x0

    goto :goto_16

    .line 3310
    .end local v0    # "opCode":I
    :cond_24
    const/4 v2, 0x0

    .line 3321
    :goto_16
    new-instance v0, Lcom/android/server/am/ActiveServices$ServiceLookupResult;

    invoke-direct {v0, v1, v10, v2}, Lcom/android/server/am/ActiveServices$ServiceLookupResult;-><init>(Lcom/android/server/am/ActiveServices;Lcom/android/server/am/ServiceRecord;Ljava/lang/String;)V

    return-object v0

    .line 3323
    :cond_25
    move/from16 v4, p5

    const/4 v2, 0x0

    return-object v2

    .line 3096
    .end local v10    # "r":Lcom/android/server/am/ServiceRecord;
    .end local v21    # "comp":Landroid/content/ComponentName;
    .end local v22    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .local v0, "r":Lcom/android/server/am/ServiceRecord;
    .local v2, "realComp":Landroid/content/ComponentName;
    .restart local v12    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    :cond_26
    move v13, v6

    move v4, v7

    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t use custom instance name \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v6, p2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\' without expicit component in Intent"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private final scheduleServiceRestartLocked(Lcom/android/server/am/ServiceRecord;Z)Z
    .locals 22
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;
    .param p2, "allowCancel"    # Z

    .line 3429
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    iget-object v0, v6, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->isShuttingDown()Z

    move-result v0

    const-string v1, "ActivityManager"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 3430
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not scheduling restart of crashed service "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v7, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " - system is shutting down"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3432
    return v2

    .line 3435
    :cond_0
    iget v0, v7, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-direct {v6, v0}, Lcom/android/server/am/ActiveServices;->getServiceMapLocked(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v8

    .line 3436
    .local v8, "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    iget-object v0, v8, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    iget-object v3, v7, Lcom/android/server/am/ServiceRecord;->instanceName:Landroid/content/ComponentName;

    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, v7, :cond_1

    .line 3437
    iget-object v0, v8, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    iget-object v3, v7, Lcom/android/server/am/ServiceRecord;->instanceName:Landroid/content/ComponentName;

    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ServiceRecord;

    .line 3438
    .local v0, "cur":Lcom/android/server/am/ServiceRecord;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempting to schedule restart of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " when found in map: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3440
    return v2

    .line 3443
    .end local v0    # "cur":Lcom/android/server/am/ServiceRecord;
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 3446
    .local v9, "now":J
    iget-object v0, v7, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_15

    .line 3448
    iget-object v0, v6, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v12, v0, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_RESTART_DURATION:J

    .line 3449
    .local v12, "minDuration":J
    iget-object v0, v6, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v14, v0, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_RESET_RUN_DURATION:J

    .line 3450
    .local v14, "resetTime":J
    const/4 v0, 0x0

    .line 3454
    .local v0, "canceled":Z
    iget-object v5, v7, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 3455
    .local v5, "N":I
    if-lez v5, :cond_8

    .line 3456
    add-int/lit8 v16, v5, -0x1

    move/from16 v3, v16

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_7

    .line 3457
    iget-object v4, v7, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ServiceRecord$StartItem;

    .line 3458
    .local v4, "si":Lcom/android/server/am/ServiceRecord$StartItem;
    invoke-virtual {v4}, Lcom/android/server/am/ServiceRecord$StartItem;->removeUriPermissionsLocked()V

    .line 3459
    iget-object v11, v4, Lcom/android/server/am/ServiceRecord$StartItem;->intent:Landroid/content/Intent;

    if-nez v11, :cond_2

    move-object v2, v1

    goto :goto_2

    .line 3461
    :cond_2
    if-eqz p2, :cond_4

    iget v11, v4, Lcom/android/server/am/ServiceRecord$StartItem;->deliveryCount:I

    const/4 v2, 0x3

    if-ge v11, v2, :cond_3

    iget v2, v4, Lcom/android/server/am/ServiceRecord$StartItem;->doneExecutingCount:I

    const/4 v11, 0x6

    if-ge v2, v11, :cond_3

    goto :goto_1

    .line 3469
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Canceling start item "

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v4, Lcom/android/server/am/ServiceRecord$StartItem;->intent:Landroid/content/Intent;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, " in service "

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v7, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3471
    const/4 v0, 0x1

    move-object v2, v1

    goto :goto_2

    .line 3463
    :cond_4
    :goto_1
    iget-object v2, v7, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    const/4 v11, 0x0

    invoke-virtual {v2, v11, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 3464
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v18

    move v11, v0

    move-object v2, v1

    .end local v0    # "canceled":Z
    .local v11, "canceled":Z
    iget-wide v0, v4, Lcom/android/server/am/ServiceRecord$StartItem;->deliveredTime:J

    sub-long v18, v18, v0

    .line 3465
    .local v18, "dur":J
    const-wide/16 v0, 0x2

    mul-long v18, v18, v0

    .line 3466
    cmp-long v0, v12, v18

    if-gez v0, :cond_5

    move-wide/from16 v0, v18

    move-wide v12, v0

    .line 3467
    :cond_5
    cmp-long v0, v14, v18

    if-gez v0, :cond_6

    move-wide/from16 v0, v18

    move-wide v14, v0

    .line 3468
    .end local v18    # "dur":J
    :cond_6
    move v0, v11

    .line 3456
    .end local v4    # "si":Lcom/android/server/am/ServiceRecord$StartItem;
    .end local v11    # "canceled":Z
    .restart local v0    # "canceled":Z
    :goto_2
    add-int/lit8 v3, v3, -0x1

    move-object v1, v2

    const/4 v2, 0x0

    goto :goto_0

    :cond_7
    move v11, v0

    .line 3474
    .end local v0    # "canceled":Z
    .end local v3    # "i":I
    .restart local v11    # "canceled":Z
    iget-object v0, v7, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    move v0, v11

    .line 3477
    .end local v11    # "canceled":Z
    .restart local v0    # "canceled":Z
    :cond_8
    if-eqz p2, :cond_b

    .line 3478
    invoke-virtual {v7, v0}, Lcom/android/server/am/ServiceRecord;->canStopIfKilled(Z)Z

    move-result v1

    .line 3479
    .local v1, "shouldStop":Z
    if-eqz v1, :cond_9

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ServiceRecord;->hasAutoCreateConnections()Z

    move-result v2

    if-nez v2, :cond_9

    .line 3481
    const/4 v2, 0x0

    return v2

    .line 3483
    :cond_9
    iget-boolean v2, v7, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    if-eqz v2, :cond_a

    if-nez v1, :cond_a

    const-string/jumbo v2, "start-requested"

    goto :goto_3

    :cond_a
    const-string v2, "connection"

    :goto_3
    move-object v1, v2

    .line 3484
    .local v1, "reason":Ljava/lang/String;
    goto :goto_4

    .line 3485
    .end local v1    # "reason":Ljava/lang/String;
    :cond_b
    const-string v1, "always"

    .line 3488
    .restart local v1    # "reason":Ljava/lang/String;
    :goto_4
    iget v2, v7, Lcom/android/server/am/ServiceRecord;->totalRestartCount:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, v7, Lcom/android/server/am/ServiceRecord;->totalRestartCount:I

    .line 3489
    iget-wide v3, v7, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    const-wide/16 v16, 0x0

    cmp-long v2, v3, v16

    if-nez v2, :cond_c

    .line 3490
    iget v2, v7, Lcom/android/server/am/ServiceRecord;->restartCount:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, v7, Lcom/android/server/am/ServiceRecord;->restartCount:I

    .line 3491
    iput-wide v12, v7, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    move/from16 v16, v0

    move-object v11, v1

    goto :goto_5

    .line 3492
    :cond_c
    const/4 v3, 0x1

    iget v2, v7, Lcom/android/server/am/ServiceRecord;->crashCount:I

    if-le v2, v3, :cond_d

    .line 3493
    iget-object v2, v6, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    move v4, v0

    move-object v11, v1

    .end local v0    # "canceled":Z
    .end local v1    # "reason":Ljava/lang/String;
    .local v4, "canceled":Z
    .local v11, "reason":Ljava/lang/String;
    iget-wide v0, v2, Lcom/android/server/am/ActivityManagerConstants;->BOUND_SERVICE_CRASH_RESTART_DURATION:J

    iget v2, v7, Lcom/android/server/am/ServiceRecord;->crashCount:I

    sub-int/2addr v2, v3

    move/from16 v16, v4

    .end local v4    # "canceled":Z
    .local v16, "canceled":Z
    int-to-long v3, v2

    mul-long/2addr v0, v3

    iput-wide v0, v7, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    goto :goto_5

    .line 3501
    .end local v11    # "reason":Ljava/lang/String;
    .end local v16    # "canceled":Z
    .restart local v0    # "canceled":Z
    .restart local v1    # "reason":Ljava/lang/String;
    :cond_d
    move/from16 v16, v0

    move-object v11, v1

    .end local v0    # "canceled":Z
    .end local v1    # "reason":Ljava/lang/String;
    .restart local v11    # "reason":Ljava/lang/String;
    .restart local v16    # "canceled":Z
    iget-wide v0, v7, Lcom/android/server/am/ServiceRecord;->restartTime:J

    add-long/2addr v0, v14

    cmp-long v0, v9, v0

    if-lez v0, :cond_e

    .line 3502
    const/4 v0, 0x1

    iput v0, v7, Lcom/android/server/am/ServiceRecord;->restartCount:I

    .line 3503
    iput-wide v12, v7, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    goto :goto_5

    .line 3505
    :cond_e
    iget-wide v0, v7, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    iget-object v2, v6, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget v2, v2, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_RESTART_DURATION_FACTOR:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    iput-wide v0, v7, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    .line 3506
    iget-wide v0, v7, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    cmp-long v0, v0, v12

    if-gez v0, :cond_f

    .line 3507
    iput-wide v12, v7, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    .line 3512
    :cond_f
    :goto_5
    iget-object v0, v7, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v0}, Lcom/android/server/am/ActiveServices;->isServiceRestartBackoffEnabledLocked(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 3513
    iget-wide v0, v7, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    add-long/2addr v0, v9

    iput-wide v0, v7, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    .line 3518
    iget-object v0, v6, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v0, v0, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_MIN_RESTART_TIME_BETWEEN:J

    .line 3520
    .local v0, "restartTimeBetween":J
    :goto_6
    const/4 v2, 0x0

    .line 3521
    .local v2, "repeat":Z
    iget-object v3, v6, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    .restart local v3    # "i":I
    :goto_7
    if-ltz v3, :cond_12

    .line 3522
    iget-object v4, v6, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ServiceRecord;

    .line 3523
    .local v4, "r2":Lcom/android/server/am/ServiceRecord;
    if-eq v4, v7, :cond_10

    move-wide/from16 v18, v12

    move-object v13, v11

    .end local v11    # "reason":Ljava/lang/String;
    .end local v12    # "minDuration":J
    .local v13, "reason":Ljava/lang/String;
    .local v18, "minDuration":J
    iget-wide v11, v7, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    move-wide/from16 v20, v14

    move-object v15, v13

    .end local v13    # "reason":Ljava/lang/String;
    .end local v14    # "resetTime":J
    .local v15, "reason":Ljava/lang/String;
    .local v20, "resetTime":J
    iget-wide v13, v4, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    sub-long/2addr v13, v0

    cmp-long v11, v11, v13

    if-ltz v11, :cond_11

    iget-wide v11, v7, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    iget-wide v13, v4, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    add-long/2addr v13, v0

    cmp-long v11, v11, v13

    if-gez v11, :cond_11

    .line 3526
    iget-wide v11, v4, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    add-long/2addr v11, v0

    iput-wide v11, v7, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    .line 3527
    iget-wide v11, v7, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    sub-long/2addr v11, v9

    iput-wide v11, v7, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    .line 3528
    const/4 v2, 0x1

    .line 3529
    goto :goto_8

    .line 3523
    .end local v15    # "reason":Ljava/lang/String;
    .end local v18    # "minDuration":J
    .end local v20    # "resetTime":J
    .restart local v11    # "reason":Ljava/lang/String;
    .restart local v12    # "minDuration":J
    .restart local v14    # "resetTime":J
    :cond_10
    move-wide/from16 v18, v12

    move-wide/from16 v20, v14

    move-object v15, v11

    .line 3521
    .end local v4    # "r2":Lcom/android/server/am/ServiceRecord;
    .end local v11    # "reason":Ljava/lang/String;
    .end local v12    # "minDuration":J
    .end local v14    # "resetTime":J
    .restart local v15    # "reason":Ljava/lang/String;
    .restart local v18    # "minDuration":J
    .restart local v20    # "resetTime":J
    :cond_11
    add-int/lit8 v3, v3, -0x1

    move-object v11, v15

    move-wide/from16 v12, v18

    move-wide/from16 v14, v20

    goto :goto_7

    .end local v15    # "reason":Ljava/lang/String;
    .end local v18    # "minDuration":J
    .end local v20    # "resetTime":J
    .restart local v11    # "reason":Ljava/lang/String;
    .restart local v12    # "minDuration":J
    .restart local v14    # "resetTime":J
    :cond_12
    move-wide/from16 v18, v12

    move-wide/from16 v20, v14

    move-object v15, v11

    .line 3532
    .end local v3    # "i":I
    .end local v11    # "reason":Ljava/lang/String;
    .end local v12    # "minDuration":J
    .end local v14    # "resetTime":J
    .restart local v15    # "reason":Ljava/lang/String;
    .restart local v18    # "minDuration":J
    .restart local v20    # "resetTime":J
    :goto_8
    if-nez v2, :cond_13

    .line 3533
    .end local v0    # "restartTimeBetween":J
    .end local v2    # "repeat":Z
    goto :goto_9

    .line 3532
    .restart local v0    # "restartTimeBetween":J
    .restart local v2    # "repeat":Z
    :cond_13
    move-object v11, v15

    move-wide/from16 v12, v18

    move-wide/from16 v14, v20

    goto :goto_6

    .line 3535
    .end local v0    # "restartTimeBetween":J
    .end local v2    # "repeat":Z
    .end local v15    # "reason":Ljava/lang/String;
    .end local v18    # "minDuration":J
    .end local v20    # "resetTime":J
    .restart local v11    # "reason":Ljava/lang/String;
    .restart local v12    # "minDuration":J
    .restart local v14    # "resetTime":J
    :cond_14
    move-wide/from16 v18, v12

    move-wide/from16 v20, v14

    move-object v15, v11

    .end local v11    # "reason":Ljava/lang/String;
    .end local v12    # "minDuration":J
    .end local v14    # "resetTime":J
    .restart local v15    # "reason":Ljava/lang/String;
    .restart local v18    # "minDuration":J
    .restart local v20    # "resetTime":J
    iget-object v0, v6, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v0, v0, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_RESTART_DURATION:J

    iput-wide v0, v7, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    .line 3536
    iget-wide v0, v7, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    add-long/2addr v0, v9

    iput-wide v0, v7, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    .line 3539
    .end local v5    # "N":I
    .end local v16    # "canceled":Z
    .end local v18    # "minDuration":J
    .end local v20    # "resetTime":J
    :goto_9
    goto :goto_a

    .line 3542
    .end local v15    # "reason":Ljava/lang/String;
    :cond_15
    iget v0, v7, Lcom/android/server/am/ServiceRecord;->totalRestartCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, v7, Lcom/android/server/am/ServiceRecord;->totalRestartCount:I

    .line 3543
    const/4 v0, 0x0

    iput v0, v7, Lcom/android/server/am/ServiceRecord;->restartCount:I

    .line 3544
    const-wide/16 v0, 0x0

    iput-wide v0, v7, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    .line 3545
    iput-wide v9, v7, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    .line 3546
    const-string/jumbo v1, "persistent"

    move-object v15, v1

    .line 3549
    .restart local v15    # "reason":Ljava/lang/String;
    :goto_a
    iget-object v0, v6, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 3550
    const/4 v0, 0x0

    iput-boolean v0, v7, Lcom/android/server/am/ServiceRecord;->createdFromFg:Z

    .line 3551
    iget-object v0, v6, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3552
    iget-object v0, v6, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v0

    invoke-virtual {v7, v0, v9, v10}, Lcom/android/server/am/ServiceRecord;->makeRestarting(IJ)V

    .line 3555
    :cond_16
    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/ActiveServices;->cancelForegroundNotificationLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 3557
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const-string v2, "Scheduling"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v3, v15

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActiveServices;->performScheduleRestartLocked(Lcom/android/server/am/ServiceRecord;Ljava/lang/String;Ljava/lang/String;J)V

    .line 3559
    const/4 v0, 0x1

    return v0
.end method

.method private final sendServiceArgsLocked(Lcom/android/server/am/ServiceRecord;ZZ)V
    .locals 12
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;
    .param p2, "execInFg"    # Z
    .param p3, "oomAdjusted"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/TransactionTooLargeException;
        }
    .end annotation

    .line 3968
    const-string v0, "Failed delivering service starts"

    const-string v1, "ActivityManager"

    iget-object v2, p1, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 3969
    .local v2, "N":I
    if-nez v2, :cond_0

    .line 3970
    return-void

    .line 3973
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 3975
    .local v3, "args":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ServiceStartArgs;>;"
    :goto_0
    iget-object v4, p1, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-lez v4, :cond_8

    .line 3976
    iget-object v4, p1, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ServiceRecord$StartItem;

    .line 3981
    .local v4, "si":Lcom/android/server/am/ServiceRecord$StartItem;
    iget-object v7, v4, Lcom/android/server/am/ServiceRecord$StartItem;->intent:Landroid/content/Intent;

    if-nez v7, :cond_1

    if-le v2, v5, :cond_1

    .line 3986
    goto :goto_0

    .line 3988
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    iput-wide v7, v4, Lcom/android/server/am/ServiceRecord$StartItem;->deliveredTime:J

    .line 3989
    iget-object v7, p1, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3990
    iget v7, v4, Lcom/android/server/am/ServiceRecord$StartItem;->deliveryCount:I

    add-int/2addr v7, v5

    iput v7, v4, Lcom/android/server/am/ServiceRecord$StartItem;->deliveryCount:I

    .line 3991
    iget-object v7, v4, Lcom/android/server/am/ServiceRecord$StartItem;->neededGrants:Lcom/android/server/uri/NeededUriGrants;

    if-eqz v7, :cond_2

    .line 3992
    iget-object v7, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    iget-object v8, v4, Lcom/android/server/am/ServiceRecord$StartItem;->neededGrants:Lcom/android/server/uri/NeededUriGrants;

    .line 3993
    invoke-virtual {v4}, Lcom/android/server/am/ServiceRecord$StartItem;->getUriPermissionsLocked()Lcom/android/server/uri/UriPermissionOwner;

    move-result-object v9

    .line 3992
    invoke-interface {v7, v8, v9}, Lcom/android/server/uri/UriGrantsManagerInternal;->grantUriPermissionUncheckedFromIntent(Lcom/android/server/uri/NeededUriGrants;Lcom/android/server/uri/UriPermissionOwner;)V

    .line 3995
    :cond_2
    iget-object v7, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget v8, p1, Lcom/android/server/am/ServiceRecord;->userId:I

    iget-object v9, v4, Lcom/android/server/am/ServiceRecord$StartItem;->intent:Landroid/content/Intent;

    iget v10, v4, Lcom/android/server/am/ServiceRecord$StartItem;->callingId:I

    iget-object v11, p1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v11, v11, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 3996
    invoke-static {v11}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v11

    .line 3995
    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/android/server/am/ActivityManagerService;->grantImplicitAccess(ILandroid/content/Intent;II)V

    .line 3998
    const-string/jumbo v7, "start"

    invoke-direct {p0, p1, p2, v7}, Lcom/android/server/am/ActiveServices;->bumpServiceExecutingLocked(Lcom/android/server/am/ServiceRecord;ZLjava/lang/String;)V

    .line 3999
    if-nez p3, :cond_3

    .line 4000
    const/4 p3, 0x1

    .line 4001
    iget-object v7, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    const-string/jumbo v9, "updateOomAdj_startService"

    invoke-virtual {v7, v8, v9}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)Z

    .line 4003
    :cond_3
    iget-boolean v7, p1, Lcom/android/server/am/ServiceRecord;->fgRequired:Z

    if-eqz v7, :cond_5

    iget-boolean v7, p1, Lcom/android/server/am/ServiceRecord;->fgWaiting:Z

    if-nez v7, :cond_5

    .line 4004
    iget-boolean v7, p1, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    if-nez v7, :cond_4

    .line 4008
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActiveServices;->scheduleServiceForegroundTransitionTimeoutLocked(Lcom/android/server/am/ServiceRecord;)V

    goto :goto_1

    .line 4013
    :cond_4
    iput-boolean v6, p1, Lcom/android/server/am/ServiceRecord;->fgRequired:Z

    .line 4016
    :cond_5
    :goto_1
    const/4 v6, 0x0

    .line 4017
    .local v6, "flags":I
    iget v7, v4, Lcom/android/server/am/ServiceRecord$StartItem;->deliveryCount:I

    if-le v7, v5, :cond_6

    .line 4018
    or-int/lit8 v6, v6, 0x2

    .line 4020
    :cond_6
    iget v5, v4, Lcom/android/server/am/ServiceRecord$StartItem;->doneExecutingCount:I

    if-lez v5, :cond_7

    .line 4021
    or-int/lit8 v6, v6, 0x1

    .line 4023
    :cond_7
    new-instance v5, Landroid/app/ServiceStartArgs;

    iget-boolean v7, v4, Lcom/android/server/am/ServiceRecord$StartItem;->taskRemoved:Z

    iget v8, v4, Lcom/android/server/am/ServiceRecord$StartItem;->id:I

    iget-object v9, v4, Lcom/android/server/am/ServiceRecord$StartItem;->intent:Landroid/content/Intent;

    invoke-direct {v5, v7, v8, v6, v9}, Landroid/app/ServiceStartArgs;-><init>(ZIILandroid/content/Intent;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4024
    .end local v4    # "si":Lcom/android/server/am/ServiceRecord$StartItem;
    .end local v6    # "flags":I
    goto/16 :goto_0

    .line 4026
    :cond_8
    new-instance v4, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v4, v3}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    .line 4027
    .local v4, "slice":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/app/ServiceStartArgs;>;"
    const/4 v6, 0x4

    invoke-virtual {v4, v6}, Landroid/content/pm/ParceledListSlice;->setInlineCountLimit(I)V

    .line 4028
    const/4 v6, 0x0

    .line 4030
    .local v6, "caughtException":Ljava/lang/Exception;
    :try_start_0
    iget-object v7, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v7}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v7

    invoke-interface {v7, p1, v4}, Landroid/app/IApplicationThread;->scheduleServiceArgs(Landroid/os/IBinder;Landroid/content/pm/ParceledListSlice;)V
    :try_end_0
    .catch Landroid/os/TransactionTooLargeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 4041
    :catch_0
    move-exception v0

    .line 4042
    .local v0, "e":Ljava/lang/Exception;
    const-string v7, "Unexpected exception"

    invoke-static {v1, v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4043
    move-object v6, v0

    goto :goto_3

    .line 4036
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v7

    .line 4039
    .local v7, "e":Landroid/os/RemoteException;
    invoke-static {v1, v0, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4040
    move-object v6, v7

    .end local v7    # "e":Landroid/os/RemoteException;
    goto :goto_2

    .line 4031
    :catch_2
    move-exception v7

    .line 4034
    .local v7, "e":Landroid/os/TransactionTooLargeException;
    invoke-static {v1, v0, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4035
    move-object v6, v7

    .line 4044
    .end local v7    # "e":Landroid/os/TransactionTooLargeException;
    :goto_2
    nop

    .line 4046
    :goto_3
    if-eqz v6, :cond_b

    .line 4048
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 4049
    .local v0, "inDestroying":Z
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    .local v7, "size":I
    :goto_4
    if-ge v1, v7, :cond_9

    .line 4050
    invoke-direct {p0, p1, v0, v0, v5}, Lcom/android/server/am/ActiveServices;->serviceDoneExecutingLocked(Lcom/android/server/am/ServiceRecord;ZZZ)V

    .line 4049
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 4053
    .end local v1    # "i":I
    .end local v7    # "size":I
    :cond_9
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v5, "updateOomAdj_unbindService"

    invoke-virtual {v1, v5}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjPendingTargetsLocked(Ljava/lang/String;)V

    .line 4054
    instance-of v1, v6, Landroid/os/TransactionTooLargeException;

    if-nez v1, :cond_a

    goto :goto_5

    .line 4055
    :cond_a
    move-object v1, v6

    check-cast v1, Landroid/os/TransactionTooLargeException;

    throw v1

    .line 4058
    .end local v0    # "inDestroying":Z
    :cond_b
    :goto_5
    return-void
.end method

.method private serviceDoneExecutingLocked(Lcom/android/server/am/ServiceRecord;ZZZ)V
    .locals 6
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;
    .param p2, "inDestroying"    # Z
    .param p3, "finishing"    # Z
    .param p4, "enqueueOomAdj"    # Z

    .line 4535
    iget v0, p1, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p1, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    .line 4536
    iget v0, p1, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    if-gtz v0, :cond_8

    .line 4537
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    .line 4538
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 4541
    .local v0, "psr":Lcom/android/server/am/ProcessServiceRecord;
    invoke-virtual {v0, v2}, Lcom/android/server/am/ProcessServiceRecord;->setExecServicesFg(Z)V

    .line 4542
    invoke-virtual {v0, p1}, Lcom/android/server/am/ProcessServiceRecord;->stopExecutingService(Lcom/android/server/am/ServiceRecord;)V

    .line 4543
    invoke-virtual {v0}, Lcom/android/server/am/ProcessServiceRecord;->numberOfExecutingServices()I

    move-result v3

    if-nez v3, :cond_0

    .line 4546
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v3, 0xc

    iget-object v4, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v1, v3, v4}, Lcom/android/server/am/ActivityManagerService$MainHandler;->removeMessages(ILjava/lang/Object;)V

    goto :goto_1

    .line 4547
    :cond_0
    iget-boolean v3, p1, Lcom/android/server/am/ServiceRecord;->executeFg:Z

    if-eqz v3, :cond_2

    .line 4549
    invoke-virtual {v0}, Lcom/android/server/am/ProcessServiceRecord;->numberOfExecutingServices()I

    move-result v3

    sub-int/2addr v3, v1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_2

    .line 4550
    invoke-virtual {v0, v3}, Lcom/android/server/am/ProcessServiceRecord;->getExecutingServiceAt(I)Lcom/android/server/am/ServiceRecord;

    move-result-object v4

    iget-boolean v4, v4, Lcom/android/server/am/ServiceRecord;->executeFg:Z

    if-eqz v4, :cond_1

    .line 4551
    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessServiceRecord;->setExecServicesFg(Z)V

    .line 4552
    goto :goto_1

    .line 4549
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 4556
    .end local v3    # "i":I
    :cond_2
    :goto_1
    if-eqz p2, :cond_3

    .line 4559
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4560
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 4562
    :cond_3
    if-eqz p4, :cond_4

    .line 4563
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v1, v3}, Lcom/android/server/am/ActivityManagerService;->enqueueOomAdjTargetLocked(Lcom/android/server/am/ProcessRecord;)V

    goto :goto_2

    .line 4565
    :cond_4
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    const-string/jumbo v4, "updateOomAdj_unbindService"

    invoke-virtual {v1, v3, v4}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)Z

    .line 4568
    .end local v0    # "psr":Lcom/android/server/am/ProcessServiceRecord;
    :cond_5
    :goto_2
    iput-boolean v2, p1, Lcom/android/server/am/ServiceRecord;->executeFg:Z

    .line 4569
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 4570
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v0

    .line 4571
    .local v0, "memFactor":I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 4572
    .local v3, "now":J
    iget-object v5, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    invoke-virtual {v5, v2, v0, v3, v4}, Lcom/android/internal/app/procstats/ServiceState;->setExecuting(ZIJ)V

    .line 4573
    iget-object v5, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    invoke-virtual {v5, v2, v0, v3, v4}, Lcom/android/internal/app/procstats/ServiceState;->setForeground(ZIJ)V

    .line 4574
    if-eqz p3, :cond_6

    .line 4575
    iget-object v5, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    invoke-virtual {v5, p1, v2}, Lcom/android/internal/app/procstats/ServiceState;->clearCurrentOwner(Ljava/lang/Object;Z)V

    .line 4576
    iput-object v1, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    .line 4579
    .end local v0    # "memFactor":I
    .end local v3    # "now":J
    :cond_6
    if-eqz p3, :cond_8

    .line 4580
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_7

    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v0

    if-nez v0, :cond_7

    .line 4581
    invoke-direct {p0, p1}, Lcom/android/server/am/ActiveServices;->stopServiceAndUpdateAllowlistManagerLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 4583
    :cond_7
    invoke-virtual {p1, v1, v1, v2, v1}, Lcom/android/server/am/ServiceRecord;->setProcess(Lcom/android/server/am/ProcessRecord;Landroid/app/IApplicationThread;ILcom/android/server/am/UidRecord;)V

    .line 4586
    :cond_8
    return-void
.end method

.method private serviceProcessGoneLocked(Lcom/android/server/am/ServiceRecord;Z)V
    .locals 5
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;
    .param p2, "enqueueOomAdj"    # Z

    .line 4517
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    if-eqz v0, :cond_0

    .line 4518
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v0

    .line 4519
    .local v0, "memFactor":I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 4520
    .local v1, "now":J
    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v0, v1, v2}, Lcom/android/internal/app/procstats/ServiceState;->setExecuting(ZIJ)V

    .line 4521
    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    invoke-virtual {v3, v4, v0, v1, v2}, Lcom/android/internal/app/procstats/ServiceState;->setForeground(ZIJ)V

    .line 4522
    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    invoke-virtual {v3, v4, v0, v1, v2}, Lcom/android/internal/app/procstats/ServiceState;->setBound(ZIJ)V

    .line 4523
    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    invoke-virtual {v3, v4, v0, v1, v2}, Lcom/android/internal/app/procstats/ServiceState;->setStarted(ZIJ)V

    .line 4525
    .end local v0    # "memFactor":I
    .end local v1    # "now":J
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, v0, p2}, Lcom/android/server/am/ActiveServices;->serviceDoneExecutingLocked(Lcom/android/server/am/ServiceRecord;ZZZ)V

    .line 4526
    return-void
.end method

.method private setAllowListWhileInUsePermissionInFgs()V
    .locals 3

    .line 528
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 529
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getAttentionServicePackageName()Ljava/lang/String;

    move-result-object v0

    .line 530
    .local v0, "attentionServicePackageName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 531
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mAllowListWhileInUsePermissionInFgs:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 533
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 534
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager;->getSystemCaptionsServicePackageName()Ljava/lang/String;

    move-result-object v1

    .line 535
    .local v1, "systemCaptionsServicePackageName":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 536
    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mAllowListWhileInUsePermissionInFgs:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 538
    :cond_1
    return-void
.end method

.method private setFgsRestrictionLocked(Ljava/lang/String;IILandroid/content/Intent;Lcom/android/server/am/ServiceRecord;IZ)V
    .locals 11
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "callingPid"    # I
    .param p3, "callingUid"    # I
    .param p4, "intent"    # Landroid/content/Intent;
    .param p5, "r"    # Lcom/android/server/am/ServiceRecord;
    .param p6, "userId"    # I
    .param p7, "allowBackgroundActivityStarts"    # Z

    .line 5806
    move-object/from16 v8, p5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, v8, Lcom/android/server/am/ServiceRecord;->mLastSetFgsRestrictionTime:J

    .line 5808
    move-object v9, p0

    iget-object v0, v9, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerConstants;->mFlagBackgroundFgsStartRestrictionEnabled:Z

    const/4 v6, 0x1

    if-nez v0, :cond_0

    .line 5809
    iput-boolean v6, v8, Lcom/android/server/am/ServiceRecord;->mAllowWhileInUsePermissionInFgs:Z

    .line 5812
    :cond_0
    iget-boolean v0, v8, Lcom/android/server/am/ServiceRecord;->mAllowWhileInUsePermissionInFgs:Z

    const/4 v7, -0x1

    if-eqz v0, :cond_1

    iget v0, v8, Lcom/android/server/am/ServiceRecord;->mAllowStartForeground:I

    if-ne v0, v7, :cond_4

    .line 5814
    :cond_1
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object/from16 v4, p5

    move/from16 v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/ActiveServices;->shouldAllowFgsWhileInUsePermissionLocked(Ljava/lang/String;IILcom/android/server/am/ServiceRecord;Z)I

    move-result v10

    .line 5816
    .local v10, "allowWhileInUse":I
    iget-boolean v0, v8, Lcom/android/server/am/ServiceRecord;->mAllowWhileInUsePermissionInFgs:Z

    if-nez v0, :cond_3

    .line 5817
    if-eq v10, v7, :cond_2

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    :goto_0
    iput-boolean v6, v8, Lcom/android/server/am/ServiceRecord;->mAllowWhileInUsePermissionInFgs:Z

    .line 5819
    :cond_3
    iget v0, v8, Lcom/android/server/am/ServiceRecord;->mAllowStartForeground:I

    if-ne v0, v7, :cond_4

    .line 5820
    move-object v0, p0

    move v1, v10

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/server/am/ActiveServices;->shouldAllowFgsStartForegroundLocked(ILjava/lang/String;IILandroid/content/Intent;Lcom/android/server/am/ServiceRecord;I)I

    move-result v0

    iput v0, v8, Lcom/android/server/am/ServiceRecord;->mAllowStartForeground:I

    .line 5825
    .end local v10    # "allowWhileInUse":I
    :cond_4
    return-void
.end method

.method private setServiceForegroundInnerLocked(Lcom/android/server/am/ServiceRecord;ILandroid/app/Notification;II)V
    .locals 36
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;
    .param p2, "id"    # I
    .param p3, "notification"    # Landroid/app/Notification;
    .param p4, "flags"    # I
    .param p5, "foregroundServiceType"    # I

    .line 1668
    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move/from16 v11, p2

    move-object/from16 v12, p3

    const/4 v13, 0x1

    const/4 v14, 0x0

    if-eqz v11, :cond_1e

    .line 1669
    if-eqz v12, :cond_1d

    .line 1673
    iget-object v1, v10, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result v1

    const-string/jumbo v2, "startForeground"

    const/4 v15, -0x1

    const-string v8, "ActivityManager"

    if-eqz v1, :cond_0

    .line 1674
    iget-object v1, v9, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->getAppOpsManager()Landroid/app/AppOpsManager;

    move-result-object v1

    const/16 v3, 0x44

    iget-object v4, v10, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v5, v10, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3, v4, v5}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v1

    .line 1678
    .local v1, "mode":I
    const-string v3, "Instant app "

    packed-switch v1, :pswitch_data_0

    .line 1690
    iget-object v3, v9, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v10, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 1692
    invoke-virtual {v4}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v4

    iget-object v5, v10, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1690
    const-string v6, "android.permission.INSTANT_APP_FOREGROUND_SERVICE"

    invoke-virtual {v3, v6, v4, v5, v2}, Lcom/android/server/am/ActivityManagerService;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_0

    .line 1687
    :pswitch_0
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v10, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " does not have permission to create foreground services"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1682
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v10, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " does not have permission to create foreground services, ignoring."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1685
    return-void

    .line 1680
    :pswitch_2
    nop

    .line 1694
    .end local v1    # "mode":I
    :goto_0
    move/from16 v7, p5

    goto :goto_1

    .line 1695
    :cond_0
    iget-object v1, v10, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0x1c

    if-lt v1, v3, :cond_1

    .line 1696
    iget-object v1, v9, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v10, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 1698
    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v3

    iget-object v4, v10, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1696
    const-string v5, "android.permission.FOREGROUND_SERVICE"

    invoke-virtual {v1, v5, v3, v4, v2}, Lcom/android/server/am/ActivityManagerService;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 1701
    :cond_1
    iget-object v1, v10, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-virtual {v1}, Landroid/content/pm/ServiceInfo;->getForegroundServiceType()I

    move-result v1

    .line 1704
    .local v1, "manifestType":I
    move/from16 v2, p5

    if-ne v2, v15, :cond_2

    .line 1705
    move v2, v1

    .line 1709
    .end local p5    # "foregroundServiceType":I
    .local v2, "foregroundServiceType":I
    :cond_2
    and-int v3, v2, v1

    if-ne v3, v2, :cond_1c

    move v7, v2

    .line 1718
    .end local v1    # "manifestType":I
    .end local v2    # "foregroundServiceType":I
    .local v7, "foregroundServiceType":I
    :goto_1
    const/4 v1, 0x0

    .line 1719
    .local v1, "alreadyStartedOp":Z
    const/4 v2, 0x0

    .line 1720
    .local v2, "stopProcStatsOp":Z
    iget-boolean v3, v10, Lcom/android/server/am/ServiceRecord;->fgRequired:Z

    if-eqz v3, :cond_3

    .line 1724
    iput-boolean v14, v10, Lcom/android/server/am/ServiceRecord;->fgRequired:Z

    .line 1725
    iput-boolean v14, v10, Lcom/android/server/am/ServiceRecord;->fgWaiting:Z

    .line 1726
    move v2, v13

    move v1, v13

    .line 1727
    iget-object v3, v9, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v4, 0x42

    invoke-virtual {v3, v4, v10}, Lcom/android/server/am/ActivityManagerService$MainHandler;->removeMessages(ILjava/lang/Object;)V

    move/from16 v16, v1

    move/from16 v17, v2

    goto :goto_2

    .line 1720
    :cond_3
    move/from16 v16, v1

    move/from16 v17, v2

    .line 1731
    .end local v1    # "alreadyStartedOp":Z
    .end local v2    # "stopProcStatsOp":Z
    .local v16, "alreadyStartedOp":Z
    .local v17, "stopProcStatsOp":Z
    :goto_2
    iget-object v1, v10, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v6, v1, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 1733
    .local v6, "psr":Lcom/android/server/am/ProcessServiceRecord;
    const/4 v1, 0x0

    .line 1734
    .local v1, "ignoreForeground":Z
    :try_start_0
    iget-object v2, v9, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->getAppOpsManager()Landroid/app/AppOpsManager;

    move-result-object v2

    const/16 v3, 0x4c

    iget-object v4, v10, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v5, v10, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_8

    move/from16 v18, v2

    .line 1736
    .local v18, "mode":I
    packed-switch v18, :pswitch_data_1

    .line 1748
    :pswitch_3
    move-object v2, v6

    move v3, v7

    .end local v6    # "psr":Lcom/android/server/am/ProcessServiceRecord;
    .end local v7    # "foregroundServiceType":I
    .local v2, "psr":Lcom/android/server/am/ProcessServiceRecord;
    .local v3, "foregroundServiceType":I
    :try_start_1
    new-instance v0, Ljava/lang/SecurityException;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_7

    goto/16 :goto_d

    .line 1743
    .end local v2    # "psr":Lcom/android/server/am/ProcessServiceRecord;
    .end local v3    # "foregroundServiceType":I
    .restart local v6    # "psr":Lcom/android/server/am/ProcessServiceRecord;
    .restart local v7    # "foregroundServiceType":I
    :pswitch_4
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Service.startForeground() not allowed due to app op: service "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v10, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1745
    const/4 v1, 0x1

    .line 1746
    goto :goto_3

    .line 1913
    .end local v1    # "ignoreForeground":Z
    .end local v18    # "mode":I
    :catchall_0
    move-exception v0

    move-object v2, v6

    move v3, v7

    goto/16 :goto_e

    .line 1740
    .restart local v1    # "ignoreForeground":Z
    .restart local v18    # "mode":I
    :pswitch_5
    nop

    .line 1753
    :goto_3
    if-nez v1, :cond_4

    iget-object v2, v10, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1754
    invoke-direct {v9, v2}, Lcom/android/server/am/ActiveServices;->appIsTopLocked(I)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, v10, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v3, v10, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    .line 1755
    invoke-direct {v9, v2, v3}, Lcom/android/server/am/ActiveServices;->appRestrictedAnyInBackground(ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1756
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Service.startForeground() not allowed due to bg restriction: service "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v10, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1761
    invoke-direct {v9, v6, v14}, Lcom/android/server/am/ActiveServices;->updateServiceForegroundLocked(Lcom/android/server/am/ProcessServiceRecord;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1762
    const/4 v1, 0x1

    move/from16 v19, v1

    goto :goto_4

    .line 1765
    :cond_4
    move/from16 v19, v1

    .end local v1    # "ignoreForeground":Z
    .local v19, "ignoreForeground":Z
    :goto_4
    if-nez v19, :cond_d

    .line 1766
    :try_start_3
    iget v1, v10, Lcom/android/server/am/ServiceRecord;->mStartForegroundCount:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    if-nez v1, :cond_8

    .line 1780
    :try_start_4
    iget-boolean v1, v10, Lcom/android/server/am/ServiceRecord;->fgRequired:Z

    if-nez v1, :cond_7

    .line 1781
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, v10, Lcom/android/server/am/ServiceRecord;->createRealTime:J

    sub-long v4, v1, v3

    .line 1782
    .local v4, "delayMs":J
    iget-object v1, v9, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v1, v1, Lcom/android/server/am/ActivityManagerConstants;->mFgsStartForegroundTimeoutMs:J

    cmp-long v1, v4, v1

    if-lez v1, :cond_6

    .line 1783
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/ActiveServices;->resetFgsRestrictionLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 1784
    iget-object v1, v10, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v1, v10, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v3

    iget-object v1, v10, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v0, v10, Lcom/android/server/am/ServiceRecord;->intent:Landroid/content/Intent$FilterComparison;

    .line 1785
    invoke-virtual {v0}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iget v15, v10, Lcom/android/server/am/ServiceRecord;->userId:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const/16 v22, 0x0

    .line 1784
    move/from16 v23, v1

    move-object/from16 v1, p0

    move-wide v13, v4

    .end local v4    # "delayMs":J
    .local v13, "delayMs":J
    move/from16 v4, v23

    move-object v5, v0

    move-object/from16 v24, v6

    .end local v6    # "psr":Lcom/android/server/am/ProcessServiceRecord;
    .local v24, "psr":Lcom/android/server/am/ProcessServiceRecord;
    move-object/from16 v6, p1

    move/from16 v25, v7

    .end local v7    # "foregroundServiceType":I
    .local v25, "foregroundServiceType":I
    move v7, v15

    move-object v0, v8

    move/from16 v8, v22

    :try_start_5
    invoke-direct/range {v1 .. v8}, Lcom/android/server/am/ActiveServices;->setFgsRestrictionLocked(Ljava/lang/String;IILandroid/content/Intent;Lcom/android/server/am/ServiceRecord;IZ)V

    .line 1786
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startForegroundDelayMs:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1787
    .local v1, "temp":Ljava/lang/String;
    iget-object v2, v10, Lcom/android/server/am/ServiceRecord;->mInfoAllowStartForeground:Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 1788
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v10, Lcom/android/server/am/ServiceRecord;->mInfoAllowStartForeground:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "; "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v10, Lcom/android/server/am/ServiceRecord;->mInfoAllowStartForeground:Ljava/lang/String;

    goto :goto_5

    .line 1790
    :cond_5
    iput-object v1, v10, Lcom/android/server/am/ServiceRecord;->mInfoAllowStartForeground:Ljava/lang/String;

    .line 1792
    :goto_5
    const/4 v2, 0x0

    iput-boolean v2, v10, Lcom/android/server/am/ServiceRecord;->mLoggedInfoAllowStartForeground:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_6

    .line 1782
    .end local v1    # "temp":Ljava/lang/String;
    .end local v13    # "delayMs":J
    .end local v24    # "psr":Lcom/android/server/am/ProcessServiceRecord;
    .end local v25    # "foregroundServiceType":I
    .restart local v4    # "delayMs":J
    .restart local v6    # "psr":Lcom/android/server/am/ProcessServiceRecord;
    .restart local v7    # "foregroundServiceType":I
    :cond_6
    move-wide v13, v4

    move-object/from16 v24, v6

    move/from16 v25, v7

    move-object v0, v8

    .line 1794
    .end local v4    # "delayMs":J
    .end local v6    # "psr":Lcom/android/server/am/ProcessServiceRecord;
    .end local v7    # "foregroundServiceType":I
    .restart local v24    # "psr":Lcom/android/server/am/ProcessServiceRecord;
    .restart local v25    # "foregroundServiceType":I
    :goto_6
    goto :goto_7

    .line 1780
    .end local v24    # "psr":Lcom/android/server/am/ProcessServiceRecord;
    .end local v25    # "foregroundServiceType":I
    .restart local v6    # "psr":Lcom/android/server/am/ProcessServiceRecord;
    .restart local v7    # "foregroundServiceType":I
    :cond_7
    move-object/from16 v24, v6

    move/from16 v25, v7

    move-object v0, v8

    .end local v6    # "psr":Lcom/android/server/am/ProcessServiceRecord;
    .end local v7    # "foregroundServiceType":I
    .restart local v24    # "psr":Lcom/android/server/am/ProcessServiceRecord;
    .restart local v25    # "foregroundServiceType":I
    goto :goto_7

    .line 1913
    .end local v18    # "mode":I
    .end local v19    # "ignoreForeground":Z
    .end local v24    # "psr":Lcom/android/server/am/ProcessServiceRecord;
    .end local v25    # "foregroundServiceType":I
    .restart local v6    # "psr":Lcom/android/server/am/ProcessServiceRecord;
    .restart local v7    # "foregroundServiceType":I
    :catchall_1
    move-exception v0

    move-object v2, v6

    move v3, v7

    .end local v6    # "psr":Lcom/android/server/am/ProcessServiceRecord;
    .end local v7    # "foregroundServiceType":I
    .restart local v24    # "psr":Lcom/android/server/am/ProcessServiceRecord;
    .restart local v25    # "foregroundServiceType":I
    goto/16 :goto_e

    .line 1795
    .end local v24    # "psr":Lcom/android/server/am/ProcessServiceRecord;
    .end local v25    # "foregroundServiceType":I
    .restart local v6    # "psr":Lcom/android/server/am/ProcessServiceRecord;
    .restart local v7    # "foregroundServiceType":I
    .restart local v18    # "mode":I
    .restart local v19    # "ignoreForeground":Z
    :cond_8
    move-object/from16 v24, v6

    move/from16 v25, v7

    move-object v0, v8

    .end local v6    # "psr":Lcom/android/server/am/ProcessServiceRecord;
    .end local v7    # "foregroundServiceType":I
    .restart local v24    # "psr":Lcom/android/server/am/ProcessServiceRecord;
    .restart local v25    # "foregroundServiceType":I
    :try_start_6
    iget v1, v10, Lcom/android/server/am/ServiceRecord;->mStartForegroundCount:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    const/4 v2, 0x1

    if-lt v1, v2, :cond_9

    .line 1798
    :try_start_7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, v10, Lcom/android/server/am/ServiceRecord;->mLastSetFgsRestrictionTime:J

    sub-long v13, v1, v3

    .line 1800
    .restart local v13    # "delayMs":J
    iget-object v1, v9, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v1, v1, Lcom/android/server/am/ActivityManagerConstants;->mFgsStartForegroundTimeoutMs:J

    cmp-long v1, v13, v1

    if-lez v1, :cond_9

    .line 1801
    iget-object v1, v10, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v1, v10, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v3

    iget-object v1, v10, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v1, v10, Lcom/android/server/am/ServiceRecord;->intent:Landroid/content/Intent$FilterComparison;

    .line 1802
    invoke-virtual {v1}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    move-result-object v5

    iget v7, v10, Lcom/android/server/am/ServiceRecord;->userId:I

    const/4 v8, 0x0

    .line 1801
    move-object/from16 v1, p0

    move-object/from16 v6, p1

    invoke-direct/range {v1 .. v8}, Lcom/android/server/am/ActiveServices;->setFgsRestrictionLocked(Ljava/lang/String;IILandroid/content/Intent;Lcom/android/server/am/ServiceRecord;IZ)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_7

    .line 1913
    .end local v13    # "delayMs":J
    .end local v18    # "mode":I
    .end local v19    # "ignoreForeground":Z
    :catchall_2
    move-exception v0

    move-object/from16 v2, v24

    move/from16 v3, v25

    goto/16 :goto_e

    .line 1807
    .restart local v18    # "mode":I
    .restart local v19    # "ignoreForeground":Z
    :cond_9
    :goto_7
    :try_start_8
    iget-boolean v1, v10, Lcom/android/server/am/ServiceRecord;->mAllowWhileInUsePermissionInFgs:Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    if-nez v1, :cond_a

    .line 1808
    :try_start_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Foreground service started from background can not have location/camera/microphone access: service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v10, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 1813
    :cond_a
    :try_start_a
    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/ActiveServices;->logFgsBackgroundStart(Lcom/android/server/am/ServiceRecord;)V

    .line 1814
    iget v1, v10, Lcom/android/server/am/ServiceRecord;->mAllowStartForeground:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_c

    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/ActiveServices;->isBgFgsRestrictionEnabled(Lcom/android/server/am/ServiceRecord;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1815
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Service.startForeground() not allowed due to mAllowStartForeground false: service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v10, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1818
    .local v1, "msg":Ljava/lang/String;
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1819
    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/ActiveServices;->showFgsBgRestrictedNotificationLocked(Lcom/android/server/am/ServiceRecord;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 1820
    move-object/from16 v2, v24

    const/4 v0, 0x1

    .end local v24    # "psr":Lcom/android/server/am/ProcessServiceRecord;
    .restart local v2    # "psr":Lcom/android/server/am/ProcessServiceRecord;
    :try_start_b
    invoke-direct {v9, v2, v0}, Lcom/android/server/am/ActiveServices;->updateServiceForegroundLocked(Lcom/android/server/am/ProcessServiceRecord;Z)V

    .line 1821
    const/16 v19, 0x1

    .line 1822
    const/4 v0, 0x3

    const/4 v3, 0x0

    invoke-direct {v9, v10, v0, v3}, Lcom/android/server/am/ActiveServices;->logFGSStateChangeLocked(Lcom/android/server/am/ServiceRecord;II)V

    .line 1825
    const-wide/32 v3, 0xa5fa937

    iget-object v0, v10, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3, v4, v0}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_8

    .line 1827
    :cond_b
    new-instance v0, Landroid/app/ForegroundServiceStartNotAllowedException;

    invoke-direct {v0, v1}, Landroid/app/ForegroundServiceStartNotAllowedException;-><init>(Ljava/lang/String;)V

    .end local v2    # "psr":Lcom/android/server/am/ProcessServiceRecord;
    .end local v16    # "alreadyStartedOp":Z
    .end local v17    # "stopProcStatsOp":Z
    .end local v25    # "foregroundServiceType":I
    .end local p0    # "this":Lcom/android/server/am/ActiveServices;
    .end local p1    # "r":Lcom/android/server/am/ServiceRecord;
    .end local p2    # "id":I
    .end local p3    # "notification":Landroid/app/Notification;
    .end local p4    # "flags":I
    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 1814
    .end local v1    # "msg":Ljava/lang/String;
    .restart local v16    # "alreadyStartedOp":Z
    .restart local v17    # "stopProcStatsOp":Z
    .restart local v24    # "psr":Lcom/android/server/am/ProcessServiceRecord;
    .restart local v25    # "foregroundServiceType":I
    .restart local p0    # "this":Lcom/android/server/am/ActiveServices;
    .restart local p1    # "r":Lcom/android/server/am/ServiceRecord;
    .restart local p2    # "id":I
    .restart local p3    # "notification":Landroid/app/Notification;
    .restart local p4    # "flags":I
    :cond_c
    move-object/from16 v2, v24

    .end local v24    # "psr":Lcom/android/server/am/ProcessServiceRecord;
    .restart local v2    # "psr":Lcom/android/server/am/ProcessServiceRecord;
    goto :goto_8

    .line 1913
    .end local v2    # "psr":Lcom/android/server/am/ProcessServiceRecord;
    .end local v18    # "mode":I
    .end local v19    # "ignoreForeground":Z
    .restart local v24    # "psr":Lcom/android/server/am/ProcessServiceRecord;
    :catchall_3
    move-exception v0

    move-object/from16 v2, v24

    move/from16 v3, v25

    .end local v24    # "psr":Lcom/android/server/am/ProcessServiceRecord;
    .restart local v2    # "psr":Lcom/android/server/am/ProcessServiceRecord;
    goto/16 :goto_e

    .end local v2    # "psr":Lcom/android/server/am/ProcessServiceRecord;
    .end local v25    # "foregroundServiceType":I
    .restart local v6    # "psr":Lcom/android/server/am/ProcessServiceRecord;
    .restart local v7    # "foregroundServiceType":I
    :catchall_4
    move-exception v0

    move-object v2, v6

    move v3, v7

    .end local v6    # "psr":Lcom/android/server/am/ProcessServiceRecord;
    .end local v7    # "foregroundServiceType":I
    .restart local v2    # "psr":Lcom/android/server/am/ProcessServiceRecord;
    .restart local v25    # "foregroundServiceType":I
    goto/16 :goto_e

    .line 1765
    .end local v2    # "psr":Lcom/android/server/am/ProcessServiceRecord;
    .end local v25    # "foregroundServiceType":I
    .restart local v6    # "psr":Lcom/android/server/am/ProcessServiceRecord;
    .restart local v7    # "foregroundServiceType":I
    .restart local v18    # "mode":I
    .restart local v19    # "ignoreForeground":Z
    :cond_d
    move-object v2, v6

    move/from16 v25, v7

    .line 1836
    .end local v6    # "psr":Lcom/android/server/am/ProcessServiceRecord;
    .end local v7    # "foregroundServiceType":I
    .restart local v2    # "psr":Lcom/android/server/am/ProcessServiceRecord;
    .restart local v25    # "foregroundServiceType":I
    :goto_8
    if-nez v19, :cond_17

    .line 1837
    :try_start_c
    iget v0, v10, Lcom/android/server/am/ServiceRecord;->foregroundId:I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    if-eq v0, v11, :cond_e

    .line 1838
    :try_start_d
    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/ActiveServices;->cancelForegroundNotificationLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 1839
    iput v11, v10, Lcom/android/server/am/ServiceRecord;->foregroundId:I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    goto :goto_9

    .line 1913
    .end local v18    # "mode":I
    .end local v19    # "ignoreForeground":Z
    :catchall_5
    move-exception v0

    move/from16 v3, v25

    goto/16 :goto_e

    .line 1841
    .restart local v18    # "mode":I
    .restart local v19    # "ignoreForeground":Z
    :cond_e
    :goto_9
    :try_start_e
    iget v0, v12, Landroid/app/Notification;->flags:I

    or-int/lit8 v0, v0, 0x40

    iput v0, v12, Landroid/app/Notification;->flags:I

    .line 1842
    iput-object v12, v10, Lcom/android/server/am/ServiceRecord;->foregroundNoti:Landroid/app/Notification;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    .line 1843
    move/from16 v3, v25

    .end local v25    # "foregroundServiceType":I
    .restart local v3    # "foregroundServiceType":I
    :try_start_f
    iput v3, v10, Lcom/android/server/am/ServiceRecord;->foregroundServiceType:I

    .line 1844
    iget-boolean v0, v10, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    if-nez v0, :cond_15

    .line 1845
    iget v0, v10, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-direct {v9, v0}, Lcom/android/server/am/ActiveServices;->getServiceMapLocked(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v0

    .line 1846
    .local v0, "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    if-eqz v0, :cond_12

    .line 1847
    iget-object v1, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundApps:Landroid/util/ArrayMap;

    iget-object v4, v10, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    .line 1848
    invoke-virtual {v1, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;

    .line 1849
    .local v1, "active":Lcom/android/server/am/ActiveServices$ActiveForegroundApp;
    if-nez v1, :cond_11

    .line 1850
    new-instance v4, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;

    invoke-direct {v4}, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;-><init>()V

    move-object v1, v4

    .line 1851
    iget-object v4, v10, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    iput-object v4, v1, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mPackageName:Ljava/lang/String;

    .line 1852
    iget-object v4, v10, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v4, v1, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mUid:I

    .line 1853
    iget-boolean v4, v9, Lcom/android/server/am/ActiveServices;->mScreenOn:Z

    iput-boolean v4, v1, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mShownWhileScreenOn:Z

    .line 1854
    iget-object v4, v10, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v4, :cond_10

    .line 1855
    iget-object v4, v10, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v4}, Lcom/android/server/am/ProcessRecord;->getUidRecord()Lcom/android/server/am/UidRecord;

    move-result-object v4

    .line 1856
    .local v4, "uidRec":Lcom/android/server/am/UidRecord;
    if-eqz v4, :cond_10

    .line 1857
    nop

    .line 1858
    invoke-virtual {v4}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v5

    const/4 v6, 0x2

    if-gt v5, v6, :cond_f

    const/4 v5, 0x1

    goto :goto_a

    :cond_f
    const/4 v5, 0x0

    :goto_a
    iput-boolean v5, v1, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mShownWhileTop:Z

    iput-boolean v5, v1, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mAppOnTop:Z

    .line 1861
    .end local v4    # "uidRec":Lcom/android/server/am/UidRecord;
    :cond_10
    nop

    .line 1862
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, v1, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mStartVisibleTime:J

    iput-wide v4, v1, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mStartTime:J

    .line 1863
    iget-object v4, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundApps:Landroid/util/ArrayMap;

    iget-object v5, v10, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1864
    const-wide/16 v4, 0x0

    invoke-direct {v9, v0, v4, v5}, Lcom/android/server/am/ActiveServices;->requestUpdateActiveForegroundAppsLocked(Lcom/android/server/am/ActiveServices$ServiceMap;J)V

    .line 1866
    :cond_11
    iget v4, v1, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mNumActive:I

    const/4 v5, 0x1

    add-int/2addr v4, v5

    iput v4, v1, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mNumActive:I

    .line 1868
    .end local v1    # "active":Lcom/android/server/am/ActiveServices$ActiveForegroundApp;
    :cond_12
    const/4 v1, 0x1

    iput-boolean v1, v10, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    .line 1872
    iget v1, v10, Lcom/android/server/am/ServiceRecord;->mAllowStartForeground:I

    iput v1, v10, Lcom/android/server/am/ServiceRecord;->mAllowStartForegroundAtEntering:I

    .line 1873
    iget-boolean v1, v10, Lcom/android/server/am/ServiceRecord;->mAllowWhileInUsePermissionInFgs:Z

    iput-boolean v1, v10, Lcom/android/server/am/ServiceRecord;->mAllowWhileInUsePermissionInFgsAtEntering:Z

    .line 1875
    iget v1, v10, Lcom/android/server/am/ServiceRecord;->mStartForegroundCount:I

    const/4 v4, 0x1

    add-int/2addr v1, v4

    iput v1, v10, Lcom/android/server/am/ServiceRecord;->mStartForegroundCount:I

    .line 1876
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, v10, Lcom/android/server/am/ServiceRecord;->mFgsEnterTime:J

    .line 1877
    if-nez v17, :cond_14

    .line 1878
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ServiceRecord;->getTracker()Lcom/android/internal/app/procstats/ServiceState;

    move-result-object v1

    .line 1879
    .local v1, "stracker":Lcom/android/internal/app/procstats/ServiceState;
    if-eqz v1, :cond_13

    .line 1880
    iget-object v4, v9, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    .line 1881
    invoke-virtual {v4}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v4

    iget-wide v5, v10, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    .line 1880
    const/4 v7, 0x1

    invoke-virtual {v1, v7, v4, v5, v6}, Lcom/android/internal/app/procstats/ServiceState;->setForeground(ZIJ)V

    .line 1883
    .end local v1    # "stracker":Lcom/android/internal/app/procstats/ServiceState;
    :cond_13
    goto :goto_b

    .line 1884
    :cond_14
    const/16 v17, 0x0

    .line 1887
    :goto_b
    iget-object v1, v9, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    iget-object v4, v9, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    .line 1888
    invoke-static {v4}, Landroid/app/AppOpsManager;->getToken(Lcom/android/internal/app/IAppOpsService;)Landroid/os/IBinder;

    move-result-object v25

    const/16 v26, 0x4c

    iget-object v4, v10, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v5, v10, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    const/16 v29, 0x0

    const/16 v30, 0x1

    const/16 v31, 0x0

    const-string v32, ""

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, -0x1

    .line 1887
    move-object/from16 v24, v1

    move/from16 v27, v4

    move-object/from16 v28, v5

    invoke-virtual/range {v24 .. v35}, Lcom/android/server/appop/AppOpsService;->startOperation(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZII)Landroid/app/SyncNotedAppOp;

    .line 1892
    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/ActiveServices;->registerAppOpCallbackLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 1893
    iget-object v1, v9, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v10, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    iget v5, v10, Lcom/android/server/am/ServiceRecord;->userId:I

    const/4 v6, 0x1

    invoke-virtual {v1, v4, v5, v6}, Lcom/android/server/am/ActivityManagerService;->updateForegroundServiceUsageStats(Landroid/content/ComponentName;IZ)V

    .line 1894
    const/4 v1, 0x0

    invoke-direct {v9, v10, v6, v1}, Lcom/android/server/am/ActiveServices;->logFGSStateChangeLocked(Lcom/android/server/am/ServiceRecord;II)V

    .line 1900
    .end local v0    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    :cond_15
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ServiceRecord;->postNotification()V

    .line 1901
    iget-object v0, v10, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_16

    .line 1902
    const/4 v0, 0x1

    invoke-direct {v9, v2, v0}, Lcom/android/server/am/ActiveServices;->updateServiceForegroundLocked(Lcom/android/server/am/ProcessServiceRecord;Z)V

    .line 1904
    :cond_16
    iget v0, v10, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-direct {v9, v0}, Lcom/android/server/am/ActiveServices;->getServiceMapLocked(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/android/server/am/ActiveServices$ServiceMap;->ensureNotStartingBackgroundLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 1905
    iget-object v0, v9, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v10, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    const/4 v4, 0x2

    invoke-virtual {v0, v1, v4}, Lcom/android/server/am/ActivityManagerService;->notifyPackageUse(Ljava/lang/String;I)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    goto :goto_c

    .line 1913
    .end local v3    # "foregroundServiceType":I
    .end local v18    # "mode":I
    .end local v19    # "ignoreForeground":Z
    .restart local v25    # "foregroundServiceType":I
    :catchall_6
    move-exception v0

    move/from16 v3, v25

    .end local v25    # "foregroundServiceType":I
    .restart local v3    # "foregroundServiceType":I
    goto :goto_e

    .line 1836
    .end local v3    # "foregroundServiceType":I
    .restart local v18    # "mode":I
    .restart local v19    # "ignoreForeground":Z
    .restart local v25    # "foregroundServiceType":I
    :cond_17
    move/from16 v3, v25

    .line 1913
    .end local v18    # "mode":I
    .end local v19    # "ignoreForeground":Z
    .end local v25    # "foregroundServiceType":I
    .restart local v3    # "foregroundServiceType":I
    :goto_c
    if-eqz v17, :cond_18

    .line 1916
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ServiceRecord;->getTracker()Lcom/android/internal/app/procstats/ServiceState;

    move-result-object v0

    .line 1917
    .local v0, "stracker":Lcom/android/internal/app/procstats/ServiceState;
    if-eqz v0, :cond_18

    .line 1918
    iget-object v1, v9, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v1

    .line 1919
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 1918
    const/4 v6, 0x0

    invoke-virtual {v0, v6, v1, v4, v5}, Lcom/android/internal/app/procstats/ServiceState;->setForeground(ZIJ)V

    .line 1922
    .end local v0    # "stracker":Lcom/android/internal/app/procstats/ServiceState;
    :cond_18
    if-eqz v16, :cond_19

    .line 1925
    iget-object v0, v9, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    iget-object v1, v9, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    .line 1926
    invoke-static {v1}, Landroid/app/AppOpsManager;->getToken(Lcom/android/internal/app/IAppOpsService;)Landroid/os/IBinder;

    move-result-object v19

    const/16 v20, 0x4c

    iget-object v1, v10, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v4, v10, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    const/16 v23, 0x0

    .line 1925
    move-object/from16 v18, v0

    move/from16 v21, v1

    move-object/from16 v22, v4

    invoke-virtual/range {v18 .. v23}, Lcom/android/server/appop/AppOpsService;->finishOperation(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;)V

    .line 1931
    .end local v2    # "psr":Lcom/android/server/am/ProcessServiceRecord;
    .end local v16    # "alreadyStartedOp":Z
    .end local v17    # "stopProcStatsOp":Z
    :cond_19
    move v2, v3

    goto/16 :goto_10

    .line 1748
    .local v1, "ignoreForeground":Z
    .restart local v2    # "psr":Lcom/android/server/am/ProcessServiceRecord;
    .restart local v16    # "alreadyStartedOp":Z
    .restart local v17    # "stopProcStatsOp":Z
    .restart local v18    # "mode":I
    :goto_d
    :try_start_10
    const-string v4, "Foreground not allowed as per app op"

    invoke-direct {v0, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v2    # "psr":Lcom/android/server/am/ProcessServiceRecord;
    .end local v3    # "foregroundServiceType":I
    .end local v16    # "alreadyStartedOp":Z
    .end local v17    # "stopProcStatsOp":Z
    .end local p0    # "this":Lcom/android/server/am/ActiveServices;
    .end local p1    # "r":Lcom/android/server/am/ServiceRecord;
    .end local p2    # "id":I
    .end local p3    # "notification":Landroid/app/Notification;
    .end local p4    # "flags":I
    throw v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    .line 1913
    .end local v1    # "ignoreForeground":Z
    .end local v18    # "mode":I
    .restart local v2    # "psr":Lcom/android/server/am/ProcessServiceRecord;
    .restart local v3    # "foregroundServiceType":I
    .restart local v16    # "alreadyStartedOp":Z
    .restart local v17    # "stopProcStatsOp":Z
    .restart local p0    # "this":Lcom/android/server/am/ActiveServices;
    .restart local p1    # "r":Lcom/android/server/am/ServiceRecord;
    .restart local p2    # "id":I
    .restart local p3    # "notification":Landroid/app/Notification;
    .restart local p4    # "flags":I
    :catchall_7
    move-exception v0

    goto :goto_e

    .end local v2    # "psr":Lcom/android/server/am/ProcessServiceRecord;
    .end local v3    # "foregroundServiceType":I
    .restart local v6    # "psr":Lcom/android/server/am/ProcessServiceRecord;
    .restart local v7    # "foregroundServiceType":I
    :catchall_8
    move-exception v0

    move-object v2, v6

    move v3, v7

    .end local v6    # "psr":Lcom/android/server/am/ProcessServiceRecord;
    .end local v7    # "foregroundServiceType":I
    .restart local v2    # "psr":Lcom/android/server/am/ProcessServiceRecord;
    .restart local v3    # "foregroundServiceType":I
    :goto_e
    if-eqz v17, :cond_1a

    .line 1916
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ServiceRecord;->getTracker()Lcom/android/internal/app/procstats/ServiceState;

    move-result-object v1

    .line 1917
    .local v1, "stracker":Lcom/android/internal/app/procstats/ServiceState;
    if-eqz v1, :cond_1a

    .line 1918
    iget-object v4, v9, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v4}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v4

    .line 1919
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 1918
    const/4 v7, 0x0

    invoke-virtual {v1, v7, v4, v5, v6}, Lcom/android/internal/app/procstats/ServiceState;->setForeground(ZIJ)V

    .line 1922
    .end local v1    # "stracker":Lcom/android/internal/app/procstats/ServiceState;
    :cond_1a
    if-eqz v16, :cond_1b

    .line 1925
    iget-object v1, v9, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    iget-object v4, v9, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    .line 1926
    invoke-static {v4}, Landroid/app/AppOpsManager;->getToken(Lcom/android/internal/app/IAppOpsService;)Landroid/os/IBinder;

    move-result-object v19

    const/16 v20, 0x4c

    iget-object v4, v10, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v5, v10, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    const/16 v23, 0x0

    .line 1925
    move-object/from16 v18, v1

    move/from16 v21, v4

    move-object/from16 v22, v5

    invoke-virtual/range {v18 .. v23}, Lcom/android/server/appop/AppOpsService;->finishOperation(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;)V

    .line 1930
    :cond_1b
    throw v0

    .line 1710
    .end local v3    # "foregroundServiceType":I
    .end local v16    # "alreadyStartedOp":Z
    .end local v17    # "stopProcStatsOp":Z
    .local v1, "manifestType":I
    .local v2, "foregroundServiceType":I
    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "foregroundServiceType "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    .line 1711
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const-string v6, "0x%08X"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " is not a subset of foregroundServiceType attribute "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v4, v4, [Ljava/lang/Object;

    .line 1713
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v6, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " in service element of manifest file"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1670
    .end local v1    # "manifestType":I
    .end local v2    # "foregroundServiceType":I
    .restart local p5    # "foregroundServiceType":I
    :cond_1d
    move/from16 v2, p5

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "null notification"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1932
    :cond_1e
    move/from16 v2, p5

    iget-boolean v0, v10, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_22

    .line 1933
    iget v0, v10, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-direct {v9, v0}, Lcom/android/server/am/ActiveServices;->getServiceMapLocked(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v0

    .line 1934
    .local v0, "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    if-eqz v0, :cond_1f

    .line 1935
    invoke-direct {v9, v0, v10}, Lcom/android/server/am/ActiveServices;->decActiveForegroundAppLocked(Lcom/android/server/am/ActiveServices$ServiceMap;Lcom/android/server/am/ServiceRecord;)V

    .line 1937
    :cond_1f
    const/4 v3, 0x0

    iput-boolean v3, v10, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    .line 1938
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iput-wide v3, v10, Lcom/android/server/am/ServiceRecord;->mFgsExitTime:J

    .line 1939
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ServiceRecord;->getTracker()Lcom/android/internal/app/procstats/ServiceState;

    move-result-object v3

    .line 1940
    .local v3, "stracker":Lcom/android/internal/app/procstats/ServiceState;
    if-eqz v3, :cond_20

    .line 1941
    iget-object v4, v9, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v4}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v4

    .line 1942
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 1941
    const/4 v7, 0x0

    invoke-virtual {v3, v7, v4, v5, v6}, Lcom/android/internal/app/procstats/ServiceState;->setForeground(ZIJ)V

    .line 1944
    :cond_20
    iget-object v4, v9, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v13, v4, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    iget-object v4, v9, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    .line 1945
    invoke-static {v4}, Landroid/app/AppOpsManager;->getToken(Lcom/android/internal/app/IAppOpsService;)Landroid/os/IBinder;

    move-result-object v14

    const/16 v15, 0x4c

    iget-object v4, v10, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v5, v10, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    const/16 v18, 0x0

    .line 1944
    move/from16 v16, v4

    move-object/from16 v17, v5

    invoke-virtual/range {v13 .. v18}, Lcom/android/server/appop/AppOpsService;->finishOperation(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;)V

    .line 1947
    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/ActiveServices;->unregisterAppOpCallbackLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 1948
    nop

    .line 1950
    iget-wide v4, v10, Lcom/android/server/am/ServiceRecord;->mFgsExitTime:J

    iget-wide v6, v10, Lcom/android/server/am/ServiceRecord;->mFgsEnterTime:J

    cmp-long v4, v4, v6

    if-lez v4, :cond_21

    .line 1951
    iget-wide v4, v10, Lcom/android/server/am/ServiceRecord;->mFgsExitTime:J

    iget-wide v6, v10, Lcom/android/server/am/ServiceRecord;->mFgsEnterTime:J

    sub-long/2addr v4, v6

    long-to-int v4, v4

    goto :goto_f

    :cond_21
    const/4 v4, 0x0

    .line 1948
    :goto_f
    const/4 v5, 0x2

    invoke-direct {v9, v10, v5, v4}, Lcom/android/server/am/ActiveServices;->logFGSStateChangeLocked(Lcom/android/server/am/ServiceRecord;II)V

    .line 1952
    const/4 v4, 0x0

    iput-boolean v4, v10, Lcom/android/server/am/ServiceRecord;->mFgsNotificationWasDeferred:Z

    .line 1953
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/ActiveServices;->resetFgsRestrictionLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 1954
    iget-object v5, v9, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v10, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    iget v7, v10, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-virtual {v5, v6, v7, v4}, Lcom/android/server/am/ActivityManagerService;->updateForegroundServiceUsageStats(Landroid/content/ComponentName;IZ)V

    .line 1955
    iget-object v5, v10, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v5, :cond_22

    .line 1956
    iget-object v5, v9, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v10, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v5, v6, v4, v1}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZLcom/android/server/am/ProcessRecord;)V

    .line 1957
    iget-object v4, v10, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    const/4 v5, 0x1

    invoke-direct {v9, v4, v5}, Lcom/android/server/am/ActiveServices;->updateServiceForegroundLocked(Lcom/android/server/am/ProcessServiceRecord;Z)V

    .line 1963
    .end local v0    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .end local v3    # "stracker":Lcom/android/internal/app/procstats/ServiceState;
    :cond_22
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_23

    .line 1964
    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/ActiveServices;->cancelForegroundNotificationLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 1965
    const/4 v3, 0x0

    iput v3, v10, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    .line 1966
    iput-object v1, v10, Lcom/android/server/am/ServiceRecord;->foregroundNoti:Landroid/app/Notification;

    goto :goto_10

    .line 1967
    :cond_23
    iget-object v0, v10, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0x15

    if-lt v0, v3, :cond_24

    .line 1968
    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/ActiveServices;->dropFgsNotificationStateLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 1969
    and-int/lit8 v0, p4, 0x2

    if-eqz v0, :cond_24

    .line 1970
    const/4 v3, 0x0

    iput v3, v10, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    .line 1971
    iput-object v1, v10, Lcom/android/server/am/ServiceRecord;->foregroundNoti:Landroid/app/Notification;

    .line 1975
    .end local p5    # "foregroundServiceType":I
    .restart local v2    # "foregroundServiceType":I
    :cond_24
    :goto_10
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method private shouldAllowFgsStartForegroundLocked(IIILjava/lang/String;Lcom/android/server/am/ServiceRecord;)I
    .locals 5
    .param p1, "allowWhileInUse"    # I
    .param p2, "callingPid"    # I
    .param p3, "callingUid"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;
    .param p5, "targetService"    # Lcom/android/server/am/ServiceRecord;

    .line 6074
    move v0, p1

    .line 6076
    .local v0, "ret":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 6077
    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2, p3}, Lcom/android/server/am/ActivityManagerService;->getUidStateLocked(I)I

    move-result v2

    .line 6079
    .local v2, "uidState":I
    const/4 v3, 0x2

    if-gt v2, v3, :cond_0

    .line 6080
    invoke-static {v2}, Landroid/os/PowerExemptionManager;->getReasonCodeFromProcState(I)I

    move-result v0

    .line 6084
    .end local v2    # "uidState":I
    :cond_0
    if-ne v0, v1, :cond_1

    .line 6085
    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    const/4 v3, 0x0

    new-instance v4, Lcom/android/server/am/ActiveServices$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0, p3}, Lcom/android/server/am/ActiveServices$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/am/ActiveServices;I)V

    invoke-virtual {v2, v3, v4}, Lcom/android/server/am/ProcessList;->searchEachLruProcessesLOSP(ZLjava/util/function/Function;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 6108
    .local v2, "allowedType":Ljava/lang/Integer;
    if-eqz v2, :cond_1

    .line 6109
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 6113
    .end local v2    # "allowedType":Ljava/lang/Integer;
    :cond_1
    if-ne v0, v1, :cond_2

    .line 6114
    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    const-string v3, "android.permission.START_FOREGROUND_SERVICES_FROM_BACKGROUND"

    invoke-virtual {v2, v3, p2, p3}, Lcom/android/server/am/ActivityManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result v2

    if-nez v2, :cond_2

    .line 6116
    const/16 v0, 0x3b

    .line 6120
    :cond_2
    if-ne v0, v1, :cond_3

    .line 6121
    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v2, p3, p2, p4}, Lcom/android/server/wm/ActivityTaskManagerInternal;->hasSystemAlertWindowPermission(IILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 6123
    const/16 v0, 0x3e

    .line 6133
    :cond_3
    if-ne v0, v1, :cond_5

    .line 6134
    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mInternal:Landroid/app/ActivityManagerInternal;

    .line 6135
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 6134
    invoke-virtual {v2, v3, p3}, Landroid/app/ActivityManagerInternal;->isAssociatedCompanionApp(II)Z

    move-result v2

    .line 6136
    .local v2, "isCompanionApp":Z
    if-eqz v2, :cond_5

    .line 6137
    const-string v3, "android.permission.REQUEST_COMPANION_START_FOREGROUND_SERVICES_FROM_BACKGROUND"

    invoke-direct {p0, v3, p2, p3}, Lcom/android/server/am/ActiveServices;->isPermissionGranted(Ljava/lang/String;II)Z

    move-result v3

    if-nez v3, :cond_4

    .line 6140
    const-string v3, "android.permission.REQUEST_COMPANION_RUN_IN_BACKGROUND"

    invoke-direct {p0, v3, p2, p3}, Lcom/android/server/am/ActiveServices;->isPermissionGranted(Ljava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 6142
    :cond_4
    const/16 v0, 0x39

    .line 6147
    .end local v2    # "isCompanionApp":Z
    :cond_5
    if-ne v0, v1, :cond_7

    .line 6148
    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 6149
    invoke-virtual {v2, p3}, Lcom/android/server/am/ActivityManagerService;->isAllowlistedForFgsStartLOSP(I)Lcom/android/server/am/ActivityManagerService$FgsTempAllowListItem;

    move-result-object v2

    .line 6150
    .local v2, "item":Lcom/android/server/am/ActivityManagerService$FgsTempAllowListItem;
    if-eqz v2, :cond_7

    .line 6151
    sget-object v3, Lcom/android/server/am/ActivityManagerService;->FAKE_TEMP_ALLOW_LIST_ITEM:Lcom/android/server/am/ActivityManagerService$FgsTempAllowListItem;

    if-ne v2, v3, :cond_6

    .line 6152
    const/16 v0, 0x12c

    goto :goto_0

    .line 6154
    :cond_6
    iget v0, v2, Lcom/android/server/am/ActivityManagerService$FgsTempAllowListItem;->mReasonCode:I

    .line 6159
    .end local v2    # "item":Lcom/android/server/am/ActivityManagerService$FgsTempAllowListItem;
    :cond_7
    :goto_0
    if-ne v0, v1, :cond_8

    .line 6160
    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/os/UserManager;->isDeviceInDemoMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 6161
    const/16 v0, 0x3f

    .line 6165
    :cond_8
    if-ne v0, v1, :cond_9

    .line 6167
    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v2, p3}, Landroid/app/ActivityManagerInternal;->isProfileOwner(I)Z

    move-result v2

    .line 6168
    .local v2, "isProfileOwner":Z
    if-eqz v2, :cond_9

    .line 6169
    const/16 v0, 0x38

    .line 6173
    .end local v2    # "isProfileOwner":Z
    :cond_9
    if-ne v0, v1, :cond_b

    .line 6174
    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->getAppOpsManager()Landroid/app/AppOpsManager;

    move-result-object v2

    .line 6175
    .local v2, "appOpsManager":Landroid/app/AppOpsManager;
    const/16 v3, 0x2f

    invoke-virtual {v2, v3, p3, p4}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v3

    if-nez v3, :cond_a

    .line 6177
    const/16 v0, 0x44

    goto :goto_1

    .line 6178
    :cond_a
    const/16 v3, 0x5e

    invoke-virtual {v2, v3, p3, p4}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v3

    if-nez v3, :cond_b

    .line 6180
    const/16 v0, 0x45

    .line 6184
    .end local v2    # "appOpsManager":Landroid/app/AppOpsManager;
    :cond_b
    :goto_1
    if-ne v0, v1, :cond_c

    .line 6185
    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 6186
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 6188
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 6186
    const-string v4, "default_input_method"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 6189
    .local v2, "inputMethod":Ljava/lang/String;
    if-eqz v2, :cond_c

    .line 6190
    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    .line 6191
    .local v3, "cn":Landroid/content/ComponentName;
    if-eqz v3, :cond_c

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 6192
    const/16 v0, 0x47

    .line 6197
    .end local v2    # "inputMethod":Ljava/lang/String;
    .end local v3    # "cn":Landroid/content/ComponentName;
    :cond_c
    if-ne v0, v1, :cond_d

    .line 6198
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-boolean v1, v1, Lcom/android/server/am/ActivityManagerConstants;->mFgsAllowOptOut:Z

    if-eqz v1, :cond_d

    if-eqz p5, :cond_d

    iget-object v1, p5, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 6200
    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->hasRequestForegroundServiceExemption()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 6201
    const/16 v0, 0x3e8

    .line 6204
    :cond_d
    return v0
.end method

.method private shouldAllowFgsStartForegroundLocked(ILjava/lang/String;IILandroid/content/Intent;Lcom/android/server/am/ServiceRecord;I)I
    .locals 16
    .param p1, "allowWhileInUse"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingPid"    # I
    .param p4, "callingUid"    # I
    .param p5, "intent"    # Landroid/content/Intent;
    .param p6, "r"    # Lcom/android/server/am/ServiceRecord;
    .param p7, "userId"    # I

    .line 5972
    move-object/from16 v7, p0

    move-object/from16 v8, p2

    move/from16 v9, p4

    move-object/from16 v10, p6

    iget-object v0, v7, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 5973
    invoke-virtual {v0, v9}, Lcom/android/server/am/ActivityManagerService;->isAllowlistedForFgsStartLOSP(I)Lcom/android/server/am/ActivityManagerService$FgsTempAllowListItem;

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/am/ServiceRecord;->mInfoTempFgsAllowListReason:Lcom/android/server/am/ActivityManagerService$FgsTempAllowListItem;

    move-object v11, v0

    .line 5974
    .local v11, "tempAllowListReason":Lcom/android/server/am/ActivityManagerService$FgsTempAllowListItem;
    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p2

    move-object/from16 v6, p6

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/ActiveServices;->shouldAllowFgsStartForegroundLocked(IIILjava/lang/String;Lcom/android/server/am/ServiceRecord;)I

    move-result v0

    .line 5977
    .local v0, "ret":I
    const/4 v1, 0x0

    .line 5978
    .local v1, "bindFromPackage":Ljava/lang/String;
    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    .line 5982
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 5983
    .local v3, "checkedClientUids":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    iget-object v4, v7, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    new-instance v5, Lcom/android/server/am/ActiveServices$$ExternalSyntheticLambda2;

    invoke-direct {v5, v7, v9, v3}, Lcom/android/server/am/ActiveServices$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/am/ActiveServices;ILandroid/util/ArraySet;)V

    invoke-virtual {v4, v2, v5}, Lcom/android/server/am/ProcessList;->searchEachLruProcessesLOSP(ZLjava/util/function/Function;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    .line 6031
    .local v4, "isAllowed":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    if-eqz v4, :cond_0

    .line 6032
    const/16 v0, 0x36

    .line 6033
    iget-object v5, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v1, v5

    check-cast v1, Ljava/lang/String;

    move-object v3, v1

    move v1, v0

    goto :goto_0

    .line 6037
    .end local v3    # "checkedClientUids":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    .end local v4    # "isAllowed":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    :cond_0
    move-object v3, v1

    move v1, v0

    .end local v0    # "ret":I
    .local v1, "ret":I
    .local v3, "bindFromPackage":Ljava/lang/String;
    :goto_0
    iget-object v0, v7, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, v9}, Lcom/android/server/am/ActivityManagerService;->getUidStateLocked(I)I

    move-result v4

    .line 6038
    .local v4, "uidState":I
    const/4 v5, -0x1

    .line 6040
    .local v5, "callerTargetSdkVersion":I
    :try_start_0
    iget-object v0, v7, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    const v6, 0x402000

    move/from16 v12, p7

    :try_start_1
    invoke-virtual {v0, v8, v6, v12}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 6042
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget v6, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move v5, v6

    .line 6044
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    goto :goto_1

    .line 6043
    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    move/from16 v12, p7

    .line 6045
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[callingPackage: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "; callingUid: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "; uidState: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6048
    invoke-static {v4}, Lcom/android/server/am/ProcessList;->makeProcStateString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "; intent: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v6, p5

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, "; code:"

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6050
    invoke-static {v1}, Landroid/os/PowerExemptionManager;->reasonCodeToString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "; tempAllowListReason:<"

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6052
    if-nez v11, :cond_1

    const/4 v13, 0x0

    goto :goto_2

    .line 6053
    :cond_1
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v11, Lcom/android/server/am/ActivityManagerService$FgsTempAllowListItem;->mReason:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ",reasonCode:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v11, Lcom/android/server/am/ActivityManagerService$FgsTempAllowListItem;->mReasonCode:I

    .line 6055
    invoke-static {v14}, Landroid/os/PowerExemptionManager;->reasonCodeToString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ",duration:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v14, v11, Lcom/android/server/am/ActivityManagerService$FgsTempAllowListItem;->mDuration:J

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v14, ",callingUid:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v11, Lcom/android/server/am/ActivityManagerService$FgsTempAllowListItem;->mCallingUid:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    :goto_2
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ">; targetSdkVersion:"

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v10, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v13, v13, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, "; callerTargetSdkVersion:"

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, "; startForegroundCount:"

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v10, Lcom/android/server/am/ServiceRecord;->mStartForegroundCount:I

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, "; bindFromPackage:"

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "]"

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6064
    .local v0, "debugInfo":Ljava/lang/String;
    iget-object v13, v10, Lcom/android/server/am/ServiceRecord;->mInfoAllowStartForeground:Ljava/lang/String;

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_2

    .line 6065
    iput-boolean v2, v10, Lcom/android/server/am/ServiceRecord;->mLoggedInfoAllowStartForeground:Z

    .line 6066
    iput-object v0, v10, Lcom/android/server/am/ServiceRecord;->mInfoAllowStartForeground:Ljava/lang/String;

    .line 6068
    :cond_2
    return v1
.end method

.method private shouldAllowFgsWhileInUsePermissionLocked(Ljava/lang/String;IILcom/android/server/am/ServiceRecord;Z)I
    .locals 6
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "callingPid"    # I
    .param p3, "callingUid"    # I
    .param p4, "targetService"    # Lcom/android/server/am/ServiceRecord;
    .param p5, "allowBackgroundActivityStarts"    # Z

    .line 5859
    const/4 v0, -0x1

    .line 5861
    .local v0, "ret":I
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1, p3}, Lcom/android/server/am/ActivityManagerService;->getUidStateLocked(I)I

    move-result v1

    .line 5862
    .local v1, "uidState":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 5864
    const/4 v3, 0x2

    if-gt v1, v3, :cond_0

    .line 5865
    invoke-static {v1}, Landroid/os/PowerExemptionManager;->getReasonCodeFromProcState(I)I

    move-result v0

    .line 5869
    :cond_0
    if-ne v0, v2, :cond_1

    .line 5871
    iget-object v3, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v3, p3}, Lcom/android/server/wm/ActivityTaskManagerInternal;->isUidForeground(I)Z

    move-result v3

    .line 5872
    .local v3, "isCallingUidVisible":Z
    if-eqz v3, :cond_1

    .line 5873
    const/16 v0, 0x32

    .line 5877
    .end local v3    # "isCallingUidVisible":Z
    :cond_1
    if-ne v0, v2, :cond_2

    .line 5879
    if-eqz p5, :cond_2

    .line 5880
    const/16 v0, 0x35

    .line 5884
    :cond_2
    if-ne v0, v2, :cond_3

    .line 5885
    const/4 v3, 0x0

    .line 5886
    .local v3, "isCallerSystem":Z
    invoke-static {p3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v4

    .line 5887
    .local v4, "callingAppId":I
    sparse-switch v4, :sswitch_data_0

    .line 5895
    const/4 v3, 0x0

    goto :goto_0

    .line 5892
    :sswitch_0
    const/4 v3, 0x1

    .line 5893
    nop

    .line 5899
    :goto_0
    if-eqz v3, :cond_3

    .line 5900
    const/16 v0, 0x33

    .line 5904
    .end local v3    # "isCallerSystem":Z
    .end local v4    # "callingAppId":I
    :cond_3
    if-ne v0, v2, :cond_4

    .line 5905
    iget-object v3, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    const/4 v4, 0x0

    new-instance v5, Lcom/android/server/am/ActiveServices$$ExternalSyntheticLambda0;

    invoke-direct {v5, p3}, Lcom/android/server/am/ActiveServices$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {v3, v4, v5}, Lcom/android/server/am/ProcessList;->searchEachLruProcessesLOSP(ZLjava/util/function/Function;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 5913
    .local v3, "allowedType":Ljava/lang/Integer;
    if-eqz v3, :cond_4

    .line 5914
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 5918
    .end local v3    # "allowedType":Ljava/lang/Integer;
    :cond_4
    if-ne v0, v2, :cond_5

    .line 5919
    iget-object v3, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v3, p3}, Landroid/app/ActivityManagerInternal;->isTempAllowlistedForFgsWhileInUse(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 5920
    const/16 v2, 0x46

    return v2

    .line 5924
    :cond_5
    if-ne v0, v2, :cond_6

    .line 5925
    if-eqz p4, :cond_6

    iget-object v3, p4, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v3, :cond_6

    .line 5926
    iget-object v3, p4, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->getActiveInstrumentation()Lcom/android/server/am/ActiveInstrumentation;

    move-result-object v3

    .line 5927
    .local v3, "instr":Lcom/android/server/am/ActiveInstrumentation;
    if-eqz v3, :cond_6

    iget-boolean v4, v3, Lcom/android/server/am/ActiveInstrumentation;->mHasBackgroundActivityStartsPermission:Z

    if-eqz v4, :cond_6

    .line 5928
    const/16 v0, 0x3c

    .line 5933
    .end local v3    # "instr":Lcom/android/server/am/ActiveInstrumentation;
    :cond_6
    if-ne v0, v2, :cond_7

    .line 5934
    iget-object v3, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    const-string v4, "android.permission.START_ACTIVITIES_FROM_BACKGROUND"

    invoke-virtual {v3, v4, p2, p3}, Lcom/android/server/am/ActivityManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result v3

    if-nez v3, :cond_7

    .line 5936
    const/16 v0, 0x3a

    .line 5940
    :cond_7
    if-ne v0, v2, :cond_8

    .line 5941
    iget-object v3, p0, Lcom/android/server/am/ActiveServices;->mAllowListWhileInUsePermissionInFgs:Landroid/util/ArraySet;

    .line 5942
    invoke-virtual {v3, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    .line 5943
    .local v3, "isAllowedPackage":Z
    if-eqz v3, :cond_8

    .line 5944
    const/16 v0, 0x41

    .line 5948
    .end local v3    # "isAllowedPackage":Z
    :cond_8
    if-ne v0, v2, :cond_9

    .line 5950
    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v2, p3}, Landroid/app/ActivityManagerInternal;->isDeviceOwner(I)Z

    move-result v2

    .line 5951
    .local v2, "isDeviceOwner":Z
    if-eqz v2, :cond_9

    .line 5952
    const/16 v0, 0x37

    .line 5955
    .end local v2    # "isDeviceOwner":Z
    :cond_9
    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x3e8 -> :sswitch_0
        0x403 -> :sswitch_0
        0x7d0 -> :sswitch_0
    .end sparse-switch
.end method

.method private shouldShowFgsNotificationLocked(Lcom/android/server/am/ServiceRecord;)Z
    .locals 6
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;

    .line 2066
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 2069
    .local v0, "now":J
    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-boolean v2, v2, Lcom/android/server/am/ActivityManagerConstants;->mFlagFgsNotificationDeferralEnabled:Z

    const/4 v3, 0x1

    if-nez v2, :cond_0

    .line 2070
    return v3

    .line 2074
    :cond_0
    iget-boolean v2, p1, Lcom/android/server/am/ServiceRecord;->mFgsNotificationDeferred:Z

    if-eqz v2, :cond_1

    iget-wide v4, p1, Lcom/android/server/am/ServiceRecord;->fgDisplayTime:J

    cmp-long v2, v0, v4

    if-ltz v2, :cond_1

    .line 2078
    return v3

    .line 2082
    :cond_1
    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/am/ActiveServices;->withinFgsDeferRateLimit(Lcom/android/server/am/ServiceRecord;J)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2083
    return v3

    .line 2086
    :cond_2
    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-boolean v2, v2, Lcom/android/server/am/ActivityManagerConstants;->mFlagFgsNotificationDeferralApiGated:Z

    const/4 v4, 0x0

    if-eqz v2, :cond_4

    .line 2089
    iget-object v2, p1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v5, 0x1f

    if-ge v2, v5, :cond_3

    move v2, v3

    goto :goto_0

    :cond_3
    move v2, v4

    .line 2090
    .local v2, "isLegacyApp":Z
    :goto_0
    if-eqz v2, :cond_4

    .line 2091
    return v3

    .line 2096
    .end local v2    # "isLegacyApp":Z
    :cond_4
    iget-boolean v2, p1, Lcom/android/server/am/ServiceRecord;->mFgsNotificationShown:Z

    if-eqz v2, :cond_5

    .line 2097
    return v3

    .line 2101
    :cond_5
    iget-object v2, p1, Lcom/android/server/am/ServiceRecord;->foregroundNoti:Landroid/app/Notification;

    invoke-virtual {v2}, Landroid/app/Notification;->isForegroundDisplayForceDeferred()Z

    move-result v2

    if-nez v2, :cond_7

    .line 2103
    iget-object v2, p1, Lcom/android/server/am/ServiceRecord;->foregroundNoti:Landroid/app/Notification;

    invoke-virtual {v2}, Landroid/app/Notification;->shouldShowForegroundImmediately()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2108
    return v3

    .line 2112
    :cond_6
    iget v2, p1, Lcom/android/server/am/ServiceRecord;->foregroundServiceType:I

    and-int/lit8 v2, v2, 0x36

    if-eqz v2, :cond_7

    .line 2117
    return v3

    .line 2128
    :cond_7
    return v4
.end method

.method private showFgsBgRestrictedNotificationLocked(Lcom/android/server/am/ServiceRecord;)V
    .locals 13
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;

    .line 6219
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerConstants;->mFgsStartRestrictionNotificationEnabled:Z

    if-nez v0, :cond_0

    .line 6220
    return-void

    .line 6222
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 6223
    .local v0, "context":Landroid/content/Context;
    const-string v1, "Foreground Service BG-Launch Restricted"

    .line 6224
    .local v1, "title":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "App restricted: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->mRecentCallingPackage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 6225
    .local v2, "content":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 6226
    .local v3, "now":J
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/android/server/am/ActiveServices;->DATE_FORMATTER:Ljava/text/SimpleDateFormat;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p1, Lcom/android/server/am/ServiceRecord;->mInfoAllowStartForeground:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 6227
    .local v5, "bigText":Ljava/lang/String;
    const-string v6, "com.android.fgs-bg-restricted"

    .line 6228
    .local v6, "groupKey":Ljava/lang/String;
    new-instance v7, Landroid/app/Notification$Builder;

    sget-object v8, Lcom/android/internal/notification/SystemNotificationChannels;->ALERTS:Ljava/lang/String;

    invoke-direct {v7, v0, v8}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 6231
    const-string v8, "com.android.fgs-bg-restricted"

    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v7

    const v8, 0x1080854

    .line 6232
    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v7

    const-wide/16 v8, 0x0

    .line 6233
    invoke-virtual {v7, v8, v9}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v7

    const v8, 0x106001c

    .line 6234
    invoke-virtual {v0, v8}, Landroid/content/Context;->getColor(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v7

    .line 6236
    const-string v8, "Foreground Service BG-Launch Restricted"

    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v7

    .line 6237
    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v7

    .line 6238
    invoke-virtual {v7, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v7

    new-instance v8, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v8}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 6239
    invoke-virtual {v8, v5}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v7

    .line 6240
    .local v7, "n":Landroid/app/Notification$Builder;
    const-class v8, Landroid/app/NotificationManager;

    invoke-virtual {v0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/NotificationManager;

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x3d

    .line 6241
    invoke-virtual {v7}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v11

    sget-object v12, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 6240
    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 6242
    return-void
.end method

.method private startFgsDeferralTimerLocked(Lcom/android/server/am/ServiceRecord;)V
    .locals 9
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;

    .line 2135
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 2136
    .local v0, "now":J
    iget-object v2, p1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 2139
    .local v2, "uid":I
    iget-object v3, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v3, v3, Lcom/android/server/am/ActivityManagerConstants;->mFgsNotificationDeferralInterval:J

    add-long/2addr v3, v0

    .line 2142
    .local v3, "when":J
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    iget-object v6, p0, Lcom/android/server/am/ActiveServices;->mPendingFgsNotifications:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 2143
    iget-object v6, p0, Lcom/android/server/am/ActiveServices;->mPendingFgsNotifications:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ServiceRecord;

    .line 2144
    .local v6, "pending":Lcom/android/server/am/ServiceRecord;
    if-ne v6, p1, :cond_0

    .line 2150
    return-void

    .line 2152
    :cond_0
    iget-object v7, v6, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v2, v7, :cond_1

    .line 2153
    iget-wide v7, v6, Lcom/android/server/am/ServiceRecord;->fgDisplayTime:J

    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    .line 2142
    .end local v6    # "pending":Lcom/android/server/am/ServiceRecord;
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2157
    .end local v5    # "i":I
    :cond_2
    iget-boolean v5, p0, Lcom/android/server/am/ActiveServices;->mFgsDeferralRateLimited:Z

    if-eqz v5, :cond_3

    .line 2158
    iget-object v5, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v5, v5, Lcom/android/server/am/ActivityManagerConstants;->mFgsNotificationDeferralExclusionTime:J

    add-long/2addr v5, v3

    .line 2159
    .local v5, "nextEligible":J
    iget-object v7, p0, Lcom/android/server/am/ActiveServices;->mFgsDeferralEligible:Landroid/util/SparseLongArray;

    invoke-virtual {v7, v2, v5, v6}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 2161
    .end local v5    # "nextEligible":J
    :cond_3
    iput-wide v3, p1, Lcom/android/server/am/ServiceRecord;->fgDisplayTime:J

    .line 2162
    const/4 v5, 0x1

    iput-boolean v5, p1, Lcom/android/server/am/ServiceRecord;->mFgsNotificationDeferred:Z

    .line 2163
    iput-boolean v5, p1, Lcom/android/server/am/ServiceRecord;->mFgsNotificationWasDeferred:Z

    .line 2164
    const/4 v6, 0x0

    iput-boolean v6, p1, Lcom/android/server/am/ServiceRecord;->mFgsNotificationShown:Z

    .line 2165
    iget-object v7, p0, Lcom/android/server/am/ActiveServices;->mPendingFgsNotifications:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2170
    iget-object v7, p1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v8, 0x1f

    if-ge v7, v8, :cond_4

    goto :goto_1

    :cond_4
    move v5, v6

    .line 2171
    .local v5, "isLegacyApp":Z
    :goto_1
    if-eqz v5, :cond_5

    .line 2172
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Deferring FGS notification in legacy app "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 2173
    invoke-static {v7}, Landroid/os/UserHandle;->formatUid(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p1, Lcom/android/server/am/ServiceRecord;->foregroundNoti:Landroid/app/Notification;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2172
    const-string v7, "ActivityManager"

    invoke-static {v7, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2176
    :cond_5
    iget-object v6, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object v7, p0, Lcom/android/server/am/ActiveServices;->mPostDeferredFGSNotifications:Ljava/lang/Runnable;

    invoke-virtual {v6, v7, v3, v4}, Lcom/android/server/am/ActivityManagerService$MainHandler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 2177
    return-void
.end method

.method private startServiceInnerLocked(Lcom/android/server/am/ServiceRecord;Landroid/content/Intent;IIZZZLandroid/os/IBinder;)Landroid/content/ComponentName;
    .locals 29
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;
    .param p2, "service"    # Landroid/content/Intent;
    .param p3, "callingUid"    # I
    .param p4, "callingPid"    # I
    .param p5, "fgRequired"    # Z
    .param p6, "callerFg"    # Z
    .param p7, "allowBackgroundActivityStarts"    # Z
    .param p8, "backgroundActivityStartsToken"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/TransactionTooLargeException;
        }
    .end annotation

    .line 794
    move-object/from16 v6, p0

    move-object/from16 v14, p1

    move/from16 v15, p3

    move/from16 v5, p5

    iget-object v0, v6, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    iget-object v1, v14, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    iget v2, v14, Lcom/android/server/am/ServiceRecord;->userId:I

    move-object/from16 v4, p2

    invoke-interface {v0, v4, v15, v1, v2}, Lcom/android/server/uri/UriGrantsManagerInternal;->checkGrantUriPermissionFromIntent(Landroid/content/Intent;ILjava/lang/String;I)Lcom/android/server/uri/NeededUriGrants;

    move-result-object v16

    .line 796
    .local v16, "neededGrants":Lcom/android/server/uri/NeededUriGrants;
    const/4 v0, 0x0

    invoke-direct {v6, v14, v15, v0}, Lcom/android/server/am/ActiveServices;->unscheduleServiceRestartLocked(Lcom/android/server/am/ServiceRecord;IZ)Z

    .line 799
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, v14, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    .line 800
    const/4 v1, 0x1

    iput-boolean v1, v14, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    .line 801
    iput-boolean v0, v14, Lcom/android/server/am/ServiceRecord;->delayedStop:Z

    .line 802
    iput-boolean v5, v14, Lcom/android/server/am/ServiceRecord;->fgRequired:Z

    .line 803
    iget-object v0, v14, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/server/am/ServiceRecord$StartItem;

    const/4 v9, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ServiceRecord;->makeNextStartId()I

    move-result v10

    move-object v7, v2

    move-object/from16 v8, p1

    move-object/from16 v11, p2

    move-object/from16 v12, v16

    move/from16 v13, p3

    invoke-direct/range {v7 .. v13}, Lcom/android/server/am/ServiceRecord$StartItem;-><init>(Lcom/android/server/am/ServiceRecord;ZILandroid/content/Intent;Lcom/android/server/uri/NeededUriGrants;I)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 806
    if-eqz v5, :cond_1

    .line 808
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ServiceRecord;->getTracker()Lcom/android/internal/app/procstats/ServiceState;

    move-result-object v0

    .line 809
    .local v0, "stracker":Lcom/android/internal/app/procstats/ServiceState;
    if-eqz v0, :cond_0

    .line 810
    iget-object v2, v6, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v2

    iget-wide v7, v14, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    invoke-virtual {v0, v1, v2, v7, v8}, Lcom/android/internal/app/procstats/ServiceState;->setForeground(ZIJ)V

    .line 813
    :cond_0
    iget-object v2, v6, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    iget-object v3, v6, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    invoke-static {v3}, Landroid/app/AppOpsManager;->getToken(Lcom/android/internal/app/IAppOpsService;)Landroid/os/IBinder;

    move-result-object v18

    const/16 v19, 0x4c

    iget-object v3, v14, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v7, v14, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    const/16 v22, 0x0

    const/16 v23, 0x1

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, -0x1

    move-object/from16 v17, v2

    move/from16 v20, v3

    move-object/from16 v21, v7

    invoke-virtual/range {v17 .. v28}, Lcom/android/server/appop/AppOpsService;->startOperation(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZII)Landroid/app/SyncNotedAppOp;

    .line 819
    .end local v0    # "stracker":Lcom/android/internal/app/procstats/ServiceState;
    :cond_1
    iget v0, v14, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-direct {v6, v0}, Lcom/android/server/am/ActiveServices;->getServiceMapLocked(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v7

    .line 820
    .local v7, "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    const/4 v0, 0x0

    .line 821
    .local v0, "addToStarting":Z
    if-nez p6, :cond_6

    if-nez v5, :cond_6

    iget-object v2, v14, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-nez v2, :cond_6

    iget-object v2, v6, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    iget v3, v14, Lcom/android/server/am/ServiceRecord;->userId:I

    .line 822
    invoke-virtual {v2, v3}, Lcom/android/server/am/UserController;->hasStartedUserState(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 823
    iget-object v2, v6, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v14, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    iget-object v8, v14, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v2, v3, v8}, Lcom/android/server/am/ActivityManagerService;->getProcessRecordLocked(Ljava/lang/String;I)Lcom/android/server/am/ProcessRecord;

    move-result-object v2

    .line 824
    .local v2, "proc":Lcom/android/server/am/ProcessRecord;
    if-eqz v2, :cond_3

    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v3}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v3

    const/16 v8, 0xb

    if-le v3, v8, :cond_2

    goto :goto_0

    .line 852
    :cond_2
    iget-object v1, v2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v1

    const/16 v3, 0xa

    if-lt v1, v3, :cond_6

    .line 856
    const/4 v0, 0x1

    move v8, v0

    goto :goto_1

    .line 837
    :cond_3
    :goto_0
    iget-boolean v3, v14, Lcom/android/server/am/ServiceRecord;->delayed:Z

    if-eqz v3, :cond_4

    .line 841
    iget-object v1, v14, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    return-object v1

    .line 843
    :cond_4
    iget-object v3, v7, Lcom/android/server/am/ActiveServices$ServiceMap;->mStartingBackground:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget v8, v6, Lcom/android/server/am/ActiveServices;->mMaxStartingBackground:I

    if-lt v3, v8, :cond_5

    .line 845
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Delaying start of: "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v8, "ActivityManager"

    invoke-static {v8, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    iget-object v3, v7, Lcom/android/server/am/ActiveServices$ServiceMap;->mDelayedStartList:Ljava/util/ArrayList;

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 847
    iput-boolean v1, v14, Lcom/android/server/am/ServiceRecord;->delayed:Z

    .line 848
    iget-object v1, v14, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    return-object v1

    .line 851
    :cond_5
    const/4 v0, 0x1

    move v8, v0

    goto :goto_1

    .line 883
    .end local v2    # "proc":Lcom/android/server/am/ProcessRecord;
    :cond_6
    move v8, v0

    .end local v0    # "addToStarting":Z
    .local v8, "addToStarting":Z
    :goto_1
    if-eqz p7, :cond_7

    .line 884
    move-object/from16 v9, p8

    invoke-virtual {v14, v9}, Lcom/android/server/am/ServiceRecord;->allowBgActivityStartsOnServiceStart(Landroid/os/IBinder;)V

    goto :goto_2

    .line 883
    :cond_7
    move-object/from16 v9, p8

    .line 886
    :goto_2
    move-object/from16 v0, p0

    move-object v1, v7

    move-object/from16 v2, p2

    move-object/from16 v3, p1

    move/from16 v4, p6

    move v5, v8

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActiveServices;->startServiceInnerLocked(Lcom/android/server/am/ActiveServices$ServiceMap;Landroid/content/Intent;Lcom/android/server/am/ServiceRecord;ZZ)Landroid/content/ComponentName;

    move-result-object v0

    .line 887
    .local v0, "cmp":Landroid/content/ComponentName;
    return-object v0
.end method

.method private stopServiceAndUpdateAllowlistManagerLocked(Lcom/android/server/am/ServiceRecord;)V
    .locals 2
    .param p1, "service"    # Lcom/android/server/am/ServiceRecord;

    .line 2544
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 2545
    .local v0, "psr":Lcom/android/server/am/ProcessServiceRecord;
    invoke-virtual {v0, p1}, Lcom/android/server/am/ProcessServiceRecord;->stopService(Lcom/android/server/am/ServiceRecord;)Z

    .line 2546
    invoke-virtual {v0}, Lcom/android/server/am/ProcessServiceRecord;->updateBoundClientUids()V

    .line 2547
    iget-boolean v1, p1, Lcom/android/server/am/ServiceRecord;->allowlistManager:Z

    if-eqz v1, :cond_0

    .line 2548
    invoke-direct {p0, v0}, Lcom/android/server/am/ActiveServices;->updateAllowlistManagerLocked(Lcom/android/server/am/ProcessServiceRecord;)V

    .line 2550
    :cond_0
    return-void
.end method

.method private stopServiceLocked(Lcom/android/server/am/ServiceRecord;Z)V
    .locals 8
    .param p1, "service"    # Lcom/android/server/am/ServiceRecord;
    .param p2, "enqueueOomAdj"    # Z

    .line 1128
    iget-boolean v0, p1, Lcom/android/server/am/ServiceRecord;->delayed:Z

    if-eqz v0, :cond_0

    .line 1133
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/server/am/ServiceRecord;->delayedStop:Z

    .line 1134
    return-void

    .line 1137
    :cond_0
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1138
    .local v0, "uid":I
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1139
    .local v1, "packageName":Ljava/lang/String;
    iget-object v2, p1, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 1140
    .local v2, "serviceName":Ljava/lang/String;
    const/16 v3, 0x63

    const/4 v4, 0x2

    invoke-static {v3, v0, v1, v2, v4}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;Ljava/lang/String;I)V

    .line 1142
    iget-object v3, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    invoke-virtual {v3, v0, v1, v2}, Lcom/android/server/am/BatteryStatsService;->noteServiceStopRunning(ILjava/lang/String;Ljava/lang/String;)V

    .line 1143
    const/4 v3, 0x0

    iput-boolean v3, p1, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    .line 1144
    iget-object v4, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    if-eqz v4, :cond_1

    .line 1145
    iget-object v4, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    iget-object v5, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v5}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v5

    .line 1146
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 1145
    invoke-virtual {v4, v3, v5, v6, v7}, Lcom/android/internal/app/procstats/ServiceState;->setStarted(ZIJ)V

    .line 1148
    :cond_1
    iput-boolean v3, p1, Lcom/android/server/am/ServiceRecord;->callStart:Z

    .line 1150
    invoke-direct {p0, p1, v3, v3, p2}, Lcom/android/server/am/ActiveServices;->bringDownServiceIfNeededLocked(Lcom/android/server/am/ServiceRecord;ZZZ)V

    .line 1151
    return-void
.end method

.method private unregisterAppOpCallbackLocked(Lcom/android/server/am/ServiceRecord;)V
    .locals 3
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;

    .line 2317
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 2318
    .local v0, "uid":I
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mFgsAppOpCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActiveServices$AppOpCallback;

    .line 2319
    .local v1, "callback":Lcom/android/server/am/ActiveServices$AppOpCallback;
    if-eqz v1, :cond_0

    .line 2320
    invoke-virtual {v1}, Lcom/android/server/am/ActiveServices$AppOpCallback;->unregisterLocked()V

    .line 2321
    invoke-virtual {v1}, Lcom/android/server/am/ActiveServices$AppOpCallback;->isObsoleteLocked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2322
    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mFgsAppOpCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 2325
    :cond_0
    return-void
.end method

.method private final unscheduleServiceRestartLocked(Lcom/android/server/am/ServiceRecord;IZ)Z
    .locals 4
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;
    .param p2, "callingUid"    # I
    .param p3, "force"    # Z

    .line 3601
    if-nez p3, :cond_0

    iget-wide v0, p1, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 3602
    const/4 v0, 0x0

    return v0

    .line 3607
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 3608
    .local v0, "removed":Z
    if-nez v0, :cond_1

    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq p2, v1, :cond_2

    .line 3609
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->resetRestartCounter()V

    .line 3611
    :cond_2
    if-eqz v0, :cond_3

    .line 3612
    invoke-direct {p0, p1}, Lcom/android/server/am/ActiveServices;->clearRestartingIfNeededLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 3614
    :cond_3
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object v2, p1, Lcom/android/server/am/ServiceRecord;->restarter:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityManagerService$MainHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3615
    const/4 v1, 0x1

    return v1
.end method

.method private updateAllowlistManagerLocked(Lcom/android/server/am/ProcessServiceRecord;)V
    .locals 4
    .param p1, "psr"    # Lcom/android/server/am/ProcessServiceRecord;

    .line 2533
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/server/am/ProcessServiceRecord;->mAllowlistManager:Z

    .line 2534
    invoke-virtual {p1}, Lcom/android/server/am/ProcessServiceRecord;->numberOfRunningServices()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 2535
    invoke-virtual {p1, v0}, Lcom/android/server/am/ProcessServiceRecord;->getRunningServiceAt(I)Lcom/android/server/am/ServiceRecord;

    move-result-object v2

    .line 2536
    .local v2, "sr":Lcom/android/server/am/ServiceRecord;
    iget-boolean v3, v2, Lcom/android/server/am/ServiceRecord;->allowlistManager:Z

    if-eqz v3, :cond_0

    .line 2537
    iput-boolean v1, p1, Lcom/android/server/am/ProcessServiceRecord;->mAllowlistManager:Z

    .line 2538
    goto :goto_1

    .line 2534
    .end local v2    # "sr":Lcom/android/server/am/ServiceRecord;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2541
    .end local v0    # "i":I
    :cond_1
    :goto_1
    return-void
.end method

.method private updateServiceClientActivitiesLocked(Lcom/android/server/am/ProcessServiceRecord;Lcom/android/server/am/ConnectionRecord;Z)Z
    .locals 12
    .param p1, "psr"    # Lcom/android/server/am/ProcessServiceRecord;
    .param p2, "modCr"    # Lcom/android/server/am/ConnectionRecord;
    .param p3, "updateLru"    # Z

    .line 2571
    const/4 v0, 0x0

    if-eqz p2, :cond_0

    iget-object v1, p2, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v1, v1, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_0

    .line 2572
    iget-object v1, p2, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v1, v1, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->hasActivities()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2575
    return v0

    .line 2579
    :cond_0
    const/4 v1, 0x0

    .line 2580
    .local v1, "anyClientActivities":Z
    invoke-virtual {p1}, Lcom/android/server/am/ProcessServiceRecord;->numberOfRunningServices()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_5

    if-nez v1, :cond_5

    .line 2581
    invoke-virtual {p1, v2}, Lcom/android/server/am/ProcessServiceRecord;->getRunningServiceAt(I)Lcom/android/server/am/ServiceRecord;

    move-result-object v4

    .line 2582
    .local v4, "sr":Lcom/android/server/am/ServiceRecord;
    invoke-virtual {v4}, Lcom/android/server/am/ServiceRecord;->getConnections()Landroid/util/ArrayMap;

    move-result-object v5

    .line 2583
    .local v5, "connections":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;>;"
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v6

    sub-int/2addr v6, v3

    .local v6, "conni":I
    :goto_1
    if-ltz v6, :cond_4

    if-nez v1, :cond_4

    .line 2584
    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    .line 2585
    .local v7, "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    sub-int/2addr v8, v3

    .local v8, "cri":I
    :goto_2
    if-ltz v8, :cond_3

    .line 2586
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/ConnectionRecord;

    .line 2587
    .local v9, "cr":Lcom/android/server/am/ConnectionRecord;
    iget-object v10, v9, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v10, v10, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    if-eqz v10, :cond_2

    iget-object v10, v9, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v10, v10, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    iget-object v11, p1, Lcom/android/server/am/ProcessServiceRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    if-ne v10, v11, :cond_1

    .line 2589
    goto :goto_3

    .line 2591
    :cond_1
    iget-object v10, v9, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v10, v10, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v10}, Lcom/android/server/am/ProcessRecord;->hasActivities()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 2592
    const/4 v1, 0x1

    .line 2593
    goto :goto_4

    .line 2585
    .end local v9    # "cr":Lcom/android/server/am/ConnectionRecord;
    :cond_2
    :goto_3
    add-int/lit8 v8, v8, -0x1

    goto :goto_2

    .line 2583
    .end local v7    # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .end local v8    # "cri":I
    :cond_3
    :goto_4
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .line 2580
    .end local v4    # "sr":Lcom/android/server/am/ServiceRecord;
    .end local v5    # "connections":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;>;"
    .end local v6    # "conni":I
    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 2598
    .end local v2    # "i":I
    :cond_5
    invoke-virtual {p1}, Lcom/android/server/am/ProcessServiceRecord;->hasClientActivities()Z

    move-result v2

    if-eq v1, v2, :cond_7

    .line 2599
    invoke-virtual {p1, v1}, Lcom/android/server/am/ProcessServiceRecord;->setHasClientActivities(Z)V

    .line 2600
    if-eqz p3, :cond_6

    .line 2601
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, p1, Lcom/android/server/am/ProcessServiceRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v1, v4}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZLcom/android/server/am/ProcessRecord;)V

    .line 2603
    :cond_6
    return v3

    .line 2605
    :cond_7
    return v0
.end method

.method private updateServiceForegroundLocked(Lcom/android/server/am/ProcessServiceRecord;Z)V
    .locals 5
    .param p1, "psr"    # Lcom/android/server/am/ProcessServiceRecord;
    .param p2, "oomAdj"    # Z

    .line 2520
    const/4 v0, 0x0

    .line 2521
    .local v0, "anyForeground":Z
    const/4 v1, 0x0

    .line 2522
    .local v1, "fgServiceTypes":I
    invoke-virtual {p1}, Lcom/android/server/am/ProcessServiceRecord;->numberOfRunningServices()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_2

    .line 2523
    invoke-virtual {p1, v2}, Lcom/android/server/am/ProcessServiceRecord;->getRunningServiceAt(I)Lcom/android/server/am/ServiceRecord;

    move-result-object v3

    .line 2524
    .local v3, "sr":Lcom/android/server/am/ServiceRecord;
    iget-boolean v4, v3, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    if-nez v4, :cond_0

    iget-boolean v4, v3, Lcom/android/server/am/ServiceRecord;->fgRequired:Z

    if-eqz v4, :cond_1

    .line 2525
    :cond_0
    const/4 v0, 0x1

    .line 2526
    iget v4, v3, Lcom/android/server/am/ServiceRecord;->foregroundServiceType:I

    or-int/2addr v1, v4

    .line 2522
    .end local v3    # "sr":Lcom/android/server/am/ServiceRecord;
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 2529
    .end local v2    # "i":I
    :cond_2
    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, p1, Lcom/android/server/am/ProcessServiceRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v2, v3, v0, v1, p2}, Lcom/android/server/am/ActivityManagerService;->updateProcessForegroundLocked(Lcom/android/server/am/ProcessRecord;ZIZ)V

    .line 2530
    return-void
.end method

.method private withinFgsDeferRateLimit(Lcom/android/server/am/ServiceRecord;J)Z
    .locals 5
    .param p1, "sr"    # Lcom/android/server/am/ServiceRecord;
    .param p2, "now"    # J

    .line 1980
    iget-wide v0, p1, Lcom/android/server/am/ServiceRecord;->fgDisplayTime:J

    cmp-long v0, p2, v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    .line 1985
    return v1

    .line 1988
    :cond_0
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1989
    .local v0, "uid":I
    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mFgsDeferralEligible:Landroid/util/SparseLongArray;

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v0, v3, v4}, Landroid/util/SparseLongArray;->get(IJ)J

    move-result-wide v2

    .line 1996
    .local v2, "eligible":J
    cmp-long v4, p2, v2

    if-gez v4, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method


# virtual methods
.method applyForegroundServiceNotificationLocked(Landroid/app/Notification;Ljava/lang/String;ILjava/lang/String;I)Landroid/app/ActivityManagerInternal$ServiceNotificationPolicy;
    .locals 5
    .param p1, "notification"    # Landroid/app/Notification;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "id"    # I
    .param p4, "pkg"    # Ljava/lang/String;
    .param p5, "userId"    # I

    .line 2002
    if-eqz p2, :cond_0

    .line 2003
    sget-object v0, Landroid/app/ActivityManagerInternal$ServiceNotificationPolicy;->NOT_FOREGROUND_SERVICE:Landroid/app/ActivityManagerInternal$ServiceNotificationPolicy;

    return-object v0

    .line 2012
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActiveServices$ServiceMap;

    .line 2013
    .local v0, "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    if-nez v0, :cond_1

    .line 2015
    sget-object v1, Landroid/app/ActivityManagerInternal$ServiceNotificationPolicy;->NOT_FOREGROUND_SERVICE:Landroid/app/ActivityManagerInternal$ServiceNotificationPolicy;

    return-object v1

    .line 2018
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 2019
    iget-object v2, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ServiceRecord;

    .line 2020
    .local v2, "sr":Lcom/android/server/am/ServiceRecord;
    iget-boolean v3, v2, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    if-eqz v3, :cond_4

    iget v3, v2, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    if-ne p3, v3, :cond_4

    iget-object v3, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 2022
    invoke-virtual {p4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 2024
    goto :goto_1

    .line 2034
    :cond_2
    iget v3, p1, Landroid/app/Notification;->flags:I

    or-int/lit8 v3, v3, 0x40

    iput v3, p1, Landroid/app/Notification;->flags:I

    .line 2035
    iput-object p1, v2, Lcom/android/server/am/ServiceRecord;->foregroundNoti:Landroid/app/Notification;

    .line 2038
    invoke-direct {p0, v2}, Lcom/android/server/am/ActiveServices;->shouldShowFgsNotificationLocked(Lcom/android/server/am/ServiceRecord;)Z

    move-result v3

    .line 2039
    .local v3, "showNow":Z
    if-eqz v3, :cond_3

    .line 2043
    const/4 v4, 0x0

    iput-boolean v4, v2, Lcom/android/server/am/ServiceRecord;->mFgsNotificationDeferred:Z

    .line 2044
    sget-object v4, Landroid/app/ActivityManagerInternal$ServiceNotificationPolicy;->SHOW_IMMEDIATELY:Landroid/app/ActivityManagerInternal$ServiceNotificationPolicy;

    return-object v4

    .line 2054
    :cond_3
    invoke-direct {p0, v2}, Lcom/android/server/am/ActiveServices;->startFgsDeferralTimerLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 2055
    sget-object v4, Landroid/app/ActivityManagerInternal$ServiceNotificationPolicy;->UPDATE_ONLY:Landroid/app/ActivityManagerInternal$ServiceNotificationPolicy;

    return-object v4

    .line 2018
    .end local v2    # "sr":Lcom/android/server/am/ServiceRecord;
    .end local v3    # "showNow":Z
    :cond_4
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2059
    .end local v1    # "i":I
    :cond_5
    sget-object v1, Landroid/app/ActivityManagerInternal$ServiceNotificationPolicy;->NOT_FOREGROUND_SERVICE:Landroid/app/ActivityManagerInternal$ServiceNotificationPolicy;

    return-object v1
.end method

.method attachApplicationLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)Z
    .locals 13
    .param p1, "proc"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "processName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4590
    const/4 v0, 0x0

    .line 4592
    .local v0, "didSomething":Z
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 4593
    const/4 v1, 0x0

    .line 4595
    .local v1, "sr":Lcom/android/server/am/ServiceRecord;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 4596
    iget-object v3, p0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ServiceRecord;

    move-object v1, v3

    .line 4597
    iget-object v3, v1, Lcom/android/server/am/ServiceRecord;->isolatedProc:Lcom/android/server/am/ProcessRecord;

    const/4 v12, 0x1

    if-eq p1, v3, :cond_0

    iget v3, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v4, v1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v3, v4, :cond_2

    iget-object v3, v1, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    .line 4598
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 4599
    goto :goto_1

    .line 4602
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v7

    .line 4603
    .local v7, "thread":Landroid/app/IApplicationThread;
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v8

    .line 4604
    .local v8, "pid":I
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getUidRecord()Lcom/android/server/am/UidRecord;

    move-result-object v9

    .line 4605
    .local v9, "uidRecord":Lcom/android/server/am/UidRecord;
    iget-object v3, p0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 4606
    add-int/lit8 v2, v2, -0x1

    .line 4607
    iget-object v3, v1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-wide v4, v4, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    iget-object v6, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {p1, v3, v4, v5, v6}, Lcom/android/server/am/ProcessRecord;->addPackage(Ljava/lang/String;JLcom/android/server/am/ProcessStatsService;)Z

    .line 4609
    iget-boolean v10, v1, Lcom/android/server/am/ServiceRecord;->createdFromFg:Z

    const/4 v11, 0x1

    move-object v4, p0

    move-object v5, v1

    move-object v6, p1

    invoke-direct/range {v4 .. v11}, Lcom/android/server/am/ActiveServices;->realStartServiceLocked(Lcom/android/server/am/ServiceRecord;Lcom/android/server/am/ProcessRecord;Landroid/app/IApplicationThread;ILcom/android/server/am/UidRecord;ZZ)V

    .line 4611
    const/4 v0, 0x1

    .line 4612
    const/4 v3, 0x0

    invoke-direct {p0, v1, v3, v3}, Lcom/android/server/am/ActiveServices;->isServiceNeededLocked(Lcom/android/server/am/ServiceRecord;ZZ)Z

    move-result v3

    if-nez v3, :cond_1

    .line 4617
    invoke-direct {p0, v1, v12}, Lcom/android/server/am/ActiveServices;->bringDownServiceLocked(Lcom/android/server/am/ServiceRecord;Z)V

    .line 4620
    :cond_1
    iget-object v3, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v4, "updateOomAdj_startService"

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjPendingTargetsLocked(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4595
    .end local v7    # "thread":Landroid/app/IApplicationThread;
    .end local v8    # "pid":I
    .end local v9    # "uidRecord":Lcom/android/server/am/UidRecord;
    :cond_2
    :goto_1
    add-int/2addr v2, v12

    goto :goto_0

    .line 4626
    .end local v2    # "i":I
    :cond_3
    goto :goto_2

    .line 4622
    :catch_0
    move-exception v2

    .line 4623
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in new application when starting service "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ActivityManager"

    invoke-static {v4, v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4625
    throw v2

    .line 4632
    .end local v1    # "sr":Lcom/android/server/am/ServiceRecord;
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_4
    :goto_2
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_7

    .line 4634
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_7

    .line 4635
    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ServiceRecord;

    .line 4636
    .local v2, "sr":Lcom/android/server/am/ServiceRecord;
    iget-object v3, v2, Lcom/android/server/am/ServiceRecord;->isolatedProc:Lcom/android/server/am/ProcessRecord;

    if-eq p1, v3, :cond_5

    iget v3, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v4, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v3, v4, :cond_6

    iget-object v3, v2, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    .line 4637
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 4638
    goto :goto_4

    .line 4640
    :cond_5
    iget-object v3, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object v4, v2, Lcom/android/server/am/ServiceRecord;->restarter:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityManagerService$MainHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4641
    iget-object v3, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object v4, v2, Lcom/android/server/am/ServiceRecord;->restarter:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityManagerService$MainHandler;->post(Ljava/lang/Runnable;)Z

    .line 4634
    :cond_6
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 4644
    .end local v1    # "i":I
    .end local v2    # "sr":Lcom/android/server/am/ServiceRecord;
    :cond_7
    return v0
.end method

.method bindServiceLocked(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;Landroid/app/IServiceConnection;ILjava/lang/String;Ljava/lang/String;I)I
    .locals 49
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "service"    # Landroid/content/Intent;
    .param p4, "resolvedType"    # Ljava/lang/String;
    .param p5, "connection"    # Landroid/app/IServiceConnection;
    .param p6, "flags"    # I
    .param p7, "instanceName"    # Ljava/lang/String;
    .param p8, "callingPackage"    # Ljava/lang/String;
    .param p9, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/TransactionTooLargeException;
        }
    .end annotation

    .line 2615
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v13, p2

    move-object/from16 v0, p3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v10

    .line 2616
    .local v10, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v27

    .line 2617
    .local v27, "callingUid":I
    iget-object v1, v15, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1, v14}, Lcom/android/server/am/ActivityManagerService;->getRecordForAppLOSP(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;

    move-result-object v9

    .line 2618
    .local v9, "callerApp":Lcom/android/server/am/ProcessRecord;
    const-string v1, " (pid="

    if-eqz v9, :cond_2d

    .line 2625
    const/4 v2, 0x0

    .line 2626
    .local v2, "activity":Lcom/android/server/wm/ActivityServiceConnectionsHolder;, "Lcom/android/server/wm/ActivityServiceConnectionsHolder<Lcom/android/server/am/ConnectionRecord;>;"
    const-string v8, "ActivityManager"

    const/4 v7, 0x0

    if-eqz v13, :cond_1

    .line 2627
    iget-object v3, v15, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v3, v13}, Lcom/android/server/wm/ActivityTaskManagerInternal;->getServiceConnectionsHolder(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityServiceConnectionsHolder;

    move-result-object v2

    .line 2628
    if-nez v2, :cond_0

    .line 2629
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Binding with unknown activity: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2630
    return v7

    .line 2628
    :cond_0
    move-object v6, v2

    goto :goto_0

    .line 2626
    :cond_1
    move-object v6, v2

    .line 2634
    .end local v2    # "activity":Lcom/android/server/wm/ActivityServiceConnectionsHolder;, "Lcom/android/server/wm/ActivityServiceConnectionsHolder<Lcom/android/server/am/ConnectionRecord;>;"
    .local v6, "activity":Lcom/android/server/wm/ActivityServiceConnectionsHolder;, "Lcom/android/server/wm/ActivityServiceConnectionsHolder<Lcom/android/server/am/ConnectionRecord;>;"
    :goto_0
    const/4 v2, 0x0

    .line 2635
    .local v2, "clientLabel":I
    const/4 v3, 0x0

    .line 2636
    .local v3, "clientIntent":Landroid/app/PendingIntent;
    iget-object v4, v9, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v5, 0x3e8

    const/4 v12, 0x1

    if-ne v4, v5, :cond_2

    move v4, v12

    goto :goto_1

    :cond_2
    move v4, v7

    :goto_1
    move/from16 v28, v4

    .line 2638
    .local v28, "isCallerSystem":Z
    if-eqz v28, :cond_5

    .line 2642
    invoke-virtual {v0, v12}, Landroid/content/Intent;->setDefusable(Z)V

    .line 2643
    const-string v4, "android.intent.extra.client_intent"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    move-object v3, v4

    check-cast v3, Landroid/app/PendingIntent;

    .line 2644
    if-eqz v3, :cond_4

    .line 2645
    const-string v4, "android.intent.extra.client_label"

    invoke-virtual {v0, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 2646
    if-eqz v2, :cond_3

    .line 2650
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->cloneFilter()Landroid/content/Intent;

    move-result-object v0

    move-object v5, v0

    move/from16 v29, v2

    move-object/from16 v30, v3

    .end local p3    # "service":Landroid/content/Intent;
    .local v0, "service":Landroid/content/Intent;
    goto :goto_2

    .line 2646
    .end local v0    # "service":Landroid/content/Intent;
    .restart local p3    # "service":Landroid/content/Intent;
    :cond_3
    move-object v5, v0

    move/from16 v29, v2

    move-object/from16 v30, v3

    goto :goto_2

    .line 2644
    :cond_4
    move-object v5, v0

    move/from16 v29, v2

    move-object/from16 v30, v3

    goto :goto_2

    .line 2638
    :cond_5
    move-object v5, v0

    move/from16 v29, v2

    move-object/from16 v30, v3

    .line 2655
    .end local v2    # "clientLabel":I
    .end local v3    # "clientIntent":Landroid/app/PendingIntent;
    .end local p3    # "service":Landroid/content/Intent;
    .local v5, "service":Landroid/content/Intent;
    .local v29, "clientLabel":I
    .local v30, "clientIntent":Landroid/app/PendingIntent;
    :goto_2
    const/high16 v0, 0x8000000

    and-int v2, p6, v0

    if-eqz v2, :cond_6

    .line 2656
    iget-object v2, v15, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    const-string v3, "android.permission.MANAGE_ACTIVITY_TASKS"

    const-string v4, "BIND_TREAT_LIKE_ACTIVITY"

    invoke-virtual {v2, v3, v4}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2660
    :cond_6
    const/high16 v2, 0x80000

    and-int v2, p6, v2

    if-eqz v2, :cond_8

    if-eqz v28, :cond_7

    goto :goto_3

    .line 2661
    :cond_7
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Non-system caller (pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") set BIND_SCHEDULE_LIKE_TOP_APP when binding service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2665
    :cond_8
    :goto_3
    const/high16 v31, 0x1000000

    and-int v2, p6, v31

    const-string v3, "Non-system caller "

    if-eqz v2, :cond_a

    if-eqz v28, :cond_9

    goto :goto_4

    .line 2666
    :cond_9
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") set BIND_ALLOW_WHITELIST_MANAGEMENT when binding service "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2671
    :cond_a
    :goto_4
    const/high16 v2, 0x400000

    and-int v4, p6, v2

    if-eqz v4, :cond_c

    if-eqz v28, :cond_b

    goto :goto_5

    .line 2672
    :cond_b
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") set BIND_ALLOW_INSTANT when binding service "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2677
    :cond_c
    :goto_5
    const/high16 v32, 0x100000

    and-int v1, p6, v32

    if-eqz v1, :cond_d

    .line 2678
    iget-object v1, v15, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    const-string v3, "android.permission.START_ACTIVITIES_FROM_BACKGROUND"

    const-string v4, "BIND_ALLOW_BACKGROUND_ACTIVITY_STARTS"

    invoke-virtual {v1, v3, v4}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2683
    :cond_d
    const/high16 v1, 0x40000

    and-int v1, p6, v1

    if-eqz v1, :cond_e

    .line 2684
    iget-object v1, v15, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    const-string v3, "android.permission.START_FOREGROUND_SERVICES_FROM_BACKGROUND"

    const-string v4, "BIND_ALLOW_FOREGROUND_SERVICE_STARTS_FROM_BACKGROUND"

    invoke-virtual {v1, v3, v4}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2689
    :cond_e
    iget-object v1, v9, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessStateRecord;->getSetSchedGroup()I

    move-result v1

    if-eqz v1, :cond_f

    move v1, v12

    goto :goto_6

    :cond_f
    move v1, v7

    :goto_6
    move v4, v1

    .line 2691
    .local v4, "callerFg":Z
    const/high16 v1, -0x80000000

    and-int v1, p6, v1

    if-eqz v1, :cond_10

    move v11, v12

    goto :goto_7

    :cond_10
    move v11, v7

    .line 2692
    .local v11, "isBindExternal":Z
    :goto_7
    and-int v1, p6, v2

    if-eqz v1, :cond_11

    move v1, v12

    goto :goto_8

    :cond_11
    move v1, v7

    :goto_8
    move v3, v12

    move v12, v1

    .line 2694
    .local v12, "allowInstant":Z
    const/16 v16, 0x1

    .line 2695
    move-object/from16 v1, p0

    move-object v2, v5

    move-object/from16 v3, p7

    move/from16 p3, v4

    .end local v4    # "callerFg":Z
    .local p3, "callerFg":Z
    move-object/from16 v4, p4

    move-object/from16 v33, v5

    .end local v5    # "service":Landroid/content/Intent;
    .local v33, "service":Landroid/content/Intent;
    move-object/from16 v5, p8

    move-object/from16 v34, v6

    .end local v6    # "activity":Lcom/android/server/wm/ActivityServiceConnectionsHolder;, "Lcom/android/server/wm/ActivityServiceConnectionsHolder<Lcom/android/server/am/ConnectionRecord;>;"
    .local v34, "activity":Lcom/android/server/wm/ActivityServiceConnectionsHolder;, "Lcom/android/server/wm/ActivityServiceConnectionsHolder<Lcom/android/server/am/ConnectionRecord;>;"
    move v6, v10

    move v0, v7

    move/from16 v7, v27

    move-object/from16 v35, v8

    move/from16 v8, p9

    move-object/from16 v36, v9

    .end local v9    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .local v36, "callerApp":Lcom/android/server/am/ProcessRecord;
    move/from16 v9, v16

    move/from16 v37, v10

    .end local v10    # "callingPid":I
    .local v37, "callingPid":I
    move/from16 v10, p3

    invoke-direct/range {v1 .. v12}, Lcom/android/server/am/ActiveServices;->retrieveServiceLocked(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZZZZ)Lcom/android/server/am/ActiveServices$ServiceLookupResult;

    move-result-object v10

    .line 2698
    .local v10, "res":Lcom/android/server/am/ActiveServices$ServiceLookupResult;
    if-nez v10, :cond_12

    .line 2699
    return v0

    .line 2701
    :cond_12
    iget-object v1, v10, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->record:Lcom/android/server/am/ServiceRecord;

    if-nez v1, :cond_13

    .line 2702
    const/4 v0, -0x1

    return v0

    .line 2704
    :cond_13
    iget-object v9, v10, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->record:Lcom/android/server/am/ServiceRecord;

    .line 2708
    .local v9, "s":Lcom/android/server/am/ServiceRecord;
    const/16 v17, 0x0

    const/16 v20, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x1

    move-object/from16 v13, p0

    move-object v8, v14

    move-object v14, v9

    move-object v7, v15

    move-object/from16 v15, v33

    move-object/from16 v16, p8

    move/from16 v18, v27

    move/from16 v19, v37

    move/from16 v21, p3

    move/from16 v22, p9

    move-object/from16 v26, p5

    invoke-direct/range {v13 .. v26}, Lcom/android/server/am/ActiveServices;->deferServiceBringupIfFrozenLocked(Lcom/android/server/am/ServiceRecord;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;IIZZIZLandroid/os/IBinder;ZLandroid/app/IServiceConnection;)Z

    move-result v23

    .line 2715
    .local v23, "packageFrozen":Z
    if-nez v23, :cond_14

    const/4 v4, 0x0

    const/4 v13, 0x1

    .line 2716
    move-object/from16 v1, p0

    move-object v2, v9

    move-object/from16 v3, p8

    move/from16 v5, v27

    move-object/from16 v6, v33

    move-object v15, v7

    move/from16 v7, p3

    move-object v14, v8

    move/from16 v8, p9

    move-object/from16 v38, v9

    .end local v9    # "s":Lcom/android/server/am/ServiceRecord;
    .local v38, "s":Lcom/android/server/am/ServiceRecord;
    move v9, v13

    move-object/from16 v24, v10

    .end local v10    # "res":Lcom/android/server/am/ActiveServices$ServiceLookupResult;
    .local v24, "res":Lcom/android/server/am/ActiveServices$ServiceLookupResult;
    move-object/from16 v10, p5

    invoke-direct/range {v1 .. v10}, Lcom/android/server/am/ActiveServices;->requestStartTargetPermissionsReviewIfNeededLocked(Lcom/android/server/am/ServiceRecord;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Intent;ZIZLandroid/app/IServiceConnection;)Z

    move-result v1

    if-nez v1, :cond_15

    const/4 v6, 0x1

    goto :goto_9

    .line 2715
    .end local v24    # "res":Lcom/android/server/am/ActiveServices$ServiceLookupResult;
    .end local v38    # "s":Lcom/android/server/am/ServiceRecord;
    .restart local v9    # "s":Lcom/android/server/am/ServiceRecord;
    .restart local v10    # "res":Lcom/android/server/am/ActiveServices$ServiceLookupResult;
    :cond_14
    move-object v15, v7

    move-object v14, v8

    move-object/from16 v38, v9

    move-object/from16 v24, v10

    .line 2716
    .end local v9    # "s":Lcom/android/server/am/ServiceRecord;
    .end local v10    # "res":Lcom/android/server/am/ActiveServices$ServiceLookupResult;
    .restart local v24    # "res":Lcom/android/server/am/ActiveServices$ServiceLookupResult;
    .restart local v38    # "s":Lcom/android/server/am/ServiceRecord;
    :cond_15
    move v6, v0

    .line 2719
    .local v6, "permissionsReviewRequired":Z
    :goto_9
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    .line 2722
    .local v9, "origId":J
    move-object/from16 v8, v36

    .end local v36    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .local v8, "callerApp":Lcom/android/server/am/ProcessRecord;
    :try_start_0
    iget-object v1, v8, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_13

    move-object/from16 v7, v38

    .end local v38    # "s":Lcom/android/server/am/ServiceRecord;
    .local v7, "s":Lcom/android/server/am/ServiceRecord;
    :try_start_1
    invoke-direct {v15, v7, v1, v0}, Lcom/android/server/am/ActiveServices;->unscheduleServiceRestartLocked(Lcom/android/server/am/ServiceRecord;IZ)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_12

    .line 2727
    and-int/lit8 v1, p6, 0x1

    if-eqz v1, :cond_18

    .line 2728
    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, v7, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    .line 2729
    invoke-virtual {v7}, Lcom/android/server/am/ServiceRecord;->hasAutoCreateConnections()Z

    move-result v1

    if-nez v1, :cond_17

    .line 2731
    invoke-virtual {v7}, Lcom/android/server/am/ServiceRecord;->getTracker()Lcom/android/internal/app/procstats/ServiceState;

    move-result-object v1

    .line 2732
    .local v1, "stracker":Lcom/android/internal/app/procstats/ServiceState;
    if-eqz v1, :cond_16

    .line 2733
    iget-object v2, v15, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v2

    iget-wide v3, v7, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    const/4 v5, 0x1

    invoke-virtual {v1, v5, v2, v3, v4}, Lcom/android/internal/app/procstats/ServiceState;->setBound(ZIJ)V

    goto :goto_a

    .line 2732
    :cond_16
    const/4 v5, 0x1

    goto :goto_a

    .line 2729
    .end local v1    # "stracker":Lcom/android/internal/app/procstats/ServiceState;
    :cond_17
    const/4 v5, 0x1

    goto :goto_a

    .line 2854
    :catchall_0
    move-exception v0

    move/from16 v4, p3

    move/from16 v14, p9

    move-object v13, v8

    move-object v2, v15

    move-object/from16 v25, v33

    move-object/from16 v8, p8

    goto/16 :goto_19

    .line 2727
    :cond_18
    const/4 v5, 0x1

    .line 2739
    :goto_a
    const/high16 v1, 0x200000

    and-int v1, p6, v1

    if-eqz v1, :cond_19

    .line 2740
    iget-object v1, v15, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v7, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityManagerService;->requireAllowedAssociationsLocked(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2743
    :cond_19
    :try_start_3
    iget-object v1, v15, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget v2, v8, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v3, v8, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object v4, v8, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 2744
    invoke-virtual {v4}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v41

    iget-object v4, v7, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v13, v7, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_12

    move/from16 v25, v6

    .end local v6    # "permissionsReviewRequired":Z
    .local v25, "permissionsReviewRequired":Z
    :try_start_4
    iget-wide v5, v13, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    iget-object v13, v7, Lcom/android/server/am/ServiceRecord;->instanceName:Landroid/content/ComponentName;

    iget-object v0, v7, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    .line 2743
    move-object/from16 v38, v1

    move/from16 v39, v2

    move-object/from16 v40, v3

    move/from16 v42, v4

    move-wide/from16 v43, v5

    move-object/from16 v45, v13

    move-object/from16 v46, v0

    invoke-virtual/range {v38 .. v46}, Lcom/android/server/am/ActivityManagerService;->startAssociationLocked(ILjava/lang/String;IIJLandroid/content/ComponentName;Ljava/lang/String;)Lcom/android/server/am/ActivityManagerService$Association;

    .line 2748
    iget-object v0, v15, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget v1, v8, Lcom/android/server/am/ProcessRecord;->userId:I

    iget v2, v8, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v3, v7, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 2749
    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_11

    .line 2748
    move-object/from16 v6, v33

    .end local v33    # "service":Landroid/content/Intent;
    .local v6, "service":Landroid/content/Intent;
    :try_start_5
    invoke-virtual {v0, v1, v6, v2, v3}, Lcom/android/server/am/ActivityManagerService;->grantImplicitAccess(ILandroid/content/Intent;II)V

    .line 2751
    invoke-virtual {v7, v6, v8}, Lcom/android/server/am/ServiceRecord;->retrieveAppBindingLocked(Landroid/content/Intent;Lcom/android/server/am/ProcessRecord;)Lcom/android/server/am/AppBindRecord;

    move-result-object v0

    move-object v5, v0

    .line 2752
    .local v5, "b":Lcom/android/server/am/AppBindRecord;
    new-instance v0, Lcom/android/server/am/ConnectionRecord;

    iget v1, v8, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v2, v8, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_10

    move-object v13, v0

    move-object v4, v14

    move-object v14, v5

    move-object v3, v15

    move-object/from16 v15, v34

    move-object/from16 v16, p5

    move/from16 v17, p6

    move/from16 v18, v29

    move-object/from16 v19, v30

    move/from16 v20, v1

    move-object/from16 v21, v2

    move-object/from16 v22, p8

    :try_start_6
    invoke-direct/range {v13 .. v22}, Lcom/android/server/am/ConnectionRecord;-><init>(Lcom/android/server/am/AppBindRecord;Lcom/android/server/wm/ActivityServiceConnectionsHolder;Landroid/app/IServiceConnection;IILandroid/app/PendingIntent;ILjava/lang/String;Ljava/lang/String;)V

    move-object v15, v0

    .line 2756
    .local v15, "c":Lcom/android/server/am/ConnectionRecord;
    invoke-interface/range {p5 .. p5}, Landroid/app/IServiceConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    move-object v14, v0

    .line 2757
    .local v14, "binder":Landroid/os/IBinder;
    invoke-virtual {v7, v14, v15}, Lcom/android/server/am/ServiceRecord;->addConnection(Landroid/os/IBinder;Lcom/android/server/am/ConnectionRecord;)V

    .line 2758
    iget-object v0, v5, Lcom/android/server/am/AppBindRecord;->connections:Landroid/util/ArraySet;

    invoke-virtual {v0, v15}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_f

    .line 2759
    move-object/from16 v13, v34

    .end local v34    # "activity":Lcom/android/server/wm/ActivityServiceConnectionsHolder;, "Lcom/android/server/wm/ActivityServiceConnectionsHolder<Lcom/android/server/am/ConnectionRecord;>;"
    .local v13, "activity":Lcom/android/server/wm/ActivityServiceConnectionsHolder;, "Lcom/android/server/wm/ActivityServiceConnectionsHolder<Lcom/android/server/am/ConnectionRecord;>;"
    if-eqz v13, :cond_1a

    .line 2760
    :try_start_7
    invoke-virtual {v13, v15}, Lcom/android/server/wm/ActivityServiceConnectionsHolder;->addConnection(Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_b

    .line 2854
    .end local v5    # "b":Lcom/android/server/am/AppBindRecord;
    .end local v14    # "binder":Landroid/os/IBinder;
    .end local v15    # "c":Lcom/android/server/am/ConnectionRecord;
    :catchall_1
    move-exception v0

    move/from16 v4, p3

    move/from16 v14, p9

    move-object v2, v3

    move-object/from16 v34, v13

    move-object v13, v8

    move-object/from16 v8, p8

    move/from16 v48, v25

    move-object/from16 v25, v6

    move/from16 v6, v48

    goto/16 :goto_19

    .line 2762
    .restart local v5    # "b":Lcom/android/server/am/AppBindRecord;
    .restart local v14    # "binder":Landroid/os/IBinder;
    .restart local v15    # "c":Lcom/android/server/am/ConnectionRecord;
    :cond_1a
    :goto_b
    :try_start_8
    iget-object v0, v5, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    move-object v2, v0

    .line 2763
    .local v2, "clientPsr":Lcom/android/server/am/ProcessServiceRecord;
    invoke-virtual {v2, v15}, Lcom/android/server/am/ProcessServiceRecord;->addConnection(Lcom/android/server/am/ConnectionRecord;)V

    .line 2764
    invoke-virtual {v15}, Lcom/android/server/am/ConnectionRecord;->startAssociationIfNeeded()V

    .line 2765
    iget v0, v15, Lcom/android/server/am/ConnectionRecord;->flags:I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_e

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_1b

    .line 2766
    const/4 v1, 0x1

    :try_start_9
    invoke-virtual {v2, v1}, Lcom/android/server/am/ProcessServiceRecord;->setHasAboveClient(Z)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 2768
    :cond_1b
    :try_start_a
    iget v0, v15, Lcom/android/server/am/ConnectionRecord;->flags:I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_e

    and-int v0, v0, v31

    if-eqz v0, :cond_1c

    .line 2769
    const/4 v1, 0x1

    :try_start_b
    iput-boolean v1, v7, Lcom/android/server/am/ServiceRecord;->allowlistManager:Z

    .line 2771
    :cond_1c
    and-int v0, p6, v32

    if-eqz v0, :cond_1d

    .line 2772
    const/4 v1, 0x1

    invoke-virtual {v7, v1}, Lcom/android/server/am/ServiceRecord;->setAllowedBgActivityStartsByBinding(Z)V

    .line 2775
    :cond_1d
    const v0, 0x8000

    and-int v0, p6, v0

    if-eqz v0, :cond_1e

    .line 2776
    const/4 v1, 0x1

    iput-boolean v1, v7, Lcom/android/server/am/ServiceRecord;->isNotAppComponentUsage:Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 2779
    :cond_1e
    :try_start_c
    iget-object v0, v7, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_e

    if-eqz v0, :cond_1f

    .line 2780
    :try_start_d
    iget-object v0, v7, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    const/4 v1, 0x1

    invoke-direct {v3, v0, v15, v1}, Lcom/android/server/am/ActiveServices;->updateServiceClientActivitiesLocked(Lcom/android/server/am/ProcessServiceRecord;Lcom/android/server/am/ConnectionRecord;Z)Z
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    goto :goto_c

    .line 2779
    :cond_1f
    const/4 v1, 0x1

    .line 2782
    :goto_c
    :try_start_e
    iget-object v0, v3, Lcom/android/server/am/ActiveServices;->mServiceConnections:Landroid/util/ArrayMap;

    invoke-virtual {v0, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_e

    .line 2783
    .local v0, "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    if-nez v0, :cond_20

    .line 2784
    :try_start_f
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v16

    .line 2785
    iget-object v1, v3, Lcom/android/server/am/ActiveServices;->mServiceConnections:Landroid/util/ArrayMap;

    invoke-virtual {v1, v14, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    move-object v1, v0

    goto :goto_d

    .line 2783
    :cond_20
    move-object v1, v0

    .line 2787
    .end local v0    # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .local v1, "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    :goto_d
    :try_start_10
    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_e

    .line 2789
    const/4 v0, 0x0

    .line 2790
    .local v0, "needOomAdj":Z
    and-int/lit8 v16, p6, 0x1

    move-object/from16 v36, v8

    .end local v8    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .restart local v36    # "callerApp":Lcom/android/server/am/ProcessRecord;
    const-string/jumbo v8, "updateOomAdj_bindService"

    if-eqz v16, :cond_22

    .line 2791
    move/from16 v17, v0

    move-object/from16 v16, v1

    .end local v0    # "needOomAdj":Z
    .end local v1    # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .local v16, "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .local v17, "needOomAdj":Z
    :try_start_11
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, v7, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    .line 2792
    const/4 v0, 0x1

    .line 2793
    .end local v17    # "needOomAdj":Z
    .restart local v0    # "needOomAdj":Z
    invoke-virtual {v6}, Landroid/content/Intent;->getFlags()I

    move-result v17
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    const/16 v18, 0x0

    const/16 v19, 0x1

    move-object/from16 v21, v16

    const/16 v16, 0x1

    .end local v16    # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .local v21, "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    move-object/from16 v1, p0

    move-object/from16 v22, v2

    .end local v2    # "clientPsr":Lcom/android/server/am/ProcessServiceRecord;
    .local v22, "clientPsr":Lcom/android/server/am/ProcessServiceRecord;
    move-object v2, v7

    move/from16 v3, v17

    move/from16 v4, p3

    move-object/from16 v47, v5

    .end local v5    # "b":Lcom/android/server/am/AppBindRecord;
    .local v47, "b":Lcom/android/server/am/AppBindRecord;
    move/from16 v5, v18

    move-object/from16 v38, v7

    .end local v7    # "s":Lcom/android/server/am/ServiceRecord;
    .restart local v38    # "s":Lcom/android/server/am/ServiceRecord;
    move/from16 v7, v23

    move/from16 v16, v0

    move-object v0, v8

    move-object/from16 v31, v36

    .end local v0    # "needOomAdj":Z
    .end local v36    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .local v16, "needOomAdj":Z
    .local v31, "callerApp":Lcom/android/server/am/ProcessRecord;
    move/from16 v8, v19

    move/from16 v48, v25

    move-object/from16 v25, v6

    move/from16 v6, v48

    .local v6, "permissionsReviewRequired":Z
    .local v25, "service":Landroid/content/Intent;
    :try_start_12
    invoke-direct/range {v1 .. v8}, Lcom/android/server/am/ActiveServices;->bringUpServiceLocked(Lcom/android/server/am/ServiceRecord;IZZZZZ)Ljava/lang/String;

    move-result-object v1
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    if-eqz v1, :cond_21

    .line 2795
    move-object/from16 v2, p0

    :try_start_13
    iget-object v1, v2, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjPendingTargetsLocked(Ljava/lang/String;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    .line 2796
    nop

    .line 2854
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2796
    const/4 v0, 0x0

    return v0

    .line 2854
    .end local v14    # "binder":Landroid/os/IBinder;
    .end local v15    # "c":Lcom/android/server/am/ConnectionRecord;
    .end local v16    # "needOomAdj":Z
    .end local v21    # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .end local v22    # "clientPsr":Lcom/android/server/am/ProcessServiceRecord;
    .end local v47    # "b":Lcom/android/server/am/AppBindRecord;
    :catchall_2
    move-exception v0

    goto :goto_e

    .line 2793
    .restart local v14    # "binder":Landroid/os/IBinder;
    .restart local v15    # "c":Lcom/android/server/am/ConnectionRecord;
    .restart local v16    # "needOomAdj":Z
    .restart local v21    # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .restart local v22    # "clientPsr":Lcom/android/server/am/ProcessServiceRecord;
    .restart local v47    # "b":Lcom/android/server/am/AppBindRecord;
    :cond_21
    move-object/from16 v2, p0

    move/from16 v1, v16

    goto :goto_f

    .line 2854
    .end local v14    # "binder":Landroid/os/IBinder;
    .end local v15    # "c":Lcom/android/server/am/ConnectionRecord;
    .end local v16    # "needOomAdj":Z
    .end local v21    # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .end local v22    # "clientPsr":Lcom/android/server/am/ProcessServiceRecord;
    .end local v47    # "b":Lcom/android/server/am/AppBindRecord;
    :catchall_3
    move-exception v0

    move-object/from16 v2, p0

    :goto_e
    move/from16 v4, p3

    move-object/from16 v8, p8

    move/from16 v14, p9

    move-object/from16 v34, v13

    move-object/from16 v13, v31

    move-object/from16 v7, v38

    goto/16 :goto_19

    .end local v31    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .end local v38    # "s":Lcom/android/server/am/ServiceRecord;
    .local v6, "service":Landroid/content/Intent;
    .restart local v7    # "s":Lcom/android/server/am/ServiceRecord;
    .local v25, "permissionsReviewRequired":Z
    .restart local v36    # "callerApp":Lcom/android/server/am/ProcessRecord;
    :catchall_4
    move-exception v0

    move-object v2, v3

    move/from16 v48, v25

    move-object/from16 v25, v6

    move/from16 v6, v48

    move/from16 v4, p3

    move-object/from16 v8, p8

    move/from16 v14, p9

    move-object/from16 v34, v13

    move-object/from16 v13, v36

    .end local v7    # "s":Lcom/android/server/am/ServiceRecord;
    .end local v36    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .local v6, "permissionsReviewRequired":Z
    .local v25, "service":Landroid/content/Intent;
    .restart local v31    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .restart local v38    # "s":Lcom/android/server/am/ServiceRecord;
    goto/16 :goto_19

    .line 2790
    .end local v31    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .end local v38    # "s":Lcom/android/server/am/ServiceRecord;
    .restart local v0    # "needOomAdj":Z
    .restart local v1    # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .restart local v2    # "clientPsr":Lcom/android/server/am/ProcessServiceRecord;
    .restart local v5    # "b":Lcom/android/server/am/AppBindRecord;
    .local v6, "service":Landroid/content/Intent;
    .restart local v7    # "s":Lcom/android/server/am/ServiceRecord;
    .restart local v14    # "binder":Landroid/os/IBinder;
    .restart local v15    # "c":Lcom/android/server/am/ConnectionRecord;
    .local v25, "permissionsReviewRequired":Z
    .restart local v36    # "callerApp":Lcom/android/server/am/ProcessRecord;
    :cond_22
    move/from16 v17, v0

    move-object/from16 v21, v1

    move-object/from16 v22, v2

    move-object v2, v3

    move-object/from16 v47, v5

    move-object/from16 v38, v7

    move-object v0, v8

    move-object/from16 v31, v36

    move/from16 v48, v25

    move-object/from16 v25, v6

    move/from16 v6, v48

    .end local v0    # "needOomAdj":Z
    .end local v1    # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .end local v2    # "clientPsr":Lcom/android/server/am/ProcessServiceRecord;
    .end local v5    # "b":Lcom/android/server/am/AppBindRecord;
    .end local v7    # "s":Lcom/android/server/am/ServiceRecord;
    .end local v36    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .local v6, "permissionsReviewRequired":Z
    .restart local v17    # "needOomAdj":Z
    .restart local v21    # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .restart local v22    # "clientPsr":Lcom/android/server/am/ProcessServiceRecord;
    .local v25, "service":Landroid/content/Intent;
    .restart local v31    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .restart local v38    # "s":Lcom/android/server/am/ServiceRecord;
    .restart local v47    # "b":Lcom/android/server/am/AppBindRecord;
    move/from16 v1, v17

    .line 2799
    .end local v17    # "needOomAdj":Z
    .local v1, "needOomAdj":Z
    :goto_f
    const/16 v20, 0x0

    move-object v3, v13

    .end local v13    # "activity":Lcom/android/server/wm/ActivityServiceConnectionsHolder;, "Lcom/android/server/wm/ActivityServiceConnectionsHolder<Lcom/android/server/am/ConnectionRecord;>;"
    .local v3, "activity":Lcom/android/server/wm/ActivityServiceConnectionsHolder;, "Lcom/android/server/wm/ActivityServiceConnectionsHolder<Lcom/android/server/am/ConnectionRecord;>;"
    move-object/from16 v13, p0

    move-object v4, v14

    .end local v14    # "binder":Landroid/os/IBinder;
    .local v4, "binder":Landroid/os/IBinder;
    move-object/from16 v14, p8

    move-object v5, v15

    .end local v15    # "c":Lcom/android/server/am/ConnectionRecord;
    .local v5, "c":Lcom/android/server/am/ConnectionRecord;
    move/from16 v15, v37

    move/from16 v16, v27

    move-object/from16 v17, v25

    move-object/from16 v18, v38

    move/from16 v19, p9

    :try_start_14
    invoke-direct/range {v13 .. v20}, Lcom/android/server/am/ActiveServices;->setFgsRestrictionLocked(Ljava/lang/String;IILandroid/content/Intent;Lcom/android/server/am/ServiceRecord;IZ)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_d

    .line 2802
    move-object/from16 v7, v38

    .end local v38    # "s":Lcom/android/server/am/ServiceRecord;
    .restart local v7    # "s":Lcom/android/server/am/ServiceRecord;
    :try_start_15
    iget-object v8, v7, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_c

    if-eqz v8, :cond_28

    .line 2803
    :try_start_16
    iget-object v8, v7, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v8, v8, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_7

    .line 2804
    .local v8, "servicePsr":Lcom/android/server/am/ProcessServiceRecord;
    const/high16 v13, 0x8000000

    and-int v14, p6, v13

    if-eqz v14, :cond_23

    .line 2805
    const/4 v13, 0x1

    :try_start_17
    invoke-virtual {v8, v13}, Lcom/android/server/am/ProcessServiceRecord;->setTreatLikeActivity(Z)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_5

    goto :goto_10

    .line 2854
    .end local v1    # "needOomAdj":Z
    .end local v4    # "binder":Landroid/os/IBinder;
    .end local v5    # "c":Lcom/android/server/am/ConnectionRecord;
    .end local v8    # "servicePsr":Lcom/android/server/am/ProcessServiceRecord;
    .end local v21    # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .end local v22    # "clientPsr":Lcom/android/server/am/ProcessServiceRecord;
    .end local v47    # "b":Lcom/android/server/am/AppBindRecord;
    :catchall_5
    move-exception v0

    move/from16 v4, p3

    move-object/from16 v8, p8

    move/from16 v14, p9

    move-object/from16 v34, v3

    move-object/from16 v13, v31

    goto/16 :goto_19

    .line 2804
    .restart local v1    # "needOomAdj":Z
    .restart local v4    # "binder":Landroid/os/IBinder;
    .restart local v5    # "c":Lcom/android/server/am/ConnectionRecord;
    .restart local v8    # "servicePsr":Lcom/android/server/am/ProcessServiceRecord;
    .restart local v21    # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .restart local v22    # "clientPsr":Lcom/android/server/am/ProcessServiceRecord;
    .restart local v47    # "b":Lcom/android/server/am/AppBindRecord;
    :cond_23
    const/4 v13, 0x1

    .line 2807
    :goto_10
    :try_start_18
    iget-boolean v14, v7, Lcom/android/server/am/ServiceRecord;->allowlistManager:Z
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_7

    if-eqz v14, :cond_24

    .line 2808
    :try_start_19
    iput-boolean v13, v8, Lcom/android/server/am/ProcessServiceRecord;->mAllowlistManager:Z
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_5

    .line 2811
    :cond_24
    :try_start_1a
    iget-object v14, v2, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v15, v7, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual/range {v31 .. v31}, Lcom/android/server/am/ProcessRecord;->hasActivitiesOrRecentTasks()Z

    move-result v16
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_7

    if-eqz v16, :cond_26

    .line 2812
    :try_start_1b
    invoke-virtual {v8}, Lcom/android/server/am/ProcessServiceRecord;->hasClientActivities()Z

    move-result v16
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_5

    if-nez v16, :cond_25

    goto :goto_11

    :cond_25
    move/from16 v16, v1

    move-object/from16 v34, v3

    move-object/from16 v13, v31

    goto :goto_12

    :cond_26
    :goto_11
    move/from16 v16, v1

    move-object/from16 v13, v31

    .end local v1    # "needOomAdj":Z
    .end local v31    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .local v13, "callerApp":Lcom/android/server/am/ProcessRecord;
    .restart local v16    # "needOomAdj":Z
    :try_start_1c
    iget-object v1, v13, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 2813
    invoke-virtual {v1}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v1
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_6

    move-object/from16 v34, v3

    .end local v3    # "activity":Lcom/android/server/wm/ActivityServiceConnectionsHolder;, "Lcom/android/server/wm/ActivityServiceConnectionsHolder<Lcom/android/server/am/ConnectionRecord;>;"
    .restart local v34    # "activity":Lcom/android/server/wm/ActivityServiceConnectionsHolder;, "Lcom/android/server/wm/ActivityServiceConnectionsHolder<Lcom/android/server/am/ConnectionRecord;>;"
    const/4 v3, 0x2

    if-gt v1, v3, :cond_27

    const/high16 v1, 0x8000000

    and-int v1, p6, v1

    if-eqz v1, :cond_27

    :goto_12
    const/4 v1, 0x1

    goto :goto_13

    :cond_27
    const/4 v1, 0x0

    :goto_13
    move-object/from16 v17, v4

    move-object/from16 v3, v47

    .end local v4    # "binder":Landroid/os/IBinder;
    .end local v47    # "b":Lcom/android/server/am/AppBindRecord;
    .local v3, "b":Lcom/android/server/am/AppBindRecord;
    .local v17, "binder":Landroid/os/IBinder;
    :try_start_1d
    iget-object v4, v3, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    .line 2811
    invoke-virtual {v14, v15, v1, v4}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZLcom/android/server/am/ProcessRecord;)V

    .line 2816
    const/4 v1, 0x1

    .line 2817
    .end local v16    # "needOomAdj":Z
    .restart local v1    # "needOomAdj":Z
    iget-object v4, v2, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v14, v7, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v4, v14}, Lcom/android/server/am/ActivityManagerService;->enqueueOomAdjTargetLocked(Lcom/android/server/am/ProcessRecord;)V

    goto :goto_14

    .line 2854
    .end local v1    # "needOomAdj":Z
    .end local v5    # "c":Lcom/android/server/am/ConnectionRecord;
    .end local v8    # "servicePsr":Lcom/android/server/am/ProcessServiceRecord;
    .end local v17    # "binder":Landroid/os/IBinder;
    .end local v21    # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .end local v22    # "clientPsr":Lcom/android/server/am/ProcessServiceRecord;
    .end local v34    # "activity":Lcom/android/server/wm/ActivityServiceConnectionsHolder;, "Lcom/android/server/wm/ActivityServiceConnectionsHolder<Lcom/android/server/am/ConnectionRecord;>;"
    .local v3, "activity":Lcom/android/server/wm/ActivityServiceConnectionsHolder;, "Lcom/android/server/wm/ActivityServiceConnectionsHolder<Lcom/android/server/am/ConnectionRecord;>;"
    :catchall_6
    move-exception v0

    move-object/from16 v34, v3

    move/from16 v4, p3

    move-object/from16 v8, p8

    move/from16 v14, p9

    .end local v3    # "activity":Lcom/android/server/wm/ActivityServiceConnectionsHolder;, "Lcom/android/server/wm/ActivityServiceConnectionsHolder<Lcom/android/server/am/ConnectionRecord;>;"
    .restart local v34    # "activity":Lcom/android/server/wm/ActivityServiceConnectionsHolder;, "Lcom/android/server/wm/ActivityServiceConnectionsHolder<Lcom/android/server/am/ConnectionRecord;>;"
    goto/16 :goto_19

    .end local v13    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .end local v34    # "activity":Lcom/android/server/wm/ActivityServiceConnectionsHolder;, "Lcom/android/server/wm/ActivityServiceConnectionsHolder<Lcom/android/server/am/ConnectionRecord;>;"
    .restart local v3    # "activity":Lcom/android/server/wm/ActivityServiceConnectionsHolder;, "Lcom/android/server/wm/ActivityServiceConnectionsHolder<Lcom/android/server/am/ConnectionRecord;>;"
    .restart local v31    # "callerApp":Lcom/android/server/am/ProcessRecord;
    :catchall_7
    move-exception v0

    move-object/from16 v34, v3

    move-object/from16 v13, v31

    move/from16 v4, p3

    move-object/from16 v8, p8

    move/from16 v14, p9

    .end local v3    # "activity":Lcom/android/server/wm/ActivityServiceConnectionsHolder;, "Lcom/android/server/wm/ActivityServiceConnectionsHolder<Lcom/android/server/am/ConnectionRecord;>;"
    .end local v31    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .restart local v13    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .restart local v34    # "activity":Lcom/android/server/wm/ActivityServiceConnectionsHolder;, "Lcom/android/server/wm/ActivityServiceConnectionsHolder<Lcom/android/server/am/ConnectionRecord;>;"
    goto/16 :goto_19

    .line 2802
    .end local v13    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .end local v34    # "activity":Lcom/android/server/wm/ActivityServiceConnectionsHolder;, "Lcom/android/server/wm/ActivityServiceConnectionsHolder<Lcom/android/server/am/ConnectionRecord;>;"
    .restart local v1    # "needOomAdj":Z
    .restart local v3    # "activity":Lcom/android/server/wm/ActivityServiceConnectionsHolder;, "Lcom/android/server/wm/ActivityServiceConnectionsHolder<Lcom/android/server/am/ConnectionRecord;>;"
    .restart local v4    # "binder":Landroid/os/IBinder;
    .restart local v5    # "c":Lcom/android/server/am/ConnectionRecord;
    .restart local v21    # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .restart local v22    # "clientPsr":Lcom/android/server/am/ProcessServiceRecord;
    .restart local v31    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .restart local v47    # "b":Lcom/android/server/am/AppBindRecord;
    :cond_28
    move/from16 v16, v1

    move-object/from16 v34, v3

    move-object/from16 v17, v4

    move-object/from16 v13, v31

    move-object/from16 v3, v47

    .line 2819
    .end local v4    # "binder":Landroid/os/IBinder;
    .end local v31    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .end local v47    # "b":Lcom/android/server/am/AppBindRecord;
    .local v3, "b":Lcom/android/server/am/AppBindRecord;
    .restart local v13    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .restart local v17    # "binder":Landroid/os/IBinder;
    .restart local v34    # "activity":Lcom/android/server/wm/ActivityServiceConnectionsHolder;, "Lcom/android/server/wm/ActivityServiceConnectionsHolder<Lcom/android/server/am/ConnectionRecord;>;"
    :goto_14
    if-eqz v1, :cond_29

    .line 2820
    iget-object v4, v2, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4, v0}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjPendingTargetsLocked(Ljava/lang/String;)V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_8

    goto :goto_15

    .line 2854
    .end local v1    # "needOomAdj":Z
    .end local v3    # "b":Lcom/android/server/am/AppBindRecord;
    .end local v5    # "c":Lcom/android/server/am/ConnectionRecord;
    .end local v17    # "binder":Landroid/os/IBinder;
    .end local v21    # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .end local v22    # "clientPsr":Lcom/android/server/am/ProcessServiceRecord;
    :catchall_8
    move-exception v0

    move/from16 v4, p3

    move-object/from16 v8, p8

    move/from16 v14, p9

    goto/16 :goto_19

    .line 2828
    .restart local v1    # "needOomAdj":Z
    .restart local v3    # "b":Lcom/android/server/am/AppBindRecord;
    .restart local v5    # "c":Lcom/android/server/am/ConnectionRecord;
    .restart local v17    # "binder":Landroid/os/IBinder;
    .restart local v21    # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .restart local v22    # "clientPsr":Lcom/android/server/am/ProcessServiceRecord;
    :cond_29
    :goto_15
    :try_start_1e
    iget-object v0, v7, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_2b

    iget-object v0, v3, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    iget-boolean v0, v0, Lcom/android/server/am/IntentBindRecord;->received:Z
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_b

    if-eqz v0, :cond_2b

    .line 2832
    :try_start_1f
    iget-object v0, v5, Lcom/android/server/am/ConnectionRecord;->conn:Landroid/app/IServiceConnection;

    iget-object v4, v7, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    iget-object v8, v3, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    iget-object v8, v8, Lcom/android/server/am/IntentBindRecord;->binder:Landroid/os/IBinder;

    const/4 v14, 0x0

    invoke-interface {v0, v4, v8, v14}, Landroid/app/IServiceConnection;->connected(Landroid/content/ComponentName;Landroid/os/IBinder;Z)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_0
    .catchall {:try_start_1f .. :try_end_1f} :catchall_8

    .line 2837
    goto :goto_16

    .line 2833
    :catch_0
    move-exception v0

    .line 2834
    .local v0, "e":Ljava/lang/Exception;
    :try_start_20
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failure sending service "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v7, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " to connection "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v5, Lcom/android/server/am/ConnectionRecord;->conn:Landroid/app/IServiceConnection;

    .line 2835
    invoke-interface {v8}, Landroid/app/IServiceConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " (in "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v5, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v8, v8, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    iget-object v8, v8, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ")"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2834
    move-object/from16 v8, v35

    invoke-static {v8, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2842
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_16
    iget-object v0, v3, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    iget-object v0, v0, Lcom/android/server/am/IntentBindRecord;->apps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_2a

    iget-object v0, v3, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    iget-boolean v0, v0, Lcom/android/server/am/IntentBindRecord;->doRebind:Z

    if-eqz v0, :cond_2a

    .line 2843
    iget-object v0, v3, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_b

    move/from16 v4, p3

    const/4 v8, 0x1

    .end local p3    # "callerFg":Z
    .local v4, "callerFg":Z
    :try_start_21
    invoke-direct {v2, v7, v0, v4, v8}, Lcom/android/server/am/ActiveServices;->requestServiceBindingLocked(Lcom/android/server/am/ServiceRecord;Lcom/android/server/am/IntentBindRecord;ZZ)Z

    goto :goto_17

    .line 2842
    .end local v4    # "callerFg":Z
    .restart local p3    # "callerFg":Z
    :cond_2a
    move/from16 v4, p3

    .end local p3    # "callerFg":Z
    .restart local v4    # "callerFg":Z
    goto :goto_17

    .line 2828
    .end local v4    # "callerFg":Z
    .restart local p3    # "callerFg":Z
    :cond_2b
    move/from16 v4, p3

    .line 2845
    .end local p3    # "callerFg":Z
    .restart local v4    # "callerFg":Z
    iget-object v0, v3, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    iget-boolean v0, v0, Lcom/android/server/am/IntentBindRecord;->requested:Z

    if-nez v0, :cond_2c

    .line 2846
    iget-object v0, v3, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    const/4 v8, 0x0

    invoke-direct {v2, v7, v0, v4, v8}, Lcom/android/server/am/ActiveServices;->requestServiceBindingLocked(Lcom/android/server/am/ServiceRecord;Lcom/android/server/am/IntentBindRecord;ZZ)Z

    .line 2849
    :cond_2c
    :goto_17
    iget-object v0, v13, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_a

    move-object/from16 v8, p8

    move/from16 v14, p9

    :try_start_22
    invoke-direct {v2, v14, v8, v0}, Lcom/android/server/am/ActiveServices;->maybeLogBindCrossProfileService(ILjava/lang/String;I)V

    .line 2851
    iget v0, v7, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-direct {v2, v0}, Lcom/android/server/am/ActiveServices;->getServiceMapLocked(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/android/server/am/ActiveServices$ServiceMap;->ensureNotStartingBackgroundLocked(Lcom/android/server/am/ServiceRecord;)V
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_9

    .line 2854
    .end local v1    # "needOomAdj":Z
    .end local v3    # "b":Lcom/android/server/am/AppBindRecord;
    .end local v5    # "c":Lcom/android/server/am/ConnectionRecord;
    .end local v17    # "binder":Landroid/os/IBinder;
    .end local v21    # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .end local v22    # "clientPsr":Lcom/android/server/am/ProcessServiceRecord;
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2855
    nop

    .line 2857
    const/4 v1, 0x1

    return v1

    .line 2854
    :catchall_9
    move-exception v0

    goto/16 :goto_19

    :catchall_a
    move-exception v0

    move-object/from16 v8, p8

    move/from16 v14, p9

    goto/16 :goto_19

    .end local v4    # "callerFg":Z
    .restart local p3    # "callerFg":Z
    :catchall_b
    move-exception v0

    move/from16 v4, p3

    move-object/from16 v8, p8

    move/from16 v14, p9

    .end local p3    # "callerFg":Z
    .restart local v4    # "callerFg":Z
    goto/16 :goto_19

    .end local v4    # "callerFg":Z
    .end local v13    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .end local v34    # "activity":Lcom/android/server/wm/ActivityServiceConnectionsHolder;, "Lcom/android/server/wm/ActivityServiceConnectionsHolder<Lcom/android/server/am/ConnectionRecord;>;"
    .local v3, "activity":Lcom/android/server/wm/ActivityServiceConnectionsHolder;, "Lcom/android/server/wm/ActivityServiceConnectionsHolder<Lcom/android/server/am/ConnectionRecord;>;"
    .restart local v31    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .restart local p3    # "callerFg":Z
    :catchall_c
    move-exception v0

    move/from16 v4, p3

    move-object/from16 v8, p8

    move/from16 v14, p9

    move-object/from16 v34, v3

    move-object/from16 v13, v31

    .end local v3    # "activity":Lcom/android/server/wm/ActivityServiceConnectionsHolder;, "Lcom/android/server/wm/ActivityServiceConnectionsHolder<Lcom/android/server/am/ConnectionRecord;>;"
    .end local v31    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .end local p3    # "callerFg":Z
    .restart local v4    # "callerFg":Z
    .restart local v13    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .restart local v34    # "activity":Lcom/android/server/wm/ActivityServiceConnectionsHolder;, "Lcom/android/server/wm/ActivityServiceConnectionsHolder<Lcom/android/server/am/ConnectionRecord;>;"
    goto/16 :goto_19

    .end local v4    # "callerFg":Z
    .end local v7    # "s":Lcom/android/server/am/ServiceRecord;
    .end local v13    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .end local v34    # "activity":Lcom/android/server/wm/ActivityServiceConnectionsHolder;, "Lcom/android/server/wm/ActivityServiceConnectionsHolder<Lcom/android/server/am/ConnectionRecord;>;"
    .restart local v3    # "activity":Lcom/android/server/wm/ActivityServiceConnectionsHolder;, "Lcom/android/server/wm/ActivityServiceConnectionsHolder<Lcom/android/server/am/ConnectionRecord;>;"
    .restart local v31    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .restart local v38    # "s":Lcom/android/server/am/ServiceRecord;
    .restart local p3    # "callerFg":Z
    :catchall_d
    move-exception v0

    move/from16 v4, p3

    move-object/from16 v8, p8

    move/from16 v14, p9

    move-object/from16 v34, v3

    move-object/from16 v13, v31

    move-object/from16 v7, v38

    .end local v3    # "activity":Lcom/android/server/wm/ActivityServiceConnectionsHolder;, "Lcom/android/server/wm/ActivityServiceConnectionsHolder<Lcom/android/server/am/ConnectionRecord;>;"
    .end local v31    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .end local v38    # "s":Lcom/android/server/am/ServiceRecord;
    .end local p3    # "callerFg":Z
    .restart local v4    # "callerFg":Z
    .restart local v7    # "s":Lcom/android/server/am/ServiceRecord;
    .restart local v13    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .restart local v34    # "activity":Lcom/android/server/wm/ActivityServiceConnectionsHolder;, "Lcom/android/server/wm/ActivityServiceConnectionsHolder<Lcom/android/server/am/ConnectionRecord;>;"
    goto/16 :goto_19

    .end local v4    # "callerFg":Z
    .end local v34    # "activity":Lcom/android/server/wm/ActivityServiceConnectionsHolder;, "Lcom/android/server/wm/ActivityServiceConnectionsHolder<Lcom/android/server/am/ConnectionRecord;>;"
    .local v6, "service":Landroid/content/Intent;
    .local v8, "callerApp":Lcom/android/server/am/ProcessRecord;
    .local v13, "activity":Lcom/android/server/wm/ActivityServiceConnectionsHolder;, "Lcom/android/server/wm/ActivityServiceConnectionsHolder<Lcom/android/server/am/ConnectionRecord;>;"
    .local v25, "permissionsReviewRequired":Z
    .restart local p3    # "callerFg":Z
    :catchall_e
    move-exception v0

    move/from16 v4, p3

    move/from16 v14, p9

    move-object v2, v3

    move-object/from16 v34, v13

    move-object v13, v8

    move-object/from16 v8, p8

    move/from16 v48, v25

    move-object/from16 v25, v6

    move/from16 v6, v48

    .end local v8    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .end local p3    # "callerFg":Z
    .restart local v4    # "callerFg":Z
    .local v6, "permissionsReviewRequired":Z
    .local v13, "callerApp":Lcom/android/server/am/ProcessRecord;
    .local v25, "service":Landroid/content/Intent;
    .restart local v34    # "activity":Lcom/android/server/wm/ActivityServiceConnectionsHolder;, "Lcom/android/server/wm/ActivityServiceConnectionsHolder<Lcom/android/server/am/ConnectionRecord;>;"
    goto :goto_19

    .end local v4    # "callerFg":Z
    .end local v13    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .local v6, "service":Landroid/content/Intent;
    .restart local v8    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .local v25, "permissionsReviewRequired":Z
    .restart local p3    # "callerFg":Z
    :catchall_f
    move-exception v0

    move/from16 v4, p3

    move/from16 v14, p9

    move-object v2, v3

    move-object v13, v8

    goto :goto_18

    :catchall_10
    move-exception v0

    move/from16 v4, p3

    move/from16 v14, p9

    move-object v13, v8

    move-object v2, v15

    :goto_18
    move-object/from16 v8, p8

    move/from16 v48, v25

    move-object/from16 v25, v6

    move/from16 v6, v48

    .end local v8    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .end local p3    # "callerFg":Z
    .restart local v4    # "callerFg":Z
    .local v6, "permissionsReviewRequired":Z
    .restart local v13    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .local v25, "service":Landroid/content/Intent;
    goto :goto_19

    .end local v4    # "callerFg":Z
    .end local v6    # "permissionsReviewRequired":Z
    .end local v13    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .restart local v8    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .local v25, "permissionsReviewRequired":Z
    .restart local v33    # "service":Landroid/content/Intent;
    .restart local p3    # "callerFg":Z
    :catchall_11
    move-exception v0

    move/from16 v4, p3

    move/from16 v14, p9

    move-object v13, v8

    move-object v2, v15

    move/from16 v6, v25

    move-object/from16 v25, v33

    move-object/from16 v8, p8

    .end local v8    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .end local v33    # "service":Landroid/content/Intent;
    .end local p3    # "callerFg":Z
    .restart local v4    # "callerFg":Z
    .restart local v6    # "permissionsReviewRequired":Z
    .restart local v13    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .local v25, "service":Landroid/content/Intent;
    goto :goto_19

    .end local v4    # "callerFg":Z
    .end local v13    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .end local v25    # "service":Landroid/content/Intent;
    .restart local v8    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .restart local v33    # "service":Landroid/content/Intent;
    .restart local p3    # "callerFg":Z
    :catchall_12
    move-exception v0

    move/from16 v4, p3

    move/from16 v14, p9

    move-object v13, v8

    move-object v2, v15

    move-object/from16 v25, v33

    move-object/from16 v8, p8

    .end local v8    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .end local v33    # "service":Landroid/content/Intent;
    .end local p3    # "callerFg":Z
    .restart local v4    # "callerFg":Z
    .restart local v13    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .restart local v25    # "service":Landroid/content/Intent;
    goto :goto_19

    .end local v4    # "callerFg":Z
    .end local v7    # "s":Lcom/android/server/am/ServiceRecord;
    .end local v13    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .end local v25    # "service":Landroid/content/Intent;
    .restart local v8    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .restart local v33    # "service":Landroid/content/Intent;
    .restart local v38    # "s":Lcom/android/server/am/ServiceRecord;
    .restart local p3    # "callerFg":Z
    :catchall_13
    move-exception v0

    move/from16 v4, p3

    move/from16 v14, p9

    move-object v13, v8

    move-object v2, v15

    move-object/from16 v25, v33

    move-object/from16 v7, v38

    move-object/from16 v8, p8

    .end local v8    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .end local v33    # "service":Landroid/content/Intent;
    .end local v38    # "s":Lcom/android/server/am/ServiceRecord;
    .end local p3    # "callerFg":Z
    .restart local v4    # "callerFg":Z
    .restart local v7    # "s":Lcom/android/server/am/ServiceRecord;
    .restart local v13    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .restart local v25    # "service":Landroid/content/Intent;
    :goto_19
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2855
    throw v0

    .line 2619
    .end local v4    # "callerFg":Z
    .end local v6    # "permissionsReviewRequired":Z
    .end local v7    # "s":Lcom/android/server/am/ServiceRecord;
    .end local v11    # "isBindExternal":Z
    .end local v12    # "allowInstant":Z
    .end local v13    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .end local v23    # "packageFrozen":Z
    .end local v24    # "res":Lcom/android/server/am/ActiveServices$ServiceLookupResult;
    .end local v25    # "service":Landroid/content/Intent;
    .end local v28    # "isCallerSystem":Z
    .end local v29    # "clientLabel":I
    .end local v30    # "clientIntent":Landroid/app/PendingIntent;
    .end local v34    # "activity":Lcom/android/server/wm/ActivityServiceConnectionsHolder;, "Lcom/android/server/wm/ActivityServiceConnectionsHolder<Lcom/android/server/am/ConnectionRecord;>;"
    .end local v37    # "callingPid":I
    .local v9, "callerApp":Lcom/android/server/am/ProcessRecord;
    .local v10, "callingPid":I
    .local p3, "service":Landroid/content/Intent;
    :cond_2d
    move/from16 v37, v10

    .end local v10    # "callingPid":I
    .restart local v37    # "callingPid":I
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to find app for caller "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, p1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v37

    .end local v37    # "callingPid":I
    .local v1, "callingPid":I
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ") when binding service "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method bringDownDisabledPackageServicesLocked(Ljava/lang/String;Ljava/util/Set;IZZ)Z
    .locals 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "evenPersistent"    # Z
    .param p5, "doit"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;IZZ)Z"
        }
    .end annotation

    .line 4700
    .local p2, "filterByClasses":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 4702
    .local v0, "didSomething":Z
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mTmpCollectionResults:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 4703
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 4706
    :cond_0
    const/4 v1, -0x1

    const/4 v2, 0x1

    if-ne p3, v1, :cond_4

    .line 4707
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_3

    .line 4708
    iget-object v3, p0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    .line 4709
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActiveServices$ServiceMap;

    iget-object v9, v3, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    .line 4708
    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move v7, p4

    move v8, p5

    invoke-direct/range {v4 .. v9}, Lcom/android/server/am/ActiveServices;->collectPackageServicesLocked(Ljava/lang/String;Ljava/util/Set;ZZLandroid/util/ArrayMap;)Z

    move-result v3

    or-int/2addr v0, v3

    .line 4710
    if-nez p5, :cond_1

    if-eqz v0, :cond_1

    .line 4711
    return v2

    .line 4713
    :cond_1
    if-eqz p5, :cond_2

    if-nez p2, :cond_2

    .line 4714
    iget-object v3, p0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActiveServices$ServiceMap;

    iget v3, v3, Lcom/android/server/am/ActiveServices$ServiceMap;->mUserId:I

    invoke-virtual {p0, p1, v3}, Lcom/android/server/am/ActiveServices;->forceStopPackageLocked(Ljava/lang/String;I)V

    .line 4707
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .end local v1    # "i":I
    :cond_3
    goto :goto_1

    .line 4718
    :cond_4
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActiveServices$ServiceMap;

    .line 4719
    .local v1, "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    if-eqz v1, :cond_5

    .line 4720
    iget-object v9, v1, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    .line 4721
    .local v9, "items":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Lcom/android/server/am/ServiceRecord;>;"
    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p4

    move v7, p5

    move-object v8, v9

    invoke-direct/range {v3 .. v8}, Lcom/android/server/am/ActiveServices;->collectPackageServicesLocked(Ljava/lang/String;Ljava/util/Set;ZZLandroid/util/ArrayMap;)Z

    move-result v0

    .line 4724
    .end local v9    # "items":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Lcom/android/server/am/ServiceRecord;>;"
    :cond_5
    if-eqz p5, :cond_6

    if-nez p2, :cond_6

    .line 4725
    invoke-virtual {p0, p1, p3}, Lcom/android/server/am/ActiveServices;->forceStopPackageLocked(Ljava/lang/String;I)V

    .line 4729
    .end local v1    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    :cond_6
    :goto_1
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mTmpCollectionResults:Ljava/util/ArrayList;

    if-eqz v1, :cond_9

    .line 4730
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 4731
    .local v1, "size":I
    add-int/lit8 v3, v1, -0x1

    .local v3, "i":I
    :goto_2
    if-ltz v3, :cond_7

    .line 4732
    iget-object v4, p0, Lcom/android/server/am/ActiveServices;->mTmpCollectionResults:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ServiceRecord;

    invoke-direct {p0, v4, v2}, Lcom/android/server/am/ActiveServices;->bringDownServiceLocked(Lcom/android/server/am/ServiceRecord;Z)V

    .line 4731
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 4734
    .end local v3    # "i":I
    :cond_7
    if-lez v1, :cond_8

    .line 4735
    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v3, "updateOomAdj_unbindService"

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjPendingTargetsLocked(Ljava/lang/String;)V

    .line 4737
    :cond_8
    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mTmpCollectionResults:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 4740
    .end local v1    # "size":I
    :cond_9
    return v0
.end method

.method canAllowWhileInUsePermissionInFgsLocked(IILjava/lang/String;)Z
    .locals 6
    .param p1, "callingPid"    # I
    .param p2, "callingUid"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;

    .line 6315
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p3

    move v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/ActiveServices;->shouldAllowFgsWhileInUsePermissionLocked(Ljava/lang/String;IILcom/android/server/am/ServiceRecord;Z)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method canStartForegroundServiceLocked(IILjava/lang/String;)Z
    .locals 8
    .param p1, "callingPid"    # I
    .param p2, "callingUid"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;

    .line 5837
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerConstants;->mFlagBackgroundFgsStartRestrictionEnabled:Z

    const/4 v6, 0x1

    if-nez v0, :cond_0

    .line 5838
    return v6

    .line 5840
    :cond_0
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p3

    move v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/ActiveServices;->shouldAllowFgsWhileInUsePermissionLocked(Ljava/lang/String;IILcom/android/server/am/ServiceRecord;Z)I

    move-result v7

    .line 5843
    .local v7, "allowWhileInUse":I
    const/4 v5, 0x0

    move v1, v7

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/ActiveServices;->shouldAllowFgsStartForegroundLocked(IIILjava/lang/String;Lcom/android/server/am/ServiceRecord;)I

    move-result v0

    .line 5845
    .local v0, "allowStartFgs":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    :goto_0
    return v6
.end method

.method cleanUpServices(ILandroid/content/ComponentName;Landroid/content/Intent;)V
    .locals 16
    .param p1, "userId"    # I
    .param p2, "component"    # Landroid/content/ComponentName;
    .param p3, "baseIntent"    # Landroid/content/Intent;

    .line 4768
    move-object/from16 v1, p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v0

    .line 4769
    .local v2, "services":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ServiceRecord;>;"
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/ActiveServices;->getServicesLocked(I)Landroid/util/ArrayMap;

    move-result-object v3

    .line 4770
    .local v3, "alls":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Lcom/android/server/am/ServiceRecord;>;"
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v4, 0x1

    sub-int/2addr v0, v4

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 4771
    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ServiceRecord;

    .line 4772
    .local v5, "sr":Lcom/android/server/am/ServiceRecord;
    iget-object v6, v5, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-virtual/range {p2 .. p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 4773
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4770
    .end local v5    # "sr":Lcom/android/server/am/ServiceRecord;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 4778
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    .line 4779
    .local v0, "needOomAdj":Z
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v4

    move v6, v5

    move v5, v0

    .end local v0    # "needOomAdj":Z
    .local v5, "needOomAdj":Z
    .local v6, "i":I
    :goto_1
    if-ltz v6, :cond_4

    .line 4780
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Lcom/android/server/am/ServiceRecord;

    .line 4781
    .local v14, "sr":Lcom/android/server/am/ServiceRecord;
    iget-boolean v0, v14, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    if-eqz v0, :cond_3

    .line 4782
    iget-object v0, v14, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget v0, v0, Landroid/content/pm/ServiceInfo;->flags:I

    and-int/2addr v0, v4

    if-eqz v0, :cond_2

    .line 4783
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Stopping service "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v14, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ": remove task"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v7, "ActivityManager"

    invoke-static {v7, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4784
    const/4 v0, 0x1

    .line 4785
    .end local v5    # "needOomAdj":Z
    .restart local v0    # "needOomAdj":Z
    invoke-direct {v1, v14, v4}, Lcom/android/server/am/ActiveServices;->stopServiceLocked(Lcom/android/server/am/ServiceRecord;Z)V

    move v5, v0

    goto :goto_2

    .line 4787
    .end local v0    # "needOomAdj":Z
    .restart local v5    # "needOomAdj":Z
    :cond_2
    iget-object v0, v14, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    new-instance v15, Lcom/android/server/am/ServiceRecord$StartItem;

    const/4 v9, 0x1

    .line 4788
    invoke-virtual {v14}, Lcom/android/server/am/ServiceRecord;->getLastStartId()I

    move-result v10

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v7, v15

    move-object v8, v14

    move-object/from16 v11, p3

    invoke-direct/range {v7 .. v13}, Lcom/android/server/am/ServiceRecord$StartItem;-><init>(Lcom/android/server/am/ServiceRecord;ZILandroid/content/Intent;Lcom/android/server/uri/NeededUriGrants;I)V

    .line 4787
    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4789
    iget-object v0, v14, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_3

    iget-object v0, v14, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 4793
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {v1, v14, v4, v0}, Lcom/android/server/am/ActiveServices;->sendServiceArgsLocked(Lcom/android/server/am/ServiceRecord;ZZ)V
    :try_end_0
    .catch Landroid/os/TransactionTooLargeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4796
    goto :goto_2

    .line 4794
    :catch_0
    move-exception v0

    .line 4779
    .end local v14    # "sr":Lcom/android/server/am/ServiceRecord;
    :cond_3
    :goto_2
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .line 4801
    .end local v6    # "i":I
    :cond_4
    if-eqz v5, :cond_5

    .line 4802
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v4, "updateOomAdj_unbindService"

    invoke-virtual {v0, v4}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjPendingTargetsLocked(Ljava/lang/String;)V

    .line 4804
    :cond_5
    return-void
.end method

.method protected dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 16
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 5676
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v3, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 5677
    invoke-virtual/range {p1 .. p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    .line 5678
    .local v4, "outterToken":J
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v0}, Lcom/android/server/am/UserController;->getUsers()[I

    move-result-object v0

    .line 5679
    .local v0, "users":[I
    array-length v6, v0

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v6, :cond_2

    aget v8, v0, v7

    .line 5680
    .local v8, "user":I
    iget-object v9, v1, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    invoke-virtual {v9, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/ActiveServices$ServiceMap;

    .line 5681
    .local v9, "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    if-nez v9, :cond_0

    .line 5682
    move-object v15, v0

    goto :goto_2

    .line 5684
    :cond_0
    const-wide v10, 0x20b00000001L

    invoke-virtual {v2, v10, v11}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v10

    .line 5685
    .local v10, "token":J
    const-wide v12, 0x10500000001L

    invoke-virtual {v2, v12, v13, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 5686
    iget-object v12, v9, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    .line 5687
    .local v12, "alls":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Lcom/android/server/am/ServiceRecord;>;"
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_1
    invoke-virtual {v12}, Landroid/util/ArrayMap;->size()I

    move-result v14

    if-ge v13, v14, :cond_1

    .line 5688
    invoke-virtual {v12, v13}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/am/ServiceRecord;

    move-object v15, v0

    .end local v0    # "users":[I
    .local v15, "users":[I
    const-wide v0, 0x20b00000002L

    invoke-virtual {v14, v2, v0, v1}, Lcom/android/server/am/ServiceRecord;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 5687
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v1, p0

    move-object v0, v15

    goto :goto_1

    .end local v15    # "users":[I
    .restart local v0    # "users":[I
    :cond_1
    move-object v15, v0

    .line 5691
    .end local v0    # "users":[I
    .end local v13    # "i":I
    .restart local v15    # "users":[I
    invoke-virtual {v2, v10, v11}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 5679
    .end local v8    # "user":I
    .end local v9    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .end local v10    # "token":J
    .end local v12    # "alls":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Lcom/android/server/am/ServiceRecord;>;"
    :goto_2
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v1, p0

    move-object v0, v15

    goto :goto_0

    .line 5693
    .end local v15    # "users":[I
    .restart local v0    # "users":[I
    :cond_2
    move-object v15, v0

    .end local v0    # "users":[I
    .restart local v15    # "users":[I
    invoke-virtual {v2, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 5694
    .end local v4    # "outterToken":J
    .end local v15    # "users":[I
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 5695
    return-void

    .line 5694
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method protected dumpService(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/lang/String;[I[Ljava/lang/String;IZ)Z
    .locals 14
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "users"    # [I
    .param p5, "args"    # [Ljava/lang/String;
    .param p6, "opti"    # I
    .param p7, "dumpAll"    # Z

    .line 5707
    move-object v8, p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v0

    .line 5709
    .local v9, "services":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ServiceRecord;>;"
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/DumpUtils;->filterRecord(Ljava/lang/String;)Ljava/util/function/Predicate;

    move-result-object v10

    .line 5711
    .local v10, "filter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/am/ServiceRecord;>;"
    iget-object v1, v8, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 5712
    if-nez p4, :cond_0

    .line 5713
    iget-object v0, v8, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v0}, Lcom/android/server/am/UserController;->getUsers()[I

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v11, v0

    .end local p4    # "users":[I
    .local v0, "users":[I
    goto :goto_0

    .line 5712
    .end local v0    # "users":[I
    .restart local p4    # "users":[I
    :cond_0
    move-object/from16 v11, p4

    .line 5716
    .end local p4    # "users":[I
    .local v11, "users":[I
    :goto_0
    :try_start_1
    array-length v0, v11

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    if-ge v3, v0, :cond_4

    aget v4, v11, v3

    .line 5717
    .local v4, "user":I
    iget-object v5, v8, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActiveServices$ServiceMap;

    .line 5718
    .local v5, "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    if-nez v5, :cond_1

    .line 5719
    goto :goto_3

    .line 5721
    :cond_1
    iget-object v6, v5, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    .line 5722
    .local v6, "alls":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Lcom/android/server/am/ServiceRecord;>;"
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v12

    if-ge v7, v12, :cond_3

    .line 5723
    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/am/ServiceRecord;

    .line 5725
    .local v12, "r1":Lcom/android/server/am/ServiceRecord;
    invoke-interface {v10, v12}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 5726
    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5722
    .end local v12    # "r1":Lcom/android/server/am/ServiceRecord;
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 5716
    .end local v4    # "user":I
    .end local v5    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .end local v6    # "alls":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Lcom/android/server/am/ServiceRecord;>;"
    .end local v7    # "i":I
    :cond_3
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 5730
    :cond_4
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 5732
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_5

    .line 5733
    return v2

    .line 5737
    :cond_5
    sget-object v0, Lcom/android/server/am/ActiveServices$$ExternalSyntheticLambda3;->INSTANCE:Lcom/android/server/am/ActiveServices$$ExternalSyntheticLambda3;

    invoke-static {v0}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 5739
    const/4 v0, 0x0

    .line 5740
    .local v0, "needSep":Z
    const/4 v1, 0x0

    move v12, v1

    .local v12, "i":I
    :goto_4
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v12, v1, :cond_7

    .line 5741
    if-eqz v0, :cond_6

    .line 5742
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 5744
    :cond_6
    const/4 v0, 0x1

    .line 5745
    const-string v2, ""

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/android/server/am/ServiceRecord;

    move-object v1, p0

    move-object v3, p1

    move-object/from16 v4, p2

    move-object/from16 v6, p5

    move/from16 v7, p7

    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/ActiveServices;->dumpService(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Lcom/android/server/am/ServiceRecord;[Ljava/lang/String;Z)V

    .line 5740
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 5747
    .end local v12    # "i":I
    :cond_7
    const/4 v1, 0x1

    return v1

    .line 5730
    .end local v0    # "needSep":Z
    .end local v11    # "users":[I
    .restart local p4    # "users":[I
    :catchall_0
    move-exception v0

    move-object/from16 v11, p4

    .end local p4    # "users":[I
    .restart local v11    # "users":[I
    :goto_5
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_5
.end method

.method enableFgsNotificationRateLimitLocked(Z)Z
    .locals 1
    .param p1, "enable"    # Z

    .line 2224
    iget-boolean v0, p0, Lcom/android/server/am/ActiveServices;->mFgsDeferralRateLimited:Z

    if-eq p1, v0, :cond_0

    .line 2225
    iput-boolean p1, p0, Lcom/android/server/am/ActiveServices;->mFgsDeferralRateLimited:Z

    .line 2226
    if-nez p1, :cond_0

    .line 2228
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mFgsDeferralEligible:Landroid/util/SparseLongArray;

    invoke-virtual {v0}, Landroid/util/SparseLongArray;->clear()V

    .line 2231
    :cond_0
    return p1
.end method

.method forceStopPackageLocked(Ljava/lang/String;I)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 4744
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActiveServices$ServiceMap;

    .line 4745
    .local v0, "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget-object v2, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundApps:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 4746
    iget-object v2, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundApps:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    sub-int/2addr v2, v1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 4747
    iget-object v3, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundApps:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;

    .line 4748
    .local v3, "aa":Lcom/android/server/am/ActiveServices$ActiveForegroundApp;
    iget-object v4, v3, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4749
    iget-object v4, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundApps:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 4750
    iput-boolean v1, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundAppsChanged:Z

    .line 4746
    .end local v3    # "aa":Lcom/android/server/am/ActiveServices$ActiveForegroundApp;
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 4753
    .end local v2    # "i":I
    :cond_1
    iget-boolean v2, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundAppsChanged:Z

    if-eqz v2, :cond_2

    .line 4754
    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v2, v3}, Lcom/android/server/am/ActiveServices;->requestUpdateActiveForegroundAppsLocked(Lcom/android/server/am/ActiveServices$ServiceMap;J)V

    .line 4757
    :cond_2
    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mPendingBringups:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    sub-int/2addr v2, v1

    .restart local v2    # "i":I
    :goto_1
    if-ltz v2, :cond_4

    .line 4758
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mPendingBringups:Landroid/util/ArrayMap;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ServiceRecord;

    .line 4759
    .local v1, "r":Lcom/android/server/am/ServiceRecord;
    iget-object v3, v1, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget v3, v1, Lcom/android/server/am/ServiceRecord;->userId:I

    if-ne v3, p2, :cond_3

    .line 4760
    iget-object v3, p0, Lcom/android/server/am/ActiveServices;->mPendingBringups:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 4757
    .end local v1    # "r":Lcom/android/server/am/ServiceRecord;
    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 4763
    .end local v2    # "i":I
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/server/am/ActiveServices;->removeServiceRestartBackoffEnabledLocked(Ljava/lang/String;)V

    .line 4764
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/ActiveServices;->removeServiceNotificationDeferralsLocked(Ljava/lang/String;I)V

    .line 4765
    return-void
.end method

.method foregroundAppShownEnoughLocked(Lcom/android/server/am/ActiveServices$ActiveForegroundApp;J)Z
    .locals 7
    .param p1, "aa"    # Lcom/android/server/am/ActiveServices$ActiveForegroundApp;
    .param p2, "nowElapsed"    # J

    .line 1371
    const/4 v0, 0x0

    .line 1372
    .local v0, "canRemove":Z
    const-wide v1, 0x7fffffffffffffffL

    iput-wide v1, p1, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mHideTime:J

    .line 1373
    iget-boolean v1, p1, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mShownWhileTop:Z

    if-eqz v1, :cond_0

    .line 1376
    const/4 v0, 0x1

    goto :goto_4

    .line 1378
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/am/ActiveServices;->mScreenOn:Z

    if-nez v1, :cond_3

    iget-boolean v1, p1, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mShownWhileScreenOn:Z

    if-eqz v1, :cond_1

    goto :goto_0

    .line 1396
    :cond_1
    iget-wide v1, p1, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mEndTime:J

    iget-object v3, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v3, v3, Lcom/android/server/am/ActivityManagerConstants;->FGSERVICE_SCREEN_ON_BEFORE_TIME:J

    add-long/2addr v1, v3

    .line 1398
    .local v1, "minTime":J
    cmp-long v3, p2, v1

    if-ltz v3, :cond_2

    .line 1404
    const/4 v0, 0x1

    goto :goto_4

    .line 1407
    :cond_2
    iput-wide v1, p1, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mHideTime:J

    goto :goto_4

    .line 1379
    .end local v1    # "minTime":J
    :cond_3
    :goto_0
    iget-wide v1, p1, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mStartVisibleTime:J

    .line 1380
    iget-wide v3, p1, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mStartTime:J

    iget-wide v5, p1, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mStartVisibleTime:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_4

    .line 1381
    iget-object v3, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v3, v3, Lcom/android/server/am/ActivityManagerConstants;->FGSERVICE_SCREEN_ON_AFTER_TIME:J

    goto :goto_1

    .line 1382
    :cond_4
    iget-object v3, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v3, v3, Lcom/android/server/am/ActivityManagerConstants;->FGSERVICE_MIN_SHOWN_TIME:J

    :goto_1
    add-long/2addr v1, v3

    .line 1383
    .restart local v1    # "minTime":J
    cmp-long v3, p2, v1

    if-ltz v3, :cond_5

    .line 1387
    const/4 v0, 0x1

    goto :goto_3

    .line 1390
    :cond_5
    iget-object v3, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v3, v3, Lcom/android/server/am/ActivityManagerConstants;->FGSERVICE_MIN_REPORT_TIME:J

    add-long/2addr v3, p2

    .line 1391
    .local v3, "reportTime":J
    cmp-long v5, v3, v1

    if-lez v5, :cond_6

    move-wide v5, v3

    goto :goto_2

    :cond_6
    move-wide v5, v1

    :goto_2
    iput-wide v5, p1, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mHideTime:J

    .line 1395
    .end local v1    # "minTime":J
    .end local v3    # "reportTime":J
    :goto_3
    nop

    .line 1412
    :goto_4
    return v0
.end method

.method foregroundServiceProcStateChangedLocked(Lcom/android/server/am/UidRecord;)V
    .locals 7
    .param p1, "uidRec"    # Lcom/android/server/am/UidRecord;

    .line 1635
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/android/server/am/UidRecord;->getUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActiveServices$ServiceMap;

    .line 1636
    .local v0, "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    if-eqz v0, :cond_4

    .line 1637
    const/4 v1, 0x0

    .line 1638
    .local v1, "changed":Z
    iget-object v2, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundApps:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .local v2, "j":I
    :goto_0
    if-ltz v2, :cond_3

    .line 1639
    iget-object v4, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundApps:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;

    .line 1640
    .local v4, "active":Lcom/android/server/am/ActiveServices$ActiveForegroundApp;
    iget v5, v4, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mUid:I

    invoke-virtual {p1}, Lcom/android/server/am/UidRecord;->getUid()I

    move-result v6

    if-ne v5, v6, :cond_2

    .line 1641
    invoke-virtual {p1}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v5

    const/4 v6, 0x2

    if-gt v5, v6, :cond_1

    .line 1642
    iget-boolean v5, v4, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mAppOnTop:Z

    if-nez v5, :cond_0

    .line 1643
    iput-boolean v3, v4, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mAppOnTop:Z

    .line 1644
    const/4 v1, 0x1

    .line 1646
    :cond_0
    iput-boolean v3, v4, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mShownWhileTop:Z

    goto :goto_1

    .line 1647
    :cond_1
    iget-boolean v5, v4, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mAppOnTop:Z

    if-eqz v5, :cond_2

    .line 1648
    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mAppOnTop:Z

    .line 1649
    const/4 v1, 0x1

    .line 1638
    .end local v4    # "active":Lcom/android/server/am/ActiveServices$ActiveForegroundApp;
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1653
    .end local v2    # "j":I
    :cond_3
    if-eqz v1, :cond_4

    .line 1654
    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v2, v3}, Lcom/android/server/am/ActiveServices;->requestUpdateActiveForegroundAppsLocked(Lcom/android/server/am/ActiveServices$ServiceMap;J)V

    .line 1657
    .end local v1    # "changed":Z
    :cond_4
    return-void
.end method

.method public getForegroundServiceTypeLocked(Landroid/content/ComponentName;Landroid/os/IBinder;)I
    .locals 6
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "token"    # Landroid/os/IBinder;

    .line 1354
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1355
    .local v0, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1356
    .local v1, "origId":J
    const/4 v3, 0x0

    .line 1358
    .local v3, "ret":I
    :try_start_0
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/am/ActiveServices;->findServiceLocked(Landroid/content/ComponentName;Landroid/os/IBinder;I)Lcom/android/server/am/ServiceRecord;

    move-result-object v4

    .line 1359
    .local v4, "r":Lcom/android/server/am/ServiceRecord;
    if-eqz v4, :cond_0

    .line 1360
    iget v5, v4, Lcom/android/server/am/ServiceRecord;->foregroundServiceType:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v3, v5

    .line 1363
    .end local v4    # "r":Lcom/android/server/am/ServiceRecord;
    :cond_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1364
    nop

    .line 1365
    return v3

    .line 1363
    :catchall_0
    move-exception v4

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1364
    throw v4
.end method

.method public getRunningServiceControlPanelLocked(Landroid/content/ComponentName;)Landroid/app/PendingIntent;
    .locals 7
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 5111
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 5112
    .local v0, "userId":I
    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/ActiveServices;->getServiceByNameLocked(Landroid/content/ComponentName;I)Lcom/android/server/am/ServiceRecord;

    move-result-object v1

    .line 5113
    .local v1, "r":Lcom/android/server/am/ServiceRecord;
    if-eqz v1, :cond_2

    .line 5114
    invoke-virtual {v1}, Lcom/android/server/am/ServiceRecord;->getConnections()Landroid/util/ArrayMap;

    move-result-object v2

    .line 5115
    .local v2, "connections":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;>;"
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "conni":I
    :goto_0
    if-ltz v3, :cond_2

    .line 5116
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 5117
    .local v4, "conn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 5118
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ConnectionRecord;

    iget-object v6, v6, Lcom/android/server/am/ConnectionRecord;->clientIntent:Landroid/app/PendingIntent;

    if-eqz v6, :cond_0

    .line 5119
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ConnectionRecord;

    iget-object v6, v6, Lcom/android/server/am/ConnectionRecord;->clientIntent:Landroid/app/PendingIntent;

    return-object v6

    .line 5117
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 5115
    .end local v4    # "conn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .end local v5    # "i":I
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 5124
    .end local v2    # "connections":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;>;"
    .end local v3    # "conni":I
    :cond_2
    const/4 v2, 0x0

    return-object v2
.end method

.method getRunningServiceInfoLocked(IIIZZ)Ljava/util/List;
    .locals 10
    .param p1, "maxNum"    # I
    .param p2, "flags"    # I
    .param p3, "callingUid"    # I
    .param p4, "allowed"    # Z
    .param p5, "canInteractAcrossUsers"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIZZ)",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RunningServiceInfo;",
            ">;"
        }
    .end annotation

    .line 5059
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5062
    .local v0, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 5064
    .local v1, "ident":J
    if-eqz p5, :cond_3

    .line 5065
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v3}, Lcom/android/server/am/UserController;->getUsers()[I

    move-result-object v3

    .line 5066
    .local v3, "users":[I
    const/4 v4, 0x0

    .local v4, "ui":I
    :goto_0
    array-length v5, v3

    if-ge v4, v5, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v5, p1, :cond_1

    .line 5067
    aget v5, v3, v4

    invoke-virtual {p0, v5}, Lcom/android/server/am/ActiveServices;->getServicesLocked(I)Landroid/util/ArrayMap;

    move-result-object v5

    .line 5068
    .local v5, "alls":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Lcom/android/server/am/ServiceRecord;>;"
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v7

    if-ge v6, v7, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v7, p1, :cond_0

    .line 5069
    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ServiceRecord;

    .line 5070
    .local v7, "sr":Lcom/android/server/am/ServiceRecord;
    invoke-virtual {p0, v7}, Lcom/android/server/am/ActiveServices;->makeRunningServiceInfoLocked(Lcom/android/server/am/ServiceRecord;)Landroid/app/ActivityManager$RunningServiceInfo;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5068
    nop

    .end local v7    # "sr":Lcom/android/server/am/ServiceRecord;
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 5066
    .end local v5    # "alls":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Lcom/android/server/am/ServiceRecord;>;"
    .end local v6    # "i":I
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 5074
    .end local v4    # "ui":I
    :cond_1
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    iget-object v5, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v5, p1, :cond_2

    .line 5075
    iget-object v5, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ServiceRecord;

    .line 5076
    .local v5, "r":Lcom/android/server/am/ServiceRecord;
    nop

    .line 5077
    invoke-virtual {p0, v5}, Lcom/android/server/am/ActiveServices;->makeRunningServiceInfoLocked(Lcom/android/server/am/ServiceRecord;)Landroid/app/ActivityManager$RunningServiceInfo;

    move-result-object v6

    .line 5078
    .local v6, "info":Landroid/app/ActivityManager$RunningServiceInfo;
    iget-wide v7, v5, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    iput-wide v7, v6, Landroid/app/ActivityManager$RunningServiceInfo;->restarting:J

    .line 5079
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5074
    nop

    .end local v5    # "r":Lcom/android/server/am/ServiceRecord;
    .end local v6    # "info":Landroid/app/ActivityManager$RunningServiceInfo;
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 5081
    .end local v3    # "users":[I
    .end local v4    # "i":I
    :cond_2
    goto :goto_5

    .line 5082
    :cond_3
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 5083
    .local v3, "userId":I
    invoke-virtual {p0, v3}, Lcom/android/server/am/ActiveServices;->getServicesLocked(I)Landroid/util/ArrayMap;

    move-result-object v4

    .line 5084
    .local v4, "alls":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Lcom/android/server/am/ServiceRecord;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_3
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v6

    if-ge v5, v6, :cond_6

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v6, p1, :cond_6

    .line 5085
    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ServiceRecord;

    .line 5087
    .local v6, "sr":Lcom/android/server/am/ServiceRecord;
    if-nez p4, :cond_4

    iget-object v7, v6, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v7, :cond_5

    iget-object v7, v6, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v7, v7, Lcom/android/server/am/ProcessRecord;->uid:I

    if-ne v7, p3, :cond_5

    .line 5088
    :cond_4
    invoke-virtual {p0, v6}, Lcom/android/server/am/ActiveServices;->makeRunningServiceInfoLocked(Lcom/android/server/am/ServiceRecord;)Landroid/app/ActivityManager$RunningServiceInfo;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5084
    .end local v6    # "sr":Lcom/android/server/am/ServiceRecord;
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 5092
    .end local v5    # "i":I
    :cond_6
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_4
    iget-object v6, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_9

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v6, p1, :cond_9

    .line 5093
    iget-object v6, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ServiceRecord;

    .line 5094
    .local v6, "r":Lcom/android/server/am/ServiceRecord;
    iget v7, v6, Lcom/android/server/am/ServiceRecord;->userId:I

    if-ne v7, v3, :cond_8

    if-nez p4, :cond_7

    iget-object v7, v6, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v7, :cond_8

    iget-object v7, v6, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v7, v7, Lcom/android/server/am/ProcessRecord;->uid:I

    if-ne v7, p3, :cond_8

    .line 5096
    :cond_7
    nop

    .line 5097
    invoke-virtual {p0, v6}, Lcom/android/server/am/ActiveServices;->makeRunningServiceInfoLocked(Lcom/android/server/am/ServiceRecord;)Landroid/app/ActivityManager$RunningServiceInfo;

    move-result-object v7

    .line 5098
    .local v7, "info":Landroid/app/ActivityManager$RunningServiceInfo;
    iget-wide v8, v6, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    iput-wide v8, v7, Landroid/app/ActivityManager$RunningServiceInfo;->restarting:J

    .line 5099
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5092
    .end local v6    # "r":Lcom/android/server/am/ServiceRecord;
    .end local v7    # "info":Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 5104
    .end local v3    # "userId":I
    .end local v4    # "alls":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Lcom/android/server/am/ServiceRecord;>;"
    .end local v5    # "i":I
    :cond_9
    :goto_5
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5105
    nop

    .line 5107
    return-object v0

    .line 5104
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5105
    throw v3
.end method

.method getServiceByNameLocked(Landroid/content/ComponentName;I)Lcom/android/server/am/ServiceRecord;
    .locals 1
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "callingUser"    # I

    .line 544
    invoke-direct {p0, p2}, Lcom/android/server/am/ActiveServices;->getServiceMapLocked(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ServiceRecord;

    return-object v0
.end method

.method getServicesLocked(I)Landroid/util/ArrayMap;
    .locals 1
    .param p1, "callingUser"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/ArrayMap<",
            "Landroid/content/ComponentName;",
            "Lcom/android/server/am/ServiceRecord;",
            ">;"
        }
    .end annotation

    .line 601
    invoke-direct {p0, p1}, Lcom/android/server/am/ActiveServices;->getServiceMapLocked(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    return-object v0
.end method

.method hasBackgroundServicesLocked(I)Z
    .locals 4
    .param p1, "callingUser"    # I

    .line 548
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActiveServices$ServiceMap;

    .line 549
    .local v0, "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mStartingBackground:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget v3, p0, Lcom/android/server/am/ActiveServices;->mMaxStartingBackground:I

    if-lt v2, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method hasForegroundServiceNotificationLocked(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "channelId"    # Ljava/lang/String;

    .line 553
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActiveServices$ServiceMap;

    .line 554
    .local v0, "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    if-eqz v0, :cond_1

    .line 555
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 556
    iget-object v2, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ServiceRecord;

    .line 557
    .local v2, "sr":Lcom/android/server/am/ServiceRecord;
    iget-object v3, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-boolean v3, v2, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    if-eqz v3, :cond_0

    .line 558
    iget-object v3, v2, Lcom/android/server/am/ServiceRecord;->foregroundNoti:Landroid/app/Notification;

    invoke-virtual {v3}, Landroid/app/Notification;->getChannelId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 564
    const/4 v3, 0x1

    return v3

    .line 555
    .end local v2    # "sr":Lcom/android/server/am/ServiceRecord;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 569
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method isServiceRestartBackoffEnabledLocked(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 3680
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mRestartBackoffDisabledPackages:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method killMisbehavingService(Lcom/android/server/am/ServiceRecord;IILjava/lang/String;)V
    .locals 9
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;
    .param p2, "appUid"    # I
    .param p3, "appPid"    # I
    .param p4, "localPackageName"    # Ljava/lang/String;

    .line 1239
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1240
    iget-boolean v1, p1, Lcom/android/server/am/ServiceRecord;->destroying:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 1242
    invoke-direct {p0, p1, v2}, Lcom/android/server/am/ActiveServices;->stopServiceLocked(Lcom/android/server/am/ServiceRecord;Z)V

    goto :goto_0

    .line 1246
    :cond_0
    iget v1, p1, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-direct {p0, v1}, Lcom/android/server/am/ActiveServices;->getServiceMapLocked(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v1

    .line 1247
    .local v1, "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    iget-object v3, v1, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    iget-object v4, p1, Lcom/android/server/am/ServiceRecord;->instanceName:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ServiceRecord;

    .line 1248
    .local v3, "found":Lcom/android/server/am/ServiceRecord;
    if-eqz v3, :cond_1

    .line 1249
    invoke-direct {p0, v3, v2}, Lcom/android/server/am/ActiveServices;->stopServiceLocked(Lcom/android/server/am/ServiceRecord;Z)V

    .line 1252
    .end local v1    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .end local v3    # "found":Lcom/android/server/am/ServiceRecord;
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    const/4 v6, -0x1

    const-string v7, "Bad notification for startForeground"

    const/4 v8, 0x1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/am/ActivityManagerService;->crashApplication(IILjava/lang/String;ILjava/lang/String;Z)V

    .line 1254
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1255
    return-void

    .line 1254
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method final killServicesLocked(Lcom/android/server/am/ProcessRecord;Z)V
    .locals 16
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "allowRestart"    # Z

    .line 4807
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 4836
    .local v2, "psr":Lcom/android/server/am/ProcessServiceRecord;
    invoke-virtual {v2}, Lcom/android/server/am/ProcessServiceRecord;->numberOfConnections()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    .local v3, "i":I
    :goto_0
    const/4 v5, 0x0

    if-ltz v3, :cond_0

    .line 4837
    invoke-virtual {v2, v3}, Lcom/android/server/am/ProcessServiceRecord;->getConnectionAt(I)Lcom/android/server/am/ConnectionRecord;

    move-result-object v6

    .line 4838
    .local v6, "r":Lcom/android/server/am/ConnectionRecord;
    invoke-virtual {v0, v6, v1, v5, v4}, Lcom/android/server/am/ActiveServices;->removeConnectionLocked(Lcom/android/server/am/ConnectionRecord;Lcom/android/server/am/ProcessRecord;Lcom/android/server/wm/ActivityServiceConnectionsHolder;Z)V

    .line 4836
    .end local v6    # "r":Lcom/android/server/am/ConnectionRecord;
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 4840
    .end local v3    # "i":I
    :cond_0
    invoke-virtual {v0, v2}, Lcom/android/server/am/ActiveServices;->updateServiceConnectionActivitiesLocked(Lcom/android/server/am/ProcessServiceRecord;)V

    .line 4841
    invoke-virtual {v2}, Lcom/android/server/am/ProcessServiceRecord;->removeAllConnections()V

    .line 4843
    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/server/am/ProcessServiceRecord;->mAllowlistManager:Z

    .line 4846
    invoke-virtual {v2}, Lcom/android/server/am/ProcessServiceRecord;->numberOfRunningServices()I

    move-result v6

    sub-int/2addr v6, v4

    .local v6, "i":I
    :goto_1
    if-ltz v6, :cond_8

    .line 4847
    invoke-virtual {v2, v6}, Lcom/android/server/am/ProcessServiceRecord;->getRunningServiceAt(I)Lcom/android/server/am/ServiceRecord;

    move-result-object v7

    .line 4848
    .local v7, "sr":Lcom/android/server/am/ServiceRecord;
    iget-object v8, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    iget-object v9, v7, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v10, v7, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    iget-object v11, v7, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    .line 4849
    invoke-virtual {v11}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v11

    .line 4848
    invoke-virtual {v8, v9, v10, v11}, Lcom/android/server/am/BatteryStatsService;->noteServiceStopLaunch(ILjava/lang/String;Ljava/lang/String;)V

    .line 4850
    iget-object v8, v7, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eq v8, v1, :cond_1

    iget-object v8, v7, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v8, :cond_1

    iget-object v8, v7, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v8}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v8

    if-nez v8, :cond_1

    .line 4851
    iget-object v8, v7, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v8, v8, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    invoke-virtual {v8, v7}, Lcom/android/server/am/ProcessServiceRecord;->stopService(Lcom/android/server/am/ServiceRecord;)Z

    .line 4852
    iget-object v8, v7, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v8, v8, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    invoke-virtual {v8}, Lcom/android/server/am/ProcessServiceRecord;->updateBoundClientUids()V

    .line 4854
    :cond_1
    invoke-virtual {v7, v5, v5, v3, v5}, Lcom/android/server/am/ServiceRecord;->setProcess(Lcom/android/server/am/ProcessRecord;Landroid/app/IApplicationThread;ILcom/android/server/am/UidRecord;)V

    .line 4855
    iput-object v5, v7, Lcom/android/server/am/ServiceRecord;->isolatedProc:Lcom/android/server/am/ProcessRecord;

    .line 4856
    iput v3, v7, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    .line 4857
    invoke-virtual {v7}, Lcom/android/server/am/ServiceRecord;->forceClearTracker()V

    .line 4858
    iget-object v8, v0, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4862
    iget-object v8, v7, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v8

    .line 4863
    .local v8, "numClients":I
    add-int/lit8 v9, v8, -0x1

    .local v9, "bindingi":I
    :goto_2
    if-ltz v9, :cond_7

    .line 4864
    iget-object v10, v7, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {v10, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/IntentBindRecord;

    .line 4867
    .local v10, "b":Lcom/android/server/am/IntentBindRecord;
    iput-object v5, v10, Lcom/android/server/am/IntentBindRecord;->binder:Landroid/os/IBinder;

    .line 4868
    iput-boolean v3, v10, Lcom/android/server/am/IntentBindRecord;->hasBound:Z

    iput-boolean v3, v10, Lcom/android/server/am/IntentBindRecord;->received:Z

    iput-boolean v3, v10, Lcom/android/server/am/IntentBindRecord;->requested:Z

    .line 4873
    iget-object v11, v10, Lcom/android/server/am/IntentBindRecord;->apps:Landroid/util/ArrayMap;

    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    move-result v11

    sub-int/2addr v11, v4

    .local v11, "appi":I
    :goto_3
    if-ltz v11, :cond_6

    .line 4874
    iget-object v12, v10, Lcom/android/server/am/IntentBindRecord;->apps:Landroid/util/ArrayMap;

    invoke-virtual {v12, v11}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/am/ProcessRecord;

    .line 4876
    .local v12, "proc":Lcom/android/server/am/ProcessRecord;
    invoke-virtual {v12}, Lcom/android/server/am/ProcessRecord;->isKilledByAm()Z

    move-result v13

    if-nez v13, :cond_5

    invoke-virtual {v12}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v13

    if-nez v13, :cond_2

    .line 4877
    goto :goto_6

    .line 4882
    :cond_2
    iget-object v13, v10, Lcom/android/server/am/IntentBindRecord;->apps:Landroid/util/ArrayMap;

    invoke-virtual {v13, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/am/AppBindRecord;

    .line 4883
    .local v13, "abind":Lcom/android/server/am/AppBindRecord;
    const/4 v14, 0x0

    .line 4884
    .local v14, "hasCreate":Z
    iget-object v15, v13, Lcom/android/server/am/AppBindRecord;->connections:Landroid/util/ArraySet;

    invoke-virtual {v15}, Landroid/util/ArraySet;->size()I

    move-result v15

    sub-int/2addr v15, v4

    .local v15, "conni":I
    :goto_4
    if-ltz v15, :cond_4

    .line 4885
    iget-object v5, v13, Lcom/android/server/am/AppBindRecord;->connections:Landroid/util/ArraySet;

    invoke-virtual {v5, v15}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ConnectionRecord;

    .line 4886
    .local v5, "conn":Lcom/android/server/am/ConnectionRecord;
    iget v3, v5, Lcom/android/server/am/ConnectionRecord;->flags:I

    and-int/lit8 v3, v3, 0x31

    if-ne v3, v4, :cond_3

    .line 4888
    const/4 v14, 0x1

    .line 4889
    goto :goto_5

    .line 4884
    .end local v5    # "conn":Lcom/android/server/am/ConnectionRecord;
    :cond_3
    add-int/lit8 v15, v15, -0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    goto :goto_4

    .line 4892
    .end local v15    # "conni":I
    :cond_4
    :goto_5
    nop

    .line 4893
    nop

    .line 4873
    .end local v12    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v13    # "abind":Lcom/android/server/am/AppBindRecord;
    .end local v14    # "hasCreate":Z
    :cond_5
    :goto_6
    add-int/lit8 v11, v11, -0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    goto :goto_3

    .line 4863
    .end local v10    # "b":Lcom/android/server/am/IntentBindRecord;
    .end local v11    # "appi":I
    :cond_6
    add-int/lit8 v9, v9, -0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    goto :goto_2

    .line 4846
    .end local v7    # "sr":Lcom/android/server/am/ServiceRecord;
    .end local v8    # "numClients":I
    .end local v9    # "bindingi":I
    :cond_7
    add-int/lit8 v6, v6, -0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    goto/16 :goto_1

    .line 4909
    .end local v6    # "i":I
    :cond_8
    iget v3, v1, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-direct {v0, v3}, Lcom/android/server/am/ActiveServices;->getServiceMapLocked(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v3

    .line 4912
    .local v3, "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    invoke-virtual {v2}, Lcom/android/server/am/ProcessServiceRecord;->numberOfRunningServices()I

    move-result v5

    sub-int/2addr v5, v4

    .local v5, "i":I
    :goto_7
    if-ltz v5, :cond_13

    .line 4913
    invoke-virtual {v2, v5}, Lcom/android/server/am/ProcessServiceRecord;->getRunningServiceAt(I)Lcom/android/server/am/ServiceRecord;

    move-result-object v6

    .line 4917
    .local v6, "sr":Lcom/android/server/am/ServiceRecord;
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v7

    if-nez v7, :cond_9

    .line 4918
    invoke-virtual {v2, v6}, Lcom/android/server/am/ProcessServiceRecord;->stopService(Lcom/android/server/am/ServiceRecord;)Z

    .line 4919
    invoke-virtual {v2}, Lcom/android/server/am/ProcessServiceRecord;->updateBoundClientUids()V

    .line 4924
    :cond_9
    iget-object v7, v3, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    iget-object v8, v6, Lcom/android/server/am/ServiceRecord;->instanceName:Landroid/content/ComponentName;

    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ServiceRecord;

    .line 4925
    .local v7, "curRec":Lcom/android/server/am/ServiceRecord;
    const-string v8, "ActivityManager"

    if-eq v7, v6, :cond_b

    .line 4926
    if-eqz v7, :cond_a

    .line 4927
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Service "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " in process "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " not same as in map: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v13, 0x0

    goto/16 :goto_a

    .line 4926
    :cond_a
    const/4 v13, 0x0

    goto/16 :goto_a

    .line 4935
    :cond_b
    if-eqz p2, :cond_d

    iget v9, v6, Lcom/android/server/am/ServiceRecord;->crashCount:I

    int-to-long v9, v9

    iget-object v11, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v11, v11, Lcom/android/server/am/ActivityManagerConstants;->BOUND_SERVICE_MAX_CRASH_RETRY:J

    cmp-long v9, v9, v11

    if-ltz v9, :cond_d

    iget-object v9, v6, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v9, v9, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v9, v9, 0x8

    if-nez v9, :cond_d

    .line 4938
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Service crashed "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v6, Lcom/android/server/am/ServiceRecord;->crashCount:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " times, stopping: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4940
    const/16 v8, 0x7552

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    iget v10, v6, Lcom/android/server/am/ServiceRecord;->userId:I

    .line 4941
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    iget v10, v6, Lcom/android/server/am/ServiceRecord;->crashCount:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v4

    const/4 v10, 0x2

    iget-object v11, v6, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    aput-object v11, v9, v10

    const/4 v10, 0x3

    .line 4942
    iget-object v11, v6, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v11, :cond_c

    iget-object v11, v6, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v11}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v11

    goto :goto_8

    :cond_c
    const/4 v11, -0x1

    :goto_8
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    .line 4940
    invoke-static {v8, v9}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 4943
    invoke-direct {v0, v6, v4}, Lcom/android/server/am/ActiveServices;->bringDownServiceLocked(Lcom/android/server/am/ServiceRecord;Z)V

    const/4 v13, 0x0

    goto :goto_a

    .line 4944
    :cond_d
    if-eqz p2, :cond_12

    iget-object v8, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    iget v9, v6, Lcom/android/server/am/ServiceRecord;->userId:I

    .line 4945
    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/android/server/am/UserController;->isUserRunning(II)Z

    move-result v8

    if-nez v8, :cond_e

    const/4 v13, 0x0

    goto :goto_9

    .line 4948
    :cond_e
    invoke-direct {v0, v6, v4}, Lcom/android/server/am/ActiveServices;->scheduleServiceRestartLocked(Lcom/android/server/am/ServiceRecord;Z)Z

    move-result v8

    .line 4953
    .local v8, "scheduled":Z
    if-nez v8, :cond_f

    .line 4954
    invoke-direct {v0, v6, v4}, Lcom/android/server/am/ActiveServices;->bringDownServiceLocked(Lcom/android/server/am/ServiceRecord;Z)V

    const/4 v13, 0x0

    goto :goto_a

    .line 4955
    :cond_f
    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Lcom/android/server/am/ServiceRecord;->canStopIfKilled(Z)Z

    move-result v10

    if-eqz v10, :cond_11

    .line 4959
    iput-boolean v9, v6, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    .line 4960
    iget-object v9, v6, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    if-eqz v9, :cond_10

    .line 4961
    iget-object v9, v6, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    iget-object v10, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v10}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v10

    .line 4962
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    .line 4961
    const/4 v13, 0x0

    invoke-virtual {v9, v13, v10, v11, v12}, Lcom/android/internal/app/procstats/ServiceState;->setStarted(ZIJ)V

    goto :goto_a

    .line 4960
    :cond_10
    const/4 v13, 0x0

    goto :goto_a

    .line 4955
    :cond_11
    move v13, v9

    goto :goto_a

    .line 4944
    .end local v8    # "scheduled":Z
    :cond_12
    const/4 v13, 0x0

    .line 4946
    :goto_9
    invoke-direct {v0, v6, v4}, Lcom/android/server/am/ActiveServices;->bringDownServiceLocked(Lcom/android/server/am/ServiceRecord;Z)V

    .line 4912
    .end local v6    # "sr":Lcom/android/server/am/ServiceRecord;
    .end local v7    # "curRec":Lcom/android/server/am/ServiceRecord;
    :goto_a
    add-int/lit8 v5, v5, -0x1

    goto/16 :goto_7

    .line 4968
    .end local v5    # "i":I
    :cond_13
    iget-object v5, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v6, "updateOomAdj_unbindService"

    invoke-virtual {v5, v6}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjPendingTargetsLocked(Ljava/lang/String;)V

    .line 4970
    if-nez p2, :cond_19

    .line 4971
    invoke-virtual {v2}, Lcom/android/server/am/ProcessServiceRecord;->stopAllServices()V

    .line 4972
    invoke-virtual {v2}, Lcom/android/server/am/ProcessServiceRecord;->clearBoundClientUids()V

    .line 4975
    iget-object v5, v0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v4

    .restart local v5    # "i":I
    :goto_b
    if-ltz v5, :cond_15

    .line 4976
    iget-object v6, v0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ServiceRecord;

    .line 4977
    .local v6, "r":Lcom/android/server/am/ServiceRecord;
    iget-object v7, v6, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    iget-object v8, v1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_14

    iget-object v7, v6, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v8, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v7, v8, :cond_14

    .line 4979
    iget-object v7, v0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 4980
    invoke-direct {v0, v6}, Lcom/android/server/am/ActiveServices;->clearRestartingIfNeededLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 4975
    .end local v6    # "r":Lcom/android/server/am/ServiceRecord;
    :cond_14
    add-int/lit8 v5, v5, -0x1

    goto :goto_b

    .line 4983
    .end local v5    # "i":I
    :cond_15
    iget-object v5, v0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v4

    .restart local v5    # "i":I
    :goto_c
    if-ltz v5, :cond_17

    .line 4984
    iget-object v6, v0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ServiceRecord;

    .line 4985
    .restart local v6    # "r":Lcom/android/server/am/ServiceRecord;
    iget-object v7, v6, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    iget-object v8, v1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_16

    iget-object v7, v6, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v8, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v7, v8, :cond_16

    .line 4987
    iget-object v7, v0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 4983
    .end local v6    # "r":Lcom/android/server/am/ServiceRecord;
    :cond_16
    add-int/lit8 v5, v5, -0x1

    goto :goto_c

    .line 4990
    .end local v5    # "i":I
    :cond_17
    iget-object v5, v0, Lcom/android/server/am/ActiveServices;->mPendingBringups:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    sub-int/2addr v5, v4

    .restart local v5    # "i":I
    :goto_d
    if-ltz v5, :cond_19

    .line 4991
    iget-object v4, v0, Lcom/android/server/am/ActiveServices;->mPendingBringups:Landroid/util/ArrayMap;

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ServiceRecord;

    .line 4992
    .local v4, "r":Lcom/android/server/am/ServiceRecord;
    iget-object v6, v4, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    iget-object v7, v1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_18

    iget-object v6, v4, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v7, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v6, v7, :cond_18

    .line 4994
    iget-object v6, v0, Lcom/android/server/am/ActiveServices;->mPendingBringups:Landroid/util/ArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 4990
    .end local v4    # "r":Lcom/android/server/am/ServiceRecord;
    :cond_18
    add-int/lit8 v5, v5, -0x1

    goto :goto_d

    .line 5000
    .end local v5    # "i":I
    :cond_19
    iget-object v4, v0, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 5001
    .local v4, "i":I
    :goto_e
    if-lez v4, :cond_1b

    .line 5002
    add-int/lit8 v4, v4, -0x1

    .line 5003
    iget-object v5, v0, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ServiceRecord;

    .line 5004
    .local v5, "sr":Lcom/android/server/am/ServiceRecord;
    iget-object v6, v5, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-ne v6, v1, :cond_1a

    .line 5005
    invoke-virtual {v5}, Lcom/android/server/am/ServiceRecord;->forceClearTracker()V

    .line 5006
    iget-object v6, v0, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 5009
    .end local v5    # "sr":Lcom/android/server/am/ServiceRecord;
    :cond_1a
    goto :goto_e

    .line 5011
    :cond_1b
    invoke-virtual {v2}, Lcom/android/server/am/ProcessServiceRecord;->stopAllExecutingServices()V

    .line 5012
    return-void
.end method

.method public synthetic lambda$shouldAllowFgsStartForegroundLocked$1$ActiveServices(ILandroid/util/ArraySet;Lcom/android/server/am/ProcessRecord;)Landroid/util/Pair;
    .locals 23
    .param p1, "callingUid"    # I
    .param p2, "checkedClientUids"    # Landroid/util/ArraySet;
    .param p3, "pr"    # Lcom/android/server/am/ProcessRecord;

    .line 5985
    move/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    iget v3, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    if-ne v3, v0, :cond_7

    .line 5986
    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 5987
    .local v3, "psr":Lcom/android/server/am/ProcessServiceRecord;
    iget-object v4, v3, Lcom/android/server/am/ProcessServiceRecord;->mServices:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v4

    .line 5988
    .local v4, "serviceCount":I
    const/4 v5, 0x0

    .local v5, "svc":I
    :goto_0
    if-ge v5, v4, :cond_6

    .line 5989
    iget-object v6, v3, Lcom/android/server/am/ProcessServiceRecord;->mServices:Landroid/util/ArraySet;

    .line 5990
    invoke-virtual {v6, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ServiceRecord;

    invoke-virtual {v6}, Lcom/android/server/am/ServiceRecord;->getConnections()Landroid/util/ArrayMap;

    move-result-object v6

    .line 5991
    .local v6, "conns":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;>;"
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v7

    .line 5992
    .local v7, "size":I
    const/4 v8, 0x0

    .local v8, "conni":I
    :goto_1
    if-ge v8, v7, :cond_5

    .line 5993
    invoke-virtual {v6, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    .line 5994
    .local v9, "crs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    const/4 v10, 0x0

    .local v10, "con":I
    :goto_2
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v10, v11, :cond_4

    .line 5995
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/am/ConnectionRecord;

    .line 5996
    .local v11, "cr":Lcom/android/server/am/ConnectionRecord;
    iget-object v12, v11, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v12, v12, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    .line 5999
    .local v12, "clientPr":Lcom/android/server/am/ProcessRecord;
    iget-object v13, v12, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v13

    const/4 v14, 0x1

    if-gt v13, v14, :cond_0

    .line 6001
    move-object/from16 v16, v3

    goto :goto_3

    .line 6003
    :cond_0
    iget v13, v12, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 6004
    .local v13, "clientPid":I
    iget v14, v12, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 6007
    .local v14, "clientUid":I
    if-eq v14, v0, :cond_3

    .line 6008
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v1, v15}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 6009
    move-object/from16 v16, v3

    goto :goto_3

    .line 6011
    :cond_1
    iget-object v15, v11, Lcom/android/server/am/ConnectionRecord;->clientPackageName:Ljava/lang/String;

    .line 6012
    .local v15, "clientPackageName":Ljava/lang/String;
    const/16 v19, 0x0

    const/16 v20, 0x0

    .line 6013
    move-object/from16 v21, v15

    .end local v15    # "clientPackageName":Ljava/lang/String;
    .local v21, "clientPackageName":Ljava/lang/String;
    move-object/from16 v15, p0

    move-object/from16 v16, v21

    move/from16 v17, v13

    move/from16 v18, v14

    invoke-direct/range {v15 .. v20}, Lcom/android/server/am/ActiveServices;->shouldAllowFgsWhileInUsePermissionLocked(Ljava/lang/String;IILcom/android/server/am/ServiceRecord;Z)I

    move-result v22

    .line 6016
    .local v22, "allowWhileInUse2":I
    const/16 v20, 0x0

    .line 6017
    move/from16 v16, v22

    move-object/from16 v19, v21

    invoke-direct/range {v15 .. v20}, Lcom/android/server/am/ActiveServices;->shouldAllowFgsStartForegroundLocked(IIILjava/lang/String;Lcom/android/server/am/ServiceRecord;)I

    move-result v15

    .line 6019
    .local v15, "allowStartFgs":I
    const/4 v0, -0x1

    if-eq v15, v0, :cond_2

    .line 6020
    new-instance v0, Landroid/util/Pair;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v16, v3

    move-object/from16 v3, v21

    .end local v21    # "clientPackageName":Ljava/lang/String;
    .local v3, "clientPackageName":Ljava/lang/String;
    .local v16, "psr":Lcom/android/server/am/ProcessServiceRecord;
    invoke-direct {v0, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 6022
    .end local v16    # "psr":Lcom/android/server/am/ProcessServiceRecord;
    .local v3, "psr":Lcom/android/server/am/ProcessServiceRecord;
    .restart local v21    # "clientPackageName":Ljava/lang/String;
    :cond_2
    move-object/from16 v16, v3

    move-object/from16 v3, v21

    .end local v21    # "clientPackageName":Ljava/lang/String;
    .local v3, "clientPackageName":Ljava/lang/String;
    .restart local v16    # "psr":Lcom/android/server/am/ProcessServiceRecord;
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 6007
    .end local v15    # "allowStartFgs":I
    .end local v16    # "psr":Lcom/android/server/am/ProcessServiceRecord;
    .end local v22    # "allowWhileInUse2":I
    .local v3, "psr":Lcom/android/server/am/ProcessServiceRecord;
    :cond_3
    move-object/from16 v16, v3

    .line 5994
    .end local v3    # "psr":Lcom/android/server/am/ProcessServiceRecord;
    .end local v11    # "cr":Lcom/android/server/am/ConnectionRecord;
    .end local v12    # "clientPr":Lcom/android/server/am/ProcessRecord;
    .end local v13    # "clientPid":I
    .end local v14    # "clientUid":I
    .restart local v16    # "psr":Lcom/android/server/am/ProcessServiceRecord;
    :goto_3
    add-int/lit8 v10, v10, 0x1

    move/from16 v0, p1

    move-object/from16 v2, p3

    move-object/from16 v3, v16

    goto :goto_2

    .end local v16    # "psr":Lcom/android/server/am/ProcessServiceRecord;
    .restart local v3    # "psr":Lcom/android/server/am/ProcessServiceRecord;
    :cond_4
    move-object/from16 v16, v3

    .line 5992
    .end local v3    # "psr":Lcom/android/server/am/ProcessServiceRecord;
    .end local v9    # "crs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .end local v10    # "con":I
    .restart local v16    # "psr":Lcom/android/server/am/ProcessServiceRecord;
    add-int/lit8 v8, v8, 0x1

    move/from16 v0, p1

    move-object/from16 v2, p3

    goto/16 :goto_1

    .end local v16    # "psr":Lcom/android/server/am/ProcessServiceRecord;
    .restart local v3    # "psr":Lcom/android/server/am/ProcessServiceRecord;
    :cond_5
    move-object/from16 v16, v3

    .line 5988
    .end local v3    # "psr":Lcom/android/server/am/ProcessServiceRecord;
    .end local v6    # "conns":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;>;"
    .end local v7    # "size":I
    .end local v8    # "conni":I
    .restart local v16    # "psr":Lcom/android/server/am/ProcessServiceRecord;
    add-int/lit8 v5, v5, 0x1

    move/from16 v0, p1

    move-object/from16 v2, p3

    goto/16 :goto_0

    .end local v16    # "psr":Lcom/android/server/am/ProcessServiceRecord;
    .restart local v3    # "psr":Lcom/android/server/am/ProcessServiceRecord;
    :cond_6
    move-object/from16 v16, v3

    .line 6029
    .end local v3    # "psr":Lcom/android/server/am/ProcessServiceRecord;
    .end local v4    # "serviceCount":I
    .end local v5    # "svc":I
    :cond_7
    const/4 v0, 0x0

    return-object v0
.end method

.method public synthetic lambda$shouldAllowFgsStartForegroundLocked$2$ActiveServices(ILcom/android/server/am/ProcessRecord;)Ljava/lang/Integer;
    .locals 8
    .param p1, "callingUid"    # I
    .param p2, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 6086
    iget v0, p2, Lcom/android/server/am/ProcessRecord;->uid:I

    if-ne v0, p1, :cond_2

    .line 6087
    iget-object v0, p2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 6088
    .local v0, "state":Lcom/android/server/am/ProcessStateRecord;
    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->isAllowedStartFgsState()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6089
    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getAllowStartFgsState()I

    move-result v1

    invoke-static {v1}, Landroid/os/PowerExemptionManager;->getReasonCodeFromProcState(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    .line 6091
    :cond_0
    invoke-virtual {p2}, Lcom/android/server/am/ProcessRecord;->getActiveInstrumentation()Lcom/android/server/am/ActiveInstrumentation;

    move-result-object v1

    .line 6092
    .local v1, "instr":Lcom/android/server/am/ActiveInstrumentation;
    if-eqz v1, :cond_1

    iget-boolean v2, v1, Lcom/android/server/am/ActiveInstrumentation;->mHasBackgroundForegroundServiceStartsPermission:Z

    if-eqz v2, :cond_1

    .line 6094
    const/16 v2, 0x3d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    return-object v2

    .line 6096
    :cond_1
    iget-object v2, p2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessStateRecord;->getLastInvisibleTime()J

    move-result-wide v2

    .line 6097
    .local v2, "lastInvisibleTime":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_2

    const-wide v4, 0x7fffffffffffffffL

    cmp-long v4, v2, v4

    if-gez v4, :cond_2

    .line 6098
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v2

    .line 6100
    .local v4, "sinceLastInvisible":J
    iget-object v6, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v6, v6, Lcom/android/server/am/ActivityManagerConstants;->mFgToBgFgsGraceDuration:J

    cmp-long v6, v4, v6

    if-gez v6, :cond_2

    .line 6101
    const/16 v6, 0x43

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    return-object v6

    .line 6106
    .end local v0    # "state":Lcom/android/server/am/ProcessStateRecord;
    .end local v1    # "instr":Lcom/android/server/am/ActiveInstrumentation;
    .end local v2    # "lastInvisibleTime":J
    .end local v4    # "sinceLastInvisible":J
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method makeRunningServiceInfoLocked(Lcom/android/server/am/ServiceRecord;)Landroid/app/ActivityManager$RunningServiceInfo;
    .locals 7
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;

    .line 5015
    new-instance v0, Landroid/app/ActivityManager$RunningServiceInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$RunningServiceInfo;-><init>()V

    .line 5017
    .local v0, "info":Landroid/app/ActivityManager$RunningServiceInfo;
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    iput-object v1, v0, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    .line 5018
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_0

    .line 5019
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v1

    iput v1, v0, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    .line 5021
    :cond_0
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v1, v0, Landroid/app/ActivityManager$RunningServiceInfo;->uid:I

    .line 5022
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    iput-object v1, v0, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    .line 5023
    iget-boolean v1, p1, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    iput-boolean v1, v0, Landroid/app/ActivityManager$RunningServiceInfo;->foreground:Z

    .line 5024
    iget-wide v1, p1, Lcom/android/server/am/ServiceRecord;->createRealTime:J

    iput-wide v1, v0, Landroid/app/ActivityManager$RunningServiceInfo;->activeSince:J

    .line 5025
    iget-boolean v1, p1, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    iput-boolean v1, v0, Landroid/app/ActivityManager$RunningServiceInfo;->started:Z

    .line 5026
    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->getConnections()Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    iput v1, v0, Landroid/app/ActivityManager$RunningServiceInfo;->clientCount:I

    .line 5027
    iget v1, p1, Lcom/android/server/am/ServiceRecord;->crashCount:I

    iput v1, v0, Landroid/app/ActivityManager$RunningServiceInfo;->crashCount:I

    .line 5028
    iget-wide v1, p1, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    iput-wide v1, v0, Landroid/app/ActivityManager$RunningServiceInfo;->lastActivityTime:J

    .line 5029
    iget-boolean v1, p1, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    if-eqz v1, :cond_1

    .line 5030
    iget v1, v0, Landroid/app/ActivityManager$RunningServiceInfo;->flags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/app/ActivityManager$RunningServiceInfo;->flags:I

    .line 5032
    :cond_1
    iget-boolean v1, p1, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    if-eqz v1, :cond_2

    .line 5033
    iget v1, v0, Landroid/app/ActivityManager$RunningServiceInfo;->flags:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/app/ActivityManager$RunningServiceInfo;->flags:I

    .line 5035
    :cond_2
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_3

    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v1

    sget v2, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-ne v1, v2, :cond_3

    .line 5036
    iget v1, v0, Landroid/app/ActivityManager$RunningServiceInfo;->flags:I

    or-int/lit8 v1, v1, 0x4

    iput v1, v0, Landroid/app/ActivityManager$RunningServiceInfo;->flags:I

    .line 5038
    :cond_3
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_4

    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 5039
    iget v1, v0, Landroid/app/ActivityManager$RunningServiceInfo;->flags:I

    or-int/lit8 v1, v1, 0x8

    iput v1, v0, Landroid/app/ActivityManager$RunningServiceInfo;->flags:I

    .line 5042
    :cond_4
    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->getConnections()Landroid/util/ArrayMap;

    move-result-object v1

    .line 5043
    .local v1, "connections":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;>;"
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "conni":I
    :goto_0
    if-ltz v2, :cond_7

    .line 5044
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 5045
    .local v3, "connl":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_6

    .line 5046
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ConnectionRecord;

    .line 5047
    .local v5, "conn":Lcom/android/server/am/ConnectionRecord;
    iget v6, v5, Lcom/android/server/am/ConnectionRecord;->clientLabel:I

    if-eqz v6, :cond_5

    .line 5048
    iget-object v6, v5, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v6, v6, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v6, v0, Landroid/app/ActivityManager$RunningServiceInfo;->clientPackage:Ljava/lang/String;

    .line 5049
    iget v6, v5, Lcom/android/server/am/ConnectionRecord;->clientLabel:I

    iput v6, v0, Landroid/app/ActivityManager$RunningServiceInfo;->clientLabel:I

    .line 5050
    return-object v0

    .line 5045
    .end local v5    # "conn":Lcom/android/server/am/ConnectionRecord;
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 5043
    .end local v3    # "connl":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .end local v4    # "i":I
    :cond_6
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 5054
    .end local v2    # "conni":I
    :cond_7
    return-object v0
.end method

.method newServiceDumperLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;IZLjava/lang/String;)Lcom/android/server/am/ActiveServices$ServiceDumper;
    .locals 9
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;
    .param p4, "opti"    # I
    .param p5, "dumpAll"    # Z
    .param p6, "dumpPackage"    # Ljava/lang/String;

    .line 5672
    new-instance v8, Lcom/android/server/am/ActiveServices$ServiceDumper;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/server/am/ActiveServices$ServiceDumper;-><init>(Lcom/android/server/am/ActiveServices;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;IZLjava/lang/String;)V

    return-object v8
.end method

.method public onForegroundServiceNotificationUpdateLocked(ZLandroid/app/Notification;ILjava/lang/String;I)V
    .locals 4
    .param p1, "shown"    # Z
    .param p2, "notification"    # Landroid/app/Notification;
    .param p3, "id"    # I
    .param p4, "pkg"    # Ljava/lang/String;
    .param p5, "userId"    # I

    .line 2261
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mPendingFgsNotifications:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 2262
    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mPendingFgsNotifications:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ServiceRecord;

    .line 2263
    .local v2, "sr":Lcom/android/server/am/ServiceRecord;
    iget v3, v2, Lcom/android/server/am/ServiceRecord;->userId:I

    if-ne p5, v3, :cond_0

    iget v3, v2, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    if-ne p3, v3, :cond_0

    iget-object v3, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 2265
    invoke-virtual {v3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2268
    if-eqz p1, :cond_0

    .line 2273
    iput-boolean v1, v2, Lcom/android/server/am/ServiceRecord;->mFgsNotificationShown:Z

    .line 2274
    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/server/am/ServiceRecord;->mFgsNotificationDeferred:Z

    .line 2275
    iget-object v3, p0, Lcom/android/server/am/ActiveServices;->mPendingFgsNotifications:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2261
    .end local v2    # "sr":Lcom/android/server/am/ServiceRecord;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2284
    .end local v0    # "i":I
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActiveServices$ServiceMap;

    .line 2285
    .local v0, "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    if-eqz v0, :cond_3

    .line 2286
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v2, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 2287
    iget-object v2, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ServiceRecord;

    .line 2288
    .restart local v2    # "sr":Lcom/android/server/am/ServiceRecord;
    iget-boolean v3, v2, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    if-eqz v3, :cond_2

    iget v3, v2, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    if-ne p3, v3, :cond_2

    iget-object v3, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 2290
    invoke-virtual {v3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2295
    iput-object p2, v2, Lcom/android/server/am/ServiceRecord;->foregroundNoti:Landroid/app/Notification;

    .line 2286
    .end local v2    # "sr":Lcom/android/server/am/ServiceRecord;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2299
    .end local v1    # "i":I
    :cond_3
    return-void
.end method

.method peekServiceLocked(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Landroid/os/IBinder;
    .locals 12
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "callingPackage"    # Ljava/lang/String;

    .line 1258
    nop

    .line 1259
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 1260
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v7

    .line 1258
    const/4 v2, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v11}, Lcom/android/server/am/ActiveServices;->retrieveServiceLocked(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZZZZ)Lcom/android/server/am/ActiveServices$ServiceLookupResult;

    move-result-object v0

    .line 1262
    .local v0, "r":Lcom/android/server/am/ActiveServices$ServiceLookupResult;
    const/4 v1, 0x0

    .line 1263
    .local v1, "ret":Landroid/os/IBinder;
    if-eqz v0, :cond_1

    .line 1265
    iget-object v2, v0, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->record:Lcom/android/server/am/ServiceRecord;

    if-eqz v2, :cond_0

    .line 1272
    iget-object v2, v0, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->record:Lcom/android/server/am/ServiceRecord;

    iget-object v2, v2, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    iget-object v3, v0, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->record:Lcom/android/server/am/ServiceRecord;

    iget-object v3, v3, Lcom/android/server/am/ServiceRecord;->intent:Landroid/content/Intent$FilterComparison;

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/IntentBindRecord;

    .line 1273
    .local v2, "ib":Lcom/android/server/am/IntentBindRecord;
    if-eqz v2, :cond_1

    .line 1274
    iget-object v1, v2, Lcom/android/server/am/IntentBindRecord;->binder:Landroid/os/IBinder;

    goto :goto_0

    .line 1266
    .end local v2    # "ib":Lcom/android/server/am/IntentBindRecord;
    :cond_0
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Permission Denial: Accessing service from pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1268
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1269
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " requires "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->permission:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1278
    :cond_1
    :goto_0
    return-object v1
.end method

.method performScheduleRestartLocked(Lcom/android/server/am/ServiceRecord;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 4
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;
    .param p2, "scheduling"    # Ljava/lang/String;
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "now"    # J

    .line 3566
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->restarter:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService$MainHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3567
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->restarter:Ljava/lang/Runnable;

    iget-wide v2, p1, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/ActivityManagerService$MainHandler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 3568
    iget-wide v0, p1, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    add-long/2addr v0, p4

    iput-wide v0, p1, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    .line 3569
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " restart of crashed service "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p1, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ms for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3571
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p1, Lcom/android/server/am/ServiceRecord;->userId:I

    .line 3572
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-wide v1, p1, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 3571
    const/16 v1, 0x7553

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 3573
    return-void
.end method

.method final performServiceRestartLocked(Lcom/android/server/am/ServiceRecord;)V
    .locals 10
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;

    .line 3576
    const-string/jumbo v0, "updateOomAdj_startService"

    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3577
    return-void

    .line 3579
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v1}, Lcom/android/server/am/ActiveServices;->isServiceNeededLocked(Lcom/android/server/am/ServiceRecord;ZZ)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3585
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Restarting service that is not needed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3586
    return-void

    .line 3589
    :cond_1
    :try_start_0
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->intent:Landroid/content/Intent$FilterComparison;

    invoke-virtual {v1}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result v4

    iget-boolean v5, p1, Lcom/android/server/am/ServiceRecord;->createdFromFg:Z

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v2 .. v9}, Lcom/android/server/am/ActiveServices;->bringUpServiceLocked(Lcom/android/server/am/ServiceRecord;IZZZZZ)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/TransactionTooLargeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 3595
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2, v0}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjPendingTargetsLocked(Ljava/lang/String;)V

    .line 3596
    throw v1

    .line 3591
    :catch_0
    move-exception v1

    .line 3595
    :goto_0
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjPendingTargetsLocked(Ljava/lang/String;)V

    .line 3596
    nop

    .line 3597
    return-void
.end method

.method processStartTimedOutLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 7
    .param p1, "proc"    # Lcom/android/server/am/ProcessRecord;

    .line 4648
    const/4 v0, 0x0

    .line 4649
    .local v0, "needOomAdj":Z
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, "size":I
    :goto_0
    if-ge v1, v2, :cond_3

    .line 4650
    iget-object v3, p0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ServiceRecord;

    .line 4651
    .local v3, "sr":Lcom/android/server/am/ServiceRecord;
    iget v4, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v5, v3, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v6, 0x1

    if-ne v4, v5, :cond_0

    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object v5, v3, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    .line 4652
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    iget-object v4, v3, Lcom/android/server/am/ServiceRecord;->isolatedProc:Lcom/android/server/am/ProcessRecord;

    if-ne v4, p1, :cond_2

    .line 4654
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Forcing bringing down service: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ActivityManager"

    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4655
    const/4 v4, 0x0

    iput-object v4, v3, Lcom/android/server/am/ServiceRecord;->isolatedProc:Lcom/android/server/am/ProcessRecord;

    .line 4656
    iget-object v4, p0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 4657
    iget-object v4, p0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 4658
    add-int/lit8 v1, v1, -0x1

    .line 4659
    const/4 v0, 0x1

    .line 4660
    invoke-direct {p0, v3, v6}, Lcom/android/server/am/ActiveServices;->bringDownServiceLocked(Lcom/android/server/am/ServiceRecord;Z)V

    .line 4649
    .end local v3    # "sr":Lcom/android/server/am/ServiceRecord;
    :cond_2
    add-int/2addr v1, v6

    goto :goto_0

    .line 4663
    .end local v1    # "i":I
    .end local v2    # "size":I
    :cond_3
    if-eqz v0, :cond_4

    .line 4664
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v2, "updateOomAdj_unbindService"

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjPendingTargetsLocked(Ljava/lang/String;)V

    .line 4666
    :cond_4
    return-void
.end method

.method publishServiceLocked(Lcom/android/server/am/ServiceRecord;Landroid/content/Intent;Landroid/os/IBinder;)V
    .locals 16
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "service"    # Landroid/os/IBinder;

    .line 2876
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 2880
    .local v4, "origId":J
    if-eqz v2, :cond_3

    .line 2881
    :try_start_0
    new-instance v0, Landroid/content/Intent$FilterComparison;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v6, p2

    :try_start_1
    invoke-direct {v0, v6}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    move-object v7, v0

    .line 2883
    .local v7, "filter":Landroid/content/Intent$FilterComparison;
    iget-object v0, v2, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {v0, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IntentBindRecord;

    move-object v8, v0

    .line 2884
    .local v8, "b":Lcom/android/server/am/IntentBindRecord;
    const/4 v9, 0x0

    if-eqz v8, :cond_2

    iget-boolean v0, v8, Lcom/android/server/am/IntentBindRecord;->received:Z

    if-nez v0, :cond_2

    .line 2885
    iput-object v3, v8, Lcom/android/server/am/IntentBindRecord;->binder:Landroid/os/IBinder;

    .line 2886
    const/4 v0, 0x1

    iput-boolean v0, v8, Lcom/android/server/am/IntentBindRecord;->requested:Z

    .line 2887
    iput-boolean v0, v8, Lcom/android/server/am/IntentBindRecord;->received:Z

    .line 2888
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ServiceRecord;->getConnections()Landroid/util/ArrayMap;

    move-result-object v10

    .line 2889
    .local v10, "connections":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;>;"
    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    move-result v11

    sub-int/2addr v11, v0

    .local v11, "conni":I
    :goto_0
    if-ltz v11, :cond_2

    .line 2890
    invoke-virtual {v10, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    move-object v12, v0

    .line 2891
    .local v12, "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    const/4 v0, 0x0

    move v13, v0

    .local v13, "i":I
    :goto_1
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v13, v0, :cond_1

    .line 2892
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ConnectionRecord;

    move-object v14, v0

    .line 2893
    .local v14, "c":Lcom/android/server/am/ConnectionRecord;
    iget-object v0, v14, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v0, v0, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    iget-object v0, v0, Lcom/android/server/am/IntentBindRecord;->intent:Landroid/content/Intent$FilterComparison;

    invoke-virtual {v7, v0}, Landroid/content/Intent$FilterComparison;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_0

    .line 2900
    goto :goto_2

    .line 2904
    :cond_0
    :try_start_2
    iget-object v0, v14, Lcom/android/server/am/ConnectionRecord;->conn:Landroid/app/IServiceConnection;

    iget-object v15, v2, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-interface {v0, v15, v3, v9}, Landroid/app/IServiceConnection;->connected(Landroid/content/ComponentName;Landroid/os/IBinder;Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2909
    goto :goto_2

    .line 2905
    :catch_0
    move-exception v0

    .line 2906
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v15, "ActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failure sending service "

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " to connection "

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v14, Lcom/android/server/am/ConnectionRecord;->conn:Landroid/app/IServiceConnection;

    .line 2907
    invoke-interface {v3}, Landroid/app/IServiceConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " (in "

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v14, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v3, v3, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2906
    invoke-static {v15, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2891
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v14    # "c":Lcom/android/server/am/ConnectionRecord;
    :goto_2
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v3, p3

    const/4 v9, 0x0

    goto :goto_1

    .line 2889
    .end local v12    # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .end local v13    # "i":I
    :cond_1
    add-int/lit8 v11, v11, -0x1

    move-object/from16 v3, p3

    const/4 v9, 0x0

    goto :goto_0

    .line 2914
    .end local v10    # "connections":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;>;"
    .end local v11    # "conni":I
    :cond_2
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3, v3}, Lcom/android/server/am/ActiveServices;->serviceDoneExecutingLocked(Lcom/android/server/am/ServiceRecord;ZZZ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    .line 2917
    .end local v7    # "filter":Landroid/content/Intent$FilterComparison;
    .end local v8    # "b":Lcom/android/server/am/IntentBindRecord;
    :catchall_0
    move-exception v0

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object/from16 v6, p2

    :goto_3
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2918
    throw v0

    .line 2880
    :cond_3
    move-object/from16 v6, p2

    .line 2917
    :goto_4
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2918
    nop

    .line 2919
    return-void
.end method

.method removeConnectionLocked(Lcom/android/server/am/ConnectionRecord;Lcom/android/server/am/ProcessRecord;Lcom/android/server/wm/ActivityServiceConnectionsHolder;Z)V
    .locals 19
    .param p1, "c"    # Lcom/android/server/am/ConnectionRecord;
    .param p2, "skipApp"    # Lcom/android/server/am/ProcessRecord;
    .param p3, "skipAct"    # Lcom/android/server/wm/ActivityServiceConnectionsHolder;
    .param p4, "enqueueOomAdj"    # Z

    .line 4332
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p4

    iget-object v0, v2, Lcom/android/server/am/ConnectionRecord;->conn:Landroid/app/IServiceConnection;

    invoke-interface {v0}, Landroid/app/IServiceConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 4333
    .local v4, "binder":Landroid/os/IBinder;
    iget-object v5, v2, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    .line 4334
    .local v5, "b":Lcom/android/server/am/AppBindRecord;
    iget-object v6, v5, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    .line 4335
    .local v6, "s":Lcom/android/server/am/ServiceRecord;
    invoke-virtual {v6}, Lcom/android/server/am/ServiceRecord;->getConnections()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 4336
    .local v0, "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    if-eqz v0, :cond_0

    .line 4337
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4338
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-nez v7, :cond_0

    .line 4339
    invoke-virtual {v6, v4}, Lcom/android/server/am/ServiceRecord;->removeConnection(Landroid/os/IBinder;)V

    .line 4342
    :cond_0
    iget-object v7, v5, Lcom/android/server/am/AppBindRecord;->connections:Landroid/util/ArraySet;

    invoke-virtual {v7, v2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 4343
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ConnectionRecord;->stopAssociation()V

    .line 4344
    iget-object v7, v2, Lcom/android/server/am/ConnectionRecord;->activity:Lcom/android/server/wm/ActivityServiceConnectionsHolder;

    if-eqz v7, :cond_1

    iget-object v7, v2, Lcom/android/server/am/ConnectionRecord;->activity:Lcom/android/server/wm/ActivityServiceConnectionsHolder;

    move-object/from16 v8, p3

    if-eq v7, v8, :cond_2

    .line 4345
    iget-object v7, v2, Lcom/android/server/am/ConnectionRecord;->activity:Lcom/android/server/wm/ActivityServiceConnectionsHolder;

    invoke-virtual {v7, v2}, Lcom/android/server/wm/ActivityServiceConnectionsHolder;->removeConnection(Ljava/lang/Object;)V

    goto :goto_0

    .line 4344
    :cond_1
    move-object/from16 v8, p3

    .line 4347
    :cond_2
    :goto_0
    iget-object v7, v5, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    const/4 v9, 0x1

    move-object/from16 v10, p2

    if-eq v7, v10, :cond_6

    .line 4348
    iget-object v7, v5, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    iget-object v7, v7, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 4349
    .local v7, "psr":Lcom/android/server/am/ProcessServiceRecord;
    invoke-virtual {v7, v2}, Lcom/android/server/am/ProcessServiceRecord;->removeConnection(Lcom/android/server/am/ConnectionRecord;)V

    .line 4350
    iget v11, v2, Lcom/android/server/am/ConnectionRecord;->flags:I

    and-int/lit8 v11, v11, 0x8

    if-eqz v11, :cond_3

    .line 4351
    invoke-virtual {v7}, Lcom/android/server/am/ProcessServiceRecord;->updateHasAboveClientLocked()V

    .line 4355
    :cond_3
    iget v11, v2, Lcom/android/server/am/ConnectionRecord;->flags:I

    const/high16 v12, 0x1000000

    and-int/2addr v11, v12

    if-eqz v11, :cond_4

    .line 4356
    invoke-virtual {v6}, Lcom/android/server/am/ServiceRecord;->updateAllowlistManager()V

    .line 4357
    iget-boolean v11, v6, Lcom/android/server/am/ServiceRecord;->allowlistManager:Z

    if-nez v11, :cond_4

    iget-object v11, v6, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v11, :cond_4

    .line 4358
    iget-object v11, v6, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v11, v11, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    invoke-direct {v1, v11}, Lcom/android/server/am/ActiveServices;->updateAllowlistManagerLocked(Lcom/android/server/am/ProcessServiceRecord;)V

    .line 4362
    :cond_4
    iget v11, v2, Lcom/android/server/am/ConnectionRecord;->flags:I

    const/high16 v12, 0x100000

    and-int/2addr v11, v12

    if-eqz v11, :cond_5

    .line 4363
    invoke-virtual {v6}, Lcom/android/server/am/ServiceRecord;->updateIsAllowedBgActivityStartsByBinding()V

    .line 4365
    :cond_5
    iget-object v11, v6, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v11, :cond_6

    .line 4366
    iget-object v11, v6, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v11, v11, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    invoke-direct {v1, v11, v2, v9}, Lcom/android/server/am/ActiveServices;->updateServiceClientActivitiesLocked(Lcom/android/server/am/ProcessServiceRecord;Lcom/android/server/am/ConnectionRecord;Z)Z

    .line 4369
    .end local v7    # "psr":Lcom/android/server/am/ProcessServiceRecord;
    :cond_6
    iget-object v7, v1, Lcom/android/server/am/ActiveServices;->mServiceConnections:Landroid/util/ArrayMap;

    invoke-virtual {v7, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    .line 4370
    .end local v0    # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .local v7, "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    if-eqz v7, :cond_7

    .line 4371
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4372
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_7

    .line 4373
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mServiceConnections:Landroid/util/ArrayMap;

    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4377
    :cond_7
    iget-object v11, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v5, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    iget v12, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v0, v5, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    iget-object v13, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object v0, v6, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v14, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v0, v6, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-wide v9, v0, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    iget-object v0, v6, Lcom/android/server/am/ServiceRecord;->instanceName:Landroid/content/ComponentName;

    iget-object v15, v6, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    move-object/from16 v18, v15

    move-wide v15, v9

    move-object/from16 v17, v0

    invoke-virtual/range {v11 .. v18}, Lcom/android/server/am/ActivityManagerService;->stopAssociationLocked(ILjava/lang/String;IJLandroid/content/ComponentName;Ljava/lang/String;)V

    .line 4380
    iget-object v0, v5, Lcom/android/server/am/AppBindRecord;->connections:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-nez v0, :cond_8

    .line 4381
    iget-object v0, v5, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    iget-object v0, v0, Lcom/android/server/am/IntentBindRecord;->apps:Landroid/util/ArrayMap;

    iget-object v9, v5, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0, v9}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4384
    :cond_8
    iget-boolean v0, v2, Lcom/android/server/am/ConnectionRecord;->serviceDead:Z

    if-nez v0, :cond_e

    .line 4387
    iget-object v0, v6, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v9, 0x0

    if-eqz v0, :cond_b

    iget-object v0, v6, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v0, v5, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    iget-object v0, v0, Lcom/android/server/am/IntentBindRecord;->apps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, v5, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    iget-boolean v0, v0, Lcom/android/server/am/IntentBindRecord;->hasBound:Z

    if-eqz v0, :cond_b

    .line 4390
    :try_start_0
    const-string/jumbo v0, "unbind"

    invoke-direct {v1, v6, v9, v0}, Lcom/android/server/am/ActiveServices;->bumpServiceExecutingLocked(Lcom/android/server/am/ServiceRecord;ZLjava/lang/String;)V

    .line 4391
    iget-object v0, v5, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    iget-object v10, v6, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eq v0, v10, :cond_9

    iget v0, v2, Lcom/android/server/am/ConnectionRecord;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_9

    iget-object v0, v6, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 4392
    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getSetProcState()I

    move-result v0

    const/16 v10, 0xd

    if-gt v0, v10, :cond_9

    .line 4396
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v6, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v11, 0x0

    invoke-virtual {v0, v10, v9, v11}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZLcom/android/server/am/ProcessRecord;)V

    .line 4398
    :cond_9
    if-eqz v3, :cond_a

    .line 4399
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v6, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0, v10}, Lcom/android/server/am/ActivityManagerService;->enqueueOomAdjTargetLocked(Lcom/android/server/am/ProcessRecord;)V

    goto :goto_1

    .line 4401
    :cond_a
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v6, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    const-string/jumbo v11, "updateOomAdj_unbindService"

    invoke-virtual {v0, v10, v11}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)Z

    .line 4403
    :goto_1
    iget-object v0, v5, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    iput-boolean v9, v0, Lcom/android/server/am/IntentBindRecord;->hasBound:Z

    .line 4406
    iget-object v0, v5, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    iput-boolean v9, v0, Lcom/android/server/am/IntentBindRecord;->doRebind:Z

    .line 4407
    iget-object v0, v6, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v0

    iget-object v10, v5, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    iget-object v10, v10, Lcom/android/server/am/IntentBindRecord;->intent:Landroid/content/Intent$FilterComparison;

    invoke-virtual {v10}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    move-result-object v10

    invoke-interface {v0, v6, v10}, Landroid/app/IApplicationThread;->scheduleUnbindService(Landroid/os/IBinder;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4411
    goto :goto_2

    .line 4408
    :catch_0
    move-exception v0

    .line 4409
    .local v0, "e":Ljava/lang/Exception;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Exception when unbinding service "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v6, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "ActivityManager"

    invoke-static {v11, v10, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4410
    invoke-direct {v1, v6, v3}, Lcom/android/server/am/ActiveServices;->serviceProcessGoneLocked(Lcom/android/server/am/ServiceRecord;Z)V

    .line 4416
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_b
    :goto_2
    invoke-virtual {v6}, Lcom/android/server/am/ServiceRecord;->getConnections()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 4417
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4418
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mPendingBringups:Landroid/util/ArrayMap;

    invoke-virtual {v0, v6}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4421
    :cond_c
    iget v0, v2, Lcom/android/server/am/ConnectionRecord;->flags:I

    const/4 v10, 0x1

    and-int/2addr v0, v10

    if-eqz v0, :cond_e

    .line 4422
    invoke-virtual {v6}, Lcom/android/server/am/ServiceRecord;->hasAutoCreateConnections()Z

    move-result v0

    .line 4423
    .local v0, "hasAutoCreate":Z
    if-nez v0, :cond_d

    .line 4424
    iget-object v10, v6, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    if-eqz v10, :cond_d

    .line 4425
    iget-object v10, v6, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    iget-object v11, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v11}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v11

    .line 4426
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    .line 4425
    invoke-virtual {v10, v9, v11, v12, v13}, Lcom/android/internal/app/procstats/ServiceState;->setBound(ZIJ)V

    .line 4429
    :cond_d
    const/4 v9, 0x1

    invoke-direct {v1, v6, v9, v0, v3}, Lcom/android/server/am/ActiveServices;->bringDownServiceIfNeededLocked(Lcom/android/server/am/ServiceRecord;ZZZ)V

    .line 4432
    .end local v0    # "hasAutoCreate":Z
    :cond_e
    return-void
.end method

.method resetFgsRestrictionLocked(Lcom/android/server/am/ServiceRecord;)V
    .locals 2
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;

    .line 5828
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/server/am/ServiceRecord;->mAllowWhileInUsePermissionInFgs:Z

    .line 5829
    const/4 v1, -0x1

    iput v1, p1, Lcom/android/server/am/ServiceRecord;->mAllowStartForeground:I

    .line 5830
    const/4 v1, 0x0

    iput-object v1, p1, Lcom/android/server/am/ServiceRecord;->mInfoAllowStartForeground:Ljava/lang/String;

    .line 5831
    iput-object v1, p1, Lcom/android/server/am/ServiceRecord;->mInfoTempFgsAllowListReason:Lcom/android/server/am/ActivityManagerService$FgsTempAllowListItem;

    .line 5832
    iput-boolean v0, p1, Lcom/android/server/am/ServiceRecord;->mLoggedInfoAllowStartForeground:Z

    .line 5833
    const-wide/16 v0, 0x0

    iput-wide v0, p1, Lcom/android/server/am/ServiceRecord;->mLastSetFgsRestrictionTime:J

    .line 5834
    return-void
.end method

.method schedulePendingServiceStartLocked(Ljava/lang/String;I)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1050
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mPendingBringups:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 1051
    .local v0, "totalPendings":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_5

    if-lez v0, :cond_5

    .line 1052
    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mPendingBringups:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ServiceRecord;

    .line 1053
    .local v2, "r":Lcom/android/server/am/ServiceRecord;
    iget v3, v2, Lcom/android/server/am/ServiceRecord;->userId:I

    if-ne v3, p2, :cond_4

    iget-object v3, v2, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_3

    .line 1057
    :cond_0
    iget-object v3, p0, Lcom/android/server/am/ActiveServices;->mPendingBringups:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 1058
    .local v3, "curPendingBringups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Runnable;>;"
    if-eqz v3, :cond_2

    .line 1059
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .local v4, "j":I
    :goto_1
    if-ltz v4, :cond_1

    .line 1060
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Runnable;

    invoke-interface {v5}, Ljava/lang/Runnable;->run()V

    .line 1059
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 1062
    .end local v4    # "j":I
    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1065
    :cond_2
    iget-object v4, p0, Lcom/android/server/am/ActiveServices;->mPendingBringups:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    .line 1067
    .local v4, "curTotalPendings":I
    iget-object v5, p0, Lcom/android/server/am/ActiveServices;->mPendingBringups:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1068
    if-eq v0, v4, :cond_3

    .line 1072
    iget-object v5, p0, Lcom/android/server/am/ActiveServices;->mPendingBringups:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 1073
    add-int/lit8 v1, v0, -0x1

    goto :goto_2

    .line 1075
    :cond_3
    iget-object v5, p0, Lcom/android/server/am/ActiveServices;->mPendingBringups:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 1076
    add-int/lit8 v1, v1, -0x1

    .line 1078
    .end local v2    # "r":Lcom/android/server/am/ServiceRecord;
    .end local v3    # "curPendingBringups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Runnable;>;"
    .end local v4    # "curTotalPendings":I
    :goto_2
    goto :goto_0

    .line 1054
    .restart local v2    # "r":Lcom/android/server/am/ServiceRecord;
    :cond_4
    :goto_3
    add-int/lit8 v1, v1, -0x1

    .line 1055
    goto :goto_0

    .line 1079
    .end local v1    # "i":I
    .end local v2    # "r":Lcom/android/server/am/ServiceRecord;
    :cond_5
    return-void
.end method

.method scheduleServiceForegroundTransitionTimeoutLocked(Lcom/android/server/am/ServiceRecord;)V
    .locals 4
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;

    .line 5240
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessServiceRecord;->numberOfExecutingServices()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 5243
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v1, 0x42

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 5245
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 5246
    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/android/server/am/ServiceRecord;->fgWaiting:Z

    .line 5247
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    sget v2, Lcom/android/server/am/ActiveServices;->SERVICE_START_FOREGROUND_TIMEOUT:I

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 5248
    return-void

    .line 5241
    .end local v0    # "msg":Landroid/os/Message;
    :cond_1
    :goto_0
    return-void
.end method

.method scheduleServiceTimeoutLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 4
    .param p1, "proc"    # Lcom/android/server/am/ProcessRecord;

    .line 5229
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessServiceRecord;->numberOfExecutingServices()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 5232
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 5234
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 5235
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessServiceRecord;->shouldExecServicesFg()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5236
    sget v2, Lcom/android/server/am/ActiveServices;->SERVICE_TIMEOUT:I

    goto :goto_0

    :cond_1
    sget v2, Lcom/android/server/am/ActiveServices;->SERVICE_BACKGROUND_TIMEOUT:I

    :goto_0
    int-to-long v2, v2

    .line 5235
    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 5237
    return-void

    .line 5230
    .end local v0    # "msg":Landroid/os/Message;
    :cond_2
    :goto_1
    return-void
.end method

.method serviceDoneExecutingLocked(Lcom/android/server/am/ServiceRecord;IIIZ)V
    .locals 5
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;
    .param p2, "type"    # I
    .param p3, "startId"    # I
    .param p4, "res"    # I
    .param p5, "enqueueOomAdj"    # Z

    .line 4436
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 4437
    .local v0, "inDestroying":Z
    const-string v1, "ActivityManager"

    if-eqz p1, :cond_4

    .line 4438
    const/4 v2, 0x1

    if-ne p2, v2, :cond_1

    .line 4441
    iput-boolean v2, p1, Lcom/android/server/am/ServiceRecord;->callStart:Z

    .line 4442
    const/4 v1, 0x0

    sparse-switch p4, :sswitch_data_0

    .line 4481
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown service start result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4477
    :sswitch_0
    invoke-virtual {p1, p3, v2, v2}, Lcom/android/server/am/ServiceRecord;->findDeliveredStart(IZZ)Lcom/android/server/am/ServiceRecord$StartItem;

    .line 4478
    goto :goto_0

    .line 4465
    :sswitch_1
    invoke-virtual {p1, p3, v1, v1}, Lcom/android/server/am/ServiceRecord;->findDeliveredStart(IZZ)Lcom/android/server/am/ServiceRecord$StartItem;

    move-result-object v3

    .line 4466
    .local v3, "si":Lcom/android/server/am/ServiceRecord$StartItem;
    if-eqz v3, :cond_0

    .line 4467
    iput v1, v3, Lcom/android/server/am/ServiceRecord$StartItem;->deliveryCount:I

    .line 4468
    iget v4, v3, Lcom/android/server/am/ServiceRecord$StartItem;->doneExecutingCount:I

    add-int/2addr v4, v2

    iput v4, v3, Lcom/android/server/am/ServiceRecord$StartItem;->doneExecutingCount:I

    .line 4470
    iput-boolean v2, p1, Lcom/android/server/am/ServiceRecord;->stopIfKilled:Z

    goto :goto_0

    .line 4453
    .end local v3    # "si":Lcom/android/server/am/ServiceRecord$StartItem;
    :sswitch_2
    invoke-virtual {p1, p3, v1, v2}, Lcom/android/server/am/ServiceRecord;->findDeliveredStart(IZZ)Lcom/android/server/am/ServiceRecord$StartItem;

    .line 4454
    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->getLastStartId()I

    move-result v3

    if-ne v3, p3, :cond_0

    .line 4457
    iput-boolean v2, p1, Lcom/android/server/am/ServiceRecord;->stopIfKilled:Z

    goto :goto_0

    .line 4446
    :sswitch_3
    invoke-virtual {p1, p3, v1, v2}, Lcom/android/server/am/ServiceRecord;->findDeliveredStart(IZZ)Lcom/android/server/am/ServiceRecord$StartItem;

    .line 4448
    iput-boolean v1, p1, Lcom/android/server/am/ServiceRecord;->stopIfKilled:Z

    .line 4449
    nop

    .line 4484
    :cond_0
    :goto_0
    if-nez p4, :cond_3

    .line 4485
    iput-boolean v1, p1, Lcom/android/server/am/ServiceRecord;->callStart:Z

    goto :goto_1

    .line 4487
    :cond_1
    const/4 v3, 0x2

    if-ne p2, v3, :cond_3

    .line 4491
    if-nez v0, :cond_2

    .line 4496
    iget-object v2, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_3

    .line 4497
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Service done with onDestroy, but not inDestroying: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", app="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 4500
    :cond_2
    iget v3, p1, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    if-eq v3, v2, :cond_3

    .line 4501
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Service done with onDestroy, but executeNesting="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4504
    iput v2, p1, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    .line 4507
    :cond_3
    :goto_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 4508
    .local v1, "origId":J
    invoke-direct {p0, p1, v0, v0, p5}, Lcom/android/server/am/ActiveServices;->serviceDoneExecutingLocked(Lcom/android/server/am/ServiceRecord;ZZZ)V

    .line 4509
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4510
    .end local v1    # "origId":J
    goto :goto_2

    .line 4511
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Done executing unknown service from pid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4512
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4511
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4514
    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_3
        0x1 -> :sswitch_3
        0x2 -> :sswitch_2
        0x3 -> :sswitch_1
        0x3e8 -> :sswitch_0
    .end sparse-switch
.end method

.method serviceForegroundCrash(Lcom/android/server/am/ProcessRecord;Ljava/lang/CharSequence;)V
    .locals 8
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "serviceRecord"    # Ljava/lang/CharSequence;

    .line 5222
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget v1, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v2

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v4, p1, Lcom/android/server/am/ProcessRecord;->userId:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Context.startForegroundService() did not then call Service.startForeground(): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/am/ActivityManagerService;->crashApplicationWithType(IILjava/lang/String;ILjava/lang/String;ZI)V

    .line 5226
    return-void
.end method

.method serviceForegroundTimeout(Lcom/android/server/am/ServiceRecord;)V
    .locals 4
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;

    .line 5180
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 5181
    iget-boolean v1, p1, Lcom/android/server/am/ServiceRecord;->fgRequired:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p1, Lcom/android/server/am/ServiceRecord;->destroying:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 5185
    :cond_0
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 5186
    .local v1, "app":Lcom/android/server/am/ProcessRecord;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->isDebugging()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5188
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 5194
    :cond_1
    const/4 v2, 0x0

    :try_start_1
    iput-boolean v2, p1, Lcom/android/server/am/ServiceRecord;->fgWaiting:Z

    .line 5195
    invoke-direct {p0, p1, v2}, Lcom/android/server/am/ActiveServices;->stopServiceLocked(Lcom/android/server/am/ServiceRecord;Z)V

    .line 5196
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 5198
    if-eqz v1, :cond_2

    .line 5199
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAnrHelper:Lcom/android/server/am/AnrHelper;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Context.startForegroundService() did not then call Service.startForeground(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/AnrHelper;->appNotResponding(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    .line 5203
    :cond_2
    return-void

    .line 5182
    .end local v1    # "app":Lcom/android/server/am/ProcessRecord;
    :cond_3
    :goto_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 5196
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method serviceTimeout(Lcom/android/server/am/ProcessRecord;)V
    .locals 18
    .param p1, "proc"    # Lcom/android/server/am/ProcessRecord;

    .line 5128
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const/4 v3, 0x0

    .line 5129
    .local v3, "anrMessage":Ljava/lang/String;
    iget-object v4, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 5130
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->isDebugging()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5132
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 5134
    :cond_0
    :try_start_1
    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 5135
    .local v0, "psr":Lcom/android/server/am/ProcessServiceRecord;
    invoke-virtual {v0}, Lcom/android/server/am/ProcessServiceRecord;->numberOfExecutingServices()I

    move-result v5

    if-eqz v5, :cond_9

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v5

    if-nez v5, :cond_1

    goto/16 :goto_5

    .line 5138
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 5139
    .local v5, "now":J
    nop

    .line 5140
    invoke-virtual {v0}, Lcom/android/server/am/ProcessServiceRecord;->shouldExecServicesFg()Z

    move-result v7

    if-eqz v7, :cond_2

    sget v7, Lcom/android/server/am/ActiveServices;->SERVICE_TIMEOUT:I

    goto :goto_0

    :cond_2
    sget v7, Lcom/android/server/am/ActiveServices;->SERVICE_BACKGROUND_TIMEOUT:I

    :goto_0
    int-to-long v7, v7

    sub-long v7, v5, v7

    .line 5141
    .local v7, "maxTime":J
    const/4 v9, 0x0

    .line 5142
    .local v9, "timeout":Lcom/android/server/am/ServiceRecord;
    const-wide/16 v10, 0x0

    .line 5143
    .local v10, "nextTime":J
    invoke-virtual {v0}, Lcom/android/server/am/ProcessServiceRecord;->numberOfExecutingServices()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    .local v12, "i":I
    :goto_1
    if-ltz v12, :cond_5

    .line 5144
    invoke-virtual {v0, v12}, Lcom/android/server/am/ProcessServiceRecord;->getExecutingServiceAt(I)Lcom/android/server/am/ServiceRecord;

    move-result-object v13

    .line 5145
    .local v13, "sr":Lcom/android/server/am/ServiceRecord;
    iget-wide v14, v13, Lcom/android/server/am/ServiceRecord;->executingStart:J

    cmp-long v14, v14, v7

    if-gez v14, :cond_3

    .line 5146
    move-object v9, v13

    .line 5147
    goto :goto_2

    .line 5149
    :cond_3
    iget-wide v14, v13, Lcom/android/server/am/ServiceRecord;->executingStart:J

    cmp-long v14, v14, v10

    if-lez v14, :cond_4

    .line 5150
    iget-wide v14, v13, Lcom/android/server/am/ServiceRecord;->executingStart:J

    move-wide v10, v14

    .line 5143
    .end local v13    # "sr":Lcom/android/server/am/ServiceRecord;
    :cond_4
    add-int/lit8 v12, v12, -0x1

    goto :goto_1

    .line 5153
    .end local v12    # "i":I
    :cond_5
    :goto_2
    if-eqz v9, :cond_6

    iget-object v12, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v12, v12, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v12, v2}, Lcom/android/server/am/ProcessList;->isInLruListLOSP(Lcom/android/server/am/ProcessRecord;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 5154
    const-string v12, "ActivityManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Timeout executing service: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5155
    new-instance v12, Ljava/io/StringWriter;

    invoke-direct {v12}, Ljava/io/StringWriter;-><init>()V

    .line 5156
    .local v12, "sw":Ljava/io/StringWriter;
    new-instance v13, Lcom/android/internal/util/FastPrintWriter;

    const/4 v14, 0x0

    const/16 v15, 0x400

    invoke-direct {v13, v12, v14, v15}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/Writer;ZI)V

    .line 5157
    .local v13, "pw":Ljava/io/PrintWriter;
    invoke-virtual {v13, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 5158
    const-string v14, "    "

    invoke-virtual {v9, v13, v14}, Lcom/android/server/am/ServiceRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 5159
    invoke-virtual {v13}, Ljava/io/PrintWriter;->close()V

    .line 5160
    invoke-virtual {v12}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v14

    iput-object v14, v1, Lcom/android/server/am/ActiveServices;->mLastAnrDump:Ljava/lang/String;

    .line 5161
    iget-object v14, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v14, v14, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object v15, v1, Lcom/android/server/am/ActiveServices;->mLastAnrDumpClearer:Ljava/lang/Runnable;

    invoke-virtual {v14, v15}, Lcom/android/server/am/ActivityManagerService$MainHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5162
    iget-object v14, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v14, v14, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object v15, v1, Lcom/android/server/am/ActiveServices;->mLastAnrDumpClearer:Ljava/lang/Runnable;

    move-wide/from16 v16, v5

    .end local v5    # "now":J
    .local v16, "now":J
    const-wide/32 v5, 0x6ddd00

    invoke-virtual {v14, v15, v5, v6}, Lcom/android/server/am/ActivityManagerService$MainHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 5163
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "executing service "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v9, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    .line 5164
    .end local v12    # "sw":Ljava/io/StringWriter;
    .end local v13    # "pw":Ljava/io/PrintWriter;
    goto :goto_4

    .line 5153
    .end local v16    # "now":J
    .restart local v5    # "now":J
    :cond_6
    move-wide/from16 v16, v5

    .line 5165
    .end local v5    # "now":J
    .restart local v16    # "now":J
    iget-object v5, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v6, 0xc

    invoke-virtual {v5, v6}, Lcom/android/server/am/ActivityManagerService$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 5167
    .local v5, "msg":Landroid/os/Message;
    iput-object v2, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 5168
    iget-object v6, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessServiceRecord;->shouldExecServicesFg()Z

    move-result v12

    if-eqz v12, :cond_7

    .line 5169
    sget v12, Lcom/android/server/am/ActiveServices;->SERVICE_TIMEOUT:I

    int-to-long v12, v12

    add-long/2addr v12, v10

    goto :goto_3

    :cond_7
    sget v12, Lcom/android/server/am/ActiveServices;->SERVICE_BACKGROUND_TIMEOUT:I

    int-to-long v12, v12

    add-long/2addr v12, v10

    .line 5168
    :goto_3
    invoke-virtual {v6, v5, v12, v13}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 5171
    .end local v0    # "psr":Lcom/android/server/am/ProcessServiceRecord;
    .end local v5    # "msg":Landroid/os/Message;
    .end local v7    # "maxTime":J
    .end local v9    # "timeout":Lcom/android/server/am/ServiceRecord;
    .end local v10    # "nextTime":J
    .end local v16    # "now":J
    :goto_4
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 5173
    if-eqz v3, :cond_8

    .line 5174
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAnrHelper:Lcom/android/server/am/AnrHelper;

    invoke-virtual {v0, v2, v3}, Lcom/android/server/am/AnrHelper;->appNotResponding(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    .line 5176
    :cond_8
    return-void

    .line 5136
    .restart local v0    # "psr":Lcom/android/server/am/ProcessServiceRecord;
    :cond_9
    :goto_5
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 5171
    .end local v0    # "psr":Lcom/android/server/am/ProcessServiceRecord;
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public setServiceForegroundLocked(Landroid/content/ComponentName;Landroid/os/IBinder;ILandroid/app/Notification;II)V
    .locals 13
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "id"    # I
    .param p4, "notification"    # Landroid/app/Notification;
    .param p5, "flags"    # I
    .param p6, "foregroundServiceType"    # I

    .line 1335
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 1336
    .local v1, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1338
    .local v2, "origId":J
    move-object v10, p0

    move-object v11, p1

    move-object v12, p2

    :try_start_0
    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/am/ActiveServices;->findServiceLocked(Landroid/content/ComponentName;Landroid/os/IBinder;I)Lcom/android/server/am/ServiceRecord;

    move-result-object v0

    .line 1339
    .local v0, "r":Lcom/android/server/am/ServiceRecord;
    if-eqz v0, :cond_0

    .line 1340
    move-object v4, p0

    move-object v5, v0

    move/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    invoke-direct/range {v4 .. v9}, Lcom/android/server/am/ActiveServices;->setServiceForegroundInnerLocked(Lcom/android/server/am/ServiceRecord;ILandroid/app/Notification;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1343
    .end local v0    # "r":Lcom/android/server/am/ServiceRecord;
    :cond_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1344
    nop

    .line 1345
    return-void

    .line 1343
    :catchall_0
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1344
    throw v0
.end method

.method setServiceRestartBackoffEnabledLocked(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 15
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "enable"    # Z
    .param p3, "reason"    # Ljava/lang/String;

    .line 3643
    move-object v6, p0

    move-object/from16 v7, p1

    if-nez p2, :cond_3

    .line 3644
    iget-object v0, v6, Lcom/android/server/am/ActiveServices;->mRestartBackoffDisabledPackages:Landroid/util/ArraySet;

    invoke-virtual {v0, v7}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3646
    return-void

    .line 3648
    :cond_0
    iget-object v0, v6, Lcom/android/server/am/ActiveServices;->mRestartBackoffDisabledPackages:Landroid/util/ArraySet;

    invoke-virtual {v0, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 3650
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 3651
    .local v8, "now":J
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, v6, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v10

    move v11, v0

    .end local v0    # "i":I
    .local v10, "size":I
    .local v11, "i":I
    :goto_0
    if-ge v11, v10, :cond_2

    .line 3652
    iget-object v0, v6, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/android/server/am/ServiceRecord;

    .line 3653
    .local v12, "r":Lcom/android/server/am/ServiceRecord;
    iget-object v0, v12, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-static {v0, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3654
    iget-wide v0, v12, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    sub-long v13, v0, v8

    .line 3655
    .local v13, "remaining":J
    iget-object v0, v6, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v0, v0, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_RESTART_DURATION:J

    cmp-long v0, v13, v0

    if-lez v0, :cond_1

    .line 3656
    iget-object v0, v6, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v0, v0, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_RESTART_DURATION:J

    iput-wide v0, v12, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    .line 3657
    iget-wide v0, v12, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    add-long/2addr v0, v8

    iput-wide v0, v12, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    .line 3658
    const-string v2, "Rescheduling"

    move-object v0, p0

    move-object v1, v12

    move-object/from16 v3, p3

    move-wide v4, v8

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActiveServices;->performScheduleRestartLocked(Lcom/android/server/am/ServiceRecord;Ljava/lang/String;Ljava/lang/String;J)V

    .line 3651
    .end local v12    # "r":Lcom/android/server/am/ServiceRecord;
    .end local v13    # "remaining":J
    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 3662
    .end local v8    # "now":J
    .end local v10    # "size":I
    .end local v11    # "i":I
    :cond_2
    goto :goto_1

    .line 3663
    :cond_3
    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/ActiveServices;->removeServiceRestartBackoffEnabledLocked(Ljava/lang/String;)V

    .line 3667
    :goto_1
    return-void
.end method

.method startServiceInnerLocked(Lcom/android/server/am/ActiveServices$ServiceMap;Landroid/content/Intent;Lcom/android/server/am/ServiceRecord;ZZ)Landroid/content/ComponentName;
    .locals 18
    .param p1, "smap"    # Lcom/android/server/am/ActiveServices$ServiceMap;
    .param p2, "service"    # Landroid/content/Intent;
    .param p3, "r"    # Lcom/android/server/am/ServiceRecord;
    .param p4, "callerFg"    # Z
    .param p5, "addToStarting"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/TransactionTooLargeException;
        }
    .end annotation

    .line 1083
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p3

    invoke-virtual/range {p3 .. p3}, Lcom/android/server/am/ServiceRecord;->getTracker()Lcom/android/internal/app/procstats/ServiceState;

    move-result-object v11

    .line 1084
    .local v11, "stracker":Lcom/android/internal/app/procstats/ServiceState;
    const/4 v12, 0x1

    if-eqz v11, :cond_0

    .line 1085
    iget-object v0, v8, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v0

    iget-wide v1, v10, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    invoke-virtual {v11, v12, v0, v1, v2}, Lcom/android/internal/app/procstats/ServiceState;->setStarted(ZIJ)V

    .line 1087
    :cond_0
    const/4 v13, 0x0

    iput-boolean v13, v10, Lcom/android/server/am/ServiceRecord;->callStart:Z

    .line 1089
    iget-object v0, v10, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v14, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1090
    .local v14, "uid":I
    iget-object v0, v10, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v15

    .line 1091
    .local v15, "packageName":Ljava/lang/String;
    iget-object v0, v10, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    .line 1092
    .local v7, "serviceName":Ljava/lang/String;
    const/16 v0, 0x63

    invoke-static {v0, v14, v15, v7, v12}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;Ljava/lang/String;I)V

    .line 1094
    iget-object v0, v8, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    invoke-virtual {v0, v14, v15, v7}, Lcom/android/server/am/BatteryStatsService;->noteServiceStartRunning(ILjava/lang/String;Ljava/lang/String;)V

    .line 1095
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getFlags()I

    move-result v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v16, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v3, p4

    move-object/from16 v17, v7

    .end local v7    # "serviceName":Ljava/lang/String;
    .local v17, "serviceName":Ljava/lang/String;
    move/from16 v7, v16

    invoke-direct/range {v0 .. v7}, Lcom/android/server/am/ActiveServices;->bringUpServiceLocked(Lcom/android/server/am/ServiceRecord;IZZZZZ)Ljava/lang/String;

    move-result-object v0

    .line 1101
    .local v0, "error":Ljava/lang/String;
    iget-object v1, v8, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v2, "updateOomAdj_startService"

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjPendingTargetsLocked(Ljava/lang/String;)V

    .line 1102
    if-eqz v0, :cond_1

    .line 1103
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "!!"

    invoke-direct {v1, v2, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 1106
    :cond_1
    iget-boolean v1, v10, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    if-eqz v1, :cond_3

    if-eqz p5, :cond_3

    .line 1107
    iget-object v1, v9, Lcom/android/server/am/ActiveServices$ServiceMap;->mStartingBackground:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    move v12, v13

    :goto_0
    move v1, v12

    .line 1108
    .local v1, "first":Z
    iget-object v2, v9, Lcom/android/server/am/ActiveServices$ServiceMap;->mStartingBackground:Ljava/util/ArrayList;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1109
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-object v4, v8, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v4, v4, Lcom/android/server/am/ActivityManagerConstants;->BG_START_TIMEOUT:J

    add-long/2addr v2, v4

    iput-wide v2, v10, Lcom/android/server/am/ServiceRecord;->startingBgTimeout:J

    .line 1117
    if-eqz v1, :cond_4

    .line 1118
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActiveServices$ServiceMap;->rescheduleDelayedStartsLocked()V

    goto :goto_1

    .line 1120
    .end local v1    # "first":Z
    :cond_3
    if-nez p4, :cond_5

    iget-boolean v1, v10, Lcom/android/server/am/ServiceRecord;->fgRequired:Z

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    :goto_1
    goto :goto_3

    .line 1121
    :cond_5
    :goto_2
    invoke-virtual {v9, v10}, Lcom/android/server/am/ActiveServices$ServiceMap;->ensureNotStartingBackgroundLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 1124
    :goto_3
    iget-object v1, v10, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    return-object v1
.end method

.method startServiceLocked(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;I)Landroid/content/ComponentName;
    .locals 12
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "service"    # Landroid/content/Intent;
    .param p3, "resolvedType"    # Ljava/lang/String;
    .param p4, "callingPid"    # I
    .param p5, "callingUid"    # I
    .param p6, "fgRequired"    # Z
    .param p7, "callingPackage"    # Ljava/lang/String;
    .param p8, "callingFeatureId"    # Ljava/lang/String;
    .param p9, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/TransactionTooLargeException;
        }
    .end annotation

    .line 614
    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    invoke-virtual/range {v0 .. v11}, Lcom/android/server/am/ActiveServices;->startServiceLocked(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;IZLandroid/os/IBinder;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method startServiceLocked(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;IZLandroid/os/IBinder;)Landroid/content/ComponentName;
    .locals 28
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "service"    # Landroid/content/Intent;
    .param p3, "resolvedType"    # Ljava/lang/String;
    .param p4, "callingPid"    # I
    .param p5, "callingUid"    # I
    .param p6, "fgRequired"    # Z
    .param p7, "callingPackage"    # Ljava/lang/String;
    .param p8, "callingFeatureId"    # Ljava/lang/String;
    .param p9, "userId"    # I
    .param p10, "allowBackgroundActivityStarts"    # Z
    .param p11, "backgroundActivityStartsToken"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/TransactionTooLargeException;
        }
    .end annotation

    .line 627
    move-object/from16 v14, p0

    move-object/from16 v15, p1

    move-object/from16 v13, p2

    move/from16 v12, p4

    move/from16 v11, p5

    move-object/from16 v10, p7

    const/4 v9, 0x0

    const/4 v8, 0x1

    if-eqz v15, :cond_2

    .line 628
    iget-object v0, v14, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, v15}, Lcom/android/server/am/ActivityManagerService;->getRecordForAppLOSP(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    .line 629
    .local v0, "callerApp":Lcom/android/server/am/ProcessRecord;
    if-eqz v0, :cond_1

    .line 635
    iget-object v1, v0, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessStateRecord;->getSetSchedGroup()I

    move-result v1

    if-eqz v1, :cond_0

    move v1, v8

    goto :goto_0

    :cond_0
    move v1, v9

    :goto_0
    move v0, v1

    .line 636
    .local v0, "callerFg":Z
    move/from16 v16, v0

    goto :goto_1

    .line 630
    .local v0, "callerApp":Lcom/android/server/am/ProcessRecord;
    :cond_1
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to find app for caller "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " (pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") when starting service "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 637
    .end local v0    # "callerApp":Lcom/android/server/am/ProcessRecord;
    :cond_2
    const/4 v0, 0x1

    move/from16 v16, v0

    .line 640
    .local v16, "callerFg":Z
    :goto_1
    const/4 v2, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    .line 641
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p7

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p9

    move/from16 v8, v17

    move/from16 v9, v16

    move/from16 v10, v18

    move v15, v11

    move/from16 v11, v19

    invoke-direct/range {v0 .. v11}, Lcom/android/server/am/ActiveServices;->retrieveServiceLocked(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZZZZ)Lcom/android/server/am/ActiveServices$ServiceLookupResult;

    move-result-object v11

    .line 643
    .local v11, "res":Lcom/android/server/am/ActiveServices$ServiceLookupResult;
    const/16 v17, 0x0

    if-nez v11, :cond_3

    .line 644
    return-object v17

    .line 646
    :cond_3
    iget-object v0, v11, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->record:Lcom/android/server/am/ServiceRecord;

    if-nez v0, :cond_5

    .line 647
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, v11, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->permission:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 648
    iget-object v1, v11, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->permission:Ljava/lang/String;

    goto :goto_2

    :cond_4
    const-string/jumbo v1, "private to package"

    :goto_2
    const-string v2, "!"

    invoke-direct {v0, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    return-object v0

    .line 651
    :cond_5
    iget-object v10, v11, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->record:Lcom/android/server/am/ServiceRecord;

    .line 652
    .local v10, "r":Lcom/android/server/am/ServiceRecord;
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    move/from16 v2, p4

    move/from16 v3, p5

    move-object/from16 v4, p2

    move-object v5, v10

    move/from16 v6, p9

    move/from16 v7, p10

    invoke-direct/range {v0 .. v7}, Lcom/android/server/am/ActiveServices;->setFgsRestrictionLocked(Ljava/lang/String;IILandroid/content/Intent;Lcom/android/server/am/ServiceRecord;IZ)V

    .line 655
    iget-object v0, v14, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    iget v1, v10, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-virtual {v0, v1}, Lcom/android/server/am/UserController;->exists(I)Z

    move-result v0

    const-string v8, "ActivityManager"

    if-nez v0, :cond_6

    .line 656
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Trying to start service with non-existent user! "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v10, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    return-object v17

    .line 663
    :cond_6
    iget-object v0, v14, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v10, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->isUidActiveLOSP(I)Z

    move-result v0

    const/4 v9, 0x1

    xor-int/2addr v0, v9

    move/from16 v18, v0

    .line 668
    .local v18, "bgLaunch":Z
    const/4 v0, 0x0

    .line 669
    .local v0, "forcedStandby":Z
    if-eqz v18, :cond_7

    iget-object v1, v10, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v2, v10, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-direct {v14, v1, v2}, Lcom/android/server/am/ActiveServices;->appRestrictedAnyInBackground(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 674
    const/4 v0, 0x1

    move/from16 v19, v0

    goto :goto_3

    .line 677
    :cond_7
    move/from16 v19, v0

    .end local v0    # "forcedStandby":Z
    .local v19, "forcedStandby":Z
    :goto_3
    if-eqz p6, :cond_9

    .line 678
    invoke-direct {v14, v10}, Lcom/android/server/am/ActiveServices;->logFgsBackgroundStart(Lcom/android/server/am/ServiceRecord;)V

    .line 679
    iget v0, v10, Lcom/android/server/am/ServiceRecord;->mAllowStartForeground:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    invoke-direct {v14, v10}, Lcom/android/server/am/ActiveServices;->isBgFgsRestrictionEnabled(Lcom/android/server/am/ServiceRecord;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 680
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startForegroundService() not allowed due to mAllowStartForeground false: service "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v10, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 683
    .local v0, "msg":Ljava/lang/String;
    invoke-static {v8, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    invoke-direct {v14, v10}, Lcom/android/server/am/ActiveServices;->showFgsBgRestrictedNotificationLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 685
    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {v14, v10, v1, v2}, Lcom/android/server/am/ActiveServices;->logFGSStateChangeLocked(Lcom/android/server/am/ServiceRecord;II)V

    .line 688
    const-wide/32 v1, 0xa5fa937

    invoke-static {v1, v2, v15}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result v1

    if-nez v1, :cond_8

    .line 691
    return-object v17

    .line 689
    :cond_8
    new-instance v1, Landroid/app/ForegroundServiceStartNotAllowedException;

    invoke-direct {v1, v0}, Landroid/app/ForegroundServiceStartNotAllowedException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 696
    .end local v0    # "msg":Ljava/lang/String;
    :cond_9
    const/4 v0, 0x0

    .line 697
    .local v0, "forceSilentAbort":Z
    const-string v7, " pkg="

    const-string v6, " uid="

    const-string v5, " from pid="

    const-string v4, " to "

    if-eqz p6, :cond_a

    .line 698
    iget-object v1, v14, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->getAppOpsManager()Landroid/app/AppOpsManager;

    move-result-object v1

    const/16 v2, 0x4c

    iget-object v3, v10, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v9, v10, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v9}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v1

    .line 700
    .local v1, "mode":I
    packed-switch v1, :pswitch_data_0

    .line 716
    :pswitch_0
    move-object/from16 v9, p7

    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "!!"

    const-string v4, "foreground not allowed as per app op"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 708
    :pswitch_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startForegroundService not allowed due to app op: service "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v10, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v9, p7

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    const/4 v2, 0x0

    .line 713
    .end local p6    # "fgRequired":Z
    .local v2, "fgRequired":Z
    const/4 v0, 0x1

    .line 714
    move/from16 v21, v0

    move v3, v2

    goto :goto_5

    .line 704
    .end local v2    # "fgRequired":Z
    .restart local p6    # "fgRequired":Z
    :pswitch_2
    move-object/from16 v9, p7

    goto :goto_4

    .line 697
    .end local v1    # "mode":I
    :cond_a
    move-object/from16 v9, p7

    .line 722
    :goto_4
    move/from16 v3, p6

    move/from16 v21, v0

    .end local v0    # "forceSilentAbort":Z
    .end local p6    # "fgRequired":Z
    .local v3, "fgRequired":Z
    .local v21, "forceSilentAbort":Z
    :goto_5
    if-nez v19, :cond_c

    iget-boolean v0, v10, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    if-nez v0, :cond_b

    if-nez v3, :cond_b

    goto :goto_6

    :cond_b
    move v2, v3

    move-object/from16 v26, v11

    goto/16 :goto_8

    .line 725
    :cond_c
    :goto_6
    iget-object v0, v14, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v10, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v2, v10, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    move/from16 p6, v3

    .end local v3    # "fgRequired":Z
    .restart local p6    # "fgRequired":Z
    iget-object v3, v10, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v22, 0x0

    const/16 v23, 0x0

    move/from16 v24, p6

    .end local p6    # "fgRequired":Z
    .local v24, "fgRequired":Z
    move-object/from16 v25, v4

    move/from16 v4, p4

    move-object/from16 v26, v11

    move-object v11, v5

    .end local v11    # "res":Lcom/android/server/am/ActiveServices$ServiceLookupResult;
    .local v26, "res":Lcom/android/server/am/ActiveServices$ServiceLookupResult;
    move/from16 v5, v22

    move-object/from16 v27, v6

    move/from16 v6, v23

    move-object v14, v7

    move/from16 v7, v19

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/am/ActivityManagerService;->getAppStartModeLOSP(ILjava/lang/String;IIZZZ)I

    move-result v0

    .line 727
    .local v0, "allowed":I
    if-eqz v0, :cond_10

    .line 728
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Background start not allowed: service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-object/from16 v2, v25

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v10, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v2, v27

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " startFg?="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, v24

    .end local v24    # "fgRequired":Z
    .restart local v2    # "fgRequired":Z
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    const/4 v1, 0x1

    if-eq v0, v1, :cond_f

    if-eqz v21, :cond_d

    move-object/from16 v14, p0

    goto :goto_7

    .line 737
    :cond_d
    if-eqz v19, :cond_e

    .line 741
    if-eqz v2, :cond_e

    .line 745
    return-object v17

    .line 750
    :cond_e
    move-object/from16 v14, p0

    iget-object v1, v14, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v3, v10, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v3}, Lcom/android/server/am/ProcessList;->getUidRecordLOSP(I)Lcom/android/server/am/UidRecord;

    move-result-object v1

    .line 751
    .local v1, "uidRec":Lcom/android/server/am/UidRecord;
    new-instance v3, Landroid/content/ComponentName;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "app is in background uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "?"

    invoke-direct {v3, v5, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    .line 732
    .end local v1    # "uidRec":Lcom/android/server/am/UidRecord;
    :cond_f
    move-object/from16 v14, p0

    .line 735
    :goto_7
    return-object v17

    .line 727
    .end local v2    # "fgRequired":Z
    .restart local v24    # "fgRequired":Z
    :cond_10
    move-object/from16 v14, p0

    move/from16 v2, v24

    .line 759
    .end local v0    # "allowed":I
    .end local v24    # "fgRequired":Z
    .restart local v2    # "fgRequired":Z
    :goto_8
    iget-object v0, v10, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_11

    if-eqz v2, :cond_11

    .line 764
    const/4 v3, 0x0

    move/from16 v20, v3

    .end local v2    # "fgRequired":Z
    .restart local v3    # "fgRequired":Z
    goto :goto_9

    .line 769
    .end local v3    # "fgRequired":Z
    .restart local v2    # "fgRequired":Z
    :cond_11
    move/from16 v20, v2

    .end local v2    # "fgRequired":Z
    .local v20, "fgRequired":Z
    :goto_9
    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move-object v1, v10

    move-object/from16 v2, p2

    move-object/from16 v3, p7

    move-object/from16 v4, p8

    move/from16 v5, p5

    move/from16 v6, p4

    move/from16 v7, v20

    move/from16 v8, v16

    move/from16 v9, p9

    move-object/from16 v24, v10

    .end local v10    # "r":Lcom/android/server/am/ServiceRecord;
    .local v24, "r":Lcom/android/server/am/ServiceRecord;
    move/from16 v10, p10

    move-object/from16 v25, v26

    .end local v26    # "res":Lcom/android/server/am/ActiveServices$ServiceLookupResult;
    .local v25, "res":Lcom/android/server/am/ActiveServices$ServiceLookupResult;
    move-object/from16 v11, p11

    move/from16 v12, v22

    move-object/from16 v13, v23

    invoke-direct/range {v0 .. v13}, Lcom/android/server/am/ActiveServices;->deferServiceBringupIfFrozenLocked(Lcom/android/server/am/ServiceRecord;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;IIZZIZLandroid/os/IBinder;ZLandroid/app/IServiceConnection;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 772
    return-object v17

    .line 781
    :cond_12
    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, p7

    move-object/from16 v3, p8

    move/from16 v4, p5

    move-object/from16 v5, p2

    move/from16 v6, v16

    move/from16 v7, p9

    invoke-direct/range {v0 .. v9}, Lcom/android/server/am/ActiveServices;->requestStartTargetPermissionsReviewIfNeededLocked(Lcom/android/server/am/ServiceRecord;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Intent;ZIZLandroid/app/IServiceConnection;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 783
    return-object v17

    .line 786
    :cond_13
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, p2

    move/from16 v3, p5

    move/from16 v4, p4

    move/from16 v5, v20

    move/from16 v6, v16

    move/from16 v7, p10

    move-object/from16 v8, p11

    invoke-direct/range {v0 .. v8}, Lcom/android/server/am/ActiveServices;->startServiceInnerLocked(Lcom/android/server/am/ServiceRecord;Landroid/content/Intent;IIZZZLandroid/os/IBinder;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method stopAllForegroundServicesLocked(ILjava/lang/String;)V
    .locals 12
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 342
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/am/ActiveServices;->getServiceMapLocked(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v0

    .line 343
    .local v0, "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    iget-object v1, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 344
    .local v1, "N":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 345
    .local v2, "toStop":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ServiceRecord;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_2

    .line 346
    iget-object v4, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ServiceRecord;

    .line 347
    .local v4, "r":Lcom/android/server/am/ServiceRecord;
    iget-object v5, v4, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq p1, v5, :cond_0

    iget-object v5, v4, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 348
    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 349
    :cond_0
    iget-boolean v5, v4, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    if-eqz v5, :cond_1

    .line 350
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 345
    .end local v4    # "r":Lcom/android/server/am/ServiceRecord;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 356
    .end local v3    # "i":I
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 357
    .local v3, "numToStop":I
    nop

    .line 361
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v3, :cond_3

    .line 362
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ServiceRecord;

    .line 366
    .local v5, "r":Lcom/android/server/am/ServiceRecord;
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v6, p0

    move-object v7, v5

    invoke-direct/range {v6 .. v11}, Lcom/android/server/am/ActiveServices;->setServiceForegroundInnerLocked(Lcom/android/server/am/ServiceRecord;ILandroid/app/Notification;II)V

    .line 361
    .end local v5    # "r":Lcom/android/server/am/ServiceRecord;
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 368
    .end local v4    # "i":I
    :cond_3
    return-void
.end method

.method stopForegroundServicesForChannelLocked(Ljava/lang/String;ILjava/lang/String;)V
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "channelId"    # Ljava/lang/String;

    .line 573
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActiveServices$ServiceMap;

    .line 574
    .local v0, "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    if-eqz v0, :cond_1

    .line 575
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 576
    iget-object v2, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ServiceRecord;

    .line 577
    .local v2, "sr":Lcom/android/server/am/ServiceRecord;
    iget-object v3, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-boolean v3, v2, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    if-eqz v3, :cond_0

    .line 578
    iget-object v3, v2, Lcom/android/server/am/ServiceRecord;->foregroundNoti:Landroid/app/Notification;

    invoke-virtual {v3}, Landroid/app/Notification;->getChannelId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 584
    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/server/am/ActiveServices;->stopServiceLocked(Lcom/android/server/am/ServiceRecord;Z)V

    .line 575
    .end local v2    # "sr":Lcom/android/server/am/ServiceRecord;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 589
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method stopInBackgroundLocked(I)V
    .locals 14
    .param p1, "uid"    # I

    .line 1188
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActiveServices$ServiceMap;

    .line 1189
    .local v0, "services":Lcom/android/server/am/ActiveServices$ServiceMap;
    const/4 v1, 0x0

    .line 1190
    .local v1, "stopping":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ServiceRecord;>;"
    if-eqz v0, :cond_4

    .line 1191
    iget-object v2, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_2

    .line 1192
    iget-object v4, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ServiceRecord;

    .line 1193
    .local v4, "service":Lcom/android/server/am/ServiceRecord;
    iget-object v5, v4, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v5, p1, :cond_1

    iget-boolean v5, v4, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    if-eqz v5, :cond_1

    .line 1194
    iget-object v6, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v4, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v8, v4, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    iget-object v5, v4, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v5, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {v6 .. v13}, Lcom/android/server/am/ActivityManagerService;->getAppStartModeLOSP(ILjava/lang/String;IIZZZ)I

    move-result v5

    if-eqz v5, :cond_1

    .line 1197
    if-nez v1, :cond_0

    .line 1198
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v5

    .line 1200
    :cond_0
    iget-object v5, v4, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    .line 1201
    .local v5, "compName":Ljava/lang/String;
    iget-object v6, v4, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v6, v5}, Lcom/android/server/am/EventLogTags;->writeAmStopIdleService(ILjava/lang/String;)V

    .line 1202
    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v7, 0x40

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1203
    .local v6, "sb":Ljava/lang/StringBuilder;
    const-string v7, "Stopping service due to app idle: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1204
    iget-object v7, v4, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v6, v7}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    .line 1205
    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1206
    iget-wide v8, v4, Lcom/android/server/am/ServiceRecord;->createRealTime:J

    .line 1207
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    sub-long/2addr v8, v10

    .line 1206
    invoke-static {v8, v9, v6}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 1208
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1209
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1210
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "ActivityManager"

    invoke-static {v8, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1211
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1215
    iget-object v7, v4, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v8, v4, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-direct {p0, v7, v8}, Lcom/android/server/am/ActiveServices;->appRestrictedAnyInBackground(ILjava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1217
    invoke-direct {p0, v4}, Lcom/android/server/am/ActiveServices;->cancelForegroundNotificationLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 1191
    .end local v4    # "service":Lcom/android/server/am/ServiceRecord;
    .end local v5    # "compName":Ljava/lang/String;
    .end local v6    # "sb":Ljava/lang/StringBuilder;
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_0

    .line 1222
    .end local v2    # "i":I
    :cond_2
    if-eqz v1, :cond_4

    .line 1223
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1224
    .local v2, "size":I
    add-int/lit8 v4, v2, -0x1

    .local v4, "i":I
    :goto_1
    if-ltz v4, :cond_3

    .line 1225
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ServiceRecord;

    .line 1226
    .local v5, "service":Lcom/android/server/am/ServiceRecord;
    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/android/server/am/ServiceRecord;->delayed:Z

    .line 1227
    invoke-virtual {v0, v5}, Lcom/android/server/am/ActiveServices$ServiceMap;->ensureNotStartingBackgroundLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 1228
    invoke-direct {p0, v5, v3}, Lcom/android/server/am/ActiveServices;->stopServiceLocked(Lcom/android/server/am/ServiceRecord;Z)V

    .line 1224
    .end local v5    # "service":Lcom/android/server/am/ServiceRecord;
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 1230
    .end local v4    # "i":I
    :cond_3
    if-lez v2, :cond_4

    .line 1231
    iget-object v3, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v4, "updateOomAdj_unbindService"

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjPendingTargetsLocked(Ljava/lang/String;)V

    .line 1235
    .end local v2    # "size":I
    :cond_4
    return-void
.end method

.method stopServiceLocked(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;I)I
    .locals 16
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "service"    # Landroid/content/Intent;
    .param p3, "resolvedType"    # Ljava/lang/String;
    .param p4, "userId"    # I

    .line 1158
    move-object/from16 v13, p0

    move-object/from16 v14, p1

    iget-object v0, v13, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, v14}, Lcom/android/server/am/ActivityManagerService;->getRecordForAppLOSP(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;

    move-result-object v15

    .line 1159
    .local v15, "callerApp":Lcom/android/server/am/ProcessRecord;
    if-eqz v14, :cond_1

    if-eqz v15, :cond_0

    move-object/from16 v12, p2

    goto :goto_0

    .line 1160
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to find app for caller "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " (pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1162
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") when stopping service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v12, p2

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1159
    :cond_1
    move-object/from16 v12, p2

    .line 1167
    :goto_0
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 1168
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v0, 0x0

    .line 1167
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v4, p3

    move/from16 v8, p4

    move v12, v0

    invoke-direct/range {v1 .. v12}, Lcom/android/server/am/ActiveServices;->retrieveServiceLocked(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZZZZ)Lcom/android/server/am/ActiveServices$ServiceLookupResult;

    move-result-object v1

    .line 1169
    .local v1, "r":Lcom/android/server/am/ActiveServices$ServiceLookupResult;
    if-eqz v1, :cond_3

    .line 1170
    iget-object v2, v1, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->record:Lcom/android/server/am/ServiceRecord;

    if-eqz v2, :cond_2

    .line 1171
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1173
    .local v2, "origId":J
    :try_start_0
    iget-object v4, v1, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->record:Lcom/android/server/am/ServiceRecord;

    invoke-direct {v13, v4, v0}, Lcom/android/server/am/ActiveServices;->stopServiceLocked(Lcom/android/server/am/ServiceRecord;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1175
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1176
    nop

    .line 1177
    const/4 v0, 0x1

    return v0

    .line 1175
    :catchall_0
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1176
    throw v0

    .line 1179
    .end local v2    # "origId":J
    :cond_2
    const/4 v0, -0x1

    return v0

    .line 1182
    :cond_3
    return v0
.end method

.method stopServiceTokenLocked(Landroid/content/ComponentName;Landroid/os/IBinder;I)Z
    .locals 9
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "startId"    # I

    .line 1285
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/am/ActiveServices;->findServiceLocked(Landroid/content/ComponentName;Landroid/os/IBinder;I)Lcom/android/server/am/ServiceRecord;

    move-result-object v0

    .line 1286
    .local v0, "r":Lcom/android/server/am/ServiceRecord;
    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 1287
    if-ltz p3, :cond_3

    .line 1291
    invoke-virtual {v0, p3, v1, v1}, Lcom/android/server/am/ServiceRecord;->findDeliveredStart(IZZ)Lcom/android/server/am/ServiceRecord$StartItem;

    move-result-object v2

    .line 1292
    .local v2, "si":Lcom/android/server/am/ServiceRecord$StartItem;
    if-eqz v2, :cond_1

    .line 1293
    :goto_0
    iget-object v3, v0, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 1294
    iget-object v3, v0, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ServiceRecord$StartItem;

    .line 1295
    .local v3, "cur":Lcom/android/server/am/ServiceRecord$StartItem;
    invoke-virtual {v3}, Lcom/android/server/am/ServiceRecord$StartItem;->removeUriPermissionsLocked()V

    .line 1296
    if-ne v3, v2, :cond_0

    .line 1297
    goto :goto_1

    .line 1299
    .end local v3    # "cur":Lcom/android/server/am/ServiceRecord$StartItem;
    :cond_0
    goto :goto_0

    .line 1302
    :cond_1
    :goto_1
    invoke-virtual {v0}, Lcom/android/server/am/ServiceRecord;->getLastStartId()I

    move-result v3

    if-eq v3, p3, :cond_2

    .line 1303
    return v1

    .line 1306
    :cond_2
    iget-object v3, v0, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 1307
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "stopServiceToken startId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " is last, but have "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    .line 1308
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " remaining args"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1307
    const-string v4, "ActivityManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1313
    .end local v2    # "si":Lcom/android/server/am/ServiceRecord$StartItem;
    :cond_3
    iget-object v2, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1314
    .local v2, "uid":I
    iget-object v3, v0, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 1315
    .local v3, "packageName":Ljava/lang/String;
    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    .line 1316
    .local v4, "serviceName":Ljava/lang/String;
    const/16 v5, 0x63

    const/4 v6, 0x2

    invoke-static {v5, v2, v3, v4, v6}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;Ljava/lang/String;I)V

    .line 1318
    iget-object v5, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    invoke-virtual {v5, v2, v3, v4}, Lcom/android/server/am/BatteryStatsService;->noteServiceStopRunning(ILjava/lang/String;Ljava/lang/String;)V

    .line 1319
    iput-boolean v1, v0, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    .line 1320
    iget-object v5, v0, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    if-eqz v5, :cond_4

    .line 1321
    iget-object v5, v0, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    iget-object v6, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v6}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v6

    .line 1322
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 1321
    invoke-virtual {v5, v1, v6, v7, v8}, Lcom/android/internal/app/procstats/ServiceState;->setStarted(ZIJ)V

    .line 1324
    :cond_4
    iput-boolean v1, v0, Lcom/android/server/am/ServiceRecord;->callStart:Z

    .line 1325
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .line 1326
    .local v5, "origId":J
    invoke-direct {p0, v0, v1, v1, v1}, Lcom/android/server/am/ActiveServices;->bringDownServiceIfNeededLocked(Lcom/android/server/am/ServiceRecord;ZZZ)V

    .line 1327
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1328
    const/4 v1, 0x1

    return v1

    .line 1330
    .end local v2    # "uid":I
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "serviceName":Ljava/lang/String;
    .end local v5    # "origId":J
    :cond_5
    return v1
.end method

.method systemServicesReady()V
    .locals 2

    .line 521
    const-class v0, Lcom/android/server/AppStateTracker;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppStateTracker;

    .line 522
    .local v0, "ast":Lcom/android/server/AppStateTracker;
    new-instance v1, Lcom/android/server/am/ActiveServices$ForcedStandbyListener;

    invoke-direct {v1, p0}, Lcom/android/server/am/ActiveServices$ForcedStandbyListener;-><init>(Lcom/android/server/am/ActiveServices;)V

    invoke-interface {v0, v1}, Lcom/android/server/AppStateTracker;->addServiceStateListener(Lcom/android/server/AppStateTracker$ServiceStateListener;)V

    .line 523
    const-class v1, Landroid/appwidget/AppWidgetManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/appwidget/AppWidgetManagerInternal;

    iput-object v1, p0, Lcom/android/server/am/ActiveServices;->mAppWidgetManagerInternal:Landroid/appwidget/AppWidgetManagerInternal;

    .line 524
    invoke-direct {p0}, Lcom/android/server/am/ActiveServices;->setAllowListWhileInUsePermissionInFgs()V

    .line 525
    return-void
.end method

.method unbindFinishedLocked(Lcom/android/server/am/ServiceRecord;Landroid/content/Intent;Z)V
    .locals 10
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "doRebind"    # Z

    .line 3003
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3005
    .local v0, "origId":J
    if-eqz p1, :cond_4

    .line 3006
    :try_start_0
    new-instance v2, Landroid/content/Intent$FilterComparison;

    invoke-direct {v2, p2}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    .line 3008
    .local v2, "filter":Landroid/content/Intent$FilterComparison;
    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/IntentBindRecord;

    .line 3013
    .local v3, "b":Lcom/android/server/am/IntentBindRecord;
    iget-object v4, p0, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    .line 3014
    .local v4, "inDestroying":Z
    if-eqz v3, :cond_3

    .line 3015
    iget-object v5, v3, Lcom/android/server/am/IntentBindRecord;->apps:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    const/4 v6, 0x1

    if-lez v5, :cond_2

    if-nez v4, :cond_2

    .line 3018
    const/4 v5, 0x0

    .line 3019
    .local v5, "inFg":Z
    iget-object v7, v3, Lcom/android/server/am/IntentBindRecord;->apps:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v7

    sub-int/2addr v7, v6

    .local v7, "i":I
    :goto_0
    if-ltz v7, :cond_1

    .line 3020
    iget-object v8, v3, Lcom/android/server/am/IntentBindRecord;->apps:Landroid/util/ArrayMap;

    invoke-virtual {v8, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/AppBindRecord;

    iget-object v8, v8, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    .line 3021
    .local v8, "client":Lcom/android/server/am/ProcessRecord;
    if-eqz v8, :cond_0

    iget-object v9, v8, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getSetSchedGroup()I

    move-result v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v9, :cond_0

    .line 3023
    const/4 v5, 0x1

    .line 3024
    goto :goto_1

    .line 3019
    .end local v8    # "client":Lcom/android/server/am/ProcessRecord;
    :cond_0
    add-int/lit8 v7, v7, -0x1

    goto :goto_0

    .line 3028
    .end local v7    # "i":I
    :cond_1
    :goto_1
    :try_start_1
    invoke-direct {p0, p1, v3, v5, v6}, Lcom/android/server/am/ActiveServices;->requestServiceBindingLocked(Lcom/android/server/am/ServiceRecord;Lcom/android/server/am/IntentBindRecord;ZZ)Z
    :try_end_1
    .catch Landroid/os/TransactionTooLargeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3031
    goto :goto_2

    .line 3029
    :catch_0
    move-exception v6

    .line 3032
    .end local v5    # "inFg":Z
    :goto_2
    goto :goto_3

    .line 3035
    :cond_2
    :try_start_2
    iput-boolean v6, v3, Lcom/android/server/am/IntentBindRecord;->doRebind:Z

    .line 3039
    :cond_3
    :goto_3
    const/4 v5, 0x0

    invoke-direct {p0, p1, v4, v5, v5}, Lcom/android/server/am/ActiveServices;->serviceDoneExecutingLocked(Lcom/android/server/am/ServiceRecord;ZZZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    .line 3042
    .end local v2    # "filter":Landroid/content/Intent$FilterComparison;
    .end local v3    # "b":Lcom/android/server/am/IntentBindRecord;
    .end local v4    # "inDestroying":Z
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3043
    throw v2

    .line 3042
    :cond_4
    :goto_4
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3043
    nop

    .line 3044
    return-void
.end method

.method unbindServiceLocked(Landroid/app/IServiceConnection;)Z
    .locals 13
    .param p1, "connection"    # Landroid/app/IServiceConnection;

    .line 2958
    invoke-interface {p1}, Landroid/app/IServiceConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 2960
    .local v0, "binder":Landroid/os/IBinder;
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mServiceConnections:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 2961
    .local v1, "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    const-string v2, "ActivityManager"

    const/4 v3, 0x0

    if-nez v1, :cond_0

    .line 2962
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unbind failed: could not find connection for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2963
    invoke-interface {p1}, Landroid/app/IServiceConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2962
    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2964
    return v3

    .line 2967
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 2969
    .local v4, "origId":J
    :goto_0
    :try_start_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x1

    if-lez v6, :cond_5

    .line 2970
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ConnectionRecord;

    .line 2971
    .local v6, "r":Lcom/android/server/am/ConnectionRecord;
    const/4 v8, 0x0

    invoke-virtual {p0, v6, v8, v8, v7}, Lcom/android/server/am/ActiveServices;->removeConnectionLocked(Lcom/android/server/am/ConnectionRecord;Lcom/android/server/am/ProcessRecord;Lcom/android/server/wm/ActivityServiceConnectionsHolder;Z)V

    .line 2972
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v6, :cond_1

    .line 2974
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Connection "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " not removed for binder "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2975
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2978
    :cond_1
    iget-object v9, v6, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v9, v9, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v9, v9, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 2979
    .local v9, "app":Lcom/android/server/am/ProcessRecord;
    if-eqz v9, :cond_4

    .line 2980
    iget-object v10, v9, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 2981
    .local v10, "psr":Lcom/android/server/am/ProcessServiceRecord;
    iget-boolean v11, v10, Lcom/android/server/am/ProcessServiceRecord;->mAllowlistManager:Z

    if-eqz v11, :cond_2

    .line 2982
    invoke-direct {p0, v10}, Lcom/android/server/am/ActiveServices;->updateAllowlistManagerLocked(Lcom/android/server/am/ProcessServiceRecord;)V

    .line 2985
    :cond_2
    iget v11, v6, Lcom/android/server/am/ConnectionRecord;->flags:I

    const/high16 v12, 0x8000000

    and-int/2addr v11, v12

    if-eqz v11, :cond_3

    .line 2986
    invoke-virtual {v10, v7}, Lcom/android/server/am/ProcessServiceRecord;->setTreatLikeActivity(Z)V

    .line 2987
    iget-object v11, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v11, v9, v7, v8}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZLcom/android/server/am/ProcessRecord;)V

    .line 2989
    :cond_3
    iget-object v7, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v7, v9}, Lcom/android/server/am/ActivityManagerService;->enqueueOomAdjTargetLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 2991
    .end local v6    # "r":Lcom/android/server/am/ConnectionRecord;
    .end local v9    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v10    # "psr":Lcom/android/server/am/ProcessServiceRecord;
    :cond_4
    goto :goto_0

    .line 2993
    :cond_5
    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v3, "updateOomAdj_unbindService"

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjPendingTargetsLocked(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2996
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2997
    nop

    .line 2999
    return v7

    .line 2996
    :catchall_0
    move-exception v2

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2997
    throw v2
.end method

.method updateForegroundApps(Lcom/android/server/am/ActiveServices$ServiceMap;)V
    .locals 13
    .param p1, "smap"    # Lcom/android/server/am/ActiveServices$ServiceMap;

    .line 1417
    const/4 v0, 0x0

    .line 1418
    .local v0, "active":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActiveServices$ActiveForegroundApp;>;"
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1419
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 1420
    .local v2, "now":J
    const-wide v4, 0x7fffffffffffffffL

    .line 1421
    .local v4, "nextUpdateTime":J
    if-eqz p1, :cond_6

    .line 1424
    iget-object v6, p1, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundApps:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    .local v6, "i":I
    :goto_0
    if-ltz v6, :cond_5

    .line 1425
    iget-object v8, p1, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundApps:Landroid/util/ArrayMap;

    invoke-virtual {v8, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;

    .line 1426
    .local v8, "aa":Lcom/android/server/am/ActiveServices$ActiveForegroundApp;
    iget-wide v9, v8, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mEndTime:J

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_1

    .line 1427
    invoke-virtual {p0, v8, v2, v3}, Lcom/android/server/am/ActiveServices;->foregroundAppShownEnoughLocked(Lcom/android/server/am/ActiveServices$ActiveForegroundApp;J)Z

    move-result v9

    .line 1428
    .local v9, "canRemove":Z
    if-eqz v9, :cond_0

    .line 1430
    iget-object v10, p1, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundApps:Landroid/util/ArrayMap;

    invoke-virtual {v10, v6}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 1431
    iput-boolean v7, p1, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundAppsChanged:Z

    .line 1432
    goto :goto_1

    .line 1434
    :cond_0
    iget-wide v10, v8, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mHideTime:J

    cmp-long v10, v10, v4

    if-gez v10, :cond_1

    .line 1435
    iget-wide v10, v8, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mHideTime:J

    move-wide v4, v10

    .line 1438
    .end local v9    # "canRemove":Z
    :cond_1
    iget-boolean v9, v8, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mAppOnTop:Z

    if-nez v9, :cond_4

    .line 1441
    iget v9, v8, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mUid:I

    iget-object v10, v8, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mPackageName:Ljava/lang/String;

    invoke-direct {p0, v9, v10}, Lcom/android/server/am/ActiveServices;->appRestrictedAnyInBackground(ILjava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 1442
    if-nez v0, :cond_2

    .line 1443
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v9

    .line 1447
    :cond_2
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1454
    :cond_3
    iget v9, v8, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mUid:I

    iget-object v10, v8, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0, v9, v10}, Lcom/android/server/am/ActiveServices;->stopAllForegroundServicesLocked(ILjava/lang/String;)V

    .line 1424
    .end local v8    # "aa":Lcom/android/server/am/ActiveServices$ActiveForegroundApp;
    :cond_4
    :goto_1
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    .line 1458
    .end local v6    # "i":I
    :cond_5
    const/4 v6, 0x2

    invoke-virtual {p1, v6}, Lcom/android/server/am/ActiveServices$ServiceMap;->removeMessages(I)V

    .line 1459
    const-wide v7, 0x7fffffffffffffffL

    cmp-long v7, v4, v7

    if-gez v7, :cond_6

    .line 1462
    invoke-virtual {p1, v6}, Lcom/android/server/am/ActiveServices$ServiceMap;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    .line 1463
    .local v6, "msg":Landroid/os/Message;
    nop

    .line 1464
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    add-long/2addr v7, v4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    sub-long/2addr v7, v9

    .line 1463
    invoke-virtual {p1, v6, v7, v8}, Lcom/android/server/am/ActiveServices$ServiceMap;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 1467
    .end local v6    # "msg":Landroid/os/Message;
    :cond_6
    iget-boolean v6, p1, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundAppsChanged:Z

    if-nez v6, :cond_7

    .line 1468
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 1470
    :cond_7
    const/4 v6, 0x0

    :try_start_1
    iput-boolean v6, p1, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundAppsChanged:Z

    .line 1471
    .end local v2    # "now":J
    .end local v4    # "nextUpdateTime":J
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1474
    return-void

    .line 1471
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v2
.end method

.method updateScreenStateLocked(Z)V
    .locals 14
    .param p1, "screenOn"    # Z

    .line 1583
    iget-boolean v0, p0, Lcom/android/server/am/ActiveServices;->mScreenOn:Z

    if-eq v0, p1, :cond_7

    .line 1584
    iput-boolean p1, p0, Lcom/android/server/am/ActiveServices;->mScreenOn:Z

    .line 1588
    if-eqz p1, :cond_7

    .line 1589
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1591
    .local v0, "nowElapsed":J
    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_7

    .line 1592
    iget-object v4, p0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActiveServices$ServiceMap;

    .line 1593
    .local v4, "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    const-wide v5, 0x7fffffffffffffffL

    .line 1594
    .local v5, "nextUpdateTime":J
    const/4 v7, 0x0

    .line 1595
    .local v7, "changed":Z
    iget-object v8, v4, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundApps:Landroid/util/ArrayMap;

    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v8

    sub-int/2addr v8, v3

    .local v8, "j":I
    :goto_1
    const-wide/16 v9, 0x0

    if-ltz v8, :cond_4

    .line 1596
    iget-object v11, v4, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundApps:Landroid/util/ArrayMap;

    invoke-virtual {v11, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;

    .line 1597
    .local v11, "active":Lcom/android/server/am/ActiveServices$ActiveForegroundApp;
    iget-wide v12, v11, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mEndTime:J

    cmp-long v9, v12, v9

    if-nez v9, :cond_0

    .line 1598
    iget-boolean v9, v11, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mShownWhileScreenOn:Z

    if-nez v9, :cond_3

    .line 1599
    iput-boolean v3, v11, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mShownWhileScreenOn:Z

    .line 1600
    iput-wide v0, v11, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mStartVisibleTime:J

    goto :goto_2

    .line 1603
    :cond_0
    iget-boolean v9, v11, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mShownWhileScreenOn:Z

    if-nez v9, :cond_1

    iget-wide v9, v11, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mStartVisibleTime:J

    iget-wide v12, v11, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mStartTime:J

    cmp-long v9, v9, v12

    if-nez v9, :cond_1

    .line 1608
    iput-wide v0, v11, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mStartVisibleTime:J

    iput-wide v0, v11, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mEndTime:J

    .line 1610
    :cond_1
    invoke-virtual {p0, v11, v0, v1}, Lcom/android/server/am/ActiveServices;->foregroundAppShownEnoughLocked(Lcom/android/server/am/ActiveServices$ActiveForegroundApp;J)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1613
    iget-object v9, v4, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundApps:Landroid/util/ArrayMap;

    iget-object v10, v11, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mPackageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1614
    iput-boolean v3, v4, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundAppsChanged:Z

    .line 1615
    const/4 v7, 0x1

    goto :goto_2

    .line 1617
    :cond_2
    iget-wide v9, v11, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mHideTime:J

    cmp-long v9, v9, v5

    if-gez v9, :cond_3

    .line 1618
    iget-wide v5, v11, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mHideTime:J

    .line 1595
    .end local v11    # "active":Lcom/android/server/am/ActiveServices$ActiveForegroundApp;
    :cond_3
    :goto_2
    add-int/lit8 v8, v8, -0x1

    goto :goto_1

    .line 1623
    .end local v8    # "j":I
    :cond_4
    if-eqz v7, :cond_5

    .line 1625
    invoke-direct {p0, v4, v9, v10}, Lcom/android/server/am/ActiveServices;->requestUpdateActiveForegroundAppsLocked(Lcom/android/server/am/ActiveServices$ServiceMap;J)V

    goto :goto_3

    .line 1626
    :cond_5
    const-wide v8, 0x7fffffffffffffffL

    cmp-long v8, v5, v8

    if-gez v8, :cond_6

    .line 1627
    invoke-direct {p0, v4, v5, v6}, Lcom/android/server/am/ActiveServices;->requestUpdateActiveForegroundAppsLocked(Lcom/android/server/am/ActiveServices$ServiceMap;J)V

    .line 1591
    .end local v4    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .end local v5    # "nextUpdateTime":J
    .end local v7    # "changed":Z
    :cond_6
    :goto_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1632
    .end local v0    # "nowElapsed":J
    .end local v2    # "i":I
    :cond_7
    return-void
.end method

.method public updateServiceApplicationInfoLocked(Landroid/content/pm/ApplicationInfo;)V
    .locals 7
    .param p1, "applicationInfo"    # Landroid/content/pm/ApplicationInfo;

    .line 5206
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 5207
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActiveServices$ServiceMap;

    .line 5208
    .local v1, "serviceMap":Lcom/android/server/am/ActiveServices$ServiceMap;
    if-eqz v1, :cond_1

    .line 5209
    iget-object v2, v1, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    .line 5211
    .local v2, "servicesByName":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Lcom/android/server/am/ServiceRecord;>;"
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "j":I
    :goto_0
    if-ltz v3, :cond_1

    .line 5212
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ServiceRecord;

    .line 5213
    .local v4, "serviceRecord":Lcom/android/server/am/ServiceRecord;
    iget-object v5, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v6, v4, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 5214
    iput-object p1, v4, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 5215
    iget-object v5, v4, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iput-object p1, v5, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 5211
    .end local v4    # "serviceRecord":Lcom/android/server/am/ServiceRecord;
    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 5219
    .end local v2    # "servicesByName":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Lcom/android/server/am/ServiceRecord;>;"
    .end local v3    # "j":I
    :cond_1
    return-void
.end method

.method updateServiceConnectionActivitiesLocked(Lcom/android/server/am/ProcessServiceRecord;)V
    .locals 7
    .param p1, "clientPsr"    # Lcom/android/server/am/ProcessServiceRecord;

    .line 2553
    const/4 v0, 0x0

    .line 2554
    .local v0, "updatedProcesses":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/am/ProcessRecord;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/am/ProcessServiceRecord;->numberOfConnections()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 2555
    invoke-virtual {p1, v1}, Lcom/android/server/am/ProcessServiceRecord;->getConnectionAt(I)Lcom/android/server/am/ConnectionRecord;

    move-result-object v2

    .line 2556
    .local v2, "conn":Lcom/android/server/am/ConnectionRecord;
    iget-object v3, v2, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v3, v3, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v3, v3, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 2557
    .local v3, "proc":Lcom/android/server/am/ProcessRecord;
    if-eqz v3, :cond_3

    iget-object v4, p1, Lcom/android/server/am/ProcessServiceRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    if-ne v3, v4, :cond_0

    .line 2558
    goto :goto_2

    .line 2559
    :cond_0
    if-nez v0, :cond_1

    .line 2560
    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    move-object v0, v4

    goto :goto_1

    .line 2561
    :cond_1
    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2562
    goto :goto_2

    .line 2564
    :cond_2
    :goto_1
    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2565
    iget-object v4, v3, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {p0, v4, v5, v6}, Lcom/android/server/am/ActiveServices;->updateServiceClientActivitiesLocked(Lcom/android/server/am/ProcessServiceRecord;Lcom/android/server/am/ConnectionRecord;Z)Z

    .line 2554
    .end local v2    # "conn":Lcom/android/server/am/ConnectionRecord;
    .end local v3    # "proc":Lcom/android/server/am/ProcessRecord;
    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2567
    .end local v1    # "i":I
    :cond_4
    return-void
.end method

.method updateServiceGroupLocked(Landroid/app/IServiceConnection;II)V
    .locals 8
    .param p1, "connection"    # Landroid/app/IServiceConnection;
    .param p2, "group"    # I
    .param p3, "importance"    # I

    .line 2922
    invoke-interface {p1}, Landroid/app/IServiceConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 2924
    .local v0, "binder":Landroid/os/IBinder;
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mServiceConnections:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 2925
    .local v1, "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    if-eqz v1, :cond_5

    .line 2929
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_4

    .line 2930
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ConnectionRecord;

    .line 2931
    .local v3, "crec":Lcom/android/server/am/ConnectionRecord;
    iget-object v4, v3, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v4, v4, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    .line 2932
    .local v4, "srec":Lcom/android/server/am/ServiceRecord;
    if-eqz v4, :cond_3

    iget-object v5, v4, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget v5, v5, Landroid/content/pm/ServiceInfo;->flags:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_3

    .line 2933
    iget-object v5, v4, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    .line 2934
    iget-object v5, v4, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 2935
    .local v5, "psr":Lcom/android/server/am/ProcessServiceRecord;
    if-lez p2, :cond_0

    .line 2936
    invoke-virtual {v5, v4}, Lcom/android/server/am/ProcessServiceRecord;->setConnectionService(Lcom/android/server/am/ServiceRecord;)V

    .line 2937
    invoke-virtual {v5, p2}, Lcom/android/server/am/ProcessServiceRecord;->setConnectionGroup(I)V

    .line 2938
    invoke-virtual {v5, p3}, Lcom/android/server/am/ProcessServiceRecord;->setConnectionImportance(I)V

    goto :goto_1

    .line 2940
    :cond_0
    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Lcom/android/server/am/ProcessServiceRecord;->setConnectionService(Lcom/android/server/am/ServiceRecord;)V

    .line 2941
    invoke-virtual {v5, v6}, Lcom/android/server/am/ProcessServiceRecord;->setConnectionGroup(I)V

    .line 2942
    invoke-virtual {v5, v6}, Lcom/android/server/am/ProcessServiceRecord;->setConnectionImportance(I)V

    .line 2944
    .end local v5    # "psr":Lcom/android/server/am/ProcessServiceRecord;
    :goto_1
    goto :goto_2

    .line 2945
    :cond_1
    if-lez p2, :cond_2

    .line 2946
    iput p2, v4, Lcom/android/server/am/ServiceRecord;->pendingConnectionGroup:I

    .line 2947
    iput p3, v4, Lcom/android/server/am/ServiceRecord;->pendingConnectionImportance:I

    goto :goto_2

    .line 2949
    :cond_2
    iput v6, v4, Lcom/android/server/am/ServiceRecord;->pendingConnectionGroup:I

    .line 2950
    iput v6, v4, Lcom/android/server/am/ServiceRecord;->pendingConnectionImportance:I

    .line 2929
    .end local v3    # "crec":Lcom/android/server/am/ConnectionRecord;
    .end local v4    # "srec":Lcom/android/server/am/ServiceRecord;
    :cond_3
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 2955
    .end local v2    # "i":I
    :cond_4
    return-void

    .line 2926
    :cond_5
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not find connection for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2927
    invoke-interface {p1}, Landroid/app/IServiceConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
