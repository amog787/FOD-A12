.class public abstract Lcom/android/server/biometrics/BiometricSensor;
.super Ljava/lang/Object;
.source "BiometricSensor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/biometrics/BiometricSensor$SensorState;
    }
.end annotation


# static fields
.field static final STATE_AUTHENTICATING:I = 0x3

.field static final STATE_CANCELING:I = 0x4

.field static final STATE_COOKIE_RETURNED:I = 0x2

.field static final STATE_STOPPED:I = 0x5

.field static final STATE_UNKNOWN:I = 0x0

.field static final STATE_WAITING_FOR_COOKIE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "BiometricService/Sensor"


# instance fields
.field public final id:I

.field public final impl:Landroid/hardware/biometrics/IBiometricAuthenticator;

.field private final mContext:Landroid/content/Context;

.field private mCookie:I

.field private mError:I

.field private mSensorState:I

.field private mUpdatedStrength:I

.field public final modality:I

.field public final oemStrength:I


# direct methods
.method constructor <init>(Landroid/content/Context;IIILandroid/hardware/biometrics/IBiometricAuthenticator;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # I
    .param p3, "modality"    # I
    .param p4, "strength"    # I
    .param p5, "impl"    # Landroid/hardware/biometrics/IBiometricAuthenticator;

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-object p1, p0, Lcom/android/server/biometrics/BiometricSensor;->mContext:Landroid/content/Context;

    .line 94
    iput p2, p0, Lcom/android/server/biometrics/BiometricSensor;->id:I

    .line 95
    iput p3, p0, Lcom/android/server/biometrics/BiometricSensor;->modality:I

    .line 96
    iput p4, p0, Lcom/android/server/biometrics/BiometricSensor;->oemStrength:I

    .line 97
    iput-object p5, p0, Lcom/android/server/biometrics/BiometricSensor;->impl:Landroid/hardware/biometrics/IBiometricAuthenticator;

    .line 99
    iput p4, p0, Lcom/android/server/biometrics/BiometricSensor;->mUpdatedStrength:I

    .line 100
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricSensor;->goToStateUnknown()V

    .line 101
    return-void
.end method


# virtual methods
.method abstract confirmationAlwaysRequired(I)Z
.end method

.method abstract confirmationSupported()Z
.end method

.method getCookie()I
    .locals 1

    .line 160
    iget v0, p0, Lcom/android/server/biometrics/BiometricSensor;->mCookie:I

    return v0
.end method

.method getCurrentStrength()I
    .locals 2

    .line 152
    iget v0, p0, Lcom/android/server/biometrics/BiometricSensor;->oemStrength:I

    iget v1, p0, Lcom/android/server/biometrics/BiometricSensor;->mUpdatedStrength:I

    or-int/2addr v0, v1

    return v0
.end method

.method getSensorState()I
    .locals 1

    .line 156
    iget v0, p0, Lcom/android/server/biometrics/BiometricSensor;->mSensorState:I

    return v0
.end method

.method goToStateCancelling(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "opPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 133
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricSensor;->impl:Landroid/hardware/biometrics/IBiometricAuthenticator;

    invoke-interface {v0, p1, p2}, Landroid/hardware/biometrics/IBiometricAuthenticator;->cancelAuthenticationFromService(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 134
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/server/biometrics/BiometricSensor;->mSensorState:I

    .line 135
    return-void
.end method

.method goToStateCookieReturnedIfCookieMatches(I)V
    .locals 2
    .param p1, "cookie"    # I

    .line 121
    iget v0, p0, Lcom/android/server/biometrics/BiometricSensor;->mCookie:I

    if-ne p1, v0, :cond_0

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sensor("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/biometrics/BiometricSensor;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") matched cookie: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricService/Sensor"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/biometrics/BiometricSensor;->mSensorState:I

    .line 125
    :cond_0
    return-void
.end method

.method goToStateUnknown()V
    .locals 1

    .line 104
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/biometrics/BiometricSensor;->mSensorState:I

    .line 105
    iput v0, p0, Lcom/android/server/biometrics/BiometricSensor;->mCookie:I

    .line 106
    iput v0, p0, Lcom/android/server/biometrics/BiometricSensor;->mError:I

    .line 107
    return-void
.end method

.method goToStateWaitingForCookie(ZLandroid/os/IBinder;JILandroid/hardware/biometrics/IBiometricSensorReceiver;Ljava/lang/String;IZ)V
    .locals 12
    .param p1, "requireConfirmation"    # Z
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "sessionId"    # J
    .param p5, "userId"    # I
    .param p6, "sensorReceiver"    # Landroid/hardware/biometrics/IBiometricSensorReceiver;
    .param p7, "opPackageName"    # Ljava/lang/String;
    .param p8, "cookie"    # I
    .param p9, "allowBackgroundAuthentication"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 113
    move-object v0, p0

    move/from16 v11, p8

    iput v11, v0, Lcom/android/server/biometrics/BiometricSensor;->mCookie:I

    .line 114
    iget-object v1, v0, Lcom/android/server/biometrics/BiometricSensor;->impl:Landroid/hardware/biometrics/IBiometricAuthenticator;

    move v2, p1

    move-object v3, p2

    move-wide v4, p3

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-interface/range {v1 .. v10}, Landroid/hardware/biometrics/IBiometricAuthenticator;->prepareForAuthentication(ZLandroid/os/IBinder;JILandroid/hardware/biometrics/IBiometricSensorReceiver;Ljava/lang/String;IZ)V

    .line 117
    const/4 v1, 0x1

    iput v1, v0, Lcom/android/server/biometrics/BiometricSensor;->mSensorState:I

    .line 118
    return-void
.end method

.method goToStoppedStateIfCookieMatches(II)V
    .locals 2
    .param p1, "cookie"    # I
    .param p2, "error"    # I

    .line 138
    iget v0, p0, Lcom/android/server/biometrics/BiometricSensor;->mCookie:I

    if-ne p1, v0, :cond_0

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sensor("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/biometrics/BiometricSensor;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") now in STATE_STOPPED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricService/Sensor"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iput p2, p0, Lcom/android/server/biometrics/BiometricSensor;->mError:I

    .line 141
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/server/biometrics/BiometricSensor;->mSensorState:I

    .line 143
    :cond_0
    return-void
.end method

.method startSensor()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 128
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricSensor;->impl:Landroid/hardware/biometrics/IBiometricAuthenticator;

    iget v1, p0, Lcom/android/server/biometrics/BiometricSensor;->mCookie:I

    invoke-interface {v0, v1}, Landroid/hardware/biometrics/IBiometricAuthenticator;->startPreparedClient(I)V

    .line 129
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/biometrics/BiometricSensor;->mSensorState:I

    .line 130
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 177
    const/4 v0, 0x0

    .line 179
    .local v0, "properties":Landroid/hardware/biometrics/SensorPropertiesInternal;
    :try_start_0
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricSensor;->impl:Landroid/hardware/biometrics/IBiometricAuthenticator;

    iget-object v2, p0, Lcom/android/server/biometrics/BiometricSensor;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/hardware/biometrics/IBiometricAuthenticator;->getSensorProperties(Ljava/lang/String;)Landroid/hardware/biometrics/SensorPropertiesInternal;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 182
    goto :goto_0

    .line 180
    :catch_0
    move-exception v1

    .line 181
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "BiometricService/Sensor"

    const-string v3, "Remote exception"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 184
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ID("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/biometrics/BiometricSensor;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "), oemStrength: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/biometrics/BiometricSensor;->oemStrength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", updatedStrength: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/biometrics/BiometricSensor;->mUpdatedStrength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", modality "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/biometrics/BiometricSensor;->modality:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/biometrics/BiometricSensor;->mSensorState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", cookie: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/biometrics/BiometricSensor;->mCookie:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", props: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method updateStrength(I)V
    .locals 4
    .param p1, "newStrength"    # I

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateStrength: Before("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricSensor;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 170
    .local v0, "log":Ljava/lang/String;
    iput p1, p0, Lcom/android/server/biometrics/BiometricSensor;->mUpdatedStrength:I

    .line 171
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " After("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricSensor;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 172
    const-string v1, "BiometricService/Sensor"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    return-void
.end method
