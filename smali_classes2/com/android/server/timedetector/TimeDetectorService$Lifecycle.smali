.class public Lcom/android/server/timedetector/TimeDetectorService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "TimeDetectorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/timedetector/TimeDetectorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Lifecycle"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 61
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 62
    return-void
.end method


# virtual methods
.method public onStart()V
    .locals 6

    .line 66
    invoke-virtual {p0}, Lcom/android/server/timedetector/TimeDetectorService$Lifecycle;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 67
    .local v0, "context":Landroid/content/Context;
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    .line 69
    .local v1, "handler":Landroid/os/Handler;
    nop

    .line 70
    invoke-static {v0}, Lcom/android/server/timedetector/ServiceConfigAccessor;->getInstance(Landroid/content/Context;)Lcom/android/server/timedetector/ServiceConfigAccessor;

    move-result-object v2

    .line 71
    .local v2, "serviceConfigAccessor":Lcom/android/server/timedetector/ServiceConfigAccessor;
    nop

    .line 72
    invoke-static {v0, v1, v2}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->create(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/timedetector/ServiceConfigAccessor;)Lcom/android/server/timedetector/TimeDetectorStrategy;

    move-result-object v3

    .line 74
    .local v3, "timeDetectorStrategy":Lcom/android/server/timedetector/TimeDetectorStrategy;
    new-instance v4, Lcom/android/server/timedetector/TimeDetectorService;

    invoke-direct {v4, v0, v1, v3}, Lcom/android/server/timedetector/TimeDetectorService;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/timedetector/TimeDetectorStrategy;)V

    .line 79
    .local v4, "service":Lcom/android/server/timedetector/TimeDetectorService;
    const-string v5, "time_detector"

    invoke-virtual {p0, v5, v4}, Lcom/android/server/timedetector/TimeDetectorService$Lifecycle;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 80
    return-void
.end method
