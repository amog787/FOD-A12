.class public Lcom/android/server/pm/permission/PermissionManagerService;
.super Landroid/permission/IPermissionManager$Stub;
.source "PermissionManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;,
        Lcom/android/server/pm/permission/PermissionManagerService$AttributionSourceRegistry;,
        Lcom/android/server/pm/permission/PermissionManagerService$ShellDelegate;,
        Lcom/android/server/pm/permission/PermissionManagerService$CheckPermissionDelegate;,
        Lcom/android/server/pm/permission/PermissionManagerService$OnPermissionChangeListeners;,
        Lcom/android/server/pm/permission/PermissionManagerService$PermissionCallback;,
        Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;,
        Lcom/android/server/pm/permission/PermissionManagerService$UpdatePermissionFlags;
    }
.end annotation


# static fields
.field private static final BACKGROUND_RATIONALE_CHANGE_ID:J = 0x8c7dff3L

.field private static final BACKUP_TIMEOUT_MILLIS:J

.field private static final BLOCKING_PERMISSION_FLAGS:I = 0x34

.field private static final CAR_PACKAGE_NAME:Ljava/lang/String; = "com.android.car"

.field private static final EMPTY_INT_ARRAY:[I

.field private static final FULLER_PERMISSION_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final MAX_PERMISSION_TREE_FOOTPRINT:I = 0x8000

.field private static final STORAGE_PERMISSIONS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "PackageManager"

.field private static final UPDATE_PERMISSIONS_ALL:I = 0x1

.field private static final UPDATE_PERMISSIONS_REPLACE_ALL:I = 0x4

.field private static final UPDATE_PERMISSIONS_REPLACE_PKG:I = 0x2

.field private static final USER_PERMISSION_FLAGS:I = 0x3


# instance fields
.field private final mAppOpsManager:Landroid/app/AppOpsManager;

.field private final mAttributionSourceRegistry:Lcom/android/server/pm/permission/PermissionManagerService$AttributionSourceRegistry;

.field private mCheckPermissionDelegate:Lcom/android/server/pm/permission/PermissionManagerService$CheckPermissionDelegate;

.field private final mContext:Landroid/content/Context;

.field private final mDefaultPermissionCallback:Lcom/android/server/pm/permission/PermissionManagerService$PermissionCallback;

.field private final mGlobalGids:[I

.field private final mHandler:Landroid/os/Handler;

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private final mHasNoDelayedPermBackup:Landroid/util/SparseBooleanArray;

.field private mHotwordDetectionServiceProvider:Lcom/android/server/pm/permission/PermissionManagerServiceInternal$HotwordDetectionServiceProvider;

.field private final mLock:Ljava/lang/Object;

.field private final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private final mOnPermissionChangeListeners:Lcom/android/server/pm/permission/PermissionManagerService$OnPermissionChangeListeners;

.field private final mOneTimePermissionUserManagers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/pm/permission/OneTimePermissionUserManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

.field private mPermissionControllerManager:Landroid/permission/PermissionControllerManager;

.field private mPermissionPolicyInternal:Lcom/android/server/policy/PermissionPolicyInternal;

.field private final mPlatformCompat:Lcom/android/internal/compat/IPlatformCompat;

.field private mPrivappPermissionsViolations:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mPrivilegedPermissionAllowlistSourcePackageNames:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

.field private final mRuntimePermissionStateChangedListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/pm/permission/PermissionManagerServiceInternal$OnRuntimePermissionStateChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mState:Lcom/android/server/pm/permission/DevicePermissionState;

.field private final mSystemPermissions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mSystemReady:Z

.field private final mUserManagerInt:Lcom/android/server/pm/UserManagerInternal;


# direct methods
.method public static synthetic $r8$lambda$-jwWzLOAecD4maFgzcXBwZFTpcY(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerService;->checkPermissionImpl(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$90k0yAxORkIVQrpOlgT8lZ-lcvM(Lcom/android/server/pm/permission/PermissionManagerService;ILjava/lang/String;)I
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->checkUidPermissionImpl(ILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$AdmbnHOAaZZsea9HyB2538mR5A4(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->doNotifyRuntimePermissionStateChanged(Ljava/lang/String;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 191
    const-class v0, Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/permission/PermissionManagerService;->LOG_TAG:Ljava/lang/String;

    .line 193
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3c

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/pm/permission/PermissionManagerService;->BACKUP_TIMEOUT_MILLIS:J

    .line 202
    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/server/pm/permission/PermissionManagerService;->EMPTY_INT_ARRAY:[I

    .line 217
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/pm/permission/PermissionManagerService;->STORAGE_PERMISSIONS:Ljava/util/List;

    .line 220
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/android/server/pm/permission/PermissionManagerService;->FULLER_PERMISSION_MAP:Ljava/util/Map;

    .line 223
    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    const-string v3, "android.permission.ACCESS_FINE_LOCATION"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    const-string v2, "android.permission.INTERACT_ACROSS_USERS"

    const-string v3, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    const-string v1, "android.permission.ACCESS_MEDIA_LOCATION"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/ArrayMap;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/content/pm/FeatureInfo;",
            ">;)V"
        }
    .end annotation

    .line 386
    .local p2, "availableFeatures":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/content/pm/FeatureInfo;>;"
    invoke-direct {p0}, Landroid/permission/IPermissionManager$Stub;-><init>()V

    .line 233
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPrivilegedPermissionAllowlistSourcePackageNames:Landroid/util/ArraySet;

    .line 237
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    .line 245
    new-instance v2, Lcom/android/server/pm/permission/DevicePermissionState;

    invoke-direct {v2}, Lcom/android/server/pm/permission/DevicePermissionState;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mState:Lcom/android/server/pm/permission/DevicePermissionState;

    .line 253
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mOneTimePermissionUserManagers:Landroid/util/SparseArray;

    .line 274
    new-instance v2, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v2}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 275
    const-string v2, "platform_compat"

    .line 276
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 275
    invoke-static {v2}, Lcom/android/internal/compat/IPlatformCompat$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/compat/IPlatformCompat;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPlatformCompat:Lcom/android/internal/compat/IPlatformCompat;

    .line 279
    new-instance v2, Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-direct {v2}, Lcom/android/server/pm/permission/PermissionRegistry;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    .line 303
    new-instance v2, Landroid/util/SparseBooleanArray;

    invoke-direct {v2}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mHasNoDelayedPermBackup:Landroid/util/SparseBooleanArray;

    .line 307
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mRuntimePermissionStateChangedListeners:Ljava/util/ArrayList;

    .line 326
    new-instance v2, Lcom/android/server/pm/permission/PermissionManagerService$1;

    invoke-direct {v2, p0}, Lcom/android/server/pm/permission/PermissionManagerService$1;-><init>(Lcom/android/server/pm/permission/PermissionManagerService;)V

    iput-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mDefaultPermissionCallback:Lcom/android/server/pm/permission/PermissionManagerService$PermissionCallback;

    .line 390
    invoke-static {}, Landroid/content/pm/PackageManager;->invalidatePackageInfoCache()V

    .line 391
    invoke-static {}, Landroid/permission/PermissionManager;->disablePackageNamePermissionCache()V

    .line 393
    iput-object p1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    .line 394
    const-class v2, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageManagerInternal;

    iput-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 395
    const-class v2, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/UserManagerInternal;

    iput-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mUserManagerInt:Lcom/android/server/pm/UserManagerInternal;

    .line 396
    const-class v2, Landroid/app/AppOpsManager;

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AppOpsManager;

    iput-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 398
    const-string v2, "android"

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 401
    const-string v2, "android.hardware.type.automotive"

    invoke-virtual {p2, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 402
    const-string v2, "com.android.car"

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 405
    :cond_0
    new-instance v0, Lcom/android/server/ServiceThread;

    const-string v2, "PackageManager"

    const/16 v3, 0xa

    const/4 v4, 0x1

    invoke-direct {v0, v2, v3, v4}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 407
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 408
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mHandler:Landroid/os/Handler;

    .line 409
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/server/Watchdog;->addThread(Landroid/os/Handler;)V

    .line 411
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v0

    .line 412
    .local v0, "systemConfig":Lcom/android/server/SystemConfig;
    invoke-virtual {v0}, Lcom/android/server/SystemConfig;->getSystemPermissions()Landroid/util/SparseArray;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSystemPermissions:Landroid/util/SparseArray;

    .line 413
    invoke-virtual {v0}, Lcom/android/server/SystemConfig;->getGlobalGids()[I

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mGlobalGids:[I

    .line 414
    new-instance v2, Lcom/android/server/pm/permission/PermissionManagerService$OnPermissionChangeListeners;

    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/FgThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/server/pm/permission/PermissionManagerService$OnPermissionChangeListeners;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mOnPermissionChangeListeners:Lcom/android/server/pm/permission/PermissionManagerService$OnPermissionChangeListeners;

    .line 415
    new-instance v2, Lcom/android/server/pm/permission/PermissionManagerService$AttributionSourceRegistry;

    invoke-direct {v2, p1}, Lcom/android/server/pm/permission/PermissionManagerService$AttributionSourceRegistry;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mAttributionSourceRegistry:Lcom/android/server/pm/permission/PermissionManagerService$AttributionSourceRegistry;

    .line 419
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/SystemConfig;->getPermissions()Landroid/util/ArrayMap;

    move-result-object v2

    .line 420
    .local v2, "permConfig":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/SystemConfig$PermissionEntry;>;"
    monitor-enter v1

    .line 421
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    :try_start_0
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-ge v3, v5, :cond_3

    .line 422
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/SystemConfig$PermissionEntry;

    .line 423
    .local v5, "perm":Lcom/android/server/SystemConfig$PermissionEntry;
    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    iget-object v7, v5, Lcom/android/server/SystemConfig$PermissionEntry;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v6

    .line 424
    .local v6, "bp":Lcom/android/server/pm/permission/Permission;
    if-nez v6, :cond_1

    .line 425
    new-instance v7, Lcom/android/server/pm/permission/Permission;

    iget-object v8, v5, Lcom/android/server/SystemConfig$PermissionEntry;->name:Ljava/lang/String;

    const-string v9, "android"

    invoke-direct {v7, v8, v9, v4}, Lcom/android/server/pm/permission/Permission;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    move-object v6, v7

    .line 426
    iget-object v7, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v7, v6}, Lcom/android/server/pm/permission/PermissionRegistry;->addPermission(Lcom/android/server/pm/permission/Permission;)V

    .line 428
    :cond_1
    iget-object v7, v5, Lcom/android/server/SystemConfig$PermissionEntry;->gids:[I

    if-eqz v7, :cond_2

    .line 429
    iget-object v7, v5, Lcom/android/server/SystemConfig$PermissionEntry;->gids:[I

    iget-boolean v8, v5, Lcom/android/server/SystemConfig$PermissionEntry;->perUser:Z

    invoke-virtual {v6, v7, v8}, Lcom/android/server/pm/permission/Permission;->setGids([IZ)V

    .line 421
    .end local v5    # "perm":Lcom/android/server/SystemConfig$PermissionEntry;
    .end local v6    # "bp":Lcom/android/server/pm/permission/Permission;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 432
    .end local v3    # "i":I
    :cond_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 434
    new-instance v1, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;-><init>(Lcom/android/server/pm/permission/PermissionManagerService;Lcom/android/server/pm/permission/PermissionManagerService$1;)V

    .line 436
    .local v1, "localService":Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;
    const-class v3, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    invoke-static {v3, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 437
    const-class v3, Landroid/permission/PermissionManagerInternal;

    invoke-static {v3, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 438
    return-void

    .line 432
    .end local v1    # "localService":Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method static synthetic access$100(Lcom/android/server/pm/permission/PermissionManagerService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;

    .line 189
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/pm/permission/PermissionManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;

    .line 189
    invoke-direct {p0}, Lcom/android/server/pm/permission/PermissionManagerService;->readLegacyPermissionState()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/pm/permission/PermissionManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;

    .line 189
    invoke-direct {p0}, Lcom/android/server/pm/permission/PermissionManagerService;->writeLegacyPermissionState()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/pm/permission/PermissionManagerService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # I

    .line 189
    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/PermissionManagerService;->onUserRemoved(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;I)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .line 189
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->getGrantedPermissionsInternal(Ljava/lang/String;I)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;I)[I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .line 189
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->getPermissionGidsInternal(Ljava/lang/String;I)[I

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 189
    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/PermissionManagerService;->getAppOpPermissionPackagesInternal(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z

    .line 189
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->updateAllPermissions(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/pm/permission/PermissionManagerService;Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "x2"    # I

    .line 189
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->resetRuntimePermissionsInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/pm/permission/PermissionManagerService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;

    .line 189
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/pm/permission/PermissionManagerService;)Lcom/android/server/pm/permission/PermissionRegistry;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;

    .line 189
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/pm/permission/PermissionManagerService;)Lcom/android/server/pm/permission/PermissionManagerService$OnPermissionChangeListeners;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;

    .line 189
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mOnPermissionChangeListeners:Lcom/android/server/pm/permission/PermissionManagerService$OnPermissionChangeListeners;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/pm/permission/PermissionManagerService;I)[B
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # I

    .line 189
    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/PermissionManagerService;->backupRuntimePermissions(I)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/server/pm/permission/PermissionManagerService;[BI)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # [B
    .param p2, "x2"    # I

    .line 189
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->restoreRuntimePermissions([BI)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .line 189
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->restoreDelayedRuntimePermissions(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/pm/permission/PermissionManagerService;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$OnRuntimePermissionStateChangedListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # Lcom/android/server/pm/permission/PermissionManagerServiceInternal$OnRuntimePermissionStateChangedListener;

    .line 189
    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/PermissionManagerService;->addOnRuntimePermissionStateChangedListener(Lcom/android/server/pm/permission/PermissionManagerServiceInternal$OnRuntimePermissionStateChangedListener;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/pm/permission/PermissionManagerService;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$OnRuntimePermissionStateChangedListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # Lcom/android/server/pm/permission/PermissionManagerServiceInternal$OnRuntimePermissionStateChangedListener;

    .line 189
    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/PermissionManagerService;->removeOnRuntimePermissionStateChangedListener(Lcom/android/server/pm/permission/PermissionManagerServiceInternal$OnRuntimePermissionStateChangedListener;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/server/pm/permission/PermissionManagerService;ILjava/lang/String;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/util/List;

    .line 189
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerService;->startShellPermissionIdentityDelegationInternal(ILjava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/server/pm/permission/PermissionManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;

    .line 189
    invoke-direct {p0}, Lcom/android/server/pm/permission/PermissionManagerService;->stopShellPermissionIdentityDelegationInternal()V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/server/pm/permission/PermissionManagerService;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;

    .line 189
    invoke-direct {p0}, Lcom/android/server/pm/permission/PermissionManagerService;->getDelegatedShellPermissionsInternal()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/server/pm/permission/PermissionManagerService;Lcom/android/server/pm/permission/LegacyPermissionSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # Lcom/android/server/pm/permission/LegacyPermissionSettings;

    .line 189
    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/PermissionManagerService;->readLegacyPermissions(Lcom/android/server/pm/permission/LegacyPermissionSettings;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/server/pm/permission/PermissionManagerService;Lcom/android/server/pm/permission/LegacyPermissionSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # Lcom/android/server/pm/permission/LegacyPermissionSettings;

    .line 189
    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/PermissionManagerService;->writeLegacyPermissions(Lcom/android/server/pm/permission/LegacyPermissionSettings;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/pm/permission/PermissionManagerService;)Landroid/content/pm/PackageManagerInternal;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;

    .line 189
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/server/pm/permission/PermissionManagerService;Lcom/android/server/pm/parsing/pkg/AndroidPackage;ZLcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 189
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerService;->onPackageAddedInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ZLcom/android/server/pm/parsing/pkg/AndroidPackage;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/server/pm/permission/PermissionManagerService;)[I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;

    .line 189
    invoke-direct {p0}, Lcom/android/server/pm/permission/PermissionManagerService;->getAllUserIds()[I

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/server/pm/permission/PermissionManagerService;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams;[I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "x2"    # Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams;
    .param p3, "x3"    # [I

    .line 189
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerService;->onPackageInstalledInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams;[I)V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/server/pm/permission/PermissionManagerService;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 189
    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/PermissionManagerService;->onPackageRemovedInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;ILcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/util/List;[I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p4, "x4"    # Ljava/util/List;
    .param p5, "x5"    # [I

    .line 189
    invoke-direct/range {p0 .. p5}, Lcom/android/server/pm/permission/PermissionManagerService;->onPackageUninstalledInternal(Ljava/lang/String;ILcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/util/List;[I)V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/server/pm/permission/PermissionManagerService;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;

    .line 189
    invoke-direct {p0}, Lcom/android/server/pm/permission/PermissionManagerService;->getLegacyPermissions()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/server/pm/permission/PermissionManagerService;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;

    .line 189
    invoke-direct {p0}, Lcom/android/server/pm/permission/PermissionManagerService;->getAllAppOpPermissionPackages()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/server/pm/permission/PermissionManagerService;I)Lcom/android/server/pm/permission/LegacyPermissionState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # I

    .line 189
    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/PermissionManagerService;->getLegacyPermissionState(I)Lcom/android/server/pm/permission/LegacyPermissionState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/server/pm/permission/PermissionManagerService;I)[I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # I

    .line 189
    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/PermissionManagerService;->getGidsForUid(I)[I

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3900(Lcom/android/server/pm/permission/PermissionManagerService;)Lcom/android/server/pm/permission/PermissionManagerServiceInternal$HotwordDetectionServiceProvider;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;

    .line 189
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mHotwordDetectionServiceProvider:Lcom/android/server/pm/permission/PermissionManagerServiceInternal$HotwordDetectionServiceProvider;

    return-object v0
.end method

.method static synthetic access$3902(Lcom/android/server/pm/permission/PermissionManagerService;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$HotwordDetectionServiceProvider;)Lcom/android/server/pm/permission/PermissionManagerServiceInternal$HotwordDetectionServiceProvider;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # Lcom/android/server/pm/permission/PermissionManagerServiceInternal$HotwordDetectionServiceProvider;

    .line 189
    iput-object p1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mHotwordDetectionServiceProvider:Lcom/android/server/pm/permission/PermissionManagerServiceInternal$HotwordDetectionServiceProvider;

    return-object p1
.end method

.method static synthetic access$4000()Ljava/lang/String;
    .locals 1

    .line 189
    sget-object v0, Lcom/android/server/pm/permission/PermissionManagerService;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/pm/permission/PermissionManagerService;)Lcom/android/server/pm/permission/PermissionManagerService$PermissionCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;

    .line 189
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mDefaultPermissionCallback:Lcom/android/server/pm/permission/PermissionManagerService$PermissionCallback;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I

    .line 189
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerService;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/pm/permission/PermissionManagerService;ILjava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .line 189
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->checkUidPermission(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/pm/permission/PermissionManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;

    .line 189
    invoke-direct {p0}, Lcom/android/server/pm/permission/PermissionManagerService;->systemReady()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .line 189
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->isPermissionsReviewRequiredInternal(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method private addAllPermissionGroupsInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .locals 11
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 2415
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2416
    :try_start_0
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPermissionGroups()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v1

    .line 2417
    .local v1, "N":I
    const/4 v2, 0x0

    .line 2418
    .local v2, "r":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_3

    .line 2419
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPermissionGroups()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/parsing/component/ParsedPermissionGroup;

    .line 2420
    .local v4, "pg":Landroid/content/pm/parsing/component/ParsedPermissionGroup;
    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v4}, Landroid/content/pm/parsing/component/ParsedPermissionGroup;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermissionGroup(Ljava/lang/String;)Landroid/content/pm/parsing/component/ParsedPermissionGroup;

    move-result-object v5

    .line 2421
    .local v5, "cur":Landroid/content/pm/parsing/component/ParsedPermissionGroup;
    if-nez v5, :cond_0

    const/4 v6, 0x0

    goto :goto_1

    :cond_0
    invoke-virtual {v5}, Landroid/content/pm/parsing/component/ParsedPermissionGroup;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 2422
    .local v6, "curPackageName":Ljava/lang/String;
    :goto_1
    invoke-virtual {v4}, Landroid/content/pm/parsing/component/ParsedPermissionGroup;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 2423
    .local v7, "isPackageUpdate":Z
    if-eqz v5, :cond_2

    if-eqz v7, :cond_1

    goto :goto_2

    .line 2437
    :cond_1
    const-string v8, "PackageManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Permission group "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/content/pm/parsing/component/ParsedPermissionGroup;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " from package "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2438
    invoke-virtual {v4}, Landroid/content/pm/parsing/component/ParsedPermissionGroup;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " ignored: original from "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2439
    invoke-virtual {v5}, Landroid/content/pm/parsing/component/ParsedPermissionGroup;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 2437
    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 2424
    :cond_2
    :goto_2
    iget-object v8, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v8, v4}, Lcom/android/server/pm/permission/PermissionRegistry;->addPermissionGroup(Landroid/content/pm/parsing/component/ParsedPermissionGroup;)V

    .line 2418
    .end local v4    # "pg":Landroid/content/pm/parsing/component/ParsedPermissionGroup;
    .end local v5    # "cur":Landroid/content/pm/parsing/component/ParsedPermissionGroup;
    .end local v6    # "curPackageName":Ljava/lang/String;
    .end local v7    # "isPackageUpdate":Z
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2451
    .end local v3    # "i":I
    :cond_3
    nop

    .line 2454
    .end local v1    # "N":I
    .end local v2    # "r":Ljava/lang/StringBuilder;
    monitor-exit v0

    .line 2455
    return-void

    .line 2454
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private addAllPermissionsInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Ljava/util/List;
    .locals 11
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2359
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPermissions()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v0

    .line 2360
    .local v0, "N":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2361
    .local v1, "definitionChangedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_5

    .line 2362
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPermissions()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/parsing/component/ParsedPermission;

    .line 2365
    .local v3, "p":Landroid/content/pm/parsing/component/ParsedPermission;
    invoke-virtual {v3}, Landroid/content/pm/parsing/component/ParsedPermission;->getFlags()I

    move-result v4

    const v5, -0x40000001    # -1.9999999f

    and-int/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/content/pm/parsing/component/ParsedPermission;->setFlags(I)Landroid/content/pm/parsing/component/ParsedPermission;

    .line 2369
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2374
    :try_start_0
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v5

    const/16 v6, 0x16

    if-le v5, v6, :cond_0

    .line 2375
    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v3}, Landroid/content/pm/parsing/component/ParsedPermission;->getGroup()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermissionGroup(Ljava/lang/String;)Landroid/content/pm/parsing/component/ParsedPermissionGroup;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/content/pm/parsing/component/ParsedPermission;->setParsedPermissionGroup(Landroid/content/pm/parsing/component/ParsedPermissionGroup;)Landroid/content/pm/parsing/component/ParsedPermission;

    .line 2384
    :cond_0
    const/16 v5, 0x80

    invoke-static {v3, v5}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generatePermissionInfo(Landroid/content/pm/parsing/component/ParsedPermission;I)Landroid/content/pm/PermissionInfo;

    move-result-object v5

    .line 2386
    .local v5, "permissionInfo":Landroid/content/pm/PermissionInfo;
    invoke-virtual {v3}, Landroid/content/pm/parsing/component/ParsedPermission;->isTree()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v3}, Landroid/content/pm/parsing/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermissionTree(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v6

    goto :goto_1

    .line 2387
    :cond_1
    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v3}, Landroid/content/pm/parsing/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v6

    :goto_1
    nop

    .line 2388
    .local v6, "oldPermission":Lcom/android/server/pm/permission/Permission;
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2391
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-static {v6, v5, v4}, Lcom/android/server/pm/permission/Permission;->isOverridingSystemPermission(Lcom/android/server/pm/permission/Permission;Landroid/content/pm/PermissionInfo;Landroid/content/pm/PackageManagerInternal;)Z

    move-result v7

    .line 2393
    .local v7, "isOverridingSystemPermission":Z
    iget-object v8, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 2394
    :try_start_1
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    .line 2395
    invoke-virtual {v4}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermissionTrees()Ljava/util/Collection;

    move-result-object v4

    .line 2394
    invoke-static {v6, v5, p1, v4, v7}, Lcom/android/server/pm/permission/Permission;->createOrUpdate(Lcom/android/server/pm/permission/Permission;Landroid/content/pm/PermissionInfo;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/util/Collection;Z)Lcom/android/server/pm/permission/Permission;

    move-result-object v4

    .line 2397
    .local v4, "permission":Lcom/android/server/pm/permission/Permission;
    invoke-virtual {v3}, Landroid/content/pm/parsing/component/ParsedPermission;->isTree()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 2398
    iget-object v9, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v9, v4}, Lcom/android/server/pm/permission/PermissionRegistry;->addPermissionTree(Lcom/android/server/pm/permission/Permission;)V

    goto :goto_2

    .line 2400
    :cond_2
    iget-object v9, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v9, v4}, Lcom/android/server/pm/permission/PermissionRegistry;->addPermission(Lcom/android/server/pm/permission/Permission;)V

    .line 2402
    :goto_2
    invoke-virtual {v4}, Lcom/android/server/pm/permission/Permission;->isInstalled()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 2403
    invoke-virtual {v3}, Landroid/content/pm/parsing/component/ParsedPermission;->getFlags()I

    move-result v9

    const/high16 v10, 0x40000000    # 2.0f

    or-int/2addr v9, v10

    invoke-virtual {v3, v9}, Landroid/content/pm/parsing/component/ParsedPermission;->setFlags(I)Landroid/content/pm/parsing/component/ParsedPermission;

    .line 2405
    :cond_3
    invoke-virtual {v4}, Lcom/android/server/pm/permission/Permission;->isDefinitionChanged()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 2406
    invoke-virtual {v3}, Landroid/content/pm/parsing/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2407
    const/4 v9, 0x0

    invoke-virtual {v4, v9}, Lcom/android/server/pm/permission/Permission;->setDefinitionChanged(Z)V

    .line 2409
    .end local v4    # "permission":Lcom/android/server/pm/permission/Permission;
    :cond_4
    monitor-exit v8

    .line 2361
    .end local v3    # "p":Landroid/content/pm/parsing/component/ParsedPermission;
    .end local v5    # "permissionInfo":Landroid/content/pm/PermissionInfo;
    .end local v6    # "oldPermission":Lcom/android/server/pm/permission/Permission;
    .end local v7    # "isOverridingSystemPermission":Z
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 2409
    .restart local v3    # "p":Landroid/content/pm/parsing/component/ParsedPermission;
    .restart local v5    # "permissionInfo":Landroid/content/pm/PermissionInfo;
    .restart local v6    # "oldPermission":Lcom/android/server/pm/permission/Permission;
    .restart local v7    # "isOverridingSystemPermission":Z
    :catchall_0
    move-exception v4

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 2388
    .end local v5    # "permissionInfo":Landroid/content/pm/PermissionInfo;
    .end local v6    # "oldPermission":Lcom/android/server/pm/permission/Permission;
    .end local v7    # "isOverridingSystemPermission":Z
    :catchall_1
    move-exception v5

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v5

    .line 2411
    .end local v2    # "i":I
    .end local v3    # "p":Landroid/content/pm/parsing/component/ParsedPermission;
    :cond_5
    return-object v1
.end method

.method private addAllowlistedRestrictedPermissionsInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/util/List;II)V
    .locals 3
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p3, "flags"    # I
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;II)V"
        }
    .end annotation

    .line 4859
    .local p2, "allowlistedRestrictedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerService;->getAllowlistedRestrictedPermissionsInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;II)Ljava/util/List;

    move-result-object v0

    .line 4860
    .local v0, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 4861
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1, v0}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 4862
    .local v1, "permissionSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {v1, p2}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 4863
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v0, v2

    .line 4864
    .end local v1    # "permissionSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    goto :goto_0

    .line 4865
    :cond_0
    move-object v0, p2

    .line 4867
    :goto_0
    invoke-direct {p0, p1, v0, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerService;->setAllowlistedRestrictedPermissionsInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/util/List;II)V

    .line 4868
    return-void
.end method

.method private addOnRuntimePermissionStateChangedListener(Lcom/android/server/pm/permission/PermissionManagerServiceInternal$OnRuntimePermissionStateChangedListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/android/server/pm/permission/PermissionManagerServiceInternal$OnRuntimePermissionStateChangedListener;

    .line 2109
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2110
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mRuntimePermissionStateChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2111
    monitor-exit v0

    .line 2112
    return-void

    .line 2111
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private backupRuntimePermissions(I)[B
    .locals 5
    .param p1, "userId"    # I

    .line 2050
    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 2051
    .local v0, "backup":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<[B>;"
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionControllerManager:Landroid/permission/PermissionControllerManager;

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    .line 2052
    invoke-virtual {v3}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v3

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda17;

    invoke-direct {v4, v0}, Lcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda17;-><init>(Ljava/util/concurrent/CompletableFuture;)V

    .line 2051
    invoke-virtual {v1, v2, v3, v4}, Landroid/permission/PermissionControllerManager;->getRuntimePermissionBackup(Landroid/os/UserHandle;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 2055
    :try_start_0
    sget-wide v1, Lcom/android/server/pm/permission/PermissionManagerService;->BACKUP_TIMEOUT_MILLIS:J

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 2056
    :catch_0
    move-exception v1

    .line 2057
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot create permission backup for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PackageManager"

    invoke-static {v3, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2058
    const/4 v2, 0x0

    return-object v2
.end method

.method private static buildInvalidCrossUserPermissionMessage(IILjava/lang/String;Z)Ljava/lang/String;
    .locals 2
    .param p0, "callingUid"    # I
    .param p1, "userId"    # I
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "requireFullPermission"    # Z

    .line 4474
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4475
    .local v0, "builder":Ljava/lang/StringBuilder;
    if-eqz p2, :cond_0

    .line 4476
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4477
    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4479
    :cond_0
    const-string v1, "UID "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4480
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4481
    const-string v1, " requires "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4482
    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4483
    if-nez p3, :cond_1

    .line 4484
    const-string v1, " or "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4485
    const-string v1, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4487
    :cond_1
    const-string v1, " to access user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4488
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4489
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4490
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private calculateCurrentPermissionFootprintLocked(Lcom/android/server/pm/permission/Permission;)I
    .locals 4
    .param p1, "permissionTree"    # Lcom/android/server/pm/permission/Permission;

    .line 4495
    const/4 v0, 0x0

    .line 4496
    .local v0, "size":I
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v1}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermissions()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/permission/Permission;

    .line 4497
    .local v2, "permission":Lcom/android/server/pm/permission/Permission;
    invoke-virtual {p1, v2}, Lcom/android/server/pm/permission/Permission;->calculateFootprint(Lcom/android/server/pm/permission/Permission;)I

    move-result v3

    add-int/2addr v0, v3

    .line 4498
    .end local v2    # "permission":Lcom/android/server/pm/permission/Permission;
    goto :goto_0

    .line 4499
    :cond_0
    return v0
.end method

.method private canAdoptPermissionsInternal(Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z
    .locals 7
    .param p1, "oldPackageName"    # Ljava/lang/String;
    .param p2, "newPkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 4819
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManagerInternal;->getPackageSetting(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    .line 4820
    .local v0, "oldPs":Lcom/android/server/pm/PackageSetting;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 4821
    return v1

    .line 4823
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v2

    const-string v3, " to "

    const-string v4, "Unable to update from "

    const-string v5, "PackageManager"

    if-nez v2, :cond_1

    .line 4824
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4825
    invoke-interface {p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": old package not in system partition"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4824
    invoke-static {v5, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4827
    return v1

    .line 4829
    :cond_1
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    iget-object v6, v0, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v2, v6}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 4830
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4831
    invoke-interface {p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": old package still exists"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4830
    invoke-static {v5, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4833
    return v1

    .line 4835
    :cond_2
    const/4 v1, 0x1

    return v1
.end method

.method private static canGrantOemPermission(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/lang/String;)Z
    .locals 4
    .param p0, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p1, "permission"    # Ljava/lang/String;

    .line 3686
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isOem()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 3687
    return v1

    .line 3691
    :cond_0
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v0

    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/SystemConfig;->getOemPermissions(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 3692
    .local v0, "granted":Ljava/lang/Boolean;
    if-eqz v0, :cond_2

    .line 3696
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v2, v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    .line 3693
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OEM permission"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " requested by package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3694
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " must be explicitly declared granted or not"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private checkAutoRevokeAccess(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)Z
    .locals 4
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "callingUid"    # I

    .line 1363
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1364
    return v0

    .line 1367
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.WHITELIST_AUTO_REVOKE_PERMISSIONS"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    move v0, v2

    .line 1370
    .local v0, "isCallerPrivileged":Z
    :cond_1
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 1371
    invoke-virtual {v1, p1, p2}, Landroid/content/pm/PackageManagerInternal;->isCallerInstallerOfRecord(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)Z

    move-result v1

    .line 1373
    .local v1, "isCallerInstallerOnRecord":Z
    if-nez v0, :cond_3

    if-eqz v1, :cond_2

    goto :goto_0

    .line 1374
    :cond_2
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Caller must either hold android.permission.WHITELIST_AUTO_REVOKE_PERMISSIONS or be the installer on record"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1378
    :cond_3
    :goto_0
    return v2
.end method

.method private checkCallingOrSelfPermission(Ljava/lang/String;)Z
    .locals 1
    .param p1, "permission"    # Ljava/lang/String;

    .line 4467
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private checkCrossUserPermission(IIIZ)Z
    .locals 2
    .param p1, "callingUid"    # I
    .param p2, "callingUserId"    # I
    .param p3, "userId"    # I
    .param p4, "requireFullPermission"    # Z

    .line 4452
    const/4 v0, 0x1

    if-ne p3, p2, :cond_0

    .line 4453
    return v0

    .line 4455
    :cond_0
    const/16 v1, 0x3e8

    if-eq p1, v1, :cond_5

    if-nez p1, :cond_1

    goto :goto_2

    .line 4458
    :cond_1
    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    if-eqz p4, :cond_2

    .line 4459
    invoke-direct {p0, v1}, Lcom/android/server/pm/permission/PermissionManagerService;->checkCallingOrSelfPermission(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 4462
    :cond_2
    invoke-direct {p0, v1}, Lcom/android/server/pm/permission/PermissionManagerService;->checkCallingOrSelfPermission(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 4463
    const-string v1, "android.permission.INTERACT_ACROSS_USERS"

    invoke-direct {p0, v1}, Lcom/android/server/pm/permission/PermissionManagerService;->checkCallingOrSelfPermission(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    nop

    .line 4462
    :goto_1
    return v0

    .line 4456
    :cond_5
    :goto_2
    return v0
.end method

.method private checkExistsAndEnforceCannotModifyImmutablyRestrictedPermission(Ljava/lang/String;)Z
    .locals 6
    .param p1, "permName"    # Ljava/lang/String;

    .line 1208
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1209
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v1

    .line 1210
    .local v1, "bp":Lcom/android/server/pm/permission/Permission;
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 1211
    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No such permissions: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1212
    monitor-exit v0

    return v2

    .line 1214
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/pm/permission/Permission;->isHardOrSoftRestricted()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    .line 1215
    invoke-virtual {v1}, Lcom/android/server/pm/permission/Permission;->isImmutablyRestricted()Z

    move-result v3

    if-eqz v3, :cond_1

    move v2, v4

    goto :goto_0

    :cond_1
    nop

    :goto_0
    move v1, v2

    .line 1216
    .local v1, "isImmutablyRestrictedPermission":Z
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1217
    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.WHITELIST_RESTRICTED_PERMISSIONS"

    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    .line 1220
    :cond_2
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot modify allowlisting of an immutably restricted permission: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1223
    :cond_3
    :goto_1
    return v4

    .line 1216
    .end local v1    # "isImmutablyRestrictedPermission":Z
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private checkIfLegacyStorageOpsNeedToBeUpdated(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Z[I[I)[I
    .locals 2
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "replace"    # Z
    .param p3, "userIds"    # [I
    .param p4, "updatedUserIds"    # [I

    .line 3166
    if-eqz p2, :cond_1

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isRequestLegacyExternalStorage()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3167
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v0

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3168
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v0

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3169
    :cond_0
    invoke-virtual {p3}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0

    .line 3172
    :cond_1
    return-object p4
.end method

.method private checkPermission(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "permName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 927
    const/4 v0, -0x1

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_0

    .line 930
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mUserManagerInt:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v1, p3}, Lcom/android/server/pm/UserManagerInternal;->exists(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 931
    return v0

    .line 935
    :cond_1
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 936
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mCheckPermissionDelegate:Lcom/android/server/pm/permission/PermissionManagerService$CheckPermissionDelegate;

    .line 937
    .local v0, "checkPermissionDelegate":Lcom/android/server/pm/permission/PermissionManagerService$CheckPermissionDelegate;
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 938
    if-nez v0, :cond_2

    .line 939
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerService;->checkPermissionImpl(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    return v1

    .line 941
    :cond_2
    new-instance v1, Lcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/permission/PermissionManagerService;)V

    invoke-interface {v0, p1, p2, p3, v1}, Lcom/android/server/pm/permission/PermissionManagerService$CheckPermissionDelegate;->checkPermission(Ljava/lang/String;Ljava/lang/String;ILcom/android/internal/util/function/TriFunction;)I

    move-result v1

    return v1

    .line 937
    .end local v0    # "checkPermissionDelegate":Lcom/android/server/pm/permission/PermissionManagerService$CheckPermissionDelegate;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 928
    :cond_3
    :goto_0
    return v0
.end method

.method private checkPermissionImpl(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "permName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 946
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v0

    .line 947
    .local v0, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-nez v0, :cond_0

    .line 948
    const/4 v1, -0x1

    return v1

    .line 950
    :cond_0
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerService;->checkPermissionInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ZLjava/lang/String;I)I

    move-result v1

    return v1
.end method

.method private checkPermissionInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ZLjava/lang/String;I)I
    .locals 9
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "isPackageExplicit"    # Z
    .param p3, "permissionName"    # Ljava/lang/String;
    .param p4, "userId"    # I

    .line 955
    invoke-static {}, Lcom/android/server/pm/permission/PermissionManagerService;->getCallingUid()I

    move-result v0

    .line 956
    .local v0, "callingUid":I
    const/4 v1, -0x1

    if-nez p2, :cond_1

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSharedUserId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 961
    :cond_0
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManagerInternal;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 962
    return v1

    .line 957
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v2, p1, v0, p4}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Lcom/android/server/pm/parsing/pkg/AndroidPackage;II)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 958
    return v1

    .line 966
    :cond_2
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUid()I

    move-result v2

    invoke-static {p4, v2}, Landroid/os/UserHandle;->getUid(II)I

    move-result v2

    .line 967
    .local v2, "uid":I
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManagerInternal;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    goto :goto_1

    :cond_3
    move v3, v4

    .line 969
    .local v3, "isInstantApp":Z
    :goto_1
    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 970
    :try_start_0
    invoke-direct {p0, p1, p4}, Lcom/android/server/pm/permission/PermissionManagerService;->getUidStateLocked(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)Lcom/android/server/pm/permission/UidPermissionState;

    move-result-object v6

    .line 971
    .local v6, "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    if-nez v6, :cond_4

    .line 972
    const-string v4, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Missing permissions state for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " and user "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 974
    monitor-exit v5

    return v1

    .line 977
    :cond_4
    invoke-direct {p0, v6, p3, v3}, Lcom/android/server/pm/permission/PermissionManagerService;->checkSinglePermissionInternalLocked(Lcom/android/server/pm/permission/UidPermissionState;Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 978
    monitor-exit v5

    return v4

    .line 981
    :cond_5
    sget-object v7, Lcom/android/server/pm/permission/PermissionManagerService;->FULLER_PERMISSION_MAP:Ljava/util/Map;

    invoke-interface {v7, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 982
    .local v7, "fullerPermissionName":Ljava/lang/String;
    if-eqz v7, :cond_6

    invoke-direct {p0, v6, v7, v3}, Lcom/android/server/pm/permission/PermissionManagerService;->checkSinglePermissionInternalLocked(Lcom/android/server/pm/permission/UidPermissionState;Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 984
    monitor-exit v5

    return v4

    .line 986
    .end local v6    # "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    .end local v7    # "fullerPermissionName":Ljava/lang/String;
    :cond_6
    monitor-exit v5

    .line 988
    return v1

    .line 986
    :catchall_0
    move-exception v1

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private checkPrivilegedPermissionAllowlist(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/permission/Permission;)Z
    .locals 10
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "packageSetting"    # Lcom/android/server/pm/PackageSetting;
    .param p3, "permission"    # Lcom/android/server/pm/permission/Permission;

    .line 3396
    sget-boolean v0, Lcom/android/internal/os/RoSystemProperties;->CONTROL_PRIVAPP_PERMISSIONS_DISABLE:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 3397
    return v1

    .line 3399
    :cond_0
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 3400
    .local v0, "packageName":Ljava/lang/String;
    const-string v2, "android"

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3401
    return v1

    .line 3403
    :cond_1
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isPrivileged()Z

    move-result v2

    if-nez v2, :cond_2

    .line 3404
    return v1

    .line 3406
    :cond_2
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPrivilegedPermissionAllowlistSourcePackageNames:Landroid/util/ArraySet;

    .line 3407
    invoke-virtual {p3}, Lcom/android/server/pm/permission/Permission;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 3408
    return v1

    .line 3410
    :cond_3
    invoke-virtual {p3}, Lcom/android/server/pm/permission/Permission;->getName()Ljava/lang/String;

    move-result-object v2

    .line 3411
    .local v2, "permissionName":Ljava/lang/String;
    invoke-direct {p0, p1, v2}, Lcom/android/server/pm/permission/PermissionManagerService;->isInSystemConfigPrivAppPermissions(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 3412
    return v1

    .line 3414
    :cond_4
    invoke-direct {p0, p1, v2}, Lcom/android/server/pm/permission/PermissionManagerService;->isInSystemConfigPrivAppDenyPermissions(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_5

    .line 3415
    return v4

    .line 3418
    :cond_5
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getPkgState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->isUpdatedSystemApp()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 3427
    return v1

    .line 3430
    :cond_6
    iget-boolean v3, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSystemReady:Z

    if-nez v3, :cond_9

    .line 3431
    invoke-static {}, Lcom/android/server/pm/ApexManager;->getInstance()Lcom/android/server/pm/ApexManager;

    move-result-object v3

    .line 3432
    .local v3, "apexManager":Lcom/android/server/pm/ApexManager;
    nop

    .line 3433
    invoke-virtual {v3, v0}, Lcom/android/server/pm/ApexManager;->getActiveApexPackageNameContainingPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3434
    .local v5, "containingApexPackageName":Ljava/lang/String;
    if-eqz v5, :cond_7

    .line 3435
    invoke-virtual {v3, v5, v1}, Lcom/android/server/pm/ApexManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/pm/ApexManager;->isFactory(Landroid/content/pm/PackageInfo;)Z

    move-result v6

    if-nez v6, :cond_7

    move v4, v1

    goto :goto_0

    :cond_7
    nop

    .line 3438
    .local v4, "isInUpdatedApex":Z
    :goto_0
    if-nez v4, :cond_9

    .line 3439
    const-string v6, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Privileged permission "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " for package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3440
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ") not in privapp-permissions allowlist"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 3439
    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3442
    sget-boolean v6, Lcom/android/internal/os/RoSystemProperties;->CONTROL_PRIVAPP_PERMISSIONS_ENFORCE:Z

    if-eqz v6, :cond_9

    .line 3443
    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 3444
    :try_start_0
    iget-object v7, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPrivappPermissionsViolations:Landroid/util/ArraySet;

    if-nez v7, :cond_8

    .line 3445
    new-instance v7, Landroid/util/ArraySet;

    invoke-direct {v7}, Landroid/util/ArraySet;-><init>()V

    iput-object v7, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPrivappPermissionsViolations:Landroid/util/ArraySet;

    .line 3447
    :cond_8
    iget-object v7, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPrivappPermissionsViolations:Landroid/util/ArraySet;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 3449
    monitor-exit v6

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 3453
    .end local v3    # "apexManager":Lcom/android/server/pm/ApexManager;
    .end local v4    # "isInUpdatedApex":Z
    .end local v5    # "containingApexPackageName":Ljava/lang/String;
    :cond_9
    :goto_1
    sget-boolean v3, Lcom/android/internal/os/RoSystemProperties;->CONTROL_PRIVAPP_PERMISSIONS_ENFORCE:Z

    xor-int/2addr v1, v3

    return v1
.end method

.method private checkSinglePermissionInternalLocked(Lcom/android/server/pm/permission/UidPermissionState;Ljava/lang/String;Z)Z
    .locals 4
    .param p1, "uidState"    # Lcom/android/server/pm/permission/UidPermissionState;
    .param p2, "permissionName"    # Ljava/lang/String;
    .param p3, "isInstantApp"    # Z

    .line 994
    invoke-virtual {p1, p2}, Lcom/android/server/pm/permission/UidPermissionState;->isPermissionGranted(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 995
    return v1

    .line 998
    :cond_0
    const/4 v0, 0x1

    if-eqz p3, :cond_2

    .line 999
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v2, p2}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v2

    .line 1000
    .local v2, "permission":Lcom/android/server/pm/permission/Permission;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/android/server/pm/permission/Permission;->isInstant()Z

    move-result v3

    if-eqz v3, :cond_1

    move v1, v0

    :cond_1
    return v1

    .line 1003
    .end local v2    # "permission":Lcom/android/server/pm/permission/Permission;
    :cond_2
    return v0
.end method

.method private checkSingleUidPermissionInternalLocked(ILjava/lang/String;)Z
    .locals 2
    .param p1, "uid"    # I
    .param p2, "permissionName"    # Ljava/lang/String;

    .line 1064
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSystemPermissions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    .line 1065
    .local v0, "permissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private checkUidPermission(ILjava/lang/String;)I
    .locals 3
    .param p1, "uid"    # I
    .param p2, "permName"    # Ljava/lang/String;

    .line 1008
    const/4 v0, -0x1

    if-nez p2, :cond_0

    .line 1009
    return v0

    .line 1011
    :cond_0
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 1012
    .local v1, "userId":I
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mUserManagerInt:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v2, v1}, Lcom/android/server/pm/UserManagerInternal;->exists(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1013
    return v0

    .line 1017
    :cond_1
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1018
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mCheckPermissionDelegate:Lcom/android/server/pm/permission/PermissionManagerService$CheckPermissionDelegate;

    .line 1019
    .local v2, "checkPermissionDelegate":Lcom/android/server/pm/permission/PermissionManagerService$CheckPermissionDelegate;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1020
    if-nez v2, :cond_2

    .line 1021
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->checkUidPermissionImpl(ILjava/lang/String;)I

    move-result v0

    return v0

    .line 1023
    :cond_2
    new-instance v0, Lcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/pm/permission/PermissionManagerService;)V

    invoke-interface {v2, p1, p2, v0}, Lcom/android/server/pm/permission/PermissionManagerService$CheckPermissionDelegate;->checkUidPermission(ILjava/lang/String;Ljava/util/function/BiFunction;)I

    move-result v0

    return v0

    .line 1019
    .end local v2    # "checkPermissionDelegate":Lcom/android/server/pm/permission/PermissionManagerService$CheckPermissionDelegate;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private checkUidPermissionImpl(ILjava/lang/String;)I
    .locals 2
    .param p1, "uid"    # I
    .param p2, "permName"    # Ljava/lang/String;

    .line 1028
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManagerInternal;->getPackage(I)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v0

    .line 1029
    .local v0, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->checkUidPermissionInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ILjava/lang/String;)I

    move-result v1

    return v1
.end method

.method private checkUidPermissionInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ILjava/lang/String;)I
    .locals 4
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "uid"    # I
    .param p3, "permissionName"    # Ljava/lang/String;

    .line 1041
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1042
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 1043
    .local v1, "userId":I
    invoke-direct {p0, p1, v0, p3, v1}, Lcom/android/server/pm/permission/PermissionManagerService;->checkPermissionInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ZLjava/lang/String;I)I

    move-result v0

    return v0

    .line 1046
    .end local v1    # "userId":I
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1047
    :try_start_0
    invoke-direct {p0, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerService;->checkSingleUidPermissionInternalLocked(ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1048
    monitor-exit v1

    return v0

    .line 1051
    :cond_1
    sget-object v2, Lcom/android/server/pm/permission/PermissionManagerService;->FULLER_PERMISSION_MAP:Ljava/util/Map;

    invoke-interface {v2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1052
    .local v2, "fullerPermissionName":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 1053
    invoke-direct {p0, p2, v2}, Lcom/android/server/pm/permission/PermissionManagerService;->checkSingleUidPermissionInternalLocked(ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1054
    monitor-exit v1

    return v0

    .line 1056
    .end local v2    # "fullerPermissionName":Ljava/lang/String;
    :cond_2
    monitor-exit v1

    .line 1058
    const/4 v0, -0x1

    return v0

    .line 1056
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static create(Landroid/content/Context;Landroid/util/ArrayMap;)Lcom/android/server/pm/permission/PermissionManagerServiceInternal;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/content/pm/FeatureInfo;",
            ">;)",
            "Lcom/android/server/pm/permission/PermissionManagerServiceInternal;"
        }
    .end annotation

    .line 461
    .local p1, "availableFeatures":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/content/pm/FeatureInfo;>;"
    const-class v0, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    .line 462
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    .line 463
    .local v0, "permMgrInt":Lcom/android/server/pm/permission/PermissionManagerServiceInternal;
    if-eqz v0, :cond_0

    .line 464
    return-object v0

    .line 466
    :cond_0
    nop

    .line 467
    const-string v1, "permissionmgr"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/permission/PermissionManagerService;

    .line 468
    .local v2, "permissionService":Lcom/android/server/pm/permission/PermissionManagerService;
    if-nez v2, :cond_1

    .line 469
    new-instance v3, Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-direct {v3, p0, p1}, Lcom/android/server/pm/permission/PermissionManagerService;-><init>(Landroid/content/Context;Landroid/util/ArrayMap;)V

    move-object v2, v3

    .line 470
    invoke-static {v1, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 471
    new-instance v1, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;

    invoke-direct {v1, p0}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;-><init>(Landroid/content/Context;)V

    const-string v3, "permission_checker"

    invoke-static {v3, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 473
    :cond_1
    const-class v1, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    return-object v1
.end method

.method private doNotifyRuntimePermissionStateChanged(Ljava/lang/String;I)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 2131
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2132
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mRuntimePermissionStateChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2133
    monitor-exit v0

    return-void

    .line 2135
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mRuntimePermissionStateChangedListeners:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2136
    .local v1, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/permission/PermissionManagerServiceInternal$OnRuntimePermissionStateChangedListener;>;"
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2137
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2138
    .local v0, "listenerCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 2139
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$OnRuntimePermissionStateChangedListener;

    invoke-interface {v3, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$OnRuntimePermissionStateChangedListener;->onRuntimePermissionStateChanged(Ljava/lang/String;I)V

    .line 2138
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2141
    .end local v2    # "i":I
    :cond_1
    return-void

    .line 2136
    .end local v0    # "listenerCount":I
    .end local v1    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/permission/PermissionManagerServiceInternal$OnRuntimePermissionStateChangedListener;>;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private enforceCrossUserPermission(IIZZLjava/lang/String;)V
    .locals 3
    .param p1, "callingUid"    # I
    .param p2, "userId"    # I
    .param p3, "requireFullPermission"    # Z
    .param p4, "checkShell"    # Z
    .param p5, "message"    # Ljava/lang/String;

    .line 4418
    if-ltz p2, :cond_2

    .line 4421
    if-eqz p4, :cond_0

    .line 4422
    const-string v0, "no_debugging_features"

    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->enforceShellRestriction(Ljava/lang/String;II)V

    .line 4424
    :cond_0
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 4425
    .local v0, "callingUserId":I
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerService;->checkCrossUserPermission(IIIZ)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4426
    return-void

    .line 4428
    :cond_1
    invoke-static {p1, p2, p5, p3}, Lcom/android/server/pm/permission/PermissionManagerService;->buildInvalidCrossUserPermissionMessage(IILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 4430
    .local v1, "errorMessage":Ljava/lang/String;
    const-string v2, "PackageManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4431
    new-instance v2, Ljava/lang/SecurityException;

    invoke-direct {v2, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 4419
    .end local v0    # "callingUserId":I
    .end local v1    # "errorMessage":Ljava/lang/String;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid userId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private enforceGrantRevokeGetRuntimePermissionPermissions(Ljava/lang/String;)V
    .locals 6
    .param p1, "message"    # Ljava/lang/String;

    .line 4396
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.GET_RUNTIME_PERMISSIONS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    .line 4398
    const-string v2, "android.permission.GRANT_RUNTIME_PERMISSIONS"

    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    .line 4400
    const-string v3, "android.permission.REVOKE_RUNTIME_PERMISSIONS"

    invoke-virtual {v0, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 4402
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " requires "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " or "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4407
    :cond_1
    :goto_0
    return-void
.end method

.method private enforceGrantRevokeRuntimePermissionPermissions(Ljava/lang/String;)V
    .locals 5
    .param p1, "message"    # Ljava/lang/String;

    .line 4385
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.GRANT_RUNTIME_PERMISSIONS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    .line 4387
    const-string v2, "android.permission.REVOKE_RUNTIME_PERMISSIONS"

    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 4389
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " requires "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " or "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4393
    :cond_1
    :goto_0
    return-void
.end method

.method private enforcePermissionCapLocked(Landroid/content/pm/PermissionInfo;Lcom/android/server/pm/permission/Permission;)V
    .locals 3
    .param p1, "info"    # Landroid/content/pm/PermissionInfo;
    .param p2, "tree"    # Lcom/android/server/pm/permission/Permission;

    .line 4506
    invoke-virtual {p2}, Lcom/android/server/pm/permission/Permission;->getUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_1

    .line 4507
    invoke-direct {p0, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->calculateCurrentPermissionFootprintLocked(Lcom/android/server/pm/permission/Permission;)I

    move-result v0

    .line 4508
    .local v0, "curTreeSize":I
    invoke-virtual {p1}, Landroid/content/pm/PermissionInfo;->calculateFootprint()I

    move-result v1

    add-int/2addr v1, v0

    const v2, 0x8000

    if-gt v1, v2, :cond_0

    goto :goto_0

    .line 4509
    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Permission tree size cap exceeded"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4512
    .end local v0    # "curTreeSize":I
    :cond_1
    :goto_0
    return-void
.end method

.method private enforceShellRestriction(Ljava/lang/String;II)V
    .locals 3
    .param p1, "restriction"    # Ljava/lang/String;
    .param p2, "callingUid"    # I
    .param p3, "userId"    # I

    .line 4439
    const/16 v0, 0x7d0

    if-ne p2, v0, :cond_2

    .line 4440
    if-ltz p3, :cond_1

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mUserManagerInt:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v0, p1, p3}, Lcom/android/server/pm/UserManagerInternal;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 4441
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Shell does not have permission to access user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4443
    :cond_1
    :goto_0
    if-gez p3, :cond_2

    .line 4444
    sget-object v0, Lcom/android/server/pm/permission/PermissionManagerService;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to check shell permission for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\n\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x3

    .line 4445
    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4444
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4448
    :cond_2
    return-void
.end method

.method private getAllAppOpPermissionPackages()Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 4932
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4933
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    .line 4934
    invoke-virtual {v1}, Lcom/android/server/pm/permission/PermissionRegistry;->getAllAppOpPermissionPackages()Landroid/util/ArrayMap;

    move-result-object v1

    .line 4935
    .local v1, "appOpPermissionPackages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 4936
    .local v2, "deepClone":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v3

    .line 4937
    .local v3, "appOpPermissionPackagesSize":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_0

    .line 4938
    invoke-virtual {v1, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 4939
    .local v5, "appOpPermission":Ljava/lang/String;
    invoke-virtual {v1, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/ArraySet;

    .line 4940
    .local v6, "packageNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    new-instance v7, Landroid/util/ArraySet;

    invoke-direct {v7, v6}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    invoke-interface {v2, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4937
    nop

    .end local v5    # "appOpPermission":Ljava/lang/String;
    .end local v6    # "packageNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 4942
    .end local v4    # "i":I
    :cond_0
    monitor-exit v0

    return-object v2

    .line 4943
    .end local v1    # "appOpPermissionPackages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .end local v2    # "deepClone":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    .end local v3    # "appOpPermissionPackagesSize":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getAllUserIds()[I
    .locals 1

    .line 3045
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->getUserIdsIncludingPreCreated()[I

    move-result-object v0

    return-object v0
.end method

.method private getAllowlistedRestrictedPermissionsInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;II)Ljava/util/List;
    .locals 9
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "flags"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            "II)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1143
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1144
    :try_start_0
    invoke-direct {p0, p1, p3}, Lcom/android/server/pm/permission/PermissionManagerService;->getUidStateLocked(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)Lcom/android/server/pm/permission/UidPermissionState;

    move-result-object v1

    .line 1145
    .local v1, "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    if-nez v1, :cond_0

    .line 1146
    const-string v2, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Missing permissions state for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " and user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1148
    const/4 v2, 0x0

    monitor-exit v0

    return-object v2

    .line 1151
    :cond_0
    const/4 v2, 0x0

    .line 1152
    .local v2, "queryFlags":I
    and-int/lit8 v3, p2, 0x1

    if-eqz v3, :cond_1

    .line 1153
    or-int/lit16 v2, v2, 0x1000

    .line 1155
    :cond_1
    and-int/lit8 v3, p2, 0x4

    if-eqz v3, :cond_2

    .line 1156
    or-int/lit16 v2, v2, 0x2000

    .line 1158
    :cond_2
    and-int/lit8 v3, p2, 0x2

    if-eqz v3, :cond_3

    .line 1159
    or-int/lit16 v2, v2, 0x800

    .line 1162
    :cond_3
    const/4 v3, 0x0

    .line 1164
    .local v3, "allowlistedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v4

    .line 1165
    .local v4, "permissionCount":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v4, :cond_6

    .line 1166
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1167
    .local v6, "permissionName":Ljava/lang/String;
    nop

    .line 1168
    invoke-virtual {v1, v6}, Lcom/android/server/pm/permission/UidPermissionState;->getPermissionFlags(Ljava/lang/String;)I

    move-result v7

    .line 1169
    .local v7, "currentFlags":I
    and-int v8, v7, v2

    if-eqz v8, :cond_5

    .line 1170
    if-nez v3, :cond_4

    .line 1171
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v8

    .line 1173
    :cond_4
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1165
    .end local v6    # "permissionName":Ljava/lang/String;
    .end local v7    # "currentFlags":I
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1177
    .end local v5    # "i":I
    :cond_6
    monitor-exit v0

    return-object v3

    .line 1178
    .end local v1    # "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    .end local v2    # "queryFlags":I
    .end local v3    # "allowlistedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4    # "permissionCount":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getAppOpPermissionPackagesInternal(Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .param p1, "permissionName"    # Ljava/lang/String;

    .line 501
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 502
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/permission/PermissionRegistry;->getAppOpPermissionPackages(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v1

    .line 504
    .local v1, "packageNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-nez v1, :cond_0

    .line 505
    sget-object v2, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    monitor-exit v0

    return-object v2

    .line 507
    :cond_0
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    monitor-exit v0

    return-object v2

    .line 508
    .end local v1    # "packageNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getDelegatedShellPermissionsInternal()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2164
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2165
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mCheckPermissionDelegate:Lcom/android/server/pm/permission/PermissionManagerService$CheckPermissionDelegate;

    if-nez v1, :cond_0

    .line 2166
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    monitor-exit v0

    return-object v1

    .line 2168
    :cond_0
    invoke-interface {v1}, Lcom/android/server/pm/permission/PermissionManagerService$CheckPermissionDelegate;->getDelegatedPermissionNames()Ljava/util/List;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 2169
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getGidsForUid(I)[I
    .locals 7
    .param p1, "uid"    # I

    .line 4977
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 4978
    .local v0, "appId":I
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 4979
    .local v1, "userId":I
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 4980
    :try_start_0
    invoke-direct {p0, v0, v1}, Lcom/android/server/pm/permission/PermissionManagerService;->getUidStateLocked(II)Lcom/android/server/pm/permission/UidPermissionState;

    move-result-object v3

    .line 4981
    .local v3, "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    if-nez v3, :cond_0

    .line 4982
    const-string v4, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Missing permissions state for app ID "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " and user ID "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4984
    sget-object v4, Lcom/android/server/pm/permission/PermissionManagerService;->EMPTY_INT_ARRAY:[I

    monitor-exit v2

    return-object v4

    .line 4986
    :cond_0
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mGlobalGids:[I

    invoke-virtual {v3, v4, v1}, Lcom/android/server/pm/permission/UidPermissionState;->computeGids([II)[I

    move-result-object v4

    monitor-exit v2

    return-object v4

    .line 4987
    .end local v3    # "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private getGrantedPermissionsInternal(Ljava/lang/String;I)Ljava/util/Set;
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2512
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManagerInternal;->getPackageSetting(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    .line 2513
    .local v0, "ps":Lcom/android/server/pm/PackageSetting;
    if-nez v0, :cond_0

    .line 2514
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    return-object v1

    .line 2517
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2518
    :try_start_0
    invoke-direct {p0, v0, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->getUidStateLocked(Lcom/android/server/pm/PackageSetting;I)Lcom/android/server/pm/permission/UidPermissionState;

    move-result-object v2

    .line 2519
    .local v2, "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    if-nez v2, :cond_1

    .line 2520
    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Missing permissions state for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " and user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2521
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v3

    monitor-exit v1

    return-object v3

    .line 2523
    :cond_1
    invoke-virtual {v0, p2}, Lcom/android/server/pm/PackageSetting;->getInstantApp(I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 2524
    invoke-virtual {v2}, Lcom/android/server/pm/permission/UidPermissionState;->getGrantedPermissions()Ljava/util/Set;

    move-result-object v3

    monitor-exit v1

    return-object v3

    .line 2529
    :cond_2
    new-instance v3, Landroid/util/ArraySet;

    .line 2530
    invoke-virtual {v2}, Lcom/android/server/pm/permission/UidPermissionState;->getGrantedPermissions()Ljava/util/Set;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 2531
    .local v3, "instantPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v4, Lcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda20;

    invoke-direct {v4, p0, p2, v0}, Lcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda20;-><init>(Lcom/android/server/pm/permission/PermissionManagerService;ILcom/android/server/pm/PackageSetting;)V

    invoke-interface {v3, v4}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    .line 2543
    monitor-exit v1

    return-object v3

    .line 2545
    .end local v2    # "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    .end local v3    # "instantPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private getLegacyPermissionState(I)Lcom/android/server/pm/permission/LegacyPermissionState;
    .locals 17
    .param p1, "appId"    # I

    .line 4948
    move-object/from16 v1, p0

    move/from16 v2, p1

    new-instance v0, Lcom/android/server/pm/permission/LegacyPermissionState;

    invoke-direct {v0}, Lcom/android/server/pm/permission/LegacyPermissionState;-><init>()V

    move-object v3, v0

    .line 4949
    .local v3, "legacyState":Lcom/android/server/pm/permission/LegacyPermissionState;
    iget-object v4, v1, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 4950
    :try_start_0
    iget-object v0, v1, Lcom/android/server/pm/permission/PermissionManagerService;->mState:Lcom/android/server/pm/permission/DevicePermissionState;

    invoke-virtual {v0}, Lcom/android/server/pm/permission/DevicePermissionState;->getUserIds()[I

    move-result-object v0

    .line 4951
    .local v0, "userIds":[I
    array-length v5, v0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_2

    aget v7, v0, v6

    .line 4952
    .local v7, "userId":I
    invoke-direct {v1, v2, v7}, Lcom/android/server/pm/permission/PermissionManagerService;->getUidStateLocked(II)Lcom/android/server/pm/permission/UidPermissionState;

    move-result-object v8

    .line 4953
    .local v8, "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    if-nez v8, :cond_0

    .line 4954
    const-string v9, "PackageManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Missing permissions state for app ID "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " and user ID "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4956
    move-object/from16 v16, v0

    goto :goto_2

    .line 4959
    :cond_0
    invoke-virtual {v8}, Lcom/android/server/pm/permission/UidPermissionState;->getPermissionStates()Ljava/util/List;

    move-result-object v9

    .line 4960
    .local v9, "permissionStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/PermissionState;>;"
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    .line 4961
    .local v10, "permissionStatesSize":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    if-ge v11, v10, :cond_1

    .line 4962
    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/pm/permission/PermissionState;

    .line 4964
    .local v12, "permissionState":Lcom/android/server/pm/permission/PermissionState;
    new-instance v13, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;

    .line 4965
    invoke-virtual {v12}, Lcom/android/server/pm/permission/PermissionState;->getName()Ljava/lang/String;

    move-result-object v14

    .line 4966
    invoke-virtual {v12}, Lcom/android/server/pm/permission/PermissionState;->getPermission()Lcom/android/server/pm/permission/Permission;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/server/pm/permission/Permission;->isRuntime()Z

    move-result v15

    .line 4967
    move-object/from16 v16, v0

    .end local v0    # "userIds":[I
    .local v16, "userIds":[I
    invoke-virtual {v12}, Lcom/android/server/pm/permission/PermissionState;->isGranted()Z

    move-result v0

    invoke-virtual {v12}, Lcom/android/server/pm/permission/PermissionState;->getFlags()I

    move-result v1

    invoke-direct {v13, v14, v15, v0, v1}, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;-><init>(Ljava/lang/String;ZZI)V

    move-object v0, v13

    .line 4968
    .local v0, "legacyPermissionState":Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;
    invoke-virtual {v3, v0, v7}, Lcom/android/server/pm/permission/LegacyPermissionState;->putPermissionState(Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;I)V

    .line 4961
    .end local v0    # "legacyPermissionState":Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;
    .end local v12    # "permissionState":Lcom/android/server/pm/permission/PermissionState;
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v1, p0

    move-object/from16 v0, v16

    goto :goto_1

    .end local v16    # "userIds":[I
    .local v0, "userIds":[I
    :cond_1
    move-object/from16 v16, v0

    .line 4951
    .end local v0    # "userIds":[I
    .end local v7    # "userId":I
    .end local v8    # "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    .end local v9    # "permissionStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/PermissionState;>;"
    .end local v10    # "permissionStatesSize":I
    .end local v11    # "i":I
    .restart local v16    # "userIds":[I
    :goto_2
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v1, p0

    move-object/from16 v0, v16

    goto :goto_0

    .end local v16    # "userIds":[I
    .restart local v0    # "userIds":[I
    :cond_2
    move-object/from16 v16, v0

    .line 4971
    .end local v0    # "userIds":[I
    monitor-exit v4

    .line 4972
    return-object v3

    .line 4971
    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getLegacyPermissions()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/pm/permission/LegacyPermission;",
            ">;"
        }
    .end annotation

    .line 4918
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4919
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4920
    .local v1, "legacyPermissions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/LegacyPermission;>;"
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v2}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermissions()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/permission/Permission;

    .line 4921
    .local v3, "permission":Lcom/android/server/pm/permission/Permission;
    new-instance v4, Lcom/android/server/pm/permission/LegacyPermission;

    .line 4922
    invoke-virtual {v3}, Lcom/android/server/pm/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v5

    invoke-virtual {v3}, Lcom/android/server/pm/permission/Permission;->getType()I

    move-result v6

    invoke-virtual {v3}, Lcom/android/server/pm/permission/Permission;->getUid()I

    move-result v7

    .line 4923
    invoke-virtual {v3}, Lcom/android/server/pm/permission/Permission;->getRawGids()[I

    move-result-object v8

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/android/server/pm/permission/LegacyPermission;-><init>(Landroid/content/pm/PermissionInfo;II[I)V

    .line 4924
    .local v4, "legacyPermission":Lcom/android/server/pm/permission/LegacyPermission;
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4925
    nop

    .end local v3    # "permission":Lcom/android/server/pm/permission/Permission;
    .end local v4    # "legacyPermission":Lcom/android/server/pm/permission/LegacyPermission;
    goto :goto_0

    .line 4926
    :cond_0
    monitor-exit v0

    return-object v1

    .line 4927
    .end local v1    # "legacyPermissions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/LegacyPermission;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getOneTimePermissionUserManager(I)Lcom/android/server/pm/permission/OneTimePermissionUserManager;
    .locals 5
    .param p1, "userId"    # I

    .line 3286
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3287
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mOneTimePermissionUserManagers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/permission/OneTimePermissionUserManager;

    .line 3288
    .local v1, "oneTimePermissionUserManager":Lcom/android/server/pm/permission/OneTimePermissionUserManager;
    if-eqz v1, :cond_0

    .line 3289
    monitor-exit v0

    return-object v1

    .line 3291
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3296
    new-instance v0, Lcom/android/server/pm/permission/OneTimePermissionUserManager;

    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    .line 3297
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/server/pm/permission/OneTimePermissionUserManager;-><init>(Landroid/content/Context;)V

    move-object v2, v0

    .line 3299
    .local v2, "newOneTimePermissionUserManager":Lcom/android/server/pm/permission/OneTimePermissionUserManager;
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 3300
    :try_start_1
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mOneTimePermissionUserManagers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/permission/OneTimePermissionUserManager;

    move-object v1, v0

    .line 3301
    if-eqz v1, :cond_1

    .line 3302
    monitor-exit v3

    return-object v1

    .line 3304
    :cond_1
    move-object v1, v2

    .line 3305
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mOneTimePermissionUserManagers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3306
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3307
    invoke-virtual {v1}, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->registerUninstallListener()V

    .line 3308
    return-object v1

    .line 3306
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 3291
    .end local v1    # "oneTimePermissionUserManager":Lcom/android/server/pm/permission/OneTimePermissionUserManager;
    .end local v2    # "newOneTimePermissionUserManager":Lcom/android/server/pm/permission/OneTimePermissionUserManager;
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method private getPackagesWithAutoRevokePolicy(II)Ljava/util/List;
    .locals 3
    .param p1, "autoRevokePolicy"    # I
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3365
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ADJUST_RUNTIME_PERMISSIONS_POLICY"

    const-string v2, "Must hold android.permission.ADJUST_RUNTIME_PERMISSIONS_POLICY"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3368
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3369
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    new-instance v2, Lcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda7;

    invoke-direct {v2, p1, v0}, Lcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda7;-><init>(ILjava/util/List;)V

    invoke-virtual {v1, v2, p2}, Landroid/content/pm/PackageManagerInternal;->forEachInstalledPackage(Ljava/util/function/Consumer;I)V

    .line 3374
    return-object v0
.end method

.method private getPermissionFlagsInternal(Ljava/lang/String;Ljava/lang/String;II)I
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permName"    # Ljava/lang/String;
    .param p3, "callingUid"    # I
    .param p4, "userId"    # I

    .line 697
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mUserManagerInt:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v0, p4}, Lcom/android/server/pm/UserManagerInternal;->exists(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 698
    return v1

    .line 701
    :cond_0
    const-string v0, "getPermissionFlags"

    invoke-direct {p0, v0}, Lcom/android/server/pm/permission/PermissionManagerService;->enforceGrantRevokeGetRuntimePermissionPermissions(Ljava/lang/String;)V

    .line 702
    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string v7, "getPermissionFlags"

    move-object v2, p0

    move v3, p3

    move v4, p4

    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/permission/PermissionManagerService;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 707
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v0

    .line 708
    .local v0, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-nez v0, :cond_1

    .line 709
    return v1

    .line 711
    :cond_1
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v2, v0, p3, p4}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Lcom/android/server/pm/parsing/pkg/AndroidPackage;II)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 712
    return v1

    .line 715
    :cond_2
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 716
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v3, p2}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v3

    if-nez v3, :cond_3

    .line 717
    monitor-exit v2

    return v1

    .line 720
    :cond_3
    invoke-direct {p0, v0, p4}, Lcom/android/server/pm/permission/PermissionManagerService;->getUidStateLocked(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)Lcom/android/server/pm/permission/UidPermissionState;

    move-result-object v3

    .line 721
    .local v3, "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    if-nez v3, :cond_4

    .line 722
    const-string v4, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Missing permissions state for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " and user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    monitor-exit v2

    return v1

    .line 726
    :cond_4
    invoke-virtual {v3, p2}, Lcom/android/server/pm/permission/UidPermissionState;->getPermissionFlags(Ljava/lang/String;)I

    move-result v1

    monitor-exit v2

    return v1

    .line 727
    .end local v3    # "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getPermissionGidsInternal(Ljava/lang/String;I)[I
    .locals 3
    .param p1, "permissionName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 2550
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2551
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v1

    .line 2552
    .local v1, "permission":Lcom/android/server/pm/permission/Permission;
    if-nez v1, :cond_0

    .line 2553
    sget-object v2, Llibcore/util/EmptyArray;->INT:[I

    monitor-exit v0

    return-object v2

    .line 2555
    :cond_0
    invoke-virtual {v1, p2}, Lcom/android/server/pm/permission/Permission;->computeGids(I)[I

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 2556
    .end local v1    # "permission":Lcom/android/server/pm/permission/Permission;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getPermissionInfoCallingTargetSdkVersion(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)I
    .locals 3
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "uid"    # I

    .line 594
    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 595
    .local v0, "appId":I
    const/16 v1, 0x2710

    if-eqz v0, :cond_2

    const/16 v2, 0x3e8

    if-eq v0, v2, :cond_2

    const/16 v2, 0x7d0

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 600
    :cond_0
    if-nez p1, :cond_1

    .line 601
    return v1

    .line 603
    :cond_1
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v1

    return v1

    .line 598
    :cond_2
    :goto_0
    return v1
.end method

.method private getSourcePackageSetting(Lcom/android/server/pm/permission/Permission;)Lcom/android/server/pm/PackageSetting;
    .locals 2
    .param p1, "bp"    # Lcom/android/server/pm/permission/Permission;

    .line 3681
    invoke-virtual {p1}, Lcom/android/server/pm/permission/Permission;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 3682
    .local v0, "sourcePackageName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManagerInternal;->getPackageSetting(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v1

    return-object v1
.end method

.method private getSourcePackageSigningDetails(Lcom/android/server/pm/permission/Permission;)Landroid/content/pm/PackageParser$SigningDetails;
    .locals 2
    .param p1, "bp"    # Lcom/android/server/pm/permission/Permission;

    .line 3672
    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/PermissionManagerService;->getSourcePackageSetting(Lcom/android/server/pm/permission/Permission;)Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    .line 3673
    .local v0, "ps":Lcom/android/server/pm/PackageSetting;
    if-nez v0, :cond_0

    .line 3674
    sget-object v1, Landroid/content/pm/PackageParser$SigningDetails;->UNKNOWN:Landroid/content/pm/PackageParser$SigningDetails;

    return-object v1

    .line 3676
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getSigningDetails()Landroid/content/pm/PackageParser$SigningDetails;

    move-result-object v1

    return-object v1
.end method

.method private getSplitPermissionInfos()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/permission/PermissionManager$SplitPermissionInfo;",
            ">;"
        }
    .end annotation

    .line 3280
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/SystemConfig;->getSplitPermissions()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private getUidStateLocked(II)Lcom/android/server/pm/permission/UidPermissionState;
    .locals 2
    .param p1, "appId"    # I
    .param p2, "userId"    # I

    .line 4600
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mState:Lcom/android/server/pm/permission/DevicePermissionState;

    invoke-virtual {v0, p2}, Lcom/android/server/pm/permission/DevicePermissionState;->getUserState(I)Lcom/android/server/pm/permission/UserPermissionState;

    move-result-object v0

    .line 4601
    .local v0, "userState":Lcom/android/server/pm/permission/UserPermissionState;
    if-nez v0, :cond_0

    .line 4602
    const/4 v1, 0x0

    return-object v1

    .line 4604
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/server/pm/permission/UserPermissionState;->getUidState(I)Lcom/android/server/pm/permission/UidPermissionState;

    move-result-object v1

    return-object v1
.end method

.method private getUidStateLocked(Lcom/android/server/pm/PackageSetting;I)Lcom/android/server/pm/permission/UidPermissionState;
    .locals 1
    .param p1, "ps"    # Lcom/android/server/pm/PackageSetting;
    .param p2, "userId"    # I

    .line 4587
    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getAppId()I

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->getUidStateLocked(II)Lcom/android/server/pm/permission/UidPermissionState;

    move-result-object v0

    return-object v0
.end method

.method private getUidStateLocked(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)Lcom/android/server/pm/permission/UidPermissionState;
    .locals 1
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "userId"    # I

    .line 4594
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUid()I

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->getUidStateLocked(II)Lcom/android/server/pm/permission/UidPermissionState;

    move-result-object v0

    return-object v0
.end method

.method private static getVolumeUuidForPackage(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Ljava/lang/String;
    .locals 1
    .param p0, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 4541
    if-nez p0, :cond_0

    .line 4542
    sget-object v0, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    return-object v0

    .line 4544
    :cond_0
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isExternalStorage()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4545
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getVolumeUuid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4546
    const-string v0, "primary_physical"

    return-object v0

    .line 4548
    :cond_1
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getVolumeUuid()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4551
    :cond_2
    sget-object v0, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    return-object v0
.end method

.method private grantRequestedRuntimePermissionsInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/util/List;I)V
    .locals 24
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 3735
    .local p2, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v10, p0

    move-object/from16 v11, p2

    move/from16 v12, p3

    const/16 v13, 0x14

    .line 3738
    .local v13, "immutableFlags":I
    const/16 v14, 0x48

    .line 3741
    .local v14, "compatFlags":I
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v0

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    move v0, v15

    goto :goto_0

    :cond_0
    move/from16 v0, v16

    :goto_0
    move/from16 v17, v0

    .line 3744
    .local v17, "supportsRuntimePermissions":Z
    iget-object v0, v10, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v12}, Landroid/content/pm/PackageManagerInternal;->isInstantApp(Ljava/lang/String;I)Z

    move-result v18

    .line 3746
    .local v18, "instantApp":Z
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v9

    .line 3748
    .local v9, "myUid":I
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Ljava/lang/String;

    .line 3750
    .local v8, "permission":Ljava/lang/String;
    iget-object v1, v10, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3751
    :try_start_0
    iget-object v2, v10, Lcom/android/server/pm/permission/PermissionManagerService;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v2, v8}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3752
    .local v2, "bp":Lcom/android/server/pm/permission/Permission;
    if-eqz v2, :cond_5

    :try_start_1
    invoke-virtual {v2}, Lcom/android/server/pm/permission/Permission;->isRuntime()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Lcom/android/server/pm/permission/Permission;->isDevelopment()Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_1
    if-eqz v18, :cond_2

    .line 3753
    invoke-virtual {v2}, Lcom/android/server/pm/permission/Permission;->isInstant()Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_2
    if-nez v17, :cond_3

    .line 3754
    invoke-virtual {v2}, Lcom/android/server/pm/permission/Permission;->isRuntimeOnly()Z

    move-result v3

    if-nez v3, :cond_5

    :cond_3
    if-eqz v11, :cond_4

    .line 3755
    invoke-interface {v11, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_5

    :cond_4
    move v3, v15

    goto :goto_2

    .line 3756
    .end local v2    # "bp":Lcom/android/server/pm/permission/Permission;
    :catchall_0
    move-exception v0

    move-object/from16 v23, v8

    move/from16 v21, v9

    goto/16 :goto_4

    .line 3755
    .restart local v2    # "bp":Lcom/android/server/pm/permission/Permission;
    :cond_5
    move/from16 v3, v16

    :goto_2
    move/from16 v19, v3

    .line 3756
    .end local v2    # "bp":Lcom/android/server/pm/permission/Permission;
    .local v19, "shouldGrantPermission":Z
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3757
    if-eqz v19, :cond_9

    .line 3758
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v10, v1, v8, v9, v12}, Lcom/android/server/pm/permission/PermissionManagerService;->getPermissionFlagsInternal(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v20

    .line 3760
    .local v20, "flags":I
    if-eqz v17, :cond_7

    .line 3762
    and-int/lit8 v1, v20, 0x14

    if-nez v1, :cond_6

    .line 3763
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    iget-object v7, v10, Lcom/android/server/pm/permission/PermissionManagerService;->mDefaultPermissionCallback:Lcom/android/server/pm/permission/PermissionManagerService$PermissionCallback;

    move-object/from16 v1, p0

    move-object v3, v8

    move v5, v9

    move/from16 v6, p3

    invoke-direct/range {v1 .. v7}, Lcom/android/server/pm/permission/PermissionManagerService;->grantRuntimePermissionInternal(Ljava/lang/String;Ljava/lang/String;ZIILcom/android/server/pm/permission/PermissionManagerService$PermissionCallback;)V

    move/from16 v21, v9

    goto :goto_3

    .line 3762
    :cond_6
    move/from16 v21, v9

    goto :goto_3

    .line 3769
    :cond_7
    and-int/lit8 v1, v20, 0x48

    if-eqz v1, :cond_8

    .line 3770
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x48

    const/4 v5, 0x0

    const/16 v21, 0x0

    iget-object v7, v10, Lcom/android/server/pm/permission/PermissionManagerService;->mDefaultPermissionCallback:Lcom/android/server/pm/permission/PermissionManagerService$PermissionCallback;

    move-object/from16 v1, p0

    move-object v3, v8

    move v6, v9

    move-object/from16 v22, v7

    move/from16 v7, p3

    move-object/from16 v23, v8

    .end local v8    # "permission":Ljava/lang/String;
    .local v23, "permission":Ljava/lang/String;
    move/from16 v8, v21

    move/from16 v21, v9

    .end local v9    # "myUid":I
    .local v21, "myUid":I
    move-object/from16 v9, v22

    invoke-direct/range {v1 .. v9}, Lcom/android/server/pm/permission/PermissionManagerService;->updatePermissionFlagsInternal(Ljava/lang/String;Ljava/lang/String;IIIIZLcom/android/server/pm/permission/PermissionManagerService$PermissionCallback;)V

    goto :goto_3

    .line 3769
    .end local v21    # "myUid":I
    .end local v23    # "permission":Ljava/lang/String;
    .restart local v8    # "permission":Ljava/lang/String;
    .restart local v9    # "myUid":I
    :cond_8
    move-object/from16 v23, v8

    move/from16 v21, v9

    .end local v8    # "permission":Ljava/lang/String;
    .end local v9    # "myUid":I
    .restart local v21    # "myUid":I
    .restart local v23    # "permission":Ljava/lang/String;
    goto :goto_3

    .line 3757
    .end local v20    # "flags":I
    .end local v21    # "myUid":I
    .end local v23    # "permission":Ljava/lang/String;
    .restart local v8    # "permission":Ljava/lang/String;
    .restart local v9    # "myUid":I
    :cond_9
    move-object/from16 v23, v8

    move/from16 v21, v9

    .line 3775
    .end local v8    # "permission":Ljava/lang/String;
    .end local v9    # "myUid":I
    .end local v19    # "shouldGrantPermission":Z
    .restart local v21    # "myUid":I
    :goto_3
    move/from16 v9, v21

    goto/16 :goto_1

    .line 3756
    .end local v21    # "myUid":I
    .restart local v8    # "permission":Ljava/lang/String;
    .restart local v9    # "myUid":I
    :catchall_1
    move-exception v0

    move-object/from16 v23, v8

    move/from16 v21, v9

    .end local v8    # "permission":Ljava/lang/String;
    .end local v9    # "myUid":I
    .restart local v21    # "myUid":I
    .restart local v23    # "permission":Ljava/lang/String;
    :goto_4
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0

    :catchall_2
    move-exception v0

    goto :goto_4

    .line 3776
    .end local v21    # "myUid":I
    .end local v23    # "permission":Ljava/lang/String;
    .restart local v9    # "myUid":I
    :cond_a
    return-void
.end method

.method private grantRuntimePermissionInternal(Ljava/lang/String;Ljava/lang/String;ZIILcom/android/server/pm/permission/PermissionManagerService$PermissionCallback;)V
    .locals 20
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permName"    # Ljava/lang/String;
    .param p3, "overridePolicy"    # Z
    .param p4, "callingUid"    # I
    .param p5, "userId"    # I
    .param p6, "callback"    # Lcom/android/server/pm/permission/PermissionManagerService$PermissionCallback;

    .line 1427
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move/from16 v10, p4

    move/from16 v11, p5

    move-object/from16 v12, p6

    iget-object v0, v7, Lcom/android/server/pm/permission/PermissionManagerService;->mUserManagerInt:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v0, v11}, Lcom/android/server/pm/UserManagerInternal;->exists(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1428
    const-string v0, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No such user:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1429
    return-void

    .line 1432
    :cond_0
    iget-object v0, v7, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.GRANT_RUNTIME_PERMISSIONS"

    const-string v2, "grantRuntimePermission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1436
    const/4 v4, 0x1

    const/4 v5, 0x1

    const-string v6, "grantRuntimePermission"

    move-object/from16 v1, p0

    move/from16 v2, p4

    move/from16 v3, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/server/pm/permission/PermissionManagerService;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 1441
    iget-object v0, v7, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, v8}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v1

    .line 1442
    .local v1, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    iget-object v0, v7, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, v8}, Landroid/content/pm/PackageManagerInternal;->getPackageSetting(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v2

    .line 1443
    .local v2, "ps":Lcom/android/server/pm/PackageSetting;
    if-eqz v1, :cond_1d

    if-nez v2, :cond_1

    goto/16 :goto_8

    .line 1447
    :cond_1
    iget-object v0, v7, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, v1, v10, v11}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Lcom/android/server/pm/parsing/pkg/AndroidPackage;II)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 1453
    iget-object v3, v7, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1454
    :try_start_0
    iget-object v0, v7, Lcom/android/server/pm/permission/PermissionManagerService;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v0, v9}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v0

    .line 1455
    .local v0, "permission":Lcom/android/server/pm/permission/Permission;
    if-eqz v0, :cond_1b

    .line 1458
    invoke-virtual {v0}, Lcom/android/server/pm/permission/Permission;->isRole()Z

    move-result v4

    .line 1459
    .local v4, "isRolePermission":Z
    invoke-virtual {v0}, Lcom/android/server/pm/permission/Permission;->isSoftRestricted()Z

    move-result v5

    .line 1460
    .end local v0    # "permission":Lcom/android/server/pm/permission/Permission;
    .local v5, "isSoftRestrictedPermission":Z
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 1461
    const/4 v0, 0x1

    const/4 v3, 0x0

    if-eqz v4, :cond_2

    .line 1462
    invoke-direct {v7, v10}, Lcom/android/server/pm/permission/PermissionManagerService;->mayManageRolePermission(I)Z

    move-result v6

    if-eqz v6, :cond_2

    move v6, v0

    goto :goto_0

    :cond_2
    move v6, v3

    .line 1463
    .local v6, "mayGrantRolePermission":Z
    :goto_0
    if-eqz v5, :cond_3

    iget-object v13, v7, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    .line 1465
    invoke-interface {v1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->toAppInfoWithoutState()Landroid/content/pm/ApplicationInfo;

    move-result-object v14

    invoke-static/range {p5 .. p5}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v15

    .line 1464
    invoke-static {v13, v14, v1, v15, v9}, Lcom/android/server/policy/SoftRestrictedPermissionPolicy;->forPermission(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Landroid/os/UserHandle;Ljava/lang/String;)Lcom/android/server/policy/SoftRestrictedPermissionPolicy;

    move-result-object v13

    .line 1466
    invoke-virtual {v13}, Lcom/android/server/policy/SoftRestrictedPermissionPolicy;->mayGrantPermission()Z

    move-result v13

    if-eqz v13, :cond_3

    goto :goto_1

    :cond_3
    move v0, v3

    :goto_1
    move v13, v0

    .line 1470
    .local v13, "mayGrantSoftRestrictedPermission":Z
    iget-object v14, v7, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v14

    .line 1471
    :try_start_1
    iget-object v0, v7, Lcom/android/server/pm/permission/PermissionManagerService;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v0, v9}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v0

    .line 1472
    .local v0, "bp":Lcom/android/server/pm/permission/Permission;
    if-eqz v0, :cond_1a

    .line 1476
    invoke-virtual {v0}, Lcom/android/server/pm/permission/Permission;->isRuntime()Z

    move-result v3

    .line 1477
    .local v3, "isRuntimePermission":Z
    invoke-virtual {v0}, Lcom/android/server/pm/permission/Permission;->hasGids()Z

    move-result v15

    .line 1478
    .local v15, "permissionHasGids":Z
    if-nez v3, :cond_7

    invoke-virtual {v0}, Lcom/android/server/pm/permission/Permission;->isDevelopment()Z

    move-result v16

    if-eqz v16, :cond_4

    move/from16 v16, v4

    move/from16 v17, v5

    move/from16 v18, v6

    goto/16 :goto_2

    .line 1480
    :cond_4
    invoke-virtual {v0}, Lcom/android/server/pm/permission/Permission;->isRole()Z

    move-result v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v16, :cond_6

    .line 1481
    if-eqz v6, :cond_5

    move/from16 v16, v4

    move/from16 v17, v5

    move/from16 v18, v6

    goto :goto_2

    .line 1482
    :cond_5
    move/from16 v16, v4

    .end local v4    # "isRolePermission":Z
    .local v16, "isRolePermission":Z
    :try_start_2
    new-instance v4, Ljava/lang/SecurityException;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move/from16 v17, v5

    .end local v5    # "isSoftRestrictedPermission":Z
    .local v17, "isSoftRestrictedPermission":Z
    :try_start_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move/from16 v18, v6

    .end local v6    # "mayGrantRolePermission":Z
    .local v18, "mayGrantRolePermission":Z
    :try_start_4
    const-string v6, "Permission "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " is managed by role"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v1    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local v2    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v13    # "mayGrantSoftRestrictedPermission":Z
    .end local v16    # "isRolePermission":Z
    .end local v17    # "isSoftRestrictedPermission":Z
    .end local v18    # "mayGrantRolePermission":Z
    .end local p0    # "this":Lcom/android/server/pm/permission/PermissionManagerService;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "permName":Ljava/lang/String;
    .end local p3    # "overridePolicy":Z
    .end local p4    # "callingUid":I
    .end local p5    # "userId":I
    .end local p6    # "callback":Lcom/android/server/pm/permission/PermissionManagerService$PermissionCallback;
    throw v4

    .line 1558
    .end local v0    # "bp":Lcom/android/server/pm/permission/Permission;
    .end local v3    # "isRuntimePermission":Z
    .end local v15    # "permissionHasGids":Z
    .restart local v1    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .restart local v2    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v6    # "mayGrantRolePermission":Z
    .restart local v13    # "mayGrantSoftRestrictedPermission":Z
    .restart local v16    # "isRolePermission":Z
    .restart local v17    # "isSoftRestrictedPermission":Z
    .restart local p0    # "this":Lcom/android/server/pm/permission/PermissionManagerService;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "permName":Ljava/lang/String;
    .restart local p3    # "overridePolicy":Z
    .restart local p4    # "callingUid":I
    .restart local p5    # "userId":I
    .restart local p6    # "callback":Lcom/android/server/pm/permission/PermissionManagerService$PermissionCallback;
    :catchall_0
    move-exception v0

    move/from16 v18, v6

    .end local v6    # "mayGrantRolePermission":Z
    .restart local v18    # "mayGrantRolePermission":Z
    goto/16 :goto_7

    .end local v17    # "isSoftRestrictedPermission":Z
    .end local v18    # "mayGrantRolePermission":Z
    .restart local v5    # "isSoftRestrictedPermission":Z
    .restart local v6    # "mayGrantRolePermission":Z
    :catchall_1
    move-exception v0

    move/from16 v17, v5

    move/from16 v18, v6

    .end local v5    # "isSoftRestrictedPermission":Z
    .end local v6    # "mayGrantRolePermission":Z
    .restart local v17    # "isSoftRestrictedPermission":Z
    .restart local v18    # "mayGrantRolePermission":Z
    goto/16 :goto_7

    .line 1485
    .end local v16    # "isRolePermission":Z
    .end local v17    # "isSoftRestrictedPermission":Z
    .end local v18    # "mayGrantRolePermission":Z
    .restart local v0    # "bp":Lcom/android/server/pm/permission/Permission;
    .restart local v3    # "isRuntimePermission":Z
    .restart local v4    # "isRolePermission":Z
    .restart local v5    # "isSoftRestrictedPermission":Z
    .restart local v6    # "mayGrantRolePermission":Z
    .restart local v15    # "permissionHasGids":Z
    :cond_6
    move/from16 v16, v4

    move/from16 v17, v5

    move/from16 v18, v6

    .end local v4    # "isRolePermission":Z
    .end local v5    # "isSoftRestrictedPermission":Z
    .end local v6    # "mayGrantRolePermission":Z
    .restart local v16    # "isRolePermission":Z
    .restart local v17    # "isSoftRestrictedPermission":Z
    .restart local v18    # "mayGrantRolePermission":Z
    new-instance v4, Ljava/lang/SecurityException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Permission "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " requested by "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1486
    invoke-interface {v1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " is not a changeable permission type"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v1    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local v2    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v13    # "mayGrantSoftRestrictedPermission":Z
    .end local v16    # "isRolePermission":Z
    .end local v17    # "isSoftRestrictedPermission":Z
    .end local v18    # "mayGrantRolePermission":Z
    .end local p0    # "this":Lcom/android/server/pm/permission/PermissionManagerService;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "permName":Ljava/lang/String;
    .end local p3    # "overridePolicy":Z
    .end local p4    # "callingUid":I
    .end local p5    # "userId":I
    .end local p6    # "callback":Lcom/android/server/pm/permission/PermissionManagerService$PermissionCallback;
    throw v4

    .line 1478
    .restart local v1    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .restart local v2    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v4    # "isRolePermission":Z
    .restart local v5    # "isSoftRestrictedPermission":Z
    .restart local v6    # "mayGrantRolePermission":Z
    .restart local v13    # "mayGrantSoftRestrictedPermission":Z
    .restart local p0    # "this":Lcom/android/server/pm/permission/PermissionManagerService;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "permName":Ljava/lang/String;
    .restart local p3    # "overridePolicy":Z
    .restart local p4    # "callingUid":I
    .restart local p5    # "userId":I
    .restart local p6    # "callback":Lcom/android/server/pm/permission/PermissionManagerService$PermissionCallback;
    :cond_7
    move/from16 v16, v4

    move/from16 v17, v5

    move/from16 v18, v6

    .line 1489
    .end local v4    # "isRolePermission":Z
    .end local v5    # "isSoftRestrictedPermission":Z
    .end local v6    # "mayGrantRolePermission":Z
    .restart local v16    # "isRolePermission":Z
    .restart local v17    # "isSoftRestrictedPermission":Z
    .restart local v18    # "mayGrantRolePermission":Z
    :goto_2
    invoke-direct {v7, v1, v11}, Lcom/android/server/pm/permission/PermissionManagerService;->getUidStateLocked(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)Lcom/android/server/pm/permission/UidPermissionState;

    move-result-object v4

    .line 1490
    .local v4, "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    if-nez v4, :cond_8

    .line 1491
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Missing permissions state for "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " and user "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1493
    monitor-exit v14

    return-void

    .line 1496
    :cond_8
    invoke-virtual {v4, v9}, Lcom/android/server/pm/permission/UidPermissionState;->hasPermissionState(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 1497
    invoke-interface {v1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    goto :goto_3

    .line 1498
    :cond_9
    new-instance v5, Ljava/lang/SecurityException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Package "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " has not requested permission "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v1    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local v2    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v13    # "mayGrantSoftRestrictedPermission":Z
    .end local v16    # "isRolePermission":Z
    .end local v17    # "isSoftRestrictedPermission":Z
    .end local v18    # "mayGrantRolePermission":Z
    .end local p0    # "this":Lcom/android/server/pm/permission/PermissionManagerService;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "permName":Ljava/lang/String;
    .end local p3    # "overridePolicy":Z
    .end local p4    # "callingUid":I
    .end local p5    # "userId":I
    .end local p6    # "callback":Lcom/android/server/pm/permission/PermissionManagerService$PermissionCallback;
    throw v5

    .line 1506
    .restart local v1    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .restart local v2    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v13    # "mayGrantSoftRestrictedPermission":Z
    .restart local v16    # "isRolePermission":Z
    .restart local v17    # "isSoftRestrictedPermission":Z
    .restart local v18    # "mayGrantRolePermission":Z
    .restart local p0    # "this":Lcom/android/server/pm/permission/PermissionManagerService;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "permName":Ljava/lang/String;
    .restart local p3    # "overridePolicy":Z
    .restart local p4    # "callingUid":I
    .restart local p5    # "userId":I
    .restart local p6    # "callback":Lcom/android/server/pm/permission/PermissionManagerService$PermissionCallback;
    :cond_a
    :goto_3
    invoke-interface {v1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v5

    const/16 v6, 0x17

    if-ge v5, v6, :cond_b

    invoke-virtual {v0}, Lcom/android/server/pm/permission/Permission;->isRuntime()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 1507
    monitor-exit v14

    return-void

    .line 1510
    :cond_b
    invoke-virtual {v4, v9}, Lcom/android/server/pm/permission/UidPermissionState;->getPermissionFlags(Ljava/lang/String;)I

    move-result v5

    .line 1511
    .local v5, "flags":I
    and-int/lit8 v10, v5, 0x10

    if-eqz v10, :cond_c

    .line 1512
    const-string v6, "PackageManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v19, v15

    .end local v15    # "permissionHasGids":Z
    .local v19, "permissionHasGids":Z
    const-string v15, "Cannot grant system fixed permission "

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " for package "

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1514
    monitor-exit v14

    return-void

    .line 1516
    .end local v19    # "permissionHasGids":Z
    .restart local v15    # "permissionHasGids":Z
    :cond_c
    move/from16 v19, v15

    .end local v15    # "permissionHasGids":Z
    .restart local v19    # "permissionHasGids":Z
    if-nez p3, :cond_d

    and-int/lit8 v10, v5, 0x4

    if-eqz v10, :cond_d

    .line 1517
    const-string v6, "PackageManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Cannot grant policy fixed permission "

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " for package "

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1519
    monitor-exit v14

    return-void

    .line 1522
    :cond_d
    invoke-virtual {v0}, Lcom/android/server/pm/permission/Permission;->isHardRestricted()Z

    move-result v10

    if-eqz v10, :cond_e

    and-int/lit16 v10, v5, 0x3800

    if-nez v10, :cond_e

    .line 1524
    const-string v6, "PackageManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Cannot grant hard restricted non-exempt permission "

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " for package "

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1526
    monitor-exit v14

    return-void

    .line 1529
    :cond_e
    invoke-virtual {v0}, Lcom/android/server/pm/permission/Permission;->isSoftRestricted()Z

    move-result v10

    if-eqz v10, :cond_f

    if-nez v13, :cond_f

    .line 1530
    const-string v6, "PackageManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Cannot grant soft restricted permission "

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " for package "

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1532
    monitor-exit v14

    return-void

    .line 1535
    :cond_f
    invoke-virtual {v0}, Lcom/android/server/pm/permission/Permission;->isDevelopment()Z

    move-result v10

    if-nez v10, :cond_14

    invoke-virtual {v0}, Lcom/android/server/pm/permission/Permission;->isRole()Z

    move-result v10

    if-eqz v10, :cond_10

    goto :goto_5

    .line 1544
    :cond_10
    invoke-virtual {v2, v11}, Lcom/android/server/pm/PackageSetting;->getInstantApp(I)Z

    move-result v10

    if-eqz v10, :cond_12

    invoke-virtual {v0}, Lcom/android/server/pm/permission/Permission;->isInstant()Z

    move-result v10

    if-eqz v10, :cond_11

    goto :goto_4

    .line 1545
    :cond_11
    new-instance v6, Ljava/lang/SecurityException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Cannot grant non-ephemeral permission"

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " for package "

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v6, v10}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v1    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local v2    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v13    # "mayGrantSoftRestrictedPermission":Z
    .end local v16    # "isRolePermission":Z
    .end local v17    # "isSoftRestrictedPermission":Z
    .end local v18    # "mayGrantRolePermission":Z
    .end local p0    # "this":Lcom/android/server/pm/permission/PermissionManagerService;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "permName":Ljava/lang/String;
    .end local p3    # "overridePolicy":Z
    .end local p4    # "callingUid":I
    .end local p5    # "userId":I
    .end local p6    # "callback":Lcom/android/server/pm/permission/PermissionManagerService$PermissionCallback;
    throw v6

    .line 1549
    .restart local v1    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .restart local v2    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v13    # "mayGrantSoftRestrictedPermission":Z
    .restart local v16    # "isRolePermission":Z
    .restart local v17    # "isSoftRestrictedPermission":Z
    .restart local v18    # "mayGrantRolePermission":Z
    .restart local p0    # "this":Lcom/android/server/pm/permission/PermissionManagerService;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "permName":Ljava/lang/String;
    .restart local p3    # "overridePolicy":Z
    .restart local p4    # "callingUid":I
    .restart local p5    # "userId":I
    .restart local p6    # "callback":Lcom/android/server/pm/permission/PermissionManagerService$PermissionCallback;
    :cond_12
    :goto_4
    invoke-interface {v1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v10

    if-ge v10, v6, :cond_13

    .line 1550
    const-string v6, "PackageManager"

    const-string v10, "Cannot grant runtime permission to a legacy app"

    invoke-static {v6, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1551
    monitor-exit v14

    return-void

    .line 1554
    :cond_13
    invoke-virtual {v4, v0}, Lcom/android/server/pm/permission/UidPermissionState;->grantPermission(Lcom/android/server/pm/permission/Permission;)Z

    move-result v6

    if-nez v6, :cond_15

    .line 1555
    monitor-exit v14

    return-void

    .line 1540
    :cond_14
    :goto_5
    invoke-virtual {v4, v0}, Lcom/android/server/pm/permission/UidPermissionState;->grantPermission(Lcom/android/server/pm/permission/Permission;)Z

    move-result v6

    if-nez v6, :cond_15

    .line 1541
    monitor-exit v14

    return-void

    .line 1558
    .end local v0    # "bp":Lcom/android/server/pm/permission/Permission;
    .end local v4    # "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    .end local v5    # "flags":I
    :cond_15
    monitor-exit v14
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 1560
    if-eqz v3, :cond_16

    .line 1561
    const/16 v0, 0x4db

    invoke-direct {v7, v0, v9, v8}, Lcom/android/server/pm/permission/PermissionManagerService;->logPermission(ILjava/lang/String;Ljava/lang/String;)V

    .line 1564
    :cond_16
    invoke-interface {v1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUid()I

    move-result v0

    invoke-static {v11, v0}, Landroid/os/UserHandle;->getUid(II)I

    move-result v0

    .line 1565
    .local v0, "uid":I
    if-eqz v12, :cond_18

    .line 1566
    if-eqz v3, :cond_17

    .line 1567
    invoke-virtual {v12, v0, v11}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCallback;->onPermissionGranted(II)V

    goto :goto_6

    .line 1569
    :cond_17
    invoke-virtual/range {p6 .. p6}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCallback;->onInstallPermissionGranted()V

    .line 1571
    :goto_6
    if-eqz v19, :cond_18

    .line 1572
    invoke-interface {v1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUid()I

    move-result v4

    invoke-static {v4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v4

    invoke-virtual {v12, v4, v11}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCallback;->onGidsChanged(II)V

    .line 1576
    :cond_18
    if-eqz v3, :cond_19

    .line 1577
    invoke-direct {v7, v8, v11}, Lcom/android/server/pm/permission/PermissionManagerService;->notifyRuntimePermissionStateChanged(Ljava/lang/String;I)V

    .line 1579
    :cond_19
    return-void

    .line 1473
    .end local v3    # "isRuntimePermission":Z
    .end local v16    # "isRolePermission":Z
    .end local v17    # "isSoftRestrictedPermission":Z
    .end local v18    # "mayGrantRolePermission":Z
    .end local v19    # "permissionHasGids":Z
    .local v0, "bp":Lcom/android/server/pm/permission/Permission;
    .local v4, "isRolePermission":Z
    .local v5, "isSoftRestrictedPermission":Z
    .restart local v6    # "mayGrantRolePermission":Z
    :cond_1a
    move/from16 v16, v4

    move/from16 v17, v5

    move/from16 v18, v6

    .end local v4    # "isRolePermission":Z
    .end local v5    # "isSoftRestrictedPermission":Z
    .end local v6    # "mayGrantRolePermission":Z
    .restart local v16    # "isRolePermission":Z
    .restart local v17    # "isSoftRestrictedPermission":Z
    .restart local v18    # "mayGrantRolePermission":Z
    :try_start_5
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown permission: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v1    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local v2    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v13    # "mayGrantSoftRestrictedPermission":Z
    .end local v16    # "isRolePermission":Z
    .end local v17    # "isSoftRestrictedPermission":Z
    .end local v18    # "mayGrantRolePermission":Z
    .end local p0    # "this":Lcom/android/server/pm/permission/PermissionManagerService;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "permName":Ljava/lang/String;
    .end local p3    # "overridePolicy":Z
    .end local p4    # "callingUid":I
    .end local p5    # "userId":I
    .end local p6    # "callback":Lcom/android/server/pm/permission/PermissionManagerService$PermissionCallback;
    throw v3

    .line 1558
    .end local v0    # "bp":Lcom/android/server/pm/permission/Permission;
    .restart local v1    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .restart local v2    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v4    # "isRolePermission":Z
    .restart local v5    # "isSoftRestrictedPermission":Z
    .restart local v6    # "mayGrantRolePermission":Z
    .restart local v13    # "mayGrantSoftRestrictedPermission":Z
    .restart local p0    # "this":Lcom/android/server/pm/permission/PermissionManagerService;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "permName":Ljava/lang/String;
    .restart local p3    # "overridePolicy":Z
    .restart local p4    # "callingUid":I
    .restart local p5    # "userId":I
    .restart local p6    # "callback":Lcom/android/server/pm/permission/PermissionManagerService$PermissionCallback;
    :catchall_2
    move-exception v0

    move/from16 v16, v4

    move/from16 v17, v5

    move/from16 v18, v6

    .end local v4    # "isRolePermission":Z
    .end local v5    # "isSoftRestrictedPermission":Z
    .end local v6    # "mayGrantRolePermission":Z
    .restart local v16    # "isRolePermission":Z
    .restart local v17    # "isSoftRestrictedPermission":Z
    .restart local v18    # "mayGrantRolePermission":Z
    :goto_7
    monitor-exit v14
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v0

    :catchall_3
    move-exception v0

    goto :goto_7

    .line 1456
    .end local v13    # "mayGrantSoftRestrictedPermission":Z
    .end local v16    # "isRolePermission":Z
    .end local v17    # "isSoftRestrictedPermission":Z
    .end local v18    # "mayGrantRolePermission":Z
    .local v0, "permission":Lcom/android/server/pm/permission/Permission;
    :cond_1b
    :try_start_6
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown permission: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v1    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local v2    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local p0    # "this":Lcom/android/server/pm/permission/PermissionManagerService;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "permName":Ljava/lang/String;
    .end local p3    # "overridePolicy":Z
    .end local p4    # "callingUid":I
    .end local p5    # "userId":I
    .end local p6    # "callback":Lcom/android/server/pm/permission/PermissionManagerService$PermissionCallback;
    throw v4

    .line 1460
    .end local v0    # "permission":Lcom/android/server/pm/permission/Permission;
    .restart local v1    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .restart local v2    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local p0    # "this":Lcom/android/server/pm/permission/PermissionManagerService;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "permName":Ljava/lang/String;
    .restart local p3    # "overridePolicy":Z
    .restart local p4    # "callingUid":I
    .restart local p5    # "userId":I
    .restart local p6    # "callback":Lcom/android/server/pm/permission/PermissionManagerService$PermissionCallback;
    :catchall_4
    move-exception v0

    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    throw v0

    .line 1448
    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1444
    :cond_1d
    :goto_8
    const-string v0, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1445
    return-void
.end method

.method private static hasPermission(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/lang/String;)Z
    .locals 4
    .param p0, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p1, "permName"    # Ljava/lang/String;

    .line 4556
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPermissions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4557
    return v1

    .line 4560
    :cond_0
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPermissions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 4561
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPermissions()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/parsing/component/ParsedPermission;

    invoke-virtual {v3}, Landroid/content/pm/parsing/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4562
    return v2

    .line 4560
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 4565
    .end local v0    # "i":I
    :cond_2
    return v1
.end method

.method private inheritPermissionStateToNewImplicitPermissionLocked(Landroid/util/ArraySet;Ljava/lang/String;Lcom/android/server/pm/permission/UidPermissionState;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .locals 7
    .param p2, "newPerm"    # Ljava/lang/String;
    .param p3, "ps"    # Lcom/android/server/pm/permission/UidPermissionState;
    .param p4, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/permission/UidPermissionState;",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            ")V"
        }
    .end annotation

    .line 3118
    .local p1, "sourcePerms":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-interface {p4}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 3119
    .local v0, "pkgName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 3120
    .local v1, "isGranted":Z
    const/4 v2, 0x0

    .line 3122
    .local v2, "flags":I
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v3

    .line 3123
    .local v3, "numSourcePerm":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_3

    .line 3124
    invoke-virtual {p1, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 3125
    .local v5, "sourcePerm":Ljava/lang/String;
    invoke-virtual {p3, v5}, Lcom/android/server/pm/permission/UidPermissionState;->isPermissionGranted(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 3126
    if-nez v1, :cond_0

    .line 3127
    const/4 v2, 0x0

    .line 3130
    :cond_0
    const/4 v1, 0x1

    .line 3131
    invoke-virtual {p3, v5}, Lcom/android/server/pm/permission/UidPermissionState;->getPermissionFlags(Ljava/lang/String;)I

    move-result v6

    or-int/2addr v2, v6

    goto :goto_1

    .line 3133
    :cond_1
    if-nez v1, :cond_2

    .line 3134
    invoke-virtual {p3, v5}, Lcom/android/server/pm/permission/UidPermissionState;->getPermissionFlags(Ljava/lang/String;)I

    move-result v6

    or-int/2addr v2, v6

    .line 3123
    .end local v5    # "sourcePerm":Ljava/lang/String;
    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3139
    .end local v4    # "i":I
    :cond_3
    if-eqz v1, :cond_4

    .line 3145
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v4, p2}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v4

    invoke-virtual {p3, v4}, Lcom/android/server/pm/permission/UidPermissionState;->grantPermission(Lcom/android/server/pm/permission/Permission;)Z

    .line 3149
    :cond_4
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v4, p2}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v4

    invoke-virtual {p3, v4, v2, v2}, Lcom/android/server/pm/permission/UidPermissionState;->updatePermissionFlags(Lcom/android/server/pm/permission/Permission;II)Z

    .line 3150
    return-void
.end method

.method private isInSystemConfigPrivAppDenyPermissions(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/lang/String;)Z
    .locals 3
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "permission"    # Ljava/lang/String;

    .line 3474
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v0

    .line 3476
    .local v0, "systemConfig":Lcom/android/server/SystemConfig;
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isVendor()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3477
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/SystemConfig;->getVendorPrivAppDenyPermissions(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v1

    .local v1, "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    goto :goto_0

    .line 3478
    .end local v1    # "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_0
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isProduct()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3479
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/SystemConfig;->getProductPrivAppDenyPermissions(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v1

    .restart local v1    # "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    goto :goto_0

    .line 3480
    .end local v1    # "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isSystemExt()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3481
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/SystemConfig;->getSystemExtPrivAppDenyPermissions(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v1

    .restart local v1    # "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    goto :goto_0

    .line 3483
    .end local v1    # "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_2
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/SystemConfig;->getPrivAppDenyPermissions(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v1

    .line 3485
    .restart local v1    # "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_0
    invoke-static {v1, p2}, Lcom/android/internal/util/CollectionUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method private isInSystemConfigPrivAppPermissions(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/lang/String;)Z
    .locals 3
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "permission"    # Ljava/lang/String;

    .line 3458
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v0

    .line 3460
    .local v0, "systemConfig":Lcom/android/server/SystemConfig;
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isVendor()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3461
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/SystemConfig;->getVendorPrivAppPermissions(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v1

    .local v1, "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    goto :goto_0

    .line 3462
    .end local v1    # "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_0
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isProduct()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3463
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/SystemConfig;->getProductPrivAppPermissions(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v1

    .restart local v1    # "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    goto :goto_0

    .line 3464
    .end local v1    # "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isSystemExt()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3465
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/SystemConfig;->getSystemExtPrivAppPermissions(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v1

    .restart local v1    # "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    goto :goto_0

    .line 3467
    .end local v1    # "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_2
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/SystemConfig;->getPrivAppPermissions(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v1

    .line 3469
    .restart local v1    # "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_0
    invoke-static {v1, p2}, Lcom/android/internal/util/CollectionUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method private static isNewPlatformPermissionForPackage(Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z
    .locals 6
    .param p0, "perm"    # Ljava/lang/String;
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 3378
    const/4 v0, 0x0

    .line 3379
    .local v0, "allowed":Z
    sget-object v1, Landroid/content/pm/PackageParser;->NEW_PERMISSIONS:[Landroid/content/pm/PackageParser$NewPermissionInfo;

    array-length v1, v1

    .line 3380
    .local v1, "NP":I
    const/4 v2, 0x0

    .local v2, "ip":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 3381
    sget-object v3, Landroid/content/pm/PackageParser;->NEW_PERMISSIONS:[Landroid/content/pm/PackageParser$NewPermissionInfo;

    aget-object v3, v3, v2

    .line 3383
    .local v3, "npi":Landroid/content/pm/PackageParser$NewPermissionInfo;
    iget-object v4, v3, Landroid/content/pm/PackageParser$NewPermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3384
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v4

    iget v5, v3, Landroid/content/pm/PackageParser$NewPermissionInfo;->sdkVersion:I

    if-ge v4, v5, :cond_0

    .line 3385
    const/4 v0, 0x1

    .line 3386
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Auto-granting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " to old pkg "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3387
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3386
    const-string v5, "PackageManager"

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3388
    goto :goto_1

    .line 3380
    .end local v3    # "npi":Landroid/content/pm/PackageParser$NewPermissionInfo;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3391
    .end local v2    # "ip":I
    :cond_1
    :goto_1
    return v0
.end method

.method private isPermissionSplitFromNonRuntime(Ljava/lang/String;I)Z
    .locals 8
    .param p1, "permName"    # Ljava/lang/String;
    .param p2, "targetSdk"    # I

    .line 1924
    invoke-direct {p0}, Lcom/android/server/pm/permission/PermissionManagerService;->getSplitPermissionInfos()Ljava/util/List;

    move-result-object v0

    .line 1925
    .local v0, "splitPerms":Ljava/util/List;, "Ljava/util/List<Landroid/permission/PermissionManager$SplitPermissionInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 1926
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v3, 0x0

    if-ge v2, v1, :cond_2

    .line 1927
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/permission/PermissionManager$SplitPermissionInfo;

    .line 1928
    .local v4, "splitPerm":Landroid/permission/PermissionManager$SplitPermissionInfo;
    invoke-virtual {v4}, Landroid/permission/PermissionManager$SplitPermissionInfo;->getTargetSdk()I

    move-result v5

    if-ge p2, v5, :cond_1

    .line 1929
    invoke-virtual {v4}, Landroid/permission/PermissionManager$SplitPermissionInfo;->getNewPermissions()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1930
    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1931
    :try_start_0
    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    .line 1932
    invoke-virtual {v4}, Landroid/permission/PermissionManager$SplitPermissionInfo;->getSplitPermission()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v6

    .line 1933
    .local v6, "perm":Lcom/android/server/pm/permission/Permission;
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Lcom/android/server/pm/permission/Permission;->isRuntime()Z

    move-result v7

    if-nez v7, :cond_0

    const/4 v3, 0x1

    :cond_0
    monitor-exit v5

    return v3

    .line 1934
    .end local v6    # "perm":Lcom/android/server/pm/permission/Permission;
    :catchall_0
    move-exception v3

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1926
    .end local v4    # "splitPerm":Landroid/permission/PermissionManager$SplitPermissionInfo;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1937
    .end local v2    # "i":I
    :cond_2
    return v3
.end method

.method private isPermissionsReviewRequiredInternal(Ljava/lang/String;I)Z
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 3711
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v0

    .line 3712
    .local v0, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 3713
    return v1

    .line 3717
    :cond_0
    invoke-interface {v0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v2

    const/16 v3, 0x17

    if-lt v2, v3, :cond_1

    .line 3718
    return v1

    .line 3722
    :cond_1
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 3723
    :try_start_0
    invoke-direct {p0, v0, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->getUidStateLocked(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)Lcom/android/server/pm/permission/UidPermissionState;

    move-result-object v3

    .line 3724
    .local v3, "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    if-nez v3, :cond_2

    .line 3725
    const-string v4, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Missing permissions state for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " and user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3727
    monitor-exit v2

    return v1

    .line 3729
    :cond_2
    invoke-virtual {v3}, Lcom/android/server/pm/permission/UidPermissionState;->isPermissionsReviewRequired()Z

    move-result v1

    monitor-exit v2

    return v1

    .line 3730
    .end local v3    # "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static isProfileOwner(I)Z
    .locals 3
    .param p0, "uid"    # I

    .line 3700
    const-class v0, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 3701
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 3703
    .local v0, "dpmInternal":Landroid/app/admin/DevicePolicyManagerInternal;
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 3704
    invoke-virtual {v0, p0}, Landroid/app/admin/DevicePolicyManagerInternal;->isActiveProfileOwner(I)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0, p0}, Landroid/app/admin/DevicePolicyManagerInternal;->isActiveDeviceOwner(I)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1

    .line 3706
    :cond_2
    return v1
.end method

.method public static killUid(IILjava/lang/String;)V
    .locals 4
    .param p0, "appId"    # I
    .param p1, "userId"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .line 484
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 486
    .local v0, "identity":J
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 487
    .local v2, "am":Landroid/app/IActivityManager;
    if-eqz v2, :cond_0

    .line 489
    :try_start_1
    invoke-interface {v2, p0, p1, p2}, Landroid/app/IActivityManager;->killUidForPermissionChange(IILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 492
    goto :goto_0

    .line 490
    :catch_0
    move-exception v3

    .line 495
    .end local v2    # "am":Landroid/app/IActivityManager;
    :cond_0
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 496
    nop

    .line 497
    return-void

    .line 495
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 496
    throw v2
.end method

.method static synthetic lambda$getPackagesWithAutoRevokePolicy$8(ILjava/util/List;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .locals 1
    .param p0, "autoRevokePolicy"    # I
    .param p1, "result"    # Ljava/util/List;
    .param p2, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 3370
    invoke-interface {p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getAutoRevokePermissions()I

    move-result v0

    if-ne v0, p0, :cond_0

    .line 3371
    invoke-interface {p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3373
    :cond_0
    return-void
.end method

.method static synthetic lambda$onPackageUninstalledInternal$16(I)V
    .locals 2
    .param p0, "appId"    # I

    .line 4909
    const/4 v0, -0x1

    const-string v1, "permission grant or revoke changed gids"

    invoke-static {p0, v0, v1}, Lcom/android/server/pm/permission/PermissionManagerService;->killUid(IILjava/lang/String;)V

    .line 4910
    return-void
.end method

.method static synthetic lambda$resetRuntimePermissionsInternal$3(II)V
    .locals 2
    .param p0, "revocationUID"    # I
    .param p1, "revocationUserId"    # I

    .line 1910
    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const-string v1, "permissions revoked"

    invoke-static {v0, p1, v1}, Lcom/android/server/pm/permission/PermissionManagerService;->killUid(IILjava/lang/String;)V

    return-void
.end method

.method private logPermission(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "action"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;

    .line 4576
    new-instance v0, Landroid/metrics/LogMaker;

    invoke-direct {v0, p1}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 4577
    .local v0, "log":Landroid/metrics/LogMaker;
    invoke-virtual {v0, p3}, Landroid/metrics/LogMaker;->setPackageName(Ljava/lang/String;)Landroid/metrics/LogMaker;

    .line 4578
    const/16 v1, 0x4d9

    invoke-virtual {v0, v1, p2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 4580
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v1, v0}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 4581
    return-void
.end method

.method private mayManageRolePermission(I)Z
    .locals 4
    .param p1, "uid"    # I

    .line 1717
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1718
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 1719
    .local v1, "packageNames":[Ljava/lang/String;
    if-nez v1, :cond_0

    .line 1720
    const/4 v2, 0x0

    return v2

    .line 1722
    :cond_0
    nop

    .line 1723
    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getPermissionControllerPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1724
    .local v2, "permissionControllerPackageName":Ljava/lang/String;
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    return v3
.end method

.method private notifyRuntimePermissionStateChanged(Ljava/lang/String;I)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 2123
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda0;->INSTANCE:Lcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda0;

    .line 2125
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 2124
    invoke-static {v1, p0, p1, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2123
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2126
    return-void
.end method

.method private onPackageAddedInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ZLcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .locals 11
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "isInstantApp"    # Z
    .param p3, "oldPkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 4762
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getAdoptPermissions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 4765
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getAdoptPermissions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 4766
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getAdoptPermissions()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4767
    .local v2, "origName":Ljava/lang/String;
    invoke-direct {p0, v2, p1}, Lcom/android/server/pm/permission/PermissionManagerService;->canAdoptPermissionsInternal(Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4768
    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Adopting permissions from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4769
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 4768
    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4770
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 4771
    :try_start_0
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Lcom/android/server/pm/permission/PermissionRegistry;->transferPermissions(Ljava/lang/String;Ljava/lang/String;)V

    .line 4772
    monitor-exit v3

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 4765
    .end local v2    # "origName":Ljava/lang/String;
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 4778
    .end local v0    # "i":I
    :cond_1
    if-eqz p2, :cond_2

    .line 4779
    const-string v0, "PackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Permission groups from package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ignored: instant apps cannot define new permission groups."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 4782
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/PermissionManagerService;->addAllPermissionGroupsInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V

    .line 4789
    :goto_2
    if-eqz p2, :cond_3

    .line 4790
    const/4 v0, 0x0

    .line 4791
    .local v0, "permissionsWithChangedDefinition":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v2, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Permissions from package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ignored: instant apps cannot define new permissions."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 4794
    .end local v0    # "permissionsWithChangedDefinition":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/PermissionManagerService;->addAllPermissionsInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Ljava/util/List;

    move-result-object v0

    .line 4797
    .restart local v0    # "permissionsWithChangedDefinition":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_3
    if-eqz p3, :cond_4

    move v2, v1

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    :goto_4
    move v9, v2

    .line 4798
    .local v9, "hasOldPkg":Z
    nop

    .line 4799
    invoke-static {v0}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v2

    xor-int/2addr v1, v2

    .line 4800
    .local v1, "hasPermissionDefinitionChanges":Z
    if-nez v9, :cond_5

    if-eqz v1, :cond_6

    .line 4804
    :cond_5
    new-instance v10, Lcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda5;

    move-object v2, v10

    move-object v3, p0

    move v4, v9

    move-object v5, p1

    move-object v6, p3

    move v7, v1

    move-object v8, v0

    invoke-direct/range {v2 .. v8}, Lcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/pm/permission/PermissionManagerService;ZLcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/parsing/pkg/AndroidPackage;ZLjava/util/List;)V

    invoke-static {v10}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 4815
    :cond_6
    return-void
.end method

.method private onPackageInstalledInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams;[I)V
    .locals 6
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "params"    # Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams;
    .param p3, "userIds"    # [I

    .line 4841
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/server/pm/permission/PermissionManagerService;->updatePermissions(Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V

    .line 4842
    array-length v0, p3

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    aget v3, p3, v2

    .line 4843
    .local v3, "userId":I
    nop

    .line 4844
    invoke-virtual {p2}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams;->getAllowlistedRestrictedPermissions()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x2

    .line 4843
    invoke-direct {p0, p1, v4, v5, v3}, Lcom/android/server/pm/permission/PermissionManagerService;->addAllowlistedRestrictedPermissionsInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/util/List;II)V

    .line 4846
    invoke-virtual {p2}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams;->getAutoRevokePermissionsMode()I

    move-result v4

    .line 4847
    .local v4, "autoRevokePermissionsMode":I
    const/4 v5, 0x1

    if-eqz v4, :cond_0

    if-ne v4, v5, :cond_2

    .line 4849
    :cond_0
    if-ne v4, v5, :cond_1

    goto :goto_1

    :cond_1
    move v5, v1

    :goto_1
    invoke-direct {p0, p1, v5, v3}, Lcom/android/server/pm/permission/PermissionManagerService;->setAutoRevokeExemptedInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ZI)Z

    .line 4852
    :cond_2
    invoke-virtual {p2}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams;->getGrantedPermissions()Ljava/util/List;

    move-result-object v5

    invoke-direct {p0, p1, v5, v3}, Lcom/android/server/pm/permission/PermissionManagerService;->grantRequestedRuntimePermissionsInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/util/List;I)V

    .line 4842
    .end local v3    # "userId":I
    .end local v4    # "autoRevokePermissionsMode":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4854
    :cond_3
    return-void
.end method

.method private onPackageRemovedInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .locals 0
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 4871
    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/PermissionManagerService;->removeAllPermissionsInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V

    .line 4872
    return-void
.end method

.method private onPackageUninstalledInternal(Ljava/lang/String;ILcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/util/List;[I)V
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "appId"    # I
    .param p3, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p5, "userIds"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            "Ljava/util/List<",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            ">;[I)V"
        }
    .end annotation

    .line 4879
    .local p4, "sharedUserPkgs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    const/4 v0, 0x0

    if-eqz p3, :cond_1

    invoke-interface {p3}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isSystem()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 4883
    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 4887
    array-length v1, p5

    :goto_0
    if-ge v0, v1, :cond_0

    aget v2, p5, v0

    .line 4888
    .local v2, "userId":I
    invoke-direct {p0, p3, v2}, Lcom/android/server/pm/permission/PermissionManagerService;->resetRuntimePermissionsInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)V

    .line 4887
    .end local v2    # "userId":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4890
    :cond_0
    return-void

    .line 4892
    :cond_1
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/android/server/pm/permission/PermissionManagerService;->updatePermissions(Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V

    .line 4893
    array-length v1, p5

    move v2, v0

    :goto_1
    if-ge v2, v1, :cond_5

    aget v3, p5, v2

    .line 4894
    .local v3, "userId":I
    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 4895
    invoke-direct {p0, p2, p1, v3}, Lcom/android/server/pm/permission/PermissionManagerService;->removeUidStateAndResetPackageInstallPermissionsFixed(ILjava/lang/String;I)V

    goto :goto_3

    .line 4902
    :cond_2
    invoke-direct {p0, p3, p4, v3}, Lcom/android/server/pm/permission/PermissionManagerService;->revokeSharedUserPermissionsForDeletedPackageInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/util/List;I)I

    move-result v4

    .line 4904
    .local v4, "userIdToKill":I
    const/16 v5, -0x2710

    if-eq v4, v5, :cond_3

    const/4 v5, 0x1

    goto :goto_2

    :cond_3
    move v5, v0

    .line 4906
    .local v5, "shouldKill":Z
    :goto_2
    if-eqz v5, :cond_4

    .line 4907
    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mHandler:Landroid/os/Handler;

    new-instance v7, Lcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda3;

    invoke-direct {v7, p2}, Lcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda3;-><init>(I)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4893
    .end local v3    # "userId":I
    .end local v4    # "userIdToKill":I
    .end local v5    # "shouldKill":Z
    :cond_4
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 4914
    :cond_5
    return-void
.end method

.method private onUserRemoved(I)V
    .locals 2
    .param p1, "userId"    # I

    .line 2504
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2505
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mState:Lcom/android/server/pm/permission/DevicePermissionState;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/permission/DevicePermissionState;->removeUserState(I)V

    .line 2506
    monitor-exit v0

    .line 2507
    return-void

    .line 2506
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private readLegacyPermissionState()V
    .locals 3

    .line 4620
    invoke-direct {p0}, Lcom/android/server/pm/permission/PermissionManagerService;->getAllUserIds()[I

    move-result-object v0

    .line 4621
    .local v0, "userIds":[I
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    new-instance v2, Lcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda13;

    invoke-direct {v2, p0, v0}, Lcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda13;-><init>(Lcom/android/server/pm/permission/PermissionManagerService;[I)V

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManagerInternal;->forEachPackageSetting(Ljava/util/function/Consumer;)V

    .line 4638
    return-void
.end method

.method private readLegacyPermissionStatesLocked(Lcom/android/server/pm/permission/UidPermissionState;Ljava/util/Collection;)V
    .locals 6
    .param p1, "uidState"    # Lcom/android/server/pm/permission/UidPermissionState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/permission/UidPermissionState;",
            "Ljava/util/Collection<",
            "Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;",
            ">;)V"
        }
    .end annotation

    .line 4643
    .local p2, "permissionStates":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;>;"
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;

    .line 4644
    .local v1, "permissionState":Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;
    invoke-virtual {v1}, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;->getName()Ljava/lang/String;

    move-result-object v2

    .line 4645
    .local v2, "permissionName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v3, v2}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v3

    .line 4646
    .local v3, "permission":Lcom/android/server/pm/permission/Permission;
    if-nez v3, :cond_0

    .line 4647
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown permission: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "PackageManager"

    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4648
    goto :goto_0

    .line 4650
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;->isGranted()Z

    move-result v4

    .line 4651
    invoke-virtual {v1}, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;->getFlags()I

    move-result v5

    .line 4650
    invoke-virtual {p1, v3, v4, v5}, Lcom/android/server/pm/permission/UidPermissionState;->putPermissionState(Lcom/android/server/pm/permission/Permission;ZI)V

    .line 4652
    .end local v1    # "permissionState":Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;
    .end local v2    # "permissionName":Ljava/lang/String;
    .end local v3    # "permission":Lcom/android/server/pm/permission/Permission;
    goto :goto_0

    .line 4653
    :cond_1
    return-void
.end method

.method private readLegacyPermissions(Lcom/android/server/pm/permission/LegacyPermissionSettings;)V
    .locals 10
    .param p1, "legacyPermissionSettings"    # Lcom/android/server/pm/permission/LegacyPermissionSettings;

    .line 4703
    const/4 v0, 0x0

    .local v0, "readPermissionOrPermissionTree":I
    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_4

    .line 4705
    if-nez v0, :cond_0

    .line 4706
    invoke-virtual {p1}, Lcom/android/server/pm/permission/LegacyPermissionSettings;->getPermissions()Ljava/util/List;

    move-result-object v1

    goto :goto_1

    .line 4707
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/pm/permission/LegacyPermissionSettings;->getPermissionTrees()Ljava/util/List;

    move-result-object v1

    :goto_1
    nop

    .line 4708
    .local v1, "legacyPermissions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/LegacyPermission;>;"
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 4709
    :try_start_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    .line 4710
    .local v3, "legacyPermissionsSize":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    if-ge v4, v3, :cond_3

    .line 4711
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/permission/LegacyPermission;

    .line 4712
    .local v5, "legacyPermission":Lcom/android/server/pm/permission/LegacyPermission;
    new-instance v6, Lcom/android/server/pm/permission/Permission;

    .line 4713
    invoke-virtual {v5}, Lcom/android/server/pm/permission/LegacyPermission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v7

    invoke-virtual {v5}, Lcom/android/server/pm/permission/LegacyPermission;->getType()I

    move-result v8

    invoke-direct {v6, v7, v8}, Lcom/android/server/pm/permission/Permission;-><init>(Landroid/content/pm/PermissionInfo;I)V

    .line 4714
    .local v6, "permission":Lcom/android/server/pm/permission/Permission;
    if-nez v0, :cond_2

    .line 4720
    iget-object v7, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    .line 4721
    invoke-virtual {v6}, Lcom/android/server/pm/permission/Permission;->getName()Ljava/lang/String;

    move-result-object v8

    .line 4720
    invoke-virtual {v7, v8}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v7

    .line 4722
    .local v7, "configPermission":Lcom/android/server/pm/permission/Permission;
    if-eqz v7, :cond_1

    .line 4723
    invoke-virtual {v7}, Lcom/android/server/pm/permission/Permission;->getType()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_1

    .line 4724
    invoke-virtual {v7}, Lcom/android/server/pm/permission/Permission;->getRawGids()[I

    move-result-object v8

    .line 4725
    invoke-virtual {v7}, Lcom/android/server/pm/permission/Permission;->areGidsPerUser()Z

    move-result v9

    .line 4724
    invoke-virtual {v6, v8, v9}, Lcom/android/server/pm/permission/Permission;->setGids([IZ)V

    .line 4727
    :cond_1
    iget-object v8, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v8, v6}, Lcom/android/server/pm/permission/PermissionRegistry;->addPermission(Lcom/android/server/pm/permission/Permission;)V

    .line 4728
    .end local v7    # "configPermission":Lcom/android/server/pm/permission/Permission;
    goto :goto_3

    .line 4729
    :cond_2
    iget-object v7, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v7, v6}, Lcom/android/server/pm/permission/PermissionRegistry;->addPermissionTree(Lcom/android/server/pm/permission/Permission;)V

    .line 4710
    .end local v5    # "legacyPermission":Lcom/android/server/pm/permission/LegacyPermission;
    .end local v6    # "permission":Lcom/android/server/pm/permission/Permission;
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 4732
    .end local v3    # "legacyPermissionsSize":I
    .end local v4    # "i":I
    :cond_3
    monitor-exit v2

    .line 4704
    .end local v1    # "legacyPermissions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/LegacyPermission;>;"
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4732
    .restart local v1    # "legacyPermissions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/LegacyPermission;>;"
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 4734
    .end local v0    # "readPermissionOrPermissionTree":I
    .end local v1    # "legacyPermissions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/LegacyPermission;>;"
    :cond_4
    return-void
.end method

.method private removeAllPermissionsInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .locals 9
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 2458
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2459
    :try_start_0
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPermissions()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v1

    .line 2460
    .local v1, "N":I
    const/4 v2, 0x0

    .line 2461
    .local v2, "r":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_3

    .line 2462
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPermissions()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/parsing/component/ParsedPermission;

    .line 2463
    .local v4, "p":Landroid/content/pm/parsing/component/ParsedPermission;
    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v4}, Landroid/content/pm/parsing/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v5

    .line 2464
    .local v5, "bp":Lcom/android/server/pm/permission/Permission;
    if-nez v5, :cond_0

    .line 2465
    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v4}, Landroid/content/pm/parsing/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermissionTree(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v6

    move-object v5, v6

    .line 2467
    :cond_0
    if-eqz v5, :cond_1

    invoke-virtual {v5, v4}, Lcom/android/server/pm/permission/Permission;->isPermission(Landroid/content/pm/parsing/component/ParsedPermission;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2468
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/server/pm/permission/Permission;->setPermissionInfo(Landroid/content/pm/PermissionInfo;)V

    .line 2478
    :cond_1
    invoke-virtual {v4}, Landroid/content/pm/parsing/component/ParsedPermission;->isAppOp()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2480
    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v4}, Landroid/content/pm/parsing/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/pm/permission/PermissionRegistry;->removeAppOpPermissionPackage(Ljava/lang/String;Ljava/lang/String;)V

    .line 2461
    .end local v4    # "p":Landroid/content/pm/parsing/component/ParsedPermission;
    .end local v5    # "bp":Lcom/android/server/pm/permission/Permission;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2483
    .end local v3    # "i":I
    :cond_3
    nop

    .line 2487
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    move v1, v3

    .line 2488
    const/4 v2, 0x0

    .line 2489
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_1
    if-ge v3, v1, :cond_5

    .line 2490
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2491
    .local v4, "permissionName":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v5, v4}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v5

    .line 2492
    .local v5, "permission":Lcom/android/server/pm/permission/Permission;
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Lcom/android/server/pm/permission/Permission;->isAppOp()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 2493
    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    .line 2494
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 2493
    invoke-virtual {v6, v4, v7}, Lcom/android/server/pm/permission/PermissionRegistry;->removeAppOpPermissionPackage(Ljava/lang/String;Ljava/lang/String;)V

    .line 2489
    .end local v4    # "permissionName":Ljava/lang/String;
    .end local v5    # "permission":Lcom/android/server/pm/permission/Permission;
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2497
    .end local v3    # "i":I
    :cond_5
    nop

    .line 2500
    .end local v1    # "N":I
    .end local v2    # "r":Ljava/lang/StringBuilder;
    monitor-exit v0

    .line 2501
    return-void

    .line 2500
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private removeOnRuntimePermissionStateChangedListener(Lcom/android/server/pm/permission/PermissionManagerServiceInternal$OnRuntimePermissionStateChangedListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/android/server/pm/permission/PermissionManagerServiceInternal$OnRuntimePermissionStateChangedListener;

    .line 2116
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2117
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mRuntimePermissionStateChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2118
    monitor-exit v0

    .line 2119
    return-void

    .line 2118
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private removeUidStateAndResetPackageInstallPermissionsFixed(ILjava/lang/String;I)V
    .locals 3
    .param p1, "appId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 4609
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4610
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mState:Lcom/android/server/pm/permission/DevicePermissionState;

    invoke-virtual {v1, p3}, Lcom/android/server/pm/permission/DevicePermissionState;->getUserState(I)Lcom/android/server/pm/permission/UserPermissionState;

    move-result-object v1

    .line 4611
    .local v1, "userState":Lcom/android/server/pm/permission/UserPermissionState;
    if-nez v1, :cond_0

    .line 4612
    monitor-exit v0

    return-void

    .line 4614
    :cond_0
    invoke-virtual {v1, p1}, Lcom/android/server/pm/permission/UserPermissionState;->removeUidState(I)V

    .line 4615
    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2}, Lcom/android/server/pm/permission/UserPermissionState;->setInstallPermissionsFixed(Ljava/lang/String;Z)V

    .line 4616
    .end local v1    # "userState":Lcom/android/server/pm/permission/UserPermissionState;
    monitor-exit v0

    .line 4617
    return-void

    .line 4616
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private resetRuntimePermissionsInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)V
    .locals 27
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "userId"    # I

    .line 1735
    move-object/from16 v15, p0

    move/from16 v13, p2

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v12

    .line 1738
    .local v12, "packageName":Ljava/lang/String;
    const v16, 0x9004b

    .line 1745
    .local v16, "userSettableMask":I
    const/16 v17, 0x14

    .line 1749
    .local v17, "policyOrSystemFlags":I
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v11

    .line 1750
    .local v11, "permissionCount":I
    const/4 v0, 0x1

    new-array v10, v0, [Z

    .line 1751
    .local v10, "permissionRemoved":[Z
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    move-object v9, v1

    .line 1752
    .local v9, "revokedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    new-instance v4, Landroid/util/IntArray;

    invoke-direct {v4, v11}, Landroid/util/IntArray;-><init>(I)V

    .line 1753
    .local v4, "syncUpdatedUsers":Landroid/util/IntArray;
    new-instance v5, Landroid/util/IntArray;

    invoke-direct {v5, v11}, Landroid/util/IntArray;-><init>(I)V

    .line 1755
    .local v5, "asyncUpdatedUsers":Landroid/util/IntArray;
    new-instance v14, Lcom/android/server/pm/permission/PermissionManagerService$2;

    move-object v1, v14

    move-object/from16 v2, p0

    move-object v3, v9

    move-object v6, v10

    invoke-direct/range {v1 .. v6}, Lcom/android/server/pm/permission/PermissionManagerService$2;-><init>(Lcom/android/server/pm/permission/PermissionManagerService;Landroid/util/ArraySet;Landroid/util/IntArray;Landroid/util/IntArray;[Z)V

    .line 1815
    .local v14, "delayingPermCallback":Lcom/android/server/pm/permission/PermissionManagerService$PermissionCallback;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v11, :cond_d

    .line 1816
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1819
    .local v3, "permName":Ljava/lang/String;
    iget-object v6, v15, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1820
    :try_start_0
    iget-object v7, v15, Lcom/android/server/pm/permission/PermissionManagerService;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v7, v3}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1821
    .local v7, "permission":Lcom/android/server/pm/permission/Permission;
    if-nez v7, :cond_0

    .line 1822
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v25, v9

    move-object/from16 v20, v10

    move/from16 v26, v11

    move-object/from16 v21, v12

    goto/16 :goto_5

    .line 1829
    .end local v7    # "permission":Lcom/android/server/pm/permission/Permission;
    :catchall_0
    move-exception v0

    move-object/from16 v25, v9

    move-object/from16 v20, v10

    move/from16 v26, v11

    move-object/from16 v21, v12

    goto/16 :goto_6

    .line 1825
    .restart local v7    # "permission":Lcom/android/server/pm/permission/Permission;
    :cond_0
    :try_start_2
    invoke-virtual {v7}, Lcom/android/server/pm/permission/Permission;->isRemoved()Z

    move-result v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v8, :cond_1

    .line 1826
    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object/from16 v25, v9

    move-object/from16 v20, v10

    move/from16 v26, v11

    move-object/from16 v21, v12

    goto/16 :goto_5

    .line 1828
    :cond_1
    :try_start_4
    invoke-virtual {v7}, Lcom/android/server/pm/permission/Permission;->isRuntime()Z

    move-result v8

    move/from16 v18, v8

    .line 1829
    .end local v7    # "permission":Lcom/android/server/pm/permission/Permission;
    .local v18, "isRuntimePermission":Z
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1832
    iget-object v6, v15, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 1833
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 1832
    invoke-virtual {v6, v7, v13}, Landroid/content/pm/PackageManagerInternal;->getSharedUserPackagesForPackage(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v8

    .line 1834
    .local v8, "pkgNames":[Ljava/lang/String;
    array-length v6, v8

    if-lez v6, :cond_5

    .line 1835
    const/4 v6, 0x0

    .line 1836
    .local v6, "used":Z
    array-length v7, v8

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v7, :cond_4

    aget-object v2, v8, v0

    .line 1837
    .local v2, "sharedPkgName":Ljava/lang/String;
    move/from16 v20, v6

    .end local v6    # "used":Z
    .local v20, "used":Z
    iget-object v6, v15, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 1838
    invoke-virtual {v6, v2}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v6

    .line 1839
    .local v6, "sharedPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-eqz v6, :cond_2

    move-object/from16 v21, v2

    .end local v2    # "sharedPkgName":Ljava/lang/String;
    .local v21, "sharedPkgName":Ljava/lang/String;
    invoke-interface {v6}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1840
    invoke-interface {v6}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1841
    const/4 v0, 0x1

    .line 1842
    .end local v20    # "used":Z
    .local v0, "used":Z
    move v6, v0

    goto :goto_2

    .line 1839
    .end local v0    # "used":Z
    .end local v21    # "sharedPkgName":Ljava/lang/String;
    .restart local v2    # "sharedPkgName":Ljava/lang/String;
    .restart local v20    # "used":Z
    :cond_2
    move-object/from16 v21, v2

    .line 1836
    .end local v2    # "sharedPkgName":Ljava/lang/String;
    .end local v6    # "sharedPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :cond_3
    add-int/lit8 v0, v0, 0x1

    move/from16 v6, v20

    goto :goto_1

    .end local v20    # "used":Z
    .local v6, "used":Z
    :cond_4
    move/from16 v20, v6

    .line 1845
    :goto_2
    if-eqz v6, :cond_5

    .line 1846
    move-object/from16 v25, v9

    move-object/from16 v20, v10

    move/from16 v26, v11

    move-object/from16 v21, v12

    goto/16 :goto_5

    .line 1850
    .end local v6    # "used":Z
    :cond_5
    const/16 v0, 0x3e8

    .line 1851
    invoke-direct {v15, v12, v3, v0, v13}, Lcom/android/server/pm/permission/PermissionManagerService;->getPermissionFlagsInternal(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v0

    .line 1856
    .local v0, "oldFlags":I
    iget-object v2, v15, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const/4 v6, 0x0

    invoke-virtual {v2, v12, v6, v13}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;II)I

    move-result v2

    .line 1857
    .local v2, "uid":I
    iget-object v6, v15, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v6, v2}, Landroid/content/pm/PackageManagerInternal;->getUidTargetSdkVersion(I)I

    move-result v7

    .line 1858
    .local v7, "targetSdk":I
    const/16 v6, 0x17

    if-ge v7, v6, :cond_6

    if-eqz v18, :cond_6

    .line 1859
    const/16 v6, 0x48

    move/from16 v19, v6

    goto :goto_3

    .line 1860
    :cond_6
    const/16 v19, 0x0

    :goto_3
    nop

    .line 1862
    .local v19, "flags":I
    const v20, 0x9004b

    const/16 v21, 0x3e8

    const/16 v22, 0x0

    move-object/from16 v6, p0

    move/from16 v23, v7

    .end local v7    # "targetSdk":I
    .local v23, "targetSdk":I
    move-object v7, v12

    move-object/from16 v24, v8

    .end local v8    # "pkgNames":[Ljava/lang/String;
    .local v24, "pkgNames":[Ljava/lang/String;
    move-object v8, v3

    move-object/from16 v25, v9

    .end local v9    # "revokedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    .local v25, "revokedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    move/from16 v9, v20

    move-object/from16 v20, v10

    .end local v10    # "permissionRemoved":[Z
    .local v20, "permissionRemoved":[Z
    move/from16 v10, v19

    move/from16 v26, v11

    .end local v11    # "permissionCount":I
    .local v26, "permissionCount":I
    move/from16 v11, v21

    move-object/from16 v21, v12

    .end local v12    # "packageName":Ljava/lang/String;
    .local v21, "packageName":Ljava/lang/String;
    move/from16 v12, p2

    move/from16 v13, v22

    invoke-direct/range {v6 .. v14}, Lcom/android/server/pm/permission/PermissionManagerService;->updatePermissionFlagsInternal(Ljava/lang/String;Ljava/lang/String;IIIIZLcom/android/server/pm/permission/PermissionManagerService$PermissionCallback;)V

    .line 1867
    if-nez v18, :cond_7

    .line 1868
    goto :goto_5

    .line 1872
    :cond_7
    and-int/lit8 v6, v0, 0x14

    if-eqz v6, :cond_8

    .line 1873
    goto :goto_5

    .line 1877
    :cond_8
    and-int/lit8 v6, v0, 0x20

    if-nez v6, :cond_c

    const v6, 0x8000

    and-int/2addr v6, v0

    if-eqz v6, :cond_9

    move/from16 v22, v23

    goto :goto_4

    .line 1886
    :cond_9
    and-int/lit8 v6, v19, 0x40

    if-nez v6, :cond_b

    .line 1887
    move/from16 v13, v23

    .end local v23    # "targetSdk":I
    .local v13, "targetSdk":I
    invoke-direct {v15, v3, v13}, Lcom/android/server/pm/permission/PermissionManagerService;->isPermissionSplitFromNonRuntime(Ljava/lang/String;I)Z

    move-result v6

    if-nez v6, :cond_a

    .line 1889
    const/4 v9, 0x0

    const/16 v10, 0x3e8

    const/4 v12, 0x0

    move-object/from16 v6, p0

    move-object/from16 v7, v21

    move-object v8, v3

    move/from16 v11, p2

    move/from16 v22, v13

    .end local v13    # "targetSdk":I
    .local v22, "targetSdk":I
    move-object v13, v14

    invoke-direct/range {v6 .. v13}, Lcom/android/server/pm/permission/PermissionManagerService;->revokeRuntimePermissionInternal(Ljava/lang/String;Ljava/lang/String;ZIILjava/lang/String;Lcom/android/server/pm/permission/PermissionManagerService$PermissionCallback;)V

    goto :goto_5

    .line 1887
    .end local v22    # "targetSdk":I
    .restart local v13    # "targetSdk":I
    :cond_a
    move/from16 v22, v13

    .end local v13    # "targetSdk":I
    .restart local v22    # "targetSdk":I
    goto :goto_5

    .line 1886
    .end local v22    # "targetSdk":I
    .restart local v23    # "targetSdk":I
    :cond_b
    move/from16 v22, v23

    .end local v23    # "targetSdk":I
    .restart local v22    # "targetSdk":I
    goto :goto_5

    .line 1877
    .end local v22    # "targetSdk":I
    .restart local v23    # "targetSdk":I
    :cond_c
    move/from16 v22, v23

    .line 1880
    .end local v23    # "targetSdk":I
    .restart local v22    # "targetSdk":I
    :goto_4
    const/4 v9, 0x0

    const/16 v10, 0x3e8

    move-object/from16 v6, p0

    move-object/from16 v7, v21

    move-object v8, v3

    move/from16 v11, p2

    move-object v12, v14

    invoke-direct/range {v6 .. v12}, Lcom/android/server/pm/permission/PermissionManagerService;->grantRuntimePermissionInternal(Ljava/lang/String;Ljava/lang/String;ZIILcom/android/server/pm/permission/PermissionManagerService$PermissionCallback;)V

    .line 1815
    .end local v0    # "oldFlags":I
    .end local v2    # "uid":I
    .end local v3    # "permName":Ljava/lang/String;
    .end local v18    # "isRuntimePermission":Z
    .end local v19    # "flags":I
    .end local v22    # "targetSdk":I
    .end local v24    # "pkgNames":[Ljava/lang/String;
    :goto_5
    add-int/lit8 v1, v1, 0x1

    move/from16 v13, p2

    move-object/from16 v10, v20

    move-object/from16 v12, v21

    move-object/from16 v9, v25

    move/from16 v11, v26

    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1829
    .end local v20    # "permissionRemoved":[Z
    .end local v21    # "packageName":Ljava/lang/String;
    .end local v25    # "revokedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    .end local v26    # "permissionCount":I
    .restart local v3    # "permName":Ljava/lang/String;
    .restart local v9    # "revokedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    .restart local v10    # "permissionRemoved":[Z
    .restart local v11    # "permissionCount":I
    .restart local v12    # "packageName":Ljava/lang/String;
    :catchall_1
    move-exception v0

    move-object/from16 v25, v9

    move-object/from16 v20, v10

    move/from16 v26, v11

    move-object/from16 v21, v12

    .end local v9    # "revokedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    .end local v10    # "permissionRemoved":[Z
    .end local v11    # "permissionCount":I
    .end local v12    # "packageName":Ljava/lang/String;
    .restart local v20    # "permissionRemoved":[Z
    .restart local v21    # "packageName":Ljava/lang/String;
    .restart local v25    # "revokedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    .restart local v26    # "permissionCount":I
    :goto_6
    :try_start_5
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0

    :catchall_2
    move-exception v0

    goto :goto_6

    .line 1815
    .end local v3    # "permName":Ljava/lang/String;
    .end local v20    # "permissionRemoved":[Z
    .end local v21    # "packageName":Ljava/lang/String;
    .end local v25    # "revokedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    .end local v26    # "permissionCount":I
    .restart local v9    # "revokedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    .restart local v10    # "permissionRemoved":[Z
    .restart local v11    # "permissionCount":I
    .restart local v12    # "packageName":Ljava/lang/String;
    :cond_d
    move-object/from16 v25, v9

    move-object/from16 v20, v10

    move/from16 v26, v11

    move-object/from16 v21, v12

    .line 1895
    .end local v1    # "i":I
    .end local v9    # "revokedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    .end local v10    # "permissionRemoved":[Z
    .end local v11    # "permissionCount":I
    .end local v12    # "packageName":Ljava/lang/String;
    .restart local v20    # "permissionRemoved":[Z
    .restart local v21    # "packageName":Ljava/lang/String;
    .restart local v25    # "revokedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    .restart local v26    # "permissionCount":I
    const/4 v0, 0x0

    aget-boolean v1, v20, v0

    if-eqz v1, :cond_e

    .line 1896
    iget-object v0, v15, Lcom/android/server/pm/permission/PermissionManagerService;->mDefaultPermissionCallback:Lcom/android/server/pm/permission/PermissionManagerService$PermissionCallback;

    invoke-virtual {v0}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCallback;->onPermissionRemoved()V

    .line 1901
    :cond_e
    invoke-virtual/range {v25 .. v25}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    .line 1902
    invoke-virtual/range {v25 .. v25}, Landroid/util/ArraySet;->size()I

    move-result v0

    .line 1903
    .local v0, "numRevokedPermissions":I
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_7
    if-ge v1, v0, :cond_f

    .line 1904
    move-object/from16 v2, v25

    .end local v25    # "revokedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    .local v2, "revokedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/android/internal/util/IntPair;->first(J)I

    move-result v3

    .line 1905
    .local v3, "revocationUID":I
    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/android/internal/util/IntPair;->second(J)I

    move-result v6

    .line 1907
    .local v6, "revocationUserId":I
    iget-object v7, v15, Lcom/android/server/pm/permission/PermissionManagerService;->mOnPermissionChangeListeners:Lcom/android/server/pm/permission/PermissionManagerService$OnPermissionChangeListeners;

    invoke-virtual {v7, v3}, Lcom/android/server/pm/permission/PermissionManagerService$OnPermissionChangeListeners;->onPermissionsChanged(I)V

    .line 1910
    iget-object v7, v15, Lcom/android/server/pm/permission/PermissionManagerService;->mHandler:Landroid/os/Handler;

    new-instance v8, Lcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda4;

    invoke-direct {v8, v3, v6}, Lcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda4;-><init>(II)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1903
    .end local v3    # "revocationUID":I
    .end local v6    # "revocationUserId":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .end local v2    # "revokedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    .restart local v25    # "revokedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    :cond_f
    move-object/from16 v2, v25

    .end local v25    # "revokedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    .restart local v2    # "revokedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    goto :goto_8

    .line 1901
    .end local v0    # "numRevokedPermissions":I
    .end local v1    # "i":I
    .end local v2    # "revokedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    .restart local v25    # "revokedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    :cond_10
    move-object/from16 v2, v25

    .line 1915
    .end local v25    # "revokedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    .restart local v2    # "revokedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    :goto_8
    iget-object v0, v15, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v4}, Landroid/util/IntArray;->toArray()[I

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/content/pm/PackageManagerInternal;->writePermissionSettings([IZ)V

    .line 1916
    iget-object v0, v15, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v5}, Landroid/util/IntArray;->toArray()[I

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Landroid/content/pm/PackageManagerInternal;->writePermissionSettings([IZ)V

    .line 1917
    return-void
.end method

.method private restoreDelayedRuntimePermissions(Ljava/lang/String;I)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 2091
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2092
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mHasNoDelayedPermBackup:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2093
    monitor-exit v0

    return-void

    .line 2095
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2096
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionControllerManager:Landroid/permission/PermissionControllerManager;

    .line 2097
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Lcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda8;

    invoke-direct {v3, p0, p2}, Lcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/pm/permission/PermissionManagerService;I)V

    .line 2096
    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/permission/PermissionControllerManager;->applyStagedRuntimePermissionBackup(Ljava/lang/String;Landroid/os/UserHandle;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 2105
    return-void

    .line 2095
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private restorePermissionState(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ZLjava/lang/String;Lcom/android/server/pm/permission/PermissionManagerService$PermissionCallback;I)V
    .locals 42
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "replace"    # Z
    .param p3, "packageOfInterest"    # Ljava/lang/String;
    .param p4, "callback"    # Lcom/android/server/pm/permission/PermissionManagerService$PermissionCallback;
    .param p5, "filterUserId"    # I

    .line 2589
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move/from16 v13, p5

    iget-object v0, v8, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 2590
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 2589
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManagerInternal;->getPackageSetting(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v14

    .line 2591
    .local v14, "ps":Lcom/android/server/pm/PackageSetting;
    if-nez v14, :cond_0

    .line 2592
    return-void

    .line 2595
    :cond_0
    const/4 v0, -0x1

    const/4 v15, 0x0

    const/4 v6, 0x1

    if-ne v13, v0, :cond_1

    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/permission/PermissionManagerService;->getAllUserIds()[I

    move-result-object v0

    goto :goto_0

    .line 2596
    :cond_1
    new-array v0, v6, [I

    aput v13, v0, v15

    :goto_0
    move-object v5, v0

    .line 2598
    .local v5, "userIds":[I
    const/4 v1, 0x0

    .line 2599
    .local v1, "runtimePermissionsRevoked":Z
    sget-object v2, Lcom/android/server/pm/permission/PermissionManagerService;->EMPTY_INT_ARRAY:[I

    .line 2601
    .local v2, "updatedUserIds":[I
    const/4 v0, 0x0

    .line 2602
    .local v0, "isPrivilegedPermissionAllowlisted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 2603
    .local v3, "shouldGrantSignaturePermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 2604
    .local v4, "shouldGrantInternalPermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    new-instance v7, Landroid/util/ArraySet;

    invoke-direct {v7}, Landroid/util/ArraySet;-><init>()V

    .line 2605
    .local v7, "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v15

    .line 2606
    .local v15, "requestedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v6

    .line 2607
    .local v6, "requestedPermissionsSize":I
    const/16 v17, 0x0

    move-object v13, v4

    move-object v4, v0

    move/from16 v41, v17

    move/from16 v17, v1

    move/from16 v1, v41

    .end local v0    # "isPrivilegedPermissionAllowlisted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v1, "i":I
    .local v4, "isPrivilegedPermissionAllowlisted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v13, "shouldGrantInternalPermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v17, "runtimePermissionsRevoked":Z
    :goto_1
    if-ge v1, v6, :cond_a

    .line 2608
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v2

    .end local v2    # "updatedUserIds":[I
    .local v18, "updatedUserIds":[I
    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    .line 2611
    .local v2, "permissionName":Ljava/lang/String;
    iget-object v12, v8, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v12

    .line 2612
    :try_start_0
    iget-object v0, v8, Lcom/android/server/pm/permission/PermissionManagerService;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v0, v2}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v0

    .line 2613
    .local v0, "permission":Lcom/android/server/pm/permission/Permission;
    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2614
    if-nez v0, :cond_2

    .line 2615
    goto :goto_2

    .line 2617
    :cond_2
    invoke-virtual {v0}, Lcom/android/server/pm/permission/Permission;->isPrivileged()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 2618
    invoke-direct {v8, v9, v14, v0}, Lcom/android/server/pm/permission/PermissionManagerService;->checkPrivilegedPermissionAllowlist(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/permission/Permission;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 2619
    if-nez v4, :cond_3

    .line 2620
    new-instance v12, Landroid/util/ArraySet;

    invoke-direct {v12}, Landroid/util/ArraySet;-><init>()V

    move-object v4, v12

    .line 2622
    :cond_3
    invoke-virtual {v4, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2624
    :cond_4
    invoke-virtual {v0}, Lcom/android/server/pm/permission/Permission;->isSignature()Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-direct {v8, v9, v0}, Lcom/android/server/pm/permission/PermissionManagerService;->shouldGrantPermissionBySignature(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/permission/Permission;)Z

    move-result v12

    if-nez v12, :cond_5

    .line 2625
    invoke-direct {v8, v9, v14, v0, v7}, Lcom/android/server/pm/permission/PermissionManagerService;->shouldGrantPermissionByProtectionFlags(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/permission/Permission;Landroid/util/ArraySet;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 2627
    :cond_5
    if-nez v3, :cond_6

    .line 2628
    new-instance v12, Landroid/util/ArraySet;

    invoke-direct {v12}, Landroid/util/ArraySet;-><init>()V

    move-object v3, v12

    .line 2630
    :cond_6
    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2632
    :cond_7
    invoke-virtual {v0}, Lcom/android/server/pm/permission/Permission;->isInternal()Z

    move-result v12

    if-eqz v12, :cond_9

    .line 2633
    invoke-direct {v8, v9, v14, v0, v7}, Lcom/android/server/pm/permission/PermissionManagerService;->shouldGrantPermissionByProtectionFlags(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/permission/Permission;Landroid/util/ArraySet;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 2635
    if-nez v13, :cond_8

    .line 2636
    new-instance v12, Landroid/util/ArraySet;

    invoke-direct {v12}, Landroid/util/ArraySet;-><init>()V

    move-object v13, v12

    .line 2638
    :cond_8
    invoke-virtual {v13, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2607
    .end local v0    # "permission":Lcom/android/server/pm/permission/Permission;
    .end local v2    # "permissionName":Ljava/lang/String;
    :cond_9
    :goto_2
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v12, p4

    move-object/from16 v2, v18

    goto :goto_1

    .line 2613
    .restart local v2    # "permissionName":Ljava/lang/String;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 2607
    .end local v18    # "updatedUserIds":[I
    .local v2, "updatedUserIds":[I
    :cond_a
    move-object/from16 v18, v2

    .line 2642
    .end local v1    # "i":I
    .end local v2    # "updatedUserIds":[I
    .restart local v18    # "updatedUserIds":[I
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    move-object v12, v0

    .line 2643
    .local v12, "isPermissionPolicyInitialized":Landroid/util/SparseBooleanArray;
    iget-object v0, v8, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionPolicyInternal:Lcom/android/server/policy/PermissionPolicyInternal;

    if-eqz v0, :cond_c

    .line 2644
    array-length v0, v5

    const/4 v1, 0x0

    :goto_3
    if-ge v1, v0, :cond_c

    aget v2, v5, v1

    .line 2645
    .local v2, "userId":I
    move/from16 v19, v0

    iget-object v0, v8, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionPolicyInternal:Lcom/android/server/policy/PermissionPolicyInternal;

    invoke-virtual {v0, v2}, Lcom/android/server/policy/PermissionPolicyInternal;->isInitialized(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2646
    const/4 v0, 0x1

    invoke-virtual {v12, v2, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 2644
    .end local v2    # "userId":I
    :cond_b
    add-int/lit8 v1, v1, 0x1

    move/from16 v0, v19

    goto :goto_3

    .line 2651
    :cond_c
    iget-object v2, v8, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2652
    :try_start_2
    array-length v0, v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1f

    move-object/from16 v19, v2

    move-object/from16 v1, v18

    const/4 v2, 0x0

    .end local v18    # "updatedUserIds":[I
    .local v1, "updatedUserIds":[I
    :goto_4
    if-ge v2, v0, :cond_57

    :try_start_3
    aget v18, v5, v2

    move/from16 v20, v18

    .line 2653
    .local v20, "userId":I
    move/from16 v21, v0

    iget-object v0, v8, Lcom/android/server/pm/permission/PermissionManagerService;->mState:Lcom/android/server/pm/permission/DevicePermissionState;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1d

    move-object/from16 v22, v5

    move/from16 v5, v20

    .end local v20    # "userId":I
    .local v5, "userId":I
    .local v22, "userIds":[I
    :try_start_4
    invoke-virtual {v0, v5}, Lcom/android/server/pm/permission/DevicePermissionState;->getOrCreateUserState(I)Lcom/android/server/pm/permission/UserPermissionState;

    move-result-object v0

    .line 2654
    .local v0, "userState":Lcom/android/server/pm/permission/UserPermissionState;
    move/from16 v18, v2

    invoke-virtual {v14}, Lcom/android/server/pm/PackageSetting;->getAppId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/server/pm/permission/UserPermissionState;->getOrCreateUidState(I)Lcom/android/server/pm/permission/UidPermissionState;

    move-result-object v2

    .line 2656
    .local v2, "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    invoke-virtual {v2}, Lcom/android/server/pm/permission/UidPermissionState;->isMissing()Z

    move-result v20
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1c

    move-object/from16 v23, v12

    .end local v12    # "isPermissionPolicyInitialized":Landroid/util/SparseBooleanArray;
    .local v23, "isPermissionPolicyInitialized":Landroid/util/SparseBooleanArray;
    if-eqz v20, :cond_14

    .line 2659
    :try_start_5
    invoke-virtual {v14}, Lcom/android/server/pm/PackageSetting;->isSharedUser()Z

    move-result v20
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-nez v20, :cond_d

    .line 2660
    :try_start_6
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v20

    .line 2661
    .local v20, "uidRequestedPermissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v24
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-object/from16 v30, v3

    move-object/from16 v25, v7

    move-object/from16 v3, v20

    move/from16 v12, v24

    move-object/from16 v20, v13

    .local v24, "targetSdkVersion":I
    goto/16 :goto_6

    .line 3020
    .end local v0    # "userState":Lcom/android/server/pm/permission/UserPermissionState;
    .end local v2    # "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    .end local v5    # "userId":I
    .end local v20    # "uidRequestedPermissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .end local v24    # "targetSdkVersion":I
    :catchall_1
    move-exception v0

    move-object/from16 v2, p4

    move-object/from16 v20, v4

    move-object/from16 v25, v7

    move-object/from16 v33, v13

    move-object/from16 v27, v15

    move-object/from16 v13, v19

    move-object/from16 v11, v22

    move-object/from16 v36, v23

    move-object v7, v1

    move-object/from16 v19, v3

    move/from16 v23, v6

    move/from16 v1, v17

    goto/16 :goto_26

    .line 2663
    .restart local v0    # "userState":Lcom/android/server/pm/permission/UserPermissionState;
    .restart local v2    # "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    .restart local v5    # "userId":I
    :cond_d
    :try_start_7
    new-instance v20, Landroid/util/ArraySet;

    invoke-direct/range {v20 .. v20}, Landroid/util/ArraySet;-><init>()V

    move-object/from16 v24, v20

    .line 2664
    .local v24, "uidRequestedPermissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const/16 v20, 0x2710

    .line 2665
    .local v20, "targetSdkVersion":I
    invoke-virtual {v14}, Lcom/android/server/pm/PackageSetting;->getSharedUser()Lcom/android/server/pm/SharedUserSetting;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/android/server/pm/SharedUserSetting;->getPackages()Ljava/util/List;

    move-result-object v25

    move-object/from16 v26, v25

    .line 2666
    .local v26, "packages":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    move-result v25
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    move/from16 v27, v25

    .line 2667
    .local v27, "packagesSize":I
    const/16 v25, 0x0

    move/from16 v12, v20

    move-object/from16 v20, v13

    move/from16 v13, v25

    .local v12, "targetSdkVersion":I
    .local v13, "i":I
    .local v20, "shouldGrantInternalPermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :goto_5
    move-object/from16 v25, v7

    move/from16 v7, v27

    .end local v27    # "packagesSize":I
    .local v7, "packagesSize":I
    .local v25, "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-ge v13, v7, :cond_e

    .line 2668
    move/from16 v27, v7

    move-object/from16 v7, v26

    .end local v26    # "packages":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    .local v7, "packages":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    .restart local v27    # "packagesSize":I
    :try_start_8
    invoke-interface {v7, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 2669
    .local v26, "sharedUserPackage":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    nop

    .line 2670
    move-object/from16 v29, v7

    .end local v7    # "packages":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    .local v29, "packages":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    invoke-interface/range {v26 .. v26}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v7
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 2669
    move-object/from16 v30, v3

    move-object/from16 v3, v24

    .end local v24    # "uidRequestedPermissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .local v3, "uidRequestedPermissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .local v30, "shouldGrantSignaturePermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :try_start_9
    invoke-interface {v3, v7}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 2671
    nop

    .line 2672
    invoke-interface/range {v26 .. v26}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v7

    .line 2671
    invoke-static {v12, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    move v12, v7

    .line 2667
    .end local v26    # "sharedUserPackage":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v24, v3

    move-object/from16 v7, v25

    move-object/from16 v26, v29

    move-object/from16 v3, v30

    goto :goto_5

    .line 3020
    .end local v0    # "userState":Lcom/android/server/pm/permission/UserPermissionState;
    .end local v2    # "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    .end local v5    # "userId":I
    .end local v12    # "targetSdkVersion":I
    .end local v13    # "i":I
    .end local v27    # "packagesSize":I
    .end local v29    # "packages":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    .end local v30    # "shouldGrantSignaturePermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v3, "shouldGrantSignaturePermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :catchall_2
    move-exception v0

    move-object/from16 v2, p4

    move-object v7, v1

    move-object/from16 v27, v15

    move/from16 v1, v17

    move-object/from16 v13, v19

    move-object/from16 v33, v20

    move-object/from16 v11, v22

    move-object/from16 v36, v23

    move-object/from16 v19, v3

    move-object/from16 v20, v4

    move/from16 v23, v6

    .end local v3    # "shouldGrantSignaturePermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v30    # "shouldGrantSignaturePermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    goto/16 :goto_26

    .line 2667
    .end local v30    # "shouldGrantSignaturePermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v0    # "userState":Lcom/android/server/pm/permission/UserPermissionState;
    .restart local v2    # "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    .restart local v3    # "shouldGrantSignaturePermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v5    # "userId":I
    .local v7, "packagesSize":I
    .restart local v12    # "targetSdkVersion":I
    .restart local v13    # "i":I
    .restart local v24    # "uidRequestedPermissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .local v26, "packages":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    :cond_e
    move-object/from16 v30, v3

    move/from16 v27, v7

    move-object/from16 v3, v24

    move-object/from16 v29, v26

    .line 2676
    .end local v7    # "packagesSize":I
    .end local v13    # "i":I
    .end local v24    # "uidRequestedPermissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .end local v26    # "packages":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    .local v3, "uidRequestedPermissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .restart local v30    # "shouldGrantSignaturePermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :goto_6
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_7
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_13

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 2677
    .local v13, "permissionName":Ljava/lang/String;
    move-object/from16 v24, v3

    .end local v3    # "uidRequestedPermissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .restart local v24    # "uidRequestedPermissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    iget-object v3, v8, Lcom/android/server/pm/permission/PermissionManagerService;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v3, v13}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v3

    .line 2678
    .local v3, "permission":Lcom/android/server/pm/permission/Permission;
    if-nez v3, :cond_f

    .line 2679
    move-object/from16 v3, v24

    goto :goto_7

    .line 2681
    :cond_f
    move-object/from16 v26, v7

    invoke-virtual {v3}, Lcom/android/server/pm/permission/Permission;->getPackageName()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v27, v13

    .end local v13    # "permissionName":Ljava/lang/String;
    .local v27, "permissionName":Ljava/lang/String;
    const-string v13, "android"

    invoke-static {v7, v13}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    .line 2682
    invoke-virtual {v3}, Lcom/android/server/pm/permission/Permission;->isRuntime()Z

    move-result v7

    if-eqz v7, :cond_12

    invoke-virtual {v3}, Lcom/android/server/pm/permission/Permission;->isRemoved()Z

    move-result v7

    if-nez v7, :cond_12

    .line 2683
    invoke-virtual {v3}, Lcom/android/server/pm/permission/Permission;->isHardOrSoftRestricted()Z

    move-result v7

    if-nez v7, :cond_10

    .line 2684
    invoke-virtual {v3}, Lcom/android/server/pm/permission/Permission;->isImmutablyRestricted()Z

    move-result v7

    if-eqz v7, :cond_11

    .line 2685
    :cond_10
    const/16 v7, 0x2000

    invoke-virtual {v2, v3, v7, v7}, Lcom/android/server/pm/permission/UidPermissionState;->updatePermissionFlags(Lcom/android/server/pm/permission/Permission;II)Z

    .line 2689
    :cond_11
    const/16 v7, 0x17

    if-ge v12, v7, :cond_12

    .line 2690
    const/16 v7, 0x48

    invoke-virtual {v2, v3, v7, v7}, Lcom/android/server/pm/permission/UidPermissionState;->updatePermissionFlags(Lcom/android/server/pm/permission/Permission;II)Z

    .line 2695
    invoke-virtual {v2, v3}, Lcom/android/server/pm/permission/UidPermissionState;->grantPermission(Lcom/android/server/pm/permission/Permission;)Z

    .line 2698
    .end local v3    # "permission":Lcom/android/server/pm/permission/Permission;
    .end local v27    # "permissionName":Ljava/lang/String;
    :cond_12
    move-object/from16 v3, v24

    move-object/from16 v7, v26

    goto :goto_7

    .line 2700
    .end local v24    # "uidRequestedPermissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .local v3, "uidRequestedPermissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    :cond_13
    move-object/from16 v24, v3

    .end local v3    # "uidRequestedPermissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .restart local v24    # "uidRequestedPermissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/pm/permission/UidPermissionState;->setMissing(Z)V

    .line 2701
    invoke-static {v1, v5}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v3

    move-object v1, v3

    goto :goto_8

    .line 3020
    .end local v0    # "userState":Lcom/android/server/pm/permission/UserPermissionState;
    .end local v2    # "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    .end local v5    # "userId":I
    .end local v12    # "targetSdkVersion":I
    .end local v20    # "shouldGrantInternalPermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v24    # "uidRequestedPermissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .end local v25    # "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v30    # "shouldGrantSignaturePermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v3, "shouldGrantSignaturePermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v7, "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v13, "shouldGrantInternalPermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :catchall_3
    move-exception v0

    move-object/from16 v2, p4

    move-object/from16 v20, v4

    move-object/from16 v25, v7

    move-object/from16 v33, v13

    move-object/from16 v27, v15

    move-object/from16 v13, v19

    move-object/from16 v11, v22

    move-object/from16 v36, v23

    move-object v7, v1

    move-object/from16 v19, v3

    move/from16 v23, v6

    move/from16 v1, v17

    .end local v3    # "shouldGrantSignaturePermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v7    # "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v13    # "shouldGrantInternalPermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v20    # "shouldGrantInternalPermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v25    # "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v30    # "shouldGrantSignaturePermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    goto/16 :goto_26

    .line 2656
    .end local v20    # "shouldGrantInternalPermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v25    # "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v30    # "shouldGrantSignaturePermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v0    # "userState":Lcom/android/server/pm/permission/UserPermissionState;
    .restart local v2    # "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    .restart local v3    # "shouldGrantSignaturePermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v5    # "userId":I
    .restart local v7    # "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v13    # "shouldGrantInternalPermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_14
    move-object/from16 v30, v3

    move-object/from16 v25, v7

    move-object/from16 v20, v13

    .line 2704
    .end local v3    # "shouldGrantSignaturePermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v7    # "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v13    # "shouldGrantInternalPermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v20    # "shouldGrantInternalPermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v25    # "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v30    # "shouldGrantSignaturePermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :goto_8
    move-object v3, v2

    .line 2706
    .local v3, "origState":Lcom/android/server/pm/permission/UidPermissionState;
    const/4 v7, 0x0

    .line 2708
    .local v7, "changedInstallPermission":Z
    if-eqz v10, :cond_16

    .line 2709
    iget-object v12, v14, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    const/4 v13, 0x0

    invoke-virtual {v0, v12, v13}, Lcom/android/server/pm/permission/UserPermissionState;->setInstallPermissionsFixed(Ljava/lang/String;Z)V

    .line 2710
    invoke-virtual {v14}, Lcom/android/server/pm/PackageSetting;->isSharedUser()Z

    move-result v12

    if-nez v12, :cond_15

    .line 2711
    new-instance v12, Lcom/android/server/pm/permission/UidPermissionState;

    invoke-direct {v12, v2}, Lcom/android/server/pm/permission/UidPermissionState;-><init>(Lcom/android/server/pm/permission/UidPermissionState;)V

    move-object v3, v12

    .line 2712
    invoke-virtual {v2}, Lcom/android/server/pm/permission/UidPermissionState;->reset()V

    move-object v12, v3

    goto :goto_9

    .line 2719
    :cond_15
    nop

    .line 2720
    invoke-virtual {v14}, Lcom/android/server/pm/PackageSetting;->getSharedUser()Lcom/android/server/pm/SharedUserSetting;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/server/pm/SharedUserSetting;->getPackages()Ljava/util/List;

    move-result-object v12

    .line 2719
    invoke-direct {v8, v12, v2}, Lcom/android/server/pm/permission/PermissionManagerService;->revokeUnusedSharedUserPermissionsLocked(Ljava/util/List;Lcom/android/server/pm/permission/UidPermissionState;)Z

    move-result v12

    if-eqz v12, :cond_17

    .line 2721
    invoke-static {v1, v5}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v12
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    move-object v1, v12

    .line 2722
    const/4 v12, 0x1

    move/from16 v17, v12

    move-object v12, v3

    .end local v17    # "runtimePermissionsRevoked":Z
    .local v12, "runtimePermissionsRevoked":Z
    goto :goto_9

    .line 3020
    .end local v0    # "userState":Lcom/android/server/pm/permission/UserPermissionState;
    .end local v2    # "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    .end local v3    # "origState":Lcom/android/server/pm/permission/UidPermissionState;
    .end local v5    # "userId":I
    .end local v7    # "changedInstallPermission":Z
    .end local v12    # "runtimePermissionsRevoked":Z
    .restart local v17    # "runtimePermissionsRevoked":Z
    :catchall_4
    move-exception v0

    move-object/from16 v2, p4

    move-object v7, v1

    move-object/from16 v27, v15

    move/from16 v1, v17

    move-object/from16 v13, v19

    move-object/from16 v33, v20

    move-object/from16 v11, v22

    move-object/from16 v36, v23

    move-object/from16 v19, v30

    move-object/from16 v20, v4

    move/from16 v23, v6

    goto/16 :goto_26

    .line 2708
    .restart local v0    # "userState":Lcom/android/server/pm/permission/UserPermissionState;
    .restart local v2    # "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    .restart local v3    # "origState":Lcom/android/server/pm/permission/UidPermissionState;
    .restart local v5    # "userId":I
    .restart local v7    # "changedInstallPermission":Z
    :cond_16
    const/4 v13, 0x0

    .line 2727
    :cond_17
    move-object v12, v3

    .end local v3    # "origState":Lcom/android/server/pm/permission/UidPermissionState;
    .local v12, "origState":Lcom/android/server/pm/permission/UidPermissionState;
    :goto_9
    :try_start_a
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 2728
    .local v3, "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1b

    move-object/from16 v24, v1

    .end local v1    # "updatedUserIds":[I
    .local v24, "updatedUserIds":[I
    :try_start_b
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUid()I

    move-result v1

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1a

    move-object v13, v1

    .line 2730
    .local v13, "friendlyName":Ljava/lang/String;
    const/4 v1, 0x0

    move-object/from16 v41, v24

    move/from16 v24, v7

    move-object/from16 v7, v41

    .local v1, "i":I
    .local v7, "updatedUserIds":[I
    .local v24, "changedInstallPermission":Z
    :goto_a
    if-ge v1, v6, :cond_52

    .line 2731
    :try_start_c
    invoke-interface {v15, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_16

    move-object/from16 v27, v26

    .line 2733
    .local v27, "permName":Ljava/lang/String;
    move/from16 v26, v6

    .end local v6    # "requestedPermissionsSize":I
    .local v26, "requestedPermissionsSize":I
    :try_start_d
    iget-object v6, v8, Lcom/android/server/pm/permission/PermissionManagerService;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    move-object/from16 v29, v13

    move-object/from16 v13, v27

    .end local v27    # "permName":Ljava/lang/String;
    .local v13, "permName":Ljava/lang/String;
    .local v29, "friendlyName":Ljava/lang/String;
    invoke-virtual {v6, v13}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v6
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_15

    .line 2734
    .local v6, "bp":Lcom/android/server/pm/permission/Permission;
    nop

    .line 2735
    move-object/from16 v27, v15

    .end local v15    # "requestedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v27, "requestedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_e
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v15
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_14

    const/16 v10, 0x17

    if-lt v15, v10, :cond_18

    const/4 v15, 0x1

    goto :goto_b

    :cond_18
    const/4 v15, 0x0

    .line 2736
    .local v15, "appSupportsRuntimePermissions":Z
    :goto_b
    const/16 v28, 0x0

    .line 2746
    .local v28, "legacyActivityRecognitionPermission":Ljava/lang/String;
    if-nez v6, :cond_1a

    .line 2747
    if-eqz v11, :cond_19

    .line 2748
    :try_start_f
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v10

    .line 2747
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    goto :goto_c

    .line 3020
    .end local v0    # "userState":Lcom/android/server/pm/permission/UserPermissionState;
    .end local v1    # "i":I
    .end local v2    # "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    .end local v3    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v5    # "userId":I
    .end local v6    # "bp":Lcom/android/server/pm/permission/Permission;
    .end local v12    # "origState":Lcom/android/server/pm/permission/UidPermissionState;
    .end local v13    # "permName":Ljava/lang/String;
    .end local v15    # "appSupportsRuntimePermissions":Z
    .end local v24    # "changedInstallPermission":Z
    .end local v28    # "legacyActivityRecognitionPermission":Ljava/lang/String;
    .end local v29    # "friendlyName":Ljava/lang/String;
    :catchall_5
    move-exception v0

    move/from16 v10, p2

    move-object/from16 v2, p4

    move/from16 v1, v17

    move-object/from16 v13, v19

    move-object/from16 v33, v20

    move-object/from16 v11, v22

    move-object/from16 v36, v23

    move/from16 v23, v26

    move-object/from16 v19, v30

    move-object/from16 v20, v4

    goto/16 :goto_26

    .line 2747
    .restart local v0    # "userState":Lcom/android/server/pm/permission/UserPermissionState;
    .restart local v1    # "i":I
    .restart local v2    # "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    .restart local v3    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v5    # "userId":I
    .restart local v6    # "bp":Lcom/android/server/pm/permission/Permission;
    .restart local v12    # "origState":Lcom/android/server/pm/permission/UidPermissionState;
    .restart local v13    # "permName":Ljava/lang/String;
    .restart local v15    # "appSupportsRuntimePermissions":Z
    .restart local v24    # "changedInstallPermission":Z
    .restart local v28    # "legacyActivityRecognitionPermission":Ljava/lang/String;
    .restart local v29    # "friendlyName":Ljava/lang/String;
    :cond_19
    :goto_c
    move/from16 v31, v1

    move-object/from16 v39, v4

    move-object/from16 v33, v20

    move-object/from16 v36, v23

    move-object/from16 v38, v25

    move-object/from16 v40, v30

    move-object/from16 v30, v3

    goto/16 :goto_1f

    .line 2759
    :cond_1a
    :try_start_10
    invoke-virtual {v12, v13}, Lcom/android/server/pm/permission/UidPermissionState;->hasPermissionState(Ljava/lang/String;)Z

    move-result v10
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_14

    if-nez v10, :cond_21

    .line 2760
    :try_start_11
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getImplicitPermissions()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1c

    const-string v10, "android.permission.ACTIVITY_RECOGNITION"

    .line 2761
    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1b

    goto :goto_d

    :cond_1b
    move/from16 v31, v1

    goto :goto_f

    .line 2762
    :cond_1c
    :goto_d
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getImplicitPermissions()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1d

    .line 2764
    invoke-virtual {v3, v13}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move/from16 v31, v1

    goto :goto_f

    .line 2780
    :cond_1d
    nop

    .line 2781
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/permission/PermissionManagerService;->getSplitPermissionInfos()Ljava/util/List;

    move-result-object v10

    .line 2782
    .local v10, "permissionList":Ljava/util/List;, "Ljava/util/List<Landroid/permission/PermissionManager$SplitPermissionInfo;>;"
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v31

    move/from16 v32, v31

    .line 2783
    .local v32, "numSplitPerms":I
    const/16 v31, 0x0

    move/from16 v11, v31

    .local v11, "splitPermNum":I
    :goto_e
    move/from16 v31, v1

    move/from16 v1, v32

    .end local v32    # "numSplitPerms":I
    .local v1, "numSplitPerms":I
    .local v31, "i":I
    if-ge v11, v1, :cond_20

    .line 2785
    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Landroid/permission/PermissionManager$SplitPermissionInfo;

    .line 2787
    .local v32, "sp":Landroid/permission/PermissionManager$SplitPermissionInfo;
    invoke-virtual/range {v32 .. v32}, Landroid/permission/PermissionManager$SplitPermissionInfo;->getSplitPermission()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v34, v33

    .line 2788
    .local v34, "splitPermName":Ljava/lang/String;
    move/from16 v33, v1

    .end local v1    # "numSplitPerms":I
    .local v33, "numSplitPerms":I
    invoke-virtual/range {v32 .. v32}, Landroid/permission/PermissionManager$SplitPermissionInfo;->getNewPermissions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 2789
    move-object/from16 v1, v34

    .end local v34    # "splitPermName":Ljava/lang/String;
    .local v1, "splitPermName":Ljava/lang/String;
    invoke-virtual {v12, v1}, Lcom/android/server/pm/permission/UidPermissionState;->isPermissionGranted(Ljava/lang/String;)Z

    move-result v34

    if-eqz v34, :cond_1f

    .line 2790
    move-object/from16 v28, v1

    .line 2791
    invoke-virtual {v3, v13}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    .line 2797
    goto :goto_f

    .line 2788
    .end local v1    # "splitPermName":Ljava/lang/String;
    .restart local v34    # "splitPermName":Ljava/lang/String;
    :cond_1e
    move-object/from16 v1, v34

    .line 2784
    .end local v32    # "sp":Landroid/permission/PermissionManager$SplitPermissionInfo;
    .end local v34    # "splitPermName":Ljava/lang/String;
    :cond_1f
    add-int/lit8 v11, v11, 0x1

    move/from16 v1, v31

    move/from16 v32, v33

    goto :goto_e

    .line 2783
    .end local v33    # "numSplitPerms":I
    .local v1, "numSplitPerms":I
    :cond_20
    move/from16 v33, v1

    .end local v1    # "numSplitPerms":I
    .restart local v33    # "numSplitPerms":I
    goto :goto_f

    .line 2759
    .end local v10    # "permissionList":Ljava/util/List;, "Ljava/util/List<Landroid/permission/PermissionManager$SplitPermissionInfo;>;"
    .end local v11    # "splitPermNum":I
    .end local v31    # "i":I
    .end local v33    # "numSplitPerms":I
    .local v1, "i":I
    :cond_21
    move/from16 v31, v1

    .line 2815
    .end local v1    # "i":I
    .restart local v31    # "i":I
    :goto_f
    :try_start_12
    invoke-virtual {v6}, Lcom/android/server/pm/permission/Permission;->isRuntimeOnly()Z

    move-result v1

    if-eqz v1, :cond_22

    if-nez v15, :cond_22

    .line 2820
    move-object/from16 v39, v4

    move-object/from16 v33, v20

    move-object/from16 v36, v23

    move-object/from16 v38, v25

    move-object/from16 v40, v30

    move-object/from16 v30, v3

    goto/16 :goto_1f

    .line 2823
    :cond_22
    invoke-virtual {v6}, Lcom/android/server/pm/permission/Permission;->getName()Ljava/lang/String;

    move-result-object v1

    .line 2826
    .local v1, "perm":Ljava/lang/String;
    invoke-virtual {v6}, Lcom/android/server/pm/permission/Permission;->isAppOp()Z

    move-result v10
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_14

    if-eqz v10, :cond_23

    .line 2827
    :try_start_13
    iget-object v10, v8, Lcom/android/server/pm/permission/PermissionManagerService;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v1, v11}, Lcom/android/server/pm/permission/PermissionRegistry;->addAppOpPermissionPackage(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_5

    .line 2830
    :cond_23
    const/4 v10, 0x1

    .line 2831
    .local v10, "shouldGrantNormalPermission":Z
    :try_start_14
    invoke-virtual {v6}, Lcom/android/server/pm/permission/Permission;->isNormal()Z

    move-result v11
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_14

    if-eqz v11, :cond_24

    :try_start_15
    invoke-virtual {v12, v1}, Lcom/android/server/pm/permission/UidPermissionState;->isPermissionGranted(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_24

    .line 2835
    invoke-virtual {v14}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v11

    if-nez v11, :cond_24

    iget-object v11, v14, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v0, v11}, Lcom/android/server/pm/permission/UserPermissionState;->areInstallPermissionsFixed(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_24

    .line 2839
    invoke-static {v1, v9}, Lcom/android/server/pm/permission/PermissionManagerService;->isNewPlatformPermissionForPackage(Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v11
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_5

    if-nez v11, :cond_24

    .line 2840
    const/4 v10, 0x0

    .line 2850
    :cond_24
    :try_start_16
    invoke-virtual {v6}, Lcom/android/server/pm/permission/Permission;->isNormal()Z

    move-result v11

    if-eqz v11, :cond_26

    if-nez v10, :cond_25

    goto :goto_10

    :cond_25
    move-object/from16 v11, v30

    move-object/from16 v30, v3

    move-object/from16 v3, v25

    move/from16 v25, v10

    move-object/from16 v10, v20

    goto/16 :goto_15

    .line 2851
    :cond_26
    :goto_10
    invoke-virtual {v6}, Lcom/android/server/pm/permission/Permission;->isSignature()Z

    move-result v11
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_14

    if-eqz v11, :cond_2d

    .line 2852
    :try_start_17
    invoke-virtual {v6}, Lcom/android/server/pm/permission/Permission;->isPrivileged()Z

    move-result v11
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_7

    if-eqz v11, :cond_28

    :try_start_18
    invoke-static {v4, v13}, Lcom/android/internal/util/CollectionUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v11
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_5

    if-eqz v11, :cond_27

    goto :goto_11

    :cond_27
    move-object/from16 v11, v30

    move-object/from16 v30, v3

    move-object/from16 v3, v25

    goto/16 :goto_13

    .line 2854
    :cond_28
    :goto_11
    move-object/from16 v11, v30

    .end local v30    # "shouldGrantSignaturePermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v11, "shouldGrantSignaturePermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :try_start_19
    invoke-static {v11, v13}, Lcom/android/internal/util/CollectionUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v30

    if-nez v30, :cond_2c

    .line 2856
    invoke-virtual {v6}, Lcom/android/server/pm/permission/Permission;->isPrivileged()Z

    move-result v30
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_6

    if-eqz v30, :cond_29

    move-object/from16 v30, v3

    move-object/from16 v3, v25

    .end local v25    # "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v3, "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v30, "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :try_start_1a
    invoke-static {v3, v13}, Lcom/android/internal/util/CollectionUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_2a

    goto :goto_12

    .end local v30    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v3, "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v25    # "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_29
    move-object/from16 v30, v3

    move-object/from16 v3, v25

    .line 2858
    .end local v25    # "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v3, "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v30    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :goto_12
    invoke-virtual {v6}, Lcom/android/server/pm/permission/Permission;->isDevelopment()Z

    move-result v25

    if-nez v25, :cond_2a

    invoke-virtual {v6}, Lcom/android/server/pm/permission/Permission;->isRole()Z

    move-result v25

    if-eqz v25, :cond_2e

    .line 2859
    :cond_2a
    invoke-virtual {v12, v13}, Lcom/android/server/pm/permission/UidPermissionState;->isPermissionGranted(Ljava/lang/String;)Z

    move-result v25
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_8

    if-nez v25, :cond_2b

    goto :goto_13

    :cond_2b
    move/from16 v25, v10

    move-object/from16 v10, v20

    goto/16 :goto_15

    .line 2854
    .end local v30    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v3, "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v25    # "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_2c
    move-object/from16 v30, v3

    move-object/from16 v3, v25

    .end local v25    # "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v3, "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v30    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    move/from16 v25, v10

    move-object/from16 v10, v20

    goto/16 :goto_15

    .line 3020
    .end local v0    # "userState":Lcom/android/server/pm/permission/UserPermissionState;
    .end local v1    # "perm":Ljava/lang/String;
    .end local v2    # "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    .end local v3    # "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v5    # "userId":I
    .end local v6    # "bp":Lcom/android/server/pm/permission/Permission;
    .end local v10    # "shouldGrantNormalPermission":Z
    .end local v12    # "origState":Lcom/android/server/pm/permission/UidPermissionState;
    .end local v13    # "permName":Ljava/lang/String;
    .end local v15    # "appSupportsRuntimePermissions":Z
    .end local v24    # "changedInstallPermission":Z
    .end local v28    # "legacyActivityRecognitionPermission":Ljava/lang/String;
    .end local v29    # "friendlyName":Ljava/lang/String;
    .end local v30    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v31    # "i":I
    .restart local v25    # "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :catchall_6
    move-exception v0

    move/from16 v10, p2

    move-object/from16 v2, p4

    move/from16 v1, v17

    move-object/from16 v13, v19

    move-object/from16 v33, v20

    move-object/from16 v36, v23

    move/from16 v23, v26

    move-object/from16 v20, v4

    move-object/from16 v19, v11

    move-object/from16 v11, v22

    .end local v25    # "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v3    # "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    goto/16 :goto_26

    .end local v3    # "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v11    # "shouldGrantSignaturePermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v25    # "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v30, "shouldGrantSignaturePermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :catchall_7
    move-exception v0

    move/from16 v10, p2

    move-object/from16 v2, p4

    move/from16 v1, v17

    move-object/from16 v13, v19

    move-object/from16 v33, v20

    move-object/from16 v11, v22

    move-object/from16 v36, v23

    move/from16 v23, v26

    move-object/from16 v19, v30

    move-object/from16 v20, v4

    .end local v25    # "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v30    # "shouldGrantSignaturePermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v3    # "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v11    # "shouldGrantSignaturePermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    goto/16 :goto_26

    .line 2851
    .end local v11    # "shouldGrantSignaturePermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v0    # "userState":Lcom/android/server/pm/permission/UserPermissionState;
    .restart local v1    # "perm":Ljava/lang/String;
    .restart local v2    # "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    .local v3, "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v5    # "userId":I
    .restart local v6    # "bp":Lcom/android/server/pm/permission/Permission;
    .restart local v10    # "shouldGrantNormalPermission":Z
    .restart local v12    # "origState":Lcom/android/server/pm/permission/UidPermissionState;
    .restart local v13    # "permName":Ljava/lang/String;
    .restart local v15    # "appSupportsRuntimePermissions":Z
    .restart local v24    # "changedInstallPermission":Z
    .restart local v25    # "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v28    # "legacyActivityRecognitionPermission":Ljava/lang/String;
    .restart local v29    # "friendlyName":Ljava/lang/String;
    .restart local v30    # "shouldGrantSignaturePermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v31    # "i":I
    :cond_2d
    move-object/from16 v11, v30

    move-object/from16 v30, v3

    move-object/from16 v3, v25

    .line 2860
    .end local v25    # "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v3, "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v11    # "shouldGrantSignaturePermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v30, "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_2e
    :goto_13
    :try_start_1b
    invoke-virtual {v6}, Lcom/android/server/pm/permission/Permission;->isInternal()Z

    move-result v25
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_13

    if-eqz v25, :cond_35

    .line 2861
    :try_start_1c
    invoke-virtual {v6}, Lcom/android/server/pm/permission/Permission;->isPrivileged()Z

    move-result v25
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_a

    if-eqz v25, :cond_30

    :try_start_1d
    invoke-static {v4, v13}, Lcom/android/internal/util/CollectionUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v25
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_8

    if-eqz v25, :cond_2f

    goto :goto_14

    :cond_2f
    move/from16 v25, v10

    move-object/from16 v10, v20

    goto/16 :goto_16

    .line 3020
    .end local v0    # "userState":Lcom/android/server/pm/permission/UserPermissionState;
    .end local v1    # "perm":Ljava/lang/String;
    .end local v2    # "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    .end local v5    # "userId":I
    .end local v6    # "bp":Lcom/android/server/pm/permission/Permission;
    .end local v10    # "shouldGrantNormalPermission":Z
    .end local v12    # "origState":Lcom/android/server/pm/permission/UidPermissionState;
    .end local v13    # "permName":Ljava/lang/String;
    .end local v15    # "appSupportsRuntimePermissions":Z
    .end local v24    # "changedInstallPermission":Z
    .end local v28    # "legacyActivityRecognitionPermission":Ljava/lang/String;
    .end local v29    # "friendlyName":Ljava/lang/String;
    .end local v30    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v31    # "i":I
    :catchall_8
    move-exception v0

    move/from16 v10, p2

    move-object/from16 v2, p4

    move-object/from16 v25, v3

    move/from16 v1, v17

    move-object/from16 v13, v19

    move-object/from16 v33, v20

    move-object/from16 v36, v23

    move/from16 v23, v26

    move-object/from16 v20, v4

    move-object/from16 v19, v11

    move-object/from16 v11, v22

    goto/16 :goto_26

    .line 2863
    .restart local v0    # "userState":Lcom/android/server/pm/permission/UserPermissionState;
    .restart local v1    # "perm":Ljava/lang/String;
    .restart local v2    # "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    .restart local v5    # "userId":I
    .restart local v6    # "bp":Lcom/android/server/pm/permission/Permission;
    .restart local v10    # "shouldGrantNormalPermission":Z
    .restart local v12    # "origState":Lcom/android/server/pm/permission/UidPermissionState;
    .restart local v13    # "permName":Ljava/lang/String;
    .restart local v15    # "appSupportsRuntimePermissions":Z
    .restart local v24    # "changedInstallPermission":Z
    .restart local v28    # "legacyActivityRecognitionPermission":Ljava/lang/String;
    .restart local v29    # "friendlyName":Ljava/lang/String;
    .restart local v30    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v31    # "i":I
    :cond_30
    :goto_14
    move/from16 v25, v10

    move-object/from16 v10, v20

    .end local v20    # "shouldGrantInternalPermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v10, "shouldGrantInternalPermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v25, "shouldGrantNormalPermission":Z
    :try_start_1e
    invoke-static {v10, v13}, Lcom/android/internal/util/CollectionUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_33

    .line 2865
    invoke-virtual {v6}, Lcom/android/server/pm/permission/Permission;->isPrivileged()Z

    move-result v20

    if-eqz v20, :cond_31

    invoke-static {v3, v13}, Lcom/android/internal/util/CollectionUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_32

    .line 2867
    :cond_31
    invoke-virtual {v6}, Lcom/android/server/pm/permission/Permission;->isDevelopment()Z

    move-result v20

    if-nez v20, :cond_32

    invoke-virtual {v6}, Lcom/android/server/pm/permission/Permission;->isRole()Z

    move-result v20

    if-eqz v20, :cond_36

    .line 2868
    :cond_32
    invoke-virtual {v12, v13}, Lcom/android/server/pm/permission/UidPermissionState;->isPermissionGranted(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_36

    .line 2870
    :cond_33
    :goto_15
    invoke-virtual {v2, v6}, Lcom/android/server/pm/permission/UidPermissionState;->grantPermission(Lcom/android/server/pm/permission/Permission;)Z

    move-result v20
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_9

    if-eqz v20, :cond_34

    .line 2871
    const/16 v20, 0x1

    move-object/from16 v38, v3

    move-object/from16 v39, v4

    move-object/from16 v33, v10

    move-object/from16 v40, v11

    move/from16 v24, v20

    move-object/from16 v36, v23

    .end local v24    # "changedInstallPermission":Z
    .local v20, "changedInstallPermission":Z
    goto/16 :goto_1f

    .line 2870
    .end local v20    # "changedInstallPermission":Z
    .restart local v24    # "changedInstallPermission":Z
    :cond_34
    move-object/from16 v38, v3

    move-object/from16 v39, v4

    move-object/from16 v33, v10

    move-object/from16 v40, v11

    move-object/from16 v36, v23

    goto/16 :goto_1f

    .line 3020
    .end local v0    # "userState":Lcom/android/server/pm/permission/UserPermissionState;
    .end local v1    # "perm":Ljava/lang/String;
    .end local v2    # "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    .end local v5    # "userId":I
    .end local v6    # "bp":Lcom/android/server/pm/permission/Permission;
    .end local v12    # "origState":Lcom/android/server/pm/permission/UidPermissionState;
    .end local v13    # "permName":Ljava/lang/String;
    .end local v15    # "appSupportsRuntimePermissions":Z
    .end local v24    # "changedInstallPermission":Z
    .end local v25    # "shouldGrantNormalPermission":Z
    .end local v28    # "legacyActivityRecognitionPermission":Ljava/lang/String;
    .end local v29    # "friendlyName":Ljava/lang/String;
    .end local v30    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v31    # "i":I
    :catchall_9
    move-exception v0

    move-object/from16 v2, p4

    move-object/from16 v25, v3

    move-object/from16 v20, v4

    move-object/from16 v33, v10

    move/from16 v1, v17

    move-object/from16 v13, v19

    move-object/from16 v36, v23

    move/from16 v23, v26

    move/from16 v10, p2

    move-object/from16 v19, v11

    move-object/from16 v11, v22

    goto/16 :goto_26

    .end local v10    # "shouldGrantInternalPermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v20, "shouldGrantInternalPermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :catchall_a
    move-exception v0

    move/from16 v10, p2

    move-object/from16 v2, p4

    move-object/from16 v25, v3

    move/from16 v1, v17

    move-object/from16 v13, v19

    move-object/from16 v33, v20

    move-object/from16 v36, v23

    move/from16 v23, v26

    move-object/from16 v20, v4

    move-object/from16 v19, v11

    move-object/from16 v11, v22

    .end local v20    # "shouldGrantInternalPermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v10    # "shouldGrantInternalPermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    goto/16 :goto_26

    .line 2860
    .restart local v0    # "userState":Lcom/android/server/pm/permission/UserPermissionState;
    .restart local v1    # "perm":Ljava/lang/String;
    .restart local v2    # "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    .restart local v5    # "userId":I
    .restart local v6    # "bp":Lcom/android/server/pm/permission/Permission;
    .local v10, "shouldGrantNormalPermission":Z
    .restart local v12    # "origState":Lcom/android/server/pm/permission/UidPermissionState;
    .restart local v13    # "permName":Ljava/lang/String;
    .restart local v15    # "appSupportsRuntimePermissions":Z
    .restart local v20    # "shouldGrantInternalPermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v24    # "changedInstallPermission":Z
    .restart local v28    # "legacyActivityRecognitionPermission":Ljava/lang/String;
    .restart local v29    # "friendlyName":Ljava/lang/String;
    .restart local v30    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v31    # "i":I
    :cond_35
    move/from16 v25, v10

    move-object/from16 v10, v20

    .line 2873
    .end local v20    # "shouldGrantInternalPermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v10, "shouldGrantInternalPermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v25    # "shouldGrantNormalPermission":Z
    :cond_36
    :goto_16
    :try_start_1f
    invoke-virtual {v6}, Lcom/android/server/pm/permission/Permission;->isRuntime()Z

    move-result v20

    if-eqz v20, :cond_50

    .line 2874
    invoke-virtual {v6}, Lcom/android/server/pm/permission/Permission;->isHardRestricted()Z

    move-result v20

    .line 2875
    .local v20, "hardRestricted":Z
    invoke-virtual {v6}, Lcom/android/server/pm/permission/Permission;->isSoftRestricted()Z

    move-result v32
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_12

    .line 2880
    .local v32, "softRestricted":Z
    nop

    .line 2881
    move-object/from16 v33, v10

    move-object/from16 v10, v23

    .end local v23    # "isPermissionPolicyInitialized":Landroid/util/SparseBooleanArray;
    .local v10, "isPermissionPolicyInitialized":Landroid/util/SparseBooleanArray;
    .local v33, "shouldGrantInternalPermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :try_start_20
    invoke-virtual {v10, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v23

    .line 2883
    .local v23, "permissionPolicyInitialized":Z
    invoke-virtual {v12, v1}, Lcom/android/server/pm/permission/UidPermissionState;->getPermissionState(Ljava/lang/String;)Lcom/android/server/pm/permission/PermissionState;

    move-result-object v34
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_10

    .line 2884
    .local v34, "origPermState":Lcom/android/server/pm/permission/PermissionState;
    if-eqz v34, :cond_37

    :try_start_21
    invoke-virtual/range {v34 .. v34}, Lcom/android/server/pm/permission/PermissionState;->getFlags()I

    move-result v35
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_b

    goto :goto_17

    .line 3020
    .end local v0    # "userState":Lcom/android/server/pm/permission/UserPermissionState;
    .end local v1    # "perm":Ljava/lang/String;
    .end local v2    # "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    .end local v5    # "userId":I
    .end local v6    # "bp":Lcom/android/server/pm/permission/Permission;
    .end local v12    # "origState":Lcom/android/server/pm/permission/UidPermissionState;
    .end local v13    # "permName":Ljava/lang/String;
    .end local v15    # "appSupportsRuntimePermissions":Z
    .end local v20    # "hardRestricted":Z
    .end local v23    # "permissionPolicyInitialized":Z
    .end local v24    # "changedInstallPermission":Z
    .end local v25    # "shouldGrantNormalPermission":Z
    .end local v28    # "legacyActivityRecognitionPermission":Ljava/lang/String;
    .end local v29    # "friendlyName":Ljava/lang/String;
    .end local v30    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v31    # "i":I
    .end local v32    # "softRestricted":Z
    .end local v34    # "origPermState":Lcom/android/server/pm/permission/PermissionState;
    :catchall_b
    move-exception v0

    move-object/from16 v2, p4

    move-object/from16 v25, v3

    move-object/from16 v20, v4

    move-object/from16 v36, v10

    move/from16 v1, v17

    move-object/from16 v13, v19

    move/from16 v23, v26

    move/from16 v10, p2

    move-object/from16 v19, v11

    move-object/from16 v11, v22

    goto/16 :goto_26

    .line 2884
    .restart local v0    # "userState":Lcom/android/server/pm/permission/UserPermissionState;
    .restart local v1    # "perm":Ljava/lang/String;
    .restart local v2    # "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    .restart local v5    # "userId":I
    .restart local v6    # "bp":Lcom/android/server/pm/permission/Permission;
    .restart local v12    # "origState":Lcom/android/server/pm/permission/UidPermissionState;
    .restart local v13    # "permName":Ljava/lang/String;
    .restart local v15    # "appSupportsRuntimePermissions":Z
    .restart local v20    # "hardRestricted":Z
    .restart local v23    # "permissionPolicyInitialized":Z
    .restart local v24    # "changedInstallPermission":Z
    .restart local v25    # "shouldGrantNormalPermission":Z
    .restart local v28    # "legacyActivityRecognitionPermission":Ljava/lang/String;
    .restart local v29    # "friendlyName":Ljava/lang/String;
    .restart local v30    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v31    # "i":I
    .restart local v32    # "softRestricted":Z
    .restart local v34    # "origPermState":Lcom/android/server/pm/permission/PermissionState;
    :cond_37
    const/16 v35, 0x0

    :goto_17
    move/from16 v36, v35

    .line 2886
    .local v36, "flags":I
    const/16 v35, 0x0

    .line 2888
    .local v35, "wasChanged":Z
    nop

    .line 2889
    move-object/from16 v37, v1

    .end local v1    # "perm":Ljava/lang/String;
    .local v37, "perm":Ljava/lang/String;
    :try_start_22
    invoke-virtual {v6}, Lcom/android/server/pm/permission/Permission;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Lcom/android/server/pm/permission/UidPermissionState;->getPermissionFlags(Ljava/lang/String;)I

    move-result v1
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_10

    and-int/lit16 v1, v1, 0x3800

    if-eqz v1, :cond_38

    const/4 v1, 0x1

    goto :goto_18

    :cond_38
    const/4 v1, 0x0

    .line 2891
    .local v1, "restrictionExempt":Z
    :goto_18
    nop

    .line 2892
    move-object/from16 v38, v3

    .end local v3    # "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v38, "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :try_start_23
    invoke-virtual {v6}, Lcom/android/server/pm/permission/Permission;->getName()Ljava/lang/String;

    move-result-object v3

    .line 2891
    invoke-virtual {v12, v3}, Lcom/android/server/pm/permission/UidPermissionState;->getPermissionFlags(Ljava/lang/String;)I

    move-result v3
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_f

    and-int/lit16 v3, v3, 0x4000

    if-eqz v3, :cond_39

    const/4 v3, 0x1

    goto :goto_19

    :cond_39
    const/4 v3, 0x0

    .line 2894
    .local v3, "restrictionApplied":Z
    :goto_19
    if-eqz v15, :cond_45

    .line 2896
    if-eqz v23, :cond_3d

    if-eqz v20, :cond_3d

    .line 2897
    if-nez v1, :cond_3c

    .line 2898
    if-eqz v34, :cond_3a

    :try_start_24
    invoke-virtual/range {v34 .. v34}, Lcom/android/server/pm/permission/PermissionState;->isGranted()Z

    move-result v39

    if-eqz v39, :cond_3a

    .line 2899
    invoke-virtual {v2, v6}, Lcom/android/server/pm/permission/UidPermissionState;->revokePermission(Lcom/android/server/pm/permission/Permission;)Z

    move-result v39
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_c

    if-eqz v39, :cond_3a

    .line 2900
    const/16 v35, 0x1

    goto :goto_1a

    .line 3020
    .end local v0    # "userState":Lcom/android/server/pm/permission/UserPermissionState;
    .end local v1    # "restrictionExempt":Z
    .end local v2    # "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    .end local v3    # "restrictionApplied":Z
    .end local v5    # "userId":I
    .end local v6    # "bp":Lcom/android/server/pm/permission/Permission;
    .end local v12    # "origState":Lcom/android/server/pm/permission/UidPermissionState;
    .end local v13    # "permName":Ljava/lang/String;
    .end local v15    # "appSupportsRuntimePermissions":Z
    .end local v20    # "hardRestricted":Z
    .end local v23    # "permissionPolicyInitialized":Z
    .end local v24    # "changedInstallPermission":Z
    .end local v25    # "shouldGrantNormalPermission":Z
    .end local v28    # "legacyActivityRecognitionPermission":Ljava/lang/String;
    .end local v29    # "friendlyName":Ljava/lang/String;
    .end local v30    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v31    # "i":I
    .end local v32    # "softRestricted":Z
    .end local v34    # "origPermState":Lcom/android/server/pm/permission/PermissionState;
    .end local v35    # "wasChanged":Z
    .end local v36    # "flags":I
    .end local v37    # "perm":Ljava/lang/String;
    :catchall_c
    move-exception v0

    move-object/from16 v2, p4

    move-object/from16 v20, v4

    move-object/from16 v36, v10

    move/from16 v1, v17

    move-object/from16 v13, v19

    move/from16 v23, v26

    move-object/from16 v25, v38

    move/from16 v10, p2

    move-object/from16 v19, v11

    move-object/from16 v11, v22

    goto/16 :goto_26

    .line 2902
    .restart local v0    # "userState":Lcom/android/server/pm/permission/UserPermissionState;
    .restart local v1    # "restrictionExempt":Z
    .restart local v2    # "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    .restart local v3    # "restrictionApplied":Z
    .restart local v5    # "userId":I
    .restart local v6    # "bp":Lcom/android/server/pm/permission/Permission;
    .restart local v12    # "origState":Lcom/android/server/pm/permission/UidPermissionState;
    .restart local v13    # "permName":Ljava/lang/String;
    .restart local v15    # "appSupportsRuntimePermissions":Z
    .restart local v20    # "hardRestricted":Z
    .restart local v23    # "permissionPolicyInitialized":Z
    .restart local v24    # "changedInstallPermission":Z
    .restart local v25    # "shouldGrantNormalPermission":Z
    .restart local v28    # "legacyActivityRecognitionPermission":Ljava/lang/String;
    .restart local v29    # "friendlyName":Ljava/lang/String;
    .restart local v30    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v31    # "i":I
    .restart local v32    # "softRestricted":Z
    .restart local v34    # "origPermState":Lcom/android/server/pm/permission/PermissionState;
    .restart local v35    # "wasChanged":Z
    .restart local v36    # "flags":I
    .restart local v37    # "perm":Ljava/lang/String;
    :cond_3a
    :goto_1a
    if-nez v3, :cond_3b

    .line 2903
    move-object/from16 v39, v4

    move/from16 v4, v36

    .end local v36    # "flags":I
    .local v4, "flags":I
    .local v39, "isPrivilegedPermissionAllowlisted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    or-int/lit16 v4, v4, 0x4000

    .line 2904
    const/16 v35, 0x1

    move/from16 v36, v4

    goto :goto_1c

    .line 2902
    .end local v39    # "isPrivilegedPermissionAllowlisted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v4, "isPrivilegedPermissionAllowlisted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v36    # "flags":I
    :cond_3b
    move-object/from16 v39, v4

    move/from16 v4, v36

    .end local v36    # "flags":I
    .local v4, "flags":I
    .restart local v39    # "isPrivilegedPermissionAllowlisted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    goto :goto_1c

    .line 2897
    .end local v39    # "isPrivilegedPermissionAllowlisted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v4, "isPrivilegedPermissionAllowlisted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v36    # "flags":I
    :cond_3c
    move-object/from16 v39, v4

    move/from16 v4, v36

    .end local v36    # "flags":I
    .local v4, "flags":I
    .restart local v39    # "isPrivilegedPermissionAllowlisted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    goto :goto_1b

    .line 2896
    .end local v39    # "isPrivilegedPermissionAllowlisted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v4, "isPrivilegedPermissionAllowlisted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v36    # "flags":I
    :cond_3d
    move-object/from16 v39, v4

    move/from16 v4, v36

    .line 2908
    .end local v36    # "flags":I
    .local v4, "flags":I
    .restart local v39    # "isPrivilegedPermissionAllowlisted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-eqz v23, :cond_3e

    if-eqz v32, :cond_3e

    .line 2911
    if-nez v1, :cond_3e

    if-nez v3, :cond_3e

    .line 2912
    or-int/lit16 v4, v4, 0x4000

    .line 2913
    const/16 v35, 0x1

    move/from16 v36, v4

    goto :goto_1c

    .line 2918
    :cond_3e
    :goto_1b
    move/from16 v36, v4

    .end local v4    # "flags":I
    .restart local v36    # "flags":I
    :goto_1c
    and-int/lit8 v4, v36, 0x40

    if-eqz v4, :cond_3f

    .line 2919
    and-int/lit8 v36, v36, -0x41

    .line 2920
    const/16 v35, 0x1

    .line 2923
    :cond_3f
    and-int/lit8 v4, v36, 0x8

    if-eqz v4, :cond_40

    .line 2925
    :try_start_25
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v4

    .line 2924
    invoke-direct {v8, v13, v4}, Lcom/android/server/pm/permission/PermissionManagerService;->isPermissionSplitFromNonRuntime(Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_40

    .line 2926
    and-int/lit8 v36, v36, -0x9

    .line 2927
    const/16 v35, 0x1

    move-object/from16 v40, v11

    move/from16 v4, v36

    move-object/from16 v36, v10

    goto/16 :goto_1e

    .line 3020
    .end local v0    # "userState":Lcom/android/server/pm/permission/UserPermissionState;
    .end local v1    # "restrictionExempt":Z
    .end local v2    # "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    .end local v3    # "restrictionApplied":Z
    .end local v5    # "userId":I
    .end local v6    # "bp":Lcom/android/server/pm/permission/Permission;
    .end local v12    # "origState":Lcom/android/server/pm/permission/UidPermissionState;
    .end local v13    # "permName":Ljava/lang/String;
    .end local v15    # "appSupportsRuntimePermissions":Z
    .end local v20    # "hardRestricted":Z
    .end local v23    # "permissionPolicyInitialized":Z
    .end local v24    # "changedInstallPermission":Z
    .end local v25    # "shouldGrantNormalPermission":Z
    .end local v28    # "legacyActivityRecognitionPermission":Ljava/lang/String;
    .end local v29    # "friendlyName":Ljava/lang/String;
    .end local v30    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v31    # "i":I
    .end local v32    # "softRestricted":Z
    .end local v34    # "origPermState":Lcom/android/server/pm/permission/PermissionState;
    .end local v35    # "wasChanged":Z
    .end local v36    # "flags":I
    .end local v37    # "perm":Ljava/lang/String;
    :catchall_d
    move-exception v0

    move-object/from16 v2, p4

    move-object/from16 v36, v10

    move/from16 v1, v17

    move-object/from16 v13, v19

    move/from16 v23, v26

    move-object/from16 v25, v38

    move-object/from16 v20, v39

    move/from16 v10, p2

    move-object/from16 v19, v11

    move-object/from16 v11, v22

    goto/16 :goto_26

    .line 2929
    .restart local v0    # "userState":Lcom/android/server/pm/permission/UserPermissionState;
    .restart local v1    # "restrictionExempt":Z
    .restart local v2    # "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    .restart local v3    # "restrictionApplied":Z
    .restart local v5    # "userId":I
    .restart local v6    # "bp":Lcom/android/server/pm/permission/Permission;
    .restart local v12    # "origState":Lcom/android/server/pm/permission/UidPermissionState;
    .restart local v13    # "permName":Ljava/lang/String;
    .restart local v15    # "appSupportsRuntimePermissions":Z
    .restart local v20    # "hardRestricted":Z
    .restart local v23    # "permissionPolicyInitialized":Z
    .restart local v24    # "changedInstallPermission":Z
    .restart local v25    # "shouldGrantNormalPermission":Z
    .restart local v28    # "legacyActivityRecognitionPermission":Ljava/lang/String;
    .restart local v29    # "friendlyName":Ljava/lang/String;
    .restart local v30    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v31    # "i":I
    .restart local v32    # "softRestricted":Z
    .restart local v34    # "origPermState":Lcom/android/server/pm/permission/PermissionState;
    .restart local v35    # "wasChanged":Z
    .restart local v36    # "flags":I
    .restart local v37    # "perm":Ljava/lang/String;
    :cond_40
    if-eqz v23, :cond_41

    if-eqz v20, :cond_41

    if-eqz v1, :cond_44

    .line 2931
    :cond_41
    if-eqz v34, :cond_42

    invoke-virtual/range {v34 .. v34}, Lcom/android/server/pm/permission/PermissionState;->isGranted()Z

    move-result v4

    if-nez v4, :cond_43

    :cond_42
    if-eqz v28, :cond_44

    .line 2933
    :cond_43
    invoke-virtual {v2, v6}, Lcom/android/server/pm/permission/UidPermissionState;->grantPermission(Lcom/android/server/pm/permission/Permission;)Z

    move-result v4
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_d

    if-nez v4, :cond_44

    .line 2934
    const/16 v35, 0x1

    move-object/from16 v40, v11

    move/from16 v4, v36

    move-object/from16 v36, v10

    goto/16 :goto_1e

    .line 2967
    :cond_44
    move-object/from16 v40, v11

    move/from16 v4, v36

    move-object/from16 v36, v10

    goto :goto_1e

    .line 2939
    .end local v39    # "isPrivilegedPermissionAllowlisted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v4, "isPrivilegedPermissionAllowlisted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_45
    move-object/from16 v39, v4

    move/from16 v4, v36

    .end local v36    # "flags":I
    .local v4, "flags":I
    .restart local v39    # "isPrivilegedPermissionAllowlisted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-nez v34, :cond_46

    .line 2941
    move-object/from16 v36, v10

    .end local v10    # "isPermissionPolicyInitialized":Landroid/util/SparseBooleanArray;
    .local v36, "isPermissionPolicyInitialized":Landroid/util/SparseBooleanArray;
    :try_start_26
    const-string v10, "android"
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_e

    .line 2942
    move-object/from16 v40, v11

    .end local v11    # "shouldGrantSignaturePermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v40, "shouldGrantSignaturePermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :try_start_27
    invoke-virtual {v6}, Lcom/android/server/pm/permission/Permission;->getPackageName()Ljava/lang/String;

    move-result-object v11

    .line 2941
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_47

    .line 2943
    invoke-virtual {v6}, Lcom/android/server/pm/permission/Permission;->isRemoved()Z

    move-result v10

    if-nez v10, :cond_47

    .line 2944
    or-int/lit8 v4, v4, 0x48

    .line 2946
    const/16 v35, 0x1

    goto :goto_1d

    .line 3020
    .end local v0    # "userState":Lcom/android/server/pm/permission/UserPermissionState;
    .end local v1    # "restrictionExempt":Z
    .end local v2    # "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    .end local v3    # "restrictionApplied":Z
    .end local v4    # "flags":I
    .end local v5    # "userId":I
    .end local v6    # "bp":Lcom/android/server/pm/permission/Permission;
    .end local v12    # "origState":Lcom/android/server/pm/permission/UidPermissionState;
    .end local v13    # "permName":Ljava/lang/String;
    .end local v15    # "appSupportsRuntimePermissions":Z
    .end local v20    # "hardRestricted":Z
    .end local v23    # "permissionPolicyInitialized":Z
    .end local v24    # "changedInstallPermission":Z
    .end local v25    # "shouldGrantNormalPermission":Z
    .end local v28    # "legacyActivityRecognitionPermission":Ljava/lang/String;
    .end local v29    # "friendlyName":Ljava/lang/String;
    .end local v30    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v31    # "i":I
    .end local v32    # "softRestricted":Z
    .end local v34    # "origPermState":Lcom/android/server/pm/permission/PermissionState;
    .end local v35    # "wasChanged":Z
    .end local v37    # "perm":Ljava/lang/String;
    .end local v40    # "shouldGrantSignaturePermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v11    # "shouldGrantSignaturePermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :catchall_e
    move-exception v0

    move/from16 v10, p2

    move-object/from16 v2, p4

    move/from16 v1, v17

    move-object/from16 v13, v19

    move/from16 v23, v26

    move-object/from16 v25, v38

    move-object/from16 v20, v39

    move-object/from16 v19, v11

    move-object/from16 v11, v22

    .end local v11    # "shouldGrantSignaturePermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v40    # "shouldGrantSignaturePermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    goto/16 :goto_26

    .line 2939
    .end local v36    # "isPermissionPolicyInitialized":Landroid/util/SparseBooleanArray;
    .end local v40    # "shouldGrantSignaturePermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v0    # "userState":Lcom/android/server/pm/permission/UserPermissionState;
    .restart local v1    # "restrictionExempt":Z
    .restart local v2    # "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    .restart local v3    # "restrictionApplied":Z
    .restart local v4    # "flags":I
    .restart local v5    # "userId":I
    .restart local v6    # "bp":Lcom/android/server/pm/permission/Permission;
    .restart local v10    # "isPermissionPolicyInitialized":Landroid/util/SparseBooleanArray;
    .restart local v11    # "shouldGrantSignaturePermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v12    # "origState":Lcom/android/server/pm/permission/UidPermissionState;
    .restart local v13    # "permName":Ljava/lang/String;
    .restart local v15    # "appSupportsRuntimePermissions":Z
    .restart local v20    # "hardRestricted":Z
    .restart local v23    # "permissionPolicyInitialized":Z
    .restart local v24    # "changedInstallPermission":Z
    .restart local v25    # "shouldGrantNormalPermission":Z
    .restart local v28    # "legacyActivityRecognitionPermission":Ljava/lang/String;
    .restart local v29    # "friendlyName":Ljava/lang/String;
    .restart local v30    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v31    # "i":I
    .restart local v32    # "softRestricted":Z
    .restart local v34    # "origPermState":Lcom/android/server/pm/permission/PermissionState;
    .restart local v35    # "wasChanged":Z
    .restart local v37    # "perm":Ljava/lang/String;
    :cond_46
    move-object/from16 v36, v10

    move-object/from16 v40, v11

    .line 2951
    .end local v10    # "isPermissionPolicyInitialized":Landroid/util/SparseBooleanArray;
    .end local v11    # "shouldGrantSignaturePermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v36    # "isPermissionPolicyInitialized":Landroid/util/SparseBooleanArray;
    .restart local v40    # "shouldGrantSignaturePermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_47
    :goto_1d
    invoke-virtual {v6}, Lcom/android/server/pm/permission/Permission;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Lcom/android/server/pm/permission/UidPermissionState;->isPermissionGranted(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_48

    .line 2952
    invoke-virtual {v2, v6}, Lcom/android/server/pm/permission/UidPermissionState;->grantPermission(Lcom/android/server/pm/permission/Permission;)Z

    move-result v10

    if-eqz v10, :cond_48

    .line 2953
    const/4 v10, 0x1

    move/from16 v35, v10

    .line 2958
    :cond_48
    if-eqz v23, :cond_4a

    if-nez v20, :cond_49

    if-eqz v32, :cond_4a

    :cond_49
    if-nez v1, :cond_4a

    if-nez v3, :cond_4a

    .line 2961
    or-int/lit16 v4, v4, 0x4000

    .line 2962
    const/16 v35, 0x1

    .line 2967
    :cond_4a
    :goto_1e
    if-eqz v23, :cond_4e

    .line 2968
    if-nez v20, :cond_4b

    if-eqz v32, :cond_4c

    :cond_4b
    if-eqz v1, :cond_4e

    .line 2969
    :cond_4c
    if-eqz v3, :cond_4e

    .line 2970
    and-int/lit16 v4, v4, -0x4001

    .line 2972
    if-nez v15, :cond_4d

    .line 2973
    or-int/lit8 v4, v4, 0x40

    .line 2975
    :cond_4d
    const/16 v35, 0x1

    .line 2980
    :cond_4e
    if-eqz v35, :cond_4f

    .line 2981
    invoke-static {v7, v5}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v10

    move-object v7, v10

    .line 2984
    :cond_4f
    const v10, 0x3fbff

    invoke-virtual {v2, v6, v10, v4}, Lcom/android/server/pm/permission/UidPermissionState;->updatePermissionFlags(Lcom/android/server/pm/permission/Permission;II)Z

    .line 2986
    nop

    .end local v1    # "restrictionExempt":Z
    .end local v3    # "restrictionApplied":Z
    .end local v4    # "flags":I
    .end local v20    # "hardRestricted":Z
    .end local v23    # "permissionPolicyInitialized":Z
    .end local v32    # "softRestricted":Z
    .end local v34    # "origPermState":Lcom/android/server/pm/permission/PermissionState;
    .end local v35    # "wasChanged":Z
    goto :goto_1f

    .line 3020
    .end local v0    # "userState":Lcom/android/server/pm/permission/UserPermissionState;
    .end local v2    # "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    .end local v5    # "userId":I
    .end local v6    # "bp":Lcom/android/server/pm/permission/Permission;
    .end local v12    # "origState":Lcom/android/server/pm/permission/UidPermissionState;
    .end local v13    # "permName":Ljava/lang/String;
    .end local v15    # "appSupportsRuntimePermissions":Z
    .end local v24    # "changedInstallPermission":Z
    .end local v25    # "shouldGrantNormalPermission":Z
    .end local v28    # "legacyActivityRecognitionPermission":Ljava/lang/String;
    .end local v29    # "friendlyName":Ljava/lang/String;
    .end local v30    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v31    # "i":I
    .end local v36    # "isPermissionPolicyInitialized":Landroid/util/SparseBooleanArray;
    .end local v37    # "perm":Ljava/lang/String;
    .end local v39    # "isPrivilegedPermissionAllowlisted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v40    # "shouldGrantSignaturePermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v4, "isPrivilegedPermissionAllowlisted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v10    # "isPermissionPolicyInitialized":Landroid/util/SparseBooleanArray;
    .restart local v11    # "shouldGrantSignaturePermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :catchall_f
    move-exception v0

    move-object/from16 v36, v10

    move/from16 v10, p2

    move-object/from16 v2, p4

    move-object/from16 v20, v4

    move/from16 v1, v17

    move-object/from16 v13, v19

    move/from16 v23, v26

    move-object/from16 v25, v38

    move-object/from16 v19, v11

    move-object/from16 v11, v22

    .end local v4    # "isPrivilegedPermissionAllowlisted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v10    # "isPermissionPolicyInitialized":Landroid/util/SparseBooleanArray;
    .end local v11    # "shouldGrantSignaturePermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v36    # "isPermissionPolicyInitialized":Landroid/util/SparseBooleanArray;
    .restart local v39    # "isPrivilegedPermissionAllowlisted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v40    # "shouldGrantSignaturePermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    goto/16 :goto_26

    .end local v36    # "isPermissionPolicyInitialized":Landroid/util/SparseBooleanArray;
    .end local v38    # "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v39    # "isPrivilegedPermissionAllowlisted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v40    # "shouldGrantSignaturePermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v3, "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v4    # "isPrivilegedPermissionAllowlisted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v10    # "isPermissionPolicyInitialized":Landroid/util/SparseBooleanArray;
    .restart local v11    # "shouldGrantSignaturePermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :catchall_10
    move-exception v0

    move-object/from16 v36, v10

    move/from16 v10, p2

    move-object/from16 v2, p4

    move-object/from16 v25, v3

    move-object/from16 v20, v4

    move/from16 v1, v17

    move-object/from16 v13, v19

    move/from16 v23, v26

    move-object/from16 v19, v11

    move-object/from16 v11, v22

    .end local v3    # "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v4    # "isPrivilegedPermissionAllowlisted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v10    # "isPermissionPolicyInitialized":Landroid/util/SparseBooleanArray;
    .end local v11    # "shouldGrantSignaturePermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v36    # "isPermissionPolicyInitialized":Landroid/util/SparseBooleanArray;
    .restart local v38    # "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v39    # "isPrivilegedPermissionAllowlisted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v40    # "shouldGrantSignaturePermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    goto/16 :goto_26

    .line 3000
    .end local v33    # "shouldGrantInternalPermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v36    # "isPermissionPolicyInitialized":Landroid/util/SparseBooleanArray;
    .end local v38    # "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v39    # "isPrivilegedPermissionAllowlisted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v40    # "shouldGrantSignaturePermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v0    # "userState":Lcom/android/server/pm/permission/UserPermissionState;
    .local v1, "perm":Ljava/lang/String;
    .restart local v2    # "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    .restart local v3    # "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v4    # "isPrivilegedPermissionAllowlisted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v5    # "userId":I
    .restart local v6    # "bp":Lcom/android/server/pm/permission/Permission;
    .local v10, "shouldGrantInternalPermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v11    # "shouldGrantSignaturePermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v12    # "origState":Lcom/android/server/pm/permission/UidPermissionState;
    .restart local v13    # "permName":Ljava/lang/String;
    .restart local v15    # "appSupportsRuntimePermissions":Z
    .local v23, "isPermissionPolicyInitialized":Landroid/util/SparseBooleanArray;
    .restart local v24    # "changedInstallPermission":Z
    .restart local v25    # "shouldGrantNormalPermission":Z
    .restart local v28    # "legacyActivityRecognitionPermission":Ljava/lang/String;
    .restart local v29    # "friendlyName":Ljava/lang/String;
    .restart local v30    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v31    # "i":I
    :cond_50
    move-object/from16 v37, v1

    move-object/from16 v38, v3

    move-object/from16 v39, v4

    move-object/from16 v33, v10

    move-object/from16 v40, v11

    move-object/from16 v36, v23

    .end local v1    # "perm":Ljava/lang/String;
    .end local v3    # "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v4    # "isPrivilegedPermissionAllowlisted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v10    # "shouldGrantInternalPermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v11    # "shouldGrantSignaturePermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v23    # "isPermissionPolicyInitialized":Landroid/util/SparseBooleanArray;
    .restart local v33    # "shouldGrantInternalPermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v36    # "isPermissionPolicyInitialized":Landroid/util/SparseBooleanArray;
    .restart local v37    # "perm":Ljava/lang/String;
    .restart local v38    # "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v39    # "isPrivilegedPermissionAllowlisted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v40    # "shouldGrantSignaturePermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {v6}, Lcom/android/server/pm/permission/Permission;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/server/pm/permission/UidPermissionState;->removePermissionState(Ljava/lang/String;)Z

    move-result v1
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_11

    if-eqz v1, :cond_51

    .line 3001
    const/4 v1, 0x1

    move/from16 v24, v1

    .line 2730
    .end local v6    # "bp":Lcom/android/server/pm/permission/Permission;
    .end local v13    # "permName":Ljava/lang/String;
    .end local v15    # "appSupportsRuntimePermissions":Z
    .end local v25    # "shouldGrantNormalPermission":Z
    .end local v28    # "legacyActivityRecognitionPermission":Ljava/lang/String;
    .end local v37    # "perm":Ljava/lang/String;
    :cond_51
    :goto_1f
    add-int/lit8 v1, v31, 0x1

    move/from16 v10, p2

    move-object/from16 v11, p3

    move/from16 v6, v26

    move-object/from16 v15, v27

    move-object/from16 v13, v29

    move-object/from16 v3, v30

    move-object/from16 v20, v33

    move-object/from16 v23, v36

    move-object/from16 v25, v38

    move-object/from16 v4, v39

    move-object/from16 v30, v40

    .end local v31    # "i":I
    .local v1, "i":I
    goto/16 :goto_a

    .line 3020
    .end local v0    # "userState":Lcom/android/server/pm/permission/UserPermissionState;
    .end local v1    # "i":I
    .end local v2    # "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    .end local v5    # "userId":I
    .end local v12    # "origState":Lcom/android/server/pm/permission/UidPermissionState;
    .end local v24    # "changedInstallPermission":Z
    .end local v29    # "friendlyName":Ljava/lang/String;
    .end local v30    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :catchall_11
    move-exception v0

    move/from16 v10, p2

    goto/16 :goto_21

    .end local v33    # "shouldGrantInternalPermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v36    # "isPermissionPolicyInitialized":Landroid/util/SparseBooleanArray;
    .end local v38    # "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v39    # "isPrivilegedPermissionAllowlisted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v40    # "shouldGrantSignaturePermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v3    # "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v4    # "isPrivilegedPermissionAllowlisted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v10    # "shouldGrantInternalPermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v11    # "shouldGrantSignaturePermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v23    # "isPermissionPolicyInitialized":Landroid/util/SparseBooleanArray;
    :catchall_12
    move-exception v0

    move-object/from16 v33, v10

    move-object/from16 v36, v23

    move/from16 v10, p2

    move-object/from16 v2, p4

    move-object/from16 v25, v3

    move-object/from16 v20, v4

    move/from16 v1, v17

    move-object/from16 v13, v19

    move/from16 v23, v26

    move-object/from16 v19, v11

    move-object/from16 v11, v22

    .end local v3    # "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v4    # "isPrivilegedPermissionAllowlisted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v10    # "shouldGrantInternalPermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v11    # "shouldGrantSignaturePermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v23    # "isPermissionPolicyInitialized":Landroid/util/SparseBooleanArray;
    .restart local v33    # "shouldGrantInternalPermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v36    # "isPermissionPolicyInitialized":Landroid/util/SparseBooleanArray;
    .restart local v38    # "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v39    # "isPrivilegedPermissionAllowlisted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v40    # "shouldGrantSignaturePermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    goto/16 :goto_26

    .end local v33    # "shouldGrantInternalPermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v36    # "isPermissionPolicyInitialized":Landroid/util/SparseBooleanArray;
    .end local v38    # "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v39    # "isPrivilegedPermissionAllowlisted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v40    # "shouldGrantSignaturePermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v3    # "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v4    # "isPrivilegedPermissionAllowlisted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v11    # "shouldGrantSignaturePermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v20, "shouldGrantInternalPermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v23    # "isPermissionPolicyInitialized":Landroid/util/SparseBooleanArray;
    :catchall_13
    move-exception v0

    move-object/from16 v33, v20

    move-object/from16 v36, v23

    move/from16 v10, p2

    move-object/from16 v2, p4

    move-object/from16 v25, v3

    move-object/from16 v20, v4

    move/from16 v1, v17

    move-object/from16 v13, v19

    move/from16 v23, v26

    move-object/from16 v19, v11

    move-object/from16 v11, v22

    .end local v3    # "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v4    # "isPrivilegedPermissionAllowlisted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v11    # "shouldGrantSignaturePermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v20    # "shouldGrantInternalPermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v23    # "isPermissionPolicyInitialized":Landroid/util/SparseBooleanArray;
    .restart local v33    # "shouldGrantInternalPermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v36    # "isPermissionPolicyInitialized":Landroid/util/SparseBooleanArray;
    .restart local v38    # "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v39    # "isPrivilegedPermissionAllowlisted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v40    # "shouldGrantSignaturePermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    goto/16 :goto_26

    .end local v33    # "shouldGrantInternalPermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v36    # "isPermissionPolicyInitialized":Landroid/util/SparseBooleanArray;
    .end local v38    # "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v39    # "isPrivilegedPermissionAllowlisted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v40    # "shouldGrantSignaturePermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v4    # "isPrivilegedPermissionAllowlisted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v20    # "shouldGrantInternalPermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v23    # "isPermissionPolicyInitialized":Landroid/util/SparseBooleanArray;
    .local v25, "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v30, "shouldGrantSignaturePermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :catchall_14
    move-exception v0

    move-object/from16 v33, v20

    move-object/from16 v36, v23

    move/from16 v10, p2

    move-object/from16 v2, p4

    move-object/from16 v20, v4

    move/from16 v1, v17

    move-object/from16 v13, v19

    move-object/from16 v11, v22

    move/from16 v23, v26

    move-object/from16 v19, v30

    .end local v4    # "isPrivilegedPermissionAllowlisted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v20    # "shouldGrantInternalPermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v23    # "isPermissionPolicyInitialized":Landroid/util/SparseBooleanArray;
    .end local v25    # "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v30    # "shouldGrantSignaturePermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v33    # "shouldGrantInternalPermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v36    # "isPermissionPolicyInitialized":Landroid/util/SparseBooleanArray;
    .restart local v38    # "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v39    # "isPrivilegedPermissionAllowlisted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v40    # "shouldGrantSignaturePermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    goto/16 :goto_26

    .end local v27    # "requestedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v33    # "shouldGrantInternalPermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v36    # "isPermissionPolicyInitialized":Landroid/util/SparseBooleanArray;
    .end local v38    # "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v39    # "isPrivilegedPermissionAllowlisted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v40    # "shouldGrantSignaturePermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v4    # "isPrivilegedPermissionAllowlisted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v15, "requestedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v20    # "shouldGrantInternalPermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v23    # "isPermissionPolicyInitialized":Landroid/util/SparseBooleanArray;
    .restart local v25    # "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v30    # "shouldGrantSignaturePermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :catchall_15
    move-exception v0

    move-object/from16 v27, v15

    move-object/from16 v33, v20

    move-object/from16 v36, v23

    move/from16 v10, p2

    move-object/from16 v2, p4

    move-object/from16 v20, v4

    move/from16 v1, v17

    move-object/from16 v13, v19

    move-object/from16 v11, v22

    move/from16 v23, v26

    move-object/from16 v19, v30

    .end local v4    # "isPrivilegedPermissionAllowlisted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v15    # "requestedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v20    # "shouldGrantInternalPermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v23    # "isPermissionPolicyInitialized":Landroid/util/SparseBooleanArray;
    .end local v25    # "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v30    # "shouldGrantSignaturePermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v27    # "requestedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v33    # "shouldGrantInternalPermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v36    # "isPermissionPolicyInitialized":Landroid/util/SparseBooleanArray;
    .restart local v38    # "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v39    # "isPrivilegedPermissionAllowlisted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v40    # "shouldGrantSignaturePermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    goto/16 :goto_26

    .end local v26    # "requestedPermissionsSize":I
    .end local v27    # "requestedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v33    # "shouldGrantInternalPermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v36    # "isPermissionPolicyInitialized":Landroid/util/SparseBooleanArray;
    .end local v38    # "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v39    # "isPrivilegedPermissionAllowlisted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v40    # "shouldGrantSignaturePermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v4    # "isPrivilegedPermissionAllowlisted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v6, "requestedPermissionsSize":I
    .restart local v15    # "requestedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v20    # "shouldGrantInternalPermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v23    # "isPermissionPolicyInitialized":Landroid/util/SparseBooleanArray;
    .restart local v25    # "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v30    # "shouldGrantSignaturePermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :catchall_16
    move-exception v0

    move-object/from16 v27, v15

    move-object/from16 v33, v20

    move-object/from16 v36, v23

    move/from16 v10, p2

    move-object/from16 v2, p4

    move-object/from16 v20, v4

    move/from16 v23, v6

    move/from16 v1, v17

    move-object/from16 v13, v19

    move-object/from16 v11, v22

    move-object/from16 v19, v30

    .end local v4    # "isPrivilegedPermissionAllowlisted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v6    # "requestedPermissionsSize":I
    .end local v15    # "requestedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v20    # "shouldGrantInternalPermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v23    # "isPermissionPolicyInitialized":Landroid/util/SparseBooleanArray;
    .end local v25    # "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v30    # "shouldGrantSignaturePermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v26    # "requestedPermissionsSize":I
    .restart local v27    # "requestedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v33    # "shouldGrantInternalPermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v36    # "isPermissionPolicyInitialized":Landroid/util/SparseBooleanArray;
    .restart local v38    # "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v39    # "isPrivilegedPermissionAllowlisted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v40    # "shouldGrantSignaturePermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    goto/16 :goto_26

    .line 2730
    .end local v26    # "requestedPermissionsSize":I
    .end local v27    # "requestedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v33    # "shouldGrantInternalPermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v36    # "isPermissionPolicyInitialized":Landroid/util/SparseBooleanArray;
    .end local v38    # "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v39    # "isPrivilegedPermissionAllowlisted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v40    # "shouldGrantSignaturePermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v0    # "userState":Lcom/android/server/pm/permission/UserPermissionState;
    .restart local v1    # "i":I
    .restart local v2    # "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    .local v3, "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v4    # "isPrivilegedPermissionAllowlisted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v5    # "userId":I
    .restart local v6    # "requestedPermissionsSize":I
    .restart local v12    # "origState":Lcom/android/server/pm/permission/UidPermissionState;
    .local v13, "friendlyName":Ljava/lang/String;
    .restart local v15    # "requestedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v20    # "shouldGrantInternalPermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v23    # "isPermissionPolicyInitialized":Landroid/util/SparseBooleanArray;
    .restart local v24    # "changedInstallPermission":Z
    .restart local v25    # "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v30    # "shouldGrantSignaturePermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_52
    move/from16 v31, v1

    move-object/from16 v39, v4

    move/from16 v26, v6

    move-object/from16 v29, v13

    move-object/from16 v27, v15

    move-object/from16 v33, v20

    move-object/from16 v36, v23

    move-object/from16 v38, v25

    move-object/from16 v40, v30

    move-object/from16 v30, v3

    .line 3006
    .end local v1    # "i":I
    .end local v3    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v4    # "isPrivilegedPermissionAllowlisted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v6    # "requestedPermissionsSize":I
    .end local v13    # "friendlyName":Ljava/lang/String;
    .end local v15    # "requestedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v20    # "shouldGrantInternalPermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v23    # "isPermissionPolicyInitialized":Landroid/util/SparseBooleanArray;
    .end local v25    # "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v26    # "requestedPermissionsSize":I
    .restart local v27    # "requestedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v29    # "friendlyName":Ljava/lang/String;
    .local v30, "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v33    # "shouldGrantInternalPermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v36    # "isPermissionPolicyInitialized":Landroid/util/SparseBooleanArray;
    .restart local v38    # "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v39    # "isPrivilegedPermissionAllowlisted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v40    # "shouldGrantSignaturePermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-nez v24, :cond_53

    move/from16 v10, p2

    if-eqz v10, :cond_54

    goto :goto_20

    :cond_53
    move/from16 v10, p2

    :goto_20
    :try_start_28
    iget-object v1, v14, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    .line 3007
    invoke-virtual {v0, v1}, Lcom/android/server/pm/permission/UserPermissionState;->areInstallPermissionsFixed(Ljava/lang/String;)Z

    move-result v1
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_19

    if-nez v1, :cond_54

    .line 3008
    :try_start_29
    invoke-virtual {v14}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v1
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_17

    if-eqz v1, :cond_55

    goto :goto_22

    .line 3020
    .end local v0    # "userState":Lcom/android/server/pm/permission/UserPermissionState;
    .end local v2    # "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    .end local v5    # "userId":I
    .end local v12    # "origState":Lcom/android/server/pm/permission/UidPermissionState;
    .end local v24    # "changedInstallPermission":Z
    .end local v29    # "friendlyName":Ljava/lang/String;
    .end local v30    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :catchall_17
    move-exception v0

    :goto_21
    move-object/from16 v2, p4

    move/from16 v1, v17

    move-object/from16 v13, v19

    move-object/from16 v11, v22

    move/from16 v23, v26

    move-object/from16 v25, v38

    move-object/from16 v20, v39

    move-object/from16 v19, v40

    goto/16 :goto_26

    .line 3008
    .restart local v0    # "userState":Lcom/android/server/pm/permission/UserPermissionState;
    .restart local v2    # "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    .restart local v5    # "userId":I
    .restart local v12    # "origState":Lcom/android/server/pm/permission/UidPermissionState;
    .restart local v24    # "changedInstallPermission":Z
    .restart local v29    # "friendlyName":Ljava/lang/String;
    .restart local v30    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_54
    :goto_22
    :try_start_2a
    invoke-virtual {v14}, Lcom/android/server/pm/PackageSetting;->getPkgState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->isUpdatedSystemApp()Z

    move-result v1
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_19

    if-eqz v1, :cond_56

    .line 3012
    :cond_55
    :try_start_2b
    iget-object v1, v14, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    const/4 v6, 0x1

    invoke-virtual {v0, v1, v6}, Lcom/android/server/pm/permission/UserPermissionState;->setInstallPermissionsFixed(Ljava/lang/String;Z)V
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_17

    goto :goto_23

    .line 3008
    :cond_56
    const/4 v6, 0x1

    .line 3015
    :goto_23
    :try_start_2c
    invoke-direct {v8, v2, v9, v5, v7}, Lcom/android/server/pm/permission/PermissionManagerService;->revokePermissionsNoLongerImplicitLocked(Lcom/android/server/pm/permission/UidPermissionState;Lcom/android/server/pm/parsing/pkg/AndroidPackage;I[I)[I

    move-result-object v1
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_19

    move-object/from16 v11, v38

    .end local v38    # "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v11, "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    move-object v7, v1

    .line 3017
    move-object/from16 v1, p0

    move-object/from16 v16, v2

    move/from16 v15, v18

    move-object/from16 v13, v19

    .end local v2    # "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    .local v16, "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    move-object v2, v12

    move-object/from16 v18, v30

    move-object/from16 v19, v40

    .end local v30    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v40    # "shouldGrantSignaturePermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v18, "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v19, "shouldGrantSignaturePermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    move-object/from16 v3, v16

    move-object/from16 v20, v39

    .end local v39    # "isPrivilegedPermissionAllowlisted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v20, "isPrivilegedPermissionAllowlisted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    move-object/from16 v4, p1

    move-object/from16 v25, v11

    move-object/from16 v11, v22

    move/from16 v22, v5

    .end local v5    # "userId":I
    .local v11, "userIds":[I
    .local v22, "userId":I
    .restart local v25    # "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    move-object/from16 v5, v18

    move/from16 v23, v26

    move/from16 v26, v6

    .end local v26    # "requestedPermissionsSize":I
    .local v23, "requestedPermissionsSize":I
    move/from16 v6, v22

    :try_start_2d
    invoke-direct/range {v1 .. v7}, Lcom/android/server/pm/permission/PermissionManagerService;->setInitialGrantForNewImplicitPermissionsLocked(Lcom/android/server/pm/permission/UidPermissionState;Lcom/android/server/pm/permission/UidPermissionState;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Landroid/util/ArraySet;I[I)[I

    move-result-object v1
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_18

    .line 2652
    .end local v0    # "userState":Lcom/android/server/pm/permission/UserPermissionState;
    .end local v7    # "updatedUserIds":[I
    .end local v12    # "origState":Lcom/android/server/pm/permission/UidPermissionState;
    .end local v16    # "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    .end local v18    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v22    # "userId":I
    .end local v24    # "changedInstallPermission":Z
    .end local v29    # "friendlyName":Ljava/lang/String;
    .local v1, "updatedUserIds":[I
    add-int/lit8 v2, v15, 0x1

    move-object v5, v11

    move-object/from16 v3, v19

    move-object/from16 v4, v20

    move/from16 v0, v21

    move/from16 v6, v23

    move-object/from16 v7, v25

    move-object/from16 v15, v27

    move-object/from16 v12, v36

    move-object/from16 v11, p3

    move-object/from16 v19, v13

    move-object/from16 v13, v33

    goto/16 :goto_4

    .line 3020
    .end local v1    # "updatedUserIds":[I
    .restart local v7    # "updatedUserIds":[I
    :catchall_18
    move-exception v0

    move-object/from16 v2, p4

    move/from16 v1, v17

    goto/16 :goto_26

    .end local v11    # "userIds":[I
    .end local v19    # "shouldGrantSignaturePermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v20    # "isPrivilegedPermissionAllowlisted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v23    # "requestedPermissionsSize":I
    .end local v25    # "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v22, "userIds":[I
    .restart local v26    # "requestedPermissionsSize":I
    .restart local v38    # "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v39    # "isPrivilegedPermissionAllowlisted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v40    # "shouldGrantSignaturePermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :catchall_19
    move-exception v0

    move-object/from16 v13, v19

    move-object/from16 v11, v22

    move/from16 v23, v26

    move-object/from16 v25, v38

    move-object/from16 v20, v39

    move-object/from16 v19, v40

    move-object/from16 v2, p4

    move/from16 v1, v17

    .end local v22    # "userIds":[I
    .end local v26    # "requestedPermissionsSize":I
    .end local v38    # "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v39    # "isPrivilegedPermissionAllowlisted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v40    # "shouldGrantSignaturePermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v11    # "userIds":[I
    .restart local v19    # "shouldGrantSignaturePermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v20    # "isPrivilegedPermissionAllowlisted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v23    # "requestedPermissionsSize":I
    .restart local v25    # "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    goto/16 :goto_26

    .end local v7    # "updatedUserIds":[I
    .end local v11    # "userIds":[I
    .end local v19    # "shouldGrantSignaturePermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v27    # "requestedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v33    # "shouldGrantInternalPermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v36    # "isPermissionPolicyInitialized":Landroid/util/SparseBooleanArray;
    .restart local v4    # "isPrivilegedPermissionAllowlisted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v6    # "requestedPermissionsSize":I
    .restart local v15    # "requestedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v20, "shouldGrantInternalPermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v22    # "userIds":[I
    .local v23, "isPermissionPolicyInitialized":Landroid/util/SparseBooleanArray;
    .local v24, "updatedUserIds":[I
    .local v30, "shouldGrantSignaturePermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :catchall_1a
    move-exception v0

    move-object/from16 v27, v15

    move-object/from16 v13, v19

    move-object/from16 v33, v20

    move-object/from16 v11, v22

    move-object/from16 v36, v23

    move-object/from16 v19, v30

    move-object/from16 v20, v4

    move/from16 v23, v6

    move-object/from16 v2, p4

    move/from16 v1, v17

    move-object/from16 v7, v24

    .end local v4    # "isPrivilegedPermissionAllowlisted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v6    # "requestedPermissionsSize":I
    .end local v15    # "requestedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v22    # "userIds":[I
    .end local v30    # "shouldGrantSignaturePermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v11    # "userIds":[I
    .restart local v19    # "shouldGrantSignaturePermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v20, "isPrivilegedPermissionAllowlisted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v23, "requestedPermissionsSize":I
    .restart local v27    # "requestedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v33    # "shouldGrantInternalPermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v36    # "isPermissionPolicyInitialized":Landroid/util/SparseBooleanArray;
    goto/16 :goto_26

    .end local v11    # "userIds":[I
    .end local v19    # "shouldGrantSignaturePermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v24    # "updatedUserIds":[I
    .end local v27    # "requestedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v33    # "shouldGrantInternalPermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v36    # "isPermissionPolicyInitialized":Landroid/util/SparseBooleanArray;
    .restart local v1    # "updatedUserIds":[I
    .restart local v4    # "isPrivilegedPermissionAllowlisted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v6    # "requestedPermissionsSize":I
    .restart local v15    # "requestedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v20, "shouldGrantInternalPermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v22    # "userIds":[I
    .local v23, "isPermissionPolicyInitialized":Landroid/util/SparseBooleanArray;
    .restart local v30    # "shouldGrantSignaturePermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :catchall_1b
    move-exception v0

    move-object/from16 v24, v1

    move-object/from16 v27, v15

    move-object/from16 v13, v19

    move-object/from16 v33, v20

    move-object/from16 v11, v22

    move-object/from16 v36, v23

    move-object/from16 v19, v30

    move-object/from16 v20, v4

    move/from16 v23, v6

    move-object/from16 v2, p4

    move/from16 v1, v17

    move-object/from16 v7, v24

    .end local v1    # "updatedUserIds":[I
    .end local v4    # "isPrivilegedPermissionAllowlisted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v6    # "requestedPermissionsSize":I
    .end local v15    # "requestedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v22    # "userIds":[I
    .end local v30    # "shouldGrantSignaturePermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v11    # "userIds":[I
    .restart local v19    # "shouldGrantSignaturePermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v20, "isPrivilegedPermissionAllowlisted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v23, "requestedPermissionsSize":I
    .restart local v24    # "updatedUserIds":[I
    .restart local v27    # "requestedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v33    # "shouldGrantInternalPermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v36    # "isPermissionPolicyInitialized":Landroid/util/SparseBooleanArray;
    goto/16 :goto_26

    .end local v11    # "userIds":[I
    .end local v19    # "shouldGrantSignaturePermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v20    # "isPrivilegedPermissionAllowlisted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v23    # "requestedPermissionsSize":I
    .end local v24    # "updatedUserIds":[I
    .end local v25    # "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v27    # "requestedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v33    # "shouldGrantInternalPermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v36    # "isPermissionPolicyInitialized":Landroid/util/SparseBooleanArray;
    .restart local v1    # "updatedUserIds":[I
    .local v3, "shouldGrantSignaturePermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v4    # "isPrivilegedPermissionAllowlisted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v6    # "requestedPermissionsSize":I
    .local v7, "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v12, "isPermissionPolicyInitialized":Landroid/util/SparseBooleanArray;
    .local v13, "shouldGrantInternalPermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v15    # "requestedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v22    # "userIds":[I
    :catchall_1c
    move-exception v0

    move-object/from16 v20, v4

    move/from16 v23, v6

    move-object/from16 v25, v7

    move-object/from16 v36, v12

    move-object/from16 v33, v13

    move-object/from16 v27, v15

    move-object/from16 v13, v19

    move-object/from16 v11, v22

    move-object/from16 v19, v3

    move-object/from16 v2, p4

    move-object v7, v1

    move/from16 v1, v17

    .end local v3    # "shouldGrantSignaturePermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v4    # "isPrivilegedPermissionAllowlisted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v6    # "requestedPermissionsSize":I
    .end local v7    # "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v12    # "isPermissionPolicyInitialized":Landroid/util/SparseBooleanArray;
    .end local v13    # "shouldGrantInternalPermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v15    # "requestedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v22    # "userIds":[I
    .restart local v11    # "userIds":[I
    .restart local v19    # "shouldGrantSignaturePermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v20    # "isPrivilegedPermissionAllowlisted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v23    # "requestedPermissionsSize":I
    .restart local v25    # "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v27    # "requestedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v33    # "shouldGrantInternalPermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v36    # "isPermissionPolicyInitialized":Landroid/util/SparseBooleanArray;
    goto/16 :goto_26

    .end local v11    # "userIds":[I
    .end local v19    # "shouldGrantSignaturePermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v20    # "isPrivilegedPermissionAllowlisted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v23    # "requestedPermissionsSize":I
    .end local v25    # "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v27    # "requestedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v33    # "shouldGrantInternalPermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v36    # "isPermissionPolicyInitialized":Landroid/util/SparseBooleanArray;
    .restart local v3    # "shouldGrantSignaturePermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v4    # "isPrivilegedPermissionAllowlisted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v5, "userIds":[I
    .restart local v6    # "requestedPermissionsSize":I
    .restart local v7    # "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v12    # "isPermissionPolicyInitialized":Landroid/util/SparseBooleanArray;
    .restart local v13    # "shouldGrantInternalPermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v15    # "requestedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_1d
    move-exception v0

    move-object/from16 v20, v4

    move-object v11, v5

    move/from16 v23, v6

    move-object/from16 v25, v7

    move-object/from16 v36, v12

    move-object/from16 v33, v13

    move-object/from16 v27, v15

    move-object/from16 v13, v19

    move-object/from16 v19, v3

    move-object/from16 v2, p4

    move-object v7, v1

    move/from16 v1, v17

    .end local v3    # "shouldGrantSignaturePermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v4    # "isPrivilegedPermissionAllowlisted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v5    # "userIds":[I
    .end local v6    # "requestedPermissionsSize":I
    .end local v7    # "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v12    # "isPermissionPolicyInitialized":Landroid/util/SparseBooleanArray;
    .end local v13    # "shouldGrantInternalPermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v15    # "requestedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v11    # "userIds":[I
    .restart local v19    # "shouldGrantSignaturePermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v20    # "isPrivilegedPermissionAllowlisted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v23    # "requestedPermissionsSize":I
    .restart local v25    # "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v27    # "requestedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v33    # "shouldGrantInternalPermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v36    # "isPermissionPolicyInitialized":Landroid/util/SparseBooleanArray;
    goto :goto_26

    .end local v11    # "userIds":[I
    .end local v19    # "shouldGrantSignaturePermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v20    # "isPrivilegedPermissionAllowlisted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v23    # "requestedPermissionsSize":I
    .end local v25    # "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v27    # "requestedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v33    # "shouldGrantInternalPermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v36    # "isPermissionPolicyInitialized":Landroid/util/SparseBooleanArray;
    .restart local v3    # "shouldGrantSignaturePermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v4    # "isPrivilegedPermissionAllowlisted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v5    # "userIds":[I
    .restart local v6    # "requestedPermissionsSize":I
    .restart local v7    # "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v12    # "isPermissionPolicyInitialized":Landroid/util/SparseBooleanArray;
    .restart local v13    # "shouldGrantInternalPermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v15    # "requestedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_57
    move-object/from16 v20, v4

    move-object v11, v5

    move/from16 v23, v6

    move-object/from16 v25, v7

    move-object/from16 v36, v12

    move-object/from16 v33, v13

    move-object/from16 v27, v15

    move-object/from16 v13, v19

    move-object/from16 v19, v3

    .end local v3    # "shouldGrantSignaturePermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v4    # "isPrivilegedPermissionAllowlisted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v5    # "userIds":[I
    .end local v6    # "requestedPermissionsSize":I
    .end local v7    # "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v12    # "isPermissionPolicyInitialized":Landroid/util/SparseBooleanArray;
    .end local v13    # "shouldGrantInternalPermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v15    # "requestedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v11    # "userIds":[I
    .restart local v19    # "shouldGrantSignaturePermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v20    # "isPrivilegedPermissionAllowlisted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v23    # "requestedPermissionsSize":I
    .restart local v25    # "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v27    # "requestedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v33    # "shouldGrantInternalPermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v36    # "isPermissionPolicyInitialized":Landroid/util/SparseBooleanArray;
    :try_start_2e
    monitor-exit v13
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_1e

    .line 3022
    invoke-direct {v8, v9, v10, v11, v1}, Lcom/android/server/pm/permission/PermissionManagerService;->checkIfLegacyStorageOpsNeedToBeUpdated(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Z[I[I)[I

    move-result-object v0

    .line 3030
    .end local v1    # "updatedUserIds":[I
    .local v0, "updatedUserIds":[I
    move-object/from16 v2, p4

    if-eqz v2, :cond_58

    .line 3031
    move/from16 v3, v17

    .end local v17    # "runtimePermissionsRevoked":Z
    .local v3, "runtimePermissionsRevoked":Z
    invoke-virtual {v2, v0, v3}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCallback;->onPermissionUpdated([IZ)V

    goto :goto_24

    .line 3030
    .end local v3    # "runtimePermissionsRevoked":Z
    .restart local v17    # "runtimePermissionsRevoked":Z
    :cond_58
    move/from16 v3, v17

    .line 3034
    .end local v17    # "runtimePermissionsRevoked":Z
    .restart local v3    # "runtimePermissionsRevoked":Z
    :goto_24
    array-length v1, v0

    const/4 v15, 0x0

    :goto_25
    if-ge v15, v1, :cond_59

    aget v4, v0, v15

    .line 3035
    .local v4, "userId":I
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v8, v5, v4}, Lcom/android/server/pm/permission/PermissionManagerService;->notifyRuntimePermissionStateChanged(Ljava/lang/String;I)V

    .line 3034
    .end local v4    # "userId":I
    add-int/lit8 v15, v15, 0x1

    goto :goto_25

    .line 3037
    :cond_59
    return-void

    .line 3020
    .end local v0    # "updatedUserIds":[I
    .end local v3    # "runtimePermissionsRevoked":Z
    .restart local v1    # "updatedUserIds":[I
    .restart local v17    # "runtimePermissionsRevoked":Z
    :catchall_1e
    move-exception v0

    move-object/from16 v2, p4

    move/from16 v3, v17

    move-object v7, v1

    move v1, v3

    .end local v17    # "runtimePermissionsRevoked":Z
    .restart local v3    # "runtimePermissionsRevoked":Z
    goto :goto_26

    .end local v1    # "updatedUserIds":[I
    .end local v11    # "userIds":[I
    .end local v19    # "shouldGrantSignaturePermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v20    # "isPrivilegedPermissionAllowlisted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v23    # "requestedPermissionsSize":I
    .end local v25    # "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v27    # "requestedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v33    # "shouldGrantInternalPermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v36    # "isPermissionPolicyInitialized":Landroid/util/SparseBooleanArray;
    .local v3, "shouldGrantSignaturePermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v4, "isPrivilegedPermissionAllowlisted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v5    # "userIds":[I
    .restart local v6    # "requestedPermissionsSize":I
    .restart local v7    # "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v12    # "isPermissionPolicyInitialized":Landroid/util/SparseBooleanArray;
    .restart local v13    # "shouldGrantInternalPermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v15    # "requestedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v17    # "runtimePermissionsRevoked":Z
    .local v18, "updatedUserIds":[I
    :catchall_1f
    move-exception v0

    move-object/from16 v19, v3

    move-object/from16 v20, v4

    move-object v11, v5

    move/from16 v23, v6

    move-object/from16 v25, v7

    move-object/from16 v36, v12

    move-object/from16 v33, v13

    move-object/from16 v27, v15

    move-object v13, v2

    move-object/from16 v2, p4

    move/from16 v1, v17

    move-object/from16 v7, v18

    .end local v3    # "shouldGrantSignaturePermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v4    # "isPrivilegedPermissionAllowlisted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v5    # "userIds":[I
    .end local v6    # "requestedPermissionsSize":I
    .end local v12    # "isPermissionPolicyInitialized":Landroid/util/SparseBooleanArray;
    .end local v13    # "shouldGrantInternalPermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v15    # "requestedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v17    # "runtimePermissionsRevoked":Z
    .end local v18    # "updatedUserIds":[I
    .local v1, "runtimePermissionsRevoked":Z
    .local v7, "updatedUserIds":[I
    .restart local v11    # "userIds":[I
    .restart local v19    # "shouldGrantSignaturePermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v20    # "isPrivilegedPermissionAllowlisted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v23    # "requestedPermissionsSize":I
    .restart local v25    # "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v27    # "requestedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v33    # "shouldGrantInternalPermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v36    # "isPermissionPolicyInitialized":Landroid/util/SparseBooleanArray;
    :goto_26
    :try_start_2f
    monitor-exit v13
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_20

    throw v0

    :catchall_20
    move-exception v0

    goto :goto_26
.end method

.method private restoreRuntimePermissions([BI)V
    .locals 2
    .param p1, "backup"    # [B
    .param p2, "userId"    # I

    .line 2072
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2073
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mHasNoDelayedPermBackup:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 2074
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2075
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionControllerManager:Landroid/permission/PermissionControllerManager;

    .line 2076
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    .line 2075
    invoke-virtual {v0, p1, v1}, Landroid/permission/PermissionControllerManager;->stageAndApplyRuntimePermissionsBackup([BLandroid/os/UserHandle;)V

    .line 2077
    return-void

    .line 2074
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private revokePermissionFromPackageForUser(Ljava/lang/String;Ljava/lang/String;ZILcom/android/server/pm/permission/PermissionManagerService$PermissionCallback;)V
    .locals 10
    .param p1, "pName"    # Ljava/lang/String;
    .param p2, "permissionName"    # Ljava/lang/String;
    .param p3, "overridePolicy"    # Z
    .param p4, "userId"    # I
    .param p5, "callback"    # Lcom/android/server/pm/permission/PermissionManagerService$PermissionCallback;

    .line 4287
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 4288
    const/4 v1, 0x0

    const/16 v2, 0x3e8

    invoke-virtual {v0, p1, v1, v2, v1}, Landroid/content/pm/PackageManagerInternal;->getApplicationInfo(Ljava/lang/String;III)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 4290
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x17

    if-ge v1, v2, :cond_0

    .line 4292
    return-void

    .line 4295
    :cond_0
    invoke-direct {p0, p1, p2, p4}, Lcom/android/server/pm/permission/PermissionManagerService;->checkPermissionImpl(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_1

    .line 4298
    const/16 v6, 0x3e8

    const/4 v8, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v7, p4

    move-object v9, p5

    :try_start_0
    invoke-direct/range {v2 .. v9}, Lcom/android/server/pm/permission/PermissionManagerService;->revokeRuntimePermissionInternal(Ljava/lang/String;Ljava/lang/String;ZIILjava/lang/String;Lcom/android/server/pm/permission/PermissionManagerService$PermissionCallback;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4311
    goto :goto_0

    .line 4304
    :catch_0
    move-exception v1

    .line 4305
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to revoke "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PackageManager"

    invoke-static {v3, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4313
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :cond_1
    :goto_0
    return-void
.end method

.method private revokePermissionsNoLongerImplicitLocked(Lcom/android/server/pm/permission/UidPermissionState;Lcom/android/server/pm/parsing/pkg/AndroidPackage;I[I)[I
    .locals 9
    .param p1, "ps"    # Lcom/android/server/pm/permission/UidPermissionState;
    .param p2, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p3, "userId"    # I
    .param p4, "updatedUserIds"    # [I

    .line 3063
    invoke-interface {p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 3064
    .local v0, "pkgName":Ljava/lang/String;
    invoke-interface {p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x17

    if-lt v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    .line 3067
    .local v1, "supportsRuntimePermissions":Z
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/pm/permission/UidPermissionState;->getGrantedPermissions()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 3068
    .local v4, "permission":Ljava/lang/String;
    invoke-interface {p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 3069
    invoke-interface {p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getImplicitPermissions()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 3070
    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v5, v4}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v5

    .line 3071
    .local v5, "bp":Lcom/android/server/pm/permission/Permission;
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lcom/android/server/pm/permission/Permission;->isRuntime()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 3072
    invoke-virtual {p1, v4}, Lcom/android/server/pm/permission/UidPermissionState;->getPermissionFlags(Ljava/lang/String;)I

    move-result v6

    .line 3074
    .local v6, "flags":I
    and-int/lit16 v7, v6, 0x80

    if-eqz v7, :cond_2

    .line 3076
    const/16 v7, 0x80

    .line 3078
    .local v7, "flagsToRemove":I
    and-int/lit8 v8, v6, 0x34

    if-nez v8, :cond_1

    if-eqz v1, :cond_1

    .line 3080
    invoke-virtual {p1, v5}, Lcom/android/server/pm/permission/UidPermissionState;->revokePermission(Lcom/android/server/pm/permission/Permission;)Z

    .line 3088
    or-int/lit8 v7, v7, 0x3

    .line 3091
    :cond_1
    invoke-virtual {p1, v5, v7, v2}, Lcom/android/server/pm/permission/UidPermissionState;->updatePermissionFlags(Lcom/android/server/pm/permission/Permission;II)Z

    .line 3092
    invoke-static {p4, p3}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object p4

    .line 3096
    .end local v4    # "permission":Ljava/lang/String;
    .end local v5    # "bp":Lcom/android/server/pm/permission/Permission;
    .end local v6    # "flags":I
    .end local v7    # "flagsToRemove":I
    :cond_2
    goto :goto_1

    .line 3098
    :cond_3
    return-object p4
.end method

.method private revokeRuntimePermissionInternal(Ljava/lang/String;Ljava/lang/String;ZIILjava/lang/String;Lcom/android/server/pm/permission/PermissionManagerService$PermissionCallback;)V
    .locals 17
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permName"    # Ljava/lang/String;
    .param p3, "overridePolicy"    # Z
    .param p4, "callingUid"    # I
    .param p5, "userId"    # I
    .param p6, "reason"    # Ljava/lang/String;
    .param p7, "callback"    # Lcom/android/server/pm/permission/PermissionManagerService$PermissionCallback;

    .line 1603
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move/from16 v10, p4

    move/from16 v11, p5

    move-object/from16 v12, p7

    iget-object v0, v7, Lcom/android/server/pm/permission/PermissionManagerService;->mUserManagerInt:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v0, v11}, Lcom/android/server/pm/UserManagerInternal;->exists(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1604
    const-string v0, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No such user:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1605
    return-void

    .line 1608
    :cond_0
    iget-object v0, v7, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.REVOKE_RUNTIME_PERMISSIONS"

    const-string v2, "revokeRuntimePermission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1612
    const/4 v4, 0x1

    const/4 v5, 0x1

    const-string v6, "revokeRuntimePermission"

    move-object/from16 v1, p0

    move/from16 v2, p4

    move/from16 v3, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/server/pm/permission/PermissionManagerService;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 1617
    iget-object v0, v7, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, v8}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v1

    .line 1618
    .local v1, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-nez v1, :cond_1

    .line 1619
    const-string v0, "PackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1620
    return-void

    .line 1622
    :cond_1
    iget-object v0, v7, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, v1, v10, v11}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Lcom/android/server/pm/parsing/pkg/AndroidPackage;II)Z

    move-result v0

    if-nez v0, :cond_16

    .line 1627
    iget-object v2, v7, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1628
    :try_start_0
    iget-object v0, v7, Lcom/android/server/pm/permission/PermissionManagerService;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v0, v9}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v0

    .line 1629
    .local v0, "permission":Lcom/android/server/pm/permission/Permission;
    if-eqz v0, :cond_15

    .line 1632
    invoke-virtual {v0}, Lcom/android/server/pm/permission/Permission;->isRole()Z

    move-result v3

    .line 1633
    .end local v0    # "permission":Lcom/android/server/pm/permission/Permission;
    .local v3, "isRolePermission":Z
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 1634
    if-eqz v3, :cond_2

    .line 1635
    invoke-direct {v7, v10}, Lcom/android/server/pm/permission/PermissionManagerService;->mayManageRolePermission(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    move v4, v0

    .line 1638
    .local v4, "mayRevokeRolePermission":Z
    iget-object v5, v7, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1639
    :try_start_1
    iget-object v0, v7, Lcom/android/server/pm/permission/PermissionManagerService;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v0, v9}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v0

    .line 1640
    .local v0, "bp":Lcom/android/server/pm/permission/Permission;
    if-eqz v0, :cond_14

    .line 1644
    invoke-virtual {v0}, Lcom/android/server/pm/permission/Permission;->isRuntime()Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 1645
    .local v2, "isRuntimePermission":Z
    if-nez v2, :cond_6

    :try_start_2
    invoke-virtual {v0}, Lcom/android/server/pm/permission/Permission;->isDevelopment()Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_1

    .line 1647
    :cond_3
    invoke-virtual {v0}, Lcom/android/server/pm/permission/Permission;->isRole()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1648
    if-eqz v4, :cond_4

    goto :goto_1

    .line 1649
    :cond_4
    new-instance v6, Ljava/lang/SecurityException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Permission "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " is managed by role"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v6, v13}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v1    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local v3    # "isRolePermission":Z
    .end local v4    # "mayRevokeRolePermission":Z
    .end local p0    # "this":Lcom/android/server/pm/permission/PermissionManagerService;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "permName":Ljava/lang/String;
    .end local p3    # "overridePolicy":Z
    .end local p4    # "callingUid":I
    .end local p5    # "userId":I
    .end local p6    # "reason":Ljava/lang/String;
    .end local p7    # "callback":Lcom/android/server/pm/permission/PermissionManagerService$PermissionCallback;
    throw v6

    .line 1652
    .restart local v1    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .restart local v3    # "isRolePermission":Z
    .restart local v4    # "mayRevokeRolePermission":Z
    .restart local p0    # "this":Lcom/android/server/pm/permission/PermissionManagerService;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "permName":Ljava/lang/String;
    .restart local p3    # "overridePolicy":Z
    .restart local p4    # "callingUid":I
    .restart local p5    # "userId":I
    .restart local p6    # "reason":Ljava/lang/String;
    .restart local p7    # "callback":Lcom/android/server/pm/permission/PermissionManagerService$PermissionCallback;
    :cond_5
    new-instance v6, Ljava/lang/SecurityException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Permission "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " requested by "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1653
    invoke-interface {v1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " is not a changeable permission type"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v6, v13}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v1    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local v3    # "isRolePermission":Z
    .end local v4    # "mayRevokeRolePermission":Z
    .end local p0    # "this":Lcom/android/server/pm/permission/PermissionManagerService;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "permName":Ljava/lang/String;
    .end local p3    # "overridePolicy":Z
    .end local p4    # "callingUid":I
    .end local p5    # "userId":I
    .end local p6    # "reason":Ljava/lang/String;
    .end local p7    # "callback":Lcom/android/server/pm/permission/PermissionManagerService$PermissionCallback;
    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1696
    .end local v0    # "bp":Lcom/android/server/pm/permission/Permission;
    .end local v2    # "isRuntimePermission":Z
    .restart local v1    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .restart local v3    # "isRolePermission":Z
    .restart local v4    # "mayRevokeRolePermission":Z
    .restart local p0    # "this":Lcom/android/server/pm/permission/PermissionManagerService;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "permName":Ljava/lang/String;
    .restart local p3    # "overridePolicy":Z
    .restart local p4    # "callingUid":I
    .restart local p5    # "userId":I
    .restart local p6    # "reason":Ljava/lang/String;
    .restart local p7    # "callback":Lcom/android/server/pm/permission/PermissionManagerService$PermissionCallback;
    :catchall_0
    move-exception v0

    move/from16 v16, v3

    move-object/from16 v3, p6

    goto/16 :goto_6

    .line 1656
    .restart local v0    # "bp":Lcom/android/server/pm/permission/Permission;
    .restart local v2    # "isRuntimePermission":Z
    :cond_6
    :goto_1
    :try_start_3
    invoke-direct {v7, v1, v11}, Lcom/android/server/pm/permission/PermissionManagerService;->getUidStateLocked(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)Lcom/android/server/pm/permission/UidPermissionState;

    move-result-object v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1657
    .local v6, "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    if-nez v6, :cond_7

    .line 1658
    :try_start_4
    const-string v13, "PackageManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Missing permissions state for "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " and user "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1660
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return-void

    .line 1663
    :cond_7
    :try_start_5
    invoke-virtual {v6, v9}, Lcom/android/server/pm/permission/UidPermissionState;->hasPermissionState(Ljava/lang/String;)Z

    move-result v13
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-nez v13, :cond_9

    .line 1664
    :try_start_6
    invoke-interface {v1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    goto :goto_2

    .line 1665
    :cond_8
    new-instance v13, Ljava/lang/SecurityException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Package "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " has not requested permission "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v1    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local v3    # "isRolePermission":Z
    .end local v4    # "mayRevokeRolePermission":Z
    .end local p0    # "this":Lcom/android/server/pm/permission/PermissionManagerService;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "permName":Ljava/lang/String;
    .end local p3    # "overridePolicy":Z
    .end local p4    # "callingUid":I
    .end local p5    # "userId":I
    .end local p6    # "reason":Ljava/lang/String;
    .end local p7    # "callback":Lcom/android/server/pm/permission/PermissionManagerService$PermissionCallback;
    throw v13
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1673
    .restart local v1    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .restart local v3    # "isRolePermission":Z
    .restart local v4    # "mayRevokeRolePermission":Z
    .restart local p0    # "this":Lcom/android/server/pm/permission/PermissionManagerService;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "permName":Ljava/lang/String;
    .restart local p3    # "overridePolicy":Z
    .restart local p4    # "callingUid":I
    .restart local p5    # "userId":I
    .restart local p6    # "reason":Ljava/lang/String;
    .restart local p7    # "callback":Lcom/android/server/pm/permission/PermissionManagerService$PermissionCallback;
    :cond_9
    :goto_2
    :try_start_7
    invoke-interface {v1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v13
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    const/16 v14, 0x17

    if-ge v13, v14, :cond_a

    :try_start_8
    invoke-virtual {v0}, Lcom/android/server/pm/permission/Permission;->isRuntime()Z

    move-result v13

    if-eqz v13, :cond_a

    .line 1674
    monitor-exit v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    return-void

    .line 1677
    :cond_a
    :try_start_9
    invoke-virtual {v6, v9}, Lcom/android/server/pm/permission/UidPermissionState;->getPermissionFlags(Ljava/lang/String;)I

    move-result v13

    .line 1679
    .local v13, "flags":I
    and-int/lit8 v14, v13, 0x10

    if-eqz v14, :cond_c

    .line 1680
    invoke-static {}, Landroid/os/UserHandle;->getCallingAppId()I

    move-result v14

    const/16 v15, 0x3e8

    if-ne v14, v15, :cond_b

    move/from16 v16, v3

    goto :goto_3

    .line 1681
    :cond_b
    new-instance v14, Ljava/lang/SecurityException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    move/from16 v16, v3

    .end local v3    # "isRolePermission":Z
    .local v16, "isRolePermission":Z
    :try_start_a
    const-string v3, "Non-System UID cannot revoke system fixed permission "

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " for package "

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v14, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v1    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local v4    # "mayRevokeRolePermission":Z
    .end local v16    # "isRolePermission":Z
    .end local p0    # "this":Lcom/android/server/pm/permission/PermissionManagerService;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "permName":Ljava/lang/String;
    .end local p3    # "overridePolicy":Z
    .end local p4    # "callingUid":I
    .end local p5    # "userId":I
    .end local p6    # "reason":Ljava/lang/String;
    .end local p7    # "callback":Lcom/android/server/pm/permission/PermissionManagerService$PermissionCallback;
    throw v14

    .line 1679
    .restart local v1    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .restart local v3    # "isRolePermission":Z
    .restart local v4    # "mayRevokeRolePermission":Z
    .restart local p0    # "this":Lcom/android/server/pm/permission/PermissionManagerService;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "permName":Ljava/lang/String;
    .restart local p3    # "overridePolicy":Z
    .restart local p4    # "callingUid":I
    .restart local p5    # "userId":I
    .restart local p6    # "reason":Ljava/lang/String;
    .restart local p7    # "callback":Lcom/android/server/pm/permission/PermissionManagerService$PermissionCallback;
    :cond_c
    move/from16 v16, v3

    .line 1684
    .end local v3    # "isRolePermission":Z
    .restart local v16    # "isRolePermission":Z
    :goto_3
    if-nez p3, :cond_e

    and-int/lit8 v3, v13, 0x4

    if-nez v3, :cond_d

    goto :goto_4

    .line 1685
    :cond_d
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Cannot revoke policy fixed permission "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " for package "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v3, v14}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v1    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local v4    # "mayRevokeRolePermission":Z
    .end local v16    # "isRolePermission":Z
    .end local p0    # "this":Lcom/android/server/pm/permission/PermissionManagerService;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "permName":Ljava/lang/String;
    .end local p3    # "overridePolicy":Z
    .end local p4    # "callingUid":I
    .end local p5    # "userId":I
    .end local p6    # "reason":Ljava/lang/String;
    .end local p7    # "callback":Lcom/android/server/pm/permission/PermissionManagerService$PermissionCallback;
    throw v3

    .line 1693
    .restart local v1    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .restart local v4    # "mayRevokeRolePermission":Z
    .restart local v16    # "isRolePermission":Z
    .restart local p0    # "this":Lcom/android/server/pm/permission/PermissionManagerService;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "permName":Ljava/lang/String;
    .restart local p3    # "overridePolicy":Z
    .restart local p4    # "callingUid":I
    .restart local p5    # "userId":I
    .restart local p6    # "reason":Ljava/lang/String;
    .restart local p7    # "callback":Lcom/android/server/pm/permission/PermissionManagerService$PermissionCallback;
    :cond_e
    :goto_4
    invoke-virtual {v6, v0}, Lcom/android/server/pm/permission/UidPermissionState;->revokePermission(Lcom/android/server/pm/permission/Permission;)Z

    move-result v3

    if-nez v3, :cond_f

    .line 1694
    monitor-exit v5

    return-void

    .line 1696
    .end local v0    # "bp":Lcom/android/server/pm/permission/Permission;
    .end local v6    # "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    .end local v13    # "flags":I
    :cond_f
    monitor-exit v5
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 1698
    if-eqz v2, :cond_10

    .line 1699
    const/16 v0, 0x4dd

    invoke-direct {v7, v0, v9, v8}, Lcom/android/server/pm/permission/PermissionManagerService;->logPermission(ILjava/lang/String;Ljava/lang/String;)V

    .line 1702
    :cond_10
    if-eqz v12, :cond_12

    .line 1703
    if-eqz v2, :cond_11

    .line 1704
    invoke-interface {v1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUid()I

    move-result v0

    invoke-static {v11, v0}, Landroid/os/UserHandle;->getUid(II)I

    move-result v0

    move-object/from16 v3, p6

    invoke-virtual {v12, v0, v11, v3}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCallback;->onPermissionRevoked(IILjava/lang/String;)V

    goto :goto_5

    .line 1707
    :cond_11
    move-object/from16 v3, p6

    iget-object v0, v7, Lcom/android/server/pm/permission/PermissionManagerService;->mDefaultPermissionCallback:Lcom/android/server/pm/permission/PermissionManagerService$PermissionCallback;

    invoke-virtual {v0}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCallback;->onInstallPermissionRevoked()V

    goto :goto_5

    .line 1702
    :cond_12
    move-object/from16 v3, p6

    .line 1711
    :goto_5
    if-eqz v2, :cond_13

    .line 1712
    invoke-direct {v7, v8, v11}, Lcom/android/server/pm/permission/PermissionManagerService;->notifyRuntimePermissionStateChanged(Ljava/lang/String;I)V

    .line 1714
    :cond_13
    return-void

    .line 1696
    .end local v2    # "isRuntimePermission":Z
    :catchall_1
    move-exception v0

    move-object/from16 v3, p6

    goto :goto_6

    .line 1641
    .end local v16    # "isRolePermission":Z
    .restart local v0    # "bp":Lcom/android/server/pm/permission/Permission;
    .restart local v3    # "isRolePermission":Z
    :cond_14
    move/from16 v16, v3

    move-object/from16 v3, p6

    .end local v3    # "isRolePermission":Z
    .restart local v16    # "isRolePermission":Z
    :try_start_b
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unknown permission: "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v1    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local v4    # "mayRevokeRolePermission":Z
    .end local v16    # "isRolePermission":Z
    .end local p0    # "this":Lcom/android/server/pm/permission/PermissionManagerService;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "permName":Ljava/lang/String;
    .end local p3    # "overridePolicy":Z
    .end local p4    # "callingUid":I
    .end local p5    # "userId":I
    .end local p6    # "reason":Ljava/lang/String;
    .end local p7    # "callback":Lcom/android/server/pm/permission/PermissionManagerService$PermissionCallback;
    throw v2

    .line 1696
    .end local v0    # "bp":Lcom/android/server/pm/permission/Permission;
    .restart local v1    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .restart local v3    # "isRolePermission":Z
    .restart local v4    # "mayRevokeRolePermission":Z
    .restart local p0    # "this":Lcom/android/server/pm/permission/PermissionManagerService;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "permName":Ljava/lang/String;
    .restart local p3    # "overridePolicy":Z
    .restart local p4    # "callingUid":I
    .restart local p5    # "userId":I
    .restart local p6    # "reason":Ljava/lang/String;
    .restart local p7    # "callback":Lcom/android/server/pm/permission/PermissionManagerService$PermissionCallback;
    :catchall_2
    move-exception v0

    move/from16 v16, v3

    move-object/from16 v3, p6

    .end local v3    # "isRolePermission":Z
    .restart local v16    # "isRolePermission":Z
    :goto_6
    monitor-exit v5
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    throw v0

    :catchall_3
    move-exception v0

    goto :goto_6

    .line 1630
    .end local v4    # "mayRevokeRolePermission":Z
    .end local v16    # "isRolePermission":Z
    .local v0, "permission":Lcom/android/server/pm/permission/Permission;
    :cond_15
    move-object/from16 v3, p6

    :try_start_c
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown permission: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v1    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local p0    # "this":Lcom/android/server/pm/permission/PermissionManagerService;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "permName":Ljava/lang/String;
    .end local p3    # "overridePolicy":Z
    .end local p4    # "callingUid":I
    .end local p5    # "userId":I
    .end local p6    # "reason":Ljava/lang/String;
    .end local p7    # "callback":Lcom/android/server/pm/permission/PermissionManagerService$PermissionCallback;
    throw v4

    .line 1633
    .end local v0    # "permission":Lcom/android/server/pm/permission/Permission;
    .restart local v1    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .restart local p0    # "this":Lcom/android/server/pm/permission/PermissionManagerService;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "permName":Ljava/lang/String;
    .restart local p3    # "overridePolicy":Z
    .restart local p4    # "callingUid":I
    .restart local p5    # "userId":I
    .restart local p6    # "reason":Ljava/lang/String;
    .restart local p7    # "callback":Lcom/android/server/pm/permission/PermissionManagerService$PermissionCallback;
    :catchall_4
    move-exception v0

    move-object/from16 v3, p6

    :goto_7
    monitor-exit v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    throw v0

    :catchall_5
    move-exception v0

    goto :goto_7

    .line 1623
    :cond_16
    move-object/from16 v3, p6

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown package: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private revokeRuntimePermissionsIfGroupChangedInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .locals 21
    .param p1, "newPackage"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "oldPackage"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 2238
    move-object/from16 v8, p0

    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPermissions()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v9

    .line 2239
    .local v9, "numOldPackagePermissions":I
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0, v9}, Landroid/util/ArrayMap;-><init>(I)V

    move-object v10, v0

    .line 2242
    .local v10, "oldPermissionNameToGroupName":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v9, :cond_1

    .line 2243
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPermissions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/parsing/component/ParsedPermission;

    .line 2245
    .local v1, "permission":Landroid/content/pm/parsing/component/ParsedPermission;
    invoke-virtual {v1}, Landroid/content/pm/parsing/component/ParsedPermission;->getParsedPermissionGroup()Landroid/content/pm/parsing/component/ParsedPermissionGroup;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2246
    invoke-virtual {v1}, Landroid/content/pm/parsing/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v2

    .line 2247
    invoke-virtual {v1}, Landroid/content/pm/parsing/component/ParsedPermission;->getParsedPermissionGroup()Landroid/content/pm/parsing/component/ParsedPermissionGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/parsing/component/ParsedPermissionGroup;->getName()Ljava/lang/String;

    move-result-object v3

    .line 2246
    invoke-virtual {v10, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2242
    .end local v1    # "permission":Landroid/content/pm/parsing/component/ParsedPermission;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2251
    .end local v0    # "i":I
    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    .line 2252
    .local v11, "callingUid":I
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPermissions()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v12

    .line 2253
    .local v12, "numNewPackagePermissions":I
    const/4 v0, 0x0

    move v13, v0

    .local v13, "newPermissionNum":I
    :goto_1
    if-ge v13, v12, :cond_6

    .line 2255
    nop

    .line 2256
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPermissions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/content/pm/parsing/component/ParsedPermission;

    .line 2257
    .local v14, "newPermission":Landroid/content/pm/parsing/component/ParsedPermission;
    invoke-virtual {v14}, Landroid/content/pm/parsing/component/ParsedPermission;->getProtection()I

    move-result v15

    .line 2259
    .local v15, "newProtection":I
    and-int/lit8 v0, v15, 0x1

    if-eqz v0, :cond_5

    .line 2260
    invoke-virtual {v14}, Landroid/content/pm/parsing/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v7

    .line 2262
    .local v7, "permissionName":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/content/pm/parsing/component/ParsedPermission;->getParsedPermissionGroup()Landroid/content/pm/parsing/component/ParsedPermissionGroup;

    move-result-object v0

    if-nez v0, :cond_2

    .line 2263
    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {v14}, Landroid/content/pm/parsing/component/ParsedPermission;->getParsedPermissionGroup()Landroid/content/pm/parsing/component/ParsedPermissionGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/parsing/component/ParsedPermissionGroup;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_2
    move-object v6, v0

    .line 2264
    .local v6, "newPermissionGroupName":Ljava/lang/String;
    invoke-virtual {v10, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    .line 2267
    .local v5, "oldPermissionGroupName":Ljava/lang/String;
    if-eqz v6, :cond_4

    .line 2268
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2269
    iget-object v0, v8, Lcom/android/server/pm/permission/PermissionManagerService;->mUserManagerInt:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    move-result-object v16

    .line 2270
    .local v16, "userIds":[I
    iget-object v4, v8, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    new-instance v3, Lcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda16;

    move-object v0, v3

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    move-object v8, v3

    move-object v3, v7

    move/from16 v17, v9

    move-object v9, v4

    .end local v9    # "numOldPackagePermissions":I
    .local v17, "numOldPackagePermissions":I
    move-object/from16 v4, p1

    move-object/from16 v18, v5

    .end local v5    # "oldPermissionGroupName":Ljava/lang/String;
    .local v18, "oldPermissionGroupName":Ljava/lang/String;
    move-object/from16 v19, v6

    .end local v6    # "newPermissionGroupName":Ljava/lang/String;
    .local v19, "newPermissionGroupName":Ljava/lang/String;
    move-object/from16 v20, v7

    .end local v7    # "permissionName":Ljava/lang/String;
    .local v20, "permissionName":Ljava/lang/String;
    move v7, v11

    invoke-direct/range {v0 .. v7}, Lcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda16;-><init>(Lcom/android/server/pm/permission/PermissionManagerService;[ILjava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v9, v8}, Landroid/content/pm/PackageManagerInternal;->forEachPackage(Ljava/util/function/Consumer;)V

    goto :goto_3

    .line 2268
    .end local v16    # "userIds":[I
    .end local v17    # "numOldPackagePermissions":I
    .end local v18    # "oldPermissionGroupName":Ljava/lang/String;
    .end local v19    # "newPermissionGroupName":Ljava/lang/String;
    .end local v20    # "permissionName":Ljava/lang/String;
    .restart local v5    # "oldPermissionGroupName":Ljava/lang/String;
    .restart local v6    # "newPermissionGroupName":Ljava/lang/String;
    .restart local v7    # "permissionName":Ljava/lang/String;
    .restart local v9    # "numOldPackagePermissions":I
    :cond_3
    move-object/from16 v18, v5

    move-object/from16 v19, v6

    move-object/from16 v20, v7

    move/from16 v17, v9

    .end local v5    # "oldPermissionGroupName":Ljava/lang/String;
    .end local v6    # "newPermissionGroupName":Ljava/lang/String;
    .end local v7    # "permissionName":Ljava/lang/String;
    .end local v9    # "numOldPackagePermissions":I
    .restart local v17    # "numOldPackagePermissions":I
    .restart local v18    # "oldPermissionGroupName":Ljava/lang/String;
    .restart local v19    # "newPermissionGroupName":Ljava/lang/String;
    .restart local v20    # "permissionName":Ljava/lang/String;
    goto :goto_3

    .line 2267
    .end local v17    # "numOldPackagePermissions":I
    .end local v18    # "oldPermissionGroupName":Ljava/lang/String;
    .end local v19    # "newPermissionGroupName":Ljava/lang/String;
    .end local v20    # "permissionName":Ljava/lang/String;
    .restart local v5    # "oldPermissionGroupName":Ljava/lang/String;
    .restart local v6    # "newPermissionGroupName":Ljava/lang/String;
    .restart local v7    # "permissionName":Ljava/lang/String;
    .restart local v9    # "numOldPackagePermissions":I
    :cond_4
    move-object/from16 v18, v5

    move-object/from16 v19, v6

    move-object/from16 v20, v7

    move/from16 v17, v9

    .end local v5    # "oldPermissionGroupName":Ljava/lang/String;
    .end local v6    # "newPermissionGroupName":Ljava/lang/String;
    .end local v7    # "permissionName":Ljava/lang/String;
    .end local v9    # "numOldPackagePermissions":I
    .restart local v17    # "numOldPackagePermissions":I
    .restart local v18    # "oldPermissionGroupName":Ljava/lang/String;
    .restart local v19    # "newPermissionGroupName":Ljava/lang/String;
    .restart local v20    # "permissionName":Ljava/lang/String;
    goto :goto_3

    .line 2259
    .end local v17    # "numOldPackagePermissions":I
    .end local v18    # "oldPermissionGroupName":Ljava/lang/String;
    .end local v19    # "newPermissionGroupName":Ljava/lang/String;
    .end local v20    # "permissionName":Ljava/lang/String;
    .restart local v9    # "numOldPackagePermissions":I
    :cond_5
    move/from16 v17, v9

    .line 2254
    .end local v9    # "numOldPackagePermissions":I
    .end local v14    # "newPermission":Landroid/content/pm/parsing/component/ParsedPermission;
    .end local v15    # "newProtection":I
    .restart local v17    # "numOldPackagePermissions":I
    :goto_3
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v8, p0

    move/from16 v9, v17

    goto :goto_1

    .line 2297
    .end local v13    # "newPermissionNum":I
    .end local v17    # "numOldPackagePermissions":I
    .restart local v9    # "numOldPackagePermissions":I
    :cond_6
    return-void
.end method

.method private revokeRuntimePermissionsIfPermissionDefinitionChangedInternal(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2307
    .local p1, "permissionsToRevoke":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mUserManagerInt:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    move-result-object v0

    .line 2308
    .local v0, "userIds":[I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 2309
    .local v1, "numPermissions":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 2311
    .local v2, "callingUid":I
    const/4 v3, 0x0

    .local v3, "permNum":I
    :goto_0
    if-ge v3, v1, :cond_2

    .line 2312
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2313
    .local v4, "permName":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 2314
    :try_start_0
    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v6, v4}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v6

    .line 2315
    .local v6, "bp":Lcom/android/server/pm/permission/Permission;
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Lcom/android/server/pm/permission/Permission;->isRuntime()Z

    move-result v7

    if-nez v7, :cond_0

    goto :goto_1

    .line 2318
    .end local v6    # "bp":Lcom/android/server/pm/permission/Permission;
    :cond_0
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2319
    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    new-instance v6, Lcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda15;

    invoke-direct {v6, p0, v0, v4, v2}, Lcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda15;-><init>(Lcom/android/server/pm/permission/PermissionManagerService;[ILjava/lang/String;I)V

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManagerInternal;->forEachPackage(Ljava/util/function/Consumer;)V

    goto :goto_2

    .line 2316
    .restart local v6    # "bp":Lcom/android/server/pm/permission/Permission;
    :cond_1
    :goto_1
    :try_start_1
    monitor-exit v5

    .line 2311
    .end local v4    # "permName":Ljava/lang/String;
    .end local v6    # "bp":Lcom/android/server/pm/permission/Permission;
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2318
    .restart local v4    # "permName":Ljava/lang/String;
    :catchall_0
    move-exception v6

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    .line 2356
    .end local v3    # "permNum":I
    .end local v4    # "permName":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private revokeSharedUserPermissionsForDeletedPackageInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/util/List;I)I
    .locals 10
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            "Ljava/util/List<",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            ">;I)I"
        }
    .end annotation

    .line 3922
    .local p2, "sharedUserPkgs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    const/16 v0, -0x2710

    if-nez p1, :cond_0

    .line 3923
    const-string v1, "PackageManager"

    const-string v2, "Trying to update info for null package. Just ignoring"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3924
    return v0

    .line 3928
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3929
    return v0

    .line 3932
    :cond_1
    const/16 v0, -0x2710

    .line 3934
    .local v0, "affectedUserId":I
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3936
    .local v2, "eachPerm":Ljava/lang/String;
    const/4 v3, 0x0

    .line 3937
    .local v3, "used":Z
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 3938
    .local v5, "sharedUserpkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-eqz v5, :cond_2

    .line 3939
    invoke-interface {v5}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 3940
    invoke-interface {v5}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 3941
    const/4 v3, 0x1

    .line 3942
    goto :goto_2

    .line 3944
    .end local v5    # "sharedUserpkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :cond_2
    goto :goto_1

    .line 3945
    :cond_3
    :goto_2
    if-eqz v3, :cond_4

    .line 3946
    goto :goto_0

    .line 3949
    :cond_4
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 3950
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 3949
    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManagerInternal;->getDisabledSystemPackage(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v4

    .line 3954
    .local v4, "disabledPs":Lcom/android/server/pm/PackageSetting;
    if-eqz v4, :cond_7

    .line 3955
    const/4 v5, 0x0

    .line 3956
    .local v5, "reqByDisabledSysPkg":Z
    iget-object v6, v4, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    invoke-interface {v6}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 3957
    .local v7, "permission":Ljava/lang/String;
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 3958
    const/4 v5, 0x1

    .line 3959
    goto :goto_4

    .line 3961
    .end local v7    # "permission":Ljava/lang/String;
    :cond_5
    goto :goto_3

    .line 3962
    :cond_6
    :goto_4
    if-eqz v5, :cond_7

    .line 3963
    goto :goto_0

    .line 3967
    .end local v5    # "reqByDisabledSysPkg":Z
    :cond_7
    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 3968
    :try_start_0
    invoke-direct {p0, p1, p3}, Lcom/android/server/pm/permission/PermissionManagerService;->getUidStateLocked(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)Lcom/android/server/pm/permission/UidPermissionState;

    move-result-object v6

    .line 3969
    .local v6, "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    if-nez v6, :cond_8

    .line 3970
    const-string v7, "PackageManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Missing permissions state for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " and user "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3972
    monitor-exit v5

    goto/16 :goto_0

    .line 3975
    :cond_8
    iget-object v7, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v7, v2}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v7

    .line 3976
    .local v7, "bp":Lcom/android/server/pm/permission/Permission;
    if-nez v7, :cond_9

    .line 3977
    monitor-exit v5

    goto/16 :goto_0

    .line 3982
    :cond_9
    invoke-virtual {v7}, Lcom/android/server/pm/permission/Permission;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/android/server/pm/permission/UidPermissionState;->removePermissionState(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-virtual {v7}, Lcom/android/server/pm/permission/Permission;->hasGids()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 3983
    move v0, p3

    .line 3985
    .end local v6    # "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    .end local v7    # "bp":Lcom/android/server/pm/permission/Permission;
    :cond_a
    monitor-exit v5

    .line 3986
    .end local v2    # "eachPerm":Ljava/lang/String;
    .end local v3    # "used":Z
    .end local v4    # "disabledPs":Lcom/android/server/pm/PackageSetting;
    goto/16 :goto_0

    .line 3985
    .restart local v2    # "eachPerm":Ljava/lang/String;
    .restart local v3    # "used":Z
    .restart local v4    # "disabledPs":Lcom/android/server/pm/PackageSetting;
    :catchall_0
    move-exception v1

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 3988
    .end local v2    # "eachPerm":Ljava/lang/String;
    .end local v3    # "used":Z
    .end local v4    # "disabledPs":Lcom/android/server/pm/PackageSetting;
    :cond_b
    return v0
.end method

.method private revokeStoragePermissionsIfScopeExpandedInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .locals 22
    .param p1, "newPackage"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "oldPackage"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 2188
    move-object/from16 v9, p0

    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v0

    const/16 v1, 0x1d

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-lt v0, v1, :cond_0

    .line 2189
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v0

    if-ge v0, v1, :cond_0

    move v0, v10

    goto :goto_0

    :cond_0
    move v0, v11

    :goto_0
    move v12, v0

    .line 2190
    .local v12, "downgradedSdk":Z
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v0

    if-ge v0, v1, :cond_1

    .line 2191
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v0

    if-lt v0, v1, :cond_1

    move v0, v10

    goto :goto_1

    :cond_1
    move v0, v11

    :goto_1
    move v13, v0

    .line 2192
    .local v13, "upgradedSdk":Z
    if-nez v13, :cond_2

    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isRequestLegacyExternalStorage()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2193
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isRequestLegacyExternalStorage()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v10

    goto :goto_2

    :cond_2
    move v0, v11

    :goto_2
    move v14, v0

    .line 2195
    .local v14, "newlyRequestsLegacy":Z
    if-nez v14, :cond_3

    if-nez v12, :cond_3

    .line 2196
    return-void

    .line 2199
    :cond_3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v15

    .line 2200
    .local v15, "callingUid":I
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/permission/PermissionManagerService;->getAllUserIds()[I

    move-result-object v8

    array-length v7, v8

    move v6, v11

    :goto_3
    if-ge v6, v7, :cond_7

    aget v5, v8, v6

    .line 2201
    .local v5, "userId":I
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    .line 2202
    .local v4, "numRequestedPermissions":I
    const/4 v0, 0x0

    move v3, v0

    .local v3, "i":I
    :goto_4
    if-ge v3, v4, :cond_6

    .line 2203
    nop

    .line 2204
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2205
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 2203
    invoke-virtual {v9, v0, v1, v11}, Lcom/android/server/pm/permission/PermissionManagerService;->getPermissionInfo(Ljava/lang/String;Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v2

    .line 2206
    .local v2, "permInfo":Landroid/content/pm/PermissionInfo;
    if-eqz v2, :cond_5

    sget-object v0, Lcom/android/server/pm/permission/PermissionManagerService;->STORAGE_PERMISSIONS:Ljava/util/List;

    iget-object v1, v2, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 2207
    move/from16 v19, v3

    move v10, v4

    move v11, v5

    move/from16 v20, v6

    move/from16 v21, v7

    move-object/from16 v16, v8

    goto/16 :goto_6

    .line 2210
    :cond_4
    const v0, 0x534e4554

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const-string v16, "171430330"

    aput-object v16, v1, v11

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUid()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v1, v10

    const/16 v16, 0x2

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Revoking permission "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v2, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " from package "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2212
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " as either the sdk downgraded "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, " or newly requested legacy full storage "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v1, v16

    .line 2210
    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2217
    :try_start_0
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v10, v2, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    const/4 v11, 0x0

    const/16 v16, 0x0

    iget-object v1, v9, Lcom/android/server/pm/permission/PermissionManagerService;->mDefaultPermissionCallback:Lcom/android/server/pm/permission/PermissionManagerService$PermissionCallback;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v17, v1

    move-object/from16 v1, p0

    move-object/from16 v18, v2

    .end local v2    # "permInfo":Landroid/content/pm/PermissionInfo;
    .local v18, "permInfo":Landroid/content/pm/PermissionInfo;
    move-object v2, v0

    move/from16 v19, v3

    .end local v3    # "i":I
    .local v19, "i":I
    move-object v3, v10

    move v10, v4

    .end local v4    # "numRequestedPermissions":I
    .local v10, "numRequestedPermissions":I
    move v4, v11

    move v11, v5

    .end local v5    # "userId":I
    .local v11, "userId":I
    move v5, v15

    move/from16 v20, v6

    move v6, v11

    move/from16 v21, v7

    move-object/from16 v7, v16

    move-object/from16 v16, v8

    move-object/from16 v8, v17

    :try_start_1
    invoke-direct/range {v1 .. v8}, Lcom/android/server/pm/permission/PermissionManagerService;->revokeRuntimePermissionInternal(Ljava/lang/String;Ljava/lang/String;ZIILjava/lang/String;Lcom/android/server/pm/permission/PermissionManagerService$PermissionCallback;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2222
    goto :goto_6

    .line 2219
    :catch_0
    move-exception v0

    goto :goto_5

    .end local v10    # "numRequestedPermissions":I
    .end local v11    # "userId":I
    .end local v18    # "permInfo":Landroid/content/pm/PermissionInfo;
    .end local v19    # "i":I
    .restart local v2    # "permInfo":Landroid/content/pm/PermissionInfo;
    .restart local v3    # "i":I
    .restart local v4    # "numRequestedPermissions":I
    .restart local v5    # "userId":I
    :catch_1
    move-exception v0

    move-object/from16 v18, v2

    move/from16 v19, v3

    move v10, v4

    move v11, v5

    move/from16 v20, v6

    move/from16 v21, v7

    move-object/from16 v16, v8

    .line 2220
    .end local v2    # "permInfo":Landroid/content/pm/PermissionInfo;
    .end local v3    # "i":I
    .end local v4    # "numRequestedPermissions":I
    .end local v5    # "userId":I
    .local v0, "e":Ljava/lang/RuntimeException;
    .restart local v10    # "numRequestedPermissions":I
    .restart local v11    # "userId":I
    .restart local v18    # "permInfo":Landroid/content/pm/PermissionInfo;
    .restart local v19    # "i":I
    :goto_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unable to revoke "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, v18

    .end local v18    # "permInfo":Landroid/content/pm/PermissionInfo;
    .restart local v2    # "permInfo":Landroid/content/pm/PermissionInfo;
    iget-object v3, v2, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " for "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2221
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " user "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2220
    const-string v3, "PackageManager"

    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 2206
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v10    # "numRequestedPermissions":I
    .end local v11    # "userId":I
    .end local v19    # "i":I
    .restart local v3    # "i":I
    .restart local v4    # "numRequestedPermissions":I
    .restart local v5    # "userId":I
    :cond_5
    move/from16 v19, v3

    move v10, v4

    move v11, v5

    move/from16 v20, v6

    move/from16 v21, v7

    move-object/from16 v16, v8

    .line 2202
    .end local v2    # "permInfo":Landroid/content/pm/PermissionInfo;
    .end local v3    # "i":I
    .end local v4    # "numRequestedPermissions":I
    .end local v5    # "userId":I
    .restart local v10    # "numRequestedPermissions":I
    .restart local v11    # "userId":I
    .restart local v19    # "i":I
    :goto_6
    add-int/lit8 v3, v19, 0x1

    move v4, v10

    move v5, v11

    move-object/from16 v8, v16

    move/from16 v6, v20

    move/from16 v7, v21

    const/4 v10, 0x1

    const/4 v11, 0x0

    .end local v19    # "i":I
    .restart local v3    # "i":I
    goto/16 :goto_4

    .end local v10    # "numRequestedPermissions":I
    .end local v11    # "userId":I
    .restart local v4    # "numRequestedPermissions":I
    .restart local v5    # "userId":I
    :cond_6
    move/from16 v19, v3

    move v10, v4

    move v11, v5

    move/from16 v20, v6

    move/from16 v21, v7

    move-object/from16 v16, v8

    .line 2200
    .end local v3    # "i":I
    .end local v4    # "numRequestedPermissions":I
    .end local v5    # "userId":I
    add-int/lit8 v6, v20, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x0

    goto/16 :goto_3

    .line 2226
    :cond_7
    return-void
.end method

.method private revokeUnusedSharedUserPermissionsLocked(Ljava/util/List;Lcom/android/server/pm/permission/UidPermissionState;)Z
    .locals 8
    .param p2, "uidState"    # Lcom/android/server/pm/permission/UidPermissionState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            ">;",
            "Lcom/android/server/pm/permission/UidPermissionState;",
            ")Z"
        }
    .end annotation

    .line 3995
    .local p1, "pkgList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 3996
    .local v0, "usedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-eqz p1, :cond_7

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_3

    .line 3999
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 4000
    .local v2, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    invoke-interface {v2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4001
    goto :goto_0

    .line 4003
    :cond_1
    invoke-interface {v2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .line 4004
    .local v3, "requestedPermCount":I
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    if-ge v4, v3, :cond_3

    .line 4005
    invoke-interface {v2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 4006
    .local v5, "permission":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v6, v5}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v6

    .line 4007
    .local v6, "bp":Lcom/android/server/pm/permission/Permission;
    if-eqz v6, :cond_2

    .line 4008
    invoke-virtual {v0, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 4004
    .end local v5    # "permission":Ljava/lang/String;
    .end local v6    # "bp":Lcom/android/server/pm/permission/Permission;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 4011
    .end local v2    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local v3    # "requestedPermCount":I
    .end local v4    # "j":I
    :cond_3
    goto :goto_0

    .line 4013
    :cond_4
    const/4 v1, 0x0

    .line 4016
    .local v1, "runtimePermissionChanged":Z
    invoke-virtual {p2}, Lcom/android/server/pm/permission/UidPermissionState;->getPermissionStates()Ljava/util/List;

    move-result-object v2

    .line 4017
    .local v2, "permissionStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/PermissionState;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 4018
    .local v3, "permissionStatesSize":I
    add-int/lit8 v4, v3, -0x1

    .local v4, "i":I
    :goto_2
    if-ltz v4, :cond_6

    .line 4019
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/permission/PermissionState;

    .line 4020
    .local v5, "permissionState":Lcom/android/server/pm/permission/PermissionState;
    invoke-virtual {v5}, Lcom/android/server/pm/permission/PermissionState;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 4021
    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v5}, Lcom/android/server/pm/permission/PermissionState;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v6

    .line 4022
    .restart local v6    # "bp":Lcom/android/server/pm/permission/Permission;
    if-eqz v6, :cond_5

    .line 4023
    invoke-virtual {v6}, Lcom/android/server/pm/permission/Permission;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Lcom/android/server/pm/permission/UidPermissionState;->removePermissionState(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {v6}, Lcom/android/server/pm/permission/Permission;->isRuntime()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 4024
    const/4 v1, 0x1

    .line 4018
    .end local v5    # "permissionState":Lcom/android/server/pm/permission/PermissionState;
    .end local v6    # "bp":Lcom/android/server/pm/permission/Permission;
    :cond_5
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 4030
    .end local v4    # "i":I
    :cond_6
    return v1

    .line 3997
    .end local v1    # "runtimePermissionChanged":Z
    .end local v2    # "permissionStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/PermissionState;>;"
    .end local v3    # "permissionStatesSize":I
    :cond_7
    :goto_3
    const/4 v1, 0x0

    return v1
.end method

.method private setAllowlistedRestrictedPermissions(Ljava/lang/String;Ljava/util/List;II)Z
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;II)Z"
        }
    .end annotation

    .line 1249
    .local p2, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1250
    const/4 v0, 0x7

    invoke-static {p3, v0}, Lcom/android/internal/util/Preconditions;->checkFlagsArgument(II)I

    .line 1254
    invoke-static {p3}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 1255
    int-to-float v0, p4

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/android/internal/util/Preconditions;->checkArgumentNonNegative(FLjava/lang/String;)F

    .line 1257
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq v0, p4, :cond_1

    .line 1258
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setAllowlistedRestrictedPermissions for user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {v0, v4, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1263
    :cond_1
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v0

    .line 1264
    .local v0, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-nez v0, :cond_2

    .line 1265
    return v1

    .line 1268
    :cond_2
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 1269
    .local v3, "callingUid":I
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    invoke-virtual {v4, v0, v3, v5}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Lcom/android/server/pm/parsing/pkg/AndroidPackage;II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1270
    return v1

    .line 1273
    :cond_3
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.WHITELIST_RESTRICTED_PERMISSIONS"

    invoke-virtual {v4, v5}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_4

    move v1, v2

    .line 1276
    .local v1, "isCallerPrivileged":Z
    :cond_4
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 1277
    invoke-virtual {v4, v0, v3}, Landroid/content/pm/PackageManagerInternal;->isCallerInstallerOfRecord(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)Z

    move-result v4

    .line 1279
    .local v4, "isCallerInstallerOnRecord":Z
    and-int/lit8 v5, p3, 0x1

    if-eqz v5, :cond_6

    if-eqz v1, :cond_5

    goto :goto_1

    .line 1280
    :cond_5
    new-instance v2, Ljava/lang/SecurityException;

    const-string v5, "Modifying system allowlist requires android.permission.WHITELIST_RESTRICTED_PERMISSIONS"

    invoke-direct {v2, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1284
    :cond_6
    :goto_1
    and-int/lit8 v5, p3, 0x4

    if-eqz v5, :cond_11

    .line 1285
    if-nez v1, :cond_8

    if-eqz v4, :cond_7

    goto :goto_2

    .line 1286
    :cond_7
    new-instance v2, Ljava/lang/SecurityException;

    const-string v5, "Modifying upgrade allowlist requires being installer on record or android.permission.WHITELIST_RESTRICTED_PERMISSIONS"

    invoke-direct {v2, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1290
    :cond_8
    :goto_2
    nop

    .line 1291
    invoke-interface {v0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerService;->getAllowlistedRestrictedPermissions(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v5

    .line 1292
    .local v5, "allowlistedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p2, :cond_d

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_9

    goto :goto_4

    .line 1298
    :cond_9
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v6

    .line 1299
    .local v6, "permissionCount":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_3
    if-ge v7, v6, :cond_e

    .line 1300
    if-eqz v5, :cond_a

    .line 1301
    invoke-interface {p2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_b

    :cond_a
    if-eqz v1, :cond_c

    .line 1299
    :cond_b
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 1303
    :cond_c
    new-instance v2, Ljava/lang/SecurityException;

    const-string v8, "Adding to upgrade allowlist requiresandroid.permission.WHITELIST_RESTRICTED_PERMISSIONS"

    invoke-direct {v2, v8}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1293
    .end local v6    # "permissionCount":I
    .end local v7    # "i":I
    :cond_d
    :goto_4
    if-eqz v5, :cond_10

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_e

    goto :goto_5

    .line 1309
    :cond_e
    and-int/lit8 v6, p3, 0x2

    if-eqz v6, :cond_11

    .line 1310
    if-nez v1, :cond_11

    if-eqz v4, :cond_f

    goto :goto_6

    .line 1311
    :cond_f
    new-instance v2, Ljava/lang/SecurityException;

    const-string v6, "Modifying installer allowlist requires being installer on record or android.permission.WHITELIST_RESTRICTED_PERMISSIONS"

    invoke-direct {v2, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1294
    :cond_10
    :goto_5
    return v2

    .line 1318
    .end local v5    # "allowlistedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_11
    :goto_6
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .line 1320
    .local v5, "identity":J
    :try_start_0
    invoke-direct {p0, v0, p2, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerService;->setAllowlistedRestrictedPermissionsInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/util/List;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1322
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1323
    nop

    .line 1325
    return v2

    .line 1322
    :catchall_0
    move-exception v2

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1323
    throw v2
.end method

.method private setAllowlistedRestrictedPermissionsInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/util/List;II)V
    .locals 27
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p3, "allowlistFlags"    # I
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;II)V"
        }
    .end annotation

    .line 3781
    .local p2, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    const/4 v0, 0x0

    .line 3782
    .local v0, "oldGrantedRestrictedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 3783
    .local v1, "updatePermissions":Z
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v14

    .line 3784
    .local v14, "permissionCount":I
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v15

    .line 3786
    .local v15, "myUid":I
    const/4 v2, 0x0

    move-object v7, v0

    move v8, v1

    move v9, v2

    .end local v0    # "oldGrantedRestrictedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v1    # "updatePermissions":Z
    .local v7, "oldGrantedRestrictedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v8, "updatePermissions":Z
    .local v9, "j":I
    :goto_0
    if-ge v9, v14, :cond_e

    .line 3787
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/lang/String;

    .line 3790
    .local v6, "permissionName":Ljava/lang/String;
    iget-object v1, v10, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3791
    :try_start_0
    iget-object v0, v10, Lcom/android/server/pm/permission/PermissionManagerService;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v0, v6}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v0

    .line 3792
    .local v0, "bp":Lcom/android/server/pm/permission/Permission;
    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/android/server/pm/permission/Permission;->isHardOrSoftRestricted()Z

    move-result v2

    if-nez v2, :cond_0

    move-object/from16 v24, v6

    move/from16 v26, v9

    goto/16 :goto_7

    .line 3796
    :cond_0
    invoke-direct {v10, v11, v13}, Lcom/android/server/pm/permission/PermissionManagerService;->getUidStateLocked(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)Lcom/android/server/pm/permission/UidPermissionState;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3797
    .local v2, "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    if-nez v2, :cond_1

    .line 3798
    :try_start_1
    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Missing permissions state for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " and user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3800
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move/from16 v26, v9

    goto/16 :goto_8

    .line 3803
    .end local v0    # "bp":Lcom/android/server/pm/permission/Permission;
    .end local v2    # "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    :catchall_0
    move-exception v0

    move-object/from16 v24, v6

    move/from16 v26, v9

    goto/16 :goto_9

    .line 3802
    .restart local v0    # "bp":Lcom/android/server/pm/permission/Permission;
    .restart local v2    # "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    :cond_1
    :try_start_2
    invoke-virtual {v2, v6}, Lcom/android/server/pm/permission/UidPermissionState;->isPermissionGranted(Ljava/lang/String;)Z

    move-result v3

    move v0, v3

    .line 3803
    .end local v2    # "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    .local v0, "isGranted":Z
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3805
    if-eqz v0, :cond_3

    .line 3806
    if-nez v7, :cond_2

    .line 3807
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    move-object v7, v1

    .line 3809
    :cond_2
    invoke-virtual {v7, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-object/from16 v16, v7

    goto :goto_1

    .line 3805
    :cond_3
    move-object/from16 v16, v7

    .line 3812
    .end local v7    # "oldGrantedRestrictedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v16, "oldGrantedRestrictedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :goto_1
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v10, v1, v6, v15, v13}, Lcom/android/server/pm/permission/PermissionManagerService;->getPermissionFlagsInternal(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v7

    .line 3815
    .local v7, "oldFlags":I
    move v1, v7

    .line 3816
    .local v1, "newFlags":I
    const/4 v2, 0x0

    .line 3817
    .local v2, "mask":I
    move/from16 v3, p3

    move/from16 v17, v3

    .line 3818
    .local v17, "allowlistFlagsCopy":I
    :goto_2
    const/4 v3, 0x1

    if-eqz v17, :cond_7

    .line 3819
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v4

    shl-int/2addr v3, v4

    .line 3820
    .local v3, "flag":I
    not-int v4, v3

    and-int v17, v17, v4

    .line 3821
    packed-switch v3, :pswitch_data_0

    :pswitch_0
    goto :goto_3

    .line 3832
    :pswitch_1
    or-int/lit16 v2, v2, 0x2000

    .line 3833
    if-eqz v12, :cond_4

    invoke-interface {v12, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 3834
    or-int/lit16 v1, v1, 0x2000

    goto :goto_3

    .line 3836
    :cond_4
    and-int/lit16 v1, v1, -0x2001

    .line 3839
    goto :goto_3

    .line 3841
    :pswitch_2
    or-int/lit16 v2, v2, 0x800

    .line 3842
    if-eqz v12, :cond_5

    invoke-interface {v12, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 3843
    or-int/lit16 v1, v1, 0x800

    goto :goto_3

    .line 3845
    :cond_5
    and-int/lit16 v1, v1, -0x801

    goto :goto_3

    .line 3823
    :pswitch_3
    or-int/lit16 v2, v2, 0x1000

    .line 3824
    if-eqz v12, :cond_6

    invoke-interface {v12, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 3825
    or-int/lit16 v1, v1, 0x1000

    goto :goto_3

    .line 3827
    :cond_6
    and-int/lit16 v1, v1, -0x1001

    .line 3830
    nop

    .line 3850
    .end local v3    # "flag":I
    :goto_3
    goto :goto_2

    .line 3852
    :cond_7
    if-ne v7, v1, :cond_8

    .line 3853
    move/from16 v26, v9

    move-object/from16 v7, v16

    goto/16 :goto_8

    .line 3856
    :cond_8
    const/16 v18, 0x1

    .line 3858
    .end local v8    # "updatePermissions":Z
    .local v18, "updatePermissions":Z
    and-int/lit16 v4, v7, 0x3800

    const/4 v5, 0x0

    if-eqz v4, :cond_9

    move v4, v3

    goto :goto_4

    :cond_9
    move v4, v5

    :goto_4
    move/from16 v19, v4

    .line 3860
    .local v19, "wasAllowlisted":Z
    and-int/lit16 v4, v1, 0x3800

    if-eqz v4, :cond_a

    goto :goto_5

    :cond_a
    move v3, v5

    :goto_5
    move/from16 v20, v3

    .line 3867
    .local v20, "isAllowlisted":Z
    and-int/lit8 v3, v7, 0x4

    if-eqz v3, :cond_b

    .line 3868
    if-nez v20, :cond_b

    if-eqz v0, :cond_b

    .line 3869
    or-int/lit8 v2, v2, 0x4

    .line 3870
    and-int/lit8 v1, v1, -0x5

    .line 3876
    :cond_b
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v3

    const/16 v4, 0x17

    if-ge v3, v4, :cond_c

    if-nez v19, :cond_c

    if-eqz v20, :cond_c

    .line 3878
    or-int/lit8 v2, v2, 0x40

    .line 3879
    or-int/lit8 v1, v1, 0x40

    move/from16 v21, v1

    move/from16 v22, v2

    goto :goto_6

    .line 3882
    :cond_c
    move/from16 v21, v1

    move/from16 v22, v2

    .end local v1    # "newFlags":I
    .end local v2    # "mask":I
    .local v21, "newFlags":I
    .local v22, "mask":I
    :goto_6
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x0

    const/16 v23, 0x0

    move-object/from16 v1, p0

    move-object v3, v6

    move/from16 v4, v22

    move/from16 v5, v21

    move-object/from16 v24, v6

    .end local v6    # "permissionName":Ljava/lang/String;
    .local v24, "permissionName":Ljava/lang/String;
    move v6, v15

    move/from16 v25, v7

    .end local v7    # "oldFlags":I
    .local v25, "oldFlags":I
    move/from16 v7, p4

    move/from16 v26, v9

    .end local v9    # "j":I
    .local v26, "j":I
    move-object/from16 v9, v23

    invoke-direct/range {v1 .. v9}, Lcom/android/server/pm/permission/PermissionManagerService;->updatePermissionFlagsInternal(Ljava/lang/String;Ljava/lang/String;IIIIZLcom/android/server/pm/permission/PermissionManagerService$PermissionCallback;)V

    move-object/from16 v7, v16

    move/from16 v8, v18

    goto :goto_8

    .line 3792
    .end local v16    # "oldGrantedRestrictedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v17    # "allowlistFlagsCopy":I
    .end local v18    # "updatePermissions":Z
    .end local v19    # "wasAllowlisted":Z
    .end local v20    # "isAllowlisted":Z
    .end local v21    # "newFlags":I
    .end local v22    # "mask":I
    .end local v24    # "permissionName":Ljava/lang/String;
    .end local v25    # "oldFlags":I
    .end local v26    # "j":I
    .local v0, "bp":Lcom/android/server/pm/permission/Permission;
    .restart local v6    # "permissionName":Ljava/lang/String;
    .local v7, "oldGrantedRestrictedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v8    # "updatePermissions":Z
    .restart local v9    # "j":I
    :cond_d
    move-object/from16 v24, v6

    move/from16 v26, v9

    .line 3793
    .end local v6    # "permissionName":Ljava/lang/String;
    .end local v9    # "j":I
    .restart local v24    # "permissionName":Ljava/lang/String;
    .restart local v26    # "j":I
    :goto_7
    :try_start_3
    monitor-exit v1

    .line 3786
    .end local v0    # "bp":Lcom/android/server/pm/permission/Permission;
    .end local v24    # "permissionName":Ljava/lang/String;
    :goto_8
    add-int/lit8 v9, v26, 0x1

    .end local v26    # "j":I
    .restart local v9    # "j":I
    goto/16 :goto_0

    .line 3803
    .restart local v6    # "permissionName":Ljava/lang/String;
    :catchall_1
    move-exception v0

    move-object/from16 v24, v6

    move/from16 v26, v9

    .end local v6    # "permissionName":Ljava/lang/String;
    .end local v9    # "j":I
    .restart local v24    # "permissionName":Ljava/lang/String;
    .restart local v26    # "j":I
    :goto_9
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0

    :catchall_2
    move-exception v0

    goto :goto_9

    .line 3786
    .end local v24    # "permissionName":Ljava/lang/String;
    .end local v26    # "j":I
    .restart local v9    # "j":I
    :cond_e
    move/from16 v26, v9

    .line 3886
    .end local v9    # "j":I
    if-eqz v8, :cond_12

    .line 3888
    const/4 v3, 0x0

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v10, Lcom/android/server/pm/permission/PermissionManagerService;->mDefaultPermissionCallback:Lcom/android/server/pm/permission/PermissionManagerService$PermissionCallback;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/pm/permission/PermissionManagerService;->restorePermissionState(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ZLjava/lang/String;Lcom/android/server/pm/permission/PermissionManagerService$PermissionCallback;I)V

    .line 3892
    if-nez v7, :cond_f

    .line 3893
    return-void

    .line 3896
    :cond_f
    invoke-virtual {v7}, Landroid/util/ArraySet;->size()I

    move-result v1

    .line 3897
    .local v1, "oldGrantedCount":I
    const/4 v0, 0x0

    move v2, v0

    .local v2, "j":I
    :goto_a
    if-ge v2, v1, :cond_12

    .line 3898
    invoke-virtual {v7, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    .line 3901
    .local v3, "permissionName":Ljava/lang/String;
    iget-object v4, v10, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 3902
    :try_start_4
    invoke-direct {v10, v11, v13}, Lcom/android/server/pm/permission/PermissionManagerService;->getUidStateLocked(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)Lcom/android/server/pm/permission/UidPermissionState;

    move-result-object v0

    .line 3903
    .local v0, "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    if-nez v0, :cond_10

    .line 3904
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Missing permissions state for "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " and user "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3906
    monitor-exit v4

    goto :goto_b

    .line 3908
    :cond_10
    invoke-virtual {v0, v3}, Lcom/android/server/pm/permission/UidPermissionState;->isPermissionGranted(Ljava/lang/String;)Z

    move-result v5

    move v0, v5

    .line 3909
    .local v0, "isGranted":Z
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 3910
    if-nez v0, :cond_11

    .line 3911
    iget-object v4, v10, Lcom/android/server/pm/permission/PermissionManagerService;->mDefaultPermissionCallback:Lcom/android/server/pm/permission/PermissionManagerService$PermissionCallback;

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUid()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v13, v6}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCallback;->onPermissionRevoked(IILjava/lang/String;)V

    .line 3912
    goto :goto_c

    .line 3897
    .end local v0    # "isGranted":Z
    .end local v3    # "permissionName":Ljava/lang/String;
    :cond_11
    :goto_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 3909
    .restart local v3    # "permissionName":Ljava/lang/String;
    :catchall_3
    move-exception v0

    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v0

    .line 3916
    .end local v1    # "oldGrantedCount":I
    .end local v2    # "j":I
    .end local v3    # "permissionName":Ljava/lang/String;
    :cond_12
    :goto_c
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setAutoRevokeExemptedInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ZI)Z
    .locals 8
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "exempted"    # Z
    .param p3, "userId"    # I

    .line 1345
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUid()I

    move-result v0

    invoke-static {p3, v0}, Landroid/os/UserHandle;->getUid(II)I

    move-result v0

    .line 1346
    .local v0, "packageUid":I
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 1347
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1346
    const/16 v3, 0x62

    invoke-virtual {v1, v3, v0, v2}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 1349
    return v2

    .line 1352
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 1354
    .local v3, "identity":J
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    const/16 v5, 0x61

    .line 1355
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    if-eqz p2, :cond_1

    move v2, v7

    .line 1354
    :cond_1
    invoke-virtual {v1, v5, v0, v6, v2}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1357
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1358
    nop

    .line 1359
    return v7

    .line 1357
    :catchall_0
    move-exception v1

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1358
    throw v1
.end method

.method private setCheckPermissionDelegateLocked(Lcom/android/server/pm/permission/PermissionManagerService$CheckPermissionDelegate;)V
    .locals 1
    .param p1, "delegate"    # Lcom/android/server/pm/permission/PermissionManagerService$CheckPermissionDelegate;

    .line 2173
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mCheckPermissionDelegate:Lcom/android/server/pm/permission/PermissionManagerService$CheckPermissionDelegate;

    if-eqz v0, :cond_1

    .line 2174
    :cond_0
    invoke-static {}, Landroid/content/pm/PackageManager;->invalidatePackageInfoCache()V

    .line 2176
    :cond_1
    iput-object p1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mCheckPermissionDelegate:Lcom/android/server/pm/permission/PermissionManagerService$CheckPermissionDelegate;

    .line 2177
    return-void
.end method

.method private setInitialGrantForNewImplicitPermissionsLocked(Lcom/android/server/pm/permission/UidPermissionState;Lcom/android/server/pm/permission/UidPermissionState;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Landroid/util/ArraySet;I[I)[I
    .locals 21
    .param p1, "origPs"    # Lcom/android/server/pm/permission/UidPermissionState;
    .param p2, "ps"    # Lcom/android/server/pm/permission/UidPermissionState;
    .param p3, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p5, "userId"    # I
    .param p6, "updatedUserIds"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/permission/UidPermissionState;",
            "Lcom/android/server/pm/permission/UidPermissionState;",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;I[I)[I"
        }
    .end annotation

    .line 3191
    .local p4, "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-interface/range {p3 .. p3}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 3192
    .local v2, "pkgName":Ljava/lang/String;
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    .line 3194
    .local v3, "newToSplitPerms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    nop

    .line 3195
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/permission/PermissionManagerService;->getSplitPermissionInfos()Ljava/util/List;

    move-result-object v4

    .line 3196
    .local v4, "permissionList":Ljava/util/List;, "Ljava/util/List<Landroid/permission/PermissionManager$SplitPermissionInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    .line 3197
    .local v5, "numSplitPerms":I
    const/4 v6, 0x0

    .local v6, "splitPermNum":I
    :goto_0
    if-ge v6, v5, :cond_2

    .line 3198
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/permission/PermissionManager$SplitPermissionInfo;

    .line 3200
    .local v7, "spi":Landroid/permission/PermissionManager$SplitPermissionInfo;
    invoke-virtual {v7}, Landroid/permission/PermissionManager$SplitPermissionInfo;->getNewPermissions()Ljava/util/List;

    move-result-object v8

    .line 3201
    .local v8, "newPerms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    .line 3202
    .local v9, "numNewPerms":I
    const/4 v10, 0x0

    .local v10, "newPermNum":I
    :goto_1
    if-ge v10, v9, :cond_1

    .line 3203
    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 3205
    .local v11, "newPerm":Ljava/lang/String;
    invoke-virtual {v3, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/ArraySet;

    .line 3206
    .local v12, "splitPerms":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-nez v12, :cond_0

    .line 3207
    new-instance v13, Landroid/util/ArraySet;

    invoke-direct {v13}, Landroid/util/ArraySet;-><init>()V

    move-object v12, v13

    .line 3208
    invoke-virtual {v3, v11, v12}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3211
    :cond_0
    invoke-virtual {v7}, Landroid/permission/PermissionManager$SplitPermissionInfo;->getSplitPermission()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 3202
    .end local v11    # "newPerm":Ljava/lang/String;
    .end local v12    # "splitPerms":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 3197
    .end local v7    # "spi":Landroid/permission/PermissionManager$SplitPermissionInfo;
    .end local v8    # "newPerms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v9    # "numNewPerms":I
    .end local v10    # "newPermNum":I
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 3215
    .end local v6    # "splitPermNum":I
    :cond_2
    invoke-virtual/range {p4 .. p4}, Landroid/util/ArraySet;->size()I

    move-result v6

    .line 3216
    .local v6, "numNewImplicitPerms":I
    const/4 v7, 0x0

    move v8, v7

    move-object/from16 v7, p6

    .end local p6    # "updatedUserIds":[I
    .local v7, "updatedUserIds":[I
    .local v8, "newImplicitPermNum":I
    :goto_2
    if-ge v8, v6, :cond_c

    .line 3218
    move-object/from16 v9, p4

    invoke-virtual {v9, v8}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 3219
    .local v10, "newPerm":Ljava/lang/String;
    invoke-virtual {v3, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/util/ArraySet;

    .line 3221
    .local v11, "sourcePerms":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-eqz v11, :cond_b

    .line 3222
    iget-object v12, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v12, v10}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v12

    .line 3223
    .local v12, "bp":Lcom/android/server/pm/permission/Permission;
    if-eqz v12, :cond_a

    .line 3227
    invoke-virtual {v12}, Lcom/android/server/pm/permission/Permission;->isRuntime()Z

    move-result v13

    if-eqz v13, :cond_9

    .line 3229
    const-string v13, "android.permission.ACTIVITY_RECOGNITION"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_3

    .line 3230
    const/16 v13, 0x80

    invoke-virtual {v1, v12, v13, v13}, Lcom/android/server/pm/permission/UidPermissionState;->updatePermissionFlags(Lcom/android/server/pm/permission/Permission;II)Z

    .line 3234
    :cond_3
    move/from16 v13, p5

    invoke-static {v7, v13}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v7

    .line 3236
    move-object/from16 v14, p1

    invoke-virtual {v14, v11}, Lcom/android/server/pm/permission/UidPermissionState;->hasPermissionState(Landroid/util/ArraySet;)Z

    move-result v15

    if-nez v15, :cond_7

    .line 3237
    const/4 v15, 0x0

    .line 3238
    .local v15, "inheritsFromInstallPerm":Z
    const/16 v16, 0x0

    move-object/from16 v17, v2

    move/from16 v2, v16

    .local v2, "sourcePermNum":I
    .local v17, "pkgName":Ljava/lang/String;
    :goto_3
    move-object/from16 v16, v3

    .end local v3    # "newToSplitPerms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .local v16, "newToSplitPerms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    invoke-virtual {v11}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-ge v2, v3, :cond_6

    .line 3240
    invoke-virtual {v11, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 3241
    .local v3, "sourcePerm":Ljava/lang/String;
    move-object/from16 v18, v4

    .end local v4    # "permissionList":Ljava/util/List;, "Ljava/util/List<Landroid/permission/PermissionManager$SplitPermissionInfo;>;"
    .local v18, "permissionList":Ljava/util/List;, "Ljava/util/List<Landroid/permission/PermissionManager$SplitPermissionInfo;>;"
    iget-object v4, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v4, v3}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v4

    .line 3242
    .local v4, "sourceBp":Lcom/android/server/pm/permission/Permission;
    if-eqz v4, :cond_5

    .line 3246
    invoke-virtual {v4}, Lcom/android/server/pm/permission/Permission;->isRuntime()Z

    move-result v19

    if-nez v19, :cond_4

    .line 3247
    const/4 v15, 0x1

    .line 3248
    move/from16 v20, v5

    goto :goto_4

    .line 3239
    .end local v3    # "sourcePerm":Ljava/lang/String;
    .end local v4    # "sourceBp":Lcom/android/server/pm/permission/Permission;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v3, v16

    move-object/from16 v4, v18

    goto :goto_3

    .line 3243
    .restart local v3    # "sourcePerm":Ljava/lang/String;
    .restart local v4    # "sourceBp":Lcom/android/server/pm/permission/Permission;
    :cond_5
    move/from16 v19, v2

    .end local v2    # "sourcePermNum":I
    .local v19, "sourcePermNum":I
    new-instance v2, Ljava/lang/IllegalStateException;

    move-object/from16 p6, v4

    .end local v4    # "sourceBp":Lcom/android/server/pm/permission/Permission;
    .local p6, "sourceBp":Lcom/android/server/pm/permission/Permission;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v20, v5

    .end local v5    # "numSplitPerms":I
    .local v20, "numSplitPerms":I
    const-string v5, "Unknown source permission in split permission: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3238
    .end local v3    # "sourcePerm":Ljava/lang/String;
    .end local v18    # "permissionList":Ljava/util/List;, "Ljava/util/List<Landroid/permission/PermissionManager$SplitPermissionInfo;>;"
    .end local v19    # "sourcePermNum":I
    .end local v20    # "numSplitPerms":I
    .end local p6    # "sourceBp":Lcom/android/server/pm/permission/Permission;
    .restart local v2    # "sourcePermNum":I
    .local v4, "permissionList":Ljava/util/List;, "Ljava/util/List<Landroid/permission/PermissionManager$SplitPermissionInfo;>;"
    .restart local v5    # "numSplitPerms":I
    :cond_6
    move/from16 v19, v2

    move-object/from16 v18, v4

    move/from16 v20, v5

    .line 3252
    .end local v2    # "sourcePermNum":I
    .end local v4    # "permissionList":Ljava/util/List;, "Ljava/util/List<Landroid/permission/PermissionManager$SplitPermissionInfo;>;"
    .end local v5    # "numSplitPerms":I
    .restart local v18    # "permissionList":Ljava/util/List;, "Ljava/util/List<Landroid/permission/PermissionManager$SplitPermissionInfo;>;"
    .restart local v20    # "numSplitPerms":I
    :goto_4
    if-nez v15, :cond_8

    .line 3258
    move-object/from16 v2, p3

    goto :goto_5

    .line 3236
    .end local v15    # "inheritsFromInstallPerm":Z
    .end local v16    # "newToSplitPerms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .end local v17    # "pkgName":Ljava/lang/String;
    .end local v18    # "permissionList":Ljava/util/List;, "Ljava/util/List<Landroid/permission/PermissionManager$SplitPermissionInfo;>;"
    .end local v20    # "numSplitPerms":I
    .local v2, "pkgName":Ljava/lang/String;
    .local v3, "newToSplitPerms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .restart local v4    # "permissionList":Ljava/util/List;, "Ljava/util/List<Landroid/permission/PermissionManager$SplitPermissionInfo;>;"
    .restart local v5    # "numSplitPerms":I
    :cond_7
    move-object/from16 v17, v2

    move-object/from16 v16, v3

    move-object/from16 v18, v4

    move/from16 v20, v5

    .line 3263
    .end local v2    # "pkgName":Ljava/lang/String;
    .end local v3    # "newToSplitPerms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .end local v4    # "permissionList":Ljava/util/List;, "Ljava/util/List<Landroid/permission/PermissionManager$SplitPermissionInfo;>;"
    .end local v5    # "numSplitPerms":I
    .restart local v16    # "newToSplitPerms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .restart local v17    # "pkgName":Ljava/lang/String;
    .restart local v18    # "permissionList":Ljava/util/List;, "Ljava/util/List<Landroid/permission/PermissionManager$SplitPermissionInfo;>;"
    .restart local v20    # "numSplitPerms":I
    :cond_8
    move-object/from16 v2, p3

    invoke-direct {v0, v11, v10, v1, v2}, Lcom/android/server/pm/permission/PermissionManagerService;->inheritPermissionStateToNewImplicitPermissionLocked(Landroid/util/ArraySet;Ljava/lang/String;Lcom/android/server/pm/permission/UidPermissionState;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V

    goto :goto_5

    .line 3227
    .end local v16    # "newToSplitPerms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .end local v17    # "pkgName":Ljava/lang/String;
    .end local v18    # "permissionList":Ljava/util/List;, "Ljava/util/List<Landroid/permission/PermissionManager$SplitPermissionInfo;>;"
    .end local v20    # "numSplitPerms":I
    .restart local v2    # "pkgName":Ljava/lang/String;
    .restart local v3    # "newToSplitPerms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .restart local v4    # "permissionList":Ljava/util/List;, "Ljava/util/List<Landroid/permission/PermissionManager$SplitPermissionInfo;>;"
    .restart local v5    # "numSplitPerms":I
    :cond_9
    move-object/from16 v14, p1

    move/from16 v13, p5

    move-object/from16 v17, v2

    move-object/from16 v16, v3

    move-object/from16 v18, v4

    move/from16 v20, v5

    move-object/from16 v2, p3

    .end local v2    # "pkgName":Ljava/lang/String;
    .end local v3    # "newToSplitPerms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .end local v4    # "permissionList":Ljava/util/List;, "Ljava/util/List<Landroid/permission/PermissionManager$SplitPermissionInfo;>;"
    .end local v5    # "numSplitPerms":I
    .restart local v16    # "newToSplitPerms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .restart local v17    # "pkgName":Ljava/lang/String;
    .restart local v18    # "permissionList":Ljava/util/List;, "Ljava/util/List<Landroid/permission/PermissionManager$SplitPermissionInfo;>;"
    .restart local v20    # "numSplitPerms":I
    goto :goto_5

    .line 3224
    .end local v16    # "newToSplitPerms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .end local v17    # "pkgName":Ljava/lang/String;
    .end local v18    # "permissionList":Ljava/util/List;, "Ljava/util/List<Landroid/permission/PermissionManager$SplitPermissionInfo;>;"
    .end local v20    # "numSplitPerms":I
    .restart local v2    # "pkgName":Ljava/lang/String;
    .restart local v3    # "newToSplitPerms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .restart local v4    # "permissionList":Ljava/util/List;, "Ljava/util/List<Landroid/permission/PermissionManager$SplitPermissionInfo;>;"
    .restart local v5    # "numSplitPerms":I
    :cond_a
    move-object/from16 v16, v3

    move-object/from16 v18, v4

    move/from16 v20, v5

    .end local v3    # "newToSplitPerms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .end local v4    # "permissionList":Ljava/util/List;, "Ljava/util/List<Landroid/permission/PermissionManager$SplitPermissionInfo;>;"
    .end local v5    # "numSplitPerms":I
    .restart local v16    # "newToSplitPerms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .restart local v18    # "permissionList":Ljava/util/List;, "Ljava/util/List<Landroid/permission/PermissionManager$SplitPermissionInfo;>;"
    .restart local v20    # "numSplitPerms":I
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown new permission in split permission: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3221
    .end local v12    # "bp":Lcom/android/server/pm/permission/Permission;
    .end local v16    # "newToSplitPerms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .end local v18    # "permissionList":Ljava/util/List;, "Ljava/util/List<Landroid/permission/PermissionManager$SplitPermissionInfo;>;"
    .end local v20    # "numSplitPerms":I
    .restart local v3    # "newToSplitPerms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .restart local v4    # "permissionList":Ljava/util/List;, "Ljava/util/List<Landroid/permission/PermissionManager$SplitPermissionInfo;>;"
    .restart local v5    # "numSplitPerms":I
    :cond_b
    move-object/from16 v14, p1

    move/from16 v13, p5

    move-object/from16 v17, v2

    move-object/from16 v16, v3

    move-object/from16 v18, v4

    move/from16 v20, v5

    move-object/from16 v2, p3

    .line 3217
    .end local v2    # "pkgName":Ljava/lang/String;
    .end local v3    # "newToSplitPerms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .end local v4    # "permissionList":Ljava/util/List;, "Ljava/util/List<Landroid/permission/PermissionManager$SplitPermissionInfo;>;"
    .end local v5    # "numSplitPerms":I
    .end local v10    # "newPerm":Ljava/lang/String;
    .end local v11    # "sourcePerms":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v16    # "newToSplitPerms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .restart local v17    # "pkgName":Ljava/lang/String;
    .restart local v18    # "permissionList":Ljava/util/List;, "Ljava/util/List<Landroid/permission/PermissionManager$SplitPermissionInfo;>;"
    .restart local v20    # "numSplitPerms":I
    :goto_5
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v3, v16

    move-object/from16 v2, v17

    move-object/from16 v4, v18

    move/from16 v5, v20

    goto/16 :goto_2

    .line 3269
    .end local v8    # "newImplicitPermNum":I
    .end local v16    # "newToSplitPerms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .end local v17    # "pkgName":Ljava/lang/String;
    .end local v18    # "permissionList":Ljava/util/List;, "Ljava/util/List<Landroid/permission/PermissionManager$SplitPermissionInfo;>;"
    .end local v20    # "numSplitPerms":I
    .restart local v2    # "pkgName":Ljava/lang/String;
    .restart local v3    # "newToSplitPerms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .restart local v4    # "permissionList":Ljava/util/List;, "Ljava/util/List<Landroid/permission/PermissionManager$SplitPermissionInfo;>;"
    .restart local v5    # "numSplitPerms":I
    :cond_c
    return-object v7
.end method

.method private shouldGrantPermissionByProtectionFlags(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/permission/Permission;Landroid/util/ArraySet;)Z
    .locals 9
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "pkgSetting"    # Lcom/android/server/pm/PackageSetting;
    .param p3, "bp"    # Lcom/android/server/pm/permission/Permission;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            "Lcom/android/server/pm/PackageSetting;",
            "Lcom/android/server/pm/permission/Permission;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 3518
    .local p4, "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 3519
    .local v0, "allowed":Z
    invoke-virtual {p3}, Lcom/android/server/pm/permission/Permission;->isPrivileged()Z

    move-result v1

    .line 3520
    .local v1, "isPrivilegedPermission":Z
    invoke-virtual {p3}, Lcom/android/server/pm/permission/Permission;->isOem()Z

    move-result v2

    .line 3521
    .local v2, "isOemPermission":Z
    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_a

    if-nez v1, :cond_0

    if-eqz v2, :cond_a

    :cond_0
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isSystem()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 3522
    invoke-virtual {p3}, Lcom/android/server/pm/permission/Permission;->getName()Ljava/lang/String;

    move-result-object v5

    .line 3525
    .local v5, "permissionName":Ljava/lang/String;
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getPkgState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->isUpdatedSystemApp()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 3526
    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 3527
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManagerInternal;->getDisabledSystemPackage(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v6

    .line 3528
    .local v6, "disabledPs":Lcom/android/server/pm/PackageSetting;
    if-nez v6, :cond_1

    const/4 v7, 0x0

    goto :goto_0

    :cond_1
    iget-object v7, v6, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 3529
    .local v7, "disabledPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :goto_0
    if-eqz v7, :cond_5

    if-eqz v1, :cond_2

    .line 3530
    invoke-interface {v7}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isPrivileged()Z

    move-result v8

    if-nez v8, :cond_3

    :cond_2
    if-eqz v2, :cond_5

    .line 3531
    invoke-static {v7, v5}, Lcom/android/server/pm/permission/PermissionManagerService;->canGrantOemPermission(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 3533
    :cond_3
    invoke-interface {v7}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 3534
    const/4 v0, 0x1

    goto :goto_1

    .line 3539
    :cond_4
    invoke-virtual {p4, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 3542
    .end local v6    # "disabledPs":Lcom/android/server/pm/PackageSetting;
    .end local v7    # "disabledPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :cond_5
    :goto_1
    goto :goto_3

    .line 3543
    :cond_6
    if-eqz v1, :cond_7

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isPrivileged()Z

    move-result v6

    if-nez v6, :cond_8

    :cond_7
    if-eqz v2, :cond_9

    .line 3544
    invoke-static {p1, v5}, Lcom/android/server/pm/permission/PermissionManagerService;->canGrantOemPermission(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    :cond_8
    move v6, v3

    goto :goto_2

    :cond_9
    move v6, v4

    :goto_2
    move v0, v6

    .line 3549
    :goto_3
    if-eqz v0, :cond_a

    if-eqz v1, :cond_a

    invoke-virtual {p3}, Lcom/android/server/pm/permission/Permission;->isVendorPrivileged()Z

    move-result v6

    if-nez v6, :cond_a

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isVendor()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 3550
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Permission "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " cannot be granted to privileged vendor apk "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3551
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " because it isn\'t a \'vendorPrivileged\' permission."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 3550
    const-string v7, "PackageManager"

    invoke-static {v7, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3553
    const/4 v0, 0x0

    .line 3556
    .end local v5    # "permissionName":Ljava/lang/String;
    :cond_a
    if-nez v0, :cond_b

    invoke-virtual {p3}, Lcom/android/server/pm/permission/Permission;->isPre23()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v5

    const/16 v6, 0x17

    if-ge v5, v6, :cond_b

    .line 3560
    const/4 v0, 0x1

    .line 3565
    :cond_b
    if-nez v0, :cond_d

    invoke-virtual {p3}, Lcom/android/server/pm/permission/Permission;->isInstaller()Z

    move-result v5

    if-eqz v5, :cond_d

    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const/4 v6, 0x2

    .line 3566
    invoke-virtual {v5, v6, v4}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    move-result-object v5

    .line 3568
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 3566
    invoke-static {v5, v6}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c

    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const/4 v6, 0x6

    .line 3569
    invoke-virtual {v5, v6, v4}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    move-result-object v5

    .line 3571
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 3568
    invoke-static {v5, v6}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 3574
    :cond_c
    const/4 v0, 0x1

    .line 3576
    :cond_d
    if-nez v0, :cond_e

    invoke-virtual {p3}, Lcom/android/server/pm/permission/Permission;->isVerifier()Z

    move-result v5

    if-eqz v5, :cond_e

    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const/4 v6, 0x3

    .line 3577
    invoke-virtual {v5, v6, v4}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    move-result-object v5

    .line 3579
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 3577
    invoke-static {v5, v6}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 3582
    const/4 v0, 0x1

    .line 3584
    :cond_e
    if-nez v0, :cond_f

    invoke-virtual {p3}, Lcom/android/server/pm/permission/Permission;->isPreInstalled()Z

    move-result v5

    if-eqz v5, :cond_f

    .line 3585
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isSystem()Z

    move-result v5

    if-eqz v5, :cond_f

    .line 3587
    const/4 v0, 0x1

    .line 3589
    :cond_f
    if-nez v0, :cond_10

    invoke-virtual {p3}, Lcom/android/server/pm/permission/Permission;->isKnownSigner()Z

    move-result v5

    if-eqz v5, :cond_10

    .line 3592
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/PackageParser$SigningDetails;

    move-result-object v5

    invoke-virtual {p3}, Lcom/android/server/pm/permission/Permission;->getKnownCerts()Ljava/util/Set;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageParser$SigningDetails;->hasAncestorOrSelfWithDigest(Ljava/util/Set;)Z

    move-result v0

    .line 3600
    :cond_10
    if-nez v0, :cond_11

    invoke-virtual {p3}, Lcom/android/server/pm/permission/Permission;->isSetup()Z

    move-result v5

    if-eqz v5, :cond_11

    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 3601
    invoke-virtual {v5, v3, v4}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    move-result-object v3

    .line 3603
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 3601
    invoke-static {v3, v5}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 3606
    const/4 v0, 0x1

    .line 3608
    :cond_11
    if-nez v0, :cond_12

    invoke-virtual {p3}, Lcom/android/server/pm/permission/Permission;->isSystemTextClassifier()Z

    move-result v3

    if-eqz v3, :cond_12

    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const/4 v5, 0x5

    .line 3609
    invoke-virtual {v3, v5, v4}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    move-result-object v3

    .line 3611
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 3609
    invoke-static {v3, v5}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 3613
    const/4 v0, 0x1

    .line 3615
    :cond_12
    if-nez v0, :cond_13

    invoke-virtual {p3}, Lcom/android/server/pm/permission/Permission;->isConfigurator()Z

    move-result v3

    if-eqz v3, :cond_13

    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const/16 v5, 0x9

    .line 3616
    invoke-virtual {v3, v5, v4}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    move-result-object v3

    .line 3618
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 3616
    invoke-static {v3, v5}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 3620
    const/4 v0, 0x1

    .line 3622
    :cond_13
    if-nez v0, :cond_14

    invoke-virtual {p3}, Lcom/android/server/pm/permission/Permission;->isDocumenter()Z

    move-result v3

    if-eqz v3, :cond_14

    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const/16 v5, 0x8

    .line 3623
    invoke-virtual {v3, v5, v4}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    move-result-object v3

    .line 3625
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 3623
    invoke-static {v3, v5}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 3628
    const/4 v0, 0x1

    .line 3630
    :cond_14
    if-nez v0, :cond_15

    invoke-virtual {p3}, Lcom/android/server/pm/permission/Permission;->isIncidentReportApprover()Z

    move-result v3

    if-eqz v3, :cond_15

    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const/16 v5, 0xa

    .line 3631
    invoke-virtual {v3, v5, v4}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    move-result-object v3

    .line 3633
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 3631
    invoke-static {v3, v5}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 3636
    const/4 v0, 0x1

    .line 3638
    :cond_15
    if-nez v0, :cond_16

    invoke-virtual {p3}, Lcom/android/server/pm/permission/Permission;->isAppPredictor()Z

    move-result v3

    if-eqz v3, :cond_16

    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const/16 v5, 0xb

    .line 3639
    invoke-virtual {v3, v5, v4}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    move-result-object v3

    .line 3641
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 3639
    invoke-static {v3, v5}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 3643
    const/4 v0, 0x1

    .line 3645
    :cond_16
    if-nez v0, :cond_17

    invoke-virtual {p3}, Lcom/android/server/pm/permission/Permission;->isCompanion()Z

    move-result v3

    if-eqz v3, :cond_17

    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const/16 v5, 0xe

    .line 3646
    invoke-virtual {v3, v5, v4}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    move-result-object v3

    .line 3648
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 3646
    invoke-static {v3, v5}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 3650
    const/4 v0, 0x1

    .line 3652
    :cond_17
    if-nez v0, :cond_18

    invoke-virtual {p3}, Lcom/android/server/pm/permission/Permission;->isRetailDemo()Z

    move-result v3

    if-eqz v3, :cond_18

    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const/16 v5, 0xf

    .line 3653
    invoke-virtual {v3, v5, v4}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    move-result-object v3

    .line 3655
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 3653
    invoke-static {v3, v5}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 3655
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUid()I

    move-result v3

    invoke-static {v3}, Lcom/android/server/pm/permission/PermissionManagerService;->isProfileOwner(I)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 3657
    const/4 v0, 0x1

    .line 3659
    :cond_18
    if-nez v0, :cond_19

    invoke-virtual {p3}, Lcom/android/server/pm/permission/Permission;->isRecents()Z

    move-result v3

    if-eqz v3, :cond_19

    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const/16 v5, 0x10

    .line 3660
    invoke-virtual {v3, v5, v4}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    move-result-object v3

    .line 3662
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 3660
    invoke-static {v3, v4}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 3664
    const/4 v0, 0x1

    .line 3666
    :cond_19
    return v0
.end method

.method private shouldGrantPermissionBySignature(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/permission/Permission;)Z
    .locals 7
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "bp"    # Lcom/android/server/pm/permission/Permission;

    .line 3491
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->firstOrNull([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3493
    .local v0, "systemPackageName":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 3494
    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v2

    .line 3504
    .local v2, "systemPackage":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    nop

    .line 3505
    invoke-direct {p0, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->getSourcePackageSigningDetails(Lcom/android/server/pm/permission/Permission;)Landroid/content/pm/PackageParser$SigningDetails;

    move-result-object v3

    .line 3506
    .local v3, "sourceSigningDetails":Landroid/content/pm/PackageParser$SigningDetails;
    nop

    .line 3507
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/PackageParser$SigningDetails;

    move-result-object v4

    .line 3506
    const/4 v5, 0x4

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageParser$SigningDetails;->hasCommonSignerWithCapability(Landroid/content/pm/PackageParser$SigningDetails;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 3509
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/PackageParser$SigningDetails;

    move-result-object v4

    invoke-interface {v2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/PackageParser$SigningDetails;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/content/pm/PackageParser$SigningDetails;->hasAncestorOrSelf(Landroid/content/pm/PackageParser$SigningDetails;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 3510
    invoke-interface {v2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/PackageParser$SigningDetails;

    move-result-object v4

    .line 3511
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/PackageParser$SigningDetails;

    move-result-object v6

    .line 3510
    invoke-virtual {v4, v6, v5}, Landroid/content/pm/PackageParser$SigningDetails;->checkCapability(Landroid/content/pm/PackageParser$SigningDetails;I)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 3506
    :cond_1
    return v1
.end method

.method private startShellPermissionIdentityDelegationInternal(ILjava/lang/String;Ljava/util/List;)V
    .locals 4
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2145
    .local p3, "permissionNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2146
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mCheckPermissionDelegate:Lcom/android/server/pm/permission/PermissionManagerService$CheckPermissionDelegate;

    .line 2147
    .local v1, "oldDelegate":Lcom/android/server/pm/permission/PermissionManagerService$CheckPermissionDelegate;
    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/android/server/pm/permission/PermissionManagerService$CheckPermissionDelegate;->getDelegatedUid()I

    move-result v2

    if-ne v2, p1, :cond_0

    goto :goto_0

    .line 2148
    :cond_0
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Shell can delegate permissions only to one UID at a time"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/pm/permission/PermissionManagerService;
    .end local p1    # "uid":I
    .end local p2    # "packageName":Ljava/lang/String;
    .end local p3    # "permissionNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    throw v2

    .line 2151
    .restart local p0    # "this":Lcom/android/server/pm/permission/PermissionManagerService;
    .restart local p1    # "uid":I
    .restart local p2    # "packageName":Ljava/lang/String;
    .restart local p3    # "permissionNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    :goto_0
    new-instance v2, Lcom/android/server/pm/permission/PermissionManagerService$ShellDelegate;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerService$ShellDelegate;-><init>(Lcom/android/server/pm/permission/PermissionManagerService;ILjava/lang/String;Ljava/util/List;)V

    .line 2152
    .local v2, "delegate":Lcom/android/server/pm/permission/PermissionManagerService$ShellDelegate;
    invoke-direct {p0, v2}, Lcom/android/server/pm/permission/PermissionManagerService;->setCheckPermissionDelegateLocked(Lcom/android/server/pm/permission/PermissionManagerService$CheckPermissionDelegate;)V

    .line 2153
    .end local v1    # "oldDelegate":Lcom/android/server/pm/permission/PermissionManagerService$CheckPermissionDelegate;
    .end local v2    # "delegate":Lcom/android/server/pm/permission/PermissionManagerService$ShellDelegate;
    monitor-exit v0

    .line 2154
    return-void

    .line 2153
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private stopShellPermissionIdentityDelegationInternal()V
    .locals 2

    .line 2157
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2158
    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, v1}, Lcom/android/server/pm/permission/PermissionManagerService;->setCheckPermissionDelegateLocked(Lcom/android/server/pm/permission/PermissionManagerService$CheckPermissionDelegate;)V

    .line 2159
    monitor-exit v0

    .line 2160
    return-void

    .line 2159
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private systemReady()V
    .locals 5

    .line 4518
    sget-object v0, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/pm/permission/PermissionManagerService;->updateAllPermissions(Ljava/lang/String;Z)V

    .line 4520
    const-class v0, Lcom/android/server/policy/PermissionPolicyInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/policy/PermissionPolicyInternal;

    .line 4522
    .local v0, "permissionPolicyInternal":Lcom/android/server/policy/PermissionPolicyInternal;
    new-instance v1, Lcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/pm/permission/PermissionManagerService;)V

    invoke-virtual {v0, v1}, Lcom/android/server/policy/PermissionPolicyInternal;->setOnInitializedCallback(Lcom/android/server/policy/PermissionPolicyInternal$OnInitializedCallback;)V

    .line 4527
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSystemReady:Z

    .line 4529
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 4530
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPrivappPermissionsViolations:Landroid/util/ArraySet;

    if-nez v2, :cond_0

    .line 4534
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4536
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/permission/PermissionControllerManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/permission/PermissionControllerManager;

    iput-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionControllerManager:Landroid/permission/PermissionControllerManager;

    .line 4537
    const-class v1, Lcom/android/server/policy/PermissionPolicyInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/policy/PermissionPolicyInternal;

    iput-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionPolicyInternal:Lcom/android/server/policy/PermissionPolicyInternal;

    .line 4538
    return-void

    .line 4531
    :cond_0
    :try_start_1
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Signature|privileged permissions not in privapp-permissions allowlist: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPrivappPermissionsViolations:Landroid/util/ArraySet;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "permissionPolicyInternal":Lcom/android/server/policy/PermissionPolicyInternal;
    .end local p0    # "this":Lcom/android/server/pm/permission/PermissionManagerService;
    throw v2

    .line 4534
    .restart local v0    # "permissionPolicyInternal":Lcom/android/server/policy/PermissionPolicyInternal;
    .restart local p0    # "this":Lcom/android/server/pm/permission/PermissionManagerService;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private updateAllPermissions(Ljava/lang/String;Z)V
    .locals 8
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .param p2, "fingerprintChanged"    # Z

    .line 4066
    invoke-static {}, Landroid/content/pm/PackageManager;->corkPackageInfoCache()V

    .line 4068
    const/4 v0, 0x1

    .line 4069
    if-eqz p2, :cond_0

    .line 4070
    const/4 v1, 0x6

    goto :goto_0

    .line 4071
    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    .line 4072
    .local v0, "flags":I
    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_0
    iget-object v7, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mDefaultPermissionCallback:Lcom/android/server/pm/permission/PermissionManagerService$PermissionCallback;

    move-object v2, p0

    move-object v5, p1

    move v6, v0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/permission/PermissionManagerService;->updatePermissions(Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/lang/String;ILcom/android/server/pm/permission/PermissionManagerService$PermissionCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4074
    .end local v0    # "flags":I
    invoke-static {}, Landroid/content/pm/PackageManager;->uncorkPackageInfoCache()V

    .line 4075
    nop

    .line 4076
    return-void

    .line 4074
    :catchall_0
    move-exception v0

    invoke-static {}, Landroid/content/pm/PackageManager;->uncorkPackageInfoCache()V

    .line 4075
    throw v0
.end method

.method private updatePermissionFlagsInternal(Ljava/lang/String;Ljava/lang/String;IIIIZLcom/android/server/pm/permission/PermissionManagerService$PermissionCallback;)V
    .locals 16
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permName"    # Ljava/lang/String;
    .param p3, "flagMask"    # I
    .param p4, "flagValues"    # I
    .param p5, "callingUid"    # I
    .param p6, "userId"    # I
    .param p7, "overridePolicy"    # Z
    .param p8, "callback"    # Lcom/android/server/pm/permission/PermissionManagerService$PermissionCallback;

    .line 782
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move/from16 v10, p5

    move/from16 v11, p6

    move-object/from16 v12, p8

    iget-object v0, v7, Lcom/android/server/pm/permission/PermissionManagerService;->mUserManagerInt:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v0, v11}, Lcom/android/server/pm/UserManagerInternal;->exists(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 783
    return-void

    .line 786
    :cond_0
    const-string v0, "updatePermissionFlags"

    invoke-direct {v7, v0}, Lcom/android/server/pm/permission/PermissionManagerService;->enforceGrantRevokeRuntimePermissionPermissions(Ljava/lang/String;)V

    .line 788
    const/4 v4, 0x1

    const/4 v5, 0x1

    const-string v6, "updatePermissionFlags"

    move-object/from16 v1, p0

    move/from16 v2, p5

    move/from16 v3, p6

    invoke-direct/range {v1 .. v6}, Lcom/android/server/pm/permission/PermissionManagerService;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 793
    and-int/lit8 v0, p3, 0x4

    if-eqz v0, :cond_2

    if-eqz p7, :cond_1

    goto :goto_0

    .line 794
    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "updatePermissionFlags requires android.permission.ADJUST_RUNTIME_PERMISSIONS_POLICY"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 799
    :cond_2
    :goto_0
    const/16 v0, 0x3e8

    if-eq v10, v0, :cond_3

    .line 800
    and-int/lit8 v0, p3, -0x11

    .line 801
    .end local p3    # "flagMask":I
    .local v0, "flagMask":I
    and-int/lit8 v1, p4, -0x11

    .line 802
    .end local p4    # "flagValues":I
    .local v1, "flagValues":I
    and-int/lit8 v0, v0, -0x21

    .line 803
    and-int/lit8 v1, v1, -0x21

    .line 804
    and-int/lit8 v1, v1, -0x41

    .line 805
    and-int/lit16 v1, v1, -0x1001

    .line 806
    and-int/lit16 v1, v1, -0x801

    .line 807
    and-int/lit16 v1, v1, -0x2001

    .line 808
    and-int/lit16 v1, v1, -0x4001

    move v2, v1

    move v1, v0

    goto :goto_1

    .line 799
    .end local v0    # "flagMask":I
    .end local v1    # "flagValues":I
    .restart local p3    # "flagMask":I
    .restart local p4    # "flagValues":I
    :cond_3
    move/from16 v1, p3

    move/from16 v2, p4

    .line 811
    .end local p3    # "flagMask":I
    .end local p4    # "flagValues":I
    .local v1, "flagMask":I
    .local v2, "flagValues":I
    :goto_1
    iget-object v0, v7, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, v8}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v3

    .line 812
    .local v3, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-nez v3, :cond_4

    .line 813
    const-string v0, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown package: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    return-void

    .line 816
    :cond_4
    iget-object v0, v7, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, v3, v10, v11}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Lcom/android/server/pm/parsing/pkg/AndroidPackage;II)Z

    move-result v0

    if-nez v0, :cond_e

    .line 820
    const/4 v0, 0x0

    .line 822
    .local v0, "isRequested":Z
    invoke-interface {v3}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 823
    const/4 v0, 0x1

    .line 825
    :cond_5
    if-nez v0, :cond_7

    .line 827
    iget-object v5, v7, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 828
    invoke-virtual {v5, v8, v11}, Landroid/content/pm/PackageManagerInternal;->getSharedUserPackagesForPackage(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v5

    .line 829
    .local v5, "sharedUserPackageNames":[Ljava/lang/String;
    array-length v6, v5

    const/4 v13, 0x0

    :goto_2
    if-ge v13, v6, :cond_7

    aget-object v14, v5, v13

    .line 830
    .local v14, "sharedUserPackageName":Ljava/lang/String;
    iget-object v15, v7, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v15, v14}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v15

    .line 832
    .local v15, "sharedUserPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-eqz v15, :cond_6

    .line 833
    invoke-interface {v15}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 834
    const/4 v0, 0x1

    .line 835
    move v4, v0

    goto :goto_3

    .line 829
    .end local v14    # "sharedUserPackageName":Ljava/lang/String;
    .end local v15    # "sharedUserPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :cond_6
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 842
    .end local v5    # "sharedUserPackageNames":[Ljava/lang/String;
    :cond_7
    move v4, v0

    .end local v0    # "isRequested":Z
    .local v4, "isRequested":Z
    :goto_3
    iget-object v5, v7, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 843
    :try_start_0
    iget-object v0, v7, Lcom/android/server/pm/permission/PermissionManagerService;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v0, v9}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v0

    .line 844
    .local v0, "bp":Lcom/android/server/pm/permission/Permission;
    if-eqz v0, :cond_d

    .line 848
    invoke-virtual {v0}, Lcom/android/server/pm/permission/Permission;->isRuntime()Z

    move-result v6

    .line 850
    .local v6, "isRuntimePermission":Z
    invoke-direct {v7, v3, v11}, Lcom/android/server/pm/permission/PermissionManagerService;->getUidStateLocked(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)Lcom/android/server/pm/permission/UidPermissionState;

    move-result-object v13

    .line 851
    .local v13, "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    if-nez v13, :cond_8

    .line 852
    const-string v14, "PackageManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Missing permissions state for "

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " and user "

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v14, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    monitor-exit v5

    return-void

    .line 856
    :cond_8
    invoke-virtual {v13, v9}, Lcom/android/server/pm/permission/UidPermissionState;->hasPermissionState(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_9

    if-nez v4, :cond_9

    .line 857
    const-string v10, "PackageManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Permission "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " isn\'t requested by package "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v10, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    monitor-exit v5

    return-void

    .line 861
    :cond_9
    invoke-virtual {v13, v0, v1, v2}, Lcom/android/server/pm/permission/UidPermissionState;->updatePermissionFlags(Lcom/android/server/pm/permission/Permission;II)Z

    move-result v10

    move v0, v10

    .line 862
    .end local v13    # "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    .local v0, "permissionUpdated":Z
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 864
    if-eqz v0, :cond_a

    if-eqz v6, :cond_a

    .line 865
    invoke-direct {v7, v8, v11}, Lcom/android/server/pm/permission/PermissionManagerService;->notifyRuntimePermissionStateChanged(Ljava/lang/String;I)V

    .line 867
    :cond_a
    if-eqz v0, :cond_c

    if-eqz v12, :cond_c

    .line 870
    if-nez v6, :cond_b

    .line 871
    invoke-interface {v3}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUid()I

    move-result v5

    invoke-static {v11, v5}, Landroid/os/UserHandle;->getUid(II)I

    move-result v5

    .line 872
    .local v5, "userUid":I
    invoke-virtual {v12, v5}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCallback;->onInstallPermissionUpdatedNotifyListener(I)V

    .line 873
    .end local v5    # "userUid":I
    goto :goto_4

    .line 874
    :cond_b
    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v10, 0x0

    aput v11, v5, v10

    invoke-interface {v3}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUid()I

    move-result v13

    invoke-virtual {v12, v5, v10, v13}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCallback;->onPermissionUpdatedNotifyListener([IZI)V

    .line 877
    :cond_c
    :goto_4
    return-void

    .line 845
    .end local v6    # "isRuntimePermission":Z
    .local v0, "bp":Lcom/android/server/pm/permission/Permission;
    :cond_d
    :try_start_1
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unknown permission: "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v6, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v1    # "flagMask":I
    .end local v2    # "flagValues":I
    .end local v3    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local v4    # "isRequested":Z
    .end local p0    # "this":Lcom/android/server/pm/permission/PermissionManagerService;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "permName":Ljava/lang/String;
    .end local p5    # "callingUid":I
    .end local p6    # "userId":I
    .end local p7    # "overridePolicy":Z
    .end local p8    # "callback":Lcom/android/server/pm/permission/PermissionManagerService$PermissionCallback;
    throw v6

    .line 862
    .end local v0    # "bp":Lcom/android/server/pm/permission/Permission;
    .restart local v1    # "flagMask":I
    .restart local v2    # "flagValues":I
    .restart local v3    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .restart local v4    # "isRequested":Z
    .restart local p0    # "this":Lcom/android/server/pm/permission/PermissionManagerService;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "permName":Ljava/lang/String;
    .restart local p5    # "callingUid":I
    .restart local p6    # "userId":I
    .restart local p7    # "overridePolicy":Z
    .restart local p8    # "callback":Lcom/android/server/pm/permission/PermissionManagerService$PermissionCallback;
    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 817
    .end local v4    # "isRequested":Z
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown package: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private updatePermissionSourcePackage(Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/permission/PermissionManagerService$PermissionCallback;)Z
    .locals 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p3, "callback"    # Lcom/android/server/pm/permission/PermissionManagerService$PermissionCallback;

    .line 4199
    if-nez p1, :cond_0

    .line 4200
    const/4 v0, 0x1

    return v0

    .line 4203
    :cond_0
    const/4 v0, 0x0

    .line 4204
    .local v0, "changed":Z
    const/4 v1, 0x0

    .line 4205
    .local v1, "needsUpdate":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/pm/permission/Permission;>;"
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 4206
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v3}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermissions()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/permission/Permission;

    .line 4207
    .local v4, "bp":Lcom/android/server/pm/permission/Permission;
    invoke-virtual {v4}, Lcom/android/server/pm/permission/Permission;->isDynamic()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 4208
    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v5}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermissionTrees()Ljava/util/Collection;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/pm/permission/Permission;->updateDynamicPermission(Ljava/util/Collection;)V

    .line 4210
    :cond_1
    invoke-virtual {v4}, Lcom/android/server/pm/permission/Permission;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 4214
    goto :goto_0

    .line 4218
    :cond_2
    const/4 v0, 0x1

    .line 4219
    if-nez v1, :cond_3

    .line 4220
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    move-object v1, v5

    .line 4222
    :cond_3
    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4223
    nop

    .end local v4    # "bp":Lcom/android/server/pm/permission/Permission;
    goto :goto_0

    .line 4224
    :cond_4
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 4225
    if-eqz v1, :cond_a

    .line 4226
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/permission/Permission;

    .line 4229
    .local v3, "bp":Lcom/android/server/pm/permission/Permission;
    if-eqz p2, :cond_7

    invoke-virtual {v3}, Lcom/android/server/pm/permission/Permission;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {p2, v4}, Lcom/android/server/pm/permission/PermissionManagerService;->hasPermission(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_2

    .line 4263
    :cond_5
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 4264
    invoke-virtual {v3}, Lcom/android/server/pm/permission/Permission;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v4

    .line 4265
    .local v4, "sourcePkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 4267
    invoke-virtual {v3}, Lcom/android/server/pm/permission/Permission;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 4266
    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManagerInternal;->getPackageSetting(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v5

    .line 4268
    .local v5, "sourcePs":Lcom/android/server/pm/PackageSetting;
    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 4269
    if-eqz v4, :cond_6

    if-eqz v5, :cond_6

    .line 4270
    :try_start_1
    monitor-exit v6

    goto :goto_1

    .line 4272
    :cond_6
    const-string v7, "PackageManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Removing dangling permission: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/pm/permission/Permission;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " from package "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4273
    invoke-virtual {v3}, Lcom/android/server/pm/permission/Permission;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 4272
    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4274
    iget-object v7, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v3}, Lcom/android/server/pm/permission/Permission;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/server/pm/permission/PermissionRegistry;->removePermission(Ljava/lang/String;)V

    .line 4275
    monitor-exit v6

    .line 4276
    .end local v3    # "bp":Lcom/android/server/pm/permission/Permission;
    .end local v4    # "sourcePkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local v5    # "sourcePs":Lcom/android/server/pm/PackageSetting;
    goto :goto_1

    .line 4275
    .restart local v3    # "bp":Lcom/android/server/pm/permission/Permission;
    .restart local v4    # "sourcePkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .restart local v5    # "sourcePs":Lcom/android/server/pm/PackageSetting;
    :catchall_0
    move-exception v2

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 4230
    .end local v4    # "sourcePkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local v5    # "sourcePs":Lcom/android/server/pm/PackageSetting;
    :cond_7
    :goto_2
    const-string v4, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Removing permission "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/pm/permission/Permission;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " that used to be declared by "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4231
    invoke-virtual {v3}, Lcom/android/server/pm/permission/Permission;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 4230
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4232
    invoke-virtual {v3}, Lcom/android/server/pm/permission/Permission;->isRuntime()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 4233
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mUserManagerInt:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v4}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    move-result-object v4

    .line 4234
    .local v4, "userIds":[I
    array-length v5, v4

    .line 4235
    .local v5, "numUserIds":I
    const/4 v6, 0x0

    .local v6, "userIdNum":I
    :goto_3
    if-ge v6, v5, :cond_8

    .line 4236
    aget v7, v4, v6

    .line 4237
    .local v7, "userId":I
    iget-object v8, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    new-instance v9, Lcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda12;

    invoke-direct {v9, p0, v3, v7, p3}, Lcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda12;-><init>(Lcom/android/server/pm/permission/PermissionManagerService;Lcom/android/server/pm/permission/Permission;ILcom/android/server/pm/permission/PermissionManagerService$PermissionCallback;)V

    invoke-virtual {v8, v9}, Landroid/content/pm/PackageManagerInternal;->forEachPackage(Ljava/util/function/Consumer;)V

    .line 4235
    .end local v7    # "userId":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 4241
    .end local v4    # "userIds":[I
    .end local v5    # "numUserIds":I
    .end local v6    # "userIdNum":I
    :cond_8
    goto :goto_4

    .line 4242
    :cond_9
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    new-instance v5, Lcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda11;

    invoke-direct {v5, p0, v3}, Lcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/pm/permission/PermissionManagerService;Lcom/android/server/pm/permission/Permission;)V

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManagerInternal;->forEachPackage(Ljava/util/function/Consumer;)V

    .line 4258
    :goto_4
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 4259
    :try_start_2
    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v3}, Lcom/android/server/pm/permission/Permission;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/pm/permission/PermissionRegistry;->removePermission(Ljava/lang/String;)V

    .line 4260
    monitor-exit v4

    .line 4261
    goto/16 :goto_1

    .line 4260
    :catchall_1
    move-exception v2

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2

    .line 4278
    .end local v3    # "bp":Lcom/android/server/pm/permission/Permission;
    :cond_a
    return v0

    .line 4224
    :catchall_2
    move-exception v3

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v3
.end method

.method private updatePermissionTreeSourcePackage(Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z
    .locals 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 4334
    if-nez p1, :cond_0

    .line 4335
    const/4 v0, 0x1

    return v0

    .line 4337
    :cond_0
    const/4 v0, 0x0

    .line 4339
    .local v0, "changed":Z
    const/4 v1, 0x0

    .line 4340
    .local v1, "needsUpdate":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/pm/permission/Permission;>;"
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 4341
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v3}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermissionTrees()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 4342
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/pm/permission/Permission;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 4343
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/permission/Permission;

    .line 4344
    .local v4, "bp":Lcom/android/server/pm/permission/Permission;
    invoke-virtual {v4}, Lcom/android/server/pm/permission/Permission;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 4348
    goto :goto_0

    .line 4352
    :cond_1
    const/4 v0, 0x1

    .line 4353
    if-eqz p2, :cond_2

    invoke-virtual {v4}, Lcom/android/server/pm/permission/Permission;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {p2, v5}, Lcom/android/server/pm/permission/PermissionManagerService;->hasPermission(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 4354
    :cond_2
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Removing permission tree "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/server/pm/permission/Permission;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " that used to be declared by "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4355
    invoke-virtual {v4}, Lcom/android/server/pm/permission/Permission;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 4354
    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4356
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 4358
    :cond_3
    if-nez v1, :cond_4

    .line 4359
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    move-object v1, v5

    .line 4361
    :cond_4
    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4362
    nop

    .end local v4    # "bp":Lcom/android/server/pm/permission/Permission;
    goto :goto_0

    .line 4363
    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/pm/permission/Permission;>;"
    :cond_5
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4364
    if-eqz v1, :cond_7

    .line 4365
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/permission/Permission;

    .line 4366
    .local v3, "bp":Lcom/android/server/pm/permission/Permission;
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 4367
    invoke-virtual {v3}, Lcom/android/server/pm/permission/Permission;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v4

    .line 4368
    .local v4, "sourcePkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 4370
    invoke-virtual {v3}, Lcom/android/server/pm/permission/Permission;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 4369
    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManagerInternal;->getPackageSetting(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v5

    .line 4371
    .local v5, "sourcePs":Lcom/android/server/pm/PackageSetting;
    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 4372
    if-eqz v4, :cond_6

    if-eqz v5, :cond_6

    .line 4373
    :try_start_1
    monitor-exit v6

    goto :goto_1

    .line 4375
    :cond_6
    const-string v7, "PackageManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Removing dangling permission tree: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/pm/permission/Permission;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " from package "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4376
    invoke-virtual {v3}, Lcom/android/server/pm/permission/Permission;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 4375
    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4377
    iget-object v7, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v3}, Lcom/android/server/pm/permission/Permission;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/server/pm/permission/PermissionRegistry;->removePermission(Ljava/lang/String;)V

    .line 4378
    monitor-exit v6

    .line 4379
    .end local v3    # "bp":Lcom/android/server/pm/permission/Permission;
    .end local v4    # "sourcePkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local v5    # "sourcePs":Lcom/android/server/pm/PackageSetting;
    goto :goto_1

    .line 4378
    .restart local v3    # "bp":Lcom/android/server/pm/permission/Permission;
    .restart local v4    # "sourcePkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .restart local v5    # "sourcePs":Lcom/android/server/pm/PackageSetting;
    :catchall_0
    move-exception v2

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 4381
    .end local v3    # "bp":Lcom/android/server/pm/permission/Permission;
    .end local v4    # "sourcePkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local v5    # "sourcePs":Lcom/android/server/pm/PackageSetting;
    :cond_7
    return v0

    .line 4363
    :catchall_1
    move-exception v3

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3
.end method

.method private updatePermissions(Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 4047
    if-nez p2, :cond_0

    const/4 v0, 0x3

    move v5, v0

    goto :goto_0

    .line 4048
    :cond_0
    const/4 v0, 0x2

    move v5, v0

    :goto_0
    nop

    .line 4049
    .local v5, "flags":I
    nop

    .line 4050
    invoke-static {p2}, Lcom/android/server/pm/permission/PermissionManagerService;->getVolumeUuidForPackage(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mDefaultPermissionCallback:Lcom/android/server/pm/permission/PermissionManagerService$PermissionCallback;

    .line 4049
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/server/pm/permission/PermissionManagerService;->updatePermissions(Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/lang/String;ILcom/android/server/pm/permission/PermissionManagerService$PermissionCallback;)V

    .line 4051
    return-void
.end method

.method private updatePermissions(Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/lang/String;ILcom/android/server/pm/permission/PermissionManagerService$PermissionCallback;)V
    .locals 18
    .param p1, "changingPkgName"    # Ljava/lang/String;
    .param p2, "changingPkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p3, "replaceVolumeUuid"    # Ljava/lang/String;
    .param p4, "flags"    # I
    .param p5, "callback"    # Lcom/android/server/pm/permission/PermissionManagerService$PermissionCallback;

    .line 4137
    move-object/from16 v7, p0

    move-object/from16 v8, p2

    invoke-direct/range {p0 .. p2}, Lcom/android/server/pm/permission/PermissionManagerService;->updatePermissionTreeSourcePackage(Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v9

    .line 4141
    .local v9, "permissionTreesSourcePackageChanged":Z
    move-object/from16 v10, p1

    move-object/from16 v11, p5

    invoke-direct {v7, v10, v8, v11}, Lcom/android/server/pm/permission/PermissionManagerService;->updatePermissionSourcePackage(Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/permission/PermissionManagerService$PermissionCallback;)Z

    move-result v12

    .line 4144
    .local v12, "permissionSourcePackageChanged":Z
    or-int v0, v9, v12

    if-eqz v0, :cond_0

    .line 4147
    const-string v0, "PackageManager"

    const-string v1, "Permission ownership changed. Updating all permissions."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4148
    or-int/lit8 v0, p4, 0x1

    move v13, v0

    .end local p4    # "flags":I
    .local v0, "flags":I
    goto :goto_0

    .line 4144
    .end local v0    # "flags":I
    .restart local p4    # "flags":I
    :cond_0
    move/from16 v13, p4

    .line 4151
    .end local p4    # "flags":I
    .local v13, "flags":I
    :goto_0
    const-wide/32 v14, 0x40000

    const-string v0, "restorePermissionState"

    invoke-static {v14, v15, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 4153
    and-int/lit8 v0, v13, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x1

    if-eqz v0, :cond_2

    .line 4154
    and-int/lit8 v0, v13, 0x4

    if-eqz v0, :cond_1

    move/from16 v3, v17

    goto :goto_1

    :cond_1
    move/from16 v3, v16

    .line 4155
    .local v3, "replaceAll":Z
    :goto_1
    iget-object v6, v7, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    new-instance v5, Lcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda10;

    move-object v0, v5

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v4, p3

    move-object v14, v5

    move-object/from16 v5, p1

    move-object v15, v6

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/pm/permission/PermissionManagerService;Lcom/android/server/pm/parsing/pkg/AndroidPackage;ZLjava/lang/String;Ljava/lang/String;Lcom/android/server/pm/permission/PermissionManagerService$PermissionCallback;)V

    invoke-virtual {v15, v14}, Landroid/content/pm/PackageManagerInternal;->forEachPackage(Ljava/util/function/Consumer;)V

    .line 4167
    .end local v3    # "replaceAll":Z
    :cond_2
    if-eqz v8, :cond_5

    .line 4169
    invoke-static/range {p2 .. p2}, Lcom/android/server/pm/permission/PermissionManagerService;->getVolumeUuidForPackage(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Ljava/lang/String;

    move-result-object v6

    .line 4170
    .local v6, "volumeUuid":Ljava/lang/String;
    and-int/lit8 v0, v13, 0x2

    if-eqz v0, :cond_3

    .line 4171
    move-object/from16 v14, p3

    invoke-static {v14, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move/from16 v2, v17

    goto :goto_2

    .line 4170
    :cond_3
    move-object/from16 v14, p3

    .line 4171
    :cond_4
    move/from16 v2, v16

    .line 4172
    .local v2, "replace":Z
    :goto_2
    const/4 v5, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v3, p1

    move-object/from16 v4, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/permission/PermissionManagerService;->restorePermissionState(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ZLjava/lang/String;Lcom/android/server/pm/permission/PermissionManagerService$PermissionCallback;I)V

    goto :goto_3

    .line 4167
    .end local v2    # "replace":Z
    .end local v6    # "volumeUuid":Ljava/lang/String;
    :cond_5
    move-object/from16 v14, p3

    .line 4175
    :goto_3
    const-wide/32 v0, 0x40000

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 4176
    return-void
.end method

.method private writeLegacyPermissionState()V
    .locals 3

    .line 4657
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4658
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mState:Lcom/android/server/pm/permission/DevicePermissionState;

    invoke-virtual {v1}, Lcom/android/server/pm/permission/DevicePermissionState;->getUserIds()[I

    move-result-object v1

    .line 4659
    .local v1, "userIds":[I
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4660
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    new-instance v2, Lcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda14;

    invoke-direct {v2, p0, v1}, Lcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda14;-><init>(Lcom/android/server/pm/permission/PermissionManagerService;[I)V

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManagerInternal;->forEachPackageSetting(Ljava/util/function/Consumer;)V

    .line 4700
    return-void

    .line 4659
    .end local v1    # "userIds":[I
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private writeLegacyPermissions(Lcom/android/server/pm/permission/LegacyPermissionSettings;)V
    .locals 11
    .param p1, "legacyPermissionSettings"    # Lcom/android/server/pm/permission/LegacyPermissionSettings;

    .line 4738
    const/4 v0, 0x0

    .local v0, "writePermissionOrPermissionTree":I
    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_3

    .line 4740
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4741
    .local v1, "legacyPermissions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/LegacyPermission;>;"
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 4742
    if-nez v0, :cond_0

    .line 4743
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v3}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermissions()Ljava/util/Collection;

    move-result-object v3

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v3}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermissionTrees()Ljava/util/Collection;

    move-result-object v3

    .line 4744
    .local v3, "permissions":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/pm/permission/Permission;>;"
    :goto_1
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/permission/Permission;

    .line 4746
    .local v5, "permission":Lcom/android/server/pm/permission/Permission;
    new-instance v6, Lcom/android/server/pm/permission/LegacyPermission;

    .line 4747
    invoke-virtual {v5}, Lcom/android/server/pm/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v7

    invoke-virtual {v5}, Lcom/android/server/pm/permission/Permission;->getType()I

    move-result v8

    const/4 v9, 0x0

    sget-object v10, Llibcore/util/EmptyArray;->INT:[I

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/android/server/pm/permission/LegacyPermission;-><init>(Landroid/content/pm/PermissionInfo;II[I)V

    .line 4749
    .local v6, "legacyPermission":Lcom/android/server/pm/permission/LegacyPermission;
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4750
    nop

    .end local v5    # "permission":Lcom/android/server/pm/permission/Permission;
    .end local v6    # "legacyPermission":Lcom/android/server/pm/permission/LegacyPermission;
    goto :goto_2

    .line 4751
    .end local v3    # "permissions":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/pm/permission/Permission;>;"
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4752
    if-nez v0, :cond_2

    .line 4753
    invoke-virtual {p1, v1}, Lcom/android/server/pm/permission/LegacyPermissionSettings;->replacePermissions(Ljava/util/List;)V

    goto :goto_3

    .line 4755
    :cond_2
    invoke-virtual {p1, v1}, Lcom/android/server/pm/permission/LegacyPermissionSettings;->replacePermissionTrees(Ljava/util/List;)V

    .line 4739
    .end local v1    # "legacyPermissions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/LegacyPermission;>;"
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4751
    .restart local v1    # "legacyPermissions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/LegacyPermission;>;"
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 4758
    .end local v0    # "writePermissionOrPermissionTree":I
    .end local v1    # "legacyPermissions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/LegacyPermission;>;"
    :cond_3
    return-void
.end method


# virtual methods
.method public addAllowlistedRestrictedPermission(Ljava/lang/String;Ljava/lang/String;II)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permName"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p4, "userId"    # I

    .line 1186
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1188
    invoke-direct {p0, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->checkExistsAndEnforceCannotModifyImmutablyRestrictedPermission(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1189
    return v1

    .line 1192
    :cond_0
    nop

    .line 1193
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerService;->getAllowlistedRestrictedPermissions(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    .line 1194
    .local v0, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v0, :cond_1

    .line 1195
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    move-object v0, v2

    .line 1197
    :cond_1
    invoke-interface {v0, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_2

    .line 1198
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1199
    invoke-direct {p0, p1, v0, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerService;->setAllowlistedRestrictedPermissions(Ljava/lang/String;Ljava/util/List;II)Z

    move-result v1

    return v1

    .line 1202
    :cond_2
    return v1
.end method

.method public addOnPermissionsChangeListener(Landroid/permission/IOnPermissionsChangeListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/permission/IOnPermissionsChangeListener;

    .line 1070
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.OBSERVE_GRANT_REVOKE_PERMISSIONS"

    const-string v2, "addOnPermissionsChangeListener"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1074
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mOnPermissionChangeListeners:Lcom/android/server/pm/permission/PermissionManagerService$OnPermissionChangeListeners;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/permission/PermissionManagerService$OnPermissionChangeListeners;->addListener(Landroid/permission/IOnPermissionsChangeListener;)V

    .line 1075
    return-void
.end method

.method public addPermission(Landroid/content/pm/PermissionInfo;Z)Z
    .locals 10
    .param p1, "info"    # Landroid/content/pm/PermissionInfo;
    .param p2, "async"    # Z

    .line 635
    invoke-static {}, Lcom/android/server/pm/permission/PermissionManagerService;->getCallingUid()I

    move-result v0

    .line 636
    .local v0, "callingUid":I
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManagerInternal;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_7

    .line 639
    iget v1, p1, Landroid/content/pm/PermissionInfo;->labelRes:I

    if-nez v1, :cond_1

    iget-object v1, p1, Landroid/content/pm/PermissionInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 640
    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Label must be specified in permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 644
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 645
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    iget-object v3, p1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Lcom/android/server/pm/permission/PermissionRegistry;->enforcePermissionTree(Ljava/lang/String;I)Lcom/android/server/pm/permission/Permission;

    move-result-object v2

    .line 646
    .local v2, "tree":Lcom/android/server/pm/permission/Permission;
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    iget-object v4, p1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v3

    .line 647
    .local v3, "bp":Lcom/android/server/pm/permission/Permission;
    if-nez v3, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    .line 648
    .local v4, "added":Z
    :goto_1
    iget v5, p1, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    invoke-static {v5}, Landroid/content/pm/PermissionInfo;->fixProtectionLevel(I)I

    move-result v5

    .line 649
    .local v5, "fixedLevel":I
    if-eqz v4, :cond_3

    .line 650
    invoke-direct {p0, p1, v2}, Lcom/android/server/pm/permission/PermissionManagerService;->enforcePermissionCapLocked(Landroid/content/pm/PermissionInfo;Lcom/android/server/pm/permission/Permission;)V

    .line 651
    new-instance v6, Lcom/android/server/pm/permission/Permission;

    iget-object v7, p1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/android/server/pm/permission/Permission;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    invoke-direct {v6, v7, v8, v9}, Lcom/android/server/pm/permission/Permission;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    move-object v3, v6

    goto :goto_2

    .line 652
    :cond_3
    invoke-virtual {v3}, Lcom/android/server/pm/permission/Permission;->isDynamic()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 656
    :goto_2
    invoke-virtual {v3, v5, p1, v2}, Lcom/android/server/pm/permission/Permission;->addToTree(ILandroid/content/pm/PermissionInfo;Lcom/android/server/pm/permission/Permission;)Z

    move-result v6

    .line 657
    .local v6, "changed":Z
    if-eqz v4, :cond_4

    .line 658
    iget-object v7, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v7, v3}, Lcom/android/server/pm/permission/PermissionRegistry;->addPermission(Lcom/android/server/pm/permission/Permission;)V

    .line 660
    .end local v2    # "tree":Lcom/android/server/pm/permission/Permission;
    .end local v3    # "bp":Lcom/android/server/pm/permission/Permission;
    .end local v5    # "fixedLevel":I
    :cond_4
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 661
    if-eqz v6, :cond_5

    .line 662
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v1, p2}, Landroid/content/pm/PackageManagerInternal;->writeSettings(Z)V

    .line 664
    :cond_5
    return v4

    .line 653
    .end local v6    # "changed":Z
    .restart local v2    # "tree":Lcom/android/server/pm/permission/Permission;
    .restart local v3    # "bp":Lcom/android/server/pm/permission/Permission;
    .restart local v5    # "fixedLevel":I
    :cond_6
    :try_start_1
    new-instance v6, Ljava/lang/SecurityException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Not allowed to modify non-dynamic permission "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v0    # "callingUid":I
    .end local p0    # "this":Lcom/android/server/pm/permission/PermissionManagerService;
    .end local p1    # "info":Landroid/content/pm/PermissionInfo;
    .end local p2    # "async":Z
    throw v6

    .line 660
    .end local v2    # "tree":Lcom/android/server/pm/permission/Permission;
    .end local v3    # "bp":Lcom/android/server/pm/permission/Permission;
    .end local v4    # "added":Z
    .end local v5    # "fixedLevel":I
    .restart local v0    # "callingUid":I
    .restart local p0    # "this":Lcom/android/server/pm/permission/PermissionManagerService;
    .restart local p1    # "info":Landroid/content/pm/PermissionInfo;
    .restart local p2    # "async":Z
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 637
    :cond_7
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Instant apps can\'t add permissions"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 442
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    const-string v1, "PackageManager"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 443
    return-void

    .line 446
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/permission/PermissionControllerManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/permission/PermissionControllerManager;

    invoke-virtual {v0, p1, p3}, Landroid/permission/PermissionControllerManager;->dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    .line 447
    return-void
.end method

.method public getAllPermissionGroups(I)Landroid/content/pm/ParceledListSlice;
    .locals 6
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/content/pm/PermissionGroupInfo;",
            ">;"
        }
    .end annotation

    .line 515
    invoke-static {}, Lcom/android/server/pm/permission/PermissionManagerService;->getCallingUid()I

    move-result v0

    .line 516
    .local v0, "callingUid":I
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManagerInternal;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 517
    invoke-static {}, Landroid/content/pm/ParceledListSlice;->emptyList()Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    return-object v1

    .line 520
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 521
    .local v1, "out":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PermissionGroupInfo;>;"
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 522
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v3}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermissionGroups()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/parsing/component/ParsedPermissionGroup;

    .line 523
    .local v4, "pg":Landroid/content/pm/parsing/component/ParsedPermissionGroup;
    invoke-static {v4, p1}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generatePermissionGroupInfo(Landroid/content/pm/parsing/component/ParsedPermissionGroup;I)Landroid/content/pm/PermissionGroupInfo;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 524
    nop

    .end local v4    # "pg":Landroid/content/pm/parsing/component/ParsedPermissionGroup;
    goto :goto_0

    .line 525
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 527
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 528
    .local v2, "callingUserId":I
    new-instance v3, Lcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda18;

    invoke-direct {v3, p0, v0, v2}, Lcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda18;-><init>(Lcom/android/server/pm/permission/PermissionManagerService;II)V

    invoke-interface {v1, v3}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    .line 530
    new-instance v3, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v3, v1}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v3

    .line 525
    .end local v2    # "callingUserId":I
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public getAllowlistedRestrictedPermissions(Ljava/lang/String;II)Ljava/util/List;
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1089
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1090
    const/4 v0, 0x7

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkFlagsArgument(II)I

    .line 1094
    int-to-float v0, p3

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonNegative(FLjava/lang/String;)F

    .line 1096
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq v0, p3, :cond_0

    .line 1097
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAllowlistedRestrictedPermissions for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1102
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v0

    .line 1103
    .local v0, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-nez v0, :cond_1

    .line 1104
    return-object v1

    .line 1107
    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 1108
    .local v2, "callingUid":I
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    invoke-virtual {v3, v0, v2, v4}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Lcom/android/server/pm/parsing/pkg/AndroidPackage;II)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1109
    return-object v1

    .line 1111
    :cond_2
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.WHITELIST_RESTRICTED_PERMISSIONS"

    invoke-virtual {v1, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    .line 1114
    .local v1, "isCallerPrivileged":Z
    :goto_0
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 1115
    invoke-virtual {v3, v0, v2}, Landroid/content/pm/PackageManagerInternal;->isCallerInstallerOfRecord(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)Z

    move-result v3

    .line 1117
    .local v3, "isCallerInstallerOnRecord":Z
    and-int/lit8 v4, p2, 0x1

    if-eqz v4, :cond_5

    if-eqz v1, :cond_4

    goto :goto_1

    .line 1119
    :cond_4
    new-instance v4, Ljava/lang/SecurityException;

    const-string v5, "Querying system allowlist requires android.permission.WHITELIST_RESTRICTED_PERMISSIONS"

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1123
    :cond_5
    :goto_1
    and-int/lit8 v4, p2, 0x6

    if-eqz v4, :cond_7

    .line 1125
    if-nez v1, :cond_7

    if-eqz v3, :cond_6

    goto :goto_2

    .line 1126
    :cond_6
    new-instance v4, Ljava/lang/SecurityException;

    const-string v5, "Querying upgrade or installer allowlist requires being installer on record or android.permission.WHITELIST_RESTRICTED_PERMISSIONS"

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1132
    :cond_7
    :goto_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1134
    .local v4, "identity":J
    :try_start_0
    invoke-direct {p0, v0, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerService;->getAllowlistedRestrictedPermissionsInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;II)Ljava/util/List;

    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1136
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1134
    return-object v6

    .line 1136
    :catchall_0
    move-exception v6

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1137
    throw v6
.end method

.method public getAutoRevokeExemptionGrantedPackages(I)Ljava/util/List;
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3360
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/android/server/pm/permission/PermissionManagerService;->getPackagesWithAutoRevokePolicy(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAutoRevokeExemptionRequestedPackages(I)Ljava/util/List;
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3355
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/android/server/pm/permission/PermissionManagerService;->getPackagesWithAutoRevokePolicy(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPermissionFlags(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 691
    invoke-static {}, Lcom/android/server/pm/permission/PermissionManagerService;->getCallingUid()I

    move-result v0

    .line 692
    .local v0, "callingUid":I
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/server/pm/permission/PermissionManagerService;->getPermissionFlagsInternal(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v1

    return v1
.end method

.method public getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;
    .locals 8
    .param p1, "groupName"    # Ljava/lang/String;
    .param p2, "flags"    # I

    .line 538
    invoke-static {}, Lcom/android/server/pm/permission/PermissionManagerService;->getCallingUid()I

    move-result v0

    .line 539
    .local v0, "callingUid":I
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManagerInternal;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 540
    return-object v2

    .line 544
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 545
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v3, p1}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermissionGroup(Ljava/lang/String;)Landroid/content/pm/parsing/component/ParsedPermissionGroup;

    move-result-object v3

    .line 546
    .local v3, "permissionGroup":Landroid/content/pm/parsing/component/ParsedPermissionGroup;
    if-nez v3, :cond_1

    .line 547
    monitor-exit v1

    return-object v2

    .line 549
    :cond_1
    invoke-static {v3, p2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generatePermissionGroupInfo(Landroid/content/pm/parsing/component/ParsedPermissionGroup;I)Landroid/content/pm/PermissionGroupInfo;

    move-result-object v4

    move-object v3, v4

    .line 551
    .local v3, "permissionGroupInfo":Landroid/content/pm/PermissionGroupInfo;
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 553
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 554
    .local v1, "callingUserId":I
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    iget-object v5, v3, Landroid/content/pm/PermissionGroupInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5, v0, v1}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Ljava/lang/String;II)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 556
    const v4, 0x534e4554

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "186113473"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    aput-object p1, v5, v6

    invoke-static {v4, v5}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 557
    return-object v2

    .line 559
    :cond_2
    return-object v3

    .line 551
    .end local v1    # "callingUserId":I
    .end local v3    # "permissionGroupInfo":Landroid/content/pm/PermissionGroupInfo;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public getPermissionInfo(Ljava/lang/String;Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;
    .locals 10
    .param p1, "permName"    # Ljava/lang/String;
    .param p2, "opPackageName"    # Ljava/lang/String;
    .param p3, "flags"    # I

    .line 567
    invoke-static {}, Lcom/android/server/pm/permission/PermissionManagerService;->getCallingUid()I

    move-result v0

    .line 568
    .local v0, "callingUid":I
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManagerInternal;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 569
    return-object v2

    .line 572
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v1, p2}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v1

    .line 573
    .local v1, "opPackage":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    invoke-direct {p0, v1, v0}, Lcom/android/server/pm/permission/PermissionManagerService;->getPermissionInfoCallingTargetSdkVersion(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)I

    move-result v3

    .line 576
    .local v3, "targetSdkVersion":I
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 577
    :try_start_0
    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v5, p1}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v5

    .line 578
    .local v5, "bp":Lcom/android/server/pm/permission/Permission;
    if-nez v5, :cond_1

    .line 579
    monitor-exit v4

    return-object v2

    .line 581
    :cond_1
    invoke-virtual {v5, p3, v3}, Lcom/android/server/pm/permission/Permission;->generatePermissionInfo(II)Landroid/content/pm/PermissionInfo;

    move-result-object v6

    move-object v5, v6

    .line 582
    .local v5, "permissionInfo":Landroid/content/pm/PermissionInfo;
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 584
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 585
    .local v4, "callingUserId":I
    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    iget-object v7, v5, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7, v0, v4}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Ljava/lang/String;II)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 587
    const v6, 0x534e4554

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "183122164"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    aput-object p1, v7, v8

    invoke-static {v6, v7}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 588
    return-object v2

    .line 590
    :cond_2
    return-object v5

    .line 582
    .end local v4    # "callingUserId":I
    .end local v5    # "permissionInfo":Landroid/content/pm/PermissionInfo;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public getSplitPermissions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/permission/SplitPermissionInfoParcelable;",
            ">;"
        }
    .end annotation

    .line 3275
    invoke-direct {p0}, Lcom/android/server/pm/permission/PermissionManagerService;->getSplitPermissionInfos()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Landroid/permission/PermissionManager;->splitPermissionInfoListToParcelableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 1409
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 1410
    .local v7, "callingUid":I
    nop

    .line 1411
    const-string v0, "android.permission.ADJUST_RUNTIME_PERMISSIONS_POLICY"

    invoke-direct {p0, v7, v0}, Lcom/android/server/pm/permission/PermissionManagerService;->checkUidPermission(ILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v3, v0

    .line 1414
    .local v3, "overridePolicy":Z
    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mDefaultPermissionCallback:Lcom/android/server/pm/permission/PermissionManagerService$PermissionCallback;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, v7

    move v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/permission/PermissionManagerService;->grantRuntimePermissionInternal(Ljava/lang/String;Ljava/lang/String;ZIILcom/android/server/pm/permission/PermissionManagerService$PermissionCallback;)V

    .line 1416
    return-void
.end method

.method public isAutoRevokeExempted(Ljava/lang/String;I)Z
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1383
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1385
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v0

    .line 1386
    .local v0, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1387
    .local v1, "callingUid":I
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v2, p1, v1, p2}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Ljava/lang/String;II)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 1388
    return v3

    .line 1391
    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/android/server/pm/permission/PermissionManagerService;->checkAutoRevokeAccess(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1392
    return v3

    .line 1395
    :cond_1
    invoke-interface {v0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUid()I

    move-result v2

    invoke-static {p2, v2}, Landroid/os/UserHandle;->getUid(II)I

    move-result v2

    .line 1397
    .local v2, "packageUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1399
    .local v4, "identity":J
    :try_start_0
    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    const/16 v7, 0x61

    invoke-virtual {v6, v7, v2, p1}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    move v3, v7

    .line 1403
    :cond_2
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1399
    return v3

    .line 1403
    :catchall_0
    move-exception v3

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1404
    throw v3
.end method

.method public isPermissionRevokedByPolicy(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 2015
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq v0, p3, :cond_0

    .line 2016
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isPermissionRevokedByPolicy for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2021
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerService;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 2022
    return v1

    .line 2025
    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2026
    .local v0, "callingUid":I
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v2, p1, v0, p3}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Ljava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2027
    return v1

    .line 2030
    :cond_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2032
    .local v2, "identity":J
    :try_start_0
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/server/pm/permission/PermissionManagerService;->getPermissionFlagsInternal(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2033
    .local v4, "flags":I
    and-int/lit8 v5, v4, 0x4

    if-eqz v5, :cond_3

    const/4 v1, 0x1

    .line 2035
    :cond_3
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2033
    return v1

    .line 2035
    .end local v4    # "flags":I
    :catchall_0
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2036
    throw v1
.end method

.method public isRegisteredAttributionSource(Landroid/content/AttributionSource;)Z
    .locals 1
    .param p1, "source"    # Landroid/content/AttributionSource;

    .line 3350
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mAttributionSourceRegistry:Lcom/android/server/pm/permission/PermissionManagerService$AttributionSourceRegistry;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/permission/PermissionManagerService$AttributionSourceRegistry;->isRegisteredAttributionSource(Landroid/content/AttributionSource;)Z

    move-result v0

    return v0
.end method

.method public synthetic lambda$getAllPermissionGroups$0$PermissionManagerService(IILandroid/content/pm/PermissionGroupInfo;)Z
    .locals 2
    .param p1, "callingUid"    # I
    .param p2, "callingUserId"    # I
    .param p3, "it"    # Landroid/content/pm/PermissionGroupInfo;

    .line 528
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    iget-object v1, p3, Landroid/content/pm/PermissionGroupInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public synthetic lambda$getGrantedPermissionsInternal$7$PermissionManagerService(ILcom/android/server/pm/PackageSetting;Ljava/lang/String;)Z
    .locals 6
    .param p1, "userId"    # I
    .param p2, "ps"    # Lcom/android/server/pm/PackageSetting;
    .param p3, "permissionName"    # Ljava/lang/String;

    .line 2532
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v0, p3}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v0

    .line 2533
    .local v0, "permission":Lcom/android/server/pm/permission/Permission;
    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 2534
    return v1

    .line 2536
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/pm/permission/Permission;->isInstant()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 2537
    const v2, 0x534e4554

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "140256621"

    aput-object v5, v4, v3

    .line 2538
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getAppId()I

    move-result v3

    .line 2537
    invoke-static {p1, v3}, Landroid/os/UserHandle;->getUid(II)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v1

    const/4 v3, 0x2

    aput-object p3, v4, v3

    invoke-static {v2, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2539
    return v1

    .line 2541
    :cond_1
    return v3
.end method

.method public synthetic lambda$onPackageAddedInternal$15$PermissionManagerService(ZLcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/parsing/pkg/AndroidPackage;ZLjava/util/List;)V
    .locals 0
    .param p1, "hasOldPkg"    # Z
    .param p2, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p3, "oldPkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p4, "hasPermissionDefinitionChanges"    # Z
    .param p5, "permissionsWithChangedDefinition"    # Ljava/util/List;

    .line 4805
    if-eqz p1, :cond_0

    .line 4806
    invoke-direct {p0, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerService;->revokeRuntimePermissionsIfGroupChangedInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V

    .line 4807
    invoke-direct {p0, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerService;->revokeStoragePermissionsIfScopeExpandedInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V

    .line 4809
    :cond_0
    if-eqz p4, :cond_1

    .line 4810
    invoke-direct {p0, p5}, Lcom/android/server/pm/permission/PermissionManagerService;->revokeRuntimePermissionsIfPermissionDefinitionChangedInternal(Ljava/util/List;)V

    .line 4813
    :cond_1
    return-void
.end method

.method public synthetic lambda$queryPermissionsByGroup$1$PermissionManagerService(IILandroid/content/pm/PermissionInfo;)Z
    .locals 2
    .param p1, "callingUid"    # I
    .param p2, "callingUserId"    # I
    .param p3, "it"    # Landroid/content/pm/PermissionInfo;

    .line 628
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    iget-object v1, p3, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public synthetic lambda$readLegacyPermissionState$13$PermissionManagerService([ILcom/android/server/pm/PackageSetting;)V
    .locals 9
    .param p1, "userIds"    # [I
    .param p2, "ps"    # Lcom/android/server/pm/PackageSetting;

    .line 4622
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getAppId()I

    move-result v0

    .line 4623
    .local v0, "appId":I
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getLegacyPermissionState()Lcom/android/server/pm/permission/LegacyPermissionState;

    move-result-object v1

    .line 4625
    .local v1, "legacyState":Lcom/android/server/pm/permission/LegacyPermissionState;
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 4626
    :try_start_0
    array-length v3, p1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget v5, p1, v4

    .line 4627
    .local v5, "userId":I
    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mState:Lcom/android/server/pm/permission/DevicePermissionState;

    invoke-virtual {v6, v5}, Lcom/android/server/pm/permission/DevicePermissionState;->getOrCreateUserState(I)Lcom/android/server/pm/permission/UserPermissionState;

    move-result-object v6

    .line 4629
    .local v6, "userState":Lcom/android/server/pm/permission/UserPermissionState;
    iget-object v7, p2, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->areInstallPermissionsFixed()Z

    move-result v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/pm/permission/UserPermissionState;->setInstallPermissionsFixed(Ljava/lang/String;Z)V

    .line 4630
    invoke-virtual {v6, v0}, Lcom/android/server/pm/permission/UserPermissionState;->getOrCreateUidState(I)Lcom/android/server/pm/permission/UidPermissionState;

    move-result-object v7

    .line 4631
    .local v7, "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    invoke-virtual {v7}, Lcom/android/server/pm/permission/UidPermissionState;->reset()V

    .line 4632
    invoke-virtual {v1, v5}, Lcom/android/server/pm/permission/LegacyPermissionState;->isMissing(I)Z

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/server/pm/permission/UidPermissionState;->setMissing(Z)V

    .line 4633
    nop

    .line 4634
    invoke-virtual {v1, v5}, Lcom/android/server/pm/permission/LegacyPermissionState;->getPermissionStates(I)Ljava/util/Collection;

    move-result-object v8

    .line 4633
    invoke-direct {p0, v7, v8}, Lcom/android/server/pm/permission/PermissionManagerService;->readLegacyPermissionStatesLocked(Lcom/android/server/pm/permission/UidPermissionState;Ljava/util/Collection;)V

    .line 4626
    .end local v5    # "userId":I
    .end local v6    # "userState":Lcom/android/server/pm/permission/UserPermissionState;
    .end local v7    # "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 4636
    :cond_0
    monitor-exit v2

    .line 4637
    return-void

    .line 4636
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public synthetic lambda$restoreDelayedRuntimePermissions$4$PermissionManagerService(ILjava/lang/Boolean;)V
    .locals 3
    .param p1, "userId"    # I
    .param p2, "hasMoreBackup"    # Ljava/lang/Boolean;

    .line 2098
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2099
    return-void

    .line 2101
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2102
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mHasNoDelayedPermBackup:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 2103
    monitor-exit v0

    .line 2104
    return-void

    .line 2103
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public synthetic lambda$revokeRuntimePermissionsIfGroupChangedInternal$5$PermissionManagerService([ILjava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/lang/String;Ljava/lang/String;ILcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .locals 19
    .param p1, "userIds"    # [I
    .param p2, "permissionName"    # Ljava/lang/String;
    .param p3, "newPackage"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p4, "oldPermissionGroupName"    # Ljava/lang/String;
    .param p5, "newPermissionGroupName"    # Ljava/lang/String;
    .param p6, "callingUid"    # I
    .param p7, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 2271
    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    invoke-interface/range {p7 .. p7}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v12

    .line 2272
    .local v12, "packageName":Ljava/lang/String;
    array-length v13, v10

    const/4 v14, 0x0

    move v15, v14

    :goto_0
    if-ge v15, v13, :cond_1

    aget v8, v10, v15

    .line 2273
    .local v8, "userId":I
    invoke-direct {v9, v12, v11, v8}, Lcom/android/server/pm/permission/PermissionManagerService;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v16

    .line 2275
    .local v16, "permissionState":I
    if-nez v16, :cond_0

    .line 2276
    const v0, 0x534e4554

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "72710897"

    aput-object v2, v1, v14

    .line 2277
    invoke-interface/range {p3 .. p3}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Revoking permission "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " from package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " as the group changed from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v7, p4

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v6, p5

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 2276
    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2284
    const/4 v4, 0x0

    const/4 v0, 0x0

    :try_start_0
    iget-object v5, v9, Lcom/android/server/pm/permission/PermissionManagerService;->mDefaultPermissionCallback:Lcom/android/server/pm/permission/PermissionManagerService$PermissionCallback;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v1, p0

    move-object v2, v12

    move-object/from16 v3, p2

    move-object/from16 v17, v5

    move/from16 v5, p6

    move v6, v8

    move-object v7, v0

    move/from16 v18, v8

    .end local v8    # "userId":I
    .local v18, "userId":I
    move-object/from16 v8, v17

    :try_start_1
    invoke-direct/range {v1 .. v8}, Lcom/android/server/pm/permission/PermissionManagerService;->revokeRuntimePermissionInternal(Ljava/lang/String;Ljava/lang/String;ZIILjava/lang/String;Lcom/android/server/pm/permission/PermissionManagerService$PermissionCallback;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2290
    goto :goto_2

    .line 2287
    :catch_0
    move-exception v0

    goto :goto_1

    .end local v18    # "userId":I
    .restart local v8    # "userId":I
    :catch_1
    move-exception v0

    move/from16 v18, v8

    .line 2288
    .end local v8    # "userId":I
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    .restart local v18    # "userId":I
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not revoke "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PackageManager"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 2275
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .end local v18    # "userId":I
    .restart local v8    # "userId":I
    :cond_0
    move/from16 v18, v8

    .line 2272
    .end local v8    # "userId":I
    .end local v16    # "permissionState":I
    :goto_2
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_0

    .line 2293
    :cond_1
    return-void
.end method

.method public synthetic lambda$revokeRuntimePermissionsIfPermissionDefinitionChangedInternal$6$PermissionManagerService([ILjava/lang/String;ILcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .locals 23
    .param p1, "userIds"    # [I
    .param p2, "permName"    # Ljava/lang/String;
    .param p3, "callingUid"    # I
    .param p4, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 2320
    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    invoke-interface/range {p4 .. p4}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v12

    .line 2321
    .local v12, "packageName":Ljava/lang/String;
    invoke-interface/range {p4 .. p4}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUid()I

    move-result v13

    .line 2322
    .local v13, "appId":I
    const/16 v0, 0x2710

    if-ge v13, v0, :cond_0

    .line 2324
    return-void

    .line 2326
    :cond_0
    array-length v14, v10

    const/4 v15, 0x0

    move v8, v15

    :goto_0
    if-ge v8, v14, :cond_2

    aget v7, v10, v8

    .line 2327
    .local v7, "userId":I
    invoke-direct {v9, v12, v11, v7}, Lcom/android/server/pm/permission/PermissionManagerService;->checkPermissionImpl(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v16

    .line 2329
    .local v16, "permissionState":I
    invoke-virtual {v9, v12, v11, v7}, Lcom/android/server/pm/permission/PermissionManagerService;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v17

    .line 2330
    .local v17, "flags":I
    const v18, 0x8034

    .line 2334
    .local v18, "flagMask":I
    if-nez v16, :cond_1

    const v0, 0x8034

    and-int v0, v17, v0

    if-nez v0, :cond_1

    .line 2336
    invoke-static {v7, v13}, Landroid/os/UserHandle;->getUid(II)I

    move-result v19

    .line 2337
    .local v19, "uid":I
    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "154505240"

    aput-object v2, v1, v15

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Revoking permission "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " from package "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " due to definition change"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v20, 0x2

    aput-object v2, v1, v20

    const v2, 0x534e4554

    invoke-static {v2, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2340
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "168319670"

    aput-object v1, v0, v15

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v20

    invoke-static {v2, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2343
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v6, "PackageManager"

    invoke-static {v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2346
    const/4 v4, 0x0

    const/4 v0, 0x0

    :try_start_0
    iget-object v5, v9, Lcom/android/server/pm/permission/PermissionManagerService;->mDefaultPermissionCallback:Lcom/android/server/pm/permission/PermissionManagerService$PermissionCallback;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v1, p0

    move-object v2, v12

    move-object/from16 v3, p2

    move-object/from16 v20, v5

    move/from16 v5, p3

    move-object v15, v6

    move v6, v7

    move/from16 v21, v7

    .end local v7    # "userId":I
    .local v21, "userId":I
    move-object v7, v0

    move/from16 v22, v8

    move-object/from16 v8, v20

    :try_start_1
    invoke-direct/range {v1 .. v8}, Lcom/android/server/pm/permission/PermissionManagerService;->revokeRuntimePermissionInternal(Ljava/lang/String;Ljava/lang/String;ZIILjava/lang/String;Lcom/android/server/pm/permission/PermissionManagerService$PermissionCallback;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 2351
    goto :goto_2

    .line 2348
    :catch_0
    move-exception v0

    goto :goto_1

    .end local v21    # "userId":I
    .restart local v7    # "userId":I
    :catch_1
    move-exception v0

    move-object v15, v6

    move/from16 v21, v7

    move/from16 v22, v8

    .line 2349
    .end local v7    # "userId":I
    .local v0, "e":Ljava/lang/Exception;
    .restart local v21    # "userId":I
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not revoke "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 2334
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v19    # "uid":I
    .end local v21    # "userId":I
    .restart local v7    # "userId":I
    :cond_1
    move/from16 v21, v7

    move/from16 v22, v8

    .line 2326
    .end local v7    # "userId":I
    .end local v16    # "permissionState":I
    .end local v17    # "flags":I
    .end local v18    # "flagMask":I
    :goto_2
    add-int/lit8 v8, v22, 0x1

    const/4 v15, 0x0

    goto/16 :goto_0

    .line 2354
    :cond_2
    return-void
.end method

.method public synthetic lambda$systemReady$12$PermissionManagerService(I)V
    .locals 2
    .param p1, "userId"    # I

    .line 4524
    sget-object v0, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/pm/permission/PermissionManagerService;->updateAllPermissions(Ljava/lang/String;Z)V

    return-void
.end method

.method public synthetic lambda$updatePermissionFlagsForAllApps$2$PermissionManagerService(I[ZIILcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .locals 5
    .param p1, "userId"    # I
    .param p2, "changed"    # [Z
    .param p3, "effectiveFlagMask"    # I
    .param p4, "effectiveFlagValues"    # I
    .param p5, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 906
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 907
    :try_start_0
    invoke-direct {p0, p5, p1}, Lcom/android/server/pm/permission/PermissionManagerService;->getUidStateLocked(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)Lcom/android/server/pm/permission/UidPermissionState;

    move-result-object v1

    .line 908
    .local v1, "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    if-nez v1, :cond_0

    .line 909
    const-string v2, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Missing permissions state for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 910
    invoke-interface {p5}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " and user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 909
    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    monitor-exit v0

    return-void

    .line 914
    :cond_0
    const/4 v2, 0x0

    aget-boolean v3, p2, v2

    invoke-virtual {v1, p3, p4}, Lcom/android/server/pm/permission/UidPermissionState;->updatePermissionFlagsForAllPermissions(II)Z

    move-result v4

    or-int/2addr v3, v4

    aput-boolean v3, p2, v2

    .line 916
    .end local v1    # "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 917
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mOnPermissionChangeListeners:Lcom/android/server/pm/permission/PermissionManagerService$OnPermissionChangeListeners;

    invoke-interface {p5}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/permission/PermissionManagerService$OnPermissionChangeListeners;->onPermissionsChanged(I)V

    .line 918
    return-void

    .line 916
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public synthetic lambda$updatePermissionSourcePackage$10$PermissionManagerService(Lcom/android/server/pm/permission/Permission;ILcom/android/server/pm/permission/PermissionManagerService$PermissionCallback;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .locals 6
    .param p1, "bp"    # Lcom/android/server/pm/permission/Permission;
    .param p2, "userId"    # I
    .param p3, "callback"    # Lcom/android/server/pm/permission/PermissionManagerService$PermissionCallback;
    .param p4, "p"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 4238
    invoke-interface {p4}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 4239
    invoke-virtual {p1}, Lcom/android/server/pm/permission/Permission;->getName()Ljava/lang/String;

    move-result-object v2

    .line 4238
    const/4 v3, 0x1

    move-object v0, p0

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/permission/PermissionManagerService;->revokePermissionFromPackageForUser(Ljava/lang/String;Ljava/lang/String;ZILcom/android/server/pm/permission/PermissionManagerService$PermissionCallback;)V

    return-void
.end method

.method public synthetic lambda$updatePermissionSourcePackage$11$PermissionManagerService(Lcom/android/server/pm/permission/Permission;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .locals 9
    .param p1, "bp"    # Lcom/android/server/pm/permission/Permission;
    .param p2, "p"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 4243
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mUserManagerInt:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    move-result-object v0

    .line 4244
    .local v0, "userIds":[I
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 4245
    :try_start_0
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget v4, v0, v3

    .line 4246
    .local v4, "userId":I
    invoke-direct {p0, p2, v4}, Lcom/android/server/pm/permission/PermissionManagerService;->getUidStateLocked(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)Lcom/android/server/pm/permission/UidPermissionState;

    move-result-object v5

    .line 4248
    .local v5, "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    if-nez v5, :cond_0

    .line 4249
    const-string v6, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Missing permissions state for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4250
    invoke-interface {p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " and user "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 4249
    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4251
    goto :goto_1

    .line 4253
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/pm/permission/Permission;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/pm/permission/UidPermissionState;->removePermissionState(Ljava/lang/String;)Z

    .line 4245
    .end local v4    # "userId":I
    .end local v5    # "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4255
    :cond_1
    monitor-exit v1

    .line 4256
    return-void

    .line 4255
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public synthetic lambda$updatePermissions$9$PermissionManagerService(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ZLjava/lang/String;Ljava/lang/String;Lcom/android/server/pm/permission/PermissionManagerService$PermissionCallback;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .locals 8
    .param p1, "changingPkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "replaceAll"    # Z
    .param p3, "replaceVolumeUuid"    # Ljava/lang/String;
    .param p4, "changingPkgName"    # Ljava/lang/String;
    .param p5, "callback"    # Lcom/android/server/pm/permission/PermissionManagerService$PermissionCallback;
    .param p6, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 4156
    if-ne p6, p1, :cond_0

    .line 4157
    return-void

    .line 4160
    :cond_0
    invoke-static {p6}, Lcom/android/server/pm/permission/PermissionManagerService;->getVolumeUuidForPackage(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Ljava/lang/String;

    move-result-object v0

    .line 4161
    .local v0, "volumeUuid":Ljava/lang/String;
    if-eqz p2, :cond_1

    invoke-static {p3, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    move v4, v1

    .line 4162
    .local v4, "replace":Z
    const/4 v7, -0x1

    move-object v2, p0

    move-object v3, p6

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/permission/PermissionManagerService;->restorePermissionState(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ZLjava/lang/String;Lcom/android/server/pm/permission/PermissionManagerService$PermissionCallback;I)V

    .line 4164
    return-void
.end method

.method public synthetic lambda$writeLegacyPermissionState$14$PermissionManagerService([ILcom/android/server/pm/PackageSetting;)V
    .locals 17
    .param p1, "userIds"    # [I
    .param p2, "ps"    # Lcom/android/server/pm/PackageSetting;

    .line 4661
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Lcom/android/server/pm/PackageSetting;->setInstallPermissionsFixed(Z)V

    .line 4662
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/pm/PackageSetting;->getLegacyPermissionState()Lcom/android/server/pm/permission/LegacyPermissionState;

    move-result-object v4

    .line 4663
    .local v4, "legacyState":Lcom/android/server/pm/permission/LegacyPermissionState;
    invoke-virtual {v4}, Lcom/android/server/pm/permission/LegacyPermissionState;->reset()V

    .line 4664
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/pm/PackageSetting;->getAppId()I

    move-result v5

    .line 4666
    .local v5, "appId":I
    iget-object v6, v1, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 4667
    :try_start_0
    array-length v7, v2

    :goto_0
    if-ge v0, v7, :cond_4

    aget v8, v2, v0

    .line 4668
    .local v8, "userId":I
    iget-object v9, v1, Lcom/android/server/pm/permission/PermissionManagerService;->mState:Lcom/android/server/pm/permission/DevicePermissionState;

    invoke-virtual {v9, v8}, Lcom/android/server/pm/permission/DevicePermissionState;->getUserState(I)Lcom/android/server/pm/permission/UserPermissionState;

    move-result-object v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4669
    .local v9, "userState":Lcom/android/server/pm/permission/UserPermissionState;
    if-nez v9, :cond_0

    .line 4670
    :try_start_1
    const-string v10, "PackageManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Missing user state for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4671
    move/from16 v16, v5

    goto/16 :goto_2

    .line 4698
    .end local v8    # "userId":I
    .end local v9    # "userState":Lcom/android/server/pm/permission/UserPermissionState;
    :catchall_0
    move-exception v0

    move/from16 v16, v5

    goto/16 :goto_3

    .line 4674
    .restart local v8    # "userId":I
    .restart local v9    # "userState":Lcom/android/server/pm/permission/UserPermissionState;
    :cond_0
    :try_start_2
    iget-object v10, v3, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/android/server/pm/permission/UserPermissionState;->areInstallPermissionsFixed(Ljava/lang/String;)Z

    move-result v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v10, :cond_1

    .line 4675
    const/4 v10, 0x1

    :try_start_3
    invoke-virtual {v3, v10}, Lcom/android/server/pm/PackageSetting;->setInstallPermissionsFixed(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 4678
    :cond_1
    :try_start_4
    invoke-virtual {v9, v5}, Lcom/android/server/pm/permission/UserPermissionState;->getUidState(I)Lcom/android/server/pm/permission/UidPermissionState;

    move-result-object v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 4679
    .local v10, "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    if-nez v10, :cond_2

    .line 4680
    :try_start_5
    const-string v11, "PackageManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Missing permission state for "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v3, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " and user "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 4682
    move/from16 v16, v5

    goto :goto_2

    .line 4685
    :cond_2
    :try_start_6
    invoke-virtual {v10}, Lcom/android/server/pm/permission/UidPermissionState;->isMissing()Z

    move-result v11

    invoke-virtual {v4, v11, v8}, Lcom/android/server/pm/permission/LegacyPermissionState;->setMissing(ZI)V

    .line 4686
    invoke-virtual {v10}, Lcom/android/server/pm/permission/UidPermissionState;->getPermissionStates()Ljava/util/List;

    move-result-object v11

    .line 4687
    .local v11, "permissionStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/PermissionState;>;"
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v12

    .line 4688
    .local v12, "permissionStatesSize":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_1
    if-ge v13, v12, :cond_3

    .line 4689
    invoke-interface {v11, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/pm/permission/PermissionState;

    .line 4691
    .local v14, "permissionState":Lcom/android/server/pm/permission/PermissionState;
    new-instance v15, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;

    .line 4692
    invoke-virtual {v14}, Lcom/android/server/pm/permission/PermissionState;->getName()Ljava/lang/String;

    move-result-object v1

    .line 4693
    invoke-virtual {v14}, Lcom/android/server/pm/permission/PermissionState;->getPermission()Lcom/android/server/pm/permission/Permission;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/pm/permission/Permission;->isRuntime()Z

    move-result v2

    .line 4694
    invoke-virtual {v14}, Lcom/android/server/pm/permission/PermissionState;->isGranted()Z

    move-result v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move/from16 v16, v5

    .end local v5    # "appId":I
    .local v16, "appId":I
    :try_start_7
    invoke-virtual {v14}, Lcom/android/server/pm/permission/PermissionState;->getFlags()I

    move-result v5

    invoke-direct {v15, v1, v2, v3, v5}, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;-><init>(Ljava/lang/String;ZZI)V

    move-object v1, v15

    .line 4695
    .local v1, "legacyPermissionState":Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;
    invoke-virtual {v4, v1, v8}, Lcom/android/server/pm/permission/LegacyPermissionState;->putPermissionState(Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;I)V

    .line 4688
    .end local v1    # "legacyPermissionState":Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;
    .end local v14    # "permissionState":Lcom/android/server/pm/permission/PermissionState;
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v5, v16

    goto :goto_1

    .end local v16    # "appId":I
    .restart local v5    # "appId":I
    :cond_3
    move/from16 v16, v5

    .line 4667
    .end local v5    # "appId":I
    .end local v8    # "userId":I
    .end local v9    # "userState":Lcom/android/server/pm/permission/UserPermissionState;
    .end local v10    # "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    .end local v11    # "permissionStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/PermissionState;>;"
    .end local v12    # "permissionStatesSize":I
    .end local v13    # "i":I
    .restart local v16    # "appId":I
    :goto_2
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v5, v16

    goto/16 :goto_0

    .line 4698
    .end local v16    # "appId":I
    .restart local v5    # "appId":I
    :cond_4
    move/from16 v16, v5

    .end local v5    # "appId":I
    .restart local v16    # "appId":I
    monitor-exit v6

    .line 4699
    return-void

    .line 4698
    .end local v16    # "appId":I
    .restart local v5    # "appId":I
    :catchall_1
    move-exception v0

    move/from16 v16, v5

    .end local v5    # "appId":I
    .restart local v16    # "appId":I
    :goto_3
    monitor-exit v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v0

    :catchall_2
    move-exception v0

    goto :goto_3
.end method

.method public queryPermissionsByGroup(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;
    .locals 6
    .param p1, "groupName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/content/pm/PermissionInfo;",
            ">;"
        }
    .end annotation

    .line 610
    invoke-static {}, Lcom/android/server/pm/permission/PermissionManagerService;->getCallingUid()I

    move-result v0

    .line 611
    .local v0, "callingUid":I
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManagerInternal;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 612
    return-object v2

    .line 615
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 616
    .local v1, "out":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 617
    if-eqz p1, :cond_1

    :try_start_0
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v4, p1}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermissionGroup(Ljava/lang/String;)Landroid/content/pm/parsing/component/ParsedPermissionGroup;

    move-result-object v4

    if-nez v4, :cond_1

    .line 618
    monitor-exit v3

    return-object v2

    .line 620
    :cond_1
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v2}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermissions()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/permission/Permission;

    .line 621
    .local v4, "bp":Lcom/android/server/pm/permission/Permission;
    invoke-virtual {v4}, Lcom/android/server/pm/permission/Permission;->getGroup()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 622
    invoke-virtual {v4, p2}, Lcom/android/server/pm/permission/Permission;->generatePermissionInfo(I)Landroid/content/pm/PermissionInfo;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 624
    .end local v4    # "bp":Lcom/android/server/pm/permission/Permission;
    :cond_2
    goto :goto_0

    .line 625
    :cond_3
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 627
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 628
    .local v2, "callingUserId":I
    new-instance v3, Lcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda19;

    invoke-direct {v3, p0, v0, v2}, Lcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda19;-><init>(Lcom/android/server/pm/permission/PermissionManagerService;II)V

    invoke-interface {v1, v3}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    .line 630
    new-instance v3, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v3, v1}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v3

    .line 625
    .end local v2    # "callingUserId":I
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public registerAttributionSource(Landroid/content/AttributionSource;)V
    .locals 1
    .param p1, "source"    # Landroid/content/AttributionSource;

    .line 3345
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mAttributionSourceRegistry:Lcom/android/server/pm/permission/PermissionManagerService$AttributionSourceRegistry;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/permission/PermissionManagerService$AttributionSourceRegistry;->registerAttributionSource(Landroid/content/AttributionSource;)V

    .line 3346
    return-void
.end method

.method public removeAllowlistedRestrictedPermission(Ljava/lang/String;Ljava/lang/String;II)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permName"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p4, "userId"    # I

    .line 1231
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1233
    invoke-direct {p0, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->checkExistsAndEnforceCannotModifyImmutablyRestrictedPermission(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1234
    return v1

    .line 1237
    :cond_0
    nop

    .line 1238
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerService;->getAllowlistedRestrictedPermissions(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    .line 1239
    .local v0, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1240
    invoke-direct {p0, p1, v0, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerService;->setAllowlistedRestrictedPermissions(Ljava/lang/String;Ljava/util/List;II)Z

    move-result v1

    return v1

    .line 1243
    :cond_1
    return v1
.end method

.method public removeOnPermissionsChangeListener(Landroid/permission/IOnPermissionsChangeListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/permission/IOnPermissionsChangeListener;

    .line 1079
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManagerInternal;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1082
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mOnPermissionChangeListeners:Lcom/android/server/pm/permission/PermissionManagerService$OnPermissionChangeListeners;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/permission/PermissionManagerService$OnPermissionChangeListeners;->removeListener(Landroid/permission/IOnPermissionsChangeListener;)V

    .line 1083
    return-void

    .line 1080
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Instant applications don\'t have access to this method"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removePermission(Ljava/lang/String;)V
    .locals 6
    .param p1, "permName"    # Ljava/lang/String;

    .line 669
    invoke-static {}, Lcom/android/server/pm/permission/PermissionManagerService;->getCallingUid()I

    move-result v0

    .line 670
    .local v0, "callingUid":I
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManagerInternal;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    .line 673
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 674
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v2, p1, v0}, Lcom/android/server/pm/permission/PermissionRegistry;->enforcePermissionTree(Ljava/lang/String;I)Lcom/android/server/pm/permission/Permission;

    .line 675
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v2, p1}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v2

    .line 676
    .local v2, "bp":Lcom/android/server/pm/permission/Permission;
    if-nez v2, :cond_0

    .line 677
    monitor-exit v1

    return-void

    .line 679
    :cond_0
    invoke-virtual {v2}, Lcom/android/server/pm/permission/Permission;->isDynamic()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 681
    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Not allowed to modify non-dynamic permission "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    :cond_1
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v3, p1}, Lcom/android/server/pm/permission/PermissionRegistry;->removePermission(Ljava/lang/String;)V

    .line 685
    .end local v2    # "bp":Lcom/android/server/pm/permission/Permission;
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 686
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManagerInternal;->writeSettings(Z)V

    .line 687
    return-void

    .line 685
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 671
    :cond_2
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Instant applications don\'t have access to this method"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "reason"    # Ljava/lang/String;

    .line 1584
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    .line 1585
    .local v8, "callingUid":I
    nop

    .line 1586
    const-string v0, "android.permission.ADJUST_RUNTIME_PERMISSIONS_POLICY"

    invoke-direct {p0, v8, v0}, Lcom/android/server/pm/permission/PermissionManagerService;->checkUidPermission(ILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v3, v0

    .line 1589
    .local v3, "overridePolicy":Z
    iget-object v7, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mDefaultPermissionCallback:Lcom/android/server/pm/permission/PermissionManagerService$PermissionCallback;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, v8

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/server/pm/permission/PermissionManagerService;->revokeRuntimePermissionInternal(Ljava/lang/String;Ljava/lang/String;ZIILjava/lang/String;Lcom/android/server/pm/permission/PermissionManagerService$PermissionCallback;)V

    .line 1591
    return-void
.end method

.method public setAutoRevokeExempted(Ljava/lang/String;ZI)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "exempted"    # Z
    .param p3, "userId"    # I

    .line 1331
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1333
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v0

    .line 1334
    .local v0, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1336
    .local v1, "callingUid":I
    invoke-direct {p0, v0, v1}, Lcom/android/server/pm/permission/PermissionManagerService;->checkAutoRevokeAccess(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1337
    const/4 v2, 0x0

    return v2

    .line 1340
    :cond_0
    invoke-direct {p0, v0, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerService;->setAutoRevokeExemptedInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ZI)Z

    move-result v2

    return v2
.end method

.method public shouldShowRequestPermissionRationale(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 17
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 1951
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 1952
    .local v5, "callingUid":I
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq v0, v4, :cond_0

    .line 1953
    iget-object v0, v1, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    const-string v6, "android.permission.INTERACT_ACROSS_USERS_FULL"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "canShowRequestPermissionRationale for user "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1958
    :cond_0
    iget-object v0, v1, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const/high16 v6, 0x10000000

    .line 1959
    invoke-virtual {v0, v2, v6, v4}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;II)I

    move-result v6

    .line 1960
    .local v6, "uid":I
    invoke-static {v5}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    invoke-static {v6}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v7

    const/4 v8, 0x0

    if-eq v0, v7, :cond_1

    .line 1961
    return v8

    .line 1964
    :cond_1
    invoke-direct/range {p0 .. p3}, Lcom/android/server/pm/permission/PermissionManagerService;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_2

    .line 1966
    return v8

    .line 1971
    :cond_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    .line 1973
    .local v9, "identity":J
    :try_start_0
    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/server/pm/permission/PermissionManagerService;->getPermissionFlagsInternal(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    move v7, v0

    .line 1975
    .local v7, "flags":I
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1976
    nop

    .line 1978
    const/16 v11, 0x16

    .line 1982
    .local v11, "fixedFlags":I
    and-int/lit8 v0, v7, 0x16

    if-eqz v0, :cond_3

    .line 1983
    return v8

    .line 1986
    :cond_3
    iget-object v12, v1, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v12

    .line 1987
    :try_start_1
    iget-object v0, v1, Lcom/android/server/pm/permission/PermissionManagerService;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v0, v3}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 1988
    .local v0, "permission":Lcom/android/server/pm/permission/Permission;
    if-nez v0, :cond_4

    .line 1989
    :try_start_2
    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return v8

    .line 1995
    .end local v0    # "permission":Lcom/android/server/pm/permission/Permission;
    :catchall_0
    move-exception v0

    move-wide v15, v9

    goto :goto_5

    .line 1991
    .restart local v0    # "permission":Lcom/android/server/pm/permission/Permission;
    :cond_4
    :try_start_3
    invoke-virtual {v0}, Lcom/android/server/pm/permission/Permission;->isHardRestricted()Z

    move-result v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-eqz v13, :cond_5

    and-int/lit16 v13, v7, 0x3800

    if-nez v13, :cond_5

    .line 1993
    :try_start_4
    monitor-exit v12
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return v8

    .line 1995
    .end local v0    # "permission":Lcom/android/server/pm/permission/Permission;
    :cond_5
    :try_start_5
    monitor-exit v12
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 1997
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 1999
    .local v12, "token":J
    const/4 v14, 0x1

    :try_start_6
    const-string v0, "android.permission.ACCESS_BACKGROUND_LOCATION"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, v1, Lcom/android/server/pm/permission/PermissionManagerService;->mPlatformCompat:Lcom/android/internal/compat/IPlatformCompat;
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-wide v15, v9

    .end local v9    # "identity":J
    .local v15, "identity":J
    const-wide/32 v8, 0x8c7dff3

    .line 2000
    :try_start_7
    invoke-interface {v0, v8, v9, v2, v4}, Lcom/android/internal/compat/IPlatformCompat;->isChangeEnabledByPackageName(JLjava/lang/String;I)Z

    move-result v0
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    if-eqz v0, :cond_7

    .line 2002
    nop

    .line 2007
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2002
    return v14

    .line 2004
    :catch_0
    move-exception v0

    goto :goto_1

    .line 1999
    .end local v15    # "identity":J
    .restart local v9    # "identity":J
    :cond_6
    move-wide v15, v9

    .line 2007
    .end local v9    # "identity":J
    .restart local v15    # "identity":J
    :cond_7
    nop

    :goto_0
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2008
    goto :goto_2

    .line 2007
    .end local v15    # "identity":J
    .restart local v9    # "identity":J
    :catchall_1
    move-exception v0

    move-wide v15, v9

    .end local v9    # "identity":J
    .restart local v15    # "identity":J
    goto :goto_4

    .line 2004
    .end local v15    # "identity":J
    .restart local v9    # "identity":J
    :catch_1
    move-exception v0

    move-wide v15, v9

    .line 2005
    .end local v9    # "identity":J
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v15    # "identity":J
    :goto_1
    :try_start_8
    const-string v8, "PackageManager"

    const-string v9, "Unable to check if compatibility change is enabled."

    invoke-static {v8, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 2007
    nop

    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 2010
    :goto_2
    and-int/lit8 v0, v7, 0x1

    if-eqz v0, :cond_8

    move v8, v14

    goto :goto_3

    :cond_8
    const/4 v8, 0x0

    :goto_3
    return v8

    .line 2007
    :catchall_2
    move-exception v0

    :goto_4
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2008
    throw v0

    .line 1995
    .end local v12    # "token":J
    .end local v15    # "identity":J
    .restart local v9    # "identity":J
    :catchall_3
    move-exception v0

    move-wide v15, v9

    .end local v9    # "identity":J
    .restart local v15    # "identity":J
    :goto_5
    :try_start_9
    monitor-exit v12
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    throw v0

    :catchall_4
    move-exception v0

    goto :goto_5

    .line 1975
    .end local v7    # "flags":I
    .end local v11    # "fixedFlags":I
    .end local v15    # "identity":J
    .restart local v9    # "identity":J
    :catchall_5
    move-exception v0

    move-wide v15, v9

    move-object v7, v0

    .end local v9    # "identity":J
    .restart local v15    # "identity":J
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1976
    throw v7
.end method

.method public startOneTimePermissionSession(Ljava/lang/String;IJII)V
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "timeoutMillis"    # J
    .param p5, "importanceToResetTimer"    # I
    .param p6, "importanceToKeepSessionAlive"    # I

    .line 3314
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_ONE_TIME_PERMISSION_SESSIONS"

    const-string v2, "Must hold android.permission.MANAGE_ONE_TIME_PERMISSION_SESSIONS to register permissions as one time."

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3317
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3319
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3321
    .local v0, "token":J
    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->getOneTimePermissionUserManager(I)Lcom/android/server/pm/permission/OneTimePermissionUserManager;

    move-result-object v2

    move-object v3, p1

    move-wide v4, p3

    move v6, p5

    move v7, p6

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->startPackageOneTimeSession(Ljava/lang/String;JII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3324
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3325
    nop

    .line 3326
    return-void

    .line 3324
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3325
    throw v2
.end method

.method public stopOneTimePermissionSession(Ljava/lang/String;I)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 3330
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_ONE_TIME_PERMISSION_SESSIONS"

    const-string v2, "Must hold android.permission.MANAGE_ONE_TIME_PERMISSION_SESSIONS to remove permissions as one time."

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3333
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3335
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3337
    .local v0, "token":J
    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->getOneTimePermissionUserManager(I)Lcom/android/server/pm/permission/OneTimePermissionUserManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->stopPackageOneTimeSession(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3339
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3340
    nop

    .line 3341
    return-void

    .line 3339
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3340
    throw v2
.end method

.method public updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IIZI)V
    .locals 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permName"    # Ljava/lang/String;
    .param p3, "flagMask"    # I
    .param p4, "flagValues"    # I
    .param p5, "checkAdjustPolicyFlagPermission"    # Z
    .param p6, "userId"    # I

    .line 733
    move-object v10, p0

    invoke-static {}, Lcom/android/server/pm/permission/PermissionManagerService;->getCallingUid()I

    move-result v11

    .line 734
    .local v11, "callingUid":I
    const/4 v1, 0x0

    .line 736
    .local v1, "overridePolicy":Z
    const/16 v0, 0x3e8

    if-eq v11, v0, :cond_3

    if-eqz v11, :cond_3

    .line 737
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 739
    .local v2, "callingIdentity":J
    and-int/lit8 v0, p3, 0x4

    if-eqz v0, :cond_2

    .line 740
    if-eqz p5, :cond_0

    .line 741
    :try_start_0
    iget-object v0, v10, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.ADJUST_RUNTIME_PERMISSIONS_POLICY"

    const-string v5, "Need android.permission.ADJUST_RUNTIME_PERMISSIONS_POLICY to change policy flags"

    invoke-virtual {v0, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 745
    :cond_0
    iget-object v0, v10, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, v11}, Landroid/content/pm/PackageManagerInternal;->getUidTargetSdkVersion(I)I

    move-result v0

    const/16 v4, 0x1d

    if-ge v0, v4, :cond_1

    .line 753
    :goto_0
    const/4 v0, 0x1

    move v1, v0

    .end local v1    # "overridePolicy":Z
    .local v0, "overridePolicy":Z
    goto :goto_1

    .line 747
    .end local v0    # "overridePolicy":Z
    .restart local v1    # "overridePolicy":Z
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v4, "android.permission.ADJUST_RUNTIME_PERMISSIONS_POLICY needs  to be checked for packages targeting 29 or later when changing policy flags"

    invoke-direct {v0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v1    # "overridePolicy":Z
    .end local v2    # "callingIdentity":J
    .end local v11    # "callingUid":I
    .end local p0    # "this":Lcom/android/server/pm/permission/PermissionManagerService;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "permName":Ljava/lang/String;
    .end local p3    # "flagMask":I
    .end local p4    # "flagValues":I
    .end local p5    # "checkAdjustPolicyFlagPermission":Z
    .end local p6    # "userId":I
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 756
    .restart local v1    # "overridePolicy":Z
    .restart local v2    # "callingIdentity":J
    .restart local v11    # "callingUid":I
    .restart local p0    # "this":Lcom/android/server/pm/permission/PermissionManagerService;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "permName":Ljava/lang/String;
    .restart local p3    # "flagMask":I
    .restart local p4    # "flagValues":I
    .restart local p5    # "checkAdjustPolicyFlagPermission":Z
    .restart local p6    # "userId":I
    :catchall_0
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 757
    throw v0

    .line 756
    :cond_2
    :goto_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 757
    move v0, v1

    goto :goto_2

    .line 760
    .end local v2    # "callingIdentity":J
    :cond_3
    move v0, v1

    .end local v1    # "overridePolicy":Z
    .restart local v0    # "overridePolicy":Z
    :goto_2
    iget-object v9, v10, Lcom/android/server/pm/permission/PermissionManagerService;->mDefaultPermissionCallback:Lcom/android/server/pm/permission/PermissionManagerService$PermissionCallback;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move/from16 v5, p4

    move v6, v11

    move/from16 v7, p6

    move v8, v0

    invoke-direct/range {v1 .. v9}, Lcom/android/server/pm/permission/PermissionManagerService;->updatePermissionFlagsInternal(Ljava/lang/String;Ljava/lang/String;IIIIZLcom/android/server/pm/permission/PermissionManagerService$PermissionCallback;)V

    .line 763
    return-void
.end method

.method public updatePermissionFlagsForAllApps(III)V
    .locals 13
    .param p1, "flagMask"    # I
    .param p2, "flagValues"    # I
    .param p3, "userId"    # I

    .line 886
    move-object v6, p0

    move/from16 v7, p3

    invoke-static {}, Lcom/android/server/pm/permission/PermissionManagerService;->getCallingUid()I

    move-result v8

    .line 887
    .local v8, "callingUid":I
    iget-object v0, v6, Lcom/android/server/pm/permission/PermissionManagerService;->mUserManagerInt:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v0, v7}, Lcom/android/server/pm/UserManagerInternal;->exists(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 888
    return-void

    .line 891
    :cond_0
    const-string v0, "updatePermissionFlagsForAllApps"

    invoke-direct {p0, v0}, Lcom/android/server/pm/permission/PermissionManagerService;->enforceGrantRevokeRuntimePermissionPermissions(Ljava/lang/String;)V

    .line 893
    const/4 v3, 0x1

    const/4 v4, 0x1

    const-string v5, "updatePermissionFlagsForAllApps"

    move-object v0, p0

    move v1, v8

    move/from16 v2, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/permission/PermissionManagerService;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 899
    const/16 v0, 0x3e8

    if-eq v8, v0, :cond_1

    .line 900
    move v4, p1

    goto :goto_0

    :cond_1
    and-int/lit8 v1, p1, -0x11

    move v4, v1

    .line 901
    .local v4, "effectiveFlagMask":I
    :goto_0
    if-eq v8, v0, :cond_2

    .line 902
    move v5, p2

    goto :goto_1

    :cond_2
    and-int/lit8 v0, p2, -0x11

    move v5, v0

    .line 904
    .local v5, "effectiveFlagValues":I
    :goto_1
    const/4 v9, 0x1

    new-array v10, v9, [Z

    .line 905
    .local v10, "changed":[Z
    iget-object v11, v6, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    new-instance v12, Lcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda9;

    move-object v0, v12

    move-object v1, p0

    move/from16 v2, p3

    move-object v3, v10

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/pm/permission/PermissionManagerService;I[ZII)V

    invoke-virtual {v11, v12}, Landroid/content/pm/PackageManagerInternal;->forEachPackage(Ljava/util/function/Consumer;)V

    .line 920
    const/4 v0, 0x0

    aget-boolean v1, v10, v0

    if-eqz v1, :cond_3

    .line 921
    iget-object v1, v6, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    new-array v2, v9, [I

    aput v7, v2, v0

    invoke-virtual {v1, v2, v9}, Landroid/content/pm/PackageManagerInternal;->writePermissionSettings([IZ)V

    .line 923
    :cond_3
    return-void
.end method
