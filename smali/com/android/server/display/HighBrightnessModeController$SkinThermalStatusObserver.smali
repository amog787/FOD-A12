.class final Lcom/android/server/display/HighBrightnessModeController$SkinThermalStatusObserver;
.super Landroid/os/IThermalEventListener$Stub;
.source "HighBrightnessModeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/HighBrightnessModeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SkinThermalStatusObserver"
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mInjector:Lcom/android/server/display/HighBrightnessModeController$Injector;

.field private mStarted:Z

.field private mThermalService:Landroid/os/IThermalService;

.field final synthetic this$0:Lcom/android/server/display/HighBrightnessModeController;


# direct methods
.method constructor <init>(Lcom/android/server/display/HighBrightnessModeController;Lcom/android/server/display/HighBrightnessModeController$Injector;Landroid/os/Handler;)V
    .locals 0
    .param p2, "injector"    # Lcom/android/server/display/HighBrightnessModeController$Injector;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 512
    iput-object p1, p0, Lcom/android/server/display/HighBrightnessModeController$SkinThermalStatusObserver;->this$0:Lcom/android/server/display/HighBrightnessModeController;

    invoke-direct {p0}, Landroid/os/IThermalEventListener$Stub;-><init>()V

    .line 513
    iput-object p2, p0, Lcom/android/server/display/HighBrightnessModeController$SkinThermalStatusObserver;->mInjector:Lcom/android/server/display/HighBrightnessModeController$Injector;

    .line 514
    iput-object p3, p0, Lcom/android/server/display/HighBrightnessModeController$SkinThermalStatusObserver;->mHandler:Landroid/os/Handler;

    .line 515
    return-void
.end method


# virtual methods
.method dump(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .line 571
    const-string v0, "  SkinThermalStatusObserver:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 572
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mStarted: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/HighBrightnessModeController$SkinThermalStatusObserver;->mStarted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 573
    iget-object v0, p0, Lcom/android/server/display/HighBrightnessModeController$SkinThermalStatusObserver;->mThermalService:Landroid/os/IThermalService;

    if-eqz v0, :cond_0

    .line 574
    const-string v0, "    ThermalService available"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 576
    :cond_0
    const-string v0, "    ThermalService not available"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 578
    :goto_0
    return-void
.end method

.method public synthetic lambda$notifyThrottling$0$HighBrightnessModeController$SkinThermalStatusObserver(Landroid/os/Temperature;)V
    .locals 3
    .param p1, "temp"    # Landroid/os/Temperature;

    .line 525
    iget-object v0, p0, Lcom/android/server/display/HighBrightnessModeController$SkinThermalStatusObserver;->this$0:Lcom/android/server/display/HighBrightnessModeController;

    invoke-virtual {p1}, Landroid/os/Temperature;->getStatus()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/display/HighBrightnessModeController$SkinThermalStatusObserver;->this$0:Lcom/android/server/display/HighBrightnessModeController;

    invoke-static {v2}, Lcom/android/server/display/HighBrightnessModeController;->access$700(Lcom/android/server/display/HighBrightnessModeController;)Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    move-result-object v2

    iget v2, v2, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->thermalStatusLimit:I

    if-gt v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, v1}, Lcom/android/server/display/HighBrightnessModeController;->access$602(Lcom/android/server/display/HighBrightnessModeController;Z)Z

    .line 527
    iget-object v0, p0, Lcom/android/server/display/HighBrightnessModeController$SkinThermalStatusObserver;->this$0:Lcom/android/server/display/HighBrightnessModeController;

    invoke-static {v0}, Lcom/android/server/display/HighBrightnessModeController;->access$800(Lcom/android/server/display/HighBrightnessModeController;)V

    .line 528
    return-void
.end method

.method public notifyThrottling(Landroid/os/Temperature;)V
    .locals 2
    .param p1, "temp"    # Landroid/os/Temperature;

    .line 524
    iget-object v0, p0, Lcom/android/server/display/HighBrightnessModeController$SkinThermalStatusObserver;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/HighBrightnessModeController$SkinThermalStatusObserver$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/display/HighBrightnessModeController$SkinThermalStatusObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/HighBrightnessModeController$SkinThermalStatusObserver;Landroid/os/Temperature;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 529
    return-void
.end method

.method startObserving()V
    .locals 3

    .line 532
    iget-boolean v0, p0, Lcom/android/server/display/HighBrightnessModeController$SkinThermalStatusObserver;->mStarted:Z

    if-eqz v0, :cond_0

    .line 536
    return-void

    .line 538
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/HighBrightnessModeController$SkinThermalStatusObserver;->mInjector:Lcom/android/server/display/HighBrightnessModeController$Injector;

    invoke-virtual {v0}, Lcom/android/server/display/HighBrightnessModeController$Injector;->getThermalService()Landroid/os/IThermalService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/HighBrightnessModeController$SkinThermalStatusObserver;->mThermalService:Landroid/os/IThermalService;

    .line 539
    const-string v1, "HighBrightnessModeController"

    if-nez v0, :cond_1

    .line 540
    const-string v0, "Could not observe thermal status. Service not available"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    return-void

    .line 546
    :cond_1
    const/4 v2, 0x3

    :try_start_0
    invoke-interface {v0, p0, v2}, Landroid/os/IThermalService;->registerThermalEventListenerWithType(Landroid/os/IThermalEventListener;I)Z

    .line 547
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/HighBrightnessModeController$SkinThermalStatusObserver;->mStarted:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 550
    goto :goto_0

    .line 548
    :catch_0
    move-exception v0

    .line 549
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "Failed to register thermal status listener"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 551
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method stopObserving()V
    .locals 3

    .line 554
    iget-object v0, p0, Lcom/android/server/display/HighBrightnessModeController$SkinThermalStatusObserver;->this$0:Lcom/android/server/display/HighBrightnessModeController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/display/HighBrightnessModeController;->access$602(Lcom/android/server/display/HighBrightnessModeController;Z)Z

    .line 555
    iget-boolean v0, p0, Lcom/android/server/display/HighBrightnessModeController$SkinThermalStatusObserver;->mStarted:Z

    if-nez v0, :cond_0

    .line 559
    return-void

    .line 562
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/HighBrightnessModeController$SkinThermalStatusObserver;->mThermalService:Landroid/os/IThermalService;

    invoke-interface {v0, p0}, Landroid/os/IThermalService;->unregisterThermalEventListener(Landroid/os/IThermalEventListener;)Z

    .line 563
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/HighBrightnessModeController$SkinThermalStatusObserver;->mStarted:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 566
    goto :goto_0

    .line 564
    :catch_0
    move-exception v0

    .line 565
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "HighBrightnessModeController"

    const-string v2, "Failed to unregister thermal status listener"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 567
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/HighBrightnessModeController$SkinThermalStatusObserver;->mThermalService:Landroid/os/IThermalService;

    .line 568
    return-void
.end method
