.class final Lcom/android/server/biometrics/sensors/iris/IrisService$IrisServiceWrapper;
.super Landroid/hardware/iris/IIrisService$Stub;
.source "IrisService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/sensors/iris/IrisService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "IrisServiceWrapper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/biometrics/sensors/iris/IrisService;


# direct methods
.method private constructor <init>(Lcom/android/server/biometrics/sensors/iris/IrisService;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/iris/IrisService$IrisServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/iris/IrisService;

    invoke-direct {p0}, Landroid/hardware/iris/IIrisService$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/biometrics/sensors/iris/IrisService;Lcom/android/server/biometrics/sensors/iris/IrisService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/biometrics/sensors/iris/IrisService;
    .param p2, "x1"    # Lcom/android/server/biometrics/sensors/iris/IrisService$1;

    .line 57
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/sensors/iris/IrisService$IrisServiceWrapper;-><init>(Lcom/android/server/biometrics/sensors/iris/IrisService;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$registerAuthenticators$0$IrisService$IrisServiceWrapper(Ljava/util/List;)V
    .locals 9
    .param p1, "hidlSensors"    # Ljava/util/List;

    .line 72
    nop

    .line 73
    const-string v0, "biometric"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 72
    invoke-static {v0}, Landroid/hardware/biometrics/IBiometricService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/IBiometricService;

    move-result-object v0

    .line 75
    .local v0, "biometricService":Landroid/hardware/biometrics/IBiometricService;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/biometrics/SensorPropertiesInternal;

    .line 76
    .local v2, "hidlSensor":Landroid/hardware/biometrics/SensorPropertiesInternal;
    iget v3, v2, Landroid/hardware/biometrics/SensorPropertiesInternal;->sensorId:I

    .line 77
    .local v3, "sensorId":I
    iget v4, v2, Landroid/hardware/biometrics/SensorPropertiesInternal;->sensorStrength:I

    .line 78
    invoke-static {v4}, Lcom/android/server/biometrics/Utils;->propertyStrengthToAuthenticatorStrength(I)I

    move-result v4

    .line 80
    .local v4, "strength":I
    new-instance v5, Lcom/android/server/biometrics/sensors/iris/IrisAuthenticator;

    iget-object v6, p0, Lcom/android/server/biometrics/sensors/iris/IrisService$IrisServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/iris/IrisService;

    invoke-static {v6}, Lcom/android/server/biometrics/sensors/iris/IrisService;->access$000(Lcom/android/server/biometrics/sensors/iris/IrisService;)Lcom/android/server/biometrics/sensors/iris/IrisService$IrisServiceWrapper;

    move-result-object v6

    invoke-direct {v5, v6, v3}, Lcom/android/server/biometrics/sensors/iris/IrisAuthenticator;-><init>(Landroid/hardware/iris/IIrisService;I)V

    .line 83
    .local v5, "authenticator":Lcom/android/server/biometrics/sensors/iris/IrisAuthenticator;
    const/4 v6, 0x4

    :try_start_0
    invoke-interface {v0, v3, v6, v4, v5}, Landroid/hardware/biometrics/IBiometricService;->registerAuthenticator(IIILandroid/hardware/biometrics/IBiometricAuthenticator;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    goto :goto_1

    .line 85
    :catch_0
    move-exception v6

    .line 86
    .local v6, "e":Landroid/os/RemoteException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Remote exception when registering sensorId: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "IrisService"

    invoke-static {v8, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    .end local v2    # "hidlSensor":Landroid/hardware/biometrics/SensorPropertiesInternal;
    .end local v3    # "sensorId":I
    .end local v4    # "strength":I
    .end local v5    # "authenticator":Lcom/android/server/biometrics/sensors/iris/IrisAuthenticator;
    .end local v6    # "e":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 89
    :cond_0
    return-void
.end method

.method public registerAuthenticators(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/biometrics/SensorPropertiesInternal;",
            ">;)V"
        }
    .end annotation

    .line 60
    .local p1, "hidlSensors":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/biometrics/SensorPropertiesInternal;>;"
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/iris/IrisService$IrisServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/iris/IrisService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/iris/IrisService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 66
    new-instance v0, Lcom/android/server/ServiceThread;

    const-string v1, "IrisService"

    const/16 v2, 0xa

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    .line 68
    .local v0, "thread":Lcom/android/server/ServiceThread;
    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->start()V

    .line 69
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 71
    .local v1, "handler":Landroid/os/Handler;
    new-instance v2, Lcom/android/server/biometrics/sensors/iris/IrisService$IrisServiceWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1}, Lcom/android/server/biometrics/sensors/iris/IrisService$IrisServiceWrapper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/iris/IrisService$IrisServiceWrapper;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 90
    return-void
.end method
