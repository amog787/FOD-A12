.class Lcom/android/server/biometrics/PreAuthInfo;
.super Ljava/lang/Object;
.source "PreAuthInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/biometrics/PreAuthInfo$AuthenticatorStatus;
    }
.end annotation


# static fields
.field static final AUTHENTICATOR_OK:I = 0x1

.field static final BIOMETRIC_DISABLED_BY_DEVICE_POLICY:I = 0x3

.field static final BIOMETRIC_HARDWARE_NOT_DETECTED:I = 0x6

.field static final BIOMETRIC_INSUFFICIENT_STRENGTH:I = 0x4

.field static final BIOMETRIC_INSUFFICIENT_STRENGTH_AFTER_DOWNGRADE:I = 0x5

.field static final BIOMETRIC_LOCKOUT_PERMANENT:I = 0xb

.field static final BIOMETRIC_LOCKOUT_TIMED:I = 0xa

.field static final BIOMETRIC_NOT_ENABLED_FOR_APPS:I = 0x8

.field static final BIOMETRIC_NOT_ENROLLED:I = 0x7

.field static final BIOMETRIC_NO_HARDWARE:I = 0x2

.field static final CREDENTIAL_NOT_ENROLLED:I = 0x9

.field private static final TAG:Ljava/lang/String; = "BiometricService/PreAuthInfo"


# instance fields
.field final confirmationRequested:Z

.field final credentialAvailable:Z

.field final credentialRequested:Z

.field final eligibleSensors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/biometrics/BiometricSensor;",
            ">;"
        }
    .end annotation
.end field

.field final ineligibleSensors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Lcom/android/server/biometrics/BiometricSensor;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mBiometricRequested:Z

.field private final mBiometricStrengthRequested:I


# direct methods
.method private constructor <init>(ZIZLjava/util/List;Ljava/util/List;ZZ)V
    .locals 0
    .param p1, "biometricRequested"    # Z
    .param p2, "biometricStrengthRequested"    # I
    .param p3, "credentialRequested"    # Z
    .param p6, "credentialAvailable"    # Z
    .param p7, "confirmationRequested"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZIZ",
            "Ljava/util/List<",
            "Lcom/android/server/biometrics/BiometricSensor;",
            ">;",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Lcom/android/server/biometrics/BiometricSensor;",
            "Ljava/lang/Integer;",
            ">;>;ZZ)V"
        }
    .end annotation

    .line 241
    .local p4, "eligibleSensors":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/biometrics/BiometricSensor;>;"
    .local p5, "ineligibleSensors":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Lcom/android/server/biometrics/BiometricSensor;Ljava/lang/Integer;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 242
    iput-boolean p1, p0, Lcom/android/server/biometrics/PreAuthInfo;->mBiometricRequested:Z

    .line 243
    iput p2, p0, Lcom/android/server/biometrics/PreAuthInfo;->mBiometricStrengthRequested:I

    .line 244
    iput-boolean p3, p0, Lcom/android/server/biometrics/PreAuthInfo;->credentialRequested:Z

    .line 246
    iput-object p4, p0, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    .line 247
    iput-object p5, p0, Lcom/android/server/biometrics/PreAuthInfo;->ineligibleSensors:Ljava/util/List;

    .line 248
    iput-boolean p6, p0, Lcom/android/server/biometrics/PreAuthInfo;->credentialAvailable:Z

    .line 249
    iput-boolean p7, p0, Lcom/android/server/biometrics/PreAuthInfo;->confirmationRequested:Z

    .line 250
    return-void
.end method

.method private calculateErrorByPriority()Landroid/util/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Lcom/android/server/biometrics/BiometricSensor;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 258
    iget-object v0, p0, Lcom/android/server/biometrics/PreAuthInfo;->ineligibleSensors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 259
    .local v1, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/biometrics/BiometricSensor;Ljava/lang/Integer;>;"
    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x7

    if-ne v2, v3, :cond_0

    .line 260
    return-object v1

    .line 262
    .end local v1    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/biometrics/BiometricSensor;Ljava/lang/Integer;>;"
    :cond_0
    goto :goto_0

    .line 264
    :cond_1
    iget-object v0, p0, Lcom/android/server/biometrics/PreAuthInfo;->ineligibleSensors:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    return-object v0
