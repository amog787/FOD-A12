.class Lcom/android/server/BluetoothAirplaneModeListener;
.super Ljava/lang/Object;
.source "BluetoothAirplaneModeListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/BluetoothAirplaneModeListener$BluetoothAirplaneModeHandler;
    }
.end annotation


# static fields
.field static final MAX_TOAST_COUNT:I = 0xa

.field private static final MSG_AIRPLANE_MODE_CHANGED:I = 0x0

.field private static final TAG:Ljava/lang/String; = "BluetoothAirplaneModeListener"

.field static final TOAST_COUNT:Ljava/lang/String; = "bluetooth_airplane_toast_count"


# instance fields
.field private mAirplaneHelper:Lcom/android/server/BluetoothModeChangeHelper;

.field private final mAirplaneModeObserver:Landroid/database/ContentObserver;

.field private final mBluetoothManager:Lcom/android/server/BluetoothManagerService;

.field private final mHandler:Lcom/android/server/BluetoothAirplaneModeListener$BluetoothAirplaneModeHandler;

.field mToastCount:I


# direct methods
.method constructor <init>(Lcom/android/server/BluetoothManagerService;Landroid/os/Looper;Landroid/content/Context;)V
    .locals 4
    .param p1, "service"    # Lcom/android/server/BluetoothManagerService;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "context"    # Landroid/content/Context;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/BluetoothAirplaneModeListener;->mToastCount:I

    .line 62
    new-instance v0, Lcom/android/server/BluetoothAirplaneModeListener$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/BluetoothAirplaneModeListener$1;-><init>(Lcom/android/server/BluetoothAirplaneModeListener;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/BluetoothAirplaneModeListener;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    .line 54
    iput-object p1, p0, Lcom/android/server/BluetoothAirplaneModeListener;->mBluetoothManager:Lcom/android/server/BluetoothManagerService;

    .line 56
    new-instance v1, Lcom/android/server/BluetoothAirplaneModeListener$BluetoothAirplaneModeHandler;

    invoke-direct {v1, p0, p2}, Lcom/android/server/BluetoothAirplaneModeListener$BluetoothAirplaneModeHandler;-><init>(Lcom/android/server/BluetoothAirplaneModeListener;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/BluetoothAirplaneModeListener;->mHandler:Lcom/android/server/BluetoothAirplaneModeListener$BluetoothAirplaneModeHandler;

    .line 57
    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 58
    const-string v2, "airplane_mode_on"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 57
    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 60
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/BluetoothAirplaneModeListener;)Lcom/android/server/BluetoothAirplaneModeListener$BluetoothAirplaneModeHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BluetoothAirplaneModeListener;

    .line 39
    iget-object v0, p0, Lcom/android/server/BluetoothAirplaneModeListener;->mHandler:Lcom/android/server/BluetoothAirplaneModeListener$BluetoothAirplaneModeHandler;

    return-object v0
.end method


# virtual methods
.method handleAirplaneModeChange()V
    .locals 3

    .line 112
    invoke-virtual {p0}, Lcom/android/server/BluetoothAirplaneModeListener;->shouldSkipAirplaneModeChange()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 113
    const-string v0, "BluetoothAirplaneModeListener"

    const-string v1, "Ignore airplane mode change"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-object v0, p0, Lcom/android/server/BluetoothAirplaneModeListener;->mAirplaneHelper:Lcom/android/server/BluetoothModeChangeHelper;

    const/4 v1, 0x2

    const-string v2, "bluetooth_on"

    invoke-virtual {v0, v2, v1}, Lcom/android/server/BluetoothModeChangeHelper;->setSettingsInt(Ljava/lang/String;I)V

    .line 119
    invoke-virtual {p0}, Lcom/android/server/BluetoothAirplaneModeListener;->shouldPopToast()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/android/server/BluetoothAirplaneModeListener;->mAirplaneHelper:Lcom/android/server/BluetoothModeChangeHelper;

    invoke-virtual {v0}, Lcom/android/server/BluetoothModeChangeHelper;->showToastMessage()V

    .line 122
    :cond_0
    return-void

    .line 124
    :cond_1
    iget-object v0, p0, Lcom/android/server/BluetoothAirplaneModeListener;->mAirplaneHelper:Lcom/android/server/BluetoothModeChangeHelper;

    if-eqz v0, :cond_2

    .line 125
    iget-object v1, p0, Lcom/android/server/BluetoothAirplaneModeListener;->mBluetoothManager:Lcom/android/server/BluetoothManagerService;

    invoke-virtual {v0, v1}, Lcom/android/server/BluetoothModeChangeHelper;->onAirplaneModeChanged(Lcom/android/server/BluetoothManagerService;)V

    .line 127
    :cond_2
    return-void
.end method

.method shouldPopToast()Z
    .locals 4

    .line 101
    iget v0, p0, Lcom/android/server/BluetoothAirplaneModeListener;->mToastCount:I

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    .line 102
    const/4 v0, 0x0

    return v0

    .line 104
    :cond_0
    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/BluetoothAirplaneModeListener;->mToastCount:I

    .line 105
    iget-object v2, p0, Lcom/android/server/BluetoothAirplaneModeListener;->mAirplaneHelper:Lcom/android/server/BluetoothModeChangeHelper;

    const-string v3, "bluetooth_airplane_toast_count"

    invoke-virtual {v2, v3, v0}, Lcom/android/server/BluetoothModeChangeHelper;->setSettingsInt(Ljava/lang/String;I)V

    .line 106
    return v1
.end method

.method shouldSkipAirplaneModeChange()Z
    .locals 2

    .line 131
    iget-object v0, p0, Lcom/android/server/BluetoothAirplaneModeListener;->mAirplaneHelper:Lcom/android/server/BluetoothModeChangeHelper;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 132
    return v1

    .line 134
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/BluetoothModeChangeHelper;->isBluetoothOn()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/BluetoothAirplaneModeListener;->mAirplaneHelper:Lcom/android/server/BluetoothModeChangeHelper;

    invoke-virtual {v0}, Lcom/android/server/BluetoothModeChangeHelper;->isAirplaneModeOn()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/BluetoothAirplaneModeListener;->mAirplaneHelper:Lcom/android/server/BluetoothModeChangeHelper;

    .line 135
    invoke-virtual {v0}, Lcom/android/server/BluetoothModeChangeHelper;->isA2dpOrHearingAidConnected()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 138
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 136
    :cond_2
    :goto_0
    return v1
.end method

.method start(Lcom/android/server/BluetoothModeChangeHelper;)V
    .locals 2
    .param p1, "helper"    # Lcom/android/server/BluetoothModeChangeHelper;

    .line 94
    const-string v0, "BluetoothAirplaneModeListener"

    const-string/jumbo v1, "start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iput-object p1, p0, Lcom/android/server/BluetoothAirplaneModeListener;->mAirplaneHelper:Lcom/android/server/BluetoothModeChangeHelper;

    .line 96
    const-string v0, "bluetooth_airplane_toast_count"

    invoke-virtual {p1, v0}, Lcom/android/server/BluetoothModeChangeHelper;->getSettingsInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/BluetoothAirplaneModeListener;->mToastCount:I

    .line 97
    return-void
.end method
