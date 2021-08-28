.class public Lcom/android/server/biometrics/sensors/face/FaceService;
.super Lcom/android/server/SystemService;
.source "FaceService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;
    }
.end annotation


# static fields
.field protected static final TAG:Ljava/lang/String; = "FaceService"


# instance fields
.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private final mLockoutResetDispatcher:Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

.field private final mServiceProviders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/biometrics/sensors/face/ServiceProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final mServiceWrapper:Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 694
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 695
    new-instance v0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;-><init>(Lcom/android/server/biometrics/sensors/face/FaceService;Lcom/android/server/biometrics/sensors/face/FaceService$1;)V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceService;->mServiceWrapper:Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;

    .line 696
    new-instance v0, Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

    invoke-direct {v0, p1}, Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceService;->mLockoutResetDispatcher:Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

    .line 697
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 698
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceService;->mServiceProviders:Ljava/util/List;

    .line 699
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/biometrics/sensors/face/FaceService;I)Lcom/android/server/biometrics/sensors/face/ServiceProvider;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/biometrics/sensors/face/FaceService;
    .param p1, "x1"    # I

    .line 78
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/sensors/face/FaceService;->getProviderForSensor(I)Lcom/android/server/biometrics/sensors/face/ServiceProvider;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/biometrics/sensors/face/FaceService;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/biometrics/sensors/face/FaceService;

    .line 78
    invoke-direct {p0}, Lcom/android/server/biometrics/sensors/face/FaceService;->getSensorProperties()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/biometrics/sensors/face/FaceService;)Landroid/util/Pair;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/biometrics/sensors/face/FaceService;

    .line 78
    invoke-direct {p0}, Lcom/android/server/biometrics/sensors/face/FaceService;->getSingleProvider()Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/biometrics/sensors/face/FaceService;Landroid/view/Surface;)Landroid/os/NativeHandle;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/biometrics/sensors/face/FaceService;
    .param p1, "x1"    # Landroid/view/Surface;

    .line 78
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/sensors/face/FaceService;->convertSurfaceToNativeHandle(Landroid/view/Surface;)Landroid/os/NativeHandle;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/biometrics/sensors/face/FaceService;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/biometrics/sensors/face/FaceService;

    .line 78
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/biometrics/sensors/face/FaceService;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/biometrics/sensors/face/FaceService;

    .line 78
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceService;->mServiceProviders:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/biometrics/sensors/face/FaceService;)Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/biometrics/sensors/face/FaceService;

    .line 78
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceService;->mLockoutResetDispatcher:Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/biometrics/sensors/face/FaceService;)Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/biometrics/sensors/face/FaceService;

    .line 78
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceService;->mServiceWrapper:Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;

    return-object v0
.end method

.method private native convertSurfaceToNativeHandle(Landroid/view/Surface;)Landroid/os/NativeHandle;
.end method

.method private getProviderForSensor(I)Lcom/android/server/biometrics/sensors/face/ServiceProvider;
    .locals 3
    .param p1, "sensorId"    # I

    .line 90
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceService;->mServiceProviders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/sensors/face/ServiceProvider;

    .line 91
    .local v1, "provider":Lcom/android/server/biometrics/sensors/face/ServiceProvider;
    invoke-interface {v1, p1}, Lcom/android/server/biometrics/sensors/face/ServiceProvider;->containsSensor(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 92
    return-object v1

    .line 94
    .end local v1    # "provider":Lcom/android/server/biometrics/sensors/face/ServiceProvider;
    :cond_0
    goto :goto_0

    .line 95
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private getSensorProperties()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/face/FaceSensorPropertiesInternal;",
            ">;"
        }
    .end annotation

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 126
    .local v0, "properties":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/face/FaceSensorPropertiesInternal;>;"
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/FaceService;->mServiceProviders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/biometrics/sensors/face/ServiceProvider;

    .line 127
    .local v2, "provider":Lcom/android/server/biometrics/sensors/face/ServiceProvider;
    invoke-interface {v2}, Lcom/android/server/biometrics/sensors/face/ServiceProvider;->getSensorProperties()Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 128
    .end local v2    # "provider":Lcom/android/server/biometrics/sensors/face/ServiceProvider;
    goto :goto_0

    .line 129
    :cond_0
    return-object v0
.end method

.method private getSingleProvider()Landroid/util/Pair;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/biometrics/sensors/face/ServiceProvider;",
            ">;"
        }
    .end annotation

    .line 104
    invoke-direct {p0}, Lcom/android/server/biometrics/sensors/face/FaceService;->getSensorProperties()Ljava/util/List;

    move-result-object v0

    .line 105
    .local v0, "properties":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/face/FaceSensorPropertiesInternal;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const-string v3, "FaceService"

    const/4 v4, 0x1

    if-eq v1, v4, :cond_0

    .line 106
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Multiple sensors found: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    return-object v2

    .line 112
    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/face/FaceSensorPropertiesInternal;

    iget v1, v1, Landroid/hardware/face/FaceSensorPropertiesInternal;->sensorId:I

    .line 113
    .local v1, "sensorId":I
    iget-object v4, p0, Lcom/android/server/biometrics/sensors/face/FaceService;->mServiceProviders:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/biometrics/sensors/face/ServiceProvider;

    .line 114
    .local v5, "provider":Lcom/android/server/biometrics/sensors/face/ServiceProvider;
    invoke-interface {v5, v1}, Lcom/android/server/biometrics/sensors/face/ServiceProvider;->containsSensor(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 115
    new-instance v2, Landroid/util/Pair;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v3, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2

    .line 117
    .end local v5    # "provider":Lcom/android/server/biometrics/sensors/face/ServiceProvider;
    :cond_1
    goto :goto_0

    .line 119
    :cond_2
    const-string v4, "Single sensor, but provider not found"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    return-object v2
.end method


# virtual methods
.method public onStart()V
    .locals 2

    .line 703
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceService;->mServiceWrapper:Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;

    const-string v1, "face"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/biometrics/sensors/face/FaceService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 704
    return-void
.end method
