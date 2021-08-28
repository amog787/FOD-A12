.class Lcom/android/server/media/SystemMediaRoute2Provider;
.super Lcom/android/server/media/MediaRoute2Provider;
.source "SystemMediaRoute2Provider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/media/SystemMediaRoute2Provider$AudioManagerBroadcastReceiver;,
        Lcom/android/server/media/SystemMediaRoute2Provider$SessionCreationRequest;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field static final DEFAULT_ROUTE_ID:Ljava/lang/String; = "DEFAULT_ROUTE"

.field static final DEVICE_ROUTE_ID:Ljava/lang/String; = "DEVICE_ROUTE"

.field static final SYSTEM_SESSION_ID:Ljava/lang/String; = "SYSTEM_SESSION"

.field private static final TAG:Ljava/lang/String; = "MR2SystemProvider"

.field private static sComponentName:Landroid/content/ComponentName;


# instance fields
.field private final mAudioManager:Landroid/media/AudioManager;

.field final mAudioRoutesObserver:Landroid/media/IAudioRoutesObserver$Stub;

.field private final mAudioService:Landroid/media/IAudioService;

.field private final mBtRouteProvider:Lcom/android/server/media/BluetoothRouteProvider;

.field private final mContext:Landroid/content/Context;

.field final mCurAudioRoutesInfo:Landroid/media/AudioRoutesInfo;

.field mDefaultRoute:Landroid/media/MediaRoute2Info;

.field mDefaultSessionInfo:Landroid/media/RoutingSessionInfo;

.field mDeviceRoute:Landroid/media/MediaRoute2Info;

.field mDeviceVolume:I

.field private final mHandler:Landroid/os/Handler;

.field private volatile mPendingSessionCreationRequest:Lcom/android/server/media/SystemMediaRoute2Provider$SessionCreationRequest;

.field private final mRequestLock:Ljava/lang/Object;

.field private mSelectedRouteId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 64
    const-class v0, Lcom/android/server/media/SystemMediaRoute2Provider;

    const-string v1, "MR2SystemProvider"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/media/SystemMediaRoute2Provider;->DEBUG:Z

    .line 76
    new-instance v1, Landroid/content/ComponentName;

    .line 77
    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v2

    .line 78
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/android/server/media/SystemMediaRoute2Provider;->sComponentName:Landroid/content/ComponentName;

    .line 76
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/UserHandle;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 104
    sget-object v0, Lcom/android/server/media/SystemMediaRoute2Provider;->sComponentName:Landroid/content/ComponentName;

    invoke-direct {p0, v0}, Lcom/android/server/media/MediaRoute2Provider;-><init>(Landroid/content/ComponentName;)V

    .line 86
    new-instance v0, Landroid/media/AudioRoutesInfo;

    invoke-direct {v0}, Landroid/media/AudioRoutesInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mCurAudioRoutesInfo:Landroid/media/AudioRoutesInfo;

    .line 89
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mRequestLock:Ljava/lang/Object;

    .line 93
    new-instance v0, Lcom/android/server/media/SystemMediaRoute2Provider$1;

    invoke-direct {v0, p0}, Lcom/android/server/media/SystemMediaRoute2Provider$1;-><init>(Lcom/android/server/media/SystemMediaRoute2Provider;)V

    iput-object v0, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mAudioRoutesObserver:Landroid/media/IAudioRoutesObserver$Stub;

    .line 106
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mIsSystemRouteProvider:Z

    .line 107
    iput-object p1, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mContext:Landroid/content/Context;

    .line 108
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mHandler:Landroid/os/Handler;

    .line 110
    const-string v1, "audio"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    iput-object v2, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mAudioManager:Landroid/media/AudioManager;

    .line 111
    nop

    .line 112
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 111
    invoke-static {v1}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mAudioService:Landroid/media/IAudioService;

    .line 113
    const/4 v2, 0x0

    .line 115
    .local v2, "newAudioRoutes":Landroid/media/AudioRoutesInfo;
    :try_start_0
    invoke-interface {v1, v0}, Landroid/media/IAudioService;->startWatchingRoutes(Landroid/media/IAudioRoutesObserver;)Landroid/media/AudioRoutesInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v0

    .line 117
    goto :goto_0

    .line 116
    :catch_0
    move-exception v0

    .line 118
    :goto_0
    invoke-direct {p0, v2}, Lcom/android/server/media/SystemMediaRoute2Provider;->updateDeviceRoute(Landroid/media/AudioRoutesInfo;)V

    .line 121
    new-instance v0, Lcom/android/server/media/SystemMediaRoute2Provider$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/media/SystemMediaRoute2Provider$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/media/SystemMediaRoute2Provider;)V

    invoke-static {p1, v0}, Lcom/android/server/media/BluetoothRouteProvider;->createInstance(Landroid/content/Context;Lcom/android/server/media/BluetoothRouteProvider$BluetoothRoutesUpdatedListener;)Lcom/android/server/media/BluetoothRouteProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mBtRouteProvider:Lcom/android/server/media/BluetoothRouteProvider;

    .line 130
    invoke-virtual {p0}, Lcom/android/server/media/SystemMediaRoute2Provider;->updateSessionInfosIfNeeded()Z

    .line 132
    new-instance v1, Landroid/content/IntentFilter;

    const-string v3, "android.media.VOLUME_CHANGED_ACTION"

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 133
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    const-string v3, "android.media.STREAM_DEVICES_CHANGED_ACTION"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 134
    iget-object v4, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mContext:Landroid/content/Context;

    new-instance v5, Lcom/android/server/media/SystemMediaRoute2Provider$AudioManagerBroadcastReceiver;

    const/4 v3, 0x0

    invoke-direct {v5, p0, v3}, Lcom/android/server/media/SystemMediaRoute2Provider$AudioManagerBroadcastReceiver;-><init>(Lcom/android/server/media/SystemMediaRoute2Provider;Lcom/android/server/media/SystemMediaRoute2Provider$1;)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v6, p2

    move-object v7, v1

    invoke-virtual/range {v4 .. v9}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 137
    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/media/SystemMediaRoute2Provider$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, p2}, Lcom/android/server/media/SystemMediaRoute2Provider$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/media/SystemMediaRoute2Provider;Landroid/os/UserHandle;)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 143
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/media/SystemMediaRoute2Provider;->updateVolume()V

    .line 144
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/media/SystemMediaRoute2Provider;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/media/SystemMediaRoute2Provider;

    .line 62
    iget-object v0, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/media/SystemMediaRoute2Provider;Landroid/media/AudioRoutesInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/media/SystemMediaRoute2Provider;
    .param p1, "x1"    # Landroid/media/AudioRoutesInfo;

    .line 62
    invoke-direct {p0, p1}, Lcom/android/server/media/SystemMediaRoute2Provider;->updateDeviceRoute(Landroid/media/AudioRoutesInfo;)V

    return-void
