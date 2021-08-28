.class public final Lcom/android/server/biometrics/AuthSession;
.super Ljava/lang/Object;
.source "AuthSession.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/biometrics/AuthSession$ClientDeathReceiver;,
        Lcom/android/server/biometrics/AuthSession$MultiSensorState;,
        Lcom/android/server/biometrics/AuthSession$SessionState;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "BiometricService/AuthSession"


# instance fields
.field private mAuthenticatedTimeMs:J

.field private final mClientDeathReceiver:Lcom/android/server/biometrics/AuthSession$ClientDeathReceiver;

.field private final mClientReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

.field private final mContext:Landroid/content/Context;

.field private final mDebugEnabled:Z

.field private mErrorEscrow:I

.field private final mFingerprintSensorProperties:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;",
            ">;"
        }
    .end annotation
.end field

.field private final mKeyStore:Landroid/security/KeyStore;

.field private mMultiSensorMode:I

.field private mMultiSensorState:I

.field private final mOpPackageName:Ljava/lang/String;

.field private final mOperationId:J

.field final mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

.field final mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

.field private final mRandom:Ljava/util/Random;

.field private final mSensorReceiver:Landroid/hardware/biometrics/IBiometricSensorReceiver;

.field private mSensors:[I

.field private mStartTimeMs:J

.field private mState:I

.field private final mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field private final mSysuiReceiver:Landroid/hardware/biometrics/IBiometricSysuiReceiver;

.field final mToken:Landroid/os/IBinder;

.field private mTokenEscrow:[B

.field private final mUserId:I

.field private mVendorCodeEscrow:I


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/internal/statusbar/IStatusBarService;Landroid/hardware/biometrics/IBiometricSysuiReceiver;Landroid/security/KeyStore;Ljava/util/Random;Lcom/android/server/biometrics/AuthSession$ClientDeathReceiver;Lcom/android/server/biometrics/PreAuthInfo;Landroid/os/IBinder;JILandroid/hardware/biometrics/IBiometricSensorReceiver;Landroid/hardware/biometrics/IBiometricServiceReceiver;Ljava/lang/String;Landroid/hardware/biometrics/PromptInfo;ZLjava/util/List;)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "statusBarService"    # Lcom/android/internal/statusbar/IStatusBarService;
    .param p3, "sysuiReceiver"    # Landroid/hardware/biometrics/IBiometricSysuiReceiver;
    .param p4, "keystore"    # Landroid/security/KeyStore;
    .param p5, "random"    # Ljava/util/Random;
    .param p6, "clientDeathReceiver"    # Lcom/android/server/biometrics/AuthSession$ClientDeathReceiver;
    .param p7, "preAuthInfo"    # Lcom/android/server/biometrics/PreAuthInfo;
    .param p8, "token"    # Landroid/os/IBinder;
    .param p9, "operationId"    # J
    .param p11, "userId"    # I
    .param p12, "sensorReceiver"    # Landroid/hardware/biometrics/IBiometricSensorReceiver;
    .param p13, "clientReceiver"    # Landroid/hardware/biometrics/IBiometricServiceReceiver;
    .param p14, "opPackageName"    # Ljava/lang/String;
    .param p15, "promptInfo"    # Landroid/hardware/biometrics/PromptInfo;
    .param p16, "debugEnabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/internal/statusbar/IStatusBarService;",
            "Landroid/hardware/biometrics/IBiometricSysuiReceiver;",
            "Landroid/security/KeyStore;",
            "Ljava/util/Random;",
            "Lcom/android/server/biometrics/AuthSession$ClientDeathReceiver;",
            "Lcom/android/server/biometrics/PreAuthInfo;",
            "Landroid/os/IBinder;",
            "JI",
            "Landroid/hardware/biometrics/IBiometricSensorReceiver;",
            "Landroid/hardware/biometrics/IBiometricServiceReceiver;",
            "Ljava/lang/String;",
            "Landroid/hardware/biometrics/PromptInfo;",
            "Z",
            "Ljava/util/List<",
            "Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;",
            ">;)V"
        }
    .end annotation

    .line 172
    .local p17, "fingerprintSensorProperties":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p7

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 141
    const/4 v0, 0x0

    iput v0, v1, Lcom/android/server/biometrics/AuthSession;->mState:I

    .line 173
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Creating AuthSession with: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BiometricService/AuthSession"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    move-object/from16 v3, p1

    iput-object v3, v1, Lcom/android/server/biometrics/AuthSession;->mContext:Landroid/content/Context;

    .line 175
    move-object/from16 v5, p2

    iput-object v5, v1, Lcom/android/server/biometrics/AuthSession;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 176
    move-object/from16 v6, p3

    iput-object v6, v1, Lcom/android/server/biometrics/AuthSession;->mSysuiReceiver:Landroid/hardware/biometrics/IBiometricSysuiReceiver;

    .line 177
    move-object/from16 v7, p4

    iput-object v7, v1, Lcom/android/server/biometrics/AuthSession;->mKeyStore:Landroid/security/KeyStore;

    .line 178
    move-object/from16 v8, p5

    iput-object v8, v1, Lcom/android/server/biometrics/AuthSession;->mRandom:Ljava/util/Random;

    .line 179
    move-object/from16 v9, p6

    iput-object v9, v1, Lcom/android/server/biometrics/AuthSession;->mClientDeathReceiver:Lcom/android/server/biometrics/AuthSession$ClientDeathReceiver;

    .line 180
    iput-object v2, v1, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    .line 181
    move-object/from16 v10, p8

    iput-object v10, v1, Lcom/android/server/biometrics/AuthSession;->mToken:Landroid/os/IBinder;

    .line 182
    move-wide/from16 v11, p9

    iput-wide v11, v1, Lcom/android/server/biometrics/AuthSession;->mOperationId:J

    .line 183
    move/from16 v13, p11

    iput v13, v1, Lcom/android/server/biometrics/AuthSession;->mUserId:I

    .line 184
    move-object/from16 v14, p12

    iput-object v14, v1, Lcom/android/server/biometrics/AuthSession;->mSensorReceiver:Landroid/hardware/biometrics/IBiometricSensorReceiver;

    .line 185
    move-object/from16 v15, p13

    iput-object v15, v1, Lcom/android/server/biometrics/AuthSession;->mClientReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    .line 186
    move-object/from16 v2, p14

    iput-object v2, v1, Lcom/android/server/biometrics/AuthSession;->mOpPackageName:Ljava/lang/String;

    .line 187
    move-object/from16 v2, p15

    iput-object v2, v1, Lcom/android/server/biometrics/AuthSession;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    .line 188
    move/from16 v2, p16

    iput-boolean v2, v1, Lcom/android/server/biometrics/AuthSession;->mDebugEnabled:Z

    .line 189
    move-object/from16 v2, p17

    iput-object v2, v1, Lcom/android/server/biometrics/AuthSession;->mFingerprintSensorProperties:Ljava/util/List;

    .line 192
    :try_start_0
    invoke-interface/range {p13 .. p13}, Landroid/hardware/biometrics/IBiometricServiceReceiver;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    goto :goto_0

    .line 193
    :catch_0
    move-exception v0

    .line 194
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "Unable to link to death"

    invoke-static {v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/biometrics/AuthSession;->setSensorsToStateUnknown()V

    .line 198
    return-void
.end method

.method private cancelAllSensors()V
    .locals 1

    .line 359
    sget-object v0, Lcom/android/server/biometrics/AuthSession$$ExternalSyntheticLambda0;->INSTANCE:Lcom/android/server/biometrics/AuthSession$$ExternalSyntheticLambda0;

    invoke-direct {p0, v0}, Lcom/android/server/biometrics/AuthSession;->cancelAllSensors(Ljava/util/function/Function;)V

    .line 360
    return-void
.end method

.method private cancelAllSensors(Ljava/util/function/Function;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Lcom/android/server/biometrics/BiometricSensor;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 367
    .local p1, "filter":Ljava/util/function/Function;, "Ljava/util/function/Function<Lcom/android/server/biometrics/BiometricSensor;Ljava/lang/Boolean;>;"
    const-string v0, "BiometricService/AuthSession"

    iget-object v1, p0, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    iget-object v1, v1, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/biometrics/BiometricSensor;

    .line 369
    .local v2, "sensor":Lcom/android/server/biometrics/BiometricSensor;
    :try_start_0
    invoke-interface {p1, v2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 370
    .local v3, "shouldCancel":Z
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sensorId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Lcom/android/server/biometrics/BiometricSensor;->id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", shouldCancel: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    if-eqz v3, :cond_0

    .line 372
    iget-object v4, p0, Lcom/android/server/biometrics/AuthSession;->mToken:Landroid/os/IBinder;

    iget-object v5, p0, Lcom/android/server/biometrics/AuthSession;->mOpPackageName:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lcom/android/server/biometrics/BiometricSensor;->goToStateCancelling(Landroid/os/IBinder;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 376
    .end local v3    # "shouldCancel":Z
    :cond_0
    goto :goto_1

    .line 374
    :catch_0
    move-exception v3

    .line 375
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "Unable to cancel authentication"

    invoke-static {v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    .end local v2    # "sensor":Lcom/android/server/biometrics/BiometricSensor;
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 378
    :cond_1
    return-void
.end method

.method private containsCookie(I)Z
    .locals 3
    .param p1, "cookie"    # I

    .line 811
    iget-object v0, p0, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    iget-object v0, v0, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/BiometricSensor;

    .line 812
    .local v1, "sensor":Lcom/android/server/biometrics/BiometricSensor;
    invoke-virtual {v1}, Lcom/android/server/biometrics/BiometricSensor;->getCookie()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 813
    const/4 v0, 0x1

    return v0

    .line 815
    .end local v1    # "sensor":Lcom/android/server/biometrics/BiometricSensor;
    :cond_0
    goto :goto_0

    .line 816
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private getAcquiredMessageForSensor(III)Ljava/lang/String;
    .locals 2
    .param p1, "sensorId"    # I
    .param p2, "acquiredInfo"    # I
    .param p3, "vendorCode"    # I

    .line 871
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/AuthSession;->sensorIdToModality(I)I

    move-result v0

    .line 872
    .local v0, "modality":I
    sparse-switch v0, :sswitch_data_0

    .line 878
    const/4 v1, 0x0

    return-object v1

    .line 876
    :sswitch_0
    iget-object v1, p0, Lcom/android/server/biometrics/AuthSession;->mContext:Landroid/content/Context;

    invoke-static {v1, p2, p3}, Landroid/hardware/face/FaceManager;->getAuthHelpMessage(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 874
    :sswitch_1
    iget-object v1, p0, Lcom/android/server/biometrics/AuthSession;->mContext:Landroid/content/Context;

    invoke-static {v1, p2, p3}, Landroid/hardware/fingerprint/FingerprintManager;->getAcquiredString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x8 -> :sswitch_0
    .end sparse-switch
.end method

.method private getEligibleModalities()I
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    invoke-virtual {v0}, Lcom/android/server/biometrics/PreAuthInfo;->getEligibleModalities()I

    move-result v0

    return v0
.end method

.method private static getMultiSensorModeForNewSession(Ljava/util/Collection;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/android/server/biometrics/BiometricSensor;",
            ">;)I"
        }
    .end annotation

    .line 884
    .local p0, "sensors":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/biometrics/BiometricSensor;>;"
    const/4 v0, 0x0

    .line 885
    .local v0, "hasFace":Z
    const/4 v1, 0x0

    .line 887
    .local v1, "hasFingerprint":Z
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/biometrics/BiometricSensor;

    .line 888
    .local v3, "sensor":Lcom/android/server/biometrics/BiometricSensor;
    iget v4, v3, Lcom/android/server/biometrics/BiometricSensor;->modality:I

    const/16 v5, 0x8

    if-ne v4, v5, :cond_0

    .line 889
    const/4 v0, 0x1

    goto :goto_1

    .line 890
    :cond_0
    iget v4, v3, Lcom/android/server/biometrics/BiometricSensor;->modality:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 891
    const/4 v1, 0x1

    .line 893
    .end local v3    # "sensor":Lcom/android/server/biometrics/BiometricSensor;
    :cond_1
    :goto_1
    goto :goto_0

    .line 895
    :cond_2
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    .line 896
    const/4 v2, 0x1

    return v2

    .line 898
    :cond_3
    const/4 v2, 0x0

    return v2
.end method

.method private hasPausableBiometric()Z
    .locals 4

    .line 830
    iget-object v0, p0, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    iget-object v0, v0, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/BiometricSensor;

    .line 831
    .local v1, "sensor":Lcom/android/server/biometrics/BiometricSensor;
    iget v2, v1, Lcom/android/server/biometrics/BiometricSensor;->modality:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    .line 832
    const/4 v0, 0x1

    return v0

    .line 834
    .end local v1    # "sensor":Lcom/android/server/biometrics/BiometricSensor;
    :cond_0
    goto :goto_0

    .line 835
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private isAllowDeviceCredential()Z
    .locals 1

    .line 820
    iget-object v0, p0, Lcom/android/server/biometrics/AuthSession;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-static {v0}, Lcom/android/server/biometrics/Utils;->isCredentialRequested(Landroid/hardware/biometrics/PromptInfo;)Z

    move-result v0

    return v0
.end method

.method private isConfirmationRequired(Lcom/android/server/biometrics/BiometricSensor;)Z
    .locals 1
    .param p1, "sensor"    # Lcom/android/server/biometrics/BiometricSensor;

    .line 321
    invoke-virtual {p1}, Lcom/android/server/biometrics/BiometricSensor;->confirmationSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/server/biometrics/AuthSession;->mUserId:I

    .line 322
    invoke-virtual {p1, v0}, Lcom/android/server/biometrics/BiometricSensor;->confirmationAlwaysRequired(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    iget-boolean v0, v0, Lcom/android/server/biometrics/PreAuthInfo;->confirmationRequested:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 321
    :goto_0
    return v0
.end method

.method private isConfirmationRequiredByAnyEligibleSensor()Z
    .locals 3

    .line 327
    iget-object v0, p0, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    iget-object v0, v0, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/BiometricSensor;

    .line 328
    .local v1, "sensor":Lcom/android/server/biometrics/BiometricSensor;
    invoke-direct {p0, v1}, Lcom/android/server/biometrics/AuthSession;->isConfirmationRequired(Lcom/android/server/biometrics/BiometricSensor;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 329
    const/4 v0, 0x1

    return v0

    .line 331
    .end local v1    # "sensor":Lcom/android/server/biometrics/BiometricSensor;
    :cond_0
    goto :goto_0

    .line 332
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$cancelAllSensors$2(Lcom/android/server/biometrics/BiometricSensor;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "sensor"    # Lcom/android/server/biometrics/BiometricSensor;

    .line 359
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$startAllPreparedFingerprintSensors$1(Lcom/android/server/biometrics/BiometricSensor;)Ljava/lang/Boolean;
    .locals 2
    .param p0, "sensor"    # Lcom/android/server/biometrics/BiometricSensor;

    .line 340
    iget v0, p0, Lcom/android/server/biometrics/BiometricSensor;->modality:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$startAllPreparedSensorsExceptFingerprint$0(Lcom/android/server/biometrics/BiometricSensor;)Ljava/lang/Boolean;
    .locals 2
    .param p0, "sensor"    # Lcom/android/server/biometrics/BiometricSensor;

    .line 336
    iget v0, p0, Lcom/android/server/biometrics/BiometricSensor;->modality:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private logOnDialogDismissed(I)V
    .locals 18
    .param p1, "reason"    # I

    .line 654
    move-object/from16 v0, p0

    move/from16 v1, p1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 658
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, v0, Lcom/android/server/biometrics/AuthSession;->mAuthenticatedTimeMs:J

    sub-long/2addr v2, v4

    .line 670
    .local v2, "latency":J
    const/16 v6, 0x58

    .line 671
    invoke-direct/range {p0 .. p0}, Lcom/android/server/biometrics/AuthSession;->statsModality()I

    move-result v7

    iget v8, v0, Lcom/android/server/biometrics/AuthSession;->mUserId:I

    .line 673
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/AuthSession;->isCrypto()Z

    move-result v9

    const/4 v10, 0x2

    iget-object v4, v0, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    iget-boolean v11, v4, Lcom/android/server/biometrics/PreAuthInfo;->confirmationRequested:Z

    const/4 v12, 0x3

    iget-boolean v15, v0, Lcom/android/server/biometrics/AuthSession;->mDebugEnabled:Z

    const/16 v16, -0x1

    const/high16 v17, -0x40800000    # -1.0f

    .line 670
    move-wide v13, v2

    invoke-static/range {v6 .. v17}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIZIZIJZIF)V

    .line 681
    .end local v2    # "latency":J
    goto :goto_1

    .line 682
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, v0, Lcom/android/server/biometrics/AuthSession;->mStartTimeMs:J

    sub-long/2addr v2, v4

    .line 684
    .restart local v2    # "latency":J
    const/4 v4, 0x2

    if-ne v1, v4, :cond_1

    .line 685
    const/16 v4, 0xd

    move v12, v4

    goto :goto_0

    .line 686
    :cond_1
    const/4 v4, 0x3

    if-ne v1, v4, :cond_2

    .line 687
    const/16 v4, 0xa

    move v12, v4

    goto :goto_0

    .line 688
    :cond_2
    const/4 v4, 0x0

    move v12, v4

    :goto_0
    nop

    .line 700
    .local v12, "error":I
    const/16 v6, 0x59

    .line 701
    invoke-direct/range {p0 .. p0}, Lcom/android/server/biometrics/AuthSession;->statsModality()I

    move-result v7

    iget v8, v0, Lcom/android/server/biometrics/AuthSession;->mUserId:I

    .line 703
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/AuthSession;->isCrypto()Z

    move-result v9

    const/4 v10, 0x2

    const/4 v11, 0x2

    const/4 v13, 0x0

    iget-boolean v14, v0, Lcom/android/server/biometrics/AuthSession;->mDebugEnabled:Z

    const/16 v17, -0x1

    .line 700
    move-wide v15, v2

    invoke-static/range {v6 .. v17}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIZIIIIZJI)V

    .line 712
    .end local v2    # "latency":J
    .end local v12    # "error":I
    :goto_1
    return-void
.end method

.method private sensorIdToModality(I)I
    .locals 3
    .param p1, "sensorId"    # I

    .line 861
    iget-object v0, p0, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    iget-object v0, v0, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/BiometricSensor;

    .line 862
    .local v1, "sensor":Lcom/android/server/biometrics/BiometricSensor;
    iget v2, v1, Lcom/android/server/biometrics/BiometricSensor;->id:I

    if-ne p1, v2, :cond_0

    .line 863
    iget v0, v1, Lcom/android/server/biometrics/BiometricSensor;->modality:I

    return v0

    .line 865
    .end local v1    # "sensor":Lcom/android/server/biometrics/BiometricSensor;
    :cond_0
    goto :goto_0

    .line 866
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown sensor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricService/AuthSession"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    const/4 v0, 0x0

    return v0
.end method

.method private setSensorsToStateUnknown()V
    .locals 2

    .line 219
    iget-object v0, p0, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    iget-object v0, v0, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/BiometricSensor;

    .line 223
    .local v1, "sensor":Lcom/android/server/biometrics/BiometricSensor;
    invoke-virtual {v1}, Lcom/android/server/biometrics/BiometricSensor;->goToStateUnknown()V

    .line 224
    .end local v1    # "sensor":Lcom/android/server/biometrics/BiometricSensor;
    goto :goto_0

    .line 225
    :cond_0
    return-void
.end method

.method private setSensorsToStateWaitingForCookie()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 228
    iget-object v0, p0, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    iget-object v0, v0, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/BiometricSensor;

    .line 229
    .local v1, "sensor":Lcom/android/server/biometrics/BiometricSensor;
    iget-object v2, p0, Lcom/android/server/biometrics/AuthSession;->mRandom:Ljava/util/Random;

    const v3, 0x7ffffffe

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/lit8 v12, v2, 0x1

    .line 230
    .local v12, "cookie":I
    invoke-direct {p0, v1}, Lcom/android/server/biometrics/AuthSession;->isConfirmationRequired(Lcom/android/server/biometrics/BiometricSensor;)Z

    move-result v13

    .line 235
    .local v13, "requireConfirmation":Z
    iget-object v4, p0, Lcom/android/server/biometrics/AuthSession;->mToken:Landroid/os/IBinder;

    iget-wide v5, p0, Lcom/android/server/biometrics/AuthSession;->mOperationId:J

    iget v7, p0, Lcom/android/server/biometrics/AuthSession;->mUserId:I

    iget-object v8, p0, Lcom/android/server/biometrics/AuthSession;->mSensorReceiver:Landroid/hardware/biometrics/IBiometricSensorReceiver;

    iget-object v9, p0, Lcom/android/server/biometrics/AuthSession;->mOpPackageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/biometrics/AuthSession;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    .line 237
    invoke-virtual {v2}, Landroid/hardware/biometrics/PromptInfo;->isAllowBackgroundAuthentication()Z

    move-result v11

    .line 235
    move-object v2, v1

    move v3, v13

    move v10, v12

    invoke-virtual/range {v2 .. v11}, Lcom/android/server/biometrics/BiometricSensor;->goToStateWaitingForCookie(ZLandroid/os/IBinder;JILandroid/hardware/biometrics/IBiometricSensorReceiver;Ljava/lang/String;IZ)V

    .line 238
    .end local v1    # "sensor":Lcom/android/server/biometrics/BiometricSensor;
    .end local v12    # "cookie":I
    .end local v13    # "requireConfirmation":Z
    goto :goto_0

    .line 239
    :cond_0
    return-void
.end method

.method private startAllPreparedFingerprintSensors()V
    .locals 1

    .line 340
    sget-object v0, Lcom/android/server/biometrics/AuthSession$$ExternalSyntheticLambda1;->INSTANCE:Lcom/android/server/biometrics/AuthSession$$ExternalSyntheticLambda1;

    invoke-direct {p0, v0}, Lcom/android/server/biometrics/AuthSession;->startAllPreparedSensors(Ljava/util/function/Function;)V

    .line 341
    return-void
.end method

.method private startAllPreparedSensors(Ljava/util/function/Function;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Lcom/android/server/biometrics/BiometricSensor;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 344
    .local p1, "filter":Ljava/util/function/Function;, "Ljava/util/function/Function<Lcom/android/server/biometrics/BiometricSensor;Ljava/lang/Boolean;>;"
    iget-object v0, p0, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    iget-object v0, v0, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/BiometricSensor;

    .line 345
    .local v1, "sensor":Lcom/android/server/biometrics/BiometricSensor;
    invoke-interface {p1, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 350
    :try_start_0
    invoke-virtual {v1}, Lcom/android/server/biometrics/BiometricSensor;->startSensor()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 353
    goto :goto_1

    .line 351
    :catch_0
    move-exception v2

    .line 352
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to start prepared client, sensor: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BiometricService/AuthSession"

    invoke-static {v4, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 355
    .end local v1    # "sensor":Lcom/android/server/biometrics/BiometricSensor;
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_1
    goto :goto_0

    .line 356
    :cond_1
    return-void
.end method

.method private startAllPreparedSensorsExceptFingerprint()V
    .locals 1

    .line 336
    sget-object v0, Lcom/android/server/biometrics/AuthSession$$ExternalSyntheticLambda2;->INSTANCE:Lcom/android/server/biometrics/AuthSession$$ExternalSyntheticLambda2;

    invoke-direct {p0, v0}, Lcom/android/server/biometrics/AuthSession;->startAllPreparedSensors(Ljava/util/function/Function;)V

    .line 337
    return-void
.end method

.method private startFingerprintSensorsNow()V
    .locals 1

    .line 553
    invoke-direct {p0}, Lcom/android/server/biometrics/AuthSession;->startAllPreparedFingerprintSensors()V

    .line 554
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/biometrics/AuthSession;->mState:I

    .line 555
    return-void
.end method

.method private statsModality()I
    .locals 4

    .line 843
    const/4 v0, 0x0

    .line 845
    .local v0, "modality":I
    iget-object v1, p0, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    iget-object v1, v1, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/biometrics/BiometricSensor;

    .line 846
    .local v2, "sensor":Lcom/android/server/biometrics/BiometricSensor;
    iget v3, v2, Lcom/android/server/biometrics/BiometricSensor;->modality:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_0

    .line 847
    or-int/lit8 v0, v0, 0x1

    .line 849
    :cond_0
    iget v3, v2, Lcom/android/server/biometrics/BiometricSensor;->modality:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_1

    .line 850
    or-int/lit8 v0, v0, 0x2

    .line 852
    :cond_1
    iget v3, v2, Lcom/android/server/biometrics/BiometricSensor;->modality:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_2

    .line 853
    or-int/lit8 v0, v0, 0x4

    .line 855
    .end local v2    # "sensor":Lcom/android/server/biometrics/BiometricSensor;
    :cond_2
    goto :goto_0

    .line 857
    :cond_3
    return v0
.end method


# virtual methods
.method allCookiesReceived()Z
    .locals 3

    .line 824
    iget-object v0, p0, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    invoke-virtual {v0}, Lcom/android/server/biometrics/PreAuthInfo;->numSensorsWaitingForCookie()I

    move-result v0

    .line 825
    .local v0, "remainingCookies":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Remaining cookies: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BiometricService/AuthSession"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    if-nez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public binderDied()V
    .locals 2

    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Binder died, session: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricService/AuthSession"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget-object v0, p0, Lcom/android/server/biometrics/AuthSession;->mClientDeathReceiver:Lcom/android/server/biometrics/AuthSession$ClientDeathReceiver;

    invoke-interface {v0}, Lcom/android/server/biometrics/AuthSession$ClientDeathReceiver;->onClientDied()V

    .line 204
    return-void
.end method

.method getState()I
    .locals 1

    .line 839
    iget v0, p0, Lcom/android/server/biometrics/AuthSession;->mState:I

    return v0
.end method

.method goToInitialState()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 242
    iget-object v0, p0, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    iget-boolean v0, v0, Lcom/android/server/biometrics/PreAuthInfo;->credentialAvailable:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    iget-object v0, v0, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    const/16 v0, 0x9

    iput v0, p0, Lcom/android/server/biometrics/AuthSession;->mState:I

    .line 247
    const/4 v0, 0x0

    new-array v4, v0, [I

    iput-object v4, p0, Lcom/android/server/biometrics/AuthSession;->mSensors:[I

    .line 248
    const/4 v11, 0x0

    iput v11, p0, Lcom/android/server/biometrics/AuthSession;->mMultiSensorMode:I

    .line 249
    iput v0, p0, Lcom/android/server/biometrics/AuthSession;->mMultiSensorState:I

    .line 251
    iget-object v1, p0, Lcom/android/server/biometrics/AuthSession;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    iget-object v2, p0, Lcom/android/server/biometrics/AuthSession;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    iget-object v3, p0, Lcom/android/server/biometrics/AuthSession;->mSysuiReceiver:Landroid/hardware/biometrics/IBiometricSysuiReceiver;

    const/4 v5, 0x1

    const/4 v6, 0x0

    iget v7, p0, Lcom/android/server/biometrics/AuthSession;->mUserId:I

    iget-object v8, p0, Lcom/android/server/biometrics/AuthSession;->mOpPackageName:Ljava/lang/String;

    iget-wide v9, p0, Lcom/android/server/biometrics/AuthSession;->mOperationId:J

    invoke-interface/range {v1 .. v11}, Lcom/android/internal/statusbar/IStatusBarService;->showAuthenticationDialog(Landroid/hardware/biometrics/PromptInfo;Landroid/hardware/biometrics/IBiometricSysuiReceiver;[IZZILjava/lang/String;JI)V

    goto :goto_0

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    iget-object v0, v0, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 263
    invoke-direct {p0}, Lcom/android/server/biometrics/AuthSession;->setSensorsToStateWaitingForCookie()V

    .line 264
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/biometrics/AuthSession;->mState:I

    .line 270
    :goto_0
    return-void

    .line 268
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No authenticators requested"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method isCrypto()Z
    .locals 4

    .line 807
    iget-wide v0, p0, Lcom/android/server/biometrics/AuthSession;->mOperationId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method onAcquired(III)V
    .locals 4
    .param p1, "sensorId"    # I
    .param p2, "acquiredInfo"    # I
    .param p3, "vendorCode"    # I

    .line 492
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/biometrics/AuthSession;->getAcquiredMessageForSensor(III)Ljava/lang/String;

    move-result-object v0

    .line 493
    .local v0, "message":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sensorId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " acquiredInfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BiometricService/AuthSession"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    if-nez v0, :cond_0

    .line 496
    return-void

    .line 500
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/biometrics/AuthSession;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-direct {p0, p1}, Lcom/android/server/biometrics/AuthSession;->sensorIdToModality(I)I

    move-result v3

    invoke-interface {v1, v3, v0}, Lcom/android/internal/statusbar/IStatusBarService;->onBiometricHelp(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 503
    goto :goto_0

    .line 501
    :catch_0
    move-exception v1

    .line 502
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "Remote exception"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 504
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method onAuthenticationRejected()V
    .locals 3

    .line 600
    :try_start_0
    iget-object v0, p0, Lcom/android/server/biometrics/AuthSession;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    const/16 v1, 0x64

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1, v2}, Lcom/android/internal/statusbar/IStatusBarService;->onBiometricError(III)V

    .line 604
    invoke-direct {p0}, Lcom/android/server/biometrics/AuthSession;->hasPausableBiometric()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 607
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/server/biometrics/AuthSession;->mState:I

    .line 610
    :cond_0
    iget-object v0, p0, Lcom/android/server/biometrics/AuthSession;->mClientReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    invoke-interface {v0}, Landroid/hardware/biometrics/IBiometricServiceReceiver;->onAuthenticationFailed()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 613
    goto :goto_0

    .line 611
    :catch_0
    move-exception v0

    .line 612
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BiometricService/AuthSession"

    const-string v2, "RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 614
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method onAuthenticationSucceeded(IZ[B)V
    .locals 4
    .param p1, "sensorId"    # I
    .param p2, "strong"    # Z
    .param p3, "token"    # [B

    .line 572
    const-string v0, "BiometricService/AuthSession"

    if-eqz p2, :cond_0

    .line 573
    iput-object p3, p0, Lcom/android/server/biometrics/AuthSession;->mTokenEscrow:[B

    goto :goto_0

    .line 575
    :cond_0
    if-eqz p3, :cond_1

    .line 576
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dropping authToken for non-strong biometric, id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    :cond_1
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/biometrics/AuthSession;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v1}, Lcom/android/internal/statusbar/IStatusBarService;->onBiometricAuthenticated()V

    .line 585
    invoke-direct {p0}, Lcom/android/server/biometrics/AuthSession;->isConfirmationRequiredByAnyEligibleSensor()Z

    move-result v1

    .line 587
    .local v1, "requireConfirmation":Z
    if-nez v1, :cond_2

    .line 588
    const/4 v2, 0x7

    iput v2, p0, Lcom/android/server/biometrics/AuthSession;->mState:I

    goto :goto_1

    .line 590
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/biometrics/AuthSession;->mAuthenticatedTimeMs:J

    .line 591
    const/4 v2, 0x6

    iput v2, p0, Lcom/android/server/biometrics/AuthSession;->mState:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 595
    .end local v1    # "requireConfirmation":Z
    :goto_1
    goto :goto_2

    .line 593
    :catch_0
    move-exception v1

    .line 594
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "RemoteException"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 596
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_2
    return-void
.end method

.method onAuthenticationTimedOut(IIII)V
    .locals 3
    .param p1, "sensorId"    # I
    .param p2, "cookie"    # I
    .param p3, "error"    # I
    .param p4, "vendorCode"    # I

    .line 618
    :try_start_0
    iget-object v0, p0, Lcom/android/server/biometrics/AuthSession;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-direct {p0, p1}, Lcom/android/server/biometrics/AuthSession;->sensorIdToModality(I)I

    move-result v1

    invoke-interface {v0, v1, p3, p4}, Lcom/android/internal/statusbar/IStatusBarService;->onBiometricError(III)V

    .line 619
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/server/biometrics/AuthSession;->mState:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 622
    goto :goto_0

    .line 620
    :catch_0
    move-exception v0

    .line 621
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BiometricService/AuthSession"

    const-string v2, "RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 623
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method onCancelAuthSession(Z)Z
    .locals 6
    .param p1, "force"    # Z

    .line 778
    iget v0, p0, Lcom/android/server/biometrics/AuthSession;->mState:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    const/4 v3, 0x3

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    .line 782
    .local v0, "authStarted":Z
    :goto_1
    invoke-direct {p0}, Lcom/android/server/biometrics/AuthSession;->cancelAllSensors()V

    .line 783
    if-eqz v0, :cond_2

    if-nez p1, :cond_2

    .line 785
    return v2

    .line 792
    :cond_2
    :try_start_0
    iget-object v3, p0, Lcom/android/server/biometrics/AuthSession;->mClientReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    .line 793
    invoke-direct {p0}, Lcom/android/server/biometrics/AuthSession;->getEligibleModalities()I

    move-result v4

    const/4 v5, 0x5

    .line 792
    invoke-interface {v3, v4, v5, v2}, Landroid/hardware/biometrics/IBiometricServiceReceiver;->onError(III)V

    .line 797
    iget-object v3, p0, Lcom/android/server/biometrics/AuthSession;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v3}, Lcom/android/internal/statusbar/IStatusBarService;->hideAuthenticationDialog()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 798
    return v1

    .line 799
    :catch_0
    move-exception v1

    .line 800
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "BiometricService/AuthSession"

    const-string v4, "Remote exception"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 803
    .end local v1    # "e":Landroid/os/RemoteException;
    return v2
.end method

.method onClientDied()Z
    .locals 4

    .line 637
    const/4 v0, 0x1

    :try_start_0
    iget v1, p0, Lcom/android/server/biometrics/AuthSession;->mState:I

    packed-switch v1, :pswitch_data_0

    .line 644
    iget-object v1, p0, Lcom/android/server/biometrics/AuthSession;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    goto :goto_0

    .line 640
    :pswitch_0
    const/16 v1, 0xa

    iput v1, p0, Lcom/android/server/biometrics/AuthSession;->mState:I

    .line 641
    invoke-direct {p0}, Lcom/android/server/biometrics/AuthSession;->cancelAllSensors()V

    .line 642
    const/4 v0, 0x0

    return v0

    .line 644
    :goto_0
    invoke-interface {v1}, Lcom/android/internal/statusbar/IStatusBarService;->hideAuthenticationDialog()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 645
    return v0

    .line 647
    :catch_0
    move-exception v1

    .line 648
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Remote Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BiometricService/AuthSession"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    return v0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method onCookieReceived(I)V
    .locals 14
    .param p1, "cookie"    # I

    .line 273
    iget-object v0, p0, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    iget-object v0, v0, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/BiometricSensor;

    .line 274
    .local v1, "sensor":Lcom/android/server/biometrics/BiometricSensor;
    invoke-virtual {v1, p1}, Lcom/android/server/biometrics/BiometricSensor;->goToStateCookieReturnedIfCookieMatches(I)V

    .line 275
    .end local v1    # "sensor":Lcom/android/server/biometrics/BiometricSensor;
    goto :goto_0

    .line 277
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthSession;->allCookiesReceived()Z

    move-result v0

    const-string v1, "BiometricService/AuthSession"

    if-eqz v0, :cond_3

    .line 278
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/biometrics/AuthSession;->mStartTimeMs:J

    .line 282
    invoke-direct {p0}, Lcom/android/server/biometrics/AuthSession;->startAllPreparedSensorsExceptFingerprint()V

    .line 285
    iget v0, p0, Lcom/android/server/biometrics/AuthSession;->mState:I

    const/4 v2, 0x5

    if-eq v0, v2, :cond_2

    .line 288
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/biometrics/AuthSession;->isConfirmationRequiredByAnyEligibleSensor()Z

    move-result v8

    .line 290
    .local v8, "requireConfirmation":Z
    iget-object v0, p0, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    iget-object v0, v0, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/biometrics/AuthSession;->mSensors:[I

    .line 291
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    iget-object v2, v2, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 292
    iget-object v2, p0, Lcom/android/server/biometrics/AuthSession;->mSensors:[I

    iget-object v3, p0, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    iget-object v3, v3, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/biometrics/BiometricSensor;

    iget v3, v3, Lcom/android/server/biometrics/BiometricSensor;->id:I

    aput v3, v2, v0

    .line 291
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 294
    .end local v0    # "i":I
    :cond_1
    iget-object v0, p0, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    iget-object v0, v0, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    invoke-static {v0}, Lcom/android/server/biometrics/AuthSession;->getMultiSensorModeForNewSession(Ljava/util/Collection;)I

    move-result v0

    iput v0, p0, Lcom/android/server/biometrics/AuthSession;->mMultiSensorMode:I

    .line 296
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/biometrics/AuthSession;->mMultiSensorState:I

    .line 298
    iget-object v3, p0, Lcom/android/server/biometrics/AuthSession;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    iget-object v4, p0, Lcom/android/server/biometrics/AuthSession;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    iget-object v5, p0, Lcom/android/server/biometrics/AuthSession;->mSysuiReceiver:Landroid/hardware/biometrics/IBiometricSysuiReceiver;

    iget-object v6, p0, Lcom/android/server/biometrics/AuthSession;->mSensors:[I

    iget-object v0, p0, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    .line 301
    invoke-virtual {v0}, Lcom/android/server/biometrics/PreAuthInfo;->shouldShowCredential()Z

    move-result v7

    iget v9, p0, Lcom/android/server/biometrics/AuthSession;->mUserId:I

    iget-object v10, p0, Lcom/android/server/biometrics/AuthSession;->mOpPackageName:Ljava/lang/String;

    iget-wide v11, p0, Lcom/android/server/biometrics/AuthSession;->mOperationId:J

    iget v13, p0, Lcom/android/server/biometrics/AuthSession;->mMultiSensorMode:I

    .line 298
    invoke-interface/range {v3 .. v13}, Lcom/android/internal/statusbar/IStatusBarService;->showAuthenticationDialog(Landroid/hardware/biometrics/PromptInfo;Landroid/hardware/biometrics/IBiometricSysuiReceiver;[IZZILjava/lang/String;JI)V

    .line 307
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/biometrics/AuthSession;->mState:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v8    # "requireConfirmation":Z
    goto :goto_2

    .line 308
    :catch_0
    move-exception v0

    .line 309
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "Remote exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 310
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_2
    goto :goto_3

    .line 313
    :cond_2
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/biometrics/AuthSession;->mState:I

    goto :goto_3

    .line 316
    :cond_3
    const-string/jumbo v0, "onCookieReceived: still waiting"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    :goto_3
    return-void
.end method

.method onDeviceCredentialPressed()V
    .locals 1

    .line 628
    invoke-direct {p0}, Lcom/android/server/biometrics/AuthSession;->cancelAllSensors()V

    .line 629
    const/16 v0, 0x9

    iput v0, p0, Lcom/android/server/biometrics/AuthSession;->mState:I

    .line 630
    return-void
.end method

.method onDialogAnimatedIn()V
    .locals 3

    .line 519
    iget v0, p0, Lcom/android/server/biometrics/AuthSession;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 520
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDialogAnimatedIn, unexpected state: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/biometrics/AuthSession;->mState:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "BiometricService/AuthSession"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    :cond_0
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/biometrics/AuthSession;->mState:I

    .line 525
    iget v0, p0, Lcom/android/server/biometrics/AuthSession;->mMultiSensorMode:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 526
    iput v1, p0, Lcom/android/server/biometrics/AuthSession;->mMultiSensorState:I

    goto :goto_0

    .line 528
    :cond_1
    invoke-direct {p0}, Lcom/android/server/biometrics/AuthSession;->startFingerprintSensorsNow()V

    .line 530
    :goto_0
    return-void
.end method

.method onDialogDismissed(I[B)V
    .locals 5
    .param p1, "reason"    # I
    .param p2, "credentialAttestation"    # [B

    .line 716
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/AuthSession;->logOnDialogDismissed(I)V

    .line 718
    const-string v0, "BiometricService/AuthSession"

    packed-switch p1, :pswitch_data_0

    .line 759
    goto :goto_2

    .line 720
    :pswitch_0
    if-eqz p2, :cond_0

    .line 721
    :try_start_0
    iget-object v1, p0, Lcom/android/server/biometrics/AuthSession;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v1, p2}, Landroid/security/KeyStore;->addAuthToken([B)I

    goto :goto_0

    .line 723
    :cond_0
    const-string v1, "credentialAttestation is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 751
    :pswitch_1
    iget-object v1, p0, Lcom/android/server/biometrics/AuthSession;->mClientReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    .line 752
    invoke-direct {p0}, Lcom/android/server/biometrics/AuthSession;->getEligibleModalities()I

    move-result v2

    iget v3, p0, Lcom/android/server/biometrics/AuthSession;->mErrorEscrow:I

    iget v4, p0, Lcom/android/server/biometrics/AuthSession;->mVendorCodeEscrow:I

    .line 751
    invoke-interface {v1, v2, v3, v4}, Landroid/hardware/biometrics/IBiometricServiceReceiver;->onError(III)V

    .line 756
    goto :goto_3

    .line 742
    :pswitch_2
    iget-object v1, p0, Lcom/android/server/biometrics/AuthSession;->mClientReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    .line 743
    invoke-direct {p0}, Lcom/android/server/biometrics/AuthSession;->getEligibleModalities()I

    move-result v2

    const/16 v3, 0xa

    const/4 v4, 0x0

    .line 742
    invoke-interface {v1, v2, v3, v4}, Landroid/hardware/biometrics/IBiometricServiceReceiver;->onError(III)V

    .line 747
    goto :goto_3

    .line 738
    :pswitch_3
    iget-object v1, p0, Lcom/android/server/biometrics/AuthSession;->mClientReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    invoke-interface {v1, p1}, Landroid/hardware/biometrics/IBiometricServiceReceiver;->onDialogDismissed(I)V

    .line 739
    goto :goto_3

    .line 727
    :goto_0
    :pswitch_4
    iget-object v1, p0, Lcom/android/server/biometrics/AuthSession;->mTokenEscrow:[B

    if-eqz v1, :cond_1

    .line 728
    iget-object v2, p0, Lcom/android/server/biometrics/AuthSession;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v2, v1}, Landroid/security/KeyStore;->addAuthToken([B)I

    move-result v1

    .line 729
    .local v1, "result":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addAuthToken: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    nop

    .end local v1    # "result":I
    goto :goto_1

    .line 731
    :cond_1
    const-string/jumbo v1, "mTokenEscrow is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    :goto_1
    iget-object v1, p0, Lcom/android/server/biometrics/AuthSession;->mClientReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    .line 734
    invoke-static {p1}, Lcom/android/server/biometrics/Utils;->getAuthenticationTypeForResult(I)I

    move-result v2

    .line 733
    invoke-interface {v1, v2}, Landroid/hardware/biometrics/IBiometricServiceReceiver;->onAuthenticationSucceeded(I)V

    .line 735
    goto :goto_3

    .line 766
    :catchall_0
    move-exception v0

    goto :goto_7

    .line 762
    :catch_0
    move-exception v1

    goto :goto_5

    .line 759
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 766
    :goto_3
    nop

    :goto_4
    invoke-direct {p0}, Lcom/android/server/biometrics/AuthSession;->cancelAllSensors()V

    .line 767
    goto :goto_6

    .line 763
    .local v1, "e":Landroid/os/RemoteException;
    :goto_5
    :try_start_1
    const-string v2, "Remote exception"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 766
    nop

    .end local v1    # "e":Landroid/os/RemoteException;
    goto :goto_4

    .line 768
    :goto_6
    return-void

    .line 766
    :goto_7
    invoke-direct {p0}, Lcom/android/server/biometrics/AuthSession;->cancelAllSensors()V

    .line 767
    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method onErrorReceived(IIII)Z
    .locals 21
    .param p1, "sensorId"    # I
    .param p2, "cookie"    # I
    .param p3, "error"    # I
    .param p4, "vendorCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 385
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onErrorReceived sensor: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v5, p1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " error: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "BiometricService/AuthSession"

    invoke-static {v6, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    invoke-direct {v0, v1}, Lcom/android/server/biometrics/AuthSession;->containsCookie(I)Z

    move-result v4

    const/4 v7, 0x0

    if-nez v4, :cond_0

    .line 388
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown/expired cookie: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    return v7

    .line 394
    :cond_0
    iget-object v4, v0, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    iget-object v4, v4, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/biometrics/BiometricSensor;

    .line 395
    .local v8, "sensor":Lcom/android/server/biometrics/BiometricSensor;
    invoke-virtual {v8}, Lcom/android/server/biometrics/BiometricSensor;->getSensorState()I

    move-result v9

    const/4 v10, 0x3

    if-ne v9, v10, :cond_1

    .line 396
    invoke-virtual {v8, v1, v2}, Lcom/android/server/biometrics/BiometricSensor;->goToStoppedStateIfCookieMatches(II)V

    .line 398
    .end local v8    # "sensor":Lcom/android/server/biometrics/BiometricSensor;
    :cond_1
    goto :goto_0

    .line 400
    :cond_2
    iput v2, v0, Lcom/android/server/biometrics/AuthSession;->mErrorEscrow:I

    .line 401
    iput v3, v0, Lcom/android/server/biometrics/AuthSession;->mVendorCodeEscrow:I

    .line 403
    invoke-direct/range {p0 .. p1}, Lcom/android/server/biometrics/AuthSession;->sensorIdToModality(I)I

    move-result v4

    .line 405
    .local v4, "modality":I
    iget v8, v0, Lcom/android/server/biometrics/AuthSession;->mState:I

    const/16 v9, 0x9

    const/4 v10, 0x1

    packed-switch v8, :pswitch_data_0

    .line 484
    :pswitch_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unhandled error state, mState: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v0, Lcom/android/server/biometrics/AuthSession;->mState:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 480
    :pswitch_1
    iget-object v6, v0, Lcom/android/server/biometrics/AuthSession;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v6}, Lcom/android/internal/statusbar/IStatusBarService;->hideAuthenticationDialog()V

    .line 481
    return v10

    .line 476
    :pswitch_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Biometric canceled, ignoring from state: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v0, Lcom/android/server/biometrics/AuthSession;->mState:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    goto/16 :goto_3

    .line 470
    :pswitch_3
    iget-object v6, v0, Lcom/android/server/biometrics/AuthSession;->mClientReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    invoke-interface {v6, v4, v2, v3}, Landroid/hardware/biometrics/IBiometricServiceReceiver;->onError(III)V

    .line 471
    iget-object v6, v0, Lcom/android/server/biometrics/AuthSession;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v6}, Lcom/android/internal/statusbar/IStatusBarService;->hideAuthenticationDialog()V

    .line 472
    return v10

    .line 440
    :pswitch_4
    const/4 v8, 0x7

    if-eq v2, v8, :cond_4

    if-ne v2, v9, :cond_3

    goto :goto_1

    :cond_3
    move v8, v7

    goto :goto_2

    :cond_4
    :goto_1
    move v8, v10

    .line 442
    .local v8, "errorLockout":Z
    :goto_2
    invoke-direct/range {p0 .. p0}, Lcom/android/server/biometrics/AuthSession;->isAllowDeviceCredential()Z

    move-result v11

    if-eqz v11, :cond_5

    if-eqz v8, :cond_5

    .line 444
    iput v9, v0, Lcom/android/server/biometrics/AuthSession;->mState:I

    .line 445
    iget-object v6, v0, Lcom/android/server/biometrics/AuthSession;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v6, v4, v2, v3}, Lcom/android/internal/statusbar/IStatusBarService;->onBiometricError(III)V

    goto :goto_3

    .line 446
    :cond_5
    const/4 v9, 0x5

    if-ne v2, v9, :cond_6

    .line 447
    iget-object v6, v0, Lcom/android/server/biometrics/AuthSession;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v6}, Lcom/android/internal/statusbar/IStatusBarService;->hideAuthenticationDialog()V

    .line 451
    iget-object v6, v0, Lcom/android/server/biometrics/AuthSession;->mClientReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    invoke-interface {v6, v4, v2, v3}, Landroid/hardware/biometrics/IBiometricServiceReceiver;->onError(III)V

    .line 452
    return v10

    .line 454
    :cond_6
    const/16 v9, 0x8

    iput v9, v0, Lcom/android/server/biometrics/AuthSession;->mState:I

    .line 455
    iget v9, v0, Lcom/android/server/biometrics/AuthSession;->mMultiSensorMode:I

    if-ne v9, v10, :cond_7

    iget v9, v0, Lcom/android/server/biometrics/AuthSession;->mMultiSensorState:I

    const/4 v11, 0x2

    if-ne v9, v11, :cond_7

    .line 458
    const-string/jumbo v9, "onErrorReceived: waiting for modality switch callback"

    invoke-static {v6, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    iput v10, v0, Lcom/android/server/biometrics/AuthSession;->mMultiSensorState:I

    .line 461
    :cond_7
    iget-object v6, v0, Lcom/android/server/biometrics/AuthSession;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v6, v4, v2, v3}, Lcom/android/internal/statusbar/IStatusBarService;->onBiometricError(III)V

    .line 463
    goto :goto_3

    .line 409
    .end local v8    # "errorLockout":Z
    :pswitch_5
    invoke-direct/range {p0 .. p0}, Lcom/android/server/biometrics/AuthSession;->isAllowDeviceCredential()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 410
    iget-object v6, v0, Lcom/android/server/biometrics/AuthSession;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    .line 411
    invoke-virtual {v6}, Landroid/hardware/biometrics/PromptInfo;->getAuthenticators()I

    move-result v6

    .line 413
    .local v6, "authenticators":I
    invoke-static {v6}, Lcom/android/server/biometrics/Utils;->removeBiometricBits(I)I

    move-result v6

    .line 414
    iget-object v8, v0, Lcom/android/server/biometrics/AuthSession;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v8, v6}, Landroid/hardware/biometrics/PromptInfo;->setAuthenticators(I)V

    .line 416
    iput v9, v0, Lcom/android/server/biometrics/AuthSession;->mState:I

    .line 417
    const/4 v8, 0x0

    iput v8, v0, Lcom/android/server/biometrics/AuthSession;->mMultiSensorMode:I

    .line 418
    iput v7, v0, Lcom/android/server/biometrics/AuthSession;->mMultiSensorState:I

    .line 419
    new-array v13, v7, [I

    iput-object v13, v0, Lcom/android/server/biometrics/AuthSession;->mSensors:[I

    .line 421
    iget-object v10, v0, Lcom/android/server/biometrics/AuthSession;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    iget-object v11, v0, Lcom/android/server/biometrics/AuthSession;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    iget-object v12, v0, Lcom/android/server/biometrics/AuthSession;->mSysuiReceiver:Landroid/hardware/biometrics/IBiometricSysuiReceiver;

    const/4 v14, 0x1

    const/4 v15, 0x0

    iget v9, v0, Lcom/android/server/biometrics/AuthSession;->mUserId:I

    iget-object v7, v0, Lcom/android/server/biometrics/AuthSession;->mOpPackageName:Ljava/lang/String;

    move/from16 v16, v9

    iget-wide v8, v0, Lcom/android/server/biometrics/AuthSession;->mOperationId:J

    move-object/from16 v17, v7

    move-wide/from16 v18, v8

    const/4 v7, 0x0

    move/from16 v20, v7

    invoke-interface/range {v10 .. v20}, Lcom/android/internal/statusbar/IStatusBarService;->showAuthenticationDialog(Landroid/hardware/biometrics/PromptInfo;Landroid/hardware/biometrics/IBiometricSysuiReceiver;[IZZILjava/lang/String;JI)V

    .line 431
    .end local v6    # "authenticators":I
    goto :goto_3

    .line 432
    :cond_8
    iget-object v6, v0, Lcom/android/server/biometrics/AuthSession;->mClientReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    invoke-interface {v6, v4, v2, v3}, Landroid/hardware/biometrics/IBiometricServiceReceiver;->onError(III)V

    .line 433
    return v10

    .line 488
    :goto_3
    const/4 v6, 0x0

    return v6

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method onStartFingerprint()V
    .locals 4

    .line 535
    iget v0, p0, Lcom/android/server/biometrics/AuthSession;->mMultiSensorMode:I

    const-string v1, "BiometricService/AuthSession"

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    .line 536
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onStartFingerprint, unexpected mode: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/biometrics/AuthSession;->mMultiSensorMode:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    return-void

    .line 540
    :cond_0
    iget v0, p0, Lcom/android/server/biometrics/AuthSession;->mState:I

    const/4 v2, 0x2

    const/4 v3, 0x3

    if-eq v0, v2, :cond_1

    if-eq v0, v3, :cond_1

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    const/16 v2, 0x8

    if-eq v0, v2, :cond_1

    .line 544
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onStartFingerprint, started from unexpected state: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/biometrics/AuthSession;->mState:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    :cond_1
    iput v3, p0, Lcom/android/server/biometrics/AuthSession;->mMultiSensorState:I

    .line 548
    invoke-direct {p0}, Lcom/android/server/biometrics/AuthSession;->startFingerprintSensorsNow()V

    .line 549
    return-void
.end method

.method onSystemEvent(I)V
    .locals 3
    .param p1, "event"    # I

    .line 507
    iget-object v0, p0, Lcom/android/server/biometrics/AuthSession;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v0}, Landroid/hardware/biometrics/PromptInfo;->isReceiveSystemEvents()Z

    move-result v0

    if-nez v0, :cond_0

    .line 508
    return-void

    .line 512
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/biometrics/AuthSession;->mClientReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    invoke-interface {v0, p1}, Landroid/hardware/biometrics/IBiometricServiceReceiver;->onSystemEvent(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 515
    goto :goto_0

    .line 513
    :catch_0
    move-exception v0

    .line 514
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BiometricService/AuthSession"

    const-string v2, "RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 516
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method onTryAgainPressed()V
    .locals 4

    .line 558
    iget v0, p0, Lcom/android/server/biometrics/AuthSession;->mState:I

    const-string v1, "BiometricService/AuthSession"

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    .line 559
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onTryAgainPressed, state: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/biometrics/AuthSession;->mState:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/biometrics/AuthSession;->setSensorsToStateWaitingForCookie()V

    .line 564
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/server/biometrics/AuthSession;->mState:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 567
    goto :goto_0

    .line 565
    :catch_0
    move-exception v0

    .line 566
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 903
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "State: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/biometrics/AuthSession;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isCrypto: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 904
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthSession;->isCrypto()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", PreAuthInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 903
    return-object v0
.end method
