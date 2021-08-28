.class public Lcom/android/server/biometrics/sensors/face/hidl/FaceGetFeatureClient;
.super Lcom/android/server/biometrics/sensors/HalClientMonitor;
.source "FaceGetFeatureClient.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/biometrics/sensors/HalClientMonitor<",
        "Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FaceGetFeatureClient"


# instance fields
.field private final mFaceId:I

.field private final mFeature:I

.field private mValue:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/HalClientMonitor$LazyDaemon;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;ILjava/lang/String;III)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "listener"    # Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;
    .param p5, "userId"    # I
    .param p6, "owner"    # Ljava/lang/String;
    .param p7, "sensorId"    # I
    .param p8, "feature"    # I
    .param p9, "faceId"    # I
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
            "III)V"
        }
    .end annotation

    .line 49
    .local p2, "lazyDaemon":Lcom/android/server/biometrics/sensors/HalClientMonitor$LazyDaemon;, "Lcom/android/server/biometrics/sensors/HalClientMonitor$LazyDaemon<Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;>;"
    move-object v12, p0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v11}, Lcom/android/server/biometrics/sensors/HalClientMonitor;-><init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/HalClientMonitor$LazyDaemon;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;ILjava/lang/String;IIIII)V

    .line 52
    move/from16 v0, p8

    iput v0, v12, Lcom/android/server/biometrics/sensors/face/hidl/FaceGetFeatureClient;->mFeature:I

    .line 53
    move/from16 v1, p9

    iput v1, v12, Lcom/android/server/biometrics/sensors/face/hidl/FaceGetFeatureClient;->mFaceId:I

    .line 55
    return-void
.end method


# virtual methods
.method public getProtoEnum()I
    .locals 1

    .line 100
    const/16 v0, 0x9

    return v0
.end method

.method getValue()Z
    .locals 1

    .line 95
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceGetFeatureClient;->mValue:Z

    return v0
.end method

.method public start(Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;

    .line 70
    invoke-super {p0, p1}, Lcom/android/server/biometrics/sensors/HalClientMonitor;->start(Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;)V

    .line 71
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/FaceGetFeatureClient;->startHalOperation()V

    .line 72
    return-void
.end method

.method protected startHalOperation()V
    .locals 7

    .line 77
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/FaceGetFeatureClient;->getFreshDaemon()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    iget v2, p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceGetFeatureClient;->mFeature:I

    iget v3, p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceGetFeatureClient;->mFaceId:I

    invoke-interface {v1, v2, v3}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;->getFeature(II)Landroid/hardware/biometrics/face/V1_0/OptionalBool;

    move-result-object v1

    .line 78
    .local v1, "result":Landroid/hardware/biometrics/face/V1_0/OptionalBool;
    const/4 v2, 0x1

    new-array v3, v2, [I

    .line 79
    .local v3, "features":[I
    new-array v4, v2, [Z

    .line 80
    .local v4, "featureState":[Z
    iget v5, p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceGetFeatureClient;->mFeature:I

    aput v5, v3, v0

    .line 81
    iget-boolean v5, v1, Landroid/hardware/biometrics/face/V1_0/OptionalBool;->value:Z

    aput-boolean v5, v4, v0

    .line 82
    iget-boolean v5, v1, Landroid/hardware/biometrics/face/V1_0/OptionalBool;->value:Z

    iput-boolean v5, p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceGetFeatureClient;->mValue:Z

    .line 84
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/FaceGetFeatureClient;->getListener()Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 85
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/FaceGetFeatureClient;->getListener()Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    move-result-object v5

    iget v6, v1, Landroid/hardware/biometrics/face/V1_0/OptionalBool;->status:I

    if-nez v6, :cond_0

    move v6, v2

    goto :goto_0

    :cond_0
    move v6, v0

    :goto_0
    invoke-virtual {v5, v6, v3, v4}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->onFeatureGet(Z[I[Z)V

    .line 87
    :cond_1
    iget-object v5, p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceGetFeatureClient;->mCallback:Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;

    invoke-interface {v5, p0, v2}, Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    .end local v1    # "result":Landroid/hardware/biometrics/face/V1_0/OptionalBool;
    .end local v3    # "features":[I
    .end local v4    # "featureState":[Z
    goto :goto_1

    .line 88
    :catch_0
    move-exception v1

    .line 89
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "FaceGetFeatureClient"

    const-string v3, "Unable to getFeature"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 90
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceGetFeatureClient;->mCallback:Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;

    invoke-interface {v2, p0, v0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    .line 92
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_1
    return-void
.end method

.method public unableToStart()V
    .locals 4

    .line 60
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/FaceGetFeatureClient;->getListener()Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/FaceGetFeatureClient;->getListener()Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [I

    new-array v3, v1, [Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->onFeatureGet(Z[I[Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :cond_0
    goto :goto_0

    .line 63
    :catch_0
    move-exception v0

    .line 64
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "FaceGetFeatureClient"

    const-string v2, "Unable to send error"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 66
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method
