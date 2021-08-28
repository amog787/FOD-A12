.class public Lcom/android/server/biometrics/AuthService;
.super Lcom/android/server/SystemService;
.source "AuthService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/biometrics/AuthService$AuthServiceImpl;,
        Lcom/android/server/biometrics/AuthService$Injector;
    }
.end annotation


# static fields
.field private static final DEFAULT_HIDL_DISABLED:I = 0x0

.field private static final SETTING_HIDL_DISABLED:Ljava/lang/String; = "com.android.server.biometrics.AuthService.hidlDisabled"

.field private static final TAG:Ljava/lang/String; = "AuthService"


# instance fields
.field private mBiometricService:Landroid/hardware/biometrics/IBiometricService;

.field final mImpl:Landroid/hardware/biometrics/IAuthService$Stub;

.field private final mInjector:Lcom/android/server/biometrics/AuthService$Injector;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 588
    new-instance v0, Lcom/android/server/biometrics/AuthService$Injector;

    invoke-direct {v0}, Lcom/android/server/biometrics/AuthService$Injector;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/server/biometrics/AuthService;-><init>(Landroid/content/Context;Lcom/android/server/biometrics/AuthService$Injector;)V

    .line 589
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/biometrics/AuthService$Injector;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "injector"    # Lcom/android/server/biometrics/AuthService$Injector;

    .line 592
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 594
    iput-object p2, p0, Lcom/android/server/biometrics/AuthService;->mInjector:Lcom/android/server/biometrics/AuthService$Injector;

    .line 595
    new-instance v0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;-><init>(Lcom/android/server/biometrics/AuthService;Lcom/android/server/biometrics/AuthService$1;)V

    iput-object v0, p0, Lcom/android/server/biometrics/AuthService;->mImpl:Landroid/hardware/biometrics/IAuthService$Stub;

    .line 596
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/biometrics/AuthService;Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/biometrics/AuthService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/os/IBinder;

    .line 79
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/AuthService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/biometrics/AuthService;)Lcom/android/server/biometrics/AuthService$Injector;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/biometrics/AuthService;

    .line 79
    iget-object v0, p0, Lcom/android/server/biometrics/AuthService;->mInjector:Lcom/android/server/biometrics/AuthService$Injector;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/biometrics/AuthService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/biometrics/AuthService;

    .line 79
    invoke-direct {p0}, Lcom/android/server/biometrics/AuthService;->checkPermission()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/biometrics/AuthService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/biometrics/AuthService;

    .line 79
    invoke-direct {p0}, Lcom/android/server/biometrics/AuthService;->checkInternalPermission()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/biometrics/AuthService;ILjava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/biometrics/AuthService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .line 79
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/biometrics/AuthService;->checkAppOps(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/biometrics/AuthService;)Landroid/hardware/biometrics/IBiometricService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/biometrics/AuthService;

    .line 79
    iget-object v0, p0, Lcom/android/server/biometrics/AuthService;->mBiometricService:Landroid/hardware/biometrics/IBiometricService;

    return-object v0
.end method

.method static synthetic access$600(I)I
    .locals 1
    .param p0, "x0"    # I

    .line 79
    invoke-static {p0}, Lcom/android/server/biometrics/AuthService;->getCredentialBackupModality(I)I

    move-result v0

    return v0
.end method

