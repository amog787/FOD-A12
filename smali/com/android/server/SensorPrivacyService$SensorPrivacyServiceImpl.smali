.class Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;
.super Landroid/hardware/ISensorPrivacyManager$Stub;
.source "SensorPrivacyService.java"

# interfaces
.implements Landroid/app/AppOpsManager$OnOpNotedListener;
.implements Landroid/app/AppOpsManager$OnOpStartedListener;
.implements Landroid/os/IBinder$DeathRecipient;
.implements Lcom/android/server/pm/UserManagerInternal$UserRestrictionsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SensorPrivacyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SensorPrivacyServiceImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl$SensorUseReminderDialogInfo;,
        Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl$SensorState;
    }
.end annotation


# instance fields
.field private final mAtomicFile:Landroid/util/AtomicFile;

.field private mEnabled:Landroid/util/SparseBooleanArray;

.field private final mHandler:Lcom/android/server/SensorPrivacyService$SensorPrivacyHandler;

.field private mIndividualEnabled:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl$SensorState;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mQueuedSensorUseReminderDialogs:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl$SensorUseReminderDialogInfo;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mSuppressReminders:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Landroid/os/UserHandle;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/os/IBinder;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/SensorPrivacyService;


# direct methods
.method public static synthetic $r8$lambda$8pwp2gKJjMfW_KhxHRXgvq-tRYo(Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;ILandroid/os/UserHandle;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->enqueueSensorUseReminderDialog(ILandroid/os/UserHandle;Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$tZd5F6mYtptZeVTb3CZEXnJhVQI(Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl$SensorUseReminderDialogInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->showSensorUserReminderDialog(Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl$SensorUseReminderDialogInfo;)V

    return-void
.end method

.method constructor <init>(Lcom/android/server/SensorPrivacyService;)V
    .locals 7
    .param p1, "this$0"    # Lcom/android/server/SensorPrivacyService;

    .line 325
    iput-object p1, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/SensorPrivacyService;

    invoke-direct {p0}, Landroid/hardware/ISensorPrivacyManager$Stub;-><init>()V

    .line 250
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->mLock:Ljava/lang/Object;

    .line 253
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->mEnabled:Landroid/util/SparseBooleanArray;

    .line 255
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->mIndividualEnabled:Landroid/util/SparseArray;

    .line 263
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->mSuppressReminders:Landroid/util/ArrayMap;

    .line 267
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->mQueuedSensorUseReminderDialogs:Landroid/util/ArrayMap;

    .line 326
    new-instance v1, Lcom/android/server/SensorPrivacyService$SensorPrivacyHandler;

    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/FgThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {p1}, Lcom/android/server/SensorPrivacyService;->access$200(Lcom/android/server/SensorPrivacyService;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, p1, v2, v3}, Lcom/android/server/SensorPrivacyService$SensorPrivacyHandler;-><init>(Lcom/android/server/SensorPrivacyService;Landroid/os/Looper;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->mHandler:Lcom/android/server/SensorPrivacyService$SensorPrivacyHandler;

    .line 327
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "sensor_privacy.xml"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 329
    .local v1, "sensorPrivacyFile":Ljava/io/File;
    new-instance v2, Landroid/util/AtomicFile;

    invoke-direct {v2, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v2, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->mAtomicFile:Landroid/util/AtomicFile;

    .line 330
    monitor-enter v0

    .line 331
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->readPersistedSensorPrivacyStateLocked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 332
    invoke-direct {p0}, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->persistSensorPrivacyStateLocked()V

    .line 334
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 336
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 338
    .local v0, "micAndCameraOps":[I
    invoke-static {p1}, Lcom/android/server/SensorPrivacyService;->access$300(Lcom/android/server/SensorPrivacyService;)Landroid/app/AppOpsManager;

    move-result-object v2

    invoke-virtual {v2, v0, p0}, Landroid/app/AppOpsManager;->startWatchingNoted([ILandroid/app/AppOpsManager$OnOpNotedListener;)V

    .line 339
    invoke-static {p1}, Lcom/android/server/SensorPrivacyService;->access$300(Lcom/android/server/SensorPrivacyService;)Landroid/app/AppOpsManager;

    move-result-object v2

    invoke-virtual {v2, v0, p0}, Landroid/app/AppOpsManager;->startWatchingStarted([ILandroid/app/AppOpsManager$OnOpStartedListener;)V

    .line 343
    invoke-static {p1}, Lcom/android/server/SensorPrivacyService;->access$200(Lcom/android/server/SensorPrivacyService;)Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl$1;

    invoke-direct {v3, p0, p1}, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl$1;-><init>(Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;Lcom/android/server/SensorPrivacyService;)V

    new-instance v4, Landroid/content/IntentFilter;

    .line 351
    invoke-static {}, Lcom/android/server/SensorPrivacyService;->access$400()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v5, "android.permission.MANAGE_SENSOR_PRIVACY"

    const/4 v6, 0x0

    .line 343
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 353
    invoke-static {p1}, Lcom/android/server/SensorPrivacyService;->access$500(Lcom/android/server/SensorPrivacyService;)Lcom/android/server/pm/UserManagerInternal;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/server/pm/UserManagerInternal;->addUserRestrictionsListener(Lcom/android/server/pm/UserManagerInternal$UserRestrictionsListener;)V

    .line 354
    return-void

    .line 334
    .end local v0    # "micAndCameraOps":[I
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    :array_0
    .array-data 4
        0x1b
        0x64
        0x1a
        0x65
    .end array-data
.end method

.method static synthetic access$1800(Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;
    .param p1, "x1"    # Ljava/lang/String;

    .line 245
    invoke-direct {p0, p1}, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->sensorStrToId(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;

    .line 245
    invoke-direct {p0}, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->enforceManageSensorPrivacyPermission()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;

    .line 245
    iget-object v0, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;

    .line 245
    iget-object v0, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->mIndividualEnabled:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;

    .line 245
    invoke-direct {p0}, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->persistSensorPrivacyState()V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;Landroid/util/Pair;Landroid/os/IBinder;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;
    .param p1, "x1"    # Landroid/util/Pair;
    .param p2, "x2"    # Landroid/os/IBinder;

    .line 245
    invoke-direct {p0, p1, p2}, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->removeSuppressPackageReminderToken(Landroid/util/Pair;Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;IIIZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Z

    .line 245
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->setIndividualSensorPrivacyUnchecked(IIIZ)V

    return-void
.end method

.method private canChangeIndividualSensorPrivacy(II)Z
    .locals 4
    .param p1, "userId"    # I
    .param p2, "sensor"    # I

    .line 770
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p2, v0, :cond_0

    iget-object v2, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/SensorPrivacyService;

    invoke-static {v2}, Lcom/android/server/SensorPrivacyService;->access$1600(Lcom/android/server/SensorPrivacyService;)Lcom/android/server/SensorPrivacyService$EmergencyCallHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/SensorPrivacyService$EmergencyCallHelper;->isInEmergencyCall()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 772
    invoke-static {}, Lcom/android/server/SensorPrivacyService;->access$600()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Can\'t change mic toggle during an emergency call"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    return v1

    .line 776
    :cond_0
    iget-object v2, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/SensorPrivacyService;

    invoke-static {v2}, Lcom/android/server/SensorPrivacyService;->access$1700(Lcom/android/server/SensorPrivacyService;)Landroid/app/KeyguardManager;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/SensorPrivacyService;

    invoke-static {v2}, Lcom/android/server/SensorPrivacyService;->access$1700(Lcom/android/server/SensorPrivacyService;)Landroid/app/KeyguardManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/app/KeyguardManager;->isDeviceLocked(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 777
    invoke-static {}, Lcom/android/server/SensorPrivacyService;->access$600()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Can\'t change mic/cam toggle while device is locked"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    return v1

    .line 781
    :cond_1
    if-ne p2, v0, :cond_2

    iget-object v2, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/SensorPrivacyService;

    invoke-static {v2}, Lcom/android/server/SensorPrivacyService;->access$500(Lcom/android/server/SensorPrivacyService;)Lcom/android/server/pm/UserManagerInternal;

    move-result-object v2

    const-string v3, "disallow_microphone_toggle"

    invoke-virtual {v2, p1, v3}, Lcom/android/server/pm/UserManagerInternal;->getUserRestriction(ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 783
    invoke-static {}, Lcom/android/server/SensorPrivacyService;->access$600()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Can\'t change mic toggle due to admin restriction"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    return v1

    .line 787
    :cond_2
    const/4 v2, 0x2

    if-ne p2, v2, :cond_3

    iget-object v2, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/SensorPrivacyService;

    invoke-static {v2}, Lcom/android/server/SensorPrivacyService;->access$500(Lcom/android/server/SensorPrivacyService;)Lcom/android/server/pm/UserManagerInternal;

    move-result-object v2

    const-string v3, "disallow_camera_toggle"

    invoke-virtual {v2, p1, v3}, Lcom/android/server/pm/UserManagerInternal;->getUserRestriction(ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 789
    invoke-static {}, Lcom/android/server/SensorPrivacyService;->access$600()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Can\'t change camera toggle due to admin restriction"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    return v1

    .line 792
    :cond_3
    return v0
.end method

.method private dump(Lcom/android/internal/util/dump/DualDumpOutputStream;)V
    .locals 3
    .param p1, "dumpStream"    # Lcom/android/internal/util/dump/DualDumpOutputStream;

    .line 1303
    iget-object v0, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1305
    :try_start_0
    iget-object v1, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/SensorPrivacyService;

    new-instance v2, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0, p1}, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;Lcom/android/internal/util/dump/DualDumpOutputStream;)V

    invoke-static {v1, v2}, Lcom/android/server/SensorPrivacyService;->access$1300(Lcom/android/server/SensorPrivacyService;Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;)V

    .line 1331
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1333
    invoke-virtual {p1}, Lcom/android/internal/util/dump/DualDumpOutputStream;->flush()V

    .line 1334
    return-void

    .line 1331
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private enforceManageSensorPrivacyPermission()V
    .locals 2

    .line 859
    const-string v0, "android.permission.MANAGE_SENSOR_PRIVACY"

    const-string v1, "Changing sensor privacy requires the following permission: android.permission.MANAGE_SENSOR_PRIVACY"

    invoke-direct {p0, v0, v1}, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->enforcePermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 862
    return-void
.end method

.method private enforceObserveSensorPrivacyPermission()V
    .locals 2

    .line 869
    const-string v0, "android.permission.OBSERVE_SENSOR_PRIVACY"

    const-string v1, "Observing sensor privacy changes requires the following permission: android.permission.OBSERVE_SENSOR_PRIVACY"

    invoke-direct {p0, v0, v1}, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->enforcePermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 872
    return-void
.end method

.method private enforcePermission(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .line 875
    iget-object v0, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/SensorPrivacyService;

    invoke-static {v0}, Lcom/android/server/SensorPrivacyService;->access$200(Lcom/android/server/SensorPrivacyService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 876
    return-void

    .line 878
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    invoke-direct {v0, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private enqueueSensorUseReminderDialog(ILandroid/os/UserHandle;Ljava/lang/String;I)V
    .locals 7
    .param p1, "taskId"    # I
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "sensor"    # I

    .line 559
    new-instance v0, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl$SensorUseReminderDialogInfo;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl$SensorUseReminderDialogInfo;-><init>(Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;ILandroid/os/UserHandle;Ljava/lang/String;)V

    .line 561
    .local v0, "info":Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl$SensorUseReminderDialogInfo;
    iget-object v1, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->mQueuedSensorUseReminderDialogs:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 562
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 563
    .local v1, "sensors":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne p4, v3, :cond_0

    iget-object v4, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->mSuppressReminders:Landroid/util/ArrayMap;

    new-instance v5, Landroid/util/Pair;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v5, v6, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    if-ne p4, v2, :cond_2

    iget-object v4, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->mSuppressReminders:Landroid/util/ArrayMap;

    new-instance v5, Landroid/util/Pair;

    .line 565
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v5, v6, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 566
    :cond_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 567
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 569
    :cond_2
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 571
    :goto_0
    iget-object v2, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->mQueuedSensorUseReminderDialogs:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 572
    iget-object v2, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->mHandler:Lcom/android/server/SensorPrivacyService$SensorPrivacyHandler;

    new-instance v3, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda7;

    invoke-direct {v3, p0}, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;)V

    .line 573
    invoke-static {v3, v0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0x1f4

    .line 572
    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/SensorPrivacyService$SensorPrivacyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 575
    return-void

    .line 577
    .end local v1    # "sensors":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    :cond_3
    iget-object v1, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->mQueuedSensorUseReminderDialogs:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    .line 578
    .restart local v1    # "sensors":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 579
    return-void
.end method

.method private enqueueSensorUseReminderDialogAsync(ILandroid/os/UserHandle;Ljava/lang/String;I)V
    .locals 4
    .param p1, "taskId"    # I
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "sensor"    # I

    .line 553
    iget-object v0, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->mHandler:Lcom/android/server/SensorPrivacyService$SensorPrivacyHandler;

    new-instance v1, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;)V

    .line 554
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 553
    invoke-static {v1, v2, p2, p3, v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/SensorPrivacyService$SensorPrivacyHandler;->sendMessage(Landroid/os/Message;)Z

    .line 555
    return-void
.end method

.method private isSensorPrivacyEnabled(I)Z
    .locals 3
    .param p1, "userId"    # I

    .line 891
    iget-object v0, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 892
    :try_start_0
    iget-object v1, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->mEnabled:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 893
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private isTelevision(Landroid/content/Context;)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 693
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    .line 694
    .local v0, "uiMode":I
    and-int/lit8 v1, v0, 0xf

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private logSensorPrivacyToggle(IIZJ)V
    .locals 11
    .param p1, "source"    # I
    .param p2, "sensor"    # I
    .param p3, "enabled"    # Z
    .param p4, "lastChange"    # J

    .line 797
    invoke-static {}, Lcom/android/server/SensorPrivacyService;->access$100()J

    move-result-wide v0

    sub-long/2addr v0, p4

    const-wide/32 v2, 0xea60

    div-long/2addr v0, v2

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 799
    .local v0, "logMins":J
    const/4 v2, -0x1

    .line 800
    .local v2, "logAction":I
    if-eqz p3, :cond_0

    .line 801
    const/4 v2, 0x2

    goto :goto_0

    .line 803
    :cond_0
    const/4 v2, 0x1

    .line 806
    :goto_0
    const/4 v3, -0x1

    .line 807
    .local v3, "logSensor":I
    packed-switch p2, :pswitch_data_0

    .line 815
    const/4 v3, 0x0

    goto :goto_1

    .line 809
    :pswitch_0
    const/4 v3, 0x2

    .line 810
    goto :goto_1

    .line 812
    :pswitch_1
    const/4 v3, 0x1

    .line 813
    nop

    .line 818
    :goto_1
    const/4 v4, -0x1

    .line 819
    .local v4, "logSource":I
    packed-switch p1, :pswitch_data_1

    .line 830
    const/4 v4, 0x0

    move v10, v4

    goto :goto_2

    .line 824
    :pswitch_2
    const/4 v4, 0x1

    .line 825
    move v10, v4

    goto :goto_2

    .line 827
    :pswitch_3
    const/4 v4, 0x2

    .line 828
    move v10, v4

    goto :goto_2

    .line 821
    :pswitch_4
    const/4 v4, 0x3

    .line 822
    move v10, v4

    .line 838
    .end local v4    # "logSource":I
    .local v10, "logSource":I
    :goto_2
    const/16 v4, 0x17d

    move v5, v3

    move v6, v2

    move v7, v10

    move-wide v8, v0

    invoke-static/range {v4 .. v9}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIIJ)V

    .line 840
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private onSensorUseStarted(ILjava/lang/String;I)V
    .locals 12
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "sensor"    # I

    .line 421
    invoke-static {p1}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v0

    .line 422
    .local v0, "user":Landroid/os/UserHandle;
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {p0, v1, p3}, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->isIndividualSensorPrivacyEnabled(II)Z

    move-result v1

    if-nez v1, :cond_0

    .line 423
    return-void

    .line 426
    :cond_0
    iget-object v1, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 427
    :try_start_0
    iget-object v2, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->mSuppressReminders:Landroid/util/ArrayMap;

    new-instance v3, Landroid/util/Pair;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 428
    invoke-static {}, Lcom/android/server/SensorPrivacyService;->access$600()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Suppressed sensor privacy reminder for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    monitor-exit v1

    return-void

    .line 432
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 434
    const/16 v1, 0x3e8

    const/4 v2, -0x1

    if-ne p1, v1, :cond_2

    .line 435
    invoke-direct {p0, v2, v0, p2, p3}, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->enqueueSensorUseReminderDialogAsync(ILandroid/os/UserHandle;Ljava/lang/String;I)V

    .line 436
    return-void

    .line 447
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 449
    .local v1, "tasksOfPackageUsingSensor":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    iget-object v3, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/SensorPrivacyService;

    invoke-static {v3}, Lcom/android/server/SensorPrivacyService;->access$700(Lcom/android/server/SensorPrivacyService;)Landroid/app/ActivityTaskManager;

    move-result-object v3

    const v4, 0x7fffffff

    invoke-virtual {v3, v4}, Landroid/app/ActivityTaskManager;->getTasks(I)Ljava/util/List;

    move-result-object v3

    .line 450
    .local v3, "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    .line 451
    .local v5, "numTasks":I
    const/4 v6, 0x0

    .local v6, "taskNum":I
    :goto_0
    if-ge v6, v5, :cond_6

    .line 452
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 454
    .local v7, "task":Landroid/app/ActivityManager$RunningTaskInfo;
    iget-boolean v8, v7, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible:Z

    if-eqz v8, :cond_5

    .line 455
    iget-object v8, v7, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 456
    iget-boolean v8, v7, Landroid/app/ActivityManager$RunningTaskInfo;->isFocused:Z

    if-eqz v8, :cond_3

    .line 458
    iget v2, v7, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-direct {p0, v2, v0, p2, p3}, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->enqueueSensorUseReminderDialogAsync(ILandroid/os/UserHandle;Ljava/lang/String;I)V

    .line 460
    return-void

    .line 463
    :cond_3
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 464
    :cond_4
    iget-object v8, v7, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/SensorPrivacyService;

    invoke-static {v9}, Lcom/android/server/SensorPrivacyService;->access$200(Lcom/android/server/SensorPrivacyService;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1040279

    .line 465
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 464
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    iget-boolean v8, v7, Landroid/app/ActivityManager$RunningTaskInfo;->isFocused:Z

    if-eqz v8, :cond_5

    .line 467
    iget v8, v7, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-direct {p0, v8, v0, p2, p3}, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->enqueueSensorUseReminderDialogAsync(ILandroid/os/UserHandle;Ljava/lang/String;I)V

    .line 451
    .end local v7    # "task":Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_5
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 475
    .end local v6    # "taskNum":I
    :cond_6
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_7

    .line 476
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    iget v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-direct {p0, v2, v0, p2, p3}, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->enqueueSensorUseReminderDialogAsync(ILandroid/os/UserHandle;Ljava/lang/String;I)V

    .line 478
    return-void

    .line 479
    :cond_7
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-le v6, v7, :cond_8

    .line 480
    invoke-direct {p0, v0, p2, p3}, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->showSensorUseReminderNotification(Landroid/os/UserHandle;Ljava/lang/String;I)V

    .line 481
    return-void

    .line 486
    :cond_8
    iget-object v6, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/SensorPrivacyService;

    invoke-static {v6}, Lcom/android/server/SensorPrivacyService;->access$800(Lcom/android/server/SensorPrivacyService;)Landroid/app/ActivityManager;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v4

    .line 488
    .local v4, "services":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    .line 489
    .local v6, "numServices":I
    const/4 v8, 0x0

    .local v8, "serviceNum":I
    :goto_2
    if-ge v8, v6, :cond_a

    .line 490
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 492
    .local v9, "service":Landroid/app/ActivityManager$RunningServiceInfo;
    iget-boolean v10, v9, Landroid/app/ActivityManager$RunningServiceInfo;->foreground:Z

    if-eqz v10, :cond_9

    iget-object v10, v9, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 493
    invoke-direct {p0, v0, p2, p3}, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->showSensorUseReminderNotification(Landroid/os/UserHandle;Ljava/lang/String;I)V

    .line 494
    return-void

    .line 489
    .end local v9    # "service":Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_9
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 498
    .end local v8    # "serviceNum":I
    :cond_a
    iget-object v8, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/SensorPrivacyService;

    invoke-static {v8}, Lcom/android/server/SensorPrivacyService;->access$200(Lcom/android/server/SensorPrivacyService;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "default_input_method"

    invoke-static {v8, v9}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 500
    .local v8, "inputMethodComponent":Ljava/lang/String;
    const/4 v9, 0x0

    .line 501
    .local v9, "inputMethodPackageName":Ljava/lang/String;
    if-eqz v8, :cond_b

    .line 502
    invoke-static {v8}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v10

    .line 503
    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 508
    :cond_b
    :try_start_1
    iget-object v10, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/SensorPrivacyService;

    invoke-static {v10}, Lcom/android/server/SensorPrivacyService;->access$900(Lcom/android/server/SensorPrivacyService;)Landroid/app/ActivityManagerInternal;

    move-result-object v10

    invoke-virtual {v10, p1}, Landroid/app/ActivityManagerInternal;->getUidCapability(I)I

    move-result v10
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 512
    .local v10, "capability":I
    nop

    .line 514
    if-ne p3, v7, :cond_d

    .line 515
    const-class v7, Landroid/service/voice/VoiceInteractionManagerInternal;

    .line 516
    invoke-static {v7}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/service/voice/VoiceInteractionManagerInternal;

    .line 517
    .local v7, "voiceInteractionManagerInternal":Landroid/service/voice/VoiceInteractionManagerInternal;
    if-eqz v7, :cond_c

    .line 518
    invoke-virtual {v7, p2}, Landroid/service/voice/VoiceInteractionManagerInternal;->hasActiveSession(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_c

    .line 519
    invoke-direct {p0, v2, v0, p2, p3}, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->enqueueSensorUseReminderDialogAsync(ILandroid/os/UserHandle;Ljava/lang/String;I)V

    .line 520
    return-void

    .line 523
    :cond_c
    invoke-static {p2, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_d

    and-int/lit8 v11, v10, 0x4

    if-eqz v11, :cond_d

    .line 525
    invoke-direct {p0, v2, v0, p2, p3}, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->enqueueSensorUseReminderDialogAsync(ILandroid/os/UserHandle;Ljava/lang/String;I)V

    .line 526
    return-void

    .line 530
    .end local v7    # "voiceInteractionManagerInternal":Landroid/service/voice/VoiceInteractionManagerInternal;
    :cond_d
    const/4 v7, 0x2

    if-ne p3, v7, :cond_e

    invoke-static {p2, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_e

    and-int/lit8 v7, v10, 0x2

    if-eqz v7, :cond_e

    .line 532
    invoke-direct {p0, v2, v0, p2, p3}, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->enqueueSensorUseReminderDialogAsync(ILandroid/os/UserHandle;Ljava/lang/String;I)V

    .line 533
    return-void

    .line 536
    :cond_e
    invoke-static {}, Lcom/android/server/SensorPrivacyService;->access$600()Ljava/lang/String;

    move-result-object v2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "/"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " started using sensor "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " but no activity or foreground service was running. The user will not be informed. System components should check if sensor privacy is enabled for the sensor before accessing it."

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    return-void

    .line 509
    .end local v10    # "capability":I
    :catch_0
    move-exception v2

    .line 510
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    invoke-static {}, Lcom/android/server/SensorPrivacyService;->access$600()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 511
    return-void

    .line 432
    .end local v1    # "tasksOfPackageUsingSensor":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    .end local v3    # "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v4    # "services":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    .end local v5    # "numTasks":I
    .end local v6    # "numServices":I
    .end local v8    # "inputMethodComponent":Ljava/lang/String;
    .end local v9    # "inputMethodPackageName":Ljava/lang/String;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method private persistSensorPrivacyState()V
    .locals 2

    .line 1075
    iget-object v0, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1076
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->persistSensorPrivacyStateLocked()V

    .line 1077
    monitor-exit v0

    .line 1078
    return-void

    .line 1077
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private persistSensorPrivacyStateLocked()V
    .locals 6

    .line 1081
    const-string/jumbo v0, "sensor-privacy"

    const/4 v1, 0x0

    .line 1083
    .local v1, "outputStream":Ljava/io/FileOutputStream;
    :try_start_0
    iget-object v2, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->mAtomicFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2

    move-object v1, v2

    .line 1084
    invoke-static {v1}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Landroid/util/TypedXmlSerializer;

    move-result-object v2

    .line 1085
    .local v2, "serializer":Landroid/util/TypedXmlSerializer;
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v2, v5, v4}, Landroid/util/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1086
    invoke-interface {v2, v5, v0}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1087
    const-string/jumbo v4, "persistence-version"

    invoke-interface {v2, v5, v4, v3}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 1089
    const-string/jumbo v4, "version"

    invoke-interface {v2, v5, v4, v3}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 1090
    iget-object v3, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/SensorPrivacyService;

    new-instance v4, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda3;

    invoke-direct {v4, p0, v2}, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;Landroid/util/TypedXmlSerializer;)V

    invoke-static {v3, v4}, Lcom/android/server/SensorPrivacyService;->access$1300(Lcom/android/server/SensorPrivacyService;Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;)V

    .line 1113
    invoke-interface {v2, v5, v0}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1114
    invoke-interface {v2}, Landroid/util/TypedXmlSerializer;->endDocument()V

    .line 1115
    iget-object v0, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->mAtomicFile:Landroid/util/AtomicFile;

    invoke-virtual {v0, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1119
    .end local v2    # "serializer":Landroid/util/TypedXmlSerializer;
    goto :goto_0

    .line 1116
    :catch_0
    move-exception v0

    .line 1117
    .local v0, "e":Ljava/io/IOException;
    invoke-static {}, Lcom/android/server/SensorPrivacyService;->access$600()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Caught an exception persisting the sensor privacy state: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1118
    iget-object v2, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->mAtomicFile:Landroid/util/AtomicFile;

    invoke-virtual {v2, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 1120
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method

.method private readPersistedSensorPrivacyStateLocked()Z
    .locals 20

    .line 919
    move-object/from16 v1, p0

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    move-object v2, v0

    .line 920
    .local v2, "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Object;>;"
    const/4 v3, -0x1

    .line 922
    .local v3, "version":I
    iget-object v0, v1, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->mAtomicFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->exists()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 923
    :try_start_0
    iget-object v0, v1, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->mAtomicFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v0

    .line 924
    .local v4, "inputStream":Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {v4}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Landroid/util/TypedXmlPullParser;

    move-result-object v0

    .line 925
    .local v0, "parser":Landroid/util/TypedXmlPullParser;
    const-string/jumbo v5, "sensor-privacy"

    invoke-static {v0, v5}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 926
    const-string/jumbo v5, "persistence-version"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface {v0, v7, v5, v6}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 931
    .local v5, "persistenceVersion":I
    const-string/jumbo v8, "sensor"

    const-string v9, "individual-sensor-privacy"

    const-string v10, "enabled"

    const/4 v11, 0x1

    if-nez v5, :cond_2

    .line 932
    :try_start_2
    invoke-interface {v0, v7, v10, v6}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v7

    .line 933
    .local v7, "enabled":Z
    new-instance v12, Landroid/util/SparseArray;

    invoke-direct {v12}, Landroid/util/SparseArray;-><init>()V

    .line 934
    .local v12, "individualEnabled":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl$SensorState;>;"
    const/4 v3, 0x0

    .line 936
    invoke-static {v0}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 937
    :goto_0
    invoke-interface {v0}, Landroid/util/TypedXmlPullParser;->getEventType()I

    move-result v13

    if-eq v13, v11, :cond_1

    .line 938
    invoke-interface {v0}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v13

    .line 939
    .local v13, "tagName":Ljava/lang/String;
    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 940
    invoke-static {v0, v8}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v14

    .line 941
    .local v14, "sensor":I
    invoke-static {v0, v10}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v15

    .line 943
    .local v15, "indEnabled":Z
    new-instance v11, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl$SensorState;

    invoke-direct {v11, v1, v15}, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl$SensorState;-><init>(Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;Z)V

    invoke-virtual {v12, v14, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 944
    invoke-static {v0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 945
    .end local v14    # "sensor":I
    .end local v15    # "indEnabled":Z
    goto :goto_1

    .line 946
    :cond_0
    invoke-static {v0}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 948
    .end local v13    # "tagName":Ljava/lang/String;
    :goto_1
    const/4 v11, 0x1

    goto :goto_0

    .line 949
    :cond_1
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v2, v6, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 950
    const/4 v6, 0x1

    invoke-virtual {v2, v6, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 951
    .end local v7    # "enabled":Z
    .end local v12    # "individualEnabled":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl$SensorState;>;"
    goto/16 :goto_6

    :cond_2
    const/4 v11, 0x1

    if-ne v5, v11, :cond_9

    .line 952
    new-instance v11, Landroid/util/SparseBooleanArray;

    invoke-direct {v11}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 953
    .local v11, "enabled":Landroid/util/SparseBooleanArray;
    new-instance v12, Landroid/util/SparseArray;

    invoke-direct {v12}, Landroid/util/SparseArray;-><init>()V

    .line 955
    .local v12, "individualEnabled":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl$SensorState;>;>;"
    const-string/jumbo v13, "version"

    const/4 v14, 0x1

    invoke-interface {v0, v7, v13, v14}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move v3, v13

    .line 958
    const/4 v13, -0x1

    .line 959
    .local v13, "currentUserId":I
    :goto_2
    :try_start_3
    invoke-interface {v0}, Landroid/util/TypedXmlPullParser;->getEventType()I

    move-result v14

    const/4 v15, 0x1

    if-eq v14, v15, :cond_8

    .line 960
    invoke-static {v0}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 961
    invoke-interface {v0}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v14

    .line 962
    .local v14, "tagName":Ljava/lang/String;
    const-string/jumbo v15, "user"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v15, :cond_5

    .line 963
    :try_start_4
    const-string v15, "id"

    invoke-interface {v0, v7, v15}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v15

    move v13, v15

    .line 964
    invoke-interface {v0, v7, v10}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v15

    .line 966
    .local v15, "isEnabled":Z
    invoke-virtual {v11, v13}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v16

    if-ltz v16, :cond_3

    .line 967
    invoke-static {}, Lcom/android/server/SensorPrivacyService;->access$600()Ljava/lang/String;

    move-result-object v7

    const-string v8, "User listed multiple times in file."

    new-instance v9, Ljava/lang/RuntimeException;

    invoke-direct {v9}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {v7, v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 969
    iget-object v7, v1, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->mAtomicFile:Landroid/util/AtomicFile;

    invoke-virtual {v7}, Landroid/util/AtomicFile;->delete()V

    .line 970
    const/4 v3, -0x1

    .line 971
    goto/16 :goto_5

    .line 974
    :cond_3
    iget-object v6, v1, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/SensorPrivacyService;

    invoke-static {v6}, Lcom/android/server/SensorPrivacyService;->access$500(Lcom/android/server/SensorPrivacyService;)Lcom/android/server/pm/UserManagerInternal;

    move-result-object v6

    invoke-virtual {v6, v13}, Lcom/android/server/pm/UserManagerInternal;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v6

    if-nez v6, :cond_4

    .line 976
    const/4 v13, -0x1

    .line 977
    const/4 v6, 0x0

    goto :goto_2

    .line 980
    :cond_4
    invoke-virtual {v11, v13, v15}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 982
    .end local v15    # "isEnabled":Z
    :cond_5
    :try_start_5
    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 983
    iget-object v6, v1, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/SensorPrivacyService;

    invoke-static {v6}, Lcom/android/server/SensorPrivacyService;->access$500(Lcom/android/server/SensorPrivacyService;)Lcom/android/server/pm/UserManagerInternal;

    move-result-object v6

    invoke-virtual {v6, v13}, Lcom/android/server/pm/UserManagerInternal;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v6

    if-nez v6, :cond_6

    .line 985
    move/from16 v19, v3

    move-object/from16 v17, v8

    move-object/from16 v18, v9

    goto :goto_4

    .line 987
    :cond_6
    invoke-interface {v0, v7, v8}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 988
    .local v6, "sensor":I
    invoke-interface {v0, v7, v10}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v15

    .line 990
    .restart local v15    # "isEnabled":Z
    const-string/jumbo v7, "last-change"
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-object/from16 v17, v8

    move-object/from16 v18, v9

    const-wide/16 v8, -0x1

    .line 991
    move/from16 v19, v3

    const/4 v3, 0x0

    .end local v3    # "version":I
    .local v19, "version":I
    :try_start_6
    invoke-interface {v0, v3, v7, v8, v9}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v7

    .line 992
    .local v7, "lastChange":J
    new-instance v9, Landroid/util/SparseArray;

    invoke-direct {v9}, Landroid/util/SparseArray;-><init>()V

    .line 993
    invoke-virtual {v12, v13, v9}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/SparseArray;

    .line 995
    .local v9, "userIndividualEnabled":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl$SensorState;>;"
    new-instance v3, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl$SensorState;

    invoke-direct {v3, v1, v15, v7, v8}, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl$SensorState;-><init>(Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;ZJ)V

    .line 996
    invoke-virtual {v9, v6, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 997
    invoke-virtual {v12, v13, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_3

    .line 923
    .end local v0    # "parser":Landroid/util/TypedXmlPullParser;
    .end local v5    # "persistenceVersion":I
    .end local v6    # "sensor":I
    .end local v7    # "lastChange":J
    .end local v9    # "userIndividualEnabled":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl$SensorState;>;"
    .end local v11    # "enabled":Landroid/util/SparseBooleanArray;
    .end local v12    # "individualEnabled":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl$SensorState;>;>;"
    .end local v13    # "currentUserId":I
    .end local v14    # "tagName":Ljava/lang/String;
    .end local v15    # "isEnabled":Z
    :catchall_0
    move-exception v0

    move-object v5, v0

    move/from16 v3, v19

    goto :goto_7

    .line 982
    .end local v19    # "version":I
    .restart local v0    # "parser":Landroid/util/TypedXmlPullParser;
    .restart local v3    # "version":I
    .restart local v5    # "persistenceVersion":I
    .restart local v11    # "enabled":Landroid/util/SparseBooleanArray;
    .restart local v12    # "individualEnabled":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl$SensorState;>;>;"
    .restart local v13    # "currentUserId":I
    .restart local v14    # "tagName":Ljava/lang/String;
    :cond_7
    move/from16 v19, v3

    move-object/from16 v17, v8

    move-object/from16 v18, v9

    .line 999
    .end local v3    # "version":I
    .end local v14    # "tagName":Ljava/lang/String;
    .restart local v19    # "version":I
    :goto_3
    nop

    .line 959
    :goto_4
    move-object/from16 v8, v17

    move-object/from16 v9, v18

    move/from16 v3, v19

    const/4 v6, 0x0

    const/4 v7, 0x0

    goto/16 :goto_2

    .end local v19    # "version":I
    .restart local v3    # "version":I
    :cond_8
    move/from16 v19, v3

    .line 1001
    :goto_5
    const/4 v6, 0x0

    :try_start_7
    invoke-virtual {v2, v6, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1002
    const/4 v6, 0x1

    invoke-virtual {v2, v6, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1003
    .end local v11    # "enabled":Landroid/util/SparseBooleanArray;
    .end local v12    # "individualEnabled":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl$SensorState;>;>;"
    .end local v13    # "currentUserId":I
    goto :goto_6

    .line 923
    .end local v0    # "parser":Landroid/util/TypedXmlPullParser;
    .end local v5    # "persistenceVersion":I
    :catchall_1
    move-exception v0

    move/from16 v19, v3

    move-object v5, v0

    .end local v3    # "version":I
    .restart local v19    # "version":I
    goto :goto_7

    .line 1004
    .end local v19    # "version":I
    .restart local v0    # "parser":Landroid/util/TypedXmlPullParser;
    .restart local v3    # "version":I
    .restart local v5    # "persistenceVersion":I
    :cond_9
    invoke-static {}, Lcom/android/server/SensorPrivacyService;->access$600()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown persistence version: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ". Deleting."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/RuntimeException;

    invoke-direct {v8}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {v6, v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1007
    iget-object v6, v1, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->mAtomicFile:Landroid/util/AtomicFile;

    invoke-virtual {v6}, Landroid/util/AtomicFile;->delete()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 1008
    const/4 v3, -0x1

    .line 1011
    .end local v0    # "parser":Landroid/util/TypedXmlPullParser;
    .end local v5    # "persistenceVersion":I
    :goto_6
    if-eqz v4, :cond_a

    :try_start_8
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_0

    .line 1017
    .end local v4    # "inputStream":Ljava/io/FileInputStream;
    :cond_a
    goto :goto_9

    .line 923
    .restart local v4    # "inputStream":Ljava/io/FileInputStream;
    :catchall_2
    move-exception v0

    move-object v5, v0

    :goto_7
    if-eqz v4, :cond_b

    :try_start_9
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_8

    :catchall_3
    move-exception v0

    move-object v6, v0

    :try_start_a
    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v2    # "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Object;>;"
    .end local v3    # "version":I
    .end local p0    # "this":Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;
    :cond_b
    :goto_8
    throw v5
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_a} :catch_0

    .line 1011
    .end local v4    # "inputStream":Ljava/io/FileInputStream;
    .restart local v2    # "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Object;>;"
    .restart local v3    # "version":I
    .restart local p0    # "this":Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;
    :catch_0
    move-exception v0

    .line 1012
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/server/SensorPrivacyService;->access$600()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Caught an exception reading the state from storage: "

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1015
    iget-object v4, v1, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->mAtomicFile:Landroid/util/AtomicFile;

    invoke-virtual {v4}, Landroid/util/AtomicFile;->delete()V

    .line 1016
    const/4 v3, -0x1

    .line 1020
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_c
    :goto_9
    invoke-direct {v1, v3, v2}, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->upgradeAndInit(ILandroid/util/SparseArray;)Z

    move-result v0

    return v0
.end method

.method private removeSuppressPackageReminderToken(Landroid/util/Pair;Landroid/os/IBinder;)V
    .locals 6
    .param p2, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Landroid/os/UserHandle;",
            ">;",
            "Landroid/os/IBinder;",
            ")V"
        }
    .end annotation

    .line 1220
    .local p1, "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/os/UserHandle;>;"
    iget-object v0, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1221
    :try_start_0
    iget-object v1, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->mSuppressReminders:Landroid/util/ArrayMap;

    .line 1222
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 1223
    .local v1, "suppressPackageReminderTokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    if-nez v1, :cond_0

    .line 1224
    invoke-static {}, Lcom/android/server/SensorPrivacyService;->access$600()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No tokens for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1225
    monitor-exit v0

    return-void

    .line 1228
    :cond_0
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    .line 1229
    .local v2, "wasRemoved":Z
    if-eqz v2, :cond_1

    .line 1230
    const/4 v3, 0x0

    invoke-interface {p2, p0, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1232
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1233
    iget-object v3, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->mSuppressReminders:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1236
    :cond_1
    invoke-static {}, Lcom/android/server/SensorPrivacyService;->access$600()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not remove sensor use reminder suppression token "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1239
    .end local v1    # "suppressPackageReminderTokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    .end local v2    # "wasRemoved":Z
    :cond_2
    :goto_0
    monitor-exit v0

    .line 1240
    return-void

    .line 1239
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private sensorStrToId(Ljava/lang/String;)I
    .locals 4
    .param p1, "sensor"    # Ljava/lang/String;

    .line 1344
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1345
    return v0

    .line 1348
    :cond_0
    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x1

    sparse-switch v2, :sswitch_data_0

    :cond_1
    goto :goto_0

    :sswitch_0
    const-string/jumbo v2, "microphone"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v1, v0

    goto :goto_0

    :sswitch_1
    const-string v2, "camera"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v1, v3

    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 1354
    return v0

    .line 1352
    :pswitch_0
    const/4 v0, 0x2

    return v0

    .line 1350
    :pswitch_1
    return v3

    nop

    :sswitch_data_0
    .sparse-switch
        -0x51863cdb -> :sswitch_1
        0x51b6992a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setIndividualSensorPrivacyUnchecked(IIIZ)V
    .locals 11
    .param p1, "userId"    # I
    .param p2, "source"    # I
    .param p3, "sensor"    # I
    .param p4, "enable"    # Z

    .line 730
    iget-object v0, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 731
    :try_start_0
    iget-object v1, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->mIndividualEnabled:Landroid/util/SparseArray;

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    .line 733
    .local v1, "userIndividualEnabled":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl$SensorState;>;"
    invoke-virtual {v1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl$SensorState;

    .line 735
    .local v2, "sensorState":Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl$SensorState;
    if-eqz v2, :cond_1

    .line 736
    invoke-static {v2}, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl$SensorState;->access$1400(Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl$SensorState;)J

    move-result-wide v3

    .line 737
    .local v3, "lastChange":J
    invoke-virtual {v2, p4}, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl$SensorState;->setEnabled(Z)Z

    move-result v5

    if-nez v5, :cond_0

    .line 739
    monitor-exit v0

    return-void

    .line 737
    :cond_0
    move-wide v9, v3

    goto :goto_0

    .line 742
    .end local v3    # "lastChange":J
    :cond_1
    new-instance v3, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl$SensorState;

    invoke-direct {v3, p0, p4}, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl$SensorState;-><init>(Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;Z)V

    move-object v2, v3

    .line 743
    invoke-static {v2}, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl$SensorState;->access$1400(Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl$SensorState;)J

    move-result-wide v3

    .line 744
    .restart local v3    # "lastChange":J
    invoke-virtual {v1, p3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-wide v9, v3

    .line 746
    .end local v3    # "lastChange":J
    .local v9, "lastChange":J
    :goto_0
    iget-object v3, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->mIndividualEnabled:Landroid/util/SparseArray;

    invoke-virtual {v3, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 748
    iget-object v3, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/SensorPrivacyService;

    invoke-static {v3}, Lcom/android/server/SensorPrivacyService;->access$500(Lcom/android/server/SensorPrivacyService;)Lcom/android/server/pm/UserManagerInternal;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/server/pm/UserManagerInternal;->getProfileParentId(I)I

    move-result v3

    if-ne p1, v3, :cond_2

    .line 749
    invoke-static {v2}, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl$SensorState;->access$1500(Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl$SensorState;)Z

    move-result v6

    move-object v3, p0

    move v4, p2

    move v5, p3

    move-wide v7, v9

    invoke-direct/range {v3 .. v8}, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->logSensorPrivacyToggle(IIZJ)V

    .line 752
    :cond_2
    if-nez p4, :cond_3

    .line 753
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 756
    .local v3, "token":J
    :try_start_1
    iget-object v5, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/SensorPrivacyService;

    .line 757
    invoke-static {v5}, Lcom/android/server/SensorPrivacyService;->access$200(Lcom/android/server/SensorPrivacyService;)Landroid/content/Context;

    move-result-object v5

    const-class v6, Landroid/app/NotificationManager;

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationManager;

    .line 759
    .local v5, "notificationManager":Landroid/app/NotificationManager;
    invoke-virtual {v5, p3}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 761
    .end local v5    # "notificationManager":Landroid/app/NotificationManager;
    :try_start_2
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 762
    goto :goto_1

    .line 761
    :catchall_0
    move-exception v5

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 762
    nop

    .end local p0    # "this":Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;
    .end local p1    # "userId":I
    .end local p2    # "source":I
    .end local p3    # "sensor":I
    .end local p4    # "enable":Z
    throw v5

    .line 764
    .end local v3    # "token":J
    .restart local p0    # "this":Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;
    .restart local p1    # "userId":I
    .restart local p2    # "source":I
    .restart local p3    # "sensor":I
    .restart local p4    # "enable":Z
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->persistSensorPrivacyState()V

    .line 765
    .end local v1    # "userIndividualEnabled":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl$SensorState;>;"
    .end local v2    # "sensorState":Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl$SensorState;
    .end local v9    # "lastChange":J
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 766
    iget-object v0, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->mHandler:Lcom/android/server/SensorPrivacyService$SensorPrivacyHandler;

    invoke-virtual {v0, p1, p3, p4}, Lcom/android/server/SensorPrivacyService$SensorPrivacyHandler;->onSensorPrivacyChanged(IIZ)V

    .line 767
    return-void

    .line 765
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method private setSensorPrivacy(IZ)V
    .locals 2
    .param p1, "userId"    # I
    .param p2, "enable"    # Z

    .line 710
    iget-object v0, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 711
    :try_start_0
    iget-object v1, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->mEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 712
    invoke-direct {p0}, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->persistSensorPrivacyStateLocked()V

    .line 713
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 714
    iget-object v0, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->mHandler:Lcom/android/server/SensorPrivacyService$SensorPrivacyHandler;

    invoke-virtual {v0, p2}, Lcom/android/server/SensorPrivacyService$SensorPrivacyHandler;->onSensorPrivacyChanged(Z)V

    .line 715
    return-void

    .line 713
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private showSensorUseReminderNotification(Landroid/os/UserHandle;Ljava/lang/String;I)V
    .locals 17
    .param p1, "user"    # Landroid/os/UserHandle;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "sensor"    # I

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    .line 631
    :try_start_0
    iget-object v0, v1, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/SensorPrivacyService;

    invoke-virtual {v0}, Lcom/android/server/SensorPrivacyService;->getUiContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 632
    const/4 v5, 0x0

    invoke-virtual {v0, v3, v5, v2}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v6, v1, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/SensorPrivacyService;

    .line 633
    invoke-static {v6}, Lcom/android/server/SensorPrivacyService;->access$200(Lcom/android/server/SensorPrivacyService;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 637
    .local v0, "packageLabel":Ljava/lang/CharSequence;
    nop

    .line 639
    const/4 v6, 0x1

    if-ne v4, v6, :cond_0

    .line 640
    const v7, 0x10804ec

    .line 641
    .local v7, "iconRes":I
    const v8, 0x10407c6

    .line 642
    .local v8, "messageRes":I
    const/16 v9, 0x41

    .local v9, "notificationId":I
    goto :goto_0

    .line 644
    .end local v7    # "iconRes":I
    .end local v8    # "messageRes":I
    .end local v9    # "notificationId":I
    :cond_0
    const v7, 0x1080351

    .line 645
    .restart local v7    # "iconRes":I
    const v8, 0x10407c4

    .line 646
    .restart local v8    # "messageRes":I
    const/16 v9, 0x42

    .line 649
    .restart local v9    # "notificationId":I
    :goto_0
    iget-object v10, v1, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/SensorPrivacyService;

    .line 650
    invoke-static {v10}, Lcom/android/server/SensorPrivacyService;->access$200(Lcom/android/server/SensorPrivacyService;)Landroid/content/Context;

    move-result-object v10

    const-class v11, Landroid/app/NotificationManager;

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/NotificationManager;

    .line 651
    .local v10, "notificationManager":Landroid/app/NotificationManager;
    new-instance v11, Landroid/app/NotificationChannel;

    iget-object v12, v1, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/SensorPrivacyService;

    .line 653
    invoke-virtual {v12}, Lcom/android/server/SensorPrivacyService;->getUiContext()Landroid/content/Context;

    move-result-object v12

    const v13, 0x10407c3

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x4

    const-string/jumbo v14, "sensor_privacy"

    invoke-direct {v11, v14, v12, v13}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 655
    .local v11, "channel":Landroid/app/NotificationChannel;
    const/4 v12, 0x0

    invoke-virtual {v11, v12, v12}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    .line 656
    invoke-virtual {v11, v6}, Landroid/app/NotificationChannel;->setBypassDnd(Z)V

    .line 657
    invoke-virtual {v11, v5}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    .line 658
    invoke-virtual {v11, v5}, Landroid/app/NotificationChannel;->setBlockable(Z)V

    .line 660
    invoke-virtual {v10, v11}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 662
    iget-object v12, v1, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/SensorPrivacyService;

    invoke-virtual {v12}, Lcom/android/server/SensorPrivacyService;->getUiContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-static {v12, v7}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Icon;

    move-result-object v12

    .line 663
    .local v12, "icon":Landroid/graphics/drawable/Icon;
    new-instance v13, Landroid/app/Notification$Builder;

    iget-object v15, v1, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/SensorPrivacyService;

    .line 664
    invoke-static {v15}, Lcom/android/server/SensorPrivacyService;->access$200(Lcom/android/server/SensorPrivacyService;)Landroid/content/Context;

    move-result-object v15

    invoke-direct {v13, v15, v14}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v14, v1, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/SensorPrivacyService;

    .line 665
    invoke-virtual {v14}, Lcom/android/server/SensorPrivacyService;->getUiContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v13

    iget-object v14, v1, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/SensorPrivacyService;

    .line 666
    invoke-virtual {v14}, Lcom/android/server/SensorPrivacyService;->getUiContext()Landroid/content/Context;

    move-result-object v14

    const v15, 0x10407c7

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v0, v6, v5

    invoke-virtual {v14, v15, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v5}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v5

    invoke-virtual {v13, v5}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 669
    invoke-virtual {v5, v12}, Landroid/app/Notification$Builder;->setSmallIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;

    move-result-object v5

    new-instance v6, Landroid/app/Notification$Action$Builder;

    iget-object v13, v1, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/SensorPrivacyService;

    .line 671
    invoke-virtual {v13}, Lcom/android/server/SensorPrivacyService;->getUiContext()Landroid/content/Context;

    move-result-object v13

    const v14, 0x10407c5

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    iget-object v14, v1, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/SensorPrivacyService;

    .line 673
    invoke-static {v14}, Lcom/android/server/SensorPrivacyService;->access$200(Lcom/android/server/SensorPrivacyService;)Landroid/content/Context;

    move-result-object v14

    new-instance v15, Landroid/content/Intent;

    .line 674
    move-object/from16 v16, v0

    .end local v0    # "packageLabel":Ljava/lang/CharSequence;
    .local v16, "packageLabel":Ljava/lang/CharSequence;
    invoke-static {}, Lcom/android/server/SensorPrivacyService;->access$400()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v15, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/SensorPrivacyService;

    .line 675
    invoke-static {v0}, Lcom/android/server/SensorPrivacyService;->access$200(Lcom/android/server/SensorPrivacyService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    sget-object v15, Landroid/hardware/SensorPrivacyManager;->EXTRA_SENSOR:Ljava/lang/String;

    .line 676
    invoke-virtual {v0, v15, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 677
    const-string v15, "android.intent.extra.USER"

    invoke-virtual {v0, v15, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    .line 673
    const/high16 v15, 0xc000000

    invoke-static {v14, v4, v0, v15}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-direct {v6, v12, v13, v0}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 680
    invoke-virtual {v6}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v0

    .line 670
    invoke-virtual {v5, v0}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v5, v1, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/SensorPrivacyService;

    .line 681
    invoke-static {v5}, Lcom/android/server/SensorPrivacyService;->access$200(Lcom/android/server/SensorPrivacyService;)Landroid/content/Context;

    move-result-object v5

    new-instance v6, Landroid/content/Intent;

    const-string v13, "android.settings.PRIVACY_SETTINGS"

    invoke-direct {v6, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v5, v4, v6, v15}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    new-instance v5, Landroid/app/Notification$TvExtender;

    invoke-direct {v5}, Landroid/app/Notification$TvExtender;-><init>()V

    .line 685
    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->extend(Landroid/app/Notification$Extender;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 686
    iget-object v5, v1, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/SensorPrivacyService;

    invoke-static {v5}, Lcom/android/server/SensorPrivacyService;->access$200(Lcom/android/server/SensorPrivacyService;)Landroid/content/Context;

    move-result-object v5

    invoke-direct {v1, v5}, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->isTelevision(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 687
    const-wide/16 v5, 0x1

    goto :goto_1

    .line 688
    :cond_1
    const-wide/16 v5, 0x0

    .line 686
    :goto_1
    invoke-virtual {v0, v5, v6}, Landroid/app/Notification$Builder;->setTimeoutAfter(J)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 689
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 663
    invoke-virtual {v10, v9, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 690
    return-void

    .line 634
    .end local v7    # "iconRes":I
    .end local v8    # "messageRes":I
    .end local v9    # "notificationId":I
    .end local v10    # "notificationManager":Landroid/app/NotificationManager;
    .end local v11    # "channel":Landroid/app/NotificationChannel;
    .end local v12    # "icon":Landroid/graphics/drawable/Icon;
    .end local v16    # "packageLabel":Ljava/lang/CharSequence;
    :catch_0
    move-exception v0

    .line 635
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-static {}, Lcom/android/server/SensorPrivacyService;->access$600()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot show sensor use notification for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    return-void
.end method

.method private showSensorUserReminderDialog(Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl$SensorUseReminderDialogInfo;)V
    .locals 6
    .param p1, "info"    # Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl$SensorUseReminderDialogInfo;

    .line 582
    iget-object v0, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->mQueuedSensorUseReminderDialogs:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    .line 583
    .local v0, "sensors":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->mQueuedSensorUseReminderDialogs:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 584
    if-nez v0, :cond_0

    .line 585
    invoke-static {}, Lcom/android/server/SensorPrivacyService;->access$600()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Unable to show sensor use dialog because sensor set is null. Was the dialog queue modified from outside the handler thread?"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    return-void

    .line 589
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 590
    .local v1, "dialogIntent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/SensorPrivacyService;

    .line 591
    invoke-static {v2}, Lcom/android/server/SensorPrivacyService;->access$200(Lcom/android/server/SensorPrivacyService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1040279

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 590
    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 594
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v2

    .line 595
    .local v2, "options":Landroid/app/ActivityOptions;
    invoke-static {p1}, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl$SensorUseReminderDialogInfo;->access$1000(Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl$SensorUseReminderDialogInfo;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/ActivityOptions;->setLaunchTaskId(I)V

    .line 596
    const/4 v3, 0x1

    invoke-virtual {v2, v3, v3}, Landroid/app/ActivityOptions;->setTaskOverlay(ZZ)V

    .line 598
    const/high16 v4, 0x840000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 601
    invoke-static {p1}, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl$SensorUseReminderDialogInfo;->access$1100(Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl$SensorUseReminderDialogInfo;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 602
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v4

    if-ne v4, v3, :cond_1

    .line 603
    sget-object v3, Landroid/hardware/SensorPrivacyManager;->EXTRA_SENSOR:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/Serializable;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_0

    .line 604
    :cond_1
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 605
    sget-object v4, Landroid/hardware/SensorPrivacyManager;->EXTRA_ALL_SENSORS:Ljava/lang/String;

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 612
    :goto_0
    iget-object v3, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/SensorPrivacyService;

    invoke-static {v3}, Lcom/android/server/SensorPrivacyService;->access$200(Lcom/android/server/SensorPrivacyService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v4

    invoke-static {p1}, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl$SensorUseReminderDialogInfo;->access$1200(Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl$SensorUseReminderDialogInfo;)Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {v3, v1, v4, v5}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 613
    return-void

    .line 608
    :cond_2
    invoke-static {}, Lcom/android/server/SensorPrivacyService;->access$600()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Attempted to show sensor use dialog for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " sensors"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    return-void
.end method

.method private upgradeAndInit(ILandroid/util/SparseArray;)Z
    .locals 16
    .param p1, "version"    # I
    .param p2, "map"    # Landroid/util/SparseArray;

    .line 1024
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x1

    const/4 v4, -0x1

    if-ne v1, v4, :cond_0

    .line 1026
    new-instance v4, Landroid/util/SparseBooleanArray;

    invoke-direct {v4}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v4, v0, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->mEnabled:Landroid/util/SparseBooleanArray;

    .line 1027
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    iput-object v4, v0, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->mIndividualEnabled:Landroid/util/SparseArray;

    .line 1028
    iget-object v4, v0, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/SensorPrivacyService;

    new-instance v5, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda0;

    invoke-direct {v5, v0}, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;)V

    invoke-static {v4, v5}, Lcom/android/server/SensorPrivacyService;->access$1300(Lcom/android/server/SensorPrivacyService;Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;)V

    .line 1029
    iget-object v4, v0, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/SensorPrivacyService;

    new-instance v5, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda1;

    invoke-direct {v5, v0}, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;)V

    invoke-static {v4, v5}, Lcom/android/server/SensorPrivacyService;->access$1300(Lcom/android/server/SensorPrivacyService;Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;)V

    .line 1030
    return v3

    .line 1032
    :cond_0
    const/4 v4, 0x0

    .line 1033
    .local v4, "upgraded":Z
    iget-object v5, v0, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/SensorPrivacyService;

    const-class v6, Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v5, v6}, Lcom/android/server/SensorPrivacyService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v5}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    move-result-object v5

    .line 1034
    .local v5, "users":[I
    const/4 v6, 0x0

    if-nez v1, :cond_3

    .line 1035
    invoke-virtual {v2, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    .line 1036
    .local v7, "enabled":Z
    nop

    .line 1037
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/SparseBooleanArray;

    .line 1039
    .local v8, "individualEnabled":Landroid/util/SparseBooleanArray;
    new-instance v9, Landroid/util/SparseBooleanArray;

    invoke-direct {v9}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 1040
    .local v9, "perUserEnabled":Landroid/util/SparseBooleanArray;
    new-instance v10, Landroid/util/SparseArray;

    invoke-direct {v10}, Landroid/util/SparseArray;-><init>()V

    .line 1044
    .local v10, "perUserIndividualEnabled":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseBooleanArray;>;"
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    array-length v12, v5

    if-ge v11, v12, :cond_2

    .line 1045
    aget v12, v5, v11

    .line 1046
    .local v12, "user":I
    invoke-virtual {v9, v12, v7}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1047
    new-instance v13, Landroid/util/SparseBooleanArray;

    invoke-direct {v13}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 1048
    .local v13, "userIndividualSensorEnabled":Landroid/util/SparseBooleanArray;
    invoke-virtual {v10, v12, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1049
    const/4 v14, 0x0

    .local v14, "j":I
    :goto_1
    invoke-virtual {v8}, Landroid/util/SparseBooleanArray;->size()I

    move-result v15

    if-ge v14, v15, :cond_1

    .line 1050
    invoke-virtual {v8, v14}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v15

    .line 1051
    .local v15, "sensor":I
    invoke-virtual {v8, v14}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v3

    .line 1052
    .local v3, "isSensorEnabled":Z
    invoke-virtual {v13, v15, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1049
    .end local v3    # "isSensorEnabled":Z
    .end local v15    # "sensor":I
    add-int/lit8 v14, v14, 0x1

    const/4 v3, 0x1

    goto :goto_1

    .line 1044
    .end local v12    # "user":I
    .end local v13    # "userIndividualSensorEnabled":Landroid/util/SparseBooleanArray;
    .end local v14    # "j":I
    :cond_1
    add-int/lit8 v11, v11, 0x1

    const/4 v3, 0x1

    goto :goto_0

    .line 1056
    .end local v11    # "i":I
    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/util/SparseArray;->clear()V

    .line 1057
    invoke-virtual {v2, v6, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1058
    const/4 v3, 0x1

    invoke-virtual {v2, v3, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1060
    const/4 v1, 0x1

    .line 1061
    .end local p1    # "version":I
    .local v1, "version":I
    const/4 v4, 0x1

    .line 1063
    .end local v7    # "enabled":Z
    .end local v8    # "individualEnabled":Landroid/util/SparseBooleanArray;
    .end local v9    # "perUserEnabled":Landroid/util/SparseBooleanArray;
    .end local v10    # "perUserIndividualEnabled":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseBooleanArray;>;"
    :cond_3
    if-ne v1, v3, :cond_4

    .line 1064
    invoke-virtual {v2, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/SparseBooleanArray;

    iput-object v6, v0, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->mEnabled:Landroid/util/SparseBooleanArray;

    .line 1065
    nop

    .line 1066
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseArray;

    iput-object v3, v0, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->mIndividualEnabled:Landroid/util/SparseArray;

    .line 1068
    :cond_4
    return v4
.end method


# virtual methods
.method public addIndividualSensorPrivacyListener(IILandroid/hardware/ISensorPrivacyListener;)V
    .locals 2
    .param p1, "userId"    # I
    .param p2, "sensor"    # I
    .param p3, "listener"    # Landroid/hardware/ISensorPrivacyListener;

    .line 1150
    invoke-direct {p0}, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->enforceObserveSensorPrivacyPermission()V

    .line 1151
    if-eqz p3, :cond_0

    .line 1154
    iget-object v0, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->mHandler:Lcom/android/server/SensorPrivacyService$SensorPrivacyHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/SensorPrivacyService$SensorPrivacyHandler;->addListener(IILandroid/hardware/ISensorPrivacyListener;)V

    .line 1155
    return-void

    .line 1152
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "listener cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addSensorPrivacyListener(Landroid/hardware/ISensorPrivacyListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/hardware/ISensorPrivacyListener;

    .line 1137
    invoke-direct {p0}, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->enforceObserveSensorPrivacyPermission()V

    .line 1138
    if-eqz p1, :cond_0

    .line 1141
    iget-object v0, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->mHandler:Lcom/android/server/SensorPrivacyService$SensorPrivacyHandler;

    invoke-virtual {v0, p1}, Lcom/android/server/SensorPrivacyService$SensorPrivacyHandler;->addListener(Landroid/hardware/ISensorPrivacyListener;)V

    .line 1142
    return-void

    .line 1139
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "listener cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public binderDied()V
    .locals 0

    .line 1259
    return-void
.end method

.method public binderDied(Landroid/os/IBinder;)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;

    .line 1249
    iget-object v0, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1250
    :try_start_0
    iget-object v1, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->mSuppressReminders:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 1251
    .local v2, "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/os/UserHandle;>;"
    invoke-direct {p0, v2, p1}, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->removeSuppressPackageReminderToken(Landroid/util/Pair;Landroid/os/IBinder;)V

    .line 1252
    .end local v2    # "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/os/UserHandle;>;"
    goto :goto_0

    .line 1253
    :cond_0
    monitor-exit v0

    .line 1254
    return-void

    .line 1253
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 1263
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1265
    iget-object v0, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/SensorPrivacyService;

    invoke-static {v0}, Lcom/android/server/SensorPrivacyService;->access$200(Lcom/android/server/SensorPrivacyService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/android/server/SensorPrivacyService;->access$600()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1267
    :cond_0
    const/4 v0, 0x0

    .line 1268
    .local v0, "opti":I
    const/4 v1, 0x0

    .line 1269
    .local v1, "dumpAsProto":Z
    :goto_0
    array-length v2, p3

    if-ge v0, v2, :cond_3

    .line 1270
    aget-object v2, p3, v0

    .line 1271
    .local v2, "opt":Ljava/lang/String;
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2d

    if-eq v3, v4, :cond_1

    .line 1272
    goto :goto_2

    .line 1274
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 1275
    const-string v3, "--proto"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1276
    const/4 v1, 0x1

    goto :goto_1

    .line 1278
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown argument: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "; use -h for help"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1280
    .end local v2    # "opt":Ljava/lang/String;
    :goto_1
    goto :goto_0

    .line 1282
    :cond_3
    :goto_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1284
    .local v2, "identity":J
    if-eqz v1, :cond_4

    .line 1285
    :try_start_0
    new-instance v4, Lcom/android/internal/util/dump/DualDumpOutputStream;

    new-instance v5, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v5, p1}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v4, v5}, Lcom/android/internal/util/dump/DualDumpOutputStream;-><init>(Landroid/util/proto/ProtoOutputStream;)V

    invoke-direct {p0, v4}, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;)V

    goto :goto_3

    .line 1287
    :cond_4
    const-string v4, "SENSOR PRIVACY MANAGER STATE (dumpsys sensor_privacy)"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1290
    new-instance v4, Lcom/android/internal/util/dump/DualDumpOutputStream;

    new-instance v5, Landroid/util/IndentingPrintWriter;

    const-string v6, "  "

    invoke-direct {v5, p2, v6}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Lcom/android/internal/util/dump/DualDumpOutputStream;-><init>(Landroid/util/IndentingPrintWriter;)V

    invoke-direct {p0, v4}, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1293
    :goto_3
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1294
    nop

    .line 1295
    return-void

    .line 1293
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1294
    throw v4
.end method

.method public isIndividualSensorPrivacyEnabled(II)Z
    .locals 4
    .param p1, "userId"    # I
    .param p2, "sensor"    # I

    .line 898
    invoke-direct {p0}, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->enforceObserveSensorPrivacyPermission()V

    .line 899
    iget-object v0, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 900
    :try_start_0
    iget-object v1, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->mIndividualEnabled:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    .line 901
    .local v1, "states":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl$SensorState;>;"
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 902
    monitor-exit v0

    return v2

    .line 904
    :cond_0
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl$SensorState;

    .line 905
    .local v3, "state":Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl$SensorState;
    if-nez v3, :cond_1

    .line 906
    monitor-exit v0

    return v2

    .line 908
    :cond_1
    invoke-static {v3}, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl$SensorState;->access$1500(Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl$SensorState;)Z

    move-result v2

    monitor-exit v0

    return v2

    .line 909
    .end local v1    # "states":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl$SensorState;>;"
    .end local v3    # "state":Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl$SensorState;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isSensorPrivacyEnabled()Z
    .locals 1

    .line 886
    invoke-direct {p0}, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->enforceObserveSensorPrivacyPermission()V

    .line 887
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->isSensorPrivacyEnabled(I)Z

    move-result v0

    return v0
.end method

.method public synthetic lambda$dump$5$SensorPrivacyService$SensorPrivacyServiceImpl(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/Integer;)V
    .locals 16
    .param p1, "dumpStream"    # Lcom/android/internal/util/dump/DualDumpOutputStream;
    .param p2, "userId"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1306
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string/jumbo v2, "users"

    const-wide v3, 0x20b00000003L

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v5

    .line 1307
    .local v5, "userToken":J
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string/jumbo v7, "user_id"

    const-wide v8, 0x10500000001L

    invoke-virtual {v1, v7, v8, v9, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 1308
    iget-object v2, v0, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->mEnabled:Landroid/util/SparseBooleanArray;

    .line 1309
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {v2, v7, v8}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v2

    .line 1308
    const-string/jumbo v7, "is_enabled"

    const-wide v8, 0x10800000002L

    invoke-virtual {v1, v7, v8, v9, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    .line 1311
    iget-object v2, v0, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->mIndividualEnabled:Landroid/util/SparseArray;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v2, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    .line 1312
    .local v2, "individualEnabled":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl$SensorState;>;"
    if-eqz v2, :cond_0

    .line 1313
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v10

    .line 1314
    .local v10, "numIndividualEnabled":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    if-ge v11, v10, :cond_0

    .line 1315
    const-string v12, "individual_enabled_sensor"

    invoke-virtual {v1, v12, v3, v4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v12

    .line 1318
    .local v12, "individualToken":J
    const-wide v14, 0x10e00000001L

    .line 1320
    invoke-virtual {v2, v11}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 1318
    const-string/jumbo v4, "sensor"

    invoke-virtual {v1, v4, v14, v15, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 1321
    nop

    .line 1323
    invoke-virtual {v2, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl$SensorState;

    invoke-static {v3}, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl$SensorState;->access$1500(Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl$SensorState;)Z

    move-result v3

    .line 1321
    invoke-virtual {v1, v7, v8, v9, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    .line 1326
    invoke-virtual {v1, v12, v13}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 1314
    .end local v12    # "individualToken":J
    add-int/lit8 v11, v11, 0x1

    const-wide v3, 0x20b00000003L

    goto :goto_0

    .line 1329
    .end local v10    # "numIndividualEnabled":I
    .end local v11    # "i":I
    :cond_0
    invoke-virtual {v1, v5, v6}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 1330
    return-void
.end method

.method public synthetic lambda$persistSensorPrivacyStateLocked$4$SensorPrivacyService$SensorPrivacyServiceImpl(Landroid/util/TypedXmlSerializer;Ljava/lang/Integer;)V
    .locals 13
    .param p1, "serializer"    # Landroid/util/TypedXmlSerializer;
    .param p2, "userId"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1091
    const/4 v0, 0x0

    const-string/jumbo v1, "user"

    invoke-interface {p1, v0, v1}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1092
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v3, "id"

    invoke-interface {p1, v0, v3, v2}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 1093
    nop

    .line 1094
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->isSensorPrivacyEnabled(I)Z

    move-result v2

    .line 1093
    const-string v3, "enabled"

    invoke-interface {p1, v0, v3, v2}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 1096
    iget-object v2, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->mIndividualEnabled:Landroid/util/SparseArray;

    .line 1097
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    invoke-virtual {v2, v4, v5}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    .line 1098
    .local v2, "individualEnabled":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl$SensorState;>;"
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v4

    .line 1099
    .local v4, "numIndividual":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v4, :cond_0

    .line 1100
    const-string v6, "individual-sensor-privacy"

    invoke-interface {p1, v0, v6}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1101
    invoke-virtual {v2, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    .line 1102
    .local v7, "sensor":I
    invoke-virtual {v2, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl$SensorState;

    .line 1103
    .local v8, "sensorState":Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl$SensorState;
    invoke-static {v8}, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl$SensorState;->access$1500(Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl$SensorState;)Z

    move-result v9

    .line 1104
    .local v9, "enabled":Z
    invoke-static {v8}, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl$SensorState;->access$1400(Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl$SensorState;)J

    move-result-wide v10

    .line 1105
    .local v10, "lastChange":J
    const-string/jumbo v12, "sensor"

    invoke-interface {p1, v0, v12, v7}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 1106
    invoke-interface {p1, v0, v3, v9}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 1107
    const-string/jumbo v12, "last-change"

    invoke-interface {p1, v0, v12, v10, v11}, Landroid/util/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 1108
    invoke-interface {p1, v0, v6}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1099
    .end local v7    # "sensor":I
    .end local v8    # "sensorState":Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl$SensorState;
    .end local v9    # "enabled":Z
    .end local v10    # "lastChange":J
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1110
    .end local v5    # "i":I
    :cond_0
    invoke-interface {p1, v0, v1}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1112
    return-void
.end method

.method public synthetic lambda$setIndividualSensorPrivacyForProfileGroup$1$SensorPrivacyService$SensorPrivacyServiceImpl(IIIZLjava/lang/Integer;)V
    .locals 2
    .param p1, "parentId"    # I
    .param p2, "source"    # I
    .param p3, "sensor"    # I
    .param p4, "enable"    # Z
    .param p5, "userId2"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 848
    iget-object v0, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/SensorPrivacyService;

    invoke-static {v0}, Lcom/android/server/SensorPrivacyService;->access$500(Lcom/android/server/SensorPrivacyService;)Lcom/android/server/pm/UserManagerInternal;

    move-result-object v0

    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserManagerInternal;->getProfileParentId(I)I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 849
    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->setIndividualSensorPrivacy(IIIZ)V

    .line 851
    :cond_0
    return-void
.end method

.method public synthetic lambda$setSensorPrivacy$0$SensorPrivacyService$SensorPrivacyServiceImpl(ZLjava/lang/Integer;)V
    .locals 1
    .param p1, "enable"    # Z
    .param p2, "userId"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 706
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->setSensorPrivacy(IZ)V

    return-void
.end method

.method public synthetic lambda$upgradeAndInit$2$SensorPrivacyService$SensorPrivacyServiceImpl(Ljava/lang/Integer;)V
    .locals 3
    .param p1, "userId"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1028
    iget-object v0, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->mEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    return-void
.end method

.method public synthetic lambda$upgradeAndInit$3$SensorPrivacyService$SensorPrivacyServiceImpl(Ljava/lang/Integer;)V
    .locals 3
    .param p1, "userId"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1029
    iget-object v0, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->mIndividualEnabled:Landroid/util/SparseArray;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public onOpNoted(IILjava/lang/String;Ljava/lang/String;II)V
    .locals 4
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "attributionTag"    # Ljava/lang/String;
    .param p5, "flags"    # I
    .param p6, "result"    # I

    .line 380
    and-int/lit8 v0, p5, 0xd

    if-nez v0, :cond_0

    .line 381
    return-void

    .line 385
    :cond_0
    const/4 v0, 0x1

    if-ne p6, v0, :cond_3

    .line 386
    const/16 v0, 0x1b

    if-ne p1, v0, :cond_1

    .line 387
    const/4 v0, 0x1

    .local v0, "sensor":I
    goto :goto_0

    .line 388
    .end local v0    # "sensor":I
    :cond_1
    const/16 v0, 0x1a

    if-ne p1, v0, :cond_2

    .line 389
    const/4 v0, 0x2

    .restart local v0    # "sensor":I
    goto :goto_0

    .line 391
    .end local v0    # "sensor":I
    :cond_2
    return-void

    .line 393
    :cond_3
    if-nez p6, :cond_6

    .line 394
    const/16 v0, 0x64

    if-ne p1, v0, :cond_4

    .line 395
    const/4 v0, 0x1

    .restart local v0    # "sensor":I
    goto :goto_0

    .line 396
    .end local v0    # "sensor":I
    :cond_4
    const/16 v0, 0x65

    if-ne p1, v0, :cond_5

    .line 397
    const/4 v0, 0x2

    .line 405
    .restart local v0    # "sensor":I
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 407
    .local v1, "token":J
    :try_start_0
    invoke-direct {p0, p2, p3, v0}, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->onSensorUseStarted(ILjava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 409
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 410
    nop

    .line 411
    return-void

    .line 409
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 410
    throw v3

    .line 399
    .end local v0    # "sensor":I
    .end local v1    # "token":J
    :cond_5
    return-void

    .line 402
    :cond_6
    return-void
.end method

.method public onOpStarted(IILjava/lang/String;Ljava/lang/String;II)V
    .locals 0
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "attributionTag"    # Ljava/lang/String;
    .param p5, "flags"    # I
    .param p6, "result"    # I

    .line 373
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->onOpNoted(IILjava/lang/String;Ljava/lang/String;II)V

    .line 374
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

    .line 1363
    new-instance v0, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl$2;

    invoke-direct {v0, p0}, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl$2;-><init>(Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;)V

    .line 1439
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl$2;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 1440
    return-void
.end method

.method public onUserRestrictionsChanged(ILandroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "userId"    # I
    .param p2, "newRestrictions"    # Landroid/os/Bundle;
    .param p3, "prevRestrictions"    # Landroid/os/Bundle;

    .line 360
    const-string v0, "disallow_camera_toggle"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x5

    if-nez v1, :cond_0

    .line 361
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 362
    const/4 v0, 0x2

    invoke-direct {p0, p1, v3, v0, v2}, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->setIndividualSensorPrivacyUnchecked(IIIZ)V

    .line 364
    :cond_0
    const-string v0, "disallow_microphone_toggle"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 365
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 366
    const/4 v0, 0x1

    invoke-direct {p0, p1, v3, v0, v2}, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->setIndividualSensorPrivacyUnchecked(IIIZ)V

    .line 368
    :cond_1
    return-void
.end method

.method public removeIndividualSensorPrivacyListener(ILandroid/hardware/ISensorPrivacyListener;)V
    .locals 2
    .param p1, "sensor"    # I
    .param p2, "listener"    # Landroid/hardware/ISensorPrivacyListener;

    .line 1175
    invoke-direct {p0}, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->enforceObserveSensorPrivacyPermission()V

    .line 1176
    if-eqz p2, :cond_0

    .line 1179
    iget-object v0, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->mHandler:Lcom/android/server/SensorPrivacyService$SensorPrivacyHandler;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/SensorPrivacyService$SensorPrivacyHandler;->removeListener(ILandroid/hardware/ISensorPrivacyListener;)V

    .line 1180
    return-void

    .line 1177
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "listener cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeSensorPrivacyListener(Landroid/hardware/ISensorPrivacyListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/hardware/ISensorPrivacyListener;

    .line 1162
    invoke-direct {p0}, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->enforceObserveSensorPrivacyPermission()V

    .line 1163
    if-eqz p1, :cond_0

    .line 1166
    iget-object v0, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->mHandler:Lcom/android/server/SensorPrivacyService$SensorPrivacyHandler;

    invoke-virtual {v0, p1}, Lcom/android/server/SensorPrivacyService$SensorPrivacyHandler;->removeListener(Landroid/hardware/ISensorPrivacyListener;)V

    .line 1167
    return-void

    .line 1164
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "listener cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setIndividualSensorPrivacy(IIIZ)V
    .locals 1
    .param p1, "userId"    # I
    .param p2, "source"    # I
    .param p3, "sensor"    # I
    .param p4, "enable"    # Z

    .line 720
    invoke-direct {p0}, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->enforceManageSensorPrivacyPermission()V

    .line 721
    invoke-direct {p0, p1, p3}, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->canChangeIndividualSensorPrivacy(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 722
    return-void

    .line 725
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->setIndividualSensorPrivacyUnchecked(IIIZ)V

    .line 726
    return-void
.end method

.method public setIndividualSensorPrivacyForProfileGroup(IIIZ)V
    .locals 9
    .param p1, "userId"    # I
    .param p2, "source"    # I
    .param p3, "sensor"    # I
    .param p4, "enable"    # Z

    .line 845
    invoke-direct {p0}, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->enforceManageSensorPrivacyPermission()V

    .line 846
    iget-object v0, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/SensorPrivacyService;

    invoke-static {v0}, Lcom/android/server/SensorPrivacyService;->access$500(Lcom/android/server/SensorPrivacyService;)Lcom/android/server/pm/UserManagerInternal;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerInternal;->getProfileParentId(I)I

    move-result v0

    .line 847
    .local v0, "parentId":I
    iget-object v7, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/SensorPrivacyService;

    new-instance v8, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda2;

    move-object v1, v8

    move-object v2, p0

    move v3, v0

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;IIIZ)V

    invoke-static {v7, v8}, Lcom/android/server/SensorPrivacyService;->access$1300(Lcom/android/server/SensorPrivacyService;Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;)V

    .line 852
    return-void
.end method

.method public setSensorPrivacy(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .line 704
    invoke-direct {p0}, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->enforceManageSensorPrivacyPermission()V

    .line 706
    iget-object v0, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/SensorPrivacyService;

    new-instance v1, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1}, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;Z)V

    invoke-static {v0, v1}, Lcom/android/server/SensorPrivacyService;->access$1300(Lcom/android/server/SensorPrivacyService;Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;)V

    .line 707
    return-void
.end method

.method public supportsSensorToggle(I)Z
    .locals 3
    .param p1, "sensor"    # I

    .line 1124
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1125
    iget-object v0, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/SensorPrivacyService;

    invoke-static {v0}, Lcom/android/server/SensorPrivacyService;->access$200(Lcom/android/server/SensorPrivacyService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111014b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0

    .line 1126
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 1127
    iget-object v0, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/SensorPrivacyService;

    invoke-static {v0}, Lcom/android/server/SensorPrivacyService;->access$200(Lcom/android/server/SensorPrivacyService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110148

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0

    .line 1129
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to find value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public suppressIndividualSensorPrivacyReminders(IILandroid/os/IBinder;Z)V
    .locals 5
    .param p1, "userId"    # I
    .param p2, "sensor"    # I
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "suppress"    # Z

    .line 1185
    invoke-direct {p0}, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->enforceManageSensorPrivacyPermission()V

    .line 1186
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1188
    new-instance v0, Landroid/util/Pair;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1190
    .local v0, "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/os/UserHandle;>;"
    iget-object v1, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1191
    if-eqz p4, :cond_1

    .line 1193
    const/4 v2, 0x0

    :try_start_0
    invoke-interface {p3, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1197
    nop

    .line 1199
    :try_start_1
    iget-object v2, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->mSuppressReminders:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 1200
    .local v2, "suppressPackageReminderTokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    if-nez v2, :cond_0

    .line 1201
    new-instance v3, Ljava/util/ArrayList;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    move-object v2, v3

    .line 1202
    iget-object v3, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->mSuppressReminders:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1205
    :cond_0
    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1206
    nop

    .end local v2    # "suppressPackageReminderTokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    goto :goto_0

    .line 1194
    :catch_0
    move-exception v2

    .line 1195
    .local v2, "e":Landroid/os/RemoteException;
    invoke-static {}, Lcom/android/server/SensorPrivacyService;->access$600()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Could not suppress sensor use reminder"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1196
    monitor-exit v1

    return-void

    .line 1207
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_1
    iget-object v2, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->mHandler:Lcom/android/server/SensorPrivacyService$SensorPrivacyHandler;

    invoke-virtual {v2, v0, p3}, Lcom/android/server/SensorPrivacyService$SensorPrivacyHandler;->removeSuppressPackageReminderToken(Landroid/util/Pair;Landroid/os/IBinder;)V

    .line 1209
    :goto_0
    monitor-exit v1

    .line 1210
    return-void

    .line 1209
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method
