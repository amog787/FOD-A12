.class public Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;
.super Landroid/os/Binder;
.source "LocationTimeZoneManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$ProviderConfig;,
        Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$Lifecycle;
    }
.end annotation


# static fields
.field private static final ATTRIBUTION_TAG:Ljava/lang/String; = "LocationTimeZoneService"

.field private static final BLOCKING_OP_WAIT_DURATION_MILLIS:J

.field static final TAG:Ljava/lang/String; = "LocationTZDetector"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mEnvironment:Lcom/android/server/timezonedetector/location/ControllerEnvironmentImpl;

.field private final mHandler:Landroid/os/Handler;

.field private mLocationTimeZoneDetectorController:Lcom/android/server/timezonedetector/location/ControllerImpl;

.field private final mPrimaryProviderConfig:Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$ProviderConfig;

.field private final mSecondaryProviderConfig:Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$ProviderConfig;

.field private final mServiceConfigAccessor:Lcom/android/server/timezonedetector/ServiceConfigAccessor;

.field private final mSharedLock:Ljava/lang/Object;

.field private final mThreadingDomain:Lcom/android/server/timezonedetector/location/ThreadingDomain;


# direct methods
.method public static synthetic $r8$lambda$-Dq9GOsbIl6svrOUawUoaEUsIvo(Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->restartIfRequiredOnDomainThread()V

    return-void
.end method

.method public static synthetic $r8$lambda$ENyxT5EiWJnjACgE_Z9dPQiZBOY(Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->stopOnDomainThread()V

    return-void
.end method

.method public static synthetic $r8$lambda$O2dujrvJfJ0Eoz18kempr1qIkRM(Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->handleServiceConfigurationChangedOnMainThread()V

    return-void
.end method

.method public static synthetic $r8$lambda$lzWGRNsK4GL2kEQCjyPMT61aLcM(Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->startOnDomainThread()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 129
    const-wide/16 v0, 0x14

    invoke-static {v0, v1}, Ljava/time/Duration;->ofSeconds(J)Ljava/time/Duration;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->BLOCKING_OP_WAIT_DURATION_MILLIS:J

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 171
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 133
    new-instance v0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$ProviderConfig;

    const/4 v1, 0x0

    const-string v2, "primary"

    const-string v3, "android.service.timezone.PrimaryLocationTimeZoneProviderService"

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$ProviderConfig;-><init>(Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;ILjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mPrimaryProviderConfig:Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$ProviderConfig;

    .line 138
    new-instance v0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$ProviderConfig;

    const/4 v1, 0x1

    const-string v2, "secondary"

    const-string v3, "android.service.timezone.SecondaryLocationTimeZoneProviderService"

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$ProviderConfig;-><init>(Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;ILjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mSecondaryProviderConfig:Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$ProviderConfig;

    .line 172
    const-string v0, "LocationTimeZoneService"

    invoke-virtual {p1, v0}, Landroid/content/Context;->createAttributionContext(Ljava/lang/String;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mContext:Landroid/content/Context;

    .line 173
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mHandler:Landroid/os/Handler;

    .line 174
    new-instance v2, Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;

    invoke-direct {v2, v1}, Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;-><init>(Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mThreadingDomain:Lcom/android/server/timezonedetector/location/ThreadingDomain;

    .line 175
    invoke-virtual {v2}, Lcom/android/server/timezonedetector/location/ThreadingDomain;->getLockObject()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mSharedLock:Ljava/lang/Object;

    .line 176
    invoke-static {v0}, Lcom/android/server/timezonedetector/ServiceConfigAccessor;->getInstance(Landroid/content/Context;)Lcom/android/server/timezonedetector/ServiceConfigAccessor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mServiceConfigAccessor:Lcom/android/server/timezonedetector/ServiceConfigAccessor;

    .line 177
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;)Lcom/android/server/timezonedetector/location/ThreadingDomain;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;

    .line 81
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mThreadingDomain:Lcom/android/server/timezonedetector/location/ThreadingDomain;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;

    .line 81
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;)Lcom/android/server/timezonedetector/ServiceConfigAccessor;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;

    .line 81
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mServiceConfigAccessor:Lcom/android/server/timezonedetector/ServiceConfigAccessor;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;

    .line 81
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static debugLog(Ljava/lang/String;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;

    .line 420
    const-string v0, "LocationTZDetector"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 421
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    :cond_0
    return-void
.end method

.method private enforceManageTimeZoneDetectorPermission()V
    .locals 3

    .line 442
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_TIME_AND_ZONE_DETECTION"

    const-string v2, "manage time and time zone detection"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    return-void
.end method

.method private handleServiceConfigurationChangedOnMainThread()V
    .locals 2

    .line 191
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mThreadingDomain:Lcom/android/server/timezonedetector/location/ThreadingDomain;

    new-instance v1, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;)V

    invoke-virtual {v0, v1}, Lcom/android/server/timezonedetector/location/ThreadingDomain;->post(Ljava/lang/Runnable;)V

    .line 192
    return-void
.end method

.method static infoLog(Ljava/lang/String;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;

    .line 426
    const-string v0, "LocationTZDetector"

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 427
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    :cond_0
    return-void
.end method

.method static synthetic lambda$handleProviderTestCommand$2(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "resultReference"    # Ljava/util/concurrent/atomic/AtomicReference;
    .param p1, "latch"    # Ljava/util/concurrent/CountDownLatch;
    .param p2, "x"    # Landroid/os/Bundle;

    .line 362
    invoke-virtual {p0, p2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 363
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 364
    return-void
.end method

.method private restartIfRequiredOnDomainThread()V
    .locals 2

    .line 195
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mThreadingDomain:Lcom/android/server/timezonedetector/location/ThreadingDomain;

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/location/ThreadingDomain;->assertCurrentThread()V

    .line 197
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mSharedLock:Ljava/lang/Object;

    monitor-enter v0

    .line 201
    :try_start_0
    iget-object v1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mLocationTimeZoneDetectorController:Lcom/android/server/timezonedetector/location/ControllerImpl;

    if-eqz v1, :cond_0

    .line 203
    invoke-direct {p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->stopOnDomainThread()V

    .line 204
    invoke-direct {p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->startOnDomainThread()V

    .line 206
    :cond_0
    monitor-exit v0

    .line 207
    return-void

    .line 206
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private startInternal(Z)V
    .locals 4
    .param p1, "waitForCompletion"    # Z

    .line 242
    new-instance v0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;)V

    .line 243
    .local v0, "runnable":Ljava/lang/Runnable;
    if-eqz p1, :cond_0

    .line 244
    iget-object v1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mThreadingDomain:Lcom/android/server/timezonedetector/location/ThreadingDomain;

    sget-wide v2, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->BLOCKING_OP_WAIT_DURATION_MILLIS:J

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/timezonedetector/location/ThreadingDomain;->postAndWait(Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 246
    :cond_0
    iget-object v1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mThreadingDomain:Lcom/android/server/timezonedetector/location/ThreadingDomain;

    invoke-virtual {v1, v0}, Lcom/android/server/timezonedetector/location/ThreadingDomain;->post(Ljava/lang/Runnable;)V

    .line 248
    :goto_0
    return-void
.end method

.method private startOnDomainThread()V
    .locals 7

    .line 251
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mThreadingDomain:Lcom/android/server/timezonedetector/location/ThreadingDomain;

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/location/ThreadingDomain;->assertCurrentThread()V

    .line 253
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mSharedLock:Ljava/lang/Object;

    monitor-enter v0

    .line 254
    :try_start_0
    iget-object v1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mServiceConfigAccessor:Lcom/android/server/timezonedetector/ServiceConfigAccessor;

    invoke-virtual {v1}, Lcom/android/server/timezonedetector/ServiceConfigAccessor;->isGeoTimeZoneDetectionFeatureSupported()Z

    move-result v1

    if-nez v1, :cond_0

    .line 255
    const-string v1, "Not starting location_time_zone_manager: it is disabled in service config"

    invoke-static {v1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->debugLog(Ljava/lang/String;)V

    .line 256
    monitor-exit v0

    return-void

    .line 259
    :cond_0
    iget-object v1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mLocationTimeZoneDetectorController:Lcom/android/server/timezonedetector/location/ControllerImpl;

    if-nez v1, :cond_1

    .line 260
    iget-object v1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mPrimaryProviderConfig:Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$ProviderConfig;

    invoke-virtual {v1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$ProviderConfig;->createProvider()Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;

    move-result-object v1

    .line 261
    .local v1, "primary":Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;
    iget-object v2, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mSecondaryProviderConfig:Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$ProviderConfig;

    invoke-virtual {v2}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$ProviderConfig;->createProvider()Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;

    move-result-object v2

    .line 263
    .local v2, "secondary":Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;
    new-instance v3, Lcom/android/server/timezonedetector/location/ControllerImpl;

    iget-object v4, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mThreadingDomain:Lcom/android/server/timezonedetector/location/ThreadingDomain;

    invoke-direct {v3, v4, v1, v2}, Lcom/android/server/timezonedetector/location/ControllerImpl;-><init>(Lcom/android/server/timezonedetector/location/ThreadingDomain;Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;)V

    .line 265
    .local v3, "controller":Lcom/android/server/timezonedetector/location/ControllerImpl;
    new-instance v4, Lcom/android/server/timezonedetector/location/ControllerEnvironmentImpl;

    iget-object v5, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mThreadingDomain:Lcom/android/server/timezonedetector/location/ThreadingDomain;

    iget-object v6, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mServiceConfigAccessor:Lcom/android/server/timezonedetector/ServiceConfigAccessor;

    invoke-direct {v4, v5, v6, v3}, Lcom/android/server/timezonedetector/location/ControllerEnvironmentImpl;-><init>(Lcom/android/server/timezonedetector/location/ThreadingDomain;Lcom/android/server/timezonedetector/ServiceConfigAccessor;Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;)V

    .line 267
    .local v4, "environment":Lcom/android/server/timezonedetector/location/ControllerEnvironmentImpl;
    new-instance v5, Lcom/android/server/timezonedetector/location/ControllerCallbackImpl;

    iget-object v6, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mThreadingDomain:Lcom/android/server/timezonedetector/location/ThreadingDomain;

    invoke-direct {v5, v6}, Lcom/android/server/timezonedetector/location/ControllerCallbackImpl;-><init>(Lcom/android/server/timezonedetector/location/ThreadingDomain;)V

    .line 268
    .local v5, "callback":Lcom/android/server/timezonedetector/location/ControllerCallbackImpl;
    invoke-virtual {v3, v4, v5}, Lcom/android/server/timezonedetector/location/ControllerImpl;->initialize(Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController$Environment;Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController$Callback;)V

    .line 270
    iput-object v4, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mEnvironment:Lcom/android/server/timezonedetector/location/ControllerEnvironmentImpl;

    .line 271
    iput-object v3, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mLocationTimeZoneDetectorController:Lcom/android/server/timezonedetector/location/ControllerImpl;

    .line 273
    .end local v1    # "primary":Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;
    .end local v2    # "secondary":Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;
    .end local v3    # "controller":Lcom/android/server/timezonedetector/location/ControllerImpl;
    .end local v4    # "environment":Lcom/android/server/timezonedetector/location/ControllerEnvironmentImpl;
    .end local v5    # "callback":Lcom/android/server/timezonedetector/location/ControllerCallbackImpl;
    :cond_1
    monitor-exit v0

    .line 274
    return-void

    .line 273
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private stopOnDomainThread()V
    .locals 3

    .line 290
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mThreadingDomain:Lcom/android/server/timezonedetector/location/ThreadingDomain;

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/location/ThreadingDomain;->assertCurrentThread()V

    .line 292
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mSharedLock:Ljava/lang/Object;

    monitor-enter v0

    .line 293
    :try_start_0
    iget-object v1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mLocationTimeZoneDetectorController:Lcom/android/server/timezonedetector/location/ControllerImpl;

    if-eqz v1, :cond_0

    .line 294
    invoke-virtual {v1}, Lcom/android/server/timezonedetector/location/ControllerImpl;->destroy()V

    .line 295
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mLocationTimeZoneDetectorController:Lcom/android/server/timezonedetector/location/ControllerImpl;

    .line 296
    iget-object v2, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mEnvironment:Lcom/android/server/timezonedetector/location/ControllerEnvironmentImpl;

    invoke-virtual {v2}, Lcom/android/server/timezonedetector/location/ControllerEnvironmentImpl;->destroy()V

    .line 297
    iput-object v1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mEnvironment:Lcom/android/server/timezonedetector/location/ControllerEnvironmentImpl;

    .line 299
    :cond_0
    monitor-exit v0

    .line 300
    return-void

    .line 299
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static warnLog(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 432
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->warnLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 433
    return-void
.end method

.method static warnLog(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 436
    const-string v0, "LocationTZDetector"

    const/4 v1, 0x5

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 437
    invoke-static {v0, p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 439
    :cond_0
    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 392
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mContext:Landroid/content/Context;

    const-string v1, "LocationTZDetector"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 394
    :cond_0
    new-instance v0, Landroid/util/IndentingPrintWriter;

    invoke-direct {v0, p2}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;)V

    .line 396
    .local v0, "ipw":Landroid/util/IndentingPrintWriter;
    iget-object v1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mSharedLock:Ljava/lang/Object;

    monitor-enter v1

    .line 397
    :try_start_0
    const-string v2, "LocationTimeZoneManagerService:"

    invoke-virtual {v0, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 398
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 400
    const-string v2, "Primary provider config:"

    invoke-virtual {v0, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 401
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 402
    iget-object v2, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mPrimaryProviderConfig:Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$ProviderConfig;

    invoke-virtual {v2, v0, p3}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$ProviderConfig;->dump(Landroid/util/IndentingPrintWriter;[Ljava/lang/String;)V

    .line 403
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 405
    const-string v2, "Secondary provider config:"

    invoke-virtual {v0, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 406
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 407
    iget-object v2, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mSecondaryProviderConfig:Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$ProviderConfig;

    invoke-virtual {v2, v0, p3}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$ProviderConfig;->dump(Landroid/util/IndentingPrintWriter;[Ljava/lang/String;)V

    .line 408
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 410
    iget-object v2, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mLocationTimeZoneDetectorController:Lcom/android/server/timezonedetector/location/ControllerImpl;

    if-nez v2, :cond_1

    .line 411
    const-string v2, "{Stopped}"

    invoke-virtual {v0, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 413
    :cond_1
    invoke-virtual {v2, v0, p3}, Lcom/android/server/timezonedetector/location/ControllerImpl;->dump(Landroid/util/IndentingPrintWriter;[Ljava/lang/String;)V

    .line 415
    :goto_0
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 416
    monitor-exit v1

    .line 417
    return-void

    .line 416
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method getStateForTests()Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState;
    .locals 4

    .line 329
    invoke-direct {p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->enforceManageTimeZoneDetectorPermission()V

    .line 332
    :try_start_0
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mThreadingDomain:Lcom/android/server/timezonedetector/location/ThreadingDomain;

    new-instance v1, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;)V

    sget-wide v2, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->BLOCKING_OP_WAIT_DURATION_MILLIS:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/timezonedetector/location/ThreadingDomain;->postAndWait(Ljava/util/concurrent/Callable;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 342
    :catch_0
    move-exception v0

    .line 343
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method handleProviderTestCommand(ILcom/android/server/timezonedetector/location/TestCommand;)Landroid/os/Bundle;
    .locals 6
    .param p1, "providerIndex"    # I
    .param p2, "testCommand"    # Lcom/android/server/timezonedetector/location/TestCommand;

    .line 353
    invoke-direct {p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->enforceManageTimeZoneDetectorPermission()V

    .line 357
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mThreadingDomain:Lcom/android/server/timezonedetector/location/ThreadingDomain;

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/location/ThreadingDomain;->assertNotCurrentThread()V

    .line 359
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 360
    .local v0, "resultReference":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Landroid/os/Bundle;>;"
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 361
    .local v1, "latch":Ljava/util/concurrent/CountDownLatch;
    new-instance v2, Landroid/os/RemoteCallback;

    new-instance v3, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0, v1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$$ExternalSyntheticLambda0;-><init>(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;)V

    invoke-direct {v2, v3}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    .line 366
    .local v2, "remoteCallback":Landroid/os/RemoteCallback;
    iget-object v3, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mThreadingDomain:Lcom/android/server/timezonedetector/location/ThreadingDomain;

    new-instance v4, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$$ExternalSyntheticLambda5;

    invoke-direct {v4, p0, v2, p1, p2}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;Landroid/os/RemoteCallback;ILcom/android/server/timezonedetector/location/TestCommand;)V

    invoke-virtual {v3, v4}, Lcom/android/server/timezonedetector/location/ThreadingDomain;->post(Ljava/lang/Runnable;)V

    .line 379
    :try_start_0
    sget-wide v3, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->BLOCKING_OP_WAIT_DURATION_MILLIS:J

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v3, v4, v5}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_0

    .line 384
    nop

    .line 386
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    return-object v3

    .line 380
    :cond_0
    :try_start_1
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Command did not complete in time"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local v0    # "resultReference":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Landroid/os/Bundle;>;"
    .end local v1    # "latch":Ljava/util/concurrent/CountDownLatch;
    .end local v2    # "remoteCallback":Landroid/os/RemoteCallback;
    .end local p0    # "this":Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;
    .end local p1    # "providerIndex":I
    .end local p2    # "testCommand":Lcom/android/server/timezonedetector/location/TestCommand;
    throw v3
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 382
    .restart local v0    # "resultReference":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Landroid/os/Bundle;>;"
    .restart local v1    # "latch":Ljava/util/concurrent/CountDownLatch;
    .restart local v2    # "remoteCallback":Landroid/os/RemoteCallback;
    .restart local p0    # "this":Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;
    .restart local p1    # "providerIndex":I
    .restart local p2    # "testCommand":Lcom/android/server/timezonedetector/location/TestCommand;
    :catch_0
    move-exception v3

    .line 383
    .local v3, "e":Ljava/lang/InterruptedException;
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4
.end method

.method public synthetic lambda$getStateForTests$1$LocationTimeZoneManagerService()Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 334
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mSharedLock:Ljava/lang/Object;

    monitor-enter v0

    .line 335
    :try_start_0
    iget-object v1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mLocationTimeZoneDetectorController:Lcom/android/server/timezonedetector/location/ControllerImpl;

    if-nez v1, :cond_0

    .line 336
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    .line 338
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/timezonedetector/location/ControllerImpl;->getStateForTests()Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 339
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public synthetic lambda$handleProviderTestCommand$3$LocationTimeZoneManagerService(Landroid/os/RemoteCallback;ILcom/android/server/timezonedetector/location/TestCommand;)V
    .locals 2
    .param p1, "remoteCallback"    # Landroid/os/RemoteCallback;
    .param p2, "providerIndex"    # I
    .param p3, "testCommand"    # Lcom/android/server/timezonedetector/location/TestCommand;

    .line 367
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mSharedLock:Ljava/lang/Object;

    monitor-enter v0

    .line 368
    :try_start_0
    iget-object v1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mLocationTimeZoneDetectorController:Lcom/android/server/timezonedetector/location/ControllerImpl;

    if-nez v1, :cond_0

    .line 369
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 370
    monitor-exit v0

    return-void

    .line 372
    :cond_0
    invoke-virtual {v1, p2, p3, p1}, Lcom/android/server/timezonedetector/location/ControllerImpl;->handleProviderTestCommand(ILcom/android/server/timezonedetector/location/TestCommand;Landroid/os/RemoteCallback;)V

    .line 374
    monitor-exit v0

    .line 375
    return-void

    .line 374
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public synthetic lambda$setProviderStateRecordingEnabled$0$LocationTimeZoneManagerService(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .line 315
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mSharedLock:Ljava/lang/Object;

    monitor-enter v0

    .line 316
    :try_start_0
    iget-object v1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mLocationTimeZoneDetectorController:Lcom/android/server/timezonedetector/location/ControllerImpl;

    if-eqz v1, :cond_0

    .line 317
    invoke-virtual {v1, p1}, Lcom/android/server/timezonedetector/location/ControllerImpl;->setProviderStateRecordingEnabled(Z)V

    .line 319
    :cond_0
    monitor-exit v0

    .line 320
    return-void

    .line 319
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 8
    .param p1, "in"    # Ljava/io/FileDescriptor;
    .param p2, "out"    # Ljava/io/FileDescriptor;
    .param p3, "err"    # Ljava/io/FileDescriptor;
    .param p4, "args"    # [Ljava/lang/String;
    .param p5, "callback"    # Landroid/os/ShellCallback;
    .param p6, "resultReceiver"    # Landroid/os/ResultReceiver;

    .line 306
    new-instance v0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerShellCommand;

    invoke-direct {v0, p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerShellCommand;-><init>(Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 308
    return-void
.end method

.method onSystemReady()V
    .locals 2

    .line 182
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mServiceConfigAccessor:Lcom/android/server/timezonedetector/ServiceConfigAccessor;

    new-instance v1, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;)V

    invoke-virtual {v0, v1}, Lcom/android/server/timezonedetector/ServiceConfigAccessor;->addListener(Lcom/android/server/timezonedetector/ConfigurationChangeListener;)V

    .line 183
    return-void
.end method

.method onSystemThirdPartyAppsCanStart()V
    .locals 2

    .line 213
    const/4 v0, 0x0

    .line 214
    .local v0, "waitForCompletion":Z
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->startInternal(Z)V

    .line 215
    return-void
.end method

.method setProviderStateRecordingEnabled(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .line 312
    invoke-direct {p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->enforceManageTimeZoneDetectorPermission()V

    .line 314
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mThreadingDomain:Lcom/android/server/timezonedetector/location/ThreadingDomain;

    new-instance v1, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;Z)V

    sget-wide v2, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->BLOCKING_OP_WAIT_DURATION_MILLIS:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/timezonedetector/location/ThreadingDomain;->postAndWait(Ljava/lang/Runnable;J)V

    .line 321
    return-void
.end method

.method start()V
    .locals 2

    .line 225
    invoke-direct {p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->enforceManageTimeZoneDetectorPermission()V

    .line 227
    const/4 v0, 0x1

    .line 228
    .local v0, "waitForCompletion":Z
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->startInternal(Z)V

    .line 229
    return-void
.end method

.method stop()V
    .locals 4

    .line 284
    invoke-direct {p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->enforceManageTimeZoneDetectorPermission()V

    .line 286
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mThreadingDomain:Lcom/android/server/timezonedetector/location/ThreadingDomain;

    new-instance v1, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;)V

    sget-wide v2, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->BLOCKING_OP_WAIT_DURATION_MILLIS:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/timezonedetector/location/ThreadingDomain;->postAndWait(Ljava/lang/Runnable;J)V

    .line 287
    return-void
.end method
