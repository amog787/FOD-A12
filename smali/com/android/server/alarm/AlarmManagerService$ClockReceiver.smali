.class Lcom/android/server/alarm/AlarmManagerService$ClockReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/alarm/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ClockReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/alarm/AlarmManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/alarm/AlarmManagerService;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/alarm/AlarmManagerService;

    .line 4451
    iput-object p1, p0, Lcom/android/server/alarm/AlarmManagerService$ClockReceiver;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4452
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 4453
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4454
    invoke-virtual {p1}, Lcom/android/server/alarm/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 4455
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 4459
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4464
    const-string/jumbo v0, "persist.sys.timezone"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    .line 4465
    .local v0, "zone":Ljava/util/TimeZone;
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService$ClockReceiver;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {v1}, Lcom/android/server/alarm/AlarmManagerService;->access$000(Lcom/android/server/alarm/AlarmManagerService;)Lcom/android/server/alarm/AlarmManagerService$Injector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getCurrentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v1

    .line 4466
    .local v1, "gmtOffset":I
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService$ClockReceiver;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {v2}, Lcom/android/server/alarm/AlarmManagerService;->access$000(Lcom/android/server/alarm/AlarmManagerService;)Lcom/android/server/alarm/AlarmManagerService$Injector;

    move-result-object v2

    const v3, 0xea60

    div-int v3, v1, v3

    neg-int v3, v3

    invoke-virtual {v2, v3}, Lcom/android/server/alarm/AlarmManagerService$Injector;->setKernelTimezone(I)V

    .line 4467
    invoke-virtual {p0}, Lcom/android/server/alarm/AlarmManagerService$ClockReceiver;->scheduleDateChangedEvent()V

    .line 4469
    .end local v0    # "zone":Ljava/util/TimeZone;
    .end local v1    # "gmtOffset":I
    :cond_0
    return-void
.end method

.method public scheduleDateChangedEvent()V
    .locals 22

    .line 4496
    move-object/from16 v0, p0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 4497
    .local v1, "calendar":Ljava/util/Calendar;
    iget-object v2, v0, Lcom/android/server/alarm/AlarmManagerService$ClockReceiver;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {v2}, Lcom/android/server/alarm/AlarmManagerService;->access$000(Lcom/android/server/alarm/AlarmManagerService;)Lcom/android/server/alarm/AlarmManagerService$Injector;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getCurrentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 4498
    const/16 v2, 0xb

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 4499
    const/16 v2, 0xc

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 4500
    const/16 v2, 0xd

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 4501
    const/16 v2, 0xe

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 4502
    const/4 v2, 0x5

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->add(II)V

    .line 4504
    const/4 v2, 0x0

    .local v2, "workSource":Landroid/os/WorkSource;
    move-object/from16 v16, v2

    .line 4505
    iget-object v4, v0, Lcom/android/server/alarm/AlarmManagerService$ClockReceiver;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    iget-object v3, v0, Lcom/android/server/alarm/AlarmManagerService$ClockReceiver;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v12, v3, Lcom/android/server/alarm/AlarmManagerService;->mDateChangeSender:Landroid/app/PendingIntent;

    .line 4507
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v18

    .line 4505
    const/4 v5, 0x1

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v17, 0x0

    const-string v19, "android"

    const/16 v20, 0x0

    const/16 v21, 0x1

    invoke-virtual/range {v4 .. v21}, Lcom/android/server/alarm/AlarmManagerService;->setImpl(IJJJLandroid/app/PendingIntent;Landroid/app/IAlarmListener;Ljava/lang/String;ILandroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;ILjava/lang/String;Landroid/os/Bundle;I)V

    .line 4508
    return-void
.end method

.method public scheduleTimeTickEvent()V
    .locals 28

    .line 4472
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/android/server/alarm/AlarmManagerService$ClockReceiver;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {v0}, Lcom/android/server/alarm/AlarmManagerService;->access$000(Lcom/android/server/alarm/AlarmManagerService;)Lcom/android/server/alarm/AlarmManagerService$Injector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getCurrentTimeMillis()J

    move-result-wide v2

    .line 4473
    .local v2, "currentTime":J
    const-wide/32 v4, 0xea60

    div-long v6, v2, v4

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    mul-long/2addr v6, v4

    .line 4477
    .local v6, "nextTime":J
    sub-long v4, v6, v2

    .line 4479
    .local v4, "tickEventDelay":J
    const/16 v26, 0x0

    .line 4481
    .local v26, "workSource":Landroid/os/WorkSource;
    const/4 v0, 0x1

    .line 4482
    .local v0, "flags":I
    iget-object v8, v1, Lcom/android/server/alarm/AlarmManagerService$ClockReceiver;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v8, v8, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget-boolean v8, v8, Lcom/android/server/alarm/AlarmManagerService$Constants;->TIME_TICK_ALLOWED_WHILE_IDLE:Z

    if-eqz v8, :cond_0

    const/16 v8, 0x8

    goto :goto_0

    .line 4483
    :cond_0
    const/4 v8, 0x0

    :goto_0
    or-int v27, v0, v8

    .end local v0    # "flags":I
    .local v27, "flags":I
    move/from16 v19, v27

    .line 4485
    iget-object v0, v1, Lcom/android/server/alarm/AlarmManagerService$ClockReceiver;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    move-object v8, v0

    const/4 v9, 0x3

    invoke-static {v0}, Lcom/android/server/alarm/AlarmManagerService;->access$000(Lcom/android/server/alarm/AlarmManagerService;)Lcom/android/server/alarm/AlarmManagerService$Injector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getElapsedRealtime()J

    move-result-wide v10

    add-long/2addr v10, v4

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    const/16 v16, 0x0

    iget-object v0, v1, Lcom/android/server/alarm/AlarmManagerService$ClockReceiver;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/alarm/AlarmManagerService;->mTimeTickTrigger:Landroid/app/IAlarmListener;

    move-object/from16 v17, v0

    const-string v18, "TIME_TICK"

    const/16 v21, 0x0

    .line 4487
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v22

    const-string v23, "android"

    const/16 v24, 0x0

    const/16 v25, 0x1

    .line 4485
    move-object/from16 v20, v26

    invoke-virtual/range {v8 .. v25}, Lcom/android/server/alarm/AlarmManagerService;->setImpl(IJJJLandroid/app/PendingIntent;Landroid/app/IAlarmListener;Ljava/lang/String;ILandroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;ILjava/lang/String;Landroid/os/Bundle;I)V

    .line 4490
    iget-object v0, v1, Lcom/android/server/alarm/AlarmManagerService$ClockReceiver;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v8, v0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 4491
    :try_start_0
    iget-object v0, v1, Lcom/android/server/alarm/AlarmManagerService$ClockReceiver;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {v0, v2, v3}, Lcom/android/server/alarm/AlarmManagerService;->access$2902(Lcom/android/server/alarm/AlarmManagerService;J)J

    .line 4492
    monitor-exit v8

    .line 4493
    return-void

    .line 4492
    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
