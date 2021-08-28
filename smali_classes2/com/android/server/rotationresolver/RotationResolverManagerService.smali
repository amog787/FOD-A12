.class public Lcom/android/server/rotationresolver/RotationResolverManagerService;
.super Lcom/android/server/infra/AbstractMasterSystemService;
.source "RotationResolverManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/rotationresolver/RotationResolverManagerService$BinderService;,
        Lcom/android/server/rotationresolver/RotationResolverManagerService$LocalService;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/infra/AbstractMasterSystemService<",
        "Lcom/android/server/rotationresolver/RotationResolverManagerService;",
        "Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_SERVICE_ENABLED:Z = true

.field private static final KEY_SERVICE_ENABLED:Ljava/lang/String; = "service_enabled"

.field static final ORIENTATION_UNKNOWN:I = 0x0

.field static final RESOLUTION_DISABLED:I = 0x6

.field static final RESOLUTION_FAILURE:I = 0x8

.field static final RESOLUTION_UNAVAILABLE:I = 0x7

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field mIsServiceEnabled:Z

.field private final mPrivacyManager:Landroid/hardware/SensorPrivacyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 70
    const-class v0, Lcom/android/server/rotationresolver/RotationResolverManagerService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/rotationresolver/RotationResolverManagerService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 91
    new-instance v0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;

    const v1, 0x1040223

    invoke-direct {v0, p1, v1}, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;-><init>(Landroid/content/Context;I)V

    const/4 v1, 0x0

    const/16 v2, 0x44

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/server/infra/AbstractMasterSystemService;-><init>(Landroid/content/Context;Lcom/android/server/infra/ServiceNameResolver;Ljava/lang/String;I)V

    .line 97
    iput-object p1, p0, Lcom/android/server/rotationresolver/RotationResolverManagerService;->mContext:Landroid/content/Context;

    .line 98
    invoke-static {p1}, Landroid/hardware/SensorPrivacyManager;->getInstance(Landroid/content/Context;)Landroid/hardware/SensorPrivacyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/rotationresolver/RotationResolverManagerService;->mPrivacyManager:Landroid/hardware/SensorPrivacyManager;

    .line 99
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/rotationresolver/RotationResolverManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/rotationresolver/RotationResolverManagerService;
    .param p1, "x1"    # I

    .line 66
    invoke-virtual {p0, p1}, Lcom/android/server/rotationresolver/RotationResolverManagerService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/rotationresolver/RotationResolverManagerService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/rotationresolver/RotationResolverManagerService;

    .line 66
    iget-object v0, p0, Lcom/android/server/rotationresolver/RotationResolverManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/rotationresolver/RotationResolverManagerService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/rotationresolver/RotationResolverManagerService;

    .line 66
    iget-object v0, p0, Lcom/android/server/rotationresolver/RotationResolverManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/rotationresolver/RotationResolverManagerService;)Landroid/hardware/SensorPrivacyManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/rotationresolver/RotationResolverManagerService;

    .line 66
    iget-object v0, p0, Lcom/android/server/rotationresolver/RotationResolverManagerService;->mPrivacyManager:Landroid/hardware/SensorPrivacyManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/rotationresolver/RotationResolverManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/rotationresolver/RotationResolverManagerService;
    .param p1, "x1"    # I

    .line 66
    invoke-virtual {p0, p1}, Lcom/android/server/rotationresolver/RotationResolverManagerService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600()Ljava/lang/String;
    .locals 1

    .line 66
    sget-object v0, Lcom/android/server/rotationresolver/RotationResolverManagerService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/rotationresolver/RotationResolverManagerService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/rotationresolver/RotationResolverManagerService;

    .line 66
    iget-object v0, p0, Lcom/android/server/rotationresolver/RotationResolverManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/rotationresolver/RotationResolverManagerService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/rotationresolver/RotationResolverManagerService;

    .line 66
    iget-object v0, p0, Lcom/android/server/rotationresolver/RotationResolverManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/rotationresolver/RotationResolverManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/rotationresolver/RotationResolverManagerService;
    .param p1, "x1"    # I

    .line 66
    invoke-virtual {p0, p1}, Lcom/android/server/rotationresolver/RotationResolverManagerService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v0

    return-object v0
.end method

.method static errorCodeToProto(I)I
    .locals 1
    .param p0, "error"    # I

    .line 242
    packed-switch p0, :pswitch_data_0

    .line 250
    :pswitch_0
    const/16 v0, 0x8

    return v0

    .line 244
    :pswitch_1
    const/4 v0, 0x7

    return v0

    .line 248
    :pswitch_2
    const/4 v0, 0x0

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static getServiceConfigPackage(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 147
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getRotationResolverPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isServiceConfigured(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 143
    invoke-static {p0}, Lcom/android/server/rotationresolver/RotationResolverManagerService;->getServiceConfigPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method static logRotationStats(III)V
    .locals 3
    .param p0, "proposedRotation"    # I
    .param p1, "currentRotation"    # I
    .param p2, "result"    # I

    .line 235
    nop

    .line 236
    invoke-static {p1}, Lcom/android/server/rotationresolver/RotationResolverManagerService;->surfaceRotationToProto(I)I

    move-result v0

    .line 237
    invoke-static {p0}, Lcom/android/server/rotationresolver/RotationResolverManagerService;->surfaceRotationToProto(I)I

    move-result v1

    .line 235
    const/16 v2, 0x148

    invoke-static {v2, v0, v1, p2}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII)V

    .line 239
    return-void
.end method

.method static logRotationStatsWithTimeToCalculate(IIIJ)V
    .locals 6
    .param p0, "proposedRotation"    # I
    .param p1, "currentRotation"    # I
    .param p2, "result"    # I
    .param p3, "timeToCalculate"    # J

    .line 226
    nop

    .line 227
    invoke-static {p1}, Lcom/android/server/rotationresolver/RotationResolverManagerService;->surfaceRotationToProto(I)I

    move-result v1

    .line 228
    invoke-static {p0}, Lcom/android/server/rotationresolver/RotationResolverManagerService;->surfaceRotationToProto(I)I

    move-result v2

    .line 226
    const/16 v0, 0x148

    move v3, p2

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIIJ)V

    .line 231
    return-void
