.class Lcom/android/server/alarm/AlarmManagerService$8;
.super Lcom/android/server/AppStateTrackerImpl$Listener;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/alarm/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/alarm/AlarmManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/alarm/AlarmManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/alarm/AlarmManagerService;

    .line 4644
    iput-object p1, p0, Lcom/android/server/alarm/AlarmManagerService$8;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-direct {p0}, Lcom/android/server/AppStateTrackerImpl$Listener;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$updateAlarmsForUid$1$AlarmManagerService$8(ILcom/android/server/alarm/Alarm;)Z
    .locals 1
    .param p1, "uid"    # I
    .param p2, "a"    # Lcom/android/server/alarm/Alarm;

    .line 4665
    iget v0, p2, Lcom/android/server/alarm/Alarm;->creatorUid:I

    if-eq v0, p1, :cond_0

    .line 4666
    const/4 v0, 0x0

    return v0

    .line 4668
    :cond_0
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$8;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {v0, p2}, Lcom/android/server/alarm/AlarmManagerService;->access$3200(Lcom/android/server/alarm/AlarmManagerService;Lcom/android/server/alarm/Alarm;)Z

    move-result v0

    return v0
.end method

.method public synthetic lambda$updateAllAlarms$0$AlarmManagerService$8(Lcom/android/server/alarm/Alarm;)Z
    .locals 1
    .param p1, "a"    # Lcom/android/server/alarm/Alarm;

    .line 4654
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$8;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {v0, p1}, Lcom/android/server/alarm/AlarmManagerService;->access$3200(Lcom/android/server/alarm/AlarmManagerService;Lcom/android/server/alarm/Alarm;)Z

    move-result v0

    return v0
.end method

.method public removeAlarmsForUid(I)V
    .locals 2
    .param p1, "uid"    # I

    .line 4703
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$8;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4704
    :try_start_0
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService$8;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {v1, p1}, Lcom/android/server/alarm/AlarmManagerService;->removeForStoppedLocked(I)V

    .line 4705
    monitor-exit v0

    .line 4706
    return-void

    .line 4705
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public unblockAlarmsForUid(I)V
    .locals 3
    .param p1, "uid"    # I

    .line 4687
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$8;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4689
    :try_start_0
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService$8;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/android/server/alarm/AlarmManagerService;->sendPendingBackgroundAlarmsLocked(ILjava/lang/String;)V

    .line 4690
    monitor-exit v0

    .line 4691
    return-void

    .line 4690
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public unblockAlarmsForUidPackage(ILjava/lang/String;)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 4696
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$8;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4697
    :try_start_0
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService$8;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/alarm/AlarmManagerService;->sendPendingBackgroundAlarmsLocked(ILjava/lang/String;)V

    .line 4698
    monitor-exit v0

    .line 4699
    return-void

    .line 4698
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public unblockAllUnrestrictedAlarms()V
    .locals 2

    .line 4680
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$8;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4681
    :try_start_0
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService$8;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {v1}, Lcom/android/server/alarm/AlarmManagerService;->sendAllUnrestrictedPendingBackgroundAlarmsLocked()V

    .line 4682
    monitor-exit v0

    .line 4683
    return-void

    .line 4682
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public updateAlarmsForUid(I)V
    .locals 3
    .param p1, "uid"    # I

    .line 4663
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$8;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4664
    :try_start_0
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService$8;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v1, v1, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/AlarmStore;

    new-instance v2, Lcom/android/server/alarm/AlarmManagerService$8$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p1}, Lcom/android/server/alarm/AlarmManagerService$8$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/alarm/AlarmManagerService$8;I)V

    invoke-interface {v1, v2}, Lcom/android/server/alarm/AlarmStore;->updateAlarmDeliveries(Lcom/android/server/alarm/AlarmStore$AlarmDeliveryCalculator;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4670
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService$8;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {v1}, Lcom/android/server/alarm/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    .line 4672
    :cond_0
    monitor-exit v0

    .line 4673
    return-void

    .line 4672
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public updateAllAlarms()V
    .locals 3

    .line 4652
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$8;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4653
    :try_start_0
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService$8;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v1, v1, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/AlarmStore;

    new-instance v2, Lcom/android/server/alarm/AlarmManagerService$8$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/server/alarm/AlarmManagerService$8$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/alarm/AlarmManagerService$8;)V

    invoke-interface {v1, v2}, Lcom/android/server/alarm/AlarmStore;->updateAlarmDeliveries(Lcom/android/server/alarm/AlarmStore$AlarmDeliveryCalculator;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4655
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService$8;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {v1}, Lcom/android/server/alarm/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    .line 4657
    :cond_0
    monitor-exit v0

    .line 4658
    return-void

    .line 4657
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
