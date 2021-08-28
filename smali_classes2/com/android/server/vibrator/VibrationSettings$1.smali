.class Lcom/android/server/vibrator/VibrationSettings$1;
.super Ljava/lang/Object;
.source "VibrationSettings.java"

# interfaces
.implements Landroid/os/PowerManagerInternal$LowPowerModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/vibrator/VibrationSettings;->onSystemReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/vibrator/VibrationSettings;


# direct methods
.method constructor <init>(Lcom/android/server/vibrator/VibrationSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/vibrator/VibrationSettings;

    .line 157
    iput-object p1, p0, Lcom/android/server/vibrator/VibrationSettings$1;->this$0:Lcom/android/server/vibrator/VibrationSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getServiceType()I
    .locals 1

    .line 160
    const/4 v0, 0x2

    return v0
.end method

.method public onLowPowerModeChanged(Landroid/os/PowerSaveState;)V
    .locals 4
    .param p1, "result"    # Landroid/os/PowerSaveState;

    .line 166
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationSettings$1;->this$0:Lcom/android/server/vibrator/VibrationSettings;

    invoke-static {v0}, Lcom/android/server/vibrator/VibrationSettings;->access$000(Lcom/android/server/vibrator/VibrationSettings;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 167
    :try_start_0
    iget-boolean v1, p1, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    iget-object v2, p0, Lcom/android/server/vibrator/VibrationSettings$1;->this$0:Lcom/android/server/vibrator/VibrationSettings;

    invoke-static {v2}, Lcom/android/server/vibrator/VibrationSettings;->access$100(Lcom/android/server/vibrator/VibrationSettings;)Z

    move-result v2

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 168
    .local v1, "shouldNotifyListeners":Z
    :goto_0
    iget-object v2, p0, Lcom/android/server/vibrator/VibrationSettings$1;->this$0:Lcom/android/server/vibrator/VibrationSettings;

    iget-boolean v3, p1, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    invoke-static {v2, v3}, Lcom/android/server/vibrator/VibrationSettings;->access$102(Lcom/android/server/vibrator/VibrationSettings;Z)Z

    .line 169
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    if-eqz v1, :cond_1

    .line 171
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationSettings$1;->this$0:Lcom/android/server/vibrator/VibrationSettings;

    invoke-static {v0}, Lcom/android/server/vibrator/VibrationSettings;->access$200(Lcom/android/server/vibrator/VibrationSettings;)V

    .line 173
    :cond_1
    return-void

    .line 169
    .end local v1    # "shouldNotifyListeners":Z
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
