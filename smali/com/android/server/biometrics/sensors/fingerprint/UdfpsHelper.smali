.class public Lcom/android/server/biometrics/sensors/fingerprint/UdfpsHelper;
.super Ljava/lang/Object;
.source "UdfpsHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UdfpsHelper"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getReasonFromEnrollReason(I)I
    .locals 1
    .param p0, "reason"    # I

    .line 72
    packed-switch p0, :pswitch_data_0

    .line 78
    const/4 v0, 0x0

    return v0

    .line 76
    :pswitch_0
    const/4 v0, 0x2

    return v0

    .line 74
    :pswitch_1
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static hideUdfpsOverlay(ILandroid/hardware/fingerprint/IUdfpsOverlayController;)V
    .locals 3
    .param p0, "sensorId"    # I
    .param p1, "udfpsOverlayController"    # Landroid/hardware/fingerprint/IUdfpsOverlayController;

    .line 106
    if-nez p1, :cond_0

    .line 107
    return-void

    .line 110
    :cond_0
    :try_start_0
    invoke-interface {p1, p0}, Landroid/hardware/fingerprint/IUdfpsOverlayController;->hideUdfpsOverlay(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    goto :goto_0

    .line 111
    :catch_0
    move-exception v0

    .line 112
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "UdfpsHelper"

    const-string v2, "Remote exception when hiding the UDFPS overlay"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 114
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public static isValidAcquisitionMessage(Landroid/content/Context;II)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "acquireInfo"    # I
    .param p2, "vendorCode"    # I

    .line 155
    invoke-static {p0, p1, p2}, Landroid/hardware/fingerprint/FingerprintManager;->getAcquiredString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static onAcquiredGood(ILandroid/hardware/fingerprint/IUdfpsOverlayController;)V
    .locals 3
    .param p0, "sensorId"    # I
    .param p1, "udfpsOverlayController"    # Landroid/hardware/fingerprint/IUdfpsOverlayController;

    .line 118
    if-nez p1, :cond_0

    .line 119
    return-void

    .line 123
    :cond_0
    :try_start_0
    invoke-interface {p1, p0}, Landroid/hardware/fingerprint/IUdfpsOverlayController;->onAcquiredGood(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    goto :goto_0

    .line 124
    :catch_0
    move-exception v0

    .line 125
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "UdfpsHelper"

    const-string v2, "Remote exception when sending onAcquiredGood"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 127
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public static onEnrollmentHelp(ILandroid/hardware/fingerprint/IUdfpsOverlayController;)V
    .locals 3
    .param p0, "sensorId"    # I
    .param p1, "udfpsOverlayController"    # Landroid/hardware/fingerprint/IUdfpsOverlayController;

    .line 143
    if-nez p1, :cond_0

    .line 144
    return-void

    .line 147
    :cond_0
    :try_start_0
    invoke-interface {p1, p0}, Landroid/hardware/fingerprint/IUdfpsOverlayController;->onEnrollmentHelp(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    goto :goto_0

    .line 148
    :catch_0
    move-exception v0

    .line 149
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "UdfpsHelper"

    const-string v2, "Remote exception when sending onEnrollmentHelp"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 151
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public static onEnrollmentProgress(IILandroid/hardware/fingerprint/IUdfpsOverlayController;)V
    .locals 3
    .param p0, "sensorId"    # I
    .param p1, "remaining"    # I
    .param p2, "udfpsOverlayController"    # Landroid/hardware/fingerprint/IUdfpsOverlayController;

    .line 131
    if-nez p2, :cond_0

    .line 132
    return-void

    .line 135
    :cond_0
    :try_start_0
    invoke-interface {p2, p0, p1}, Landroid/hardware/fingerprint/IUdfpsOverlayController;->onEnrollmentProgress(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    goto :goto_0

    .line 136
    :catch_0
    move-exception v0

    .line 137
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "UdfpsHelper"

    const-string v2, "Remote exception when sending onEnrollmentProgress"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 139
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public static onFingerDown(Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;IIFF)V
    .locals 4
    .param p0, "daemon"    # Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "minor"    # F
    .param p4, "major"    # F

    .line 40
    nop

    .line 41
    invoke-static {p0}, Landroid/hardware/biometrics/fingerprint/V2_3/IBiometricsFingerprint;->castFrom(Landroid/os/IHwInterface;)Landroid/hardware/biometrics/fingerprint/V2_3/IBiometricsFingerprint;

    move-result-object v0

    .line 43
    .local v0, "extension":Landroid/hardware/biometrics/fingerprint/V2_3/IBiometricsFingerprint;
    const-string v1, "UdfpsHelper"

    if-nez v0, :cond_0

    .line 44
    const-string/jumbo v2, "onFingerDown | failed to cast the HIDL to V2_3"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    return-void

    .line 49
    :cond_0
    :try_start_0
    invoke-interface {v0, p1, p2, p3, p4}, Landroid/hardware/biometrics/fingerprint/V2_3/IBiometricsFingerprint;->onFingerDown(IIFF)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    goto :goto_0

    .line 50
    :catch_0
    move-exception v2

    .line 51
    .local v2, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "onFingerDown | RemoteException: "

    invoke-static {v1, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 53
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public static onFingerUp(Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;)V
    .locals 4
    .param p0, "daemon"    # Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    .line 56
    nop

    .line 57
    invoke-static {p0}, Landroid/hardware/biometrics/fingerprint/V2_3/IBiometricsFingerprint;->castFrom(Landroid/os/IHwInterface;)Landroid/hardware/biometrics/fingerprint/V2_3/IBiometricsFingerprint;

    move-result-object v0

    .line 59
    .local v0, "extension":Landroid/hardware/biometrics/fingerprint/V2_3/IBiometricsFingerprint;
    const-string v1, "UdfpsHelper"

    if-nez v0, :cond_0

    .line 60
    const-string/jumbo v2, "onFingerUp | failed to cast the HIDL to V2_3"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    return-void

    .line 65
    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/hardware/biometrics/fingerprint/V2_3/IBiometricsFingerprint;->onFingerUp()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    goto :goto_0

    .line 66
    :catch_0
    move-exception v2

    .line 67
    .local v2, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "onFingerUp | RemoteException: "

    invoke-static {v1, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 69
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public static showUdfpsOverlay(IILandroid/hardware/fingerprint/IUdfpsOverlayController;Lcom/android/server/biometrics/sensors/AcquisitionClient;)V
    .locals 4
    .param p0, "sensorId"    # I
    .param p1, "reason"    # I
    .param p2, "udfpsOverlayController"    # Landroid/hardware/fingerprint/IUdfpsOverlayController;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/hardware/fingerprint/IUdfpsOverlayController;",
            "Lcom/android/server/biometrics/sensors/AcquisitionClient<",
            "*>;)V"
        }
    .end annotation

    .line 85
    .local p3, "client":Lcom/android/server/biometrics/sensors/AcquisitionClient;, "Lcom/android/server/biometrics/sensors/AcquisitionClient<*>;"
    if-nez p2, :cond_0

    .line 86
    return-void

    .line 89
    :cond_0
    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/UdfpsHelper$1;

    invoke-direct {v0, p3}, Lcom/android/server/biometrics/sensors/fingerprint/UdfpsHelper$1;-><init>(Lcom/android/server/biometrics/sensors/AcquisitionClient;)V

    .line 98
    .local v0, "callback":Landroid/hardware/fingerprint/IUdfpsOverlayControllerCallback;
    :try_start_0
    invoke-interface {p2, p0, p1, v0}, Landroid/hardware/fingerprint/IUdfpsOverlayController;->showUdfpsOverlay(IILandroid/hardware/fingerprint/IUdfpsOverlayControllerCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    goto :goto_0

    .line 99
    :catch_0
    move-exception v1

    .line 100
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "UdfpsHelper"

    const-string v3, "Remote exception when showing the UDFPS overlay"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 102
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method
