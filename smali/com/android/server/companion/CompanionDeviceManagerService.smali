.class public Lcom/android/server/companion/CompanionDeviceManagerService;
.super Lcom/android/server/SystemService;
.source "CompanionDeviceManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/companion/CompanionDeviceManagerService$BluetoothDeviceConnectedListener;,
        Lcom/android/server/companion/CompanionDeviceManagerService$ShellCmd;,
        Lcom/android/server/companion/CompanionDeviceManagerService$TriggerDeviceDisappearedRunnable;,
        Lcom/android/server/companion/CompanionDeviceManagerService$UnbindDeviceListenersRunnable;,
        Lcom/android/server/companion/CompanionDeviceManagerService$BleStateBroadcastReceiver;,
        Lcom/android/server/companion/CompanionDeviceManagerService$BleScanCallback;,
        Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;
    }
.end annotation


# static fields
.field private static final ASSOCIATE_WITHOUT_PROMPT_MAX_PER_TIME_WINDOW:I = 0x5

.field private static final ASSOCIATE_WITHOUT_PROMPT_WINDOW_MS:J = 0x36ee80L

.field private static final DEBUG:Z = false

.field private static final DEVICE_DISAPPEARED_TIMEOUT_MS:J = 0x2710L

.field private static final DEVICE_DISAPPEARED_UNBIND_TIMEOUT_MS:J = 0x927c0L

.field private static final DEVICE_LISTENER_DIED_REBIND_TIMEOUT_MS:J = 0x2710L

.field private static final LOG_TAG:Ljava/lang/String; = "CompanionDeviceManagerService"

.field private static final PAIR_WITHOUT_PROMPT_WINDOW_MS:J = 0x927c0L

.field private static final PREF_FILE_NAME:Ljava/lang/String; = "companion_device_preferences.xml"

.field private static final PREF_KEY_AUTO_REVOKE_GRANTS_DONE:Ljava/lang/String; = "auto_revoke_grants_done"

.field private static final SERVICE_TO_BIND_TO:Landroid/content/ComponentName;

.field private static final XML_ATTR_DEVICE:Ljava/lang/String; = "device"

.field private static final XML_ATTR_NOTIFY_DEVICE_NEARBY:Ljava/lang/String; = "notify_device_nearby"

.field private static final XML_ATTR_PACKAGE:Ljava/lang/String; = "package"

.field private static final XML_ATTR_PROFILE:Ljava/lang/String; = "profile"

.field private static final XML_ATTR_TIME_APPROVED:Ljava/lang/String; = "time_approved"

.field private static final XML_FILE_NAME:Ljava/lang/String; = "companion_device_manager_associations.xml"

.field private static final XML_TAG_ASSOCIATION:Ljava/lang/String; = "association"

.field private static final XML_TAG_ASSOCIATIONS:Ljava/lang/String; = "associations"


# instance fields
.field mAmInternal:Landroid/app/ActivityManagerInternal;

.field private mAppOpsManager:Lcom/android/internal/app/IAppOpsService;

.field mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

.field private mBleScanCallback:Landroid/bluetooth/le/ScanCallback;

.field private mBleStateBroadcastReceiver:Lcom/android/server/companion/CompanionDeviceManagerService$BleStateBroadcastReceiver;

.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBluetoothDeviceConnectedListener:Lcom/android/server/companion/CompanionDeviceManagerService$BluetoothDeviceConnectedListener;

.field private mCachedAssociations:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/Set<",
            "Landroid/companion/Association;",
            ">;>;"
        }
    .end annotation
.end field

.field private mCallingPackage:Ljava/lang/String;

.field private mCurrentlyConnectedDevices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDeviceListenerServiceConnectors:Lcom/android/internal/infra/PerUser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/infra/PerUser<",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/internal/infra/ServiceConnector<",
            "Landroid/companion/ICompanionDeviceService;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private mDevicesLastNearby:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            ">;"
        }
    .end annotation
.end field

.field private mFindDeviceCallback:Landroid/companion/IFindDeviceCallback;

.field private final mImpl:Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;

.field private final mLock:Ljava/lang/Object;

.field private final mMainHandler:Landroid/os/Handler;

.field private mOngoingDeviceDiscovery:Lcom/android/internal/infra/AndroidFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/infra/AndroidFuture<",
            "Landroid/companion/Association;",
            ">;"
        }
    .end annotation
.end field

.field mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field private mPermissionControllerManager:Landroid/permission/PermissionControllerManager;

.field private mPowerWhitelistManager:Landroid/os/PowerWhitelistManager;

.field private mRequest:Landroid/companion/AssociationRequest;

.field private mRoleManager:Landroid/app/role/RoleManager;

.field private mServiceConnectors:Lcom/android/internal/infra/PerUser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/infra/PerUser<",
            "Lcom/android/internal/infra/ServiceConnector<",
            "Landroid/companion/ICompanionDeviceDiscoveryService;",
            ">;>;"
        }
    .end annotation
.end field

.field private mTriggerDeviceDisappearedRunnables:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/companion/CompanionDeviceManagerService$TriggerDeviceDisappearedRunnable;",
            ">;"
        }
    .end annotation
.end field

.field private final mUidToStorage:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/Integer;",
            "Landroid/util/AtomicFile;",
            ">;"
        }
    .end annotation
.end field