.end method

.method private updateDeviceRoute(Landroid/media/AudioRoutesInfo;)V
    .locals 7
    .param p1, "newRoutes"    # Landroid/media/AudioRoutesInfo;

    .line 241
    const v0, 0x10402d5

    .line 242
    .local v0, "name":I
    const/4 v1, 0x2

    .line 243
    .local v1, "type":I
    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eqz p1, :cond_4

    .line 244
    iget-object v4, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mCurAudioRoutesInfo:Landroid/media/AudioRoutesInfo;

    iget v5, p1, Landroid/media/AudioRoutesInfo;->mainType:I

    iput v5, v4, Landroid/media/AudioRoutesInfo;->mainType:I

    .line 245
    iget v4, p1, Landroid/media/AudioRoutesInfo;->mainType:I

    and-int/2addr v4, v3

    if-eqz v4, :cond_0

    .line 246
    const/4 v1, 0x4

    .line 247
    const v0, 0x10402d8

    goto :goto_0

    .line 248
    :cond_0
    iget v4, p1, Landroid/media/AudioRoutesInfo;->mainType:I

    and-int/2addr v4, v2

    if-eqz v4, :cond_1

    .line 249
    const/4 v1, 0x3

    .line 250
    const v0, 0x10402d8

    goto :goto_0

    .line 251
    :cond_1
    iget v4, p1, Landroid/media/AudioRoutesInfo;->mainType:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_2

    .line 252
    const/16 v1, 0xd

    .line 253
    const v0, 0x10402d6

    goto :goto_0

    .line 254
    :cond_2
    iget v4, p1, Landroid/media/AudioRoutesInfo;->mainType:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_3

    .line 255
    const/16 v1, 0x9

    .line 256
    const v0, 0x10402d7

    goto :goto_0

    .line 257
    :cond_3
    iget v4, p1, Landroid/media/AudioRoutesInfo;->mainType:I

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_4

    .line 258
    const/16 v1, 0xb

    .line 259
    const v0, 0x10402d9

    .line 263
    :cond_4
    :goto_0
    new-instance v4, Landroid/media/MediaRoute2Info$Builder;

    iget-object v5, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mContext:Landroid/content/Context;

    .line 264
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "DEVICE_ROUTE"

    invoke-direct {v4, v6, v5}, Landroid/media/MediaRoute2Info$Builder;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 265
    iget-object v5, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5}, Landroid/media/AudioManager;->isVolumeFixed()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 266
    const/4 v2, 0x0

    goto :goto_1

    .line 267
    :cond_5
    nop

    .line 265
    :goto_1
    invoke-virtual {v4, v2}, Landroid/media/MediaRoute2Info$Builder;->setVolumeHandling(I)Landroid/media/MediaRoute2Info$Builder;

    move-result-object v2

    iget v4, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mDeviceVolume:I

    .line 268
    invoke-virtual {v2, v4}, Landroid/media/MediaRoute2Info$Builder;->setVolume(I)Landroid/media/MediaRoute2Info$Builder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mAudioManager:Landroid/media/AudioManager;

    const/4 v5, 0x3

    .line 269
    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/media/MediaRoute2Info$Builder;->setVolumeMax(I)Landroid/media/MediaRoute2Info$Builder;

    move-result-object v2

    .line 270
    invoke-virtual {v2, v1}, Landroid/media/MediaRoute2Info$Builder;->setType(I)Landroid/media/MediaRoute2Info$Builder;

    move-result-object v2

    .line 271
    const-string v4, "android.media.route.feature.LIVE_AUDIO"

    invoke-virtual {v2, v4}, Landroid/media/MediaRoute2Info$Builder;->addFeature(Ljava/lang/String;)Landroid/media/MediaRoute2Info$Builder;

    move-result-object v2

    .line 272
    const-string v4, "android.media.route.feature.LIVE_VIDEO"

    invoke-virtual {v2, v4}, Landroid/media/MediaRoute2Info$Builder;->addFeature(Ljava/lang/String;)Landroid/media/MediaRoute2Info$Builder;

    move-result-object v2

    .line 273
    const-string v4, "android.media.route.feature.LOCAL_PLAYBACK"

    invoke-virtual {v2, v4}, Landroid/media/MediaRoute2Info$Builder;->addFeature(Ljava/lang/String;)Landroid/media/MediaRoute2Info$Builder;

    move-result-object v2

    .line 274
    invoke-virtual {v2, v3}, Landroid/media/MediaRoute2Info$Builder;->setConnectionState(I)Landroid/media/MediaRoute2Info$Builder;

    move-result-object v2

    .line 275
    invoke-virtual {v2}, Landroid/media/MediaRoute2Info$Builder;->build()Landroid/media/MediaRoute2Info;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mDeviceRoute:Landroid/media/MediaRoute2Info;

    .line 276
    invoke-direct {p0}, Lcom/android/server/media/SystemMediaRoute2Provider;->updateProviderState()V

    .line 277
    return-void