.end method

.method static create(Landroid/app/trust/ITrustManager;Landroid/app/admin/DevicePolicyManager;Lcom/android/server/biometrics/BiometricService$SettingObserver;Ljava/util/List;ILandroid/hardware/biometrics/PromptInfo;Ljava/lang/String;Z)Lcom/android/server/biometrics/PreAuthInfo;
    .locals 18
    .param p0, "trustManager"    # Landroid/app/trust/ITrustManager;
    .param p1, "devicePolicyManager"    # Landroid/app/admin/DevicePolicyManager;
    .param p2, "settingObserver"    # Lcom/android/server/biometrics/BiometricService$SettingObserver;
    .param p4, "userId"    # I
    .param p5, "promptInfo"    # Landroid/hardware/biometrics/PromptInfo;
    .param p6, "opPackageName"    # Ljava/lang/String;
    .param p7, "checkDevicePolicyManager"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/trust/ITrustManager;",
            "Landroid/app/admin/DevicePolicyManager;",
            "Lcom/android/server/biometrics/BiometricService$SettingObserver;",
            "Ljava/util/List<",
            "Lcom/android/server/biometrics/BiometricSensor;",
            ">;I",
            "Landroid/hardware/biometrics/PromptInfo;",
            "Ljava/lang/String;",
            "Z)",
            "Lcom/android/server/biometrics/PreAuthInfo;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 95
    .local p3, "sensors":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/biometrics/BiometricSensor;>;"
    invoke-virtual/range {p5 .. p5}, Landroid/hardware/biometrics/PromptInfo;->isConfirmationRequested()Z

    move-result v8

    .line 96
    .local v8, "confirmationRequested":Z
    invoke-static/range {p5 .. p5}, Lcom/android/server/biometrics/Utils;->isBiometricRequested(Landroid/hardware/biometrics/PromptInfo;)Z

    move-result v9

    .line 97
    .local v9, "biometricRequested":Z
    invoke-static/range {p5 .. p5}, Lcom/android/server/biometrics/Utils;->getPublicBiometricStrength(Landroid/hardware/biometrics/PromptInfo;)I

    move-result v10

    .line 98
    .local v10, "requestedStrength":I
    invoke-static/range {p5 .. p5}, Lcom/android/server/biometrics/Utils;->isCredentialRequested(Landroid/hardware/biometrics/PromptInfo;)Z

    move-result v11

    .line 100
    .local v11, "credentialRequested":Z
    move-object/from16 v12, p0

    move/from16 v13, p4

    invoke-interface {v12, v13}, Landroid/app/trust/ITrustManager;->isDeviceSecure(I)Z

    move-result v14

    .line 108
    .local v14, "credentialAvailable":Z
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v15, v0

    .line 109
    .local v15, "eligibleSensors":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/biometrics/BiometricSensor;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v0

    .line 111
    .local v7, "ineligibleSensors":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Lcom/android/server/biometrics/BiometricSensor;Ljava/lang/Integer;>;>;"
    if-eqz v9, :cond_2

    .line 112
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/server/biometrics/BiometricSensor;

    .line 114
    .local v6, "sensor":Lcom/android/server/biometrics/BiometricSensor;
    nop

    .line 117
    invoke-virtual/range {p5 .. p5}, Landroid/hardware/biometrics/PromptInfo;->getAllowedSensorIds()Ljava/util/List;

    move-result-object v17

    .line 114
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object v2, v6

    move/from16 v3, p4

    move-object/from16 v4, p6

    move/from16 v5, p7

    move-object v12, v6

    .end local v6    # "sensor":Lcom/android/server/biometrics/BiometricSensor;
    .local v12, "sensor":Lcom/android/server/biometrics/BiometricSensor;
    move v6, v10

    move-object v13, v7

    .end local v7    # "ineligibleSensors":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Lcom/android/server/biometrics/BiometricSensor;Ljava/lang/Integer;>;>;"
    .local v13, "ineligibleSensors":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Lcom/android/server/biometrics/BiometricSensor;Ljava/lang/Integer;>;>;"
    move-object/from16 v7, v17

    invoke-static/range {v0 .. v7}, Lcom/android/server/biometrics/PreAuthInfo;->getStatusForBiometricAuthenticator(Landroid/app/admin/DevicePolicyManager;Lcom/android/server/biometrics/BiometricService$SettingObserver;Lcom/android/server/biometrics/BiometricSensor;ILjava/lang/String;ZILjava/util/List;)I

    move-result v0

    .line 119
    .local v0, "status":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v7, p6

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " Sensor ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v12, Lcom/android/server/biometrics/BiometricSensor;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " Modality: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v12, Lcom/android/server/biometrics/BiometricSensor;->modality:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " Status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BiometricService/PreAuthInfo"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 125
    invoke-interface {v15, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 127
    :cond_0
    new-instance v1, Landroid/util/Pair;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v12, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v13, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    .end local v0    # "status":I
    .end local v12    # "sensor":Lcom/android/server/biometrics/BiometricSensor;
    :goto_1
    move-object/from16 v12, p0

    move-object v7, v13

    move/from16 v13, p4

    goto :goto_0

    .line 112
    .end local v13    # "ineligibleSensors":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Lcom/android/server/biometrics/BiometricSensor;Ljava/lang/Integer;>;>;"
    .restart local v7    # "ineligibleSensors":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Lcom/android/server/biometrics/BiometricSensor;Ljava/lang/Integer;>;>;"
    :cond_1
    move-object v13, v7

    move-object/from16 v7, p6

    .end local v7    # "ineligibleSensors":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Lcom/android/server/biometrics/BiometricSensor;Ljava/lang/Integer;>;>;"
    .restart local v13    # "ineligibleSensors":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Lcom/android/server/biometrics/BiometricSensor;Ljava/lang/Integer;>;>;"
    goto :goto_2

    .line 111
    .end local v13    # "ineligibleSensors":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Lcom/android/server/biometrics/BiometricSensor;Ljava/lang/Integer;>;>;"
    .restart local v7    # "ineligibleSensors":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Lcom/android/server/biometrics/BiometricSensor;Ljava/lang/Integer;>;>;"
    :cond_2
    move-object v13, v7

    move-object/from16 v7, p6

    .line 132
    .end local v7    # "ineligibleSensors":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Lcom/android/server/biometrics/BiometricSensor;Ljava/lang/Integer;>;>;"
    .restart local v13    # "ineligibleSensors":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Lcom/android/server/biometrics/BiometricSensor;Ljava/lang/Integer;>;>;"
    :goto_2
    new-instance v12, Lcom/android/server/biometrics/PreAuthInfo;

    move-object v0, v12

    move v1, v9

    move v2, v10

    move v3, v11

    move-object v4, v15

    move-object v5, v13

    move v6, v14

    move v7, v8

    invoke-direct/range {v0 .. v7}, Lcom/android/server/biometrics/PreAuthInfo;-><init>(ZIZLjava/util/List;Ljava/util/List;ZZ)V

    return-object v12
.end method

.method private getInternalStatus()Landroid/util/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 276
    const/4 v0, 0x0

    .line 277
    .local v0, "modality":I
    iget-boolean v1, p0, Lcom/android/server/biometrics/PreAuthInfo;->mBiometricRequested:Z

    const-string v2, "BiometricService/PreAuthInfo"

    if-eqz v1, :cond_5

    iget-boolean v3, p0, Lcom/android/server/biometrics/PreAuthInfo;->credentialRequested:Z

    if-eqz v3, :cond_5

    .line 278
    iget-boolean v1, p0, Lcom/android/server/biometrics/PreAuthInfo;->credentialAvailable:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 288
    :cond_0
    iget-object v1, p0, Lcom/android/server/biometrics/PreAuthInfo;->ineligibleSensors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 289
    invoke-direct {p0}, Lcom/android/server/biometrics/PreAuthInfo;->calculateErrorByPriority()Landroid/util/Pair;

    move-result-object v1

    .line 290
    .local v1, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/biometrics/BiometricSensor;Ljava/lang/Integer;>;"
    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/biometrics/BiometricSensor;

    iget v3, v3, Lcom/android/server/biometrics/BiometricSensor;->modality:I

    or-int/2addr v0, v3

    .line 291
    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 292
    .local v1, "status":I
    goto/16 :goto_4

    .line 293
    .end local v1    # "status":I
    :cond_1
    or-int/lit8 v0, v0, 0x1

    .line 294
    const/16 v1, 0x9

    .restart local v1    # "status":I
    goto/16 :goto_4

    .line 279
    .end local v1    # "status":I
    :cond_2
    :goto_0
    const/4 v1, 0x1

    .line 280
    .restart local v1    # "status":I
    iget-boolean v3, p0, Lcom/android/server/biometrics/PreAuthInfo;->credentialAvailable:Z

    if-eqz v3, :cond_3

    .line 281
    or-int/lit8 v0, v0, 0x1

    .line 283
    :cond_3
    iget-object v3, p0, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/biometrics/BiometricSensor;

    .line 284
    .local v4, "sensor":Lcom/android/server/biometrics/BiometricSensor;
    iget v5, v4, Lcom/android/server/biometrics/BiometricSensor;->modality:I

    or-int/2addr v0, v5

    .line 285
    .end local v4    # "sensor":Lcom/android/server/biometrics/BiometricSensor;
    goto :goto_1

    :cond_4
    goto :goto_4

    .line 297
    .end local v1    # "status":I
    :cond_5
    if-eqz v1, :cond_9

    .line 298
    iget-object v1, p0, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    .line 299
    const/4 v1, 0x1

    .line 300
    .restart local v1    # "status":I
    iget-object v3, p0, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/biometrics/BiometricSensor;

    .line 301
    .restart local v4    # "sensor":Lcom/android/server/biometrics/BiometricSensor;
    iget v5, v4, Lcom/android/server/biometrics/BiometricSensor;->modality:I

    or-int/2addr v0, v5

    .line 302
    .end local v4    # "sensor":Lcom/android/server/biometrics/BiometricSensor;
    goto :goto_2

    :cond_6
    goto :goto_4

    .line 305
    .end local v1    # "status":I
    :cond_7
    iget-object v1, p0, Lcom/android/server/biometrics/PreAuthInfo;->ineligibleSensors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    .line 306
    invoke-direct {p0}, Lcom/android/server/biometrics/PreAuthInfo;->calculateErrorByPriority()Landroid/util/Pair;

    move-result-object v1

    .line 307
    .local v1, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/biometrics/BiometricSensor;Ljava/lang/Integer;>;"
    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/biometrics/BiometricSensor;

    iget v3, v3, Lcom/android/server/biometrics/BiometricSensor;->modality:I

    or-int/2addr v0, v3

    .line 308
    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 309
    .local v1, "status":I
    goto :goto_4

    .line 310
    .end local v1    # "status":I
    :cond_8
    or-int/lit8 v0, v0, 0x0

    .line 311
    const/4 v1, 0x2

    .restart local v1    # "status":I
    goto :goto_4

    .line 314
    .end local v1    # "status":I
    :cond_9
    iget-boolean v1, p0, Lcom/android/server/biometrics/PreAuthInfo;->credentialRequested:Z

    if-eqz v1, :cond_b

    .line 315
    or-int/lit8 v0, v0, 0x1

    .line 316
    iget-boolean v1, p0, Lcom/android/server/biometrics/PreAuthInfo;->credentialAvailable:Z

    if-eqz v1, :cond_a

    const/4 v1, 0x1

    goto :goto_3

    :cond_a
    const/16 v1, 0x9

    .restart local v1    # "status":I
    :goto_3
    goto :goto_4

    .line 320
    .end local v1    # "status":I
    :cond_b
    const-string v1, "No authenticators requested"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    const/4 v1, 0x2

    .line 324
    .restart local v1    # "status":I
    :goto_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCanAuthenticateInternal Modality: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " AuthenticatorStatus: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    new-instance v2, Landroid/util/Pair;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2
.end method

.method private static getStatusForBiometricAuthenticator(Landroid/app/admin/DevicePolicyManager;Lcom/android/server/biometrics/BiometricService$SettingObserver;Lcom/android/server/biometrics/BiometricSensor;ILjava/lang/String;ZILjava/util/List;)I
    .locals 5
    .param p0, "devicePolicyManager"    # Landroid/app/admin/DevicePolicyManager;
    .param p1, "settingObserver"    # Lcom/android/server/biometrics/BiometricService$SettingObserver;
    .param p2, "sensor"    # Lcom/android/server/biometrics/BiometricSensor;
    .param p3, "userId"    # I
    .param p4, "opPackageName"    # Ljava/lang/String;
    .param p5, "checkDevicePolicyManager"    # Z
    .param p6, "requestedStrength"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/admin/DevicePolicyManager;",
            "Lcom/android/server/biometrics/BiometricService$SettingObserver;",
            "Lcom/android/server/biometrics/BiometricSensor;",
            "I",
            "Ljava/lang/String;",
            "ZI",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 150
    .local p7, "requestedSensorIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {p7}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x2

    if-nez v0, :cond_0

    iget v0, p2, Lcom/android/server/biometrics/BiometricSensor;->id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p7, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 151
    return v1

    .line 154
    :cond_0
    iget v0, p2, Lcom/android/server/biometrics/BiometricSensor;->oemStrength:I

    .line 155
    invoke-static {v0, p6}, Lcom/android/server/biometrics/Utils;->isAtLeastStrength(II)Z

    move-result v0

    .line 156
    .local v0, "wasStrongEnough":Z
    nop

    .line 157
    invoke-virtual {p2}, Lcom/android/server/biometrics/BiometricSensor;->getCurrentStrength()I

    move-result v2

    invoke-static {v2, p6}, Lcom/android/server/biometrics/Utils;->isAtLeastStrength(II)Z

    move-result v2

    .line 159
    .local v2, "isStrongEnough":Z
    if-eqz v0, :cond_1

    if-nez v2, :cond_1

    .line 160
    const/4 v1, 0x5

    return v1

    .line 161
    :cond_1
    if-nez v0, :cond_2

    .line 162
    const/4 v1, 0x4

    return v1

    .line 166
    :cond_2
    const/4 v3, 0x6

    :try_start_0
    iget-object v4, p2, Lcom/android/server/biometrics/BiometricSensor;->impl:Landroid/hardware/biometrics/IBiometricAuthenticator;

    invoke-interface {v4, p4}, Landroid/hardware/biometrics/IBiometricAuthenticator;->isHardwareDetected(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 167
    return v3

    .line 170
    :cond_3
    iget-object v4, p2, Lcom/android/server/biometrics/BiometricSensor;->impl:Landroid/hardware/biometrics/IBiometricAuthenticator;

    invoke-interface {v4, p3, p4}, Landroid/hardware/biometrics/IBiometricAuthenticator;->hasEnrolledTemplates(ILjava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 171
    const/4 v1, 0x7

    return v1

    .line 174
    :cond_4
    iget-object v4, p2, Lcom/android/server/biometrics/BiometricSensor;->impl:Landroid/hardware/biometrics/IBiometricAuthenticator;

    .line 175
    invoke-interface {v4, p3}, Landroid/hardware/biometrics/IBiometricAuthenticator;->getLockoutModeForUser(I)I

    move-result v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    .local v3, "lockoutMode":I
    const/4 v4, 0x1

    if-ne v3, v4, :cond_5

    .line 177
    const/16 v1, 0xa

    return v1

    .line 178
    :cond_5
    if-ne v3, v1, :cond_6

    .line 179
    const/16 v1, 0xb

    return v1

    .line 183
    .end local v3    # "lockoutMode":I
    :cond_6
    nop

    .line 185
    iget v1, p2, Lcom/android/server/biometrics/BiometricSensor;->modality:I

    invoke-static {p1, v1, p3}, Lcom/android/server/biometrics/PreAuthInfo;->isEnabledForApp(Lcom/android/server/biometrics/BiometricService$SettingObserver;II)Z

    move-result v1

    if-nez v1, :cond_7

    .line 186
    const/16 v1, 0x8

    return v1

    .line 189
    :cond_7
    if-eqz p5, :cond_8

    .line 190
    iget v1, p2, Lcom/android/server/biometrics/BiometricSensor;->modality:I

    invoke-static {p0, v1, p3}, Lcom/android/server/biometrics/PreAuthInfo;->isBiometricDisabledByDevicePolicy(Landroid/app/admin/DevicePolicyManager;II)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 191
    const/4 v1, 0x3

    return v1

    .line 195
    :cond_8
    return v4

    .line 181
    :catch_0
    move-exception v1

    .line 182
    .local v1, "e":Landroid/os/RemoteException;
    return v3
.end method

.method private static isBiometricDisabledByDevicePolicy(Landroid/app/admin/DevicePolicyManager;II)Z
    .locals 5
    .param p0, "devicePolicyManager"    # Landroid/app/admin/DevicePolicyManager;
    .param p1, "modality"    # I
    .param p2, "effectiveUserId"    # I

    .line 206
    invoke-static {p1}, Lcom/android/server/biometrics/PreAuthInfo;->mapModalityToDevicePolicyType(I)I

    move-result v0

    .line 207
    .local v0, "biometricToCheck":I
    if-eqz v0, :cond_1

    .line 210
    const/4 v1, 0x0

    .line 211
    invoke-virtual {p0, v1, p2}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result v1

    .line 212
    .local v1, "devicePolicyDisabledFeatures":I
    and-int v2, v0, v1

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 214
    .local v2, "isBiometricDisabled":Z
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isBiometricDisabledByDevicePolicy("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BiometricService/PreAuthInfo"

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    return v2

    .line 208
    .end local v1    # "devicePolicyDisabledFeatures":I
    .end local v2    # "isBiometricDisabled":Z
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Modality unknown to devicePolicyManager: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static isEnabledForApp(Lcom/android/server/biometrics/BiometricService$SettingObserver;II)Z
    .locals 1
    .param p0, "settingObserver"    # Lcom/android/server/biometrics/BiometricService$SettingObserver;
    .param p1, "modality"    # I
    .param p2, "userId"    # I

    .line 200
    invoke-virtual {p0, p2}, Lcom/android/server/biometrics/BiometricService$SettingObserver;->getEnabledForApps(I)Z

    move-result v0

    return v0
.end method

.method private static mapModalityToDevicePolicyType(I)I
    .locals 2
    .param p0, "modality"    # I

    .line 225
    sparse-switch p0, :sswitch_data_0

    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error modality="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricService/PreAuthInfo"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    const/4 v0, 0x0

    return v0

    .line 231
    :sswitch_0
    const/16 v0, 0x80

    return v0

    .line 229
    :sswitch_1
    const/16 v0, 0x100

    return v0

    .line 227
    :sswitch_2
    const/16 v0, 0x20

    return v0

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_2
        0x4 -> :sswitch_1
        0x8 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method getCanAuthenticateResult()I
    .locals 1

    .line 334
    nop

    .line 336
    invoke-direct {p0}, Lcom/android/server/biometrics/PreAuthInfo;->getInternalStatus()Landroid/util/Pair;

    move-result-object v0

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 335
    invoke-static {v0}, Lcom/android/server/biometrics/Utils;->authenticatorStatusToBiometricConstant(I)I

    move-result v0

    .line 334
    invoke-static {v0}, Lcom/android/server/biometrics/Utils;->biometricConstantsToBiometricManager(I)I

    move-result v0

    return v0
.end method

.method getEligibleModalities()I
    .locals 4

    .line 384
    const/4 v0, 0x0

    .line 385
    .local v0, "modalities":I
    iget-object v1, p0, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/biometrics/BiometricSensor;

    .line 386
    .local v2, "sensor":Lcom/android/server/biometrics/BiometricSensor;
    iget v3, v2, Lcom/android/server/biometrics/BiometricSensor;->modality:I

    or-int/2addr v0, v3

    .line 387
    .end local v2    # "sensor":Lcom/android/server/biometrics/BiometricSensor;
    goto :goto_0

    .line 389
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/biometrics/PreAuthInfo;->credentialRequested:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/biometrics/PreAuthInfo;->credentialAvailable:Z

    if-eqz v1, :cond_1

    .line 390
    or-int/lit8 v0, v0, 0x1

    .line 392
    :cond_1
    return v0
.end method

.method getPreAuthenticateStatus()Landroid/util/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 346
    invoke-direct {p0}, Lcom/android/server/biometrics/PreAuthInfo;->getInternalStatus()Landroid/util/Pair;

    move-result-object v0

    .line 348
    .local v0, "internalStatus":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/android/server/biometrics/Utils;->authenticatorStatusToBiometricConstant(I)I

    move-result v1

    .line 349
    .local v1, "publicError":I
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 350
    .local v2, "modality":I
    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 365
    :pswitch_0
    const/4 v2, 0x0

    goto :goto_0

    .line 359
    :pswitch_1
    nop

    .line 369
    :goto_0
    new-instance v3, Landroid/util/Pair;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method numSensorsWaitingForCookie()I
    .locals 5

    .line 396
    const/4 v0, 0x0

    .line 397
    .local v0, "numWaiting":I
    iget-object v1, p0, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/biometrics/BiometricSensor;

    .line 398
    .local v2, "sensor":Lcom/android/server/biometrics/BiometricSensor;
    invoke-virtual {v2}, Lcom/android/server/biometrics/BiometricSensor;->getSensorState()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 399
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sensor ID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/android/server/biometrics/BiometricSensor;->id:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " Waiting for cookie: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    invoke-virtual {v2}, Lcom/android/server/biometrics/BiometricSensor;->getCookie()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 399
    const-string v4, "BiometricService/PreAuthInfo"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    add-int/lit8 v0, v0, 0x1

    .line 403
    .end local v2    # "sensor":Lcom/android/server/biometrics/BiometricSensor;
    :cond_0
    goto :goto_0

    .line 404
    :cond_1
    return v0
.end method

.method shouldShowCredential()Z
    .locals 1

    .line 376
    iget-boolean v0, p0, Lcom/android/server/biometrics/PreAuthInfo;->credentialRequested:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/biometrics/PreAuthInfo;->credentialAvailable:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 409
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BiometricRequested: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/biometrics/PreAuthInfo;->mBiometricRequested:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", StrengthRequested: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/biometrics/PreAuthInfo;->mBiometricStrengthRequested:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", CredentialRequested: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/biometrics/PreAuthInfo;->credentialRequested:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 413
    .local v0, "string":Ljava/lang/StringBuilder;
    const-string v1, ", Eligible:{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    iget-object v1, p0, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, " "

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/biometrics/BiometricSensor;

    .line 415
    .local v2, "sensor":Lcom/android/server/biometrics/BiometricSensor;
    iget v4, v2, Lcom/android/server/biometrics/BiometricSensor;->id:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    .end local v2    # "sensor":Lcom/android/server/biometrics/BiometricSensor;
    goto :goto_0

    .line 417
    :cond_0
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    const-string v2, ", Ineligible:{"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 420
    iget-object v2, p0, Lcom/android/server/biometrics/PreAuthInfo;->ineligibleSensors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    .line 421
    .local v4, "ineligible":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/biometrics/BiometricSensor;Ljava/lang/Integer;>;"
    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    .end local v4    # "ineligible":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/biometrics/BiometricSensor;Ljava/lang/Integer;>;"
    goto :goto_1

    .line 423
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 425
    const-string v1, ", CredentialAvailable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/biometrics/PreAuthInfo;->credentialAvailable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 426
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 427
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