.field private mUnbindDeviceListenersRunnable:Lcom/android/server/companion/CompanionDeviceManagerService$UnbindDeviceListenersRunnable;

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method public static synthetic $r8$lambda$3n3hT9_T4IzBqXOYPVsPevhYbMY(Lcom/android/server/companion/CompanionDeviceManagerService;Landroid/companion/Association;Landroid/content/pm/PackageInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/companion/CompanionDeviceManagerService;->updateSpecialAccessPermissionAsSystem(Landroid/companion/Association;Landroid/content/pm/PackageInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$BVxLabIYi8y_-Fu8ZH6E8Dp8zGU(Lcom/android/server/companion/CompanionDeviceManagerService;Ljava/util/Set;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/companion/CompanionDeviceManagerService;->persistAssociations(Ljava/util/Set;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$gGBnrj1hZ99wHtFYMxHsAPyDStY(Lcom/android/server/companion/CompanionDeviceManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->cleanup()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 156
    const-string v0, "com.android.companiondevicemanager"

    const-string v1, ".CompanionDeviceDiscoveryService"

    invoke-static {v0, v1}, Landroid/content/ComponentName;->createRelative(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    sput-object v0, Lcom/android/server/companion/CompanionDeviceManagerService;->SERVICE_TO_BIND_TO:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 226
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 186
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mUidToStorage:Ljava/util/concurrent/ConcurrentMap;

    .line 198
    new-instance v0, Lcom/android/server/companion/CompanionDeviceManagerService$BleScanCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/companion/CompanionDeviceManagerService$BleScanCallback;-><init>(Lcom/android/server/companion/CompanionDeviceManagerService;Lcom/android/server/companion/CompanionDeviceManagerService$1;)V

    iput-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mBleScanCallback:Landroid/bluetooth/le/ScanCallback;

    .line 204
    new-instance v0, Lcom/android/server/companion/CompanionDeviceManagerService$BluetoothDeviceConnectedListener;

    invoke-direct {v0, p0, v1}, Lcom/android/server/companion/CompanionDeviceManagerService$BluetoothDeviceConnectedListener;-><init>(Lcom/android/server/companion/CompanionDeviceManagerService;Lcom/android/server/companion/CompanionDeviceManagerService$1;)V

    iput-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mBluetoothDeviceConnectedListener:Lcom/android/server/companion/CompanionDeviceManagerService$BluetoothDeviceConnectedListener;

    .line 206
    new-instance v0, Lcom/android/server/companion/CompanionDeviceManagerService$BleStateBroadcastReceiver;

    invoke-direct {v0, p0, v1}, Lcom/android/server/companion/CompanionDeviceManagerService$BleStateBroadcastReceiver;-><init>(Lcom/android/server/companion/CompanionDeviceManagerService;Lcom/android/server/companion/CompanionDeviceManagerService$1;)V

    iput-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mBleStateBroadcastReceiver:Lcom/android/server/companion/CompanionDeviceManagerService$BleStateBroadcastReceiver;

    .line 207
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mCurrentlyConnectedDevices:Ljava/util/List;

    .line 208
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mDevicesLastNearby:Landroid/util/ArrayMap;

    .line 209
    new-instance v0, Lcom/android/server/companion/CompanionDeviceManagerService$UnbindDeviceListenersRunnable;

    invoke-direct {v0, p0, v1}, Lcom/android/server/companion/CompanionDeviceManagerService$UnbindDeviceListenersRunnable;-><init>(Lcom/android/server/companion/CompanionDeviceManagerService;Lcom/android/server/companion/CompanionDeviceManagerService$1;)V

    iput-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mUnbindDeviceListenersRunnable:Lcom/android/server/companion/CompanionDeviceManagerService$UnbindDeviceListenersRunnable;

    .line 211
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mTriggerDeviceDisappearedRunnables:Landroid/util/ArrayMap;

    .line 214
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mLock:Ljava/lang/Object;

    .line 215
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mMainHandler:Landroid/os/Handler;

    .line 218
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mCachedAssociations:Landroid/util/SparseArray;

    .line 227
    new-instance v0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;

    invoke-direct {v0, p0}, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;-><init>(Lcom/android/server/companion/CompanionDeviceManagerService;)V

    iput-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mImpl:Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;

    .line 228
    const-class v0, Landroid/os/PowerWhitelistManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerWhitelistManager;

    iput-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mPowerWhitelistManager:Landroid/os/PowerWhitelistManager;

    .line 229
    const-class v0, Landroid/app/role/RoleManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/role/RoleManager;

    iput-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mRoleManager:Landroid/app/role/RoleManager;

    .line 230
    nop

    .line 231
    const-string v0, "appops"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 230
    invoke-static {v0}, Lcom/android/internal/app/IAppOpsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mAppOpsManager:Lcom/android/internal/app/IAppOpsService;

    .line 232
    const-class v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    iput-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 233
    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    iput-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 234
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    iput-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 235
    const-class v0, Landroid/permission/PermissionControllerManager;

    .line 236
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/permission/PermissionControllerManager;

    .line 235
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Landroid/permission/PermissionControllerManager;

    iput-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mPermissionControllerManager:Landroid/permission/PermissionControllerManager;

    .line 237
    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mUserManager:Landroid/os/UserManager;

    .line 239
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    sget-object v1, Lcom/android/server/companion/CompanionDeviceManagerService;->SERVICE_TO_BIND_TO:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 240
    .local v0, "serviceIntent":Landroid/content/Intent;
    new-instance v1, Lcom/android/server/companion/CompanionDeviceManagerService$1;

    invoke-direct {v1, p0, v0}, Lcom/android/server/companion/CompanionDeviceManagerService$1;-><init>(Lcom/android/server/companion/CompanionDeviceManagerService;Landroid/content/Intent;)V

    iput-object v1, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mServiceConnectors:Lcom/android/internal/infra/PerUser;

    .line 250
    new-instance v1, Lcom/android/server/companion/CompanionDeviceManagerService$2;

    invoke-direct {v1, p0}, Lcom/android/server/companion/CompanionDeviceManagerService$2;-><init>(Lcom/android/server/companion/CompanionDeviceManagerService;)V

    iput-object v1, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mDeviceListenerServiceConnectors:Lcom/android/internal/infra/PerUser;

    .line 260
    invoke-direct {p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->registerPackageMonitor()V

    .line 261
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/companion/CompanionDeviceManagerService;)Landroid/companion/AssociationRequest;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/companion/CompanionDeviceManagerService;

    .line 154
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mRequest:Landroid/companion/AssociationRequest;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/server/companion/CompanionDeviceManagerService;Landroid/companion/AssociationRequest;)Landroid/companion/AssociationRequest;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/companion/CompanionDeviceManagerService;
    .param p1, "x1"    # Landroid/companion/AssociationRequest;

    .line 154
    iput-object p1, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mRequest:Landroid/companion/AssociationRequest;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/server/companion/CompanionDeviceManagerService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/companion/CompanionDeviceManagerService;

    .line 154
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mCallingPackage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/server/companion/CompanionDeviceManagerService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/companion/CompanionDeviceManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 154
    iput-object p1, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mCallingPackage:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/server/companion/CompanionDeviceManagerService;Ljava/lang/String;)Lcom/android/internal/infra/AndroidFuture;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/companion/CompanionDeviceManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 154
    invoke-direct {p0, p1}, Lcom/android/server/companion/CompanionDeviceManagerService;->getDeviceProfilePermissionDescription(Ljava/lang/String;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/server/companion/CompanionDeviceManagerService;Lcom/android/internal/infra/AndroidFuture;)Lcom/android/internal/infra/AndroidFuture;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/companion/CompanionDeviceManagerService;
    .param p1, "x1"    # Lcom/android/internal/infra/AndroidFuture;

    .line 154
    iput-object p1, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mOngoingDeviceDiscovery:Lcom/android/internal/infra/AndroidFuture;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/android/server/companion/CompanionDeviceManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/companion/CompanionDeviceManagerService;

    .line 154
    invoke-direct {p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->cleanup()V

    return-void
.end method

.method static synthetic access$1500()Z
    .locals 1

    .line 154
    invoke-static {}, Lcom/android/server/companion/CompanionDeviceManagerService;->isCallerSystem()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/internal/app/IAppOpsService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/companion/CompanionDeviceManagerService;

    .line 154
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mAppOpsManager:Lcom/android/internal/app/IAppOpsService;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/companion/CompanionDeviceManagerService;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/companion/CompanionDeviceManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .line 154
    invoke-direct {p0, p1, p2}, Lcom/android/server/companion/CompanionDeviceManagerService;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/companion/CompanionDeviceManagerService;ILjava/lang/String;Ljava/lang/String;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/companion/CompanionDeviceManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .line 154
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/companion/CompanionDeviceManagerService;->getAllAssociations(ILjava/lang/String;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/companion/CompanionDeviceManagerService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/companion/CompanionDeviceManagerService;

    .line 154
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/companion/CompanionDeviceManagerService;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/companion/CompanionDeviceManagerService;

    .line 154
    invoke-direct {p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->getAllUsers()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/server/companion/CompanionDeviceManagerService;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/companion/CompanionDeviceManagerService;

    .line 154
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mCachedAssociations:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/internal/infra/PerUser;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/companion/CompanionDeviceManagerService;

    .line 154
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mServiceConnectors:Lcom/android/internal/infra/PerUser;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/server/companion/CompanionDeviceManagerService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/companion/CompanionDeviceManagerService;

    .line 154
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/server/companion/CompanionDeviceManagerService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/companion/CompanionDeviceManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 154
    invoke-direct {p0, p1}, Lcom/android/server/companion/CompanionDeviceManagerService;->onDeviceNearby(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/server/companion/CompanionDeviceManagerService;)Landroid/bluetooth/BluetoothAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/companion/CompanionDeviceManagerService;

    .line 154
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/server/companion/CompanionDeviceManagerService;)Landroid/util/ArrayMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/companion/CompanionDeviceManagerService;

    .line 154
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mDevicesLastNearby:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/server/companion/CompanionDeviceManagerService;Ljava/util/Date;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/companion/CompanionDeviceManagerService;
    .param p1, "x1"    # Ljava/util/Date;

    .line 154
    invoke-direct {p0, p1}, Lcom/android/server/companion/CompanionDeviceManagerService;->isDeviceDisappeared(Ljava/util/Date;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2800(Lcom/android/server/companion/CompanionDeviceManagerService;Ljava/lang/String;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/companion/CompanionDeviceManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 154
    invoke-direct {p0, p1}, Lcom/android/server/companion/CompanionDeviceManagerService;->getAllAssociations(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/server/companion/CompanionDeviceManagerService;Landroid/companion/Association;)Lcom/android/internal/infra/ServiceConnector;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/companion/CompanionDeviceManagerService;
    .param p1, "x1"    # Landroid/companion/Association;

    .line 154
    invoke-direct {p0, p1}, Lcom/android/server/companion/CompanionDeviceManagerService;->getDeviceListenerServiceConnector(Landroid/companion/Association;)Lcom/android/internal/infra/ServiceConnector;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/server/companion/CompanionDeviceManagerService;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/companion/CompanionDeviceManagerService;

    .line 154
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mCurrentlyConnectedDevices:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/server/companion/CompanionDeviceManagerService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/companion/CompanionDeviceManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 154
    invoke-direct {p0, p1}, Lcom/android/server/companion/CompanionDeviceManagerService;->onDeviceDisappeared(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/server/companion/CompanionDeviceManagerService;I)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/companion/CompanionDeviceManagerService;
    .param p1, "x1"    # I

    .line 154
    invoke-direct {p0, p1}, Lcom/android/server/companion/CompanionDeviceManagerService;->getAllAssociations(I)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/companion/CompanionDeviceManagerService;Ljava/util/function/Function;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/companion/CompanionDeviceManagerService;
    .param p1, "x1"    # Ljava/util/function/Function;
    .param p2, "x2"    # I

    .line 154
    invoke-direct {p0, p1, p2}, Lcom/android/server/companion/CompanionDeviceManagerService;->updateAssociations(Ljava/util/function/Function;I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/companion/CompanionDeviceManagerService;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/companion/CompanionDeviceManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .line 154
    invoke-direct {p0, p1, p2}, Lcom/android/server/companion/CompanionDeviceManagerService;->unbindDevicePresenceListener(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/companion/CompanionDeviceManagerService;ILjava/lang/String;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/companion/CompanionDeviceManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .line 154
    invoke-direct {p0, p1, p2}, Lcom/android/server/companion/CompanionDeviceManagerService;->getAllAssociations(ILjava/lang/String;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/companion/CompanionDeviceManagerService;Landroid/companion/Association;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/companion/CompanionDeviceManagerService;
    .param p1, "x1"    # Landroid/companion/Association;

    .line 154
    invoke-direct {p0, p1}, Lcom/android/server/companion/CompanionDeviceManagerService;->updateSpecialAccessPermissionForAssociatedPackage(Landroid/companion/Association;)V

    return-void
.end method

.method static synthetic access$800()I
    .locals 1

    .line 154
    invoke-static {}, Lcom/android/server/companion/CompanionDeviceManagerService;->getCallingUserId()I

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/companion/CompanionDeviceManagerService;)Landroid/companion/IFindDeviceCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/companion/CompanionDeviceManagerService;

    .line 154
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mFindDeviceCallback:Landroid/companion/IFindDeviceCallback;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/server/companion/CompanionDeviceManagerService;Landroid/companion/IFindDeviceCallback;)Landroid/companion/IFindDeviceCallback;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/companion/CompanionDeviceManagerService;
    .param p1, "x1"    # Landroid/companion/IFindDeviceCallback;

    .line 154
    iput-object p1, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mFindDeviceCallback:Landroid/companion/IFindDeviceCallback;

    return-object p1
.end method

.method private cancelUnbindDeviceListener(Ljava/lang/String;)V
    .locals 3
    .param p1, "address"    # Ljava/lang/String;

    .line 1400
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mUnbindDeviceListenersRunnable:Lcom/android/server/companion/CompanionDeviceManagerService$UnbindDeviceListenersRunnable;

    .line 1401
    invoke-virtual {v1, p1}, Lcom/android/server/companion/CompanionDeviceManagerService$UnbindDeviceListenersRunnable;->getJobId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1400
    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 1402
    return-void
.end method

.method private cleanup()V
    .locals 4

    .line 373
    const-string v0, "CompanionDeviceManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cleanup(); discovery = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mOngoingDeviceDiscovery:Lcom/android/internal/infra/AndroidFuture;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", request = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mRequest:Landroid/companion/AssociationRequest;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 376
    :try_start_0
    iget-object v1, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mOngoingDeviceDiscovery:Lcom/android/internal/infra/AndroidFuture;

    .line 377
    .local v1, "ongoingDeviceDiscovery":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Landroid/companion/Association;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/infra/AndroidFuture;->isDone()Z

    move-result v2

    if-nez v2, :cond_0

    .line 378
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/internal/infra/AndroidFuture;->cancel(Z)Z

    .line 380
    :cond_0
    iget-object v2, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mFindDeviceCallback:Landroid/companion/IFindDeviceCallback;

    const/4 v3, 0x0

    invoke-static {v2, p0, v3}, Lcom/android/server/companion/CompanionDeviceManagerService;->unlinkToDeath(Landroid/os/IInterface;Landroid/os/IBinder$DeathRecipient;I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/companion/IFindDeviceCallback;

    iput-object v2, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mFindDeviceCallback:Landroid/companion/IFindDeviceCallback;

    .line 381
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mRequest:Landroid/companion/AssociationRequest;

    .line 382
    iput-object v2, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mCallingPackage:Ljava/lang/String;

    .line 383
    .end local v1    # "ongoingDeviceDiscovery":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Landroid/companion/Association;>;"
    monitor-exit v0

    .line 384
    return-void

    .line 383
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static containsEither([Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;TT;)Z"
        }
    .end annotation

    .line 930
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    .local p1, "a":Ljava/lang/Object;, "TT;"
    .local p2, "b":Ljava/lang/Object;, "TT;"
    invoke-static {p0, p1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0, p2}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

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
    return v0
.end method

.method private createDeviceListenerServiceConnector(Landroid/companion/Association;)Lcom/android/internal/infra/ServiceConnector;
    .locals 13
    .param p1, "a"    # Landroid/companion/Association;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/companion/Association;",
            ")",
            "Lcom/android/internal/infra/ServiceConnector<",
            "Landroid/companion/ICompanionDeviceService;",
            ">;"
        }
    .end annotation

    .line 1190
    invoke-virtual {p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.companion.CompanionDeviceService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1191
    invoke-virtual {p1}, Landroid/companion/Association;->getUserId()I

    move-result v3

    .line 1190
    const/high16 v4, 0x20000

    invoke-virtual {v0, v1, v4, v3}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    .line 1192
    .local v0, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v1, Lcom/android/server/companion/CompanionDeviceManagerService$$ExternalSyntheticLambda19;

    invoke-direct {v1, p1}, Lcom/android/server/companion/CompanionDeviceManagerService$$ExternalSyntheticLambda19;-><init>(Landroid/companion/Association;)V

    invoke-static {v0, v1}, Lcom/android/internal/util/CollectionUtils;->filter(Ljava/util/List;Ljava/util/function/Predicate;)Ljava/util/List;

    move-result-object v1

    .line 1194
    .local v1, "packageResolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const-string v4, "CompanionDeviceManagerService"

    const/4 v5, 0x1

    if-eq v3, v5, :cond_0

    .line 1195
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Device presence listener package must have exactly one CompanionDeviceService, but "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1196
    invoke-virtual {p1}, Landroid/companion/Association;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " has "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1197
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1195
    invoke-static {v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1198
    new-instance v2, Lcom/android/internal/infra/ServiceConnector$NoOp;

    invoke-direct {v2}, Lcom/android/internal/infra/ServiceConnector$NoOp;-><init>()V

    return-object v2

    .line 1200
    :cond_0
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-virtual {v3}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    .line 1201
    .local v3, "componentName":Landroid/content/ComponentName;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Initializing CompanionDeviceService binding for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1202
    new-instance v4, Lcom/android/server/companion/CompanionDeviceManagerService$4;

    invoke-virtual {p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->getContext()Landroid/content/Context;

    move-result-object v8

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1203
    invoke-virtual {v5, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v9

    const/16 v10, 0x40

    .line 1205
    invoke-virtual {p1}, Landroid/companion/Association;->getUserId()I

    move-result v11

    sget-object v12, Lcom/android/server/companion/CompanionDeviceManagerService$$ExternalSyntheticLambda16;->INSTANCE:Lcom/android/server/companion/CompanionDeviceManagerService$$ExternalSyntheticLambda16;

    move-object v6, v4

    move-object v7, p0

    invoke-direct/range {v6 .. v12}, Lcom/android/server/companion/CompanionDeviceManagerService$4;-><init>(Lcom/android/server/companion/CompanionDeviceManagerService;Landroid/content/Context;Landroid/content/Intent;IILjava/util/function/Function;)V

    .line 1202
    return-object v4
.end method

.method private exemptFromAutoRevoke(Ljava/lang/String;I)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 852
    :try_start_0
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mAppOpsManager:Lcom/android/internal/app/IAppOpsService;

    const/16 v1, 0x61

    const/4 v2, 0x1

    invoke-interface {v0, v1, p2, p1, v2}, Lcom/android/internal/app/IAppOpsService;->setMode(IILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 860
    goto :goto_0

    .line 857
    :catch_0
    move-exception v0

    .line 858
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error while granting auto revoke exemption for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CompanionDeviceManagerService"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 861
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private getAllAssociations()Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/companion/Association;",
            ">;"
        }
    .end annotation

    .line 1062
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1064
    .local v0, "identity":J
    :try_start_0
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 1065
    .local v2, "result":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/companion/Association;>;"
    iget-object v3, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3}, Landroid/os/UserManager;->getAliveUsers()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .line 1066
    .local v4, "user":Landroid/content/pm/UserInfo;
    iget v5, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v5}, Lcom/android/server/companion/CompanionDeviceManagerService;->getAllAssociations(I)Ljava/util/Set;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1067
    nop

    .end local v4    # "user":Landroid/content/pm/UserInfo;
    goto :goto_0

    .line 1068
    :cond_0
    nop

    .line 1070
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1068
    return-object v2

    .line 1070
    .end local v2    # "result":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/companion/Association;>;"
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1071
    throw v2
.end method

.method private getAllAssociations(I)Ljava/util/Set;
    .locals 4
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Landroid/companion/Association;",
            ">;"
        }
    .end annotation

    .line 1035
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1036
    :try_start_0
    iget-object v1, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mCachedAssociations:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1037
    iget-object v1, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mCachedAssociations:Landroid/util/SparseArray;

    .line 1038
    invoke-direct {p0, p1}, Lcom/android/server/companion/CompanionDeviceManagerService;->readAllAssociations(I)Ljava/util/Set;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/util/CollectionUtils;->emptyIfNull(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    .line 1037
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1039
    const-string v1, "CompanionDeviceManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Read associations from disk: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mCachedAssociations:Landroid/util/SparseArray;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1041
    :cond_0
    iget-object v1, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mCachedAssociations:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    monitor-exit v0

    return-object v1

    .line 1042
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getAllAssociations(ILjava/lang/String;)Ljava/util/Set;
    .locals 2
    .param p1, "userId"    # I
    .param p2, "packageFilter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Landroid/companion/Association;",
            ">;"
        }
    .end annotation

    .line 1055
    nop

    .line 1056
    invoke-direct {p0, p1}, Lcom/android/server/companion/CompanionDeviceManagerService;->getAllAssociations(I)Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lcom/android/server/companion/CompanionDeviceManagerService$$ExternalSyntheticLambda22;

    invoke-direct {v1, p2}, Lcom/android/server/companion/CompanionDeviceManagerService$$ExternalSyntheticLambda22;-><init>(Ljava/lang/String;)V

    .line 1055
    invoke-static {v0, v1}, Lcom/android/internal/util/CollectionUtils;->filter(Ljava/util/Set;Ljava/util/function/Predicate;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method private getAllAssociations(ILjava/lang/String;Ljava/lang/String;)Ljava/util/Set;
    .locals 2
    .param p1, "userId"    # I
    .param p2, "packageFilter"    # Ljava/lang/String;
    .param p3, "addressFilter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Landroid/companion/Association;",
            ">;"
        }
    .end annotation

    .line 1076
    nop

    .line 1077
    invoke-direct {p0, p1}, Lcom/android/server/companion/CompanionDeviceManagerService;->getAllAssociations(I)Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lcom/android/server/companion/CompanionDeviceManagerService$$ExternalSyntheticLambda23;

    invoke-direct {v1, p2, p3}, Lcom/android/server/companion/CompanionDeviceManagerService$$ExternalSyntheticLambda23;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1076
    invoke-static {v0, v1}, Lcom/android/internal/util/CollectionUtils;->filter(Ljava/util/Set;Ljava/util/function/Predicate;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method private getAllAssociations(Ljava/lang/String;)Ljava/util/Set;
    .locals 8
    .param p1, "deviceAddress"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Landroid/companion/Association;",
            ">;"
        }
    .end annotation

    .line 1337
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getAliveUsers()Ljava/util/List;

    move-result-object v0

    .line 1338
    .local v0, "aliveUsers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 1339
    .local v1, "result":Ljava/util/Set;, "Ljava/util/Set<Landroid/companion/Association;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "size":I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 1340
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .line 1341
    .local v4, "user":Landroid/content/pm/UserInfo;
    iget v5, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v5}, Lcom/android/server/companion/CompanionDeviceManagerService;->getAllAssociations(I)Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/companion/Association;

    .line 1342
    .local v6, "association":Landroid/companion/Association;
    invoke-virtual {v6}, Landroid/companion/Association;->getDeviceMacAddress()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1343
    invoke-interface {v1, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1345
    .end local v6    # "association":Landroid/companion/Association;
    :cond_0
    goto :goto_1

    .line 1339
    .end local v4    # "user":Landroid/content/pm/UserInfo;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1347
    .end local v2    # "i":I
    .end local v3    # "size":I
    :cond_2
    return-object v1
.end method

.method private getAllUsers()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .line 1046
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1048
    .local v0, "identity":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1050
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1048
    return-object v2

    .line 1050
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1051
    throw v2
.end method

.method private getBleScanFilters()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/le/ScanFilter;",
            ">;"
        }
    .end annotation

    .line 1449
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1450
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/bluetooth/le/ScanFilter;>;"
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 1451
    .local v1, "addressesSeen":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->getAllAssociations()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/companion/Association;

    .line 1452
    .local v3, "association":Landroid/companion/Association;
    invoke-virtual {v3}, Landroid/companion/Association;->getDeviceMacAddress()Ljava/lang/String;

    move-result-object v4

    .line 1453
    .local v4, "address":Ljava/lang/String;
    invoke-virtual {v1, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1454
    goto :goto_0

    .line 1456
    :cond_0
    invoke-virtual {v3}, Landroid/companion/Association;->isNotifyOnDeviceNearby()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1457
    new-instance v5, Landroid/bluetooth/le/ScanFilter$Builder;

    invoke-direct {v5}, Landroid/bluetooth/le/ScanFilter$Builder;-><init>()V

    invoke-virtual {v5, v4}, Landroid/bluetooth/le/ScanFilter$Builder;->setDeviceAddress(Ljava/lang/String;)Landroid/bluetooth/le/ScanFilter$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/bluetooth/le/ScanFilter$Builder;->build()Landroid/bluetooth/le/ScanFilter;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1458
    invoke-virtual {v1, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1460
    .end local v3    # "association":Landroid/companion/Association;
    .end local v4    # "address":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 1461
    :cond_2
    return-object v0
.end method

.method private static getCallingUserId()I
    .locals 1

    .line 735
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    return v0
.end method

.method private getDeviceListenerServiceConnector(Landroid/companion/Association;)Lcom/android/internal/infra/ServiceConnector;
    .locals 3
    .param p1, "a"    # Landroid/companion/Association;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/companion/Association;",
            ")",
            "Lcom/android/internal/infra/ServiceConnector<",
            "Landroid/companion/ICompanionDeviceService;",
            ">;"
        }
    .end annotation

    .line 1183
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mDeviceListenerServiceConnectors:Lcom/android/internal/infra/PerUser;

    invoke-virtual {p1}, Landroid/companion/Association;->getUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/infra/PerUser;->forUser(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 1184
    invoke-virtual {p1}, Landroid/companion/Association;->getPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/server/companion/CompanionDeviceManagerService$$ExternalSyntheticLambda14;

    invoke-direct {v2, p0, p1}, Lcom/android/server/companion/CompanionDeviceManagerService$$ExternalSyntheticLambda14;-><init>(Lcom/android/server/companion/CompanionDeviceManagerService;Landroid/companion/Association;)V

    .line 1183
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/infra/ServiceConnector;

    return-object v0
.end method

.method private getDeviceProfilePermissionDescription(Ljava/lang/String;)Lcom/android/internal/infra/AndroidFuture;
    .locals 4
    .param p1, "deviceProfile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1465
    new-instance v0, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 1466
    .local v0, "result":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mPermissionControllerManager:Landroid/permission/PermissionControllerManager;

    .line 1467
    invoke-static {}, Lcom/android/server/FgThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Lcom/android/server/companion/CompanionDeviceManagerService$$ExternalSyntheticLambda9;

    invoke-direct {v3, v0}, Lcom/android/server/companion/CompanionDeviceManagerService$$ExternalSyntheticLambda9;-><init>(Lcom/android/internal/infra/AndroidFuture;)V

    .line 1466
    invoke-virtual {v1, p1, v2, v3}, Landroid/permission/PermissionControllerManager;->getPrivilegesDescriptionStringForProfile(Ljava/lang/String;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 1474
    return-object v0
.end method

.method private getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 935
    sget-object v0, Lcom/android/server/companion/CompanionDeviceManagerService$$ExternalSyntheticLambda5;->INSTANCE:Lcom/android/server/companion/CompanionDeviceManagerService$$ExternalSyntheticLambda5;

    .line 945
    invoke-virtual {p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 935
    invoke-static {v0, v1, p1, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainSupplier(Lcom/android/internal/util/function/TriFunction;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledSupplier;

    move-result-object v0

    .line 945
    invoke-interface {v0}, Lcom/android/internal/util/function/pooled/PooledSupplier;->recycleOnUse()Lcom/android/internal/util/function/pooled/PooledSupplier;

    move-result-object v0

    .line 935
    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    return-object v0
.end method

.method private getSameOemPackageCerts(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "oemPackages"    # [Ljava/lang/String;
    .param p3, "sameOemCerts"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 865
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 869
    .local v0, "sameOemPackageCerts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_1

    .line 870
    aget-object v2, p2, v1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 871
    aget-object v2, p3, v1

    const-string v3, ":"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 869
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 875
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method private getStorageFileForUser(I)Landroid/util/AtomicFile;
    .locals 3
    .param p1, "userId"    # I

    .line 1026
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mUidToStorage:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/server/companion/CompanionDeviceManagerService$$ExternalSyntheticLambda17;->INSTANCE:Lcom/android/server/companion/CompanionDeviceManagerService$$ExternalSyntheticLambda17;

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/AtomicFile;

    return-object v0
.end method

.method private grantDeviceProfile(Landroid/companion/Association;)V
    .locals 8
    .param p1, "association"    # Landroid/companion/Association;

    .line 1144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "grantDeviceProfile(association = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CompanionDeviceManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1146
    invoke-virtual {p1}, Landroid/companion/Association;->getDeviceProfile()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1147
    iget-object v1, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mRoleManager:Landroid/app/role/RoleManager;

    .line 1148
    invoke-virtual {p1}, Landroid/companion/Association;->getDeviceProfile()Ljava/lang/String;

    move-result-object v2

    .line 1149
    invoke-virtual {p1}, Landroid/companion/Association;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    .line 1151
    invoke-virtual {p1}, Landroid/companion/Association;->getUserId()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v5

    .line 1152
    invoke-virtual {p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v6

    new-instance v7, Lcom/android/server/companion/CompanionDeviceManagerService$$ExternalSyntheticLambda7;

    invoke-direct {v7, p1}, Lcom/android/server/companion/CompanionDeviceManagerService$$ExternalSyntheticLambda7;-><init>(Landroid/companion/Association;)V

    .line 1147
    invoke-virtual/range {v1 .. v7}, Landroid/app/role/RoleManager;->addRoleHolderAsUser(Ljava/lang/String;Ljava/lang/String;ILandroid/os/UserHandle;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 1162
    :cond_0
    return-void
.end method

.method private initBleScanning()V
    .locals 2

    .line 1405
    const-string v0, "CompanionDeviceManagerService"

    const-string v1, "initBleScanning()"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1407
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    new-instance v1, Lcom/android/server/companion/CompanionDeviceManagerService$5;

    invoke-direct {v1, p0}, Lcom/android/server/companion/CompanionDeviceManagerService$5;-><init>(Lcom/android/server/companion/CompanionDeviceManagerService;)V

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->registerServiceLifecycleCallback(Landroid/bluetooth/BluetoothAdapter$ServiceLifecycleCallback;)Z

    move-result v0

    .line 1420
    .local v0, "bluetoothReady":Z
    if-eqz v0, :cond_0

    .line 1421
    invoke-virtual {p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->startBleScan()V

    .line 1423
    :cond_0
    return-void
.end method

.method private static isCallerSystem()Z
    .locals 2

    .line 739
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isDeviceDisappeared(Ljava/util/Date;)Z
    .locals 4
    .param p1, "lastSeen"    # Ljava/util/Date;

    .line 1177
    if-eqz p1, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x927c0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

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

.method static synthetic lambda$createDeviceListenerServiceConnector$14(Landroid/companion/Association;Landroid/content/pm/ResolveInfo;)Z
    .locals 2
    .param p0, "a"    # Landroid/companion/Association;
    .param p1, "info"    # Landroid/content/pm/ResolveInfo;

    .line 1193
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/companion/Association;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$getAllAssociations$10(Ljava/lang/String;Landroid/companion/Association;)Z
    .locals 1
    .param p0, "packageFilter"    # Ljava/lang/String;
    .param p1, "a"    # Landroid/companion/Association;

    .line 1058
    if-eqz p0, :cond_1

    invoke-virtual {p1}, Landroid/companion/Association;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

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
    return v0
.end method

.method static synthetic lambda$getAllAssociations$11(Ljava/lang/String;Ljava/lang/String;Landroid/companion/Association;)Z
    .locals 1
    .param p0, "packageFilter"    # Ljava/lang/String;
    .param p1, "addressFilter"    # Ljava/lang/String;
    .param p2, "a"    # Landroid/companion/Association;

    .line 1079
    if-eqz p0, :cond_0

    invoke-virtual {p2}, Landroid/companion/Association;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    .line 1081
    invoke-virtual {p2}, Landroid/companion/Association;->getDeviceMacAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 1079
    :goto_1
    return v0
.end method

.method static synthetic lambda$getDeviceProfilePermissionDescription$18(Lcom/android/internal/infra/AndroidFuture;Ljava/lang/CharSequence;)V
    .locals 1
    .param p0, "result"    # Lcom/android/internal/infra/AndroidFuture;
    .param p1, "desc"    # Ljava/lang/CharSequence;

    .line 1469
    :try_start_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1472
    goto :goto_0

    .line 1470
    :catch_0
    move-exception v0

    .line 1471
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 1473
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method static synthetic lambda$getPackageInfo$5(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)Landroid/content/pm/PackageInfo;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "id"    # Ljava/lang/Integer;

    .line 937
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v1, 0x5000

    .line 940
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 937
    invoke-virtual {v0, p1, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 941
    :catch_0
    move-exception v0

    .line 942
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to get PackageInfo for package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CompanionDeviceManagerService"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 943
    const/4 v1, 0x0

    return-object v1
.end method

.method static synthetic lambda$getStorageFileForUser$9(Ljava/lang/Integer;)Landroid/util/AtomicFile;
    .locals 4
    .param p0, "u"    # Ljava/lang/Integer;

    .line 1027
    new-instance v0, Landroid/util/AtomicFile;

    new-instance v1, Ljava/io/File;

    .line 1029
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v2

    const-string v3, "companion_device_manager_associations.xml"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 1027
    return-object v0
.end method

.method static synthetic lambda$grantDeviceProfile$12(Landroid/companion/Association;Ljava/lang/Boolean;)V
    .locals 2
    .param p0, "association"    # Landroid/companion/Association;
    .param p1, "success"    # Ljava/lang/Boolean;

    .line 1154
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to grant device profile role "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1156
    invoke-virtual {p0}, Landroid/companion/Association;->getDeviceProfile()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1157
    invoke-virtual {p0}, Landroid/companion/Association;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1158
    invoke-virtual {p0}, Landroid/companion/Association;->getUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1155
    const-string v1, "CompanionDeviceManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1160
    :cond_0
    return-void
.end method

.method static synthetic lambda$mayAssociateWithoutPrompt$4(JLandroid/companion/Association;)Z
    .locals 4
    .param p0, "now"    # J
    .param p2, "a"    # Landroid/companion/Association;

    .line 894
    invoke-virtual {p2}, Landroid/companion/Association;->getTimeApprovedMs()J

    move-result-wide v0

    sub-long v0, p0, v0

    const-wide/32 v2, 0x36ee80

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$onAssociationPreRemove$2(Landroid/companion/Association;Ljava/lang/String;Landroid/companion/Association;)Z
    .locals 1
    .param p0, "association"    # Landroid/companion/Association;
    .param p1, "deviceProfile"    # Ljava/lang/String;
    .param p2, "a"    # Landroid/companion/Association;

    .line 774
    invoke-virtual {p2, p0}, Landroid/companion/Association;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Landroid/companion/Association;->getDeviceProfile()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$onAssociationPreRemove$3(Landroid/companion/Association;Ljava/lang/Boolean;)V
    .locals 2
    .param p0, "association"    # Landroid/companion/Association;
    .param p1, "success"    # Ljava/lang/Boolean;

    .line 789
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 790
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to revoke device profile role "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 791
    invoke-virtual {p0}, Landroid/companion/Association;->getDeviceProfile()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 792
    invoke-virtual {p0}, Landroid/companion/Association;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 793
    invoke-virtual {p0}, Landroid/companion/Association;->getUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 790
    const-string v1, "CompanionDeviceManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    :cond_0
    return-void
.end method

.method static synthetic lambda$onDeviceDisappeared$17(Ljava/lang/String;Landroid/companion/ICompanionDeviceService;)V
    .locals 0
    .param p0, "address"    # Ljava/lang/String;
    .param p1, "service"    # Landroid/companion/ICompanionDeviceService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1385
    invoke-interface {p1, p0}, Landroid/companion/ICompanionDeviceService;->onDeviceDisappeared(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$onDeviceNearby$16(Landroid/companion/Association;Landroid/companion/ICompanionDeviceService;)V
    .locals 1
    .param p0, "association"    # Landroid/companion/Association;
    .param p1, "service"    # Landroid/companion/ICompanionDeviceService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1370
    invoke-virtual {p0}, Landroid/companion/Association;->getDeviceMacAddress()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/companion/ICompanionDeviceService;->onDeviceAppeared(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$persistAssociations$7(Lorg/xmlpull/v1/XmlSerializer;Landroid/companion/Association;)V
    .locals 5
    .param p0, "xml"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "association"    # Landroid/companion/Association;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1000
    const/4 v0, 0x0

    const-string v1, "association"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v2

    .line 1001
    invoke-virtual {p1}, Landroid/companion/Association;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "package"

    invoke-interface {v2, v0, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v2

    .line 1003
    invoke-virtual {p1}, Landroid/companion/Association;->getDeviceMacAddress()Ljava/lang/String;

    move-result-object v3

    .line 1002
    const-string v4, "device"

    invoke-interface {v2, v0, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v2

    .line 1004
    .local v2, "tag":Lorg/xmlpull/v1/XmlSerializer;
    invoke-virtual {p1}, Landroid/companion/Association;->getDeviceProfile()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1005
    invoke-virtual {p1}, Landroid/companion/Association;->getDeviceProfile()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "profile"

    invoke-interface {v2, v0, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1006
    nop

    .line 1008
    invoke-virtual {p1}, Landroid/companion/Association;->isNotifyOnDeviceNearby()Z

    move-result v3

    .line 1007
    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    .line 1006
    const-string/jumbo v4, "notify_device_nearby"

    invoke-interface {v2, v0, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1010
    :cond_0
    nop

    .line 1011
    invoke-virtual {p1}, Landroid/companion/Association;->getTimeApprovedMs()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    .line 1010
    const-string/jumbo v4, "time_approved"

    invoke-interface {v2, v0, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1012
    invoke-interface {v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1013
    return-void
.end method

.method static synthetic lambda$persistAssociations$8(Ljava/util/Set;Ljava/io/FileOutputStream;)V
    .locals 4
    .param p0, "associations"    # Ljava/util/Set;
    .param p1, "out"    # Ljava/io/FileOutputStream;

    .line 992
    const-string v0, "associations"

    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v1

    .line 994
    .local v1, "xml":Lorg/xmlpull/v1/XmlSerializer;
    :try_start_0
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 995
    const-string v2, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 996
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 997
    invoke-interface {v1, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 999
    new-instance v2, Lcom/android/server/companion/CompanionDeviceManagerService$$ExternalSyntheticLambda2;

    invoke-direct {v2, v1}, Lcom/android/server/companion/CompanionDeviceManagerService$$ExternalSyntheticLambda2;-><init>(Lorg/xmlpull/v1/XmlSerializer;)V

    invoke-static {p0, v2}, Lcom/android/internal/util/CollectionUtils;->forEach(Ljava/util/Set;Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;)V

    .line 1015
    invoke-interface {v1, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1016
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1020
    nop

    .line 1021
    return-void

    .line 1017
    :catch_0
    move-exception v0

    .line 1018
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "CompanionDeviceManagerService"

    const-string v3, "Error while writing associations file"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1019
    invoke-static {v0}, Landroid/util/ExceptionUtils;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method static synthetic lambda$recordAssociation$6(Landroid/companion/Association;Ljava/util/Set;)Ljava/util/Set;
    .locals 1
    .param p0, "association"    # Landroid/companion/Association;
    .param p1, "associations"    # Ljava/util/Set;

    .line 950
    invoke-static {p1, p0}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method private onDeviceDisappeared(Ljava/lang/String;)V
    .locals 7
    .param p1, "address"    # Ljava/lang/String;

    .line 1377
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onDeviceDisappeared(address = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CompanionDeviceManagerService"

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1379
    const/4 v0, 0x0

    .line 1380
    .local v0, "hasDeviceListeners":Z
    invoke-direct {p0, p1}, Lcom/android/server/companion/CompanionDeviceManagerService;->getAllAssociations(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/companion/Association;

    .line 1381
    .local v4, "association":Landroid/companion/Association;
    invoke-virtual {v4}, Landroid/companion/Association;->isNotifyOnDeviceNearby()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1382
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Sending onDeviceDisappeared to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1383
    invoke-virtual {v4}, Landroid/companion/Association;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1382
    invoke-static {v2, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1384
    invoke-direct {p0, v4}, Lcom/android/server/companion/CompanionDeviceManagerService;->getDeviceListenerServiceConnector(Landroid/companion/Association;)Lcom/android/internal/infra/ServiceConnector;

    move-result-object v5

    new-instance v6, Lcom/android/server/companion/CompanionDeviceManagerService$$ExternalSyntheticLambda1;

    invoke-direct {v6, p1}, Lcom/android/server/companion/CompanionDeviceManagerService$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;)V

    invoke-interface {v5, v6}, Lcom/android/internal/infra/ServiceConnector;->run(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Z

    .line 1386
    const/4 v0, 0x1

    .line 1388
    .end local v4    # "association":Landroid/companion/Association;
    :cond_0
    goto :goto_0

    .line 1390
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/companion/CompanionDeviceManagerService;->cancelUnbindDeviceListener(Ljava/lang/String;)V

    .line 1391
    if-eqz v0, :cond_2

    .line 1392
    iget-object v1, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mMainHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mUnbindDeviceListenersRunnable:Lcom/android/server/companion/CompanionDeviceManagerService$UnbindDeviceListenersRunnable;

    .line 1394
    invoke-virtual {v2, p1}, Lcom/android/server/companion/CompanionDeviceManagerService$UnbindDeviceListenersRunnable;->getJobId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-wide/32 v4, 0x927c0

    .line 1392
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    .line 1397
    :cond_2
    return-void
.end method

.method private onDeviceNearby(Ljava/lang/String;)V
    .locals 9
    .param p1, "address"    # Ljava/lang/String;

    .line 1351
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 1352
    .local v0, "timestamp":Ljava/util/Date;
    iget-object v1, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mDevicesLastNearby:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Date;

    .line 1354
    .local v1, "oldTimestamp":Ljava/util/Date;
    invoke-direct {p0, p1}, Lcom/android/server/companion/CompanionDeviceManagerService;->cancelUnbindDeviceListener(Ljava/lang/String;)V

    .line 1356
    iget-object v2, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mTriggerDeviceDisappearedRunnables:Landroid/util/ArrayMap;

    new-instance v3, Lcom/android/server/companion/CompanionDeviceManagerService$$ExternalSyntheticLambda15;

    invoke-direct {v3, p0, p1}, Lcom/android/server/companion/CompanionDeviceManagerService$$ExternalSyntheticLambda15;-><init>(Lcom/android/server/companion/CompanionDeviceManagerService;Ljava/lang/String;)V

    .line 1357
    invoke-virtual {v2, p1, v3}, Landroid/util/ArrayMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/companion/CompanionDeviceManagerService$TriggerDeviceDisappearedRunnable;

    .line 1358
    invoke-virtual {v2}, Lcom/android/server/companion/CompanionDeviceManagerService$TriggerDeviceDisappearedRunnable;->schedule()V

    .line 1361
    if-eqz v1, :cond_1

    .line 1362
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x2710

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    .line 1363
    .local v2, "justAppeared":Z
    :goto_1
    if-eqz v2, :cond_3

    .line 1364
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onDeviceNearby(justAppeared, address = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "CompanionDeviceManagerService"

    invoke-static {v5, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1365
    invoke-direct {p0, p1}, Lcom/android/server/companion/CompanionDeviceManagerService;->getAllAssociations(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/companion/Association;

    .line 1366
    .local v6, "association":Landroid/companion/Association;
    invoke-virtual {v6}, Landroid/companion/Association;->isNotifyOnDeviceNearby()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1367
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Sending onDeviceAppeared to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1368
    invoke-virtual {v6}, Landroid/companion/Association;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1367
    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1369
    invoke-direct {p0, v6}, Lcom/android/server/companion/CompanionDeviceManagerService;->getDeviceListenerServiceConnector(Landroid/companion/Association;)Lcom/android/internal/infra/ServiceConnector;

    move-result-object v7

    new-instance v8, Lcom/android/server/companion/CompanionDeviceManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v8, v6}, Lcom/android/server/companion/CompanionDeviceManagerService$$ExternalSyntheticLambda0;-><init>(Landroid/companion/Association;)V

    invoke-interface {v7, v8}, Lcom/android/internal/infra/ServiceConnector;->run(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Z

    .line 1372
    .end local v6    # "association":Landroid/companion/Association;
    :cond_2
    goto :goto_2

    .line 1374
    :cond_3
    return-void
.end method

.method private static parseLongOrDefault(Ljava/lang/String;J)J
    .locals 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "def"    # J

    .line 1479
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 1480
    :catch_0
    move-exception v0

    .line 1481
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v1, "CompanionDeviceManagerService"

    const-string v2, "Failed to parse"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1482
    return-wide p1
.end method

.method private persistAssociations(Ljava/util/Set;I)V
    .locals 3
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/companion/Association;",
            ">;I)V"
        }
    .end annotation

    .line 988
    .local p1, "associations":Ljava/util/Set;, "Ljava/util/Set<Landroid/companion/Association;>;"
    const-string v0, "CompanionDeviceManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Writing associations to disk: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 989
    invoke-direct {p0, p2}, Lcom/android/server/companion/CompanionDeviceManagerService;->getStorageFileForUser(I)Landroid/util/AtomicFile;

    move-result-object v0

    .line 990
    .local v0, "file":Landroid/util/AtomicFile;
    monitor-enter v0

    .line 991
    :try_start_0
    new-instance v1, Lcom/android/server/companion/CompanionDeviceManagerService$$ExternalSyntheticLambda10;

    invoke-direct {v1, p1}, Lcom/android/server/companion/CompanionDeviceManagerService$$ExternalSyntheticLambda10;-><init>(Ljava/util/Set;)V

    invoke-virtual {v0, v1}, Landroid/util/AtomicFile;->write(Ljava/util/function/Consumer;)V

    .line 1022
    monitor-exit v0

    .line 1023
    return-void

    .line 1022
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private readAllAssociations(I)Ljava/util/Set;
    .locals 16
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Landroid/companion/Association;",
            ">;"
        }
    .end annotation

    .line 1085
    invoke-direct/range {p0 .. p1}, Lcom/android/server/companion/CompanionDeviceManagerService;->getStorageFileForUser(I)Landroid/util/AtomicFile;

    move-result-object v1

    .line 1087
    .local v1, "file":Landroid/util/AtomicFile;
    invoke-virtual {v1}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return-object v2

    .line 1089
    :cond_0
    const/4 v3, 0x0

    .line 1090
    .local v3, "result":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/companion/Association;>;"
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 1091
    .local v4, "parser":Lorg/xmlpull/v1/XmlPullParser;
    monitor-enter v1

    .line 1092
    :try_start_0
    invoke-virtual {v1}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v0
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-object v5, v0

    .line 1093
    .local v5, "in":Ljava/io/FileInputStream;
    :try_start_1
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v5, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1095
    :goto_0
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    move v6, v0

    .local v6, "type":I
    const/4 v7, 0x1

    if-eq v0, v7, :cond_4

    .line 1096
    const/4 v0, 0x2

    if-eq v6, v0, :cond_1

    const-string v0, "associations"

    .line 1097
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 1099
    :cond_1
    const-string/jumbo v0, "package"

    invoke-interface {v4, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1100
    .local v0, "appPackage":Ljava/lang/String;
    const-string v7, "device"

    invoke-interface {v4, v2, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v15, v7

    .line 1102
    .local v15, "deviceAddress":Ljava/lang/String;
    const-string/jumbo v7, "profile"

    invoke-interface {v4, v2, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1103
    .local v11, "profile":Ljava/lang/String;
    const-string/jumbo v7, "notify_device_nearby"

    .line 1104
    invoke-interface {v4, v2, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1103
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    .line 1105
    .local v12, "persistentGrants":Z
    const-string/jumbo v7, "time_approved"

    .line 1106
    invoke-interface {v4, v2, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-wide/16 v8, 0x0

    .line 1105
    invoke-static {v7, v8, v9}, Lcom/android/server/companion/CompanionDeviceManagerService;->parseLongOrDefault(Ljava/lang/String;J)J

    move-result-wide v13

    .line 1108
    .local v13, "timeApproved":J
    if-eqz v0, :cond_3

    if-nez v15, :cond_2

    goto :goto_1

    .line 1110
    :cond_2
    new-instance v10, Landroid/companion/Association;

    move-object v7, v10

    move/from16 v8, p1

    move-object v9, v15

    move-object v2, v10

    move-object v10, v0

    invoke-direct/range {v7 .. v14}, Landroid/companion/Association;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJ)V

    invoke-static {v3, v2}, Lcom/android/internal/util/ArrayUtils;->add(Landroid/util/ArraySet;Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v3, v2

    .line 1113
    .end local v0    # "appPackage":Ljava/lang/String;
    .end local v11    # "profile":Ljava/lang/String;
    .end local v12    # "persistentGrants":Z
    .end local v13    # "timeApproved":J
    .end local v15    # "deviceAddress":Ljava/lang/String;
    const/4 v2, 0x0

    goto :goto_0

    .line 1095
    .end local v6    # "type":I
    :cond_3
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 1114
    .restart local v6    # "type":I
    :cond_4
    nop

    .line 1115
    if-eqz v5, :cond_5

    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :cond_5
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1114
    return-object v3

    .line 1092
    .end local v6    # "type":I
    :catchall_0
    move-exception v0

    move-object v2, v0

    if-eqz v5, :cond_6

    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v6, v0

    :try_start_5
    invoke-virtual {v2, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "file":Landroid/util/AtomicFile;
    .end local v3    # "result":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/companion/Association;>;"
    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local p0    # "this":Lcom/android/server/companion/CompanionDeviceManagerService;
    .end local p1    # "userId":I
    :cond_6
    :goto_2
    throw v2
    :try_end_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1119
    .end local v5    # "in":Ljava/io/FileInputStream;
    .restart local v1    # "file":Landroid/util/AtomicFile;
    .restart local v3    # "result":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/companion/Association;>;"
    .restart local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local p0    # "this":Lcom/android/server/companion/CompanionDeviceManagerService;
    .restart local p1    # "userId":I
    :catchall_2
    move-exception v0

    goto :goto_3

    .line 1115
    :catch_0
    move-exception v0

    .line 1116
    .local v0, "e":Ljava/lang/Exception;
    :try_start_6
    const-string v2, "CompanionDeviceManagerService"

    const-string v5, "Error while reading associations file"

    invoke-static {v2, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1117
    monitor-exit v1

    const/4 v2, 0x0

    return-object v2

    .line 1119
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0
.end method

.method private recordAssociation(Landroid/companion/Association;I)V
    .locals 2
    .param p1, "association"    # Landroid/companion/Association;
    .param p2, "userId"    # I

    .line 949
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "recordAssociation("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CompanionDeviceManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 950
    new-instance v0, Lcom/android/server/companion/CompanionDeviceManagerService$$ExternalSyntheticLambda12;

    invoke-direct {v0, p1}, Lcom/android/server/companion/CompanionDeviceManagerService$$ExternalSyntheticLambda12;-><init>(Landroid/companion/Association;)V

    invoke-direct {p0, v0, p2}, Lcom/android/server/companion/CompanionDeviceManagerService;->updateAssociations(Ljava/util/function/Function;I)V

    .line 951
    return-void
.end method

.method private registerPackageMonitor()V
    .locals 5

    .line 264
    new-instance v0, Lcom/android/server/companion/CompanionDeviceManagerService$3;

    invoke-direct {v0, p0}, Lcom/android/server/companion/CompanionDeviceManagerService$3;-><init>(Lcom/android/server/companion/CompanionDeviceManagerService;)V

    .line 287
    invoke-virtual {p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/FgThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/companion/CompanionDeviceManagerService$3;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    .line 288
    return-void
.end method

.method private unbindDevicePresenceListener(Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 291
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mDeviceListenerServiceConnectors:Lcom/android/internal/infra/PerUser;

    .line 292
    invoke-virtual {v0, p2}, Lcom/android/internal/infra/PerUser;->forUser(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 293
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/infra/ServiceConnector;

    .line 294
    .local v0, "deviceListener":Lcom/android/internal/infra/ServiceConnector;, "Lcom/android/internal/infra/ServiceConnector<Landroid/companion/ICompanionDeviceService;>;"
    if-eqz v0, :cond_0

    .line 295
    invoke-interface {v0}, Lcom/android/internal/infra/ServiceConnector;->unbind()V

    .line 297
    :cond_0
    return-void
.end method

.method private static unlinkToDeath(Landroid/os/IInterface;Landroid/os/IBinder$DeathRecipient;I)Landroid/os/IInterface;
    .locals 1
    .param p1, "deathRecipient"    # Landroid/os/IBinder$DeathRecipient;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/IInterface;",
            ">(TT;",
            "Landroid/os/IBinder$DeathRecipient;",
            "I)TT;"
        }
    .end annotation

    .line 393
    .local p0, "iinterface":Landroid/os/IInterface;, "TT;"
    if-eqz p0, :cond_0

    .line 394
    invoke-interface {p0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 396
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private unscheduleTriggerDeviceDisappearedRunnable(Ljava/lang/String;)V
    .locals 3
    .param p1, "address"    # Ljava/lang/String;

    .line 1328
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mTriggerDeviceDisappearedRunnables:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 1329
    .local v0, "r":Ljava/lang/Runnable;
    if-eqz v0, :cond_0

    .line 1330
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unscheduling TriggerDeviceDisappearedRunnable(address = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CompanionDeviceManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1332
    iget-object v1, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1334
    :cond_0
    return-void
.end method

.method private updateAssociations(Ljava/util/function/Function;I)V
    .locals 6
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Ljava/util/Set<",
            "Landroid/companion/Association;",
            ">;",
            "Ljava/util/Set<",
            "Landroid/companion/Association;",
            ">;>;I)V"
        }
    .end annotation

    .line 955
    .local p1, "update":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/util/Set<Landroid/companion/Association;>;Ljava/util/Set<Landroid/companion/Association;>;>;"
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 956
    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/server/companion/CompanionDeviceManagerService;->getAllAssociations(I)Ljava/util/Set;

    move-result-object v1

    .line 957
    .local v1, "old":Ljava/util/Set;, "Ljava/util/Set<Landroid/companion/Association;>;"
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2, v1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 958
    .local v2, "associations":Ljava/util/Set;, "Ljava/util/Set<Landroid/companion/Association;>;"
    invoke-interface {p1, v2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    move-object v2, v3

    .line 959
    const-string v3, "CompanionDeviceManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Updating associations: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "  -->  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    iget-object v3, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mCachedAssociations:Landroid/util/SparseArray;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v4

    invoke-virtual {v3, p2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 961
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v3

    sget-object v4, Lcom/android/server/companion/CompanionDeviceManagerService$$ExternalSyntheticLambda4;->INSTANCE:Lcom/android/server/companion/CompanionDeviceManagerService$$ExternalSyntheticLambda4;

    .line 963
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 961
    invoke-static {v4, p0, v2, v5}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 965
    invoke-direct {p0, p2, v2}, Lcom/android/server/companion/CompanionDeviceManagerService;->updateAtm(ILjava/util/Set;)V

    .line 966
    .end local v1    # "old":Ljava/util/Set;, "Ljava/util/Set<Landroid/companion/Association;>;"
    .end local v2    # "associations":Ljava/util/Set;, "Ljava/util/Set<Landroid/companion/Association;>;"
    monitor-exit v0

    .line 967
    return-void

    .line 966
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private updateAtm(ILjava/util/Set;)V
    .locals 6
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Landroid/companion/Association;",
            ">;)V"
        }
    .end annotation

    .line 970
    .local p2, "associations":Ljava/util/Set;, "Ljava/util/Set<Landroid/companion/Association;>;"
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 971
    .local v0, "companionAppUids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/companion/Association;

    .line 972
    .local v2, "association":Landroid/companion/Association;
    iget-object v3, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v2}, Landroid/companion/Association;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, p1}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;II)I

    move-result v3

    .line 974
    .local v3, "uid":I
    if-ltz v3, :cond_0

    .line 975
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 977
    .end local v2    # "association":Landroid/companion/Association;
    .end local v3    # "uid":I
    :cond_0
    goto :goto_0

    .line 978
    :cond_1
    iget-object v1, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    if-eqz v1, :cond_2

    .line 979
    invoke-virtual {v1, p1, v0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->setCompanionAppUids(ILjava/util/Set;)V

    .line 981
    :cond_2
    iget-object v1, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    if-eqz v1, :cond_3

    .line 983
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2, v0}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, p1, v2}, Landroid/app/ActivityManagerInternal;->setCompanionAppUids(ILjava/util/Set;)V

    .line 985
    :cond_3
    return-void
.end method

.method private updateSpecialAccessPermissionAsSystem(Landroid/companion/Association;Landroid/content/pm/PackageInfo;)V
    .locals 4
    .param p1, "association"    # Landroid/companion/Association;
    .param p2, "packageInfo"    # Landroid/content/pm/PackageInfo;

    .line 818
    iget-object v0, p2, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    const-string v1, "android.permission.RUN_IN_BACKGROUND"

    const-string v2, "android.permission.REQUEST_COMPANION_RUN_IN_BACKGROUND"

    invoke-static {v0, v1, v2}, Lcom/android/server/companion/CompanionDeviceManagerService;->containsEither([Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 821
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mPowerWhitelistManager:Landroid/os/PowerWhitelistManager;

    iget-object v1, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/PowerWhitelistManager;->addToWhitelist(Ljava/lang/String;)V

    goto :goto_0

    .line 823
    :cond_0
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mPowerWhitelistManager:Landroid/os/PowerWhitelistManager;

    iget-object v1, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/PowerWhitelistManager;->removeFromWhitelist(Ljava/lang/String;)V

    .line 826
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v0

    .line 827
    .local v0, "networkPolicyManager":Landroid/net/NetworkPolicyManager;
    iget-object v1, p2, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    const-string v2, "android.permission.USE_DATA_IN_BACKGROUND"

    const-string v3, "android.permission.REQUEST_COMPANION_USE_DATA_IN_BACKGROUND"

    invoke-static {v1, v2, v3}, Lcom/android/server/companion/CompanionDeviceManagerService;->containsEither([Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x4

    if-eqz v1, :cond_1

    .line 830
    iget-object v1, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1, v2}, Landroid/net/NetworkPolicyManager;->addUidPolicy(II)V

    goto :goto_1

    .line 834
    :cond_1
    iget-object v1, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1, v2}, Landroid/net/NetworkPolicyManager;->removeUidPolicy(II)V

    .line 839
    :goto_1
    iget-object v1, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v2, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-direct {p0, v1, v2}, Lcom/android/server/companion/CompanionDeviceManagerService;->exemptFromAutoRevoke(Ljava/lang/String;I)V

    .line 841
    iget-object v1, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mCurrentlyConnectedDevices:Ljava/util/List;

    invoke-virtual {p1}, Landroid/companion/Association;->getDeviceMacAddress()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 842
    invoke-direct {p0, p1}, Lcom/android/server/companion/CompanionDeviceManagerService;->grantDeviceProfile(Landroid/companion/Association;)V

    .line 845
    :cond_2
    invoke-virtual {p1}, Landroid/companion/Association;->isNotifyOnDeviceNearby()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 846
    invoke-virtual {p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->restartBleScan()V

    .line 848
    :cond_3
    return-void
.end method

.method private updateSpecialAccessPermissionForAssociatedPackage(Landroid/companion/Association;)V
    .locals 2
    .param p1, "association"    # Landroid/companion/Association;

    .line 804
    nop

    .line 805
    invoke-virtual {p1}, Landroid/companion/Association;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 806
    invoke-virtual {p1}, Landroid/companion/Association;->getUserId()I

    move-result v1

    .line 804
    invoke-direct {p0, v0, v1}, Lcom/android/server/companion/CompanionDeviceManagerService;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 807
    .local v0, "packageInfo":Landroid/content/pm/PackageInfo;
    if-nez v0, :cond_0

    .line 808
    return-void

    .line 811
    :cond_0
    sget-object v1, Lcom/android/server/companion/CompanionDeviceManagerService$$ExternalSyntheticLambda3;->INSTANCE:Lcom/android/server/companion/CompanionDeviceManagerService$$ExternalSyntheticLambda3;

    invoke-static {v1, p0, p1, v0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainRunnable(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v1

    .line 813
    invoke-interface {v1}, Lcom/android/internal/util/function/pooled/PooledRunnable;->recycleOnUse()Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v1

    .line 811
    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 814
    return-void
.end method


# virtual methods
.method addAssociation(Landroid/companion/Association;I)V
    .locals 0
    .param p1, "association"    # Landroid/companion/Association;
    .param p2, "userId"    # I

    .line 743
    invoke-direct {p0, p1}, Lcom/android/server/companion/CompanionDeviceManagerService;->updateSpecialAccessPermissionForAssociatedPackage(Landroid/companion/Association;)V

    .line 744
    invoke-direct {p0, p1, p2}, Lcom/android/server/companion/CompanionDeviceManagerService;->recordAssociation(Landroid/companion/Association;I)V

    .line 745
    return-void
.end method

.method public binderDied()V
    .locals 2

    .line 368
    const-string v0, "CompanionDeviceManagerService"

    const-string v1, "binderDied()"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/companion/CompanionDeviceManagerService$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/android/server/companion/CompanionDeviceManagerService$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/companion/CompanionDeviceManagerService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 370
    return-void
.end method

.method public synthetic lambda$getDeviceListenerServiceConnector$13$CompanionDeviceManagerService(Landroid/companion/Association;Ljava/lang/String;)Lcom/android/internal/infra/ServiceConnector;
    .locals 1
    .param p1, "a"    # Landroid/companion/Association;
    .param p2, "pkg"    # Ljava/lang/String;

    .line 1185
    invoke-direct {p0, p1}, Lcom/android/server/companion/CompanionDeviceManagerService;->createDeviceListenerServiceConnector(Landroid/companion/Association;)Lcom/android/internal/infra/ServiceConnector;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$onDeviceNearby$15$CompanionDeviceManagerService(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/companion/CompanionDeviceManagerService$TriggerDeviceDisappearedRunnable;
    .locals 1
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "addr"    # Ljava/lang/String;

    .line 1357
    new-instance v0, Lcom/android/server/companion/CompanionDeviceManagerService$TriggerDeviceDisappearedRunnable;

    invoke-direct {v0, p0, p1}, Lcom/android/server/companion/CompanionDeviceManagerService$TriggerDeviceDisappearedRunnable;-><init>(Lcom/android/server/companion/CompanionDeviceManagerService;Ljava/lang/String;)V

    return-object v0
.end method

.method public synthetic lambda$removeAssociation$0$CompanionDeviceManagerService(ILjava/lang/String;Ljava/lang/String;Landroid/companion/Association;)Z
    .locals 1
    .param p1, "userId"    # I
    .param p2, "deviceMacAddress"    # Ljava/lang/String;
    .param p3, "pkg"    # Ljava/lang/String;
    .param p4, "association"    # Landroid/companion/Association;

    .line 749
    invoke-virtual {p4}, Landroid/companion/Association;->getUserId()I

    move-result v0

    if-ne v0, p1, :cond_1

    .line 750
    invoke-virtual {p4}, Landroid/companion/Association;->getDeviceMacAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 751
    invoke-virtual {p4}, Landroid/companion/Association;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 752
    .local v0, "notMatch":Z
    :goto_1
    if-nez v0, :cond_2

    .line 753
    invoke-virtual {p0, p4}, Lcom/android/server/companion/CompanionDeviceManagerService;->onAssociationPreRemove(Landroid/companion/Association;)V

    .line 755
    :cond_2
    return v0
.end method

.method public synthetic lambda$removeAssociation$1$CompanionDeviceManagerService(ILjava/lang/String;Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
    .locals 1
    .param p1, "userId"    # I
    .param p2, "deviceMacAddress"    # Ljava/lang/String;
    .param p3, "pkg"    # Ljava/lang/String;
    .param p4, "associations"    # Ljava/util/Set;

    .line 748
    new-instance v0, Lcom/android/server/companion/CompanionDeviceManagerService$$ExternalSyntheticLambda21;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/companion/CompanionDeviceManagerService$$ExternalSyntheticLambda21;-><init>(Lcom/android/server/companion/CompanionDeviceManagerService;ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {p4, v0}, Lcom/android/internal/util/CollectionUtils;->filter(Ljava/util/Set;Ljava/util/function/Predicate;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method mayAssociateWithoutPrompt(Ljava/lang/String;I)Z
    .locals 17
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 879
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 880
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 881
    const v3, 0x1070027

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 882
    .local v2, "sameOemPackages":[Ljava/lang/String;
    invoke-static {v2, v1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "CompanionDeviceManagerService"

    const/4 v5, 0x0

    if-nez v3, :cond_0

    .line 883
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " can not silently create associations due to no package found. Packages from OEM: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 885
    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 883
    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    return v5

    .line 891
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 892
    .local v6, "now":J
    nop

    .line 893
    move/from16 v3, p2

    invoke-direct {v0, v3, v1}, Lcom/android/server/companion/CompanionDeviceManagerService;->getAllAssociations(ILjava/lang/String;)Ljava/util/Set;

    move-result-object v8

    new-instance v9, Lcom/android/server/companion/CompanionDeviceManagerService$$ExternalSyntheticLambda18;

    invoke-direct {v9, v6, v7}, Lcom/android/server/companion/CompanionDeviceManagerService$$ExternalSyntheticLambda18;-><init>(J)V

    .line 892
    invoke-static {v8, v9}, Lcom/android/internal/util/CollectionUtils;->filter(Ljava/util/Set;Ljava/util/function/Predicate;)Ljava/util/Set;

    move-result-object v8

    .line 896
    .local v8, "recentAssociations":Ljava/util/Set;, "Ljava/util/Set<Landroid/companion/Association;>;"
    invoke-interface {v8}, Ljava/util/Set;->size()I

    move-result v9

    const/4 v10, 0x5

    if-lt v9, v10, :cond_1

    .line 897
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Too many associations. "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " already associated "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 898
    invoke-interface {v8}, Ljava/util/Set;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " devices within the last "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/32 v10, 0x36ee80

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v10, "ms: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 897
    invoke-static {v4, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    return v5

    .line 903
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->getContext()Landroid/content/Context;

    move-result-object v9

    .line 904
    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1070026

    .line 905
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v9

    .line 907
    .local v9, "sameOemCerts":[Ljava/lang/String;
    iget-object v10, v0, Lcom/android/server/companion/CompanionDeviceManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 908
    invoke-virtual {v10, v1}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v10

    invoke-interface {v10}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/PackageParser$SigningDetails;

    move-result-object v10

    iget-object v10, v10, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    .line 909
    .local v10, "signatures":[Landroid/content/pm/Signature;
    invoke-static {v10}, Landroid/util/PackageUtils;->computeSignaturesSha256Digests([Landroid/content/pm/Signature;)[Ljava/lang/String;

    move-result-object v11

    .line 911
    .local v11, "apkCerts":[Ljava/lang/String;
    nop

    .line 912
    invoke-direct {v0, v1, v2, v9}, Lcom/android/server/companion/CompanionDeviceManagerService;->getSameOemPackageCerts(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v12

    .line 914
    .local v12, "sameOemPackageCerts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    array-length v13, v11

    move v14, v5

    :goto_0
    if-ge v14, v13, :cond_3

    aget-object v15, v11, v14

    .line 915
    .local v15, "cert":Ljava/lang/String;
    invoke-interface {v12, v15}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_2

    .line 916
    const/4 v4, 0x1

    return v4

    .line 914
    .end local v15    # "cert":Ljava/lang/String;
    :cond_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 920
    :cond_3
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " can not silently create associations. "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " has SHA256 certs from APK: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 922
    invoke-static {v11}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " and from OEM: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 923
    invoke-static {v9}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 920
    invoke-static {v4, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    return v5
.end method

.method maybeGrantAutoRevokeExemptions()V
    .locals 16

    .line 337
    move-object/from16 v1, p0

    const-string v2, "CompanionDeviceManagerService"

    const-string/jumbo v0, "maybeGrantAutoRevokeExemptions()"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 339
    .local v3, "pm":Landroid/content/pm/PackageManager;
    const-class v0, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    if-ge v7, v5, :cond_3

    aget v8, v4, v7

    .line 340
    .local v8, "userId":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v9, Ljava/io/File;

    .line 341
    invoke-static {v8}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v10

    const-string v11, "companion_device_preferences.xml"

    invoke-direct {v9, v10, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 340
    invoke-virtual {v0, v9, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/io/File;I)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 343
    .local v9, "pref":Landroid/content/SharedPreferences;
    const-string v10, "auto_revoke_grants_done"

    invoke-interface {v9, v10, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 344
    goto :goto_3

    .line 348
    :cond_0
    const/4 v11, 0x1

    :try_start_0
    invoke-direct {v1, v8}, Lcom/android/server/companion/CompanionDeviceManagerService;->getAllAssociations(I)Ljava/util/Set;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v12, v0

    .line 349
    .local v12, "associations":Ljava/util/Set;, "Ljava/util/Set<Landroid/companion/Association;>;"
    if-nez v12, :cond_1

    .line 361
    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v10, v11}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 350
    goto :goto_3

    .line 352
    :cond_1
    :try_start_1
    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/companion/Association;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v14, v0

    .line 354
    .local v14, "a":Landroid/companion/Association;
    :try_start_2
    invoke-virtual {v14}, Landroid/companion/Association;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v8}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v0

    .line 355
    .local v0, "uid":I
    invoke-virtual {v14}, Landroid/companion/Association;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v1, v15, v0}, Lcom/android/server/companion/CompanionDeviceManagerService;->exemptFromAutoRevoke(Ljava/lang/String;I)V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 358
    .end local v0    # "uid":I
    goto :goto_2

    .line 356
    :catch_0
    move-exception v0

    .line 357
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_3
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown companion package: "

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Landroid/companion/Association;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 359
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v14    # "a":Landroid/companion/Association;
    :goto_2
    const/4 v6, 0x0

    goto :goto_1

    .line 361
    .end local v12    # "associations":Ljava/util/Set;, "Ljava/util/Set<Landroid/companion/Association;>;"
    :cond_2
    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v10, v11}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 362
    nop

    .line 339
    .end local v8    # "userId":I
    .end local v9    # "pref":Landroid/content/SharedPreferences;
    :goto_3
    add-int/lit8 v7, v7, 0x1

    const/4 v6, 0x0

    goto :goto_0

    .line 361
    .restart local v8    # "userId":I
    .restart local v9    # "pref":Landroid/content/SharedPreferences;
    :catchall_0
    move-exception v0

    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, v10, v11}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 362
    throw v0

    .line 364
    .end local v8    # "userId":I
    .end local v9    # "pref":Landroid/content/SharedPreferences;
    :cond_3
    return-void
.end method

.method onAssociationPreRemove(Landroid/companion/Association;)V
    .locals 11
    .param p1, "association"    # Landroid/companion/Association;

    .line 761
    invoke-virtual {p1}, Landroid/companion/Association;->isNotifyOnDeviceNearby()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 762
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mDeviceListenerServiceConnectors:Lcom/android/internal/infra/PerUser;

    .line 763
    invoke-virtual {p1}, Landroid/companion/Association;->getUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/infra/PerUser;->forUser(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 764
    invoke-virtual {p1}, Landroid/companion/Association;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/infra/ServiceConnector;

    .line 765
    .local v0, "serviceConnector":Lcom/android/internal/infra/ServiceConnector;, "Lcom/android/internal/infra/ServiceConnector<Landroid/companion/ICompanionDeviceService;>;"
    if-eqz v0, :cond_0

    .line 766
    invoke-interface {v0}, Lcom/android/internal/infra/ServiceConnector;->unbind()V

    .line 770
    .end local v0    # "serviceConnector":Lcom/android/internal/infra/ServiceConnector;, "Lcom/android/internal/infra/ServiceConnector<Landroid/companion/ICompanionDeviceService;>;"
    :cond_0
    invoke-virtual {p1}, Landroid/companion/Association;->getDeviceProfile()Ljava/lang/String;

    move-result-object v0

    .line 771
    .local v0, "deviceProfile":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 772
    nop

    .line 773
    invoke-virtual {p1}, Landroid/companion/Association;->getUserId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/companion/CompanionDeviceManagerService;->getAllAssociations(I)Ljava/util/Set;

    move-result-object v1

    new-instance v2, Lcom/android/server/companion/CompanionDeviceManagerService$$ExternalSyntheticLambda20;

    invoke-direct {v2, p1, v0}, Lcom/android/server/companion/CompanionDeviceManagerService$$ExternalSyntheticLambda20;-><init>(Landroid/companion/Association;Ljava/lang/String;)V

    .line 772
    invoke-static {v1, v2}, Lcom/android/internal/util/CollectionUtils;->find(Ljava/util/Set;Ljava/util/function/Predicate;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/companion/Association;

    .line 775
    .local v1, "otherAssociationWithDeviceProfile":Landroid/companion/Association;
    if-eqz v1, :cond_1

    .line 776
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not revoking "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " - profile still present in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CompanionDeviceManagerService"

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 780
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 782
    .local v2, "identity":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mRoleManager:Landroid/app/role/RoleManager;

    .line 783
    invoke-virtual {p1}, Landroid/companion/Association;->getDeviceProfile()Ljava/lang/String;

    move-result-object v5

    .line 784
    invoke-virtual {p1}, Landroid/companion/Association;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    .line 786
    invoke-virtual {p1}, Landroid/companion/Association;->getUserId()I

    move-result v8

    invoke-static {v8}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v8

    .line 787
    invoke-virtual {p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v9

    new-instance v10, Lcom/android/server/companion/CompanionDeviceManagerService$$ExternalSyntheticLambda8;

    invoke-direct {v10, p1}, Lcom/android/server/companion/CompanionDeviceManagerService$$ExternalSyntheticLambda8;-><init>(Landroid/companion/Association;)V

    .line 782
    invoke-virtual/range {v4 .. v10}, Landroid/app/role/RoleManager;->removeRoleHolderAsUser(Ljava/lang/String;Ljava/lang/String;ILandroid/os/UserHandle;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 797
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 798
    goto :goto_0

    .line 797
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 798
    throw v4

    .line 801
    .end local v1    # "otherAssociationWithDeviceProfile":Landroid/companion/Association;
    .end local v2    # "identity":J
    :cond_2
    :goto_0
    return-void
.end method

.method public onBootPhase(I)V
    .locals 3
    .param p1, "phase"    # I

    .line 306
    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_1

    .line 308
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 309
    if-eqz v0, :cond_0

    .line 310
    nop

    .line 311
    invoke-virtual {p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mBluetoothDeviceConnectedListener:Lcom/android/server/companion/CompanionDeviceManagerService$BluetoothDeviceConnectedListener;

    .line 310
    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->registerBluetoothConnectionCallback(Ljava/util/concurrent/Executor;Landroid/bluetooth/BluetoothAdapter$BluetoothConnectionCallback;)Z

    .line 313
    invoke-virtual {p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mBleStateBroadcastReceiver:Lcom/android/server/companion/CompanionDeviceManagerService$BleStateBroadcastReceiver;

    iget-object v2, v1, Lcom/android/server/companion/CompanionDeviceManagerService$BleStateBroadcastReceiver;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 315
    invoke-direct {p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->initBleScanning()V

    goto :goto_0

    .line 317
    :cond_0
    const-string v0, "CompanionDeviceManagerService"

    const-string v1, "No BluetoothAdapter available"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    :cond_1
    :goto_0
    return-void
.end method

.method onDeviceConnected(Ljava/lang/String;)V
    .locals 7
    .param p1, "address"    # Ljava/lang/String;

    .line 1123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onDeviceConnected(address = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CompanionDeviceManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1125
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mCurrentlyConnectedDevices:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1127
    invoke-direct {p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->getAllUsers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 1128
    .local v2, "user":Landroid/content/pm/UserInfo;
    iget v3, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v3}, Lcom/android/server/companion/CompanionDeviceManagerService;->getAllAssociations(I)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/companion/Association;

    .line 1129
    .local v4, "association":Landroid/companion/Association;
    invoke-virtual {v4}, Landroid/companion/Association;->getDeviceMacAddress()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1130
    invoke-virtual {v4}, Landroid/companion/Association;->getDeviceProfile()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 1131
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Granting role "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/companion/Association;->getDeviceProfile()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1132
    invoke-virtual {v4}, Landroid/companion/Association;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " due to device connected: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1133
    invoke-virtual {v4}, Landroid/companion/Association;->getDeviceMacAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1131
    invoke-static {v1, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1134
    invoke-direct {p0, v4}, Lcom/android/server/companion/CompanionDeviceManagerService;->grantDeviceProfile(Landroid/companion/Association;)V

    .line 1137
    .end local v4    # "association":Landroid/companion/Association;
    :cond_0
    goto :goto_1

    .line 1138
    .end local v2    # "user":Landroid/content/pm/UserInfo;
    :cond_1
    goto :goto_0

    .line 1140
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/server/companion/CompanionDeviceManagerService;->onDeviceNearby(Ljava/lang/String;)V

    .line 1141
    return-void
.end method

.method onDeviceDisconnected(Ljava/lang/String;)V
    .locals 2
    .param p1, "address"    # Ljava/lang/String;

    .line 1165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onDeviceDisconnected(address = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CompanionDeviceManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1167
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mCurrentlyConnectedDevices:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1169
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mDevicesLastNearby:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    .line 1170
    .local v0, "lastSeen":Ljava/util/Date;
    invoke-direct {p0, v0}, Lcom/android/server/companion/CompanionDeviceManagerService;->isDeviceDisappeared(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1171
    invoke-direct {p0, p1}, Lcom/android/server/companion/CompanionDeviceManagerService;->onDeviceDisappeared(Ljava/lang/String;)V

    .line 1172
    invoke-direct {p0, p1}, Lcom/android/server/companion/CompanionDeviceManagerService;->unscheduleTriggerDeviceDisappearedRunnable(Ljava/lang/String;)V

    .line 1174
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 301
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mImpl:Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;

    const-string v1, "companiondevice"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/companion/CompanionDeviceManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 302
    return-void
.end method

.method public onUserUnlocking(Lcom/android/server/SystemService$TargetUser;)V
    .locals 7
    .param p1, "user"    # Lcom/android/server/SystemService$TargetUser;

    .line 324
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result v0

    .line 325
    .local v0, "userHandle":I
    invoke-direct {p0, v0}, Lcom/android/server/companion/CompanionDeviceManagerService;->getAllAssociations(I)Ljava/util/Set;

    move-result-object v1

    .line 326
    .local v1, "associations":Ljava/util/Set;, "Ljava/util/Set<Landroid/companion/Association;>;"
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 329
    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/android/server/companion/CompanionDeviceManagerService;->updateAtm(ILjava/util/Set;)V

    .line 331
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    sget-object v3, Lcom/android/server/companion/CompanionDeviceManagerService$$ExternalSyntheticLambda11;->INSTANCE:Lcom/android/server/companion/CompanionDeviceManagerService$$ExternalSyntheticLambda11;

    .line 332
    invoke-static {v3, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v5, 0xa

    .line 333
    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    .line 331
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 334
    return-void

    .line 327
    :cond_1
    :goto_0
    return-void
.end method

.method removeAssociation(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "userId"    # I
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "deviceMacAddress"    # Ljava/lang/String;

    .line 748
    new-instance v0, Lcom/android/server/companion/CompanionDeviceManagerService$$ExternalSyntheticLambda13;

    invoke-direct {v0, p0, p1, p3, p2}, Lcom/android/server/companion/CompanionDeviceManagerService$$ExternalSyntheticLambda13;-><init>(Lcom/android/server/companion/CompanionDeviceManagerService;ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0, p1}, Lcom/android/server/companion/CompanionDeviceManagerService;->updateAssociations(Ljava/util/function/Function;I)V

    .line 757
    invoke-virtual {p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->restartBleScan()V

    .line 758
    return-void
.end method

.method restartBleScan()V
    .locals 2

    .line 1444
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeScanner()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mBleScanCallback:Landroid/bluetooth/le/ScanCallback;

    invoke-virtual {v0, v1}, Landroid/bluetooth/le/BluetoothLeScanner;->stopScan(Landroid/bluetooth/le/ScanCallback;)V

    .line 1445
    invoke-virtual {p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->startBleScan()V

    .line 1446
    return-void
.end method

.method startBleScan()V
    .locals 4

    .line 1426
    const-string v0, "CompanionDeviceManagerService"

    const-string/jumbo v1, "startBleScan()"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1428
    invoke-direct {p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->getBleScanFilters()Ljava/util/List;

    move-result-object v1

    .line 1429
    .local v1, "filters":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/le/ScanFilter;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1430
    return-void

    .line 1432
    :cond_0
    iget-object v2, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeScanner()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object v2

    .line 1433
    .local v2, "scanner":Landroid/bluetooth/le/BluetoothLeScanner;
    if-nez v2, :cond_1

    .line 1434
    const-string/jumbo v3, "scanner == null (likely BLE isn\'t ON yet)"

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1436
    :cond_1
    new-instance v0, Landroid/bluetooth/le/ScanSettings$Builder;

    invoke-direct {v0}, Landroid/bluetooth/le/ScanSettings$Builder;-><init>()V

    const/4 v3, 0x1

    .line 1438
    invoke-virtual {v0, v3}, Landroid/bluetooth/le/ScanSettings$Builder;->setScanMode(I)Landroid/bluetooth/le/ScanSettings$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/le/ScanSettings$Builder;->build()Landroid/bluetooth/le/ScanSettings;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mBleScanCallback:Landroid/bluetooth/le/ScanCallback;

    .line 1436
    invoke-virtual {v2, v1, v0, v3}, Landroid/bluetooth/le/BluetoothLeScanner;->startScan(Ljava/util/List;Landroid/bluetooth/le/ScanSettings;Landroid/bluetooth/le/ScanCallback;)V

    .line 1441
    :goto_0
    return-void
.end method