.end method

.method private updateProviderState()V
    .locals 4

    .line 280
    new-instance v0, Landroid/media/MediaRoute2ProviderInfo$Builder;

    invoke-direct {v0}, Landroid/media/MediaRoute2ProviderInfo$Builder;-><init>()V

    .line 281
    .local v0, "builder":Landroid/media/MediaRoute2ProviderInfo$Builder;
    iget-object v1, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mDeviceRoute:Landroid/media/MediaRoute2Info;

    invoke-virtual {v0, v1}, Landroid/media/MediaRoute2ProviderInfo$Builder;->addRoute(Landroid/media/MediaRoute2Info;)Landroid/media/MediaRoute2ProviderInfo$Builder;

    .line 282
    iget-object v1, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mBtRouteProvider:Lcom/android/server/media/BluetoothRouteProvider;

    if-eqz v1, :cond_0

    .line 283
    invoke-virtual {v1}, Lcom/android/server/media/BluetoothRouteProvider;->getAllBluetoothRoutes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaRoute2Info;

    .line 284
    .local v2, "route":Landroid/media/MediaRoute2Info;
    invoke-virtual {v0, v2}, Landroid/media/MediaRoute2ProviderInfo$Builder;->addRoute(Landroid/media/MediaRoute2Info;)Landroid/media/MediaRoute2ProviderInfo$Builder;

    .line 285
    .end local v2    # "route":Landroid/media/MediaRoute2Info;
    goto :goto_0

    .line 287
    :cond_0
    invoke-virtual {v0}, Landroid/media/MediaRoute2ProviderInfo$Builder;->build()Landroid/media/MediaRoute2ProviderInfo;

    move-result-object v1

    .line 288
    .local v1, "providerInfo":Landroid/media/MediaRoute2ProviderInfo;
    invoke-virtual {p0, v1}, Lcom/android/server/media/SystemMediaRoute2Provider;->setProviderState(Landroid/media/MediaRoute2ProviderInfo;)V

    .line 289
    sget-boolean v2, Lcom/android/server/media/SystemMediaRoute2Provider;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 290
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Updating system provider info : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MR2SystemProvider"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    :cond_1
    return-void
