.class public Lcom/android/server/timedetector/GnssTimeUpdateService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "GnssTimeUpdateService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/timedetector/GnssTimeUpdateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Lifecycle"
.end annotation


# instance fields
.field private mService:Lcom/android/server/timedetector/GnssTimeUpdateService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 64
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 65
    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .locals 1
    .param p1, "phase"    # I

    .line 77
    const/16 v0, 0x258

    if-ne p1, v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/android/server/timedetector/GnssTimeUpdateService$Lifecycle;->mService:Lcom/android/server/timedetector/GnssTimeUpdateService;

    invoke-virtual {v0}, Lcom/android/server/timedetector/GnssTimeUpdateService;->requestGnssTimeUpdates()V

    .line 84
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 69
    new-instance v0, Lcom/android/server/timedetector/GnssTimeUpdateService;

    invoke-virtual {p0}, Lcom/android/server/timedetector/GnssTimeUpdateService$Lifecycle;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/timedetector/GnssTimeUpdateService;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/timedetector/GnssTimeUpdateService$Lifecycle;->mService:Lcom/android/server/timedetector/GnssTimeUpdateService;

    .line 70
    const-string v1, "gnss_time_update_service"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/timedetector/GnssTimeUpdateService$Lifecycle;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 71
    return-void
.end method
