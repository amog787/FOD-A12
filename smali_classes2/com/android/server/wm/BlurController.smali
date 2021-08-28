.class final Lcom/android/server/wm/BlurController;
.super Ljava/lang/Object;
.source "BlurController.java"


# instance fields
.field private mBlurDisabledSetting:Z

.field private volatile mBlurEnabled:Z

.field private final mBlurEnabledListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/view/ICrossWindowBlurEnabledListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mInPowerSaveMode:Z

.field private final mLock:Ljava/lang/Object;

.field private mTunnelModeEnabled:Z

.field private mTunnelModeListener:Landroid/view/TunnelModeEnabledListener;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/PowerManager;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "powerManager"    # Landroid/os/PowerManager;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/BlurController;->mBlurEnabledListeners:Landroid/os/RemoteCallbackList;

    .line 45
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/BlurController;->mLock:Ljava/lang/Object;

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/BlurController;->mTunnelModeEnabled:Z

    .line 51
    new-instance v1, Lcom/android/server/wm/BlurController$1;

    sget-object v2, Lcom/android/server/am/BatteryExternalStatsWorker$$ExternalSyntheticLambda7;->INSTANCE:Lcom/android/server/am/BatteryExternalStatsWorker$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, v2}, Lcom/android/server/wm/BlurController$1;-><init>(Lcom/android/server/wm/BlurController;Ljava/util/concurrent/Executor;)V

    iput-object v1, p0, Lcom/android/server/wm/BlurController;->mTunnelModeListener:Landroid/view/TunnelModeEnabledListener;

    .line 61
    iput-object p1, p0, Lcom/android/server/wm/BlurController;->mContext:Landroid/content/Context;

    .line 63
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 64
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 65
    new-instance v2, Lcom/android/server/wm/BlurController$2;

    invoke-direct {v2, p0, p2}, Lcom/android/server/wm/BlurController$2;-><init>(Lcom/android/server/wm/BlurController;Landroid/os/PowerManager;)V

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v1, v3, v3}, Landroid/content/Context;->registerReceiverForAllUsers(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 76
    invoke-virtual {p2}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/wm/BlurController;->mInPowerSaveMode:Z

    .line 78
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 79
    const-string v4, "disable_window_blurs"

    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    new-instance v5, Lcom/android/server/wm/BlurController$3;

    invoke-direct {v5, p0, v3}, Lcom/android/server/wm/BlurController$3;-><init>(Lcom/android/server/wm/BlurController;Landroid/os/Handler;)V

    .line 78
    invoke-virtual {v2, v4, v0, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 90
    invoke-direct {p0}, Lcom/android/server/wm/BlurController;->getBlurDisabledSetting()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/BlurController;->mBlurDisabledSetting:Z

    .line 92
    iget-object v0, p0, Lcom/android/server/wm/BlurController;->mTunnelModeListener:Landroid/view/TunnelModeEnabledListener;

    invoke-static {v0}, Landroid/view/TunnelModeEnabledListener;->register(Landroid/view/TunnelModeEnabledListener;)V

    .line 94
    invoke-direct {p0}, Lcom/android/server/wm/BlurController;->updateBlurEnabled()V

    .line 95
    return-void
.end method

.method static synthetic access$002(Lcom/android/server/wm/BlurController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/BlurController;
    .param p1, "x1"    # Z

    .line 39
    iput-boolean p1, p0, Lcom/android/server/wm/BlurController;->mTunnelModeEnabled:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/wm/BlurController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/BlurController;

    .line 39
    invoke-direct {p0}, Lcom/android/server/wm/BlurController;->updateBlurEnabled()V

    return-void
.end method

.method static synthetic access$202(Lcom/android/server/wm/BlurController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/BlurController;
    .param p1, "x1"    # Z

    .line 39
    iput-boolean p1, p0, Lcom/android/server/wm/BlurController;->mInPowerSaveMode:Z

    return p1
.end method

.method static synthetic access$302(Lcom/android/server/wm/BlurController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/BlurController;
    .param p1, "x1"    # Z

    .line 39
    iput-boolean p1, p0, Lcom/android/server/wm/BlurController;->mBlurDisabledSetting:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/wm/BlurController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/BlurController;

    .line 39
    invoke-direct {p0}, Lcom/android/server/wm/BlurController;->getBlurDisabledSetting()Z

    move-result v0

    return v0
.end method

.method private getBlurDisabledSetting()Z
    .locals 3

    .line 139
    iget-object v0, p0, Lcom/android/server/wm/BlurController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "disable_window_blurs"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v2, v1

    :cond_0
    return v2
.end method

.method private notifyBlurEnabledChangedLocked(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .line 125
    iget-object v0, p0, Lcom/android/server/wm/BlurController;->mBlurEnabledListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 126
    .local v0, "i":I
    :goto_0
    if-lez v0, :cond_0

    .line 127
    add-int/lit8 v0, v0, -0x1

    .line 128
    iget-object v1, p0, Lcom/android/server/wm/BlurController;->mBlurEnabledListeners:Landroid/os/RemoteCallbackList;

    .line 129
    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Landroid/view/ICrossWindowBlurEnabledListener;

    .line 131
    .local v1, "listener":Landroid/view/ICrossWindowBlurEnabledListener;
    :try_start_0
    invoke-interface {v1, p1}, Landroid/view/ICrossWindowBlurEnabledListener;->onCrossWindowBlurEnabledChanged(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    goto :goto_1

    .line 132
    :catch_0
    move-exception v2

    .line 134
    .end local v1    # "listener":Landroid/view/ICrossWindowBlurEnabledListener;
    :goto_1
    goto :goto_0

    .line 135
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/BlurController;->mBlurEnabledListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 136
    return-void
.end method

.method private updateBlurEnabled()V
    .locals 3

    .line 113
    iget-object v0, p0, Lcom/android/server/wm/BlurController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 114
    :try_start_0
    sget-boolean v1, Landroid/view/CrossWindowBlurListeners;->CROSS_WINDOW_BLUR_SUPPORTED:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/wm/BlurController;->mBlurDisabledSetting:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/wm/BlurController;->mInPowerSaveMode:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/wm/BlurController;->mTunnelModeEnabled:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 116
    .local v1, "newEnabled":Z
    :goto_0
    iget-boolean v2, p0, Lcom/android/server/wm/BlurController;->mBlurEnabled:Z

    if-ne v2, v1, :cond_1

    .line 117
    monitor-exit v0

    return-void

    .line 119
    :cond_1
    iput-boolean v1, p0, Lcom/android/server/wm/BlurController;->mBlurEnabled:Z

    .line 120
    invoke-direct {p0, v1}, Lcom/android/server/wm/BlurController;->notifyBlurEnabledChangedLocked(Z)V

    .line 121
    .end local v1    # "newEnabled":Z
    monitor-exit v0

    .line 122
    return-void

    .line 121
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method getBlurEnabled()Z
    .locals 1

    .line 109
    iget-boolean v0, p0, Lcom/android/server/wm/BlurController;->mBlurEnabled:Z

    return v0
.end method

.method registerCrossWindowBlurEnabledListener(Landroid/view/ICrossWindowBlurEnabledListener;)Z
    .locals 1
    .param p1, "listener"    # Landroid/view/ICrossWindowBlurEnabledListener;

    .line 98
    if-nez p1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/BlurController;->mBlurEnabledListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 100
    invoke-virtual {p0}, Lcom/android/server/wm/BlurController;->getBlurEnabled()Z

    move-result v0

    return v0
.end method

.method unregisterCrossWindowBlurEnabledListener(Landroid/view/ICrossWindowBlurEnabledListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/ICrossWindowBlurEnabledListener;

    .line 104
    if-nez p1, :cond_0

    return-void

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/BlurController;->mBlurEnabledListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 106
    return-void
.end method