.method private checkAppOps(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p1, "uid"    # I
    .param p2, "opPackageName"    # Ljava/lang/String;
    .param p3, "reason"    # Ljava/lang/String;

    .line 727
    iget-object v0, p0, Lcom/android/server/biometrics/AuthService;->mInjector:Lcom/android/server/biometrics/AuthService$Injector;

    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/AuthService$Injector;->getAppOps(Landroid/content/Context;)Landroid/app/AppOpsManager;

    move-result-object v2

    const/16 v3, 0x4e

    const/4 v6, 0x0

    move v4, p1

    move-object v5, p2

    move-object v7, p3

    invoke-virtual/range {v2 .. v7}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private checkInternalPermission()V
    .locals 3

    .line 714
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.USE_BIOMETRIC_INTERNAL"

    const-string v2, "Must have USE_BIOMETRIC_INTERNAL permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 716
    return-void
.end method

.method private checkPermission()V
    .locals 3

    .line 719
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.USE_FINGERPRINT"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 721
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.USE_BIOMETRIC"

    const-string v2, "Must have USE_BIOMETRIC permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 724
    :cond_0
    return-void
.end method

.method private static getCredentialBackupModality(I)I
    .locals 1
    .param p0, "modality"    # I

    .line 733
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 734
    move v0, p0

    goto :goto_0

    :cond_0
    and-int/lit8 v0, p0, -0x2

    .line 733
    :goto_0
    return v0
.end method

.method private getHidlFaceSensorProps(II)Landroid/hardware/face/FaceSensorPropertiesInternal;
    .locals 14
    .param p1, "sensorId"    # I
    .param p2, "strength"    # I

    .line 780
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11100e5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 782
    .local v0, "supportsSelfIllumination":Z
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0061

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 784
    .local v1, "maxTemplatesAllowed":I
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 785
    .local v6, "componentInfo":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/biometrics/ComponentInfoInternal;>;"
    const/4 v11, 0x0

    .line 786
    .local v11, "supportsFaceDetect":Z
    const/4 v12, 0x1

    .line 787
    .local v12, "resetLockoutRequiresChallenge":Z
    new-instance v13, Landroid/hardware/face/FaceSensorPropertiesInternal;

    .line 788
    invoke-static/range {p2 .. p2}, Lcom/android/server/biometrics/Utils;->authenticatorStrengthToPropertyStrength(I)I

    move-result v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x1

    move-object v2, v13

    move v3, p1

    move v5, v1

    move v9, v0

    invoke-direct/range {v2 .. v10}, Landroid/hardware/face/FaceSensorPropertiesInternal;-><init>(IIILjava/util/List;IZZZ)V

    .line 787
    return-object v13
.end method

.method private getHidlFingerprintSensorProps(II)Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;
    .locals 19
    .param p1, "sensorId"    # I
    .param p2, "strength"    # I

    .line 741
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/AuthService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070088

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    .line 744
    .local v0, "udfpsProps":[I
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    .line 747
    .local v1, "isUdfps":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/AuthService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x11100fa

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    .line 751
    .local v3, "isPowerbuttonFps":Z
    if-eqz v1, :cond_0

    .line 752
    const/4 v4, 0x3

    .local v4, "sensorType":I
    goto :goto_0

    .line 753
    .end local v4    # "sensorType":I
    :cond_0
    if-eqz v3, :cond_1

    .line 754
    const/4 v4, 0x4

    .restart local v4    # "sensorType":I
    goto :goto_0

    .line 756
    .end local v4    # "sensorType":I
    :cond_1
    const/4 v4, 0x1

    .line 761
    .restart local v4    # "sensorType":I
    :goto_0
    const/16 v17, 0x0

    .line 762
    .local v17, "resetLockoutRequiresHardwareAuthToken":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/AuthService;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10e0062

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v18

    .line 765
    .local v18, "maxEnrollmentsPerUser":I
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 766
    .local v9, "componentInfo":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/biometrics/ComponentInfoInternal;>;"
    if-eqz v1, :cond_2

    array-length v5, v0

    const/4 v6, 0x3

    if-ne v5, v6, :cond_2

    .line 767
    new-instance v15, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    .line 768
    invoke-static/range {p2 .. p2}, Lcom/android/server/biometrics/Utils;->authenticatorStrengthToPropertyStrength(I)I

    move-result v7

    const/4 v11, 0x0

    const/4 v5, 0x0

    aget v12, v0, v5

    aget v13, v0, v2

    const/4 v2, 0x2

    aget v14, v0, v2

    move-object v5, v15

    move/from16 v6, p1

    move/from16 v8, v18

    move v10, v4

    invoke-direct/range {v5 .. v14}, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;-><init>(IIILjava/util/List;IZIII)V

    .line 767
    return-object v15

    .line 772
    :cond_2
    new-instance v2, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    .line 773
    invoke-static/range {p2 .. p2}, Lcom/android/server/biometrics/Utils;->authenticatorStrengthToPropertyStrength(I)I

    move-result v12

    const/16 v16, 0x0

    move-object v10, v2

    move/from16 v11, p1

    move/from16 v13, v18

    move-object v14, v9

    move v15, v4

    invoke-direct/range {v10 .. v16}, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;-><init>(IIILjava/util/List;IZ)V

    .line 772
    return-object v2
.end method

.method private getHidlIrisSensorProps(II)Landroid/hardware/biometrics/SensorPropertiesInternal;
    .locals 11
    .param p1, "sensorId"    # I
    .param p2, "strength"    # I

    .line 795
    const/4 v0, 0x1

    .line 796
    .local v0, "maxEnrollmentsPerUser":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 797
    .local v5, "componentInfo":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/biometrics/ComponentInfoInternal;>;"
    const/4 v8, 0x0

    .line 798
    .local v8, "resetLockoutRequiresHardwareAuthToken":Z
    const/4 v9, 0x0

    .line 799
    .local v9, "resetLockoutRequiresChallenge":Z
    new-instance v10, Landroid/hardware/biometrics/SensorPropertiesInternal;

    .line 800
    invoke-static {p2}, Lcom/android/server/biometrics/Utils;->authenticatorStrengthToPropertyStrength(I)I

    move-result v3

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v10

    move v2, p1

    invoke-direct/range {v1 .. v7}, Landroid/hardware/biometrics/SensorPropertiesInternal;-><init>(IIILjava/util/List;ZZ)V

    .line 799
    return-object v10
.end method

.method private registerAuthenticators([Lcom/android/server/biometrics/SensorConfig;)V
    .locals 9
    .param p1, "hidlSensors"    # [Lcom/android/server/biometrics/SensorConfig;

    .line 650
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 651
    .local v0, "hidlFingerprintSensors":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 653
    .local v1, "hidlFaceSensors":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/face/FaceSensorPropertiesInternal;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 655
    .local v2, "hidlIrisSensors":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/biometrics/SensorPropertiesInternal;>;"
    const-string v3, "AuthService"

    if-eqz p1, :cond_0

    .line 656
    array-length v4, p1

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_0

    aget-object v6, p1, v5

    .line 657
    .local v6, "sensor":Lcom/android/server/biometrics/SensorConfig;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Registering HIDL ID: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v6, Lcom/android/server/biometrics/SensorConfig;->id:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " Modality: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v6, Lcom/android/server/biometrics/SensorConfig;->modality:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " Strength: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v6, Lcom/android/server/biometrics/SensorConfig;->strength:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    iget v7, v6, Lcom/android/server/biometrics/SensorConfig;->modality:I

    sparse-switch v7, :sswitch_data_0

    .line 674
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown modality: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v6, Lcom/android/server/biometrics/SensorConfig;->modality:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 666
    :sswitch_0
    iget v7, v6, Lcom/android/server/biometrics/SensorConfig;->id:I

    iget v8, v6, Lcom/android/server/biometrics/SensorConfig;->strength:I

    invoke-direct {p0, v7, v8}, Lcom/android/server/biometrics/AuthService;->getHidlFaceSensorProps(II)Landroid/hardware/face/FaceSensorPropertiesInternal;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 667
    goto :goto_1

    .line 670
    :sswitch_1
    iget v7, v6, Lcom/android/server/biometrics/SensorConfig;->id:I

    iget v8, v6, Lcom/android/server/biometrics/SensorConfig;->strength:I

    invoke-direct {p0, v7, v8}, Lcom/android/server/biometrics/AuthService;->getHidlIrisSensorProps(II)Landroid/hardware/biometrics/SensorPropertiesInternal;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 671
    goto :goto_1

    .line 661
    :sswitch_2
    iget v7, v6, Lcom/android/server/biometrics/SensorConfig;->id:I

    iget v8, v6, Lcom/android/server/biometrics/SensorConfig;->strength:I

    .line 662
    invoke-direct {p0, v7, v8}, Lcom/android/server/biometrics/AuthService;->getHidlFingerprintSensorProps(II)Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    move-result-object v7

    .line 661
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 663
    nop

    .line 656
    .end local v6    # "sensor":Lcom/android/server/biometrics/SensorConfig;
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 679
    :cond_0
    iget-object v4, p0, Lcom/android/server/biometrics/AuthService;->mInjector:Lcom/android/server/biometrics/AuthService$Injector;

    invoke-virtual {v4}, Lcom/android/server/biometrics/AuthService$Injector;->getFingerprintService()Landroid/hardware/fingerprint/IFingerprintService;

    move-result-object v4

    .line 680
    .local v4, "fingerprintService":Landroid/hardware/fingerprint/IFingerprintService;
    if-eqz v4, :cond_1

    .line 682
    :try_start_0
    invoke-interface {v4, v0}, Landroid/hardware/fingerprint/IFingerprintService;->registerAuthenticators(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 685
    :goto_2
    goto :goto_3

    .line 683
    :catch_0
    move-exception v5

    .line 684
    .local v5, "e":Landroid/os/RemoteException;
    const-string v6, "RemoteException when registering fingerprint authenticators"

    invoke-static {v3, v6, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v5    # "e":Landroid/os/RemoteException;
    goto :goto_2

    .line 686
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 687
    const-string v5, "HIDL fingerprint configuration exists, but FingerprintService is null."

    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    :cond_2
    :goto_3
    iget-object v5, p0, Lcom/android/server/biometrics/AuthService;->mInjector:Lcom/android/server/biometrics/AuthService$Injector;

    invoke-virtual {v5}, Lcom/android/server/biometrics/AuthService$Injector;->getFaceService()Landroid/hardware/face/IFaceService;

    move-result-object v5

    .line 691
    .local v5, "faceService":Landroid/hardware/face/IFaceService;
    if-eqz v5, :cond_3

    .line 693
    :try_start_1
    invoke-interface {v5, v1}, Landroid/hardware/face/IFaceService;->registerAuthenticators(Ljava/util/List;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 696
    :goto_4
    goto :goto_5

    .line 694
    :catch_1
    move-exception v6

    .line 695
    .local v6, "e":Landroid/os/RemoteException;
    const-string v7, "RemoteException when registering face authenticators"

    invoke-static {v3, v7, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v6    # "e":Landroid/os/RemoteException;
    goto :goto_4

    .line 697
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_4

    .line 698
    const-string v6, "HIDL face configuration exists, but FaceService is null."

    invoke-static {v3, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    :cond_4
    :goto_5
    iget-object v6, p0, Lcom/android/server/biometrics/AuthService;->mInjector:Lcom/android/server/biometrics/AuthService$Injector;

    invoke-virtual {v6}, Lcom/android/server/biometrics/AuthService$Injector;->getIrisService()Landroid/hardware/iris/IIrisService;

    move-result-object v6

    .line 702
    .local v6, "irisService":Landroid/hardware/iris/IIrisService;
    if-eqz v6, :cond_5

    .line 704
    :try_start_2
    invoke-interface {v6, v2}, Landroid/hardware/iris/IIrisService;->registerAuthenticators(Ljava/util/List;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 707
    :goto_6
    goto :goto_7

    .line 705
    :catch_2
    move-exception v7

    .line 706
    .local v7, "e":Landroid/os/RemoteException;
    const-string v8, "RemoteException when registering iris authenticators"

    invoke-static {v3, v8, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v7    # "e":Landroid/os/RemoteException;
    goto :goto_6

    .line 708
    :cond_5
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_6

    .line 709
    const-string v7, "HIDL iris configuration exists, but IrisService is null."

    invoke-static {v3, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    :cond_6
    :goto_7
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_2
        0x4 -> :sswitch_1
        0x8 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public onStart()V
    .locals 5

    .line 622
    iget-object v0, p0, Lcom/android/server/biometrics/AuthService;->mInjector:Lcom/android/server/biometrics/AuthService$Injector;

    invoke-virtual {v0}, Lcom/android/server/biometrics/AuthService$Injector;->getBiometricService()Landroid/hardware/biometrics/IBiometricService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/biometrics/AuthService;->mBiometricService:Landroid/hardware/biometrics/IBiometricService;

    .line 625
    iget-object v0, p0, Lcom/android/server/biometrics/AuthService;->mInjector:Lcom/android/server/biometrics/AuthService$Injector;

    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/AuthService$Injector;->isHidlDisabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 626
    iget-object v0, p0, Lcom/android/server/biometrics/AuthService;->mInjector:Lcom/android/server/biometrics/AuthService$Injector;

    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/AuthService$Injector;->getConfiguration(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    .line 627
    .local v0, "configStrings":[Ljava/lang/String;
    array-length v1, v0

    new-array v1, v1, [Lcom/android/server/biometrics/SensorConfig;

    .line 628
    .local v1, "hidlConfigs":[Lcom/android/server/biometrics/SensorConfig;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 629
    new-instance v3, Lcom/android/server/biometrics/SensorConfig;

    aget-object v4, v0, v2

    invoke-direct {v3, v4}, Lcom/android/server/biometrics/SensorConfig;-><init>(Ljava/lang/String;)V

    aput-object v3, v1, v2

    .line 628
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 631
    .end local v0    # "configStrings":[Ljava/lang/String;
    .end local v2    # "i":I
    :cond_0
    goto :goto_1

    .line 632
    .end local v1    # "hidlConfigs":[Lcom/android/server/biometrics/SensorConfig;
    :cond_1
    const/4 v1, 0x0

    .line 636
    .restart local v1    # "hidlConfigs":[Lcom/android/server/biometrics/SensorConfig;
    :goto_1
    invoke-direct {p0, v1}, Lcom/android/server/biometrics/AuthService;->registerAuthenticators([Lcom/android/server/biometrics/SensorConfig;)V

    .line 638
    iget-object v0, p0, Lcom/android/server/biometrics/AuthService;->mInjector:Lcom/android/server/biometrics/AuthService$Injector;

    iget-object v2, p0, Lcom/android/server/biometrics/AuthService;->mImpl:Landroid/hardware/biometrics/IAuthService$Stub;

    invoke-virtual {v0, p0, v2}, Lcom/android/server/biometrics/AuthService$Injector;->publishBinderService(Lcom/android/server/biometrics/AuthService;Landroid/hardware/biometrics/IAuthService$Stub;)V

    .line 639
    return-void
.end method
