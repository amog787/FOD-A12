.class public abstract Lcom/android/server/AppStateTrackerImpl$Listener;
.super Ljava/lang/Object;
.source "AppStateTrackerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AppStateTrackerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Listener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/AppStateTrackerImpl$Listener;Lcom/android/server/AppStateTrackerImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/AppStateTrackerImpl$Listener;
    .param p1, "x1"    # Lcom/android/server/AppStateTrackerImpl;

    .line 265
    invoke-direct {p0, p1}, Lcom/android/server/AppStateTrackerImpl$Listener;->onPowerSaveUnexempted(Lcom/android/server/AppStateTrackerImpl;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/AppStateTrackerImpl$Listener;Lcom/android/server/AppStateTrackerImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/AppStateTrackerImpl$Listener;
    .param p1, "x1"    # Lcom/android/server/AppStateTrackerImpl;

    .line 265
    invoke-direct {p0, p1}, Lcom/android/server/AppStateTrackerImpl$Listener;->onPowerSaveExemptionListChanged(Lcom/android/server/AppStateTrackerImpl;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/AppStateTrackerImpl$Listener;Lcom/android/server/AppStateTrackerImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/AppStateTrackerImpl$Listener;
    .param p1, "x1"    # Lcom/android/server/AppStateTrackerImpl;

    .line 265
    invoke-direct {p0, p1}, Lcom/android/server/AppStateTrackerImpl$Listener;->onTempPowerSaveExemptionListChanged(Lcom/android/server/AppStateTrackerImpl;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/AppStateTrackerImpl$Listener;Lcom/android/server/AppStateTrackerImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/AppStateTrackerImpl$Listener;
    .param p1, "x1"    # Lcom/android/server/AppStateTrackerImpl;

    .line 265
    invoke-direct {p0, p1}, Lcom/android/server/AppStateTrackerImpl$Listener;->onExemptedBucketChanged(Lcom/android/server/AppStateTrackerImpl;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/AppStateTrackerImpl$Listener;Lcom/android/server/AppStateTrackerImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/AppStateTrackerImpl$Listener;
    .param p1, "x1"    # Lcom/android/server/AppStateTrackerImpl;

    .line 265
    invoke-direct {p0, p1}, Lcom/android/server/AppStateTrackerImpl$Listener;->onForceAllAppsStandbyChanged(Lcom/android/server/AppStateTrackerImpl;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/AppStateTrackerImpl$Listener;Lcom/android/server/AppStateTrackerImpl;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/AppStateTrackerImpl$Listener;
    .param p1, "x1"    # Lcom/android/server/AppStateTrackerImpl;
    .param p2, "x2"    # I

    .line 265
    invoke-direct {p0, p1, p2}, Lcom/android/server/AppStateTrackerImpl$Listener;->onUidActiveStateChanged(Lcom/android/server/AppStateTrackerImpl;I)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/AppStateTrackerImpl$Listener;Lcom/android/server/AppStateTrackerImpl;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/AppStateTrackerImpl$Listener;
    .param p1, "x1"    # Lcom/android/server/AppStateTrackerImpl;
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;

    .line 265
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/AppStateTrackerImpl$Listener;->onRunAnyAppOpsChanged(Lcom/android/server/AppStateTrackerImpl;ILjava/lang/String;)V

    return-void
.end method

.method private onExemptedBucketChanged(Lcom/android/server/AppStateTrackerImpl;)V
    .locals 0
    .param p1, "sender"    # Lcom/android/server/AppStateTrackerImpl;

    .line 335
    invoke-virtual {p0}, Lcom/android/server/AppStateTrackerImpl$Listener;->updateAllJobs()V

    .line 336
    invoke-virtual {p0}, Lcom/android/server/AppStateTrackerImpl$Listener;->updateAllAlarms()V

    .line 337
    return-void
.end method

.method private onForceAllAppsStandbyChanged(Lcom/android/server/AppStateTrackerImpl;)V
    .locals 0
    .param p1, "sender"    # Lcom/android/server/AppStateTrackerImpl;

    .line 343
    invoke-virtual {p0}, Lcom/android/server/AppStateTrackerImpl$Listener;->updateAllJobs()V

    .line 344
    invoke-virtual {p0}, Lcom/android/server/AppStateTrackerImpl$Listener;->updateAllAlarms()V

    .line 345
    return-void
.end method

.method private onPowerSaveExemptionListChanged(Lcom/android/server/AppStateTrackerImpl;)V
    .locals 0
    .param p1, "sender"    # Lcom/android/server/AppStateTrackerImpl;

    .line 311
    invoke-virtual {p0}, Lcom/android/server/AppStateTrackerImpl$Listener;->updateAllJobs()V

    .line 312
    invoke-virtual {p0}, Lcom/android/server/AppStateTrackerImpl$Listener;->updateAllAlarms()V

    .line 313
    invoke-virtual {p0}, Lcom/android/server/AppStateTrackerImpl$Listener;->unblockAllUnrestrictedAlarms()V

    .line 314
    return-void
.end method

.method private onPowerSaveUnexempted(Lcom/android/server/AppStateTrackerImpl;)V
    .locals 0
    .param p1, "sender"    # Lcom/android/server/AppStateTrackerImpl;

    .line 302
    invoke-virtual {p0}, Lcom/android/server/AppStateTrackerImpl$Listener;->updateAllJobs()V

    .line 303
    invoke-virtual {p0}, Lcom/android/server/AppStateTrackerImpl$Listener;->updateAllAlarms()V

    .line 304
    return-void
.end method

.method private onRunAnyAppOpsChanged(Lcom/android/server/AppStateTrackerImpl;ILjava/lang/String;)V
    .locals 2
    .param p1, "sender"    # Lcom/android/server/AppStateTrackerImpl;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 271
    invoke-virtual {p1, p2}, Lcom/android/server/AppStateTrackerImpl;->isUidActive(I)Z

    move-result v0

    invoke-virtual {p0, p2, p3, v0}, Lcom/android/server/AppStateTrackerImpl$Listener;->updateJobsForUidPackage(ILjava/lang/String;Z)V

    .line 273
    invoke-virtual {p1, p2, p3}, Lcom/android/server/AppStateTrackerImpl;->areAlarmsRestricted(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 274
    invoke-virtual {p0, p2, p3}, Lcom/android/server/AppStateTrackerImpl$Listener;->unblockAlarmsForUidPackage(ILjava/lang/String;)V

    .line 277
    :cond_0
    invoke-virtual {p1, p2, p3}, Lcom/android/server/AppStateTrackerImpl;->isRunAnyInBackgroundAppOpsAllowed(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Package "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " toggled into fg service restriction"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppStateTracker"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    invoke-virtual {p0, p2, p3}, Lcom/android/server/AppStateTrackerImpl$Listener;->stopForegroundServicesForUidPackage(ILjava/lang/String;)V

    .line 282
    :cond_1
    return-void
.end method

.method private onTempPowerSaveExemptionListChanged(Lcom/android/server/AppStateTrackerImpl;)V
    .locals 0
    .param p1, "sender"    # Lcom/android/server/AppStateTrackerImpl;

    .line 324
    invoke-virtual {p0}, Lcom/android/server/AppStateTrackerImpl$Listener;->updateAllJobs()V

    .line 328
    return-void
.end method

.method private onUidActiveStateChanged(Lcom/android/server/AppStateTrackerImpl;I)V
    .locals 1
    .param p1, "sender"    # Lcom/android/server/AppStateTrackerImpl;
    .param p2, "uid"    # I

    .line 288
    invoke-virtual {p1, p2}, Lcom/android/server/AppStateTrackerImpl;->isUidActive(I)Z

    move-result v0

    .line 290
    .local v0, "isActive":Z
    invoke-virtual {p0, p2, v0}, Lcom/android/server/AppStateTrackerImpl$Listener;->updateJobsForUid(IZ)V

    .line 291
    invoke-virtual {p0, p2}, Lcom/android/server/AppStateTrackerImpl$Listener;->updateAlarmsForUid(I)V

    .line 293
    if-eqz v0, :cond_0

    .line 294
    invoke-virtual {p0, p2}, Lcom/android/server/AppStateTrackerImpl$Listener;->unblockAlarmsForUid(I)V

    .line 296
    :cond_0
    return-void
.end method


# virtual methods
.method public removeAlarmsForUid(I)V
    .locals 0
    .param p1, "uid"    # I

    .line 411
    return-void
.end method

.method public stopForegroundServicesForUidPackage(ILjava/lang/String;)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 373
    return-void
.end method

.method public unblockAlarmsForUid(I)V
    .locals 0
    .param p1, "uid"    # I

    .line 399
    return-void
.end method

.method public unblockAlarmsForUidPackage(ILjava/lang/String;)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 405
    return-void
.end method

.method public unblockAllUnrestrictedAlarms()V
    .locals 0

    .line 393
    return-void
.end method

.method public updateAlarmsForUid(I)V
    .locals 0
    .param p1, "uid"    # I

    .line 386
    return-void
.end method

.method public updateAllAlarms()V
    .locals 0

    .line 380
    return-void
.end method

.method public updateAllJobs()V
    .locals 0

    .line 352
    return-void
.end method

.method public updateJobsForUid(IZ)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "isNowActive"    # Z

    .line 359
    return-void
.end method

.method public updateJobsForUidPackage(ILjava/lang/String;Z)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "isNowActive"    # Z

    .line 366
    return-void
.end method