.end method

.method private onDeviceConfigChange(Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 114
    .local p1, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v0, "service_enabled"

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 115
    const/4 v1, 0x1

    const-string v2, "rotation_resolver"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/rotationresolver/RotationResolverManagerService;->mIsServiceEnabled:Z

    .line 118
    :cond_0
    return-void
.end method

.method static surfaceRotationToProto(I)I
    .locals 1
    .param p0, "rotationPoseResult"    # I

    .line 255
    packed-switch p0, :pswitch_data_0

    .line 266
    const/16 v0, 0x8

    return v0

    .line 263
    :pswitch_0
    const/4 v0, 0x5

    return v0

    .line 261
    :pswitch_1
    const/4 v0, 0x4

    return v0

    .line 259
    :pswitch_2
    const/4 v0, 0x3

    return v0

    .line 257
    :pswitch_3
    const/4 v0, 0x2

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public synthetic lambda$onBootPhase$0$RotationResolverManagerService(Landroid/provider/DeviceConfig$Properties;)V
    .locals 1
    .param p1, "properties"    # Landroid/provider/DeviceConfig$Properties;

    .line 106
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/rotationresolver/RotationResolverManagerService;->onDeviceConfigChange(Ljava/util/Set;)V

    return-void
.end method

.method public bridge synthetic newServiceLocked(IZ)Lcom/android/server/infra/AbstractPerUserSystemService;
    .locals 0

    .line 66
    invoke-virtual {p0, p1, p2}, Lcom/android/server/rotationresolver/RotationResolverManagerService;->newServiceLocked(IZ)Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;

    move-result-object p1

    return-object p1
.end method

.method public newServiceLocked(IZ)Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;
    .locals 2
    .param p1, "resolvedUserId"    # I
    .param p2, "disabled"    # Z

    .line 130
    new-instance v0, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;

    iget-object v1, p0, Lcom/android/server/rotationresolver/RotationResolverManagerService;->mLock:Ljava/lang/Object;

    invoke-direct {v0, p0, v1, p1}, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;-><init>(Lcom/android/server/rotationresolver/RotationResolverManagerService;Ljava/lang/Object;I)V

    return-object v0
.end method

.method public onBootPhase(I)V
    .locals 3
    .param p1, "phase"    # I

    .line 103
    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_0

    .line 104
    nop

    .line 105
    invoke-virtual {p0}, Lcom/android/server/rotationresolver/RotationResolverManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/android/server/rotationresolver/RotationResolverManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/rotationresolver/RotationResolverManagerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/rotationresolver/RotationResolverManagerService;)V

    .line 104
    const-string v2, "rotation_resolver"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 108
    const/4 v0, 0x1

    const-string v1, "service_enabled"

    invoke-static {v2, v1, v0}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/rotationresolver/RotationResolverManagerService;->mIsServiceEnabled:Z

    .line 111
    :cond_0
    return-void
.end method

.method protected bridge synthetic onServiceRemoved(Lcom/android/server/infra/AbstractPerUserSystemService;I)V
    .locals 0

    .line 66
    check-cast p1, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/rotationresolver/RotationResolverManagerService;->onServiceRemoved(Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;I)V

    return-void
.end method

.method protected onServiceRemoved(Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;I)V
    .locals 2
    .param p1, "service"    # Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;
    .param p2, "userId"    # I

    .line 136
    iget-object v0, p0, Lcom/android/server/rotationresolver/RotationResolverManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 137
    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->destroyLocked()V

    .line 138
    monitor-exit v0

    .line 139
    return-void

    .line 138
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onStart()V
    .locals 3

    .line 122
    new-instance v0, Lcom/android/server/rotationresolver/RotationResolverManagerService$BinderService;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/rotationresolver/RotationResolverManagerService$BinderService;-><init>(Lcom/android/server/rotationresolver/RotationResolverManagerService;Lcom/android/server/rotationresolver/RotationResolverManagerService$1;)V

    const-string v2, "resolver"

    invoke-virtual {p0, v2, v0}, Lcom/android/server/rotationresolver/RotationResolverManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 123
    const-class v0, Landroid/rotationresolver/RotationResolverInternal;

    new-instance v2, Lcom/android/server/rotationresolver/RotationResolverManagerService$LocalService;

    invoke-direct {v2, p0, v1}, Lcom/android/server/rotationresolver/RotationResolverManagerService$LocalService;-><init>(Lcom/android/server/rotationresolver/RotationResolverManagerService;Lcom/android/server/rotationresolver/RotationResolverManagerService$1;)V

    invoke-virtual {p0, v0, v2}, Lcom/android/server/rotationresolver/RotationResolverManagerService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 124
    return-void
.end method
