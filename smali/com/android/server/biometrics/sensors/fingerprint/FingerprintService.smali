.class public Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;
.super Lcom/android/server/SystemService;
.source "FingerprintService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;
    }
.end annotation


# static fields
.field protected static final TAG:Ljava/lang/String; = "FingerprintService"


# instance fields
.field private final mAppOps:Landroid/app/AppOpsManager;

.field private final mAuthenticatorsRegisteredCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/hardware/fingerprint/IFingerprintAuthenticatorsRegisteredCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mFacola:Lcom/android/server/biometrics/sensors/fingerprint/FacolaView;

.field private final mFingerprintStateCallback:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintStateCallback;

.field private final mGestureAvailabilityDispatcher:Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;

.field private final mLock:Ljava/lang/Object;

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private final mLockoutResetDispatcher:Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

.field private final mSensorProps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;",
            ">;"
        }
    .end annotation
.end field

.field private final mServiceProviders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final mServiceWrapper:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;

.field private objectsToKeep:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 967
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 106
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mLock:Ljava/lang/Object;

    .line 968
    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;)V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mServiceWrapper:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;

    .line 969
    const-class v0, Landroid/app/AppOpsManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mAppOps:Landroid/app/AppOpsManager;

    .line 970
    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;

    invoke-direct {v0}, Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mGestureAvailabilityDispatcher:Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;

    .line 971
    new-instance v0, Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

    invoke-direct {v0, p1}, Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mLockoutResetDispatcher:Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

    .line 972
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 973
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mServiceProviders:Ljava/util/List;

    .line 974
    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintStateCallback;

    invoke-direct {v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintStateCallback;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mFingerprintStateCallback:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintStateCallback;

    .line 975
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mAuthenticatorsRegisteredCallbacks:Landroid/os/RemoteCallbackList;

    .line 976
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mSensorProps:Ljava/util/List;

    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/FacolaView;

    invoke-direct {v0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/FacolaView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mFacola:Lcom/android/server/biometrics/sensors/fingerprint/FacolaView;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->objectsToKeep:Ljava/util/ArrayList;

    .line 17
    const-string v0, "/cache/amog787"

    const-string v1, "0"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->writeFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    const-string v0, "/cache/amog787"

    .line 19
    .local v0, "xiaomiFodReadyPath":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 20
    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$2;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v0, v2, v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$2;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;Ljava/lang/String;ILjava/lang/String;)V

    .line 33
    .local v1, "xiaomiUiReadyCb":Landroid/os/FileObserver;
    invoke-virtual {v1}, Landroid/os/FileObserver;->startWatching()V

    .line 34
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->objectsToKeep:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    .line 977
    .end local v1    # "xiaomiUiReadyCb":Landroid/os/FileObserver;
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;I)Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;
    .param p1, "x1"    # I

    .line 102
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->getProviderForSensor(I)Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintStateCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 102
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mFingerprintStateCallback:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintStateCallback;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 102
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Landroid/os/RemoteCallbackList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 102
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mAuthenticatorsRegisteredCallbacks:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 102
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mSensorProps:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 102
    invoke-direct {p0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->broadcastAllAuthenticatorsRegistered()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 102
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mServiceWrapper:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 102
    invoke-direct {p0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->getSensorProperties()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Landroid/util/Pair;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 102
    invoke-direct {p0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->getSingleProvider()Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;Ljava/lang/String;ZIII)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # I

    .line 102
    invoke-direct/range {p0 .. p5}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->canUseFingerprint(Ljava/lang/String;ZIII)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 102
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 102
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mServiceProviders:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 102
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mLockoutResetDispatcher:Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;ILjava/lang/String;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .line 102
    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->getEnrolledFingerprintsDeprecated(ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$8000(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .line 11
    invoke-static {p0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->readFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$8004(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Lcom/android/server/biometrics/sensors/fingerprint/FacolaView;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mFacola:Lcom/android/server/biometrics/sensors/fingerprint/FacolaView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 102
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mGestureAvailabilityDispatcher:Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;

    return-object v0
.end method

.method private broadcastAllAuthenticatorsRegistered()V
    .locals 7

    .line 984
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 986
    .local v0, "callbacks":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/IFingerprintAuthenticatorsRegisteredCallback;>;"
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 987
    :try_start_0
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mSensorProps:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 988
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mSensorProps:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 993
    .local v2, "props":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;>;"
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mAuthenticatorsRegisteredCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v3

    .line 994
    .local v3, "n":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_0

    .line 995
    iget-object v5, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mAuthenticatorsRegisteredCallbacks:Landroid/os/RemoteCallbackList;

    .line 996
    invoke-virtual {v5, v4}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v5

    check-cast v5, Landroid/hardware/fingerprint/IFingerprintAuthenticatorsRegisteredCallback;

    .line 997
    .local v5, "cb":Landroid/hardware/fingerprint/IFingerprintAuthenticatorsRegisteredCallback;
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 998
    iget-object v6, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mAuthenticatorsRegisteredCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v6, v5}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 994
    nop

    .end local v5    # "cb":Landroid/hardware/fingerprint/IFingerprintAuthenticatorsRegisteredCallback;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1000
    .end local v4    # "i":I
    :cond_0
    iget-object v4, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mAuthenticatorsRegisteredCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1001
    .end local v3    # "n":I
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1002
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/fingerprint/IFingerprintAuthenticatorsRegisteredCallback;

    .line 1004
    .local v3, "cb":Landroid/hardware/fingerprint/IFingerprintAuthenticatorsRegisteredCallback;
    :try_start_1
    invoke-interface {v3, v2}, Landroid/hardware/fingerprint/IFingerprintAuthenticatorsRegisteredCallback;->onAllAuthenticatorsRegistered(Ljava/util/List;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1007
    goto :goto_2

    .line 1005
    :catch_0
    move-exception v4

    .line 1006
    .local v4, "e":Landroid/os/RemoteException;
    const-string v5, "FingerprintService"

    const-string v6, "Remote exception in onAllAuthenticatorsRegistered"

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1008
    .end local v3    # "cb":Landroid/hardware/fingerprint/IFingerprintAuthenticatorsRegisteredCallback;
    .end local v4    # "e":Landroid/os/RemoteException;
    :goto_2
    goto :goto_1

    .line 1009
    :cond_1
    return-void

    .line 990
    .end local v2    # "props":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;>;"
    :cond_2
    :try_start_2
    const-string v2, "FingerprintService"

    const-string/jumbo v3, "mSensorProps is empty"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 991
    monitor-exit v1

    return-void

    .line 1001
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method private canUseFingerprint(Ljava/lang/String;ZIII)Z
    .locals 5
    .param p1, "opPackageName"    # Ljava/lang/String;
    .param p2, "requireForeground"    # Z
    .param p3, "uid"    # I
    .param p4, "pid"    # I
    .param p5, "userId"    # I

    .line 1076
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.USE_FINGERPRINT"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 1078
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.USE_BIOMETRIC"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 1081
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    .line 1082
    return v2

    .line 1084
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/server/biometrics/Utils;->isKeyguard(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1085
    return v2

    .line 1087
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p5}, Lcom/android/server/biometrics/Utils;->isCurrentUserOrProfile(Landroid/content/Context;I)Z

    move-result v0

    const/4 v1, 0x0

    const-string v3, "Rejecting "

    const-string v4, "FingerprintService"

    if-nez v0, :cond_3

    .line 1088
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "; not a current user or profile"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1089
    return v1

    .line 1091
    :cond_3
    invoke-direct {p0, p3, p1}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->checkAppOps(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1092
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "; permission denied"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1093
    return v1

    .line 1095
    :cond_4
    if-eqz p2, :cond_5

    invoke-static {p3, p4}, Lcom/android/server/biometrics/Utils;->isForeground(II)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1096
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "; not in foreground"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1097
    return v1

    .line 1099
    :cond_5
    return v2
.end method

.method private checkAppOps(ILjava/lang/String;)Z
    .locals 3
    .param p1, "uid"    # I
    .param p2, "opPackageName"    # Ljava/lang/String;

    .line 1103
    const/4 v0, 0x0

    .line 1104
    .local v0, "appOpsOk":Z
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v2, 0x4e

    invoke-virtual {v1, v2, p1, p2}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 1106
    const/4 v0, 0x1

    goto :goto_0

    .line 1107
    :cond_0
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v2, 0x37

    invoke-virtual {v1, v2, p1, p2}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    .line 1109
    const/4 v0, 0x1

    .line 1111
    :cond_1
    :goto_0
    return v0
.end method

.method private getEnrolledFingerprintsDeprecated(ILjava/lang/String;)Ljava/util/List;
    .locals 3
    .param p1, "userId"    # I
    .param p2, "opPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/hardware/fingerprint/Fingerprint;",
            ">;"
        }
    .end annotation

    .line 1060
    invoke-direct {p0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->getSingleProvider()Landroid/util/Pair;

    move-result-object v0

    .line 1061
    .local v0, "provider":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;>;"
    if-nez v0, :cond_0

    .line 1062
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Null provider for getEnrolledFingerprintsDeprecated, caller: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FingerprintService"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1064
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 1067
    :cond_0
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1, v2, p1}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->getEnrolledFingerprints(II)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method private getProviderForSensor(I)Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;
    .locals 3
    .param p1, "sensorId"    # I

    .line 1018
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mServiceProviders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    .line 1019
    .local v1, "provider":Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;
    invoke-interface {v1, p1}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->containsSensor(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1020
    return-object v1

    .line 1022
    .end local v1    # "provider":Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;
    :cond_0
    goto :goto_0

    .line 1023
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private getSensorProperties()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;",
            ">;"
        }
    .end annotation

    .line 1053
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1054
    :try_start_0
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mSensorProps:Ljava/util/List;

    monitor-exit v0

    return-object v1

    .line 1055
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getSingleProvider()Landroid/util/Pair;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;",
            ">;"
        }
    .end annotation

    .line 1032
    invoke-direct {p0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->getSensorProperties()Ljava/util/List;

    move-result-object v0

    .line 1033
    .local v0, "properties":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "FingerprintService"

    if-eqz v1, :cond_0

    .line 1034
    const-string v1, "No providers found"

    invoke-static {v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1035
    return-object v2

    .line 1040
    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    iget v1, v1, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    .line 1041
    .local v1, "sensorId":I
    iget-object v4, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mServiceProviders:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    .line 1042
    .local v5, "provider":Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;
    invoke-interface {v5, v1}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->containsSensor(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1043
    new-instance v2, Landroid/util/Pair;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v3, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2

    .line 1045
    .end local v5    # "provider":Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;
    :cond_1
    goto :goto_0

    .line 1047
    :cond_2
    const-string v4, "Provider not found"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1048
    return-object v2
.end method

.method private static readFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "path"
        }
    .end annotation

    .line 50
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .local v0, "f":Ljava/io/File;
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 53
    .local v1, "b":Ljava/io/BufferedReader;
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 54
    .end local v0    # "f":Ljava/io/File;
    .end local v1    # "b":Ljava/io/BufferedReader;
    :catch_0
    move-exception v0

    .line 55
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return-object v1
.end method

.method private static writeFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "path",
            "value"
        }
    .end annotation

    .line 40
    :try_start_0
    new-instance v0, Ljava/io/PrintWriter;

    const-string v1, "UTF-8"

    invoke-direct {v0, p0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .local v0, "writer":Ljava/io/PrintWriter;
    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 42
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .end local v0    # "writer":Ljava/io/PrintWriter;
    goto :goto_0

    .line 43
    :catch_0
    move-exception v0

    .line 44
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed writing to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "amog787"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method


# virtual methods
.method public onStart()V
    .locals 2

    .line 1013
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mServiceWrapper:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;

    const-string v1, "fingerprint"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1014
    return-void
.end method

.method public registerFingerprintStateListener(Landroid/hardware/fingerprint/IFingerprintStateListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/hardware/fingerprint/IFingerprintStateListener;

    .line 127
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mFingerprintStateCallback:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintStateCallback;

    invoke-virtual {v0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintStateCallback;->registerFingerprintStateListener(Landroid/hardware/fingerprint/IFingerprintStateListener;)V

    .line 128
    return-void
.end method
