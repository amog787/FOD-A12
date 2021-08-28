.class public abstract Lcom/android/server/biometrics/sensors/EnrollClient;
.super Lcom/android/server/biometrics/sensors/AcquisitionClient;
.source "EnrollClient.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/android/server/biometrics/sensors/AcquisitionClient<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Biometrics/EnrollClient"


# instance fields
.field protected final mBiometricUtils:Lcom/android/server/biometrics/sensors/BiometricUtils;

.field private mEnrollmentStartTimeMs:J

.field protected final mHardwareAuthToken:[B

.field private final mShouldVibrate:Z

.field protected final mTimeoutSec:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/HalClientMonitor$LazyDaemon;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;I[BLjava/lang/String;Lcom/android/server/biometrics/sensors/BiometricUtils;IIIZ)V
    .locals 14
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "listener"    # Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;
    .param p5, "userId"    # I
    .param p6, "hardwareAuthToken"    # [B
    .param p7, "owner"    # Ljava/lang/String;
    .param p8, "utils"    # Lcom/android/server/biometrics/sensors/BiometricUtils;
    .param p9, "timeoutSec"    # I
    .param p10, "statsModality"    # I
    .param p11, "sensorId"    # I
    .param p12, "shouldVibrate"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/server/biometrics/sensors/HalClientMonitor$LazyDaemon<",
            "TT;>;",
            "Landroid/os/IBinder;",
            "Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;",
            "I[B",
            "Ljava/lang/String;",
            "Lcom/android/server/biometrics/sensors/BiometricUtils;",
            "IIIZ)V"
        }
    .end annotation

    .line 55
    .local p0, "this":Lcom/android/server/biometrics/sensors/EnrollClient;, "Lcom/android/server/biometrics/sensors/EnrollClient<TT;>;"
    .local p2, "lazyDaemon":Lcom/android/server/biometrics/sensors/HalClientMonitor$LazyDaemon;, "Lcom/android/server/biometrics/sensors/HalClientMonitor$LazyDaemon<TT;>;"
    move-object v12, p0

    move-object/from16 v13, p6

    const/4 v7, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p7

    move/from16 v8, p11

    move/from16 v9, p10

    invoke-direct/range {v0 .. v11}, Lcom/android/server/biometrics/sensors/AcquisitionClient;-><init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/HalClientMonitor$LazyDaemon;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;ILjava/lang/String;IIIII)V

    .line 58
    move-object/from16 v0, p8

    iput-object v0, v12, Lcom/android/server/biometrics/sensors/EnrollClient;->mBiometricUtils:Lcom/android/server/biometrics/sensors/BiometricUtils;

    .line 59
    array-length v1, v13

    invoke-static {v13, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    iput-object v1, v12, Lcom/android/server/biometrics/sensors/EnrollClient;->mHardwareAuthToken:[B

    .line 60
    move/from16 v1, p9

    iput v1, v12, Lcom/android/server/biometrics/sensors/EnrollClient;->mTimeoutSec:I

    .line 61
    move/from16 v2, p12

    iput-boolean v2, v12, Lcom/android/server/biometrics/sensors/EnrollClient;->mShouldVibrate:Z

    .line 62
    return-void
.end method


# virtual methods
.method public getProtoEnum()I
    .locals 1

    .line 114
    .local p0, "this":Lcom/android/server/biometrics/sensors/EnrollClient;, "Lcom/android/server/biometrics/sensors/EnrollClient<TT;>;"
    const/4 v0, 0x2

    return v0
.end method

.method protected abstract hasReachedEnrollmentLimit()Z
.end method

.method public interruptsPrecedingClients()Z
    .locals 1

    .line 119
    .local p0, "this":Lcom/android/server/biometrics/sensors/EnrollClient;, "Lcom/android/server/biometrics/sensors/EnrollClient<TT;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public onEnrollResult(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V
    .locals 6
    .param p1, "identifier"    # Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;
    .param p2, "remaining"    # I

    .line 65
    .local p0, "this":Lcom/android/server/biometrics/sensors/EnrollClient;, "Lcom/android/server/biometrics/sensors/EnrollClient<TT;>;"
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/EnrollClient;->mShouldVibrate:Z

    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/EnrollClient;->vibrateSuccess()V

    .line 69
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/EnrollClient;->getListener()Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    move-result-object v0

    .line 71
    .local v0, "listener":Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;
    if-eqz v0, :cond_1

    .line 72
    :try_start_0
    invoke-virtual {v0, p1, p2}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->onEnrollResult(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 74
    :catch_0
    move-exception v1

    .line 75
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "Biometrics/EnrollClient"

    const-string v3, "Remote exception"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 76
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    nop

    .line 78
    :goto_1
    if-nez p2, :cond_2

    .line 79
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/EnrollClient;->mBiometricUtils:Lcom/android/server/biometrics/sensors/BiometricUtils;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/EnrollClient;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/EnrollClient;->getTargetUserId()I

    move-result v3

    invoke-interface {v1, v2, v3, p1}, Lcom/android/server/biometrics/sensors/BiometricUtils;->addBiometricForUser(Landroid/content/Context;ILandroid/hardware/biometrics/BiometricAuthenticator$Identifier;)V

    .line 80
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/EnrollClient;->getTargetUserId()I

    move-result v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/biometrics/sensors/EnrollClient;->mEnrollmentStartTimeMs:J

    sub-long/2addr v2, v4

    const/4 v4, 0x1

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/server/biometrics/sensors/EnrollClient;->logOnEnrolled(IJZ)V

    .line 82
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/EnrollClient;->mCallback:Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;

    invoke-interface {v1, p0, v4}, Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    .line 84
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/EnrollClient;->notifyUserActivity()V

    .line 85
    return-void
.end method

.method public onError(II)V
    .locals 5
    .param p1, "error"    # I
    .param p2, "vendorCode"    # I

    .line 107
    .local p0, "this":Lcom/android/server/biometrics/sensors/EnrollClient;, "Lcom/android/server/biometrics/sensors/EnrollClient<TT;>;"
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/EnrollClient;->getTargetUserId()I

    move-result v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/server/biometrics/sensors/EnrollClient;->mEnrollmentStartTimeMs:J

    sub-long/2addr v1, v3

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/server/biometrics/sensors/EnrollClient;->logOnEnrolled(IJZ)V

    .line 109
    invoke-super {p0, p1, p2}, Lcom/android/server/biometrics/sensors/AcquisitionClient;->onError(II)V

    .line 110
    return-void
.end method

.method public start(Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;)V
    .locals 2
    .param p1, "callback"    # Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;

    .line 89
    .local p0, "this":Lcom/android/server/biometrics/sensors/EnrollClient;, "Lcom/android/server/biometrics/sensors/EnrollClient<TT;>;"
    invoke-super {p0, p1}, Lcom/android/server/biometrics/sensors/AcquisitionClient;->start(Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;)V

    .line 91
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/EnrollClient;->hasReachedEnrollmentLimit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    const-string v0, "Biometrics/EnrollClient"

    const-string v1, "Reached enrollment limit"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    const/4 v0, 0x0

    invoke-interface {p1, p0, v0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    .line 94
    return-void

    .line 97
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/biometrics/sensors/EnrollClient;->mEnrollmentStartTimeMs:J

    .line 98
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/EnrollClient;->startHalOperation()V

    .line 99
    return-void
.end method