.end method


# virtual methods
.method public deselectRoute(JLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "requestId"    # J
    .param p3, "sessionId"    # Ljava/lang/String;
    .param p4, "routeId"    # Ljava/lang/String;

    .line 197
    return-void
.end method

.method public getDefaultRoute()Landroid/media/MediaRoute2Info;
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mDefaultRoute:Landroid/media/MediaRoute2Info;

    return-object v0
.end method

.method public getDefaultSessionInfo()Landroid/media/RoutingSessionInfo;
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mDefaultSessionInfo:Landroid/media/RoutingSessionInfo;

    return-object v0
.end method

.method public synthetic lambda$new$0$SystemMediaRoute2Provider(Ljava/util/List;)V
    .locals 1
    .param p1, "routes"    # Ljava/util/List;

    .line 122
    invoke-virtual {p0}, Lcom/android/server/media/SystemMediaRoute2Provider;->publishProviderState()V

    .line 125
    invoke-virtual {p0}, Lcom/android/server/media/SystemMediaRoute2Provider;->updateSessionInfosIfNeeded()Z

    move-result v0

    .line 126
    .local v0, "sessionInfoChanged":Z
    if-eqz v0, :cond_0

    .line 127
    invoke-virtual {p0}, Lcom/android/server/media/SystemMediaRoute2Provider;->notifySessionInfoUpdated()V

    .line 129
    :cond_0
    return-void
.end method

.method public synthetic lambda$new$1$SystemMediaRoute2Provider(Landroid/os/UserHandle;)V
    .locals 1
    .param p1, "user"    # Landroid/os/UserHandle;

    .line 139
    iget-object v0, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mBtRouteProvider:Lcom/android/server/media/BluetoothRouteProvider;

    invoke-virtual {v0, p1}, Lcom/android/server/media/BluetoothRouteProvider;->start(Landroid/os/UserHandle;)V

    .line 140
    invoke-virtual {p0}, Lcom/android/server/media/SystemMediaRoute2Provider;->notifyProviderState()V

    .line 141
    return-void
.end method

.method notifySessionInfoUpdated()V
    .locals 3

    .line 371
    iget-object v0, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mCallback:Lcom/android/server/media/MediaRoute2Provider$Callback;

    if-nez v0, :cond_0

    .line 372
    return-void

    .line 376
    :cond_0
    iget-object v0, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 377
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mSessionInfos:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/RoutingSessionInfo;

    .line 378
    .local v1, "sessionInfo":Landroid/media/RoutingSessionInfo;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 380
    iget-object v0, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mCallback:Lcom/android/server/media/MediaRoute2Provider$Callback;

    invoke-interface {v0, p0, v1}, Lcom/android/server/media/MediaRoute2Provider$Callback;->onSessionUpdated(Lcom/android/server/media/MediaRoute2Provider;Landroid/media/RoutingSessionInfo;)V

    .line 381
    return-void

    .line 378
    .end local v1    # "sessionInfo":Landroid/media/RoutingSessionInfo;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public prepareReleaseSession(Ljava/lang/String;)V
    .locals 0
    .param p1, "sessionId"    # Ljava/lang/String;

    .line 230
    return-void
.end method

.method publishProviderState()V
    .locals 0

    .line 366
    invoke-direct {p0}, Lcom/android/server/media/SystemMediaRoute2Provider;->updateProviderState()V

    .line 367
    invoke-virtual {p0}, Lcom/android/server/media/SystemMediaRoute2Provider;->notifyProviderState()V

    .line 368
    return-void
.end method

.method public releaseSession(JLjava/lang/String;)V
    .locals 0
    .param p1, "requestId"    # J
    .param p3, "sessionId"    # Ljava/lang/String;

    .line 182
    return-void
.end method

.method public requestCreateSession(JLjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "requestId"    # J
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "routeId"    # Ljava/lang/String;
    .param p5, "sessionHints"    # Landroid/os/Bundle;

    .line 158
    const-string v0, "DEFAULT_ROUTE"

    invoke-static {p4, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mCallback:Lcom/android/server/media/MediaRoute2Provider$Callback;

    iget-object v1, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mDefaultSessionInfo:Landroid/media/RoutingSessionInfo;

    invoke-interface {v0, p0, p1, p2, v1}, Lcom/android/server/media/MediaRoute2Provider$Callback;->onSessionCreated(Lcom/android/server/media/MediaRoute2Provider;JLandroid/media/RoutingSessionInfo;)V

    .line 160
    return-void

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mSelectedRouteId:Ljava/lang/String;

    invoke-static {p4, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 163
    iget-object v0, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mCallback:Lcom/android/server/media/MediaRoute2Provider$Callback;

    iget-object v2, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mSessionInfos:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/RoutingSessionInfo;

    invoke-interface {v0, p0, p1, p2, v1}, Lcom/android/server/media/MediaRoute2Provider$Callback;->onSessionCreated(Lcom/android/server/media/MediaRoute2Provider;JLandroid/media/RoutingSessionInfo;)V

    .line 164
    return-void

    .line 167
    :cond_1
    iget-object v0, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mRequestLock:Ljava/lang/Object;

    monitor-enter v0

    .line 169
    :try_start_0
    iget-object v2, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mPendingSessionCreationRequest:Lcom/android/server/media/SystemMediaRoute2Provider$SessionCreationRequest;

    if-eqz v2, :cond_2

    .line 170
    iget-object v2, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mCallback:Lcom/android/server/media/MediaRoute2Provider$Callback;

    iget-object v3, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mPendingSessionCreationRequest:Lcom/android/server/media/SystemMediaRoute2Provider$SessionCreationRequest;

    iget-wide v3, v3, Lcom/android/server/media/SystemMediaRoute2Provider$SessionCreationRequest;->mRequestId:J

    invoke-interface {v2, p0, v3, v4, v1}, Lcom/android/server/media/MediaRoute2Provider$Callback;->onRequestFailed(Lcom/android/server/media/MediaRoute2Provider;JI)V

    .line 173
    :cond_2
    new-instance v1, Lcom/android/server/media/SystemMediaRoute2Provider$SessionCreationRequest;

    invoke-direct {v1, p1, p2, p4}, Lcom/android/server/media/SystemMediaRoute2Provider$SessionCreationRequest;-><init>(JLjava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mPendingSessionCreationRequest:Lcom/android/server/media/SystemMediaRoute2Provider$SessionCreationRequest;

    .line 174
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    const-string v0, "SYSTEM_SESSION"

    invoke-virtual {p0, p1, p2, v0, p4}, Lcom/android/server/media/SystemMediaRoute2Provider;->transferToRoute(JLjava/lang/String;Ljava/lang/String;)V

    .line 177
    return-void

    .line 174
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public selectRoute(JLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "requestId"    # J
    .param p3, "sessionId"    # Ljava/lang/String;
    .param p4, "routeId"    # Ljava/lang/String;

    .line 192
    return-void
.end method

.method public setCallback(Lcom/android/server/media/MediaRoute2Provider$Callback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/server/media/MediaRoute2Provider$Callback;

    .line 148
    invoke-super {p0, p1}, Lcom/android/server/media/MediaRoute2Provider;->setCallback(Lcom/android/server/media/MediaRoute2Provider$Callback;)V

    .line 149
    invoke-virtual {p0}, Lcom/android/server/media/SystemMediaRoute2Provider;->notifyProviderState()V

    .line 150
    invoke-virtual {p0}, Lcom/android/server/media/SystemMediaRoute2Provider;->notifySessionInfoUpdated()V

    .line 151
    return-void
.end method

.method public setRouteVolume(JLjava/lang/String;I)V
    .locals 3
    .param p1, "requestId"    # J
    .param p3, "routeId"    # Ljava/lang/String;
    .param p4, "volume"    # I

    .line 216
    iget-object v0, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mSelectedRouteId:Ljava/lang/String;

    invoke-static {p3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 217
    return-void

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p4, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 220
    return-void
.end method

.method public setSessionVolume(JLjava/lang/String;I)V
    .locals 0
    .param p1, "requestId"    # J
    .param p3, "sessionId"    # Ljava/lang/String;
    .param p4, "volume"    # I

    .line 225
    return-void
.end method

.method public transferToRoute(JLjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "requestId"    # J
    .param p3, "sessionId"    # Ljava/lang/String;
    .param p4, "routeId"    # Ljava/lang/String;

    .line 201
    const-string v0, "DEFAULT_ROUTE"

    invoke-static {p4, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    return-void

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mBtRouteProvider:Lcom/android/server/media/BluetoothRouteProvider;

    if-eqz v0, :cond_2

    .line 206
    iget-object v0, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mDeviceRoute:Landroid/media/MediaRoute2Info;

    invoke-virtual {v0}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p4, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 207
    iget-object v0, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mBtRouteProvider:Lcom/android/server/media/BluetoothRouteProvider;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/media/BluetoothRouteProvider;->transferTo(Ljava/lang/String;)V

    goto :goto_0

    .line 209
    :cond_1
    iget-object v0, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mBtRouteProvider:Lcom/android/server/media/BluetoothRouteProvider;

    invoke-virtual {v0, p4}, Lcom/android/server/media/BluetoothRouteProvider;->transferTo(Ljava/lang/String;)V

    .line 212
    :cond_2
    :goto_0
    return-void
.end method

.method public updateDiscoveryPreference(Landroid/media/RouteDiscoveryPreference;)V
    .locals 0
    .param p1, "discoveryPreference"    # Landroid/media/RouteDiscoveryPreference;

    .line 187
    return-void
.end method

.method updateSessionInfosIfNeeded()Z
    .locals 12

    .line 298
    iget-object v0, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 299
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mSessionInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mSessionInfos:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/RoutingSessionInfo;

    .line 302
    .local v1, "oldSessionInfo":Landroid/media/RoutingSessionInfo;
    :goto_0
    new-instance v4, Landroid/media/RoutingSessionInfo$Builder;

    const-string v5, "SYSTEM_SESSION"

    const-string v6, ""

    invoke-direct {v4, v5, v6}, Landroid/media/RoutingSessionInfo$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/media/RoutingSessionInfo$Builder;->setSystemSession(Z)Landroid/media/RoutingSessionInfo$Builder;

    move-result-object v4

    .line 306
    .local v4, "builder":Landroid/media/RoutingSessionInfo$Builder;
    iget-object v6, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mDeviceRoute:Landroid/media/MediaRoute2Info;

    .line 307
    .local v6, "selectedRoute":Landroid/media/MediaRoute2Info;
    iget-object v7, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mBtRouteProvider:Lcom/android/server/media/BluetoothRouteProvider;

    if-eqz v7, :cond_1

    .line 308
    invoke-virtual {v7}, Lcom/android/server/media/BluetoothRouteProvider;->getSelectedRoute()Landroid/media/MediaRoute2Info;

    move-result-object v7

    .line 309
    .local v7, "selectedBtRoute":Landroid/media/MediaRoute2Info;
    if-eqz v7, :cond_1

    .line 310
    move-object v6, v7

    .line 311
    iget-object v8, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mDeviceRoute:Landroid/media/MediaRoute2Info;

    invoke-virtual {v8}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/media/RoutingSessionInfo$Builder;->addTransferableRoute(Ljava/lang/String;)Landroid/media/RoutingSessionInfo$Builder;

    .line 314
    .end local v7    # "selectedBtRoute":Landroid/media/MediaRoute2Info;
    :cond_1
    invoke-virtual {v6}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mSelectedRouteId:Ljava/lang/String;

    .line 315
    new-instance v7, Landroid/media/MediaRoute2Info$Builder;

    const-string v8, "DEFAULT_ROUTE"

    invoke-direct {v7, v8, v6}, Landroid/media/MediaRoute2Info$Builder;-><init>(Ljava/lang/String;Landroid/media/MediaRoute2Info;)V

    .line 316
    invoke-virtual {v7, v5}, Landroid/media/MediaRoute2Info$Builder;->setSystemRoute(Z)Landroid/media/MediaRoute2Info$Builder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mUniqueId:Ljava/lang/String;

    .line 317
    invoke-virtual {v7, v8}, Landroid/media/MediaRoute2Info$Builder;->setProviderId(Ljava/lang/String;)Landroid/media/MediaRoute2Info$Builder;

    move-result-object v7

    .line 318
    invoke-virtual {v7}, Landroid/media/MediaRoute2Info$Builder;->build()Landroid/media/MediaRoute2Info;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mDefaultRoute:Landroid/media/MediaRoute2Info;

    .line 319
    iget-object v7, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mSelectedRouteId:Ljava/lang/String;

    invoke-virtual {v4, v7}, Landroid/media/RoutingSessionInfo$Builder;->addSelectedRoute(Ljava/lang/String;)Landroid/media/RoutingSessionInfo$Builder;

    .line 321
    iget-object v7, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mBtRouteProvider:Lcom/android/server/media/BluetoothRouteProvider;

    if-eqz v7, :cond_2

    .line 322
    invoke-virtual {v7}, Lcom/android/server/media/BluetoothRouteProvider;->getTransferableRoutes()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/media/MediaRoute2Info;

    .line 323
    .local v8, "route":Landroid/media/MediaRoute2Info;
    invoke-virtual {v8}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/media/RoutingSessionInfo$Builder;->addTransferableRoute(Ljava/lang/String;)Landroid/media/RoutingSessionInfo$Builder;

    .line 324
    nop

    .end local v8    # "route":Landroid/media/MediaRoute2Info;
    goto :goto_1

    .line 327
    :cond_2
    iget-object v7, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mUniqueId:Ljava/lang/String;

    invoke-virtual {v4, v7}, Landroid/media/RoutingSessionInfo$Builder;->setProviderId(Ljava/lang/String;)Landroid/media/RoutingSessionInfo$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/media/RoutingSessionInfo$Builder;->build()Landroid/media/RoutingSessionInfo;

    move-result-object v7

    .line 329
    .local v7, "newSessionInfo":Landroid/media/RoutingSessionInfo;
    iget-object v8, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mPendingSessionCreationRequest:Lcom/android/server/media/SystemMediaRoute2Provider$SessionCreationRequest;

    if-eqz v8, :cond_4

    .line 331
    iget-object v8, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mRequestLock:Ljava/lang/Object;

    monitor-enter v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 332
    :try_start_1
    iget-object v9, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mPendingSessionCreationRequest:Lcom/android/server/media/SystemMediaRoute2Provider$SessionCreationRequest;

    .line 333
    .local v9, "sessionCreationRequest":Lcom/android/server/media/SystemMediaRoute2Provider$SessionCreationRequest;
    iput-object v2, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mPendingSessionCreationRequest:Lcom/android/server/media/SystemMediaRoute2Provider$SessionCreationRequest;

    .line 334
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 335
    if-eqz v9, :cond_4

    .line 336
    :try_start_2
    iget-object v2, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mSelectedRouteId:Ljava/lang/String;

    iget-object v8, v9, Lcom/android/server/media/SystemMediaRoute2Provider$SessionCreationRequest;->mRouteId:Ljava/lang/String;

    invoke-static {v2, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 337
    iget-object v2, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mCallback:Lcom/android/server/media/MediaRoute2Provider$Callback;

    iget-wide v10, v9, Lcom/android/server/media/SystemMediaRoute2Provider$SessionCreationRequest;->mRequestId:J

    invoke-interface {v2, p0, v10, v11, v7}, Lcom/android/server/media/MediaRoute2Provider$Callback;->onSessionCreated(Lcom/android/server/media/MediaRoute2Provider;JLandroid/media/RoutingSessionInfo;)V

    goto :goto_2

    .line 340
    :cond_3
    iget-object v2, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mCallback:Lcom/android/server/media/MediaRoute2Provider$Callback;

    iget-wide v10, v9, Lcom/android/server/media/SystemMediaRoute2Provider$SessionCreationRequest;->mRequestId:J

    invoke-interface {v2, p0, v10, v11, v3}, Lcom/android/server/media/MediaRoute2Provider$Callback;->onRequestFailed(Lcom/android/server/media/MediaRoute2Provider;JI)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    .line 334
    .end local v9    # "sessionCreationRequest":Lcom/android/server/media/SystemMediaRoute2Provider$SessionCreationRequest;
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local p0    # "this":Lcom/android/server/media/SystemMediaRoute2Provider;
    :try_start_4
    throw v2

    .line 346
    .restart local p0    # "this":Lcom/android/server/media/SystemMediaRoute2Provider;
    :cond_4
    :goto_2
    invoke-static {v1, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 347
    monitor-exit v0

    return v3

    .line 349
    :cond_5
    sget-boolean v2, Lcom/android/server/media/SystemMediaRoute2Provider;->DEBUG:Z

    if-eqz v2, :cond_6

    .line 350
    const-string v2, "MR2SystemProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Updating system routing session info : "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    :cond_6
    iget-object v2, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mSessionInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 353
    iget-object v2, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mSessionInfos:Ljava/util/List;

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 354
    new-instance v2, Landroid/media/RoutingSessionInfo$Builder;

    const-string v3, "SYSTEM_SESSION"

    const-string v8, ""

    invoke-direct {v2, v3, v8}, Landroid/media/RoutingSessionInfo$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mUniqueId:Ljava/lang/String;

    .line 356
    invoke-virtual {v2, v3}, Landroid/media/RoutingSessionInfo$Builder;->setProviderId(Ljava/lang/String;)Landroid/media/RoutingSessionInfo$Builder;

    move-result-object v2

    .line 357
    invoke-virtual {v2, v5}, Landroid/media/RoutingSessionInfo$Builder;->setSystemSession(Z)Landroid/media/RoutingSessionInfo$Builder;

    move-result-object v2

    const-string v3, "DEFAULT_ROUTE"

    .line 358
    invoke-virtual {v2, v3}, Landroid/media/RoutingSessionInfo$Builder;->addSelectedRoute(Ljava/lang/String;)Landroid/media/RoutingSessionInfo$Builder;

    move-result-object v2

    .line 359
    invoke-virtual {v2}, Landroid/media/RoutingSessionInfo$Builder;->build()Landroid/media/RoutingSessionInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mDefaultSessionInfo:Landroid/media/RoutingSessionInfo;

    .line 360
    monitor-exit v0

    return v5

    .line 362
    .end local v1    # "oldSessionInfo":Landroid/media/RoutingSessionInfo;
    .end local v4    # "builder":Landroid/media/RoutingSessionInfo$Builder;
    .end local v6    # "selectedRoute":Landroid/media/MediaRoute2Info;
    .end local v7    # "newSessionInfo":Landroid/media/RoutingSessionInfo;
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method updateVolume()V
    .locals 4

    .line 394
    iget-object v0, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getDevicesForStream(I)I

    move-result v0

    .line 395
    .local v0, "devices":I
    iget-object v2, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    .line 397
    .local v1, "volume":I
    iget-object v2, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mDefaultRoute:Landroid/media/MediaRoute2Info;

    invoke-virtual {v2}, Landroid/media/MediaRoute2Info;->getVolume()I

    move-result v2

    if-eq v2, v1, :cond_0

    .line 398
    new-instance v2, Landroid/media/MediaRoute2Info$Builder;

    iget-object v3, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mDefaultRoute:Landroid/media/MediaRoute2Info;

    invoke-direct {v2, v3}, Landroid/media/MediaRoute2Info$Builder;-><init>(Landroid/media/MediaRoute2Info;)V

    .line 399
    invoke-virtual {v2, v1}, Landroid/media/MediaRoute2Info$Builder;->setVolume(I)Landroid/media/MediaRoute2Info$Builder;

    move-result-object v2

    .line 400
    invoke-virtual {v2}, Landroid/media/MediaRoute2Info$Builder;->build()Landroid/media/MediaRoute2Info;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mDefaultRoute:Landroid/media/MediaRoute2Info;

    .line 403
    :cond_0
    iget-object v2, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mBtRouteProvider:Lcom/android/server/media/BluetoothRouteProvider;

    if-eqz v2, :cond_1

    invoke-virtual {v2, v0, v1}, Lcom/android/server/media/BluetoothRouteProvider;->updateVolumeForDevices(II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 404
    return-void

    .line 406
    :cond_1
    iget v2, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mDeviceVolume:I

    if-eq v2, v1, :cond_2

    .line 407
    iput v1, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mDeviceVolume:I

    .line 408
    new-instance v2, Landroid/media/MediaRoute2Info$Builder;

    iget-object v3, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mDeviceRoute:Landroid/media/MediaRoute2Info;

    invoke-direct {v2, v3}, Landroid/media/MediaRoute2Info$Builder;-><init>(Landroid/media/MediaRoute2Info;)V

    .line 409
    invoke-virtual {v2, v1}, Landroid/media/MediaRoute2Info$Builder;->setVolume(I)Landroid/media/MediaRoute2Info$Builder;

    move-result-object v2

    .line 410
    invoke-virtual {v2}, Landroid/media/MediaRoute2Info$Builder;->build()Landroid/media/MediaRoute2Info;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mDeviceRoute:Landroid/media/MediaRoute2Info;

    .line 412
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/media/SystemMediaRoute2Provider;->publishProviderState()V

    .line 413
    return-void
.end method
