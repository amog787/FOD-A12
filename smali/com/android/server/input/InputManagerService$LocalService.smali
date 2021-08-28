.class final Lcom/android/server/input/InputManagerService$LocalService;
.super Landroid/hardware/input/InputManagerInternal;
.source "InputManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/input/InputManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LocalService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/input/InputManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/input/InputManagerService;)V
    .locals 0

    .line 3411
    iput-object p1, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-direct {p0}, Landroid/hardware/input/InputManagerInternal;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/input/InputManagerService;Lcom/android/server/input/InputManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/input/InputManagerService;
    .param p2, "x1"    # Lcom/android/server/input/InputManagerService$1;

    .line 3411
    invoke-direct {p0, p1}, Lcom/android/server/input/InputManagerService$LocalService;-><init>(Lcom/android/server/input/InputManagerService;)V

    return-void
.end method


# virtual methods
.method public injectInputEvent(Landroid/view/InputEvent;I)Z
    .locals 1
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "mode"    # I

    .line 3419
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {v0, p1, p2}, Lcom/android/server/input/InputManagerService;->access$2800(Lcom/android/server/input/InputManagerService;Landroid/view/InputEvent;I)Z

    move-result v0

    return v0
.end method

.method public registerLidSwitchCallback(Landroid/hardware/input/InputManagerInternal$LidSwitchCallback;)V
    .locals 1
    .param p1, "callbacks"    # Landroid/hardware/input/InputManagerInternal$LidSwitchCallback;

    .line 3455
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/input/InputManagerService;->registerLidSwitchCallbackInternal(Landroid/hardware/input/InputManagerInternal$LidSwitchCallback;)V

    .line 3456
    return-void
.end method

.method public setDisplayViewports(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/display/DisplayViewport;",
            ">;)V"
        }
    .end annotation

    .line 3414
    .local p1, "viewports":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/display/DisplayViewport;>;"
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {v0, p1}, Lcom/android/server/input/InputManagerService;->access$2700(Lcom/android/server/input/InputManagerService;Ljava/util/List;)V

    .line 3415
    return-void
.end method

.method public setInteractive(Z)V
    .locals 2
    .param p1, "interactive"    # Z

    .line 3424
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {v0}, Lcom/android/server/input/InputManagerService;->access$2000(Lcom/android/server/input/InputManagerService;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/android/server/input/InputManagerService;->access$2900(JZ)V

    .line 3425
    return-void
.end method

.method public setPulseGestureEnabled(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .line 3434
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {v0}, Lcom/android/server/input/InputManagerService;->access$3100(Lcom/android/server/input/InputManagerService;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3435
    const/4 v0, 0x0

    .line 3437
    .local v0, "writer":Ljava/io/FileWriter;
    :try_start_0
    new-instance v1, Ljava/io/FileWriter;

    iget-object v2, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {v2}, Lcom/android/server/input/InputManagerService;->access$3100(Lcom/android/server/input/InputManagerService;)Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    move-object v0, v1

    .line 3438
    if-eqz p1, :cond_0

    const-string v1, "1"

    goto :goto_0

    :cond_0
    const-string v1, "0"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3442
    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    .line 3439
    :catch_0
    move-exception v1

    .line 3440
    .local v1, "e":Ljava/io/IOException;
    :try_start_1
    const-string v2, "InputManager"

    const-string v3, "Unable to setPulseGestureEnabled"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3442
    nop

    .end local v1    # "e":Ljava/io/IOException;
    :goto_1
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3443
    goto :goto_3

    .line 3442
    :goto_2
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3443
    throw v1

    .line 3445
    .end local v0    # "writer":Ljava/io/FileWriter;
    :cond_1
    :goto_3
    return-void
.end method

.method public toggleCapsLock(I)V
    .locals 2
    .param p1, "deviceId"    # I

    .line 3429
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {v0}, Lcom/android/server/input/InputManagerService;->access$2000(Lcom/android/server/input/InputManagerService;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/android/server/input/InputManagerService;->access$3000(JI)V

    .line 3430
    return-void
.end method

.method public transferTouchFocus(Landroid/os/IBinder;Landroid/os/IBinder;)Z
    .locals 1
    .param p1, "fromChannelToken"    # Landroid/os/IBinder;
    .param p2, "toChannelToken"    # Landroid/os/IBinder;

    .line 3450
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/input/InputManagerService;->transferTouchFocus(Landroid/os/IBinder;Landroid/os/IBinder;)Z

    move-result v0

    return v0
.end method

.method public unregisterLidSwitchCallback(Landroid/hardware/input/InputManagerInternal$LidSwitchCallback;)V
    .locals 1
    .param p1, "callbacks"    # Landroid/hardware/input/InputManagerInternal$LidSwitchCallback;

    .line 3460
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/input/InputManagerService;->unregisterLidSwitchCallbackInternal(Landroid/hardware/input/InputManagerInternal$LidSwitchCallback;)V

    .line 3461
    return-void
.end method