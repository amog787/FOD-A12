.class final Lcom/android/server/job/controllers/ConnectivityController$ChargingTracker;
.super Landroid/content/BroadcastReceiver;
.source "ConnectivityController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/controllers/ConnectivityController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ChargingTracker"
.end annotation


# instance fields
.field private mCharging:Z

.field final synthetic this$0:Lcom/android/server/job/controllers/ConnectivityController;


# direct methods
.method constructor <init>(Lcom/android/server/job/controllers/ConnectivityController;)V
    .locals 0

    .line 1023
    iput-object p1, p0, Lcom/android/server/job/controllers/ConnectivityController$ChargingTracker;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public isCharging()Z
    .locals 1

    .line 1038
    iget-boolean v0, p0, Lcom/android/server/job/controllers/ConnectivityController$ChargingTracker;->mCharging:Z

    return v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 1043
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController$ChargingTracker;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    iget-object v0, v0, Lcom/android/server/job/controllers/ConnectivityController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1044
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 1045
    .local v1, "action":Ljava/lang/String;
    const-string v2, "android.os.action.CHARGING"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1046
    iget-boolean v2, p0, Lcom/android/server/job/controllers/ConnectivityController$ChargingTracker;->mCharging:Z

    if-eqz v2, :cond_0

    .line 1047
    monitor-exit v0

    return-void

    .line 1049
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/job/controllers/ConnectivityController$ChargingTracker;->mCharging:Z

    goto :goto_0

    .line 1050
    :cond_1
    const-string v2, "android.os.action.DISCHARGING"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1051
    iget-boolean v2, p0, Lcom/android/server/job/controllers/ConnectivityController$ChargingTracker;->mCharging:Z

    if-nez v2, :cond_2

    .line 1052
    monitor-exit v0

    return-void

    .line 1054
    :cond_2
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/job/controllers/ConnectivityController$ChargingTracker;->mCharging:Z

    .line 1056
    :cond_3
    :goto_0
    iget-object v2, p0, Lcom/android/server/job/controllers/ConnectivityController$ChargingTracker;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/android/server/job/controllers/ConnectivityController;->access$600(Lcom/android/server/job/controllers/ConnectivityController;ILandroid/net/Network;)V

    .line 1057
    .end local v1    # "action":Ljava/lang/String;
    monitor-exit v0

    .line 1058
    return-void

    .line 1057
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public startTracking()V
    .locals 3

    .line 1026
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1027
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.os.action.CHARGING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1028
    const-string v1, "android.os.action.DISCHARGING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1029
    iget-object v1, p0, Lcom/android/server/job/controllers/ConnectivityController$ChargingTracker;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    iget-object v1, v1, Lcom/android/server/job/controllers/ConnectivityController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1032
    const-class v1, Landroid/os/BatteryManagerInternal;

    .line 1033
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/BatteryManagerInternal;

    .line 1034
    .local v1, "batteryManagerInternal":Landroid/os/BatteryManagerInternal;
    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Landroid/os/BatteryManagerInternal;->isPowered(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/job/controllers/ConnectivityController$ChargingTracker;->mCharging:Z

    .line 1035
    return-void
.end method
