.class public Lcom/android/server/biometrics/sensors/face/hidl/FaceGenerateChallengeClient;
.super Lcom/android/server/biometrics/sensors/GenerateChallengeClient;
.source "FaceGenerateChallengeClient.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/biometrics/sensors/GenerateChallengeClient<",
        "Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;",
        ">;"
    }
.end annotation


# static fields
.field static final CHALLENGE_TIMEOUT_SEC:I = 0x258

.field private static final EMPTY_CALLBACK:Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;

.field private static final TAG:Ljava/lang/String; = "FaceGenerateChallengeClient"


# instance fields
.field private mChallengeResult:Ljava/lang/Long;

.field private final mCreatedAt:J

.field private mWaiting:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/face/IFaceServiceReceiver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    new-instance v0, Lcom/android/server/biometrics/sensors/face/hidl/FaceGenerateChallengeClient$1;

    invoke-direct {v0}, Lcom/android/server/biometrics/sensors/face/hidl/FaceGenerateChallengeClient$1;-><init>()V

    sput-object v0, Lcom/android/server/biometrics/sensors/face/hidl/FaceGenerateChallengeClient;->EMPTY_CALLBACK:Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/HalClientMonitor$LazyDaemon;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;ILjava/lang/String;IJ)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "listener"    # Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;
    .param p5, "userId"    # I
    .param p6, "owner"    # Ljava/lang/String;
    .param p7, "sensorId"    # I
    .param p8, "now"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/server/biometrics/sensors/HalClientMonitor$LazyDaemon<",
            "Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;",
            ">;",
            "Landroid/os/IBinder;",
            "Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;",
            "I",
            "Ljava/lang/String;",
            "IJ)V"
        }
    .end annotation

    .line 53
    .local p2, "lazyDaemon":Lcom/android/server/biometrics/sensors/HalClientMonitor$LazyDaemon;, "Lcom/android/server/biometrics/sensors/HalClientMonitor$LazyDaemon<Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;>;"
    invoke-direct/range {p0 .. p7}, Lcom/android/server/biometrics/sensors/GenerateChallengeClient;-><init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/HalClientMonitor$LazyDaemon;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;ILjava/lang/String;I)V

    .line 54
    iput-wide p8, p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceGenerateChallengeClient;->mCreatedAt:J

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceGenerateChallengeClient;->mWaiting:Ljava/util/List;

    .line 56
    return-void
.end method

.method private sendChallengeResult(Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;)V
    .locals 6
    .param p1, "receiver"    # Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;
    .param p2, "ownerCallback"    # Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;

    .line 98
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceGenerateChallengeClient;->mChallengeResult:Ljava/lang/Long;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const-string/jumbo v3, "result not available"

    invoke-static {v0, v3}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 100
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/FaceGenerateChallengeClient;->getSensorId()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/FaceGenerateChallengeClient;->getTargetUserId()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceGenerateChallengeClient;->mChallengeResult:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p1, v0, v3, v4, v5}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->onChallengeGenerated(IIJ)V

    .line 101
    invoke-interface {p2, p0, v1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    goto :goto_1

    .line 102
    :catch_0
    move-exception v0

    .line 103
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "FaceGenerateChallengeClient"

    const-string v3, "Remote exception"

    invoke-static {v1, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 104
    invoke-interface {p2, p0, v2}, Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    .line 106
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    return-void
.end method


# virtual methods
.method public getCreatedAt()J
    .locals 2

    .line 79
    iget-wide v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceGenerateChallengeClient;->mCreatedAt:J

    return-wide v0
.end method

.method public reuseResult(Landroid/hardware/face/IFaceServiceReceiver;)V
    .locals 2
    .param p1, "receiver"    # Landroid/hardware/face/IFaceServiceReceiver;

    .line 89
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceGenerateChallengeClient;->mWaiting:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 90
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 92
    :cond_0
    new-instance v0, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    invoke-direct {v0, p1}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;-><init>(Landroid/hardware/face/IFaceServiceReceiver;)V

    sget-object v1, Lcom/android/server/biometrics/sensors/face/hidl/FaceGenerateChallengeClient;->EMPTY_CALLBACK:Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;

    invoke-direct {p0, v0, v1}, Lcom/android/server/biometrics/sensors/face/hidl/FaceGenerateChallengeClient;->sendChallengeResult(Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;)V

    .line 94
    :goto_0
    return-void
.end method

.method protected startHalOperation()V
    .locals 5

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceGenerateChallengeClient;->mChallengeResult:Ljava/lang/Long;

    .line 62
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/FaceGenerateChallengeClient;->getFreshDaemon()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    const/16 v2, 0x258

    invoke-interface {v1, v2}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;->generateChallenge(I)Landroid/hardware/biometrics/face/V1_0/OptionalUint64;

    move-result-object v1

    iget-wide v1, v1, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;->value:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceGenerateChallengeClient;->mChallengeResult:Ljava/lang/Long;

    .line 65
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/FaceGenerateChallengeClient;->getListener()Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceGenerateChallengeClient;->mCallback:Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;

    invoke-direct {p0, v1, v2}, Lcom/android/server/biometrics/sensors/face/hidl/FaceGenerateChallengeClient;->sendChallengeResult(Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;)V

    .line 66
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceGenerateChallengeClient;->mWaiting:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/face/IFaceServiceReceiver;

    .line 67
    .local v2, "receiver":Landroid/hardware/face/IFaceServiceReceiver;
    new-instance v3, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    invoke-direct {v3, v2}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;-><init>(Landroid/hardware/face/IFaceServiceReceiver;)V

    sget-object v4, Lcom/android/server/biometrics/sensors/face/hidl/FaceGenerateChallengeClient;->EMPTY_CALLBACK:Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;

    invoke-direct {p0, v3, v4}, Lcom/android/server/biometrics/sensors/face/hidl/FaceGenerateChallengeClient;->sendChallengeResult(Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    .end local v2    # "receiver":Landroid/hardware/face/IFaceServiceReceiver;
    goto :goto_0

    .line 73
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 69
    :catch_0
    move-exception v1

    .line 70
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v2, "FaceGenerateChallengeClient"

    const-string v3, "generateChallenge failed"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 71
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceGenerateChallengeClient;->mCallback:Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;

    const/4 v3, 0x0

    invoke-interface {v2, p0, v3}, Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceGenerateChallengeClient;->mWaiting:Ljava/util/List;

    .line 74
    nop

    .line 75
    return-void

    .line 73
    :goto_1
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceGenerateChallengeClient;->mWaiting:Ljava/util/List;

    .line 74
    throw v1
.end method
