.class public Lcom/android/server/biometrics/sensors/InvalidationRequesterClient;
.super Lcom/android/server/biometrics/sensors/BaseClientMonitor;
.source "InvalidationRequesterClient.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;",
        ">",
        "Lcom/android/server/biometrics/sensors/BaseClientMonitor;"
    }
.end annotation


# instance fields
.field private final mBiometricManager:Landroid/hardware/biometrics/BiometricManager;

.field private final mInvalidationCallback:Landroid/hardware/biometrics/IInvalidationCallback;

.field private final mUtils:Lcom/android/server/biometrics/sensors/BiometricUtils;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/biometrics/sensors/BiometricUtils<",
            "TS;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;IILcom/android/server/biometrics/sensors/BiometricUtils;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I
    .param p3, "sensorId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II",
            "Lcom/android/server/biometrics/sensors/BiometricUtils<",
            "TS;>;)V"
        }
    .end annotation

    .line 78
    .local p0, "this":Lcom/android/server/biometrics/sensors/InvalidationRequesterClient;, "Lcom/android/server/biometrics/sensors/InvalidationRequesterClient<TS;>;"
    .local p4, "utils":Lcom/android/server/biometrics/sensors/BiometricUtils;, "Lcom/android/server/biometrics/sensors/BiometricUtils<TS;>;"
    nop

    .line 79
    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    .line 78
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move v7, p3

    invoke-direct/range {v0 .. v10}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;-><init>(Landroid/content/Context;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;ILjava/lang/String;IIIII)V

    .line 66
    new-instance v0, Lcom/android/server/biometrics/sensors/InvalidationRequesterClient$1;

    invoke-direct {v0, p0}, Lcom/android/server/biometrics/sensors/InvalidationRequesterClient$1;-><init>(Lcom/android/server/biometrics/sensors/InvalidationRequesterClient;)V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/InvalidationRequesterClient;->mInvalidationCallback:Landroid/hardware/biometrics/IInvalidationCallback;

    .line 82
    const-class v0, Landroid/hardware/biometrics/BiometricManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/biometrics/BiometricManager;

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/InvalidationRequesterClient;->mBiometricManager:Landroid/hardware/biometrics/BiometricManager;

    .line 83
    iput-object p4, p0, Lcom/android/server/biometrics/sensors/InvalidationRequesterClient;->mUtils:Lcom/android/server/biometrics/sensors/BiometricUtils;

    .line 84
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/biometrics/sensors/InvalidationRequesterClient;)Lcom/android/server/biometrics/sensors/BiometricUtils;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/biometrics/sensors/InvalidationRequesterClient;

    .line 60
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/InvalidationRequesterClient;->mUtils:Lcom/android/server/biometrics/sensors/BiometricUtils;

    return-object v0
.end method


# virtual methods
.method public getProtoEnum()I
    .locals 1

    .line 97
    .local p0, "this":Lcom/android/server/biometrics/sensors/InvalidationRequesterClient;, "Lcom/android/server/biometrics/sensors/InvalidationRequesterClient<TS;>;"
    const/16 v0, 0xe

    return v0
.end method

.method public start(Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;)V
    .locals 4
    .param p1, "callback"    # Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;

    .line 88
    .local p0, "this":Lcom/android/server/biometrics/sensors/InvalidationRequesterClient;, "Lcom/android/server/biometrics/sensors/InvalidationRequesterClient<TS;>;"
    invoke-super {p0, p1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->start(Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;)V

    .line 90
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/InvalidationRequesterClient;->mUtils:Lcom/android/server/biometrics/sensors/BiometricUtils;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/InvalidationRequesterClient;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/InvalidationRequesterClient;->getTargetUserId()I

    move-result v2

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/android/server/biometrics/sensors/BiometricUtils;->setInvalidationInProgress(Landroid/content/Context;IZ)V

    .line 91
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/InvalidationRequesterClient;->mBiometricManager:Landroid/hardware/biometrics/BiometricManager;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/InvalidationRequesterClient;->getTargetUserId()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/InvalidationRequesterClient;->getSensorId()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/biometrics/sensors/InvalidationRequesterClient;->mInvalidationCallback:Landroid/hardware/biometrics/IInvalidationCallback;

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/biometrics/BiometricManager;->invalidateAuthenticatorIds(IILandroid/hardware/biometrics/IInvalidationCallback;)V

    .line 93
    return-void
.end method
