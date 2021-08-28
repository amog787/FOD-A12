.class public Lcom/android/server/biometrics/sensors/face/hidl/FaceEnrollClient;
.super Lcom/android/server/biometrics/sensors/EnrollClient;
.source "FaceEnrollClient.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/biometrics/sensors/EnrollClient<",
        "Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FaceEnrollClient"


# instance fields
.field private final mDisabledFeatures:[I

.field private final mEnrollIgnoreList:[I

.field private final mEnrollIgnoreListVendor:[I

.field private final mSurfaceHandle:Landroid/os/NativeHandle;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/HalClientMonitor$LazyDaemon;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;I[BLjava/lang/String;Lcom/android/server/biometrics/sensors/BiometricUtils;[IILandroid/os/NativeHandle;I)V
    .locals 15
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "listener"    # Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;
    .param p5, "userId"    # I
    .param p6, "hardwareAuthToken"    # [B
    .param p7, "owner"    # Ljava/lang/String;
    .param p9, "disabledFeatures"    # [I
    .param p10, "timeoutSec"    # I
    .param p11, "surfaceHandle"    # Landroid/os/NativeHandle;
    .param p12, "sensorId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/server/biometrics/sensors/HalClientMonitor$LazyDaemon<",
            "Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;",
            ">;",
            "Landroid/os/IBinder;",
            "Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;",
            "I[B",
            "Ljava/lang/String;",
            "Lcom/android/server/biometrics/sensors/BiometricUtils<",
            "Landroid/hardware/face/Face;",
            ">;[II",
            "Landroid/os/NativeHandle;",
            "I)V"
        }
    .end annotation

    .line 60
    .local p2, "lazyDaemon":Lcom/android/server/biometrics/sensors/HalClientMonitor$LazyDaemon;, "Lcom/android/server/biometrics/sensors/HalClientMonitor$LazyDaemon<Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;>;"
    .local p8, "utils":Lcom/android/server/biometrics/sensors/BiometricUtils;, "Lcom/android/server/biometrics/sensors/BiometricUtils<Landroid/hardware/face/Face;>;"
    move-object v13, p0

    move-object/from16 v14, p9

    const/4 v10, 0x4

    const/4 v12, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p10

    move/from16 v11, p12

    invoke-direct/range {v0 .. v12}, Lcom/android/server/biometrics/sensors/EnrollClient;-><init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/HalClientMonitor$LazyDaemon;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;I[BLjava/lang/String;Lcom/android/server/biometrics/sensors/BiometricUtils;IIIZ)V

    .line 63
    array-length v0, v14

    invoke-static {v14, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, v13, Lcom/android/server/biometrics/sensors/face/hidl/FaceEnrollClient;->mDisabledFeatures:[I

    .line 64
    move-object/from16 v0, p11

    iput-object v0, v13, Lcom/android/server/biometrics/sensors/face/hidl/FaceEnrollClient;->mSurfaceHandle:Landroid/os/NativeHandle;

    .line 65
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/FaceEnrollClient;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 66
    const v2, 0x1070047

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    iput-object v1, v13, Lcom/android/server/biometrics/sensors/face/hidl/FaceEnrollClient;->mEnrollIgnoreList:[I

    .line 67
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/FaceEnrollClient;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 68
    const v2, 0x107004a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    iput-object v1, v13, Lcom/android/server/biometrics/sensors/face/hidl/FaceEnrollClient;->mEnrollIgnoreListVendor:[I

    .line 69
    return-void
.end method


# virtual methods
.method protected hasReachedEnrollmentLimit()Z
    .locals 4

    .line 79
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/FaceEnrollClient;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0061

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 81
    .local v0, "limit":I
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceEnrollClient;->mBiometricUtils:Lcom/android/server/biometrics/sensors/BiometricUtils;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/FaceEnrollClient;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/FaceEnrollClient;->getTargetUserId()I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/android/server/biometrics/sensors/BiometricUtils;->getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v1

    .line 82
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 83
    .local v1, "enrolled":I
    if-lt v1, v0, :cond_0

    .line 84
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Too many faces registered, user: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/FaceEnrollClient;->getTargetUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FaceEnrollClient"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    const/4 v2, 0x1

    return v2

    .line 87
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public onAcquired(II)V
    .locals 1
    .param p1, "acquireInfo"    # I
    .param p2, "vendorCode"    # I

    .line 93
    const/16 v0, 0x16

    if-ne p1, v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceEnrollClient;->mEnrollIgnoreListVendor:[I

    invoke-static {v0, p2}, Lcom/android/server/biometrics/Utils;->listContains([II)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .local v0, "shouldSend":Z
    goto :goto_0

    .line 96
    .end local v0    # "shouldSend":Z
    :cond_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceEnrollClient;->mEnrollIgnoreList:[I

    invoke-static {v0, p1}, Lcom/android/server/biometrics/Utils;->listContains([II)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 98
    .restart local v0    # "shouldSend":Z
    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/biometrics/sensors/face/hidl/FaceEnrollClient;->onAcquiredInternal(IIZ)V

    .line 99
    return-void
.end method

.method protected startHalOperation()V
    .locals 8

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 104
    .local v0, "token":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceEnrollClient;->mHardwareAuthToken:[B

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    aget-byte v5, v1, v4

    .line 105
    .local v5, "b":B
    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    .end local v5    # "b":B
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 107
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 108
    .local v1, "disabledFeatures":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceEnrollClient;->mDisabledFeatures:[I

    array-length v4, v2

    move v5, v3

    :goto_1
    if-ge v5, v4, :cond_1

    aget v6, v2, v5

    .line 109
    .local v6, "disabledFeature":I
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    .end local v6    # "disabledFeature":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 113
    :cond_1
    const/4 v2, 0x2

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/FaceEnrollClient;->getFreshDaemon()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    iget v5, p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceEnrollClient;->mTimeoutSec:I

    invoke-interface {v4, v0, v5, v1}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;->enroll(Ljava/util/ArrayList;ILjava/util/ArrayList;)I

    move-result v4

    .line 115
    .local v4, "status":I
    if-eqz v4, :cond_2

    .line 116
    invoke-virtual {p0, v2, v3}, Lcom/android/server/biometrics/sensors/face/hidl/FaceEnrollClient;->onError(II)V

    .line 117
    iget-object v5, p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceEnrollClient;->mCallback:Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;

    invoke-interface {v5, p0, v3}, Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    .end local v4    # "status":I
    :cond_2
    goto :goto_2

    .line 119
    :catch_0
    move-exception v4

    .line 120
    .local v4, "e":Landroid/os/RemoteException;
    const-string v5, "FaceEnrollClient"

    const-string v6, "Remote exception when requesting enroll"

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 121
    invoke-virtual {p0, v2, v3}, Lcom/android/server/biometrics/sensors/face/hidl/FaceEnrollClient;->onError(II)V

    .line 122
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceEnrollClient;->mCallback:Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;

    invoke-interface {v2, p0, v3}, Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    .line 124
    .end local v4    # "e":Landroid/os/RemoteException;
    :goto_2
    return-void
.end method

.method protected stopHalOperation()V
    .locals 3

    .line 129
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/FaceEnrollClient;->getFreshDaemon()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    invoke-interface {v0}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;->cancel()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    goto :goto_0

    .line 130
    :catch_0
    move-exception v0

    .line 131
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "FaceEnrollClient"

    const-string v2, "Remote exception when requesting cancel"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 132
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/server/biometrics/sensors/face/hidl/FaceEnrollClient;->onError(II)V

    .line 133
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceEnrollClient;->mCallback:Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;

    invoke-interface {v1, p0, v2}, Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    .line 135
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method protected wrapCallbackForStart(Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;)Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;
    .locals 4
    .param p1, "callback"    # Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;

    .line 74
    new-instance v0, Lcom/android/server/biometrics/sensors/BaseClientMonitor$CompositeCallback;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/FaceEnrollClient;->createALSCallback()Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-direct {v0, v1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor$CompositeCallback;-><init>([Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;)V

    return-object v0
.end method
