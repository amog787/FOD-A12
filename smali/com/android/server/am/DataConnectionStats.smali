.class public Lcom/android/server/am/DataConnectionStats;
.super Landroid/content/BroadcastReceiver;
.source "DataConnectionStats.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/DataConnectionStats$PhoneStateListenerImpl;,
        Lcom/android/server/am/DataConnectionStats$PhoneStateListenerExecutor;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "DataConnectionStats"


# instance fields
.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private final mContext:Landroid/content/Context;

.field private mDataState:I

.field private final mListenerHandler:Landroid/os/Handler;

.field private mNrState:I

.field private final mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mServiceState:Landroid/telephony/ServiceState;

.field private mSignalStrength:Landroid/telephony/SignalStrength;

.field private mSimState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listenerHandler"    # Landroid/os/Handler;

    .line 57
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 51
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/server/am/DataConnectionStats;->mSimState:I

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/DataConnectionStats;->mDataState:I

    .line 55
    iput v0, p0, Lcom/android/server/am/DataConnectionStats;->mNrState:I

    .line 58
    iput-object p1, p0, Lcom/android/server/am/DataConnectionStats;->mContext:Landroid/content/Context;

    .line 59
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/DataConnectionStats;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 60
    iput-object p2, p0, Lcom/android/server/am/DataConnectionStats;->mListenerHandler:Landroid/os/Handler;

    .line 61
    new-instance v0, Lcom/android/server/am/DataConnectionStats$PhoneStateListenerImpl;

    new-instance v1, Lcom/android/server/am/DataConnectionStats$PhoneStateListenerExecutor;

    invoke-direct {v1, p2}, Lcom/android/server/am/DataConnectionStats$PhoneStateListenerExecutor;-><init>(Landroid/os/Handler;)V

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/DataConnectionStats$PhoneStateListenerImpl;-><init>(Lcom/android/server/am/DataConnectionStats;Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Lcom/android/server/am/DataConnectionStats;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 63
    return-void
.end method

.method static synthetic access$002(Lcom/android/server/am/DataConnectionStats;Landroid/telephony/SignalStrength;)Landroid/telephony/SignalStrength;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/DataConnectionStats;
    .param p1, "x1"    # Landroid/telephony/SignalStrength;

    .line 42
    iput-object p1, p0, Lcom/android/server/am/DataConnectionStats;->mSignalStrength:Landroid/telephony/SignalStrength;

    return-object p1
.end method

.method static synthetic access$102(Lcom/android/server/am/DataConnectionStats;Landroid/telephony/ServiceState;)Landroid/telephony/ServiceState;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/DataConnectionStats;
    .param p1, "x1"    # Landroid/telephony/ServiceState;

    .line 42
    iput-object p1, p0, Lcom/android/server/am/DataConnectionStats;->mServiceState:Landroid/telephony/ServiceState;

    return-object p1
.end method

.method static synthetic access$202(Lcom/android/server/am/DataConnectionStats;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/DataConnectionStats;
    .param p1, "x1"    # I

    .line 42
    iput p1, p0, Lcom/android/server/am/DataConnectionStats;->mNrState:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/am/DataConnectionStats;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/DataConnectionStats;

    .line 42
    invoke-direct {p0}, Lcom/android/server/am/DataConnectionStats;->notePhoneDataConnectionState()V

    return-void
.end method

.method static synthetic access$402(Lcom/android/server/am/DataConnectionStats;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/DataConnectionStats;
    .param p1, "x1"    # I

    .line 42
    iput p1, p0, Lcom/android/server/am/DataConnectionStats;->mDataState:I

    return p1
.end method

.method private hasService()Z
    .locals 3

    .line 144
    iget-object v0, p0, Lcom/android/server/am/DataConnectionStats;->mServiceState:Landroid/telephony/ServiceState;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 145
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/am/DataConnectionStats;->mServiceState:Landroid/telephony/ServiceState;

    .line 146
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 144
    :goto_0
    return v1
.end method

.method private isCdma()Z
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/android/server/am/DataConnectionStats;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private notePhoneDataConnectionState()V
    .locals 7

    .line 89
    iget-object v0, p0, Lcom/android/server/am/DataConnectionStats;->mServiceState:Landroid/telephony/ServiceState;

    if-nez v0, :cond_0

    .line 90
    return-void

    .line 92
    :cond_0
    iget v0, p0, Lcom/android/server/am/DataConnectionStats;->mSimState:I

    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_2

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v3

    .line 94
    .local v0, "simReadyOrUnknown":Z
    :goto_1
    const/4 v1, 0x2

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/android/server/am/DataConnectionStats;->isCdma()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 95
    :cond_3
    invoke-direct {p0}, Lcom/android/server/am/DataConnectionStats;->hasService()Z

    move-result v4

    if-eqz v4, :cond_4

    iget v4, p0, Lcom/android/server/am/DataConnectionStats;->mDataState:I

    if-ne v4, v1, :cond_4

    move v4, v3

    goto :goto_2

    :cond_4
    move v4, v2

    .line 97
    .local v4, "visible":Z
    :goto_2
    iget-object v5, p0, Lcom/android/server/am/DataConnectionStats;->mServiceState:Landroid/telephony/ServiceState;

    .line 98
    invoke-virtual {v5, v1, v3}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v1

    .line 99
    .local v1, "regInfo":Landroid/telephony/NetworkRegistrationInfo;
    if-nez v1, :cond_5

    goto :goto_3

    .line 100
    :cond_5
    invoke-virtual {v1}, Landroid/telephony/NetworkRegistrationInfo;->getAccessNetworkTechnology()I

    move-result v2

    :goto_3
    nop

    .line 103
    .local v2, "networkType":I
    iget v3, p0, Lcom/android/server/am/DataConnectionStats;->mNrState:I

    const/4 v5, 0x3

    if-ne v3, v5, :cond_6

    .line 104
    const/16 v2, 0x14

    .line 111
    :cond_6
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/DataConnectionStats;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v5, p0, Lcom/android/server/am/DataConnectionStats;->mServiceState:Landroid/telephony/ServiceState;

    .line 112
    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getState()I

    move-result v5

    .line 111
    invoke-interface {v3, v2, v4, v5}, Lcom/android/internal/app/IBatteryStats;->notePhoneDataConnectionState(IZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    goto :goto_4

    .line 113
    :catch_0
    move-exception v3

    .line 114
    .local v3, "e":Landroid/os/RemoteException;
    const-string v5, "DataConnectionStats"

    const-string v6, "Error noting data connection state"

    invoke-static {v5, v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 116
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_4
    return-void
.end method

.method private updateSimState(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 119
    const-string/jumbo v0, "ss"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 120
    .local v0, "stateExtra":Ljava/lang/String;
    const-string v1, "ABSENT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 121
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/server/am/DataConnectionStats;->mSimState:I

    goto :goto_1

    .line 122
    :cond_0
    const-string v1, "READY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 123
    const/4 v1, 0x5

    iput v1, p0, Lcom/android/server/am/DataConnectionStats;->mSimState:I

    goto :goto_1

    .line 124
    :cond_1
    const-string v1, "LOCKED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 125
    nop

    .line 126
    const-string/jumbo v1, "reason"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 127
    .local v1, "lockedReason":Ljava/lang/String;
    const-string v2, "PIN"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 128
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/server/am/DataConnectionStats;->mSimState:I

    goto :goto_0

    .line 129
    :cond_2
    const-string v2, "PUK"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 130
    const/4 v2, 0x3

    iput v2, p0, Lcom/android/server/am/DataConnectionStats;->mSimState:I

    goto :goto_0

    .line 132
    :cond_3
    const/4 v2, 0x4

    iput v2, p0, Lcom/android/server/am/DataConnectionStats;->mSimState:I

    .line 134
    .end local v1    # "lockedReason":Ljava/lang/String;
    :goto_0
    goto :goto_1

    .line 135
    :cond_4
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/am/DataConnectionStats;->mSimState:I

    .line 137
    :goto_1
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 81
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 83
    invoke-direct {p0, p2}, Lcom/android/server/am/DataConnectionStats;->updateSimState(Landroid/content/Intent;)V

    .line 84
    invoke-direct {p0}, Lcom/android/server/am/DataConnectionStats;->notePhoneDataConnectionState()V

    .line 86
    :cond_0
    return-void
.end method

.method public startMonitoring()V
    .locals 5

    .line 67
    iget-object v0, p0, Lcom/android/server/am/DataConnectionStats;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 68
    .local v0, "phone":Landroid/telephony/TelephonyManager;
    iget-object v1, p0, Lcom/android/server/am/DataConnectionStats;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x1c1

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 74
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 75
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 76
    iget-object v2, p0, Lcom/android/server/am/DataConnectionStats;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/am/DataConnectionStats;->mListenerHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-virtual {v2, p0, v1, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 77
    return-void
.end method
