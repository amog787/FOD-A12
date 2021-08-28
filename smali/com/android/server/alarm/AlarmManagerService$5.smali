.class Lcom/android/server/alarm/AlarmManagerService$5;
.super Landroid/app/IAlarmManager$Stub;
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

    .line 2437
    iput-object p1, p0, Lcom/android/server/alarm/AlarmManagerService$5;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-direct {p0}, Landroid/app/IAlarmManager$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public canScheduleExactAlarms(Ljava/lang/String;)Z
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;

    .line 2581
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$5;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {v0}, Lcom/android/server/alarm/AlarmManagerService;->access$000(Lcom/android/server/alarm/AlarmManagerService;)Lcom/android/server/alarm/AlarmManagerService$Injector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getCallingUid()I

    move-result v0

    .line 2582
    .local v0, "callingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 2583
    .local v1, "userId":I
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService$5;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {v2}, Lcom/android/server/alarm/AlarmManagerService;->access$1200(Lcom/android/server/alarm/AlarmManagerService;)Landroid/content/pm/PackageManagerInternal;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3, v1}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;II)I

    move-result v2

    .line 2584
    .local v2, "packageUid":I
    if-ne v0, v2, :cond_3

    .line 2588
    invoke-static {p1, v1}, Lcom/android/server/alarm/AlarmManagerService;->access$600(Ljava/lang/String;I)Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_0

    .line 2589
    return v5

    .line 2591
    :cond_0
    iget-object v4, p0, Lcom/android/server/alarm/AlarmManagerService$5;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {v4, v2}, Lcom/android/server/alarm/AlarmManagerService;->isExemptFromExactAlarmPermission(I)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/server/alarm/AlarmManagerService$5;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 2592
    invoke-virtual {v4, p1, v2}, Lcom/android/server/alarm/AlarmManagerService;->hasScheduleExactAlarmInternal(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    move v3, v5

    .line 2591
    :cond_2
    return v3

    .line 2585
    :cond_3
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " cannot query canScheduleExactAlarms for package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public currentNetworkTimeMillis()J
    .locals 5

    .line 2659
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$5;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {v0}, Lcom/android/server/alarm/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/util/NtpTrustedTime;->getInstance(Landroid/content/Context;)Landroid/util/NtpTrustedTime;

    move-result-object v0

    .line 2660
    .local v0, "time":Landroid/util/NtpTrustedTime;
    invoke-virtual {v0}, Landroid/util/NtpTrustedTime;->getCachedTimeResult()Landroid/util/NtpTrustedTime$TimeResult;

    move-result-object v1

    .line 2661
    .local v1, "ntpResult":Landroid/util/NtpTrustedTime$TimeResult;
    if-eqz v1, :cond_0

    .line 2662
    invoke-virtual {v1}, Landroid/util/NtpTrustedTime$TimeResult;->currentTimeMillis()J

    move-result-wide v2

    return-wide v2

    .line 2664
    :cond_0
    new-instance v2, Landroid/os/ParcelableException;

    new-instance v3, Ljava/time/DateTimeException;

    const-string v4, "Missing NTP fix"

    invoke-direct {v3, v4}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 2677
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$5;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {v0}, Lcom/android/server/alarm/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "AlarmManager"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/jobs/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2679
    :cond_0
    array-length v0, p3

    if-lez v0, :cond_1

    const/4 v0, 0x0

    aget-object v0, p3, v0

    const-string v1, "--proto"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2680
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$5;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/alarm/AlarmManagerService;->dumpProto(Ljava/io/FileDescriptor;)V

    goto :goto_0

    .line 2682
    :cond_1
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$5;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    new-instance v1, Landroid/util/IndentingPrintWriter;

    const-string v2, "  "

    invoke-direct {v1, p2, v2}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/server/alarm/AlarmManagerService;->dumpImpl(Landroid/util/IndentingPrintWriter;)V

    .line 2684
    :goto_0
    return-void
.end method

.method public getConfigVersion()I
    .locals 3

    .line 2670
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$5;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {v0}, Lcom/android/server/alarm/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.DUMP"

    const-string v2, "getConfigVersion"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2672
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$5;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    invoke-virtual {v0}, Lcom/android/server/alarm/AlarmManagerService$Constants;->getVersion()I

    move-result v0

    return v0
.end method

.method public getNextAlarmClock(I)Landroid/app/AlarmManager$AlarmClockInfo;
    .locals 9
    .param p1, "userId"    # I

    .line 2651
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$5;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {v0}, Lcom/android/server/alarm/AlarmManagerService;->access$1400(Lcom/android/server/alarm/AlarmManagerService;)Landroid/app/ActivityManagerInternal;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 2652
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 2651
    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "getNextAlarmClock"

    const/4 v8, 0x0

    move v4, p1

    invoke-virtual/range {v1 .. v8}, Landroid/app/ActivityManagerInternal;->handleIncomingUser(IIIZILjava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 2654
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$5;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/alarm/AlarmManagerService;->getNextAlarmClockImpl(I)Landroid/app/AlarmManager$AlarmClockInfo;

    move-result-object v0

    return-object v0
.end method

.method public getNextWakeFromIdleTime()J
    .locals 2

    .line 2646
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$5;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {v0}, Lcom/android/server/alarm/AlarmManagerService;->getNextWakeFromIdleTimeImpl()J

    move-result-wide v0

    return-wide v0
.end method

.method public hasScheduleExactAlarm(Ljava/lang/String;I)Z
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 2597
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$5;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {v0}, Lcom/android/server/alarm/AlarmManagerService;->access$000(Lcom/android/server/alarm/AlarmManagerService;)Lcom/android/server/alarm/AlarmManagerService$Injector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getCallingUid()I

    move-result v0

    .line 2598
    .local v0, "callingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    if-eq v1, p2, :cond_0

    .line 2599
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService$5;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {v1}, Lcom/android/server/alarm/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    const-string v3, "hasScheduleExactAlarm"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2602
    :cond_0
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService$5;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {v1}, Lcom/android/server/alarm/AlarmManagerService;->access$1200(Lcom/android/server/alarm/AlarmManagerService;)Landroid/content/pm/PackageManagerInternal;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, p2}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;II)I

    move-result v1

    .line 2603
    .local v1, "uid":I
    if-eq v0, v1, :cond_2

    invoke-static {v0}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 2604
    :cond_1
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " cannot query hasScheduleExactAlarm for uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2607
    :cond_2
    :goto_0
    if-lez v1, :cond_3

    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService$5;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {v2, p1, v1}, Lcom/android/server/alarm/AlarmManagerService;->hasScheduleExactAlarmInternal(Ljava/lang/String;I)Z

    move-result v2

    :cond_3
    return v2
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 8
    .param p1, "in"    # Ljava/io/FileDescriptor;
    .param p2, "out"    # Ljava/io/FileDescriptor;
    .param p3, "err"    # Ljava/io/FileDescriptor;
    .param p4, "args"    # [Ljava/lang/String;
    .param p5, "callback"    # Landroid/os/ShellCallback;
    .param p6, "resultReceiver"    # Landroid/os/ResultReceiver;

    .line 2690
    new-instance v0, Lcom/android/server/alarm/AlarmManagerService$ShellCmd;

    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService$5;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/alarm/AlarmManagerService$ShellCmd;-><init>(Lcom/android/server/alarm/AlarmManagerService;Lcom/android/server/alarm/AlarmManagerService$1;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/alarm/AlarmManagerService$ShellCmd;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 2691
    return-void
.end method

.method public remove(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)V
    .locals 3
    .param p1, "operation"    # Landroid/app/PendingIntent;
    .param p2, "listener"    # Landroid/app/IAlarmListener;

    .line 2635
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 2636
    const-string v0, "AlarmManager"

    const-string/jumbo v1, "remove() with no intent or listener"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2637
    return-void

    .line 2639
    :cond_0
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$5;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2640
    :try_start_0
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService$5;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, p2, v2}, Lcom/android/server/alarm/AlarmManagerService;->removeLocked(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;I)V

    .line 2641
    monitor-exit v0

    .line 2642
    return-void

    .line 2641
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public set(Ljava/lang/String;IJJJILandroid/app/PendingIntent;Landroid/app/IAlarmListener;Ljava/lang/String;Landroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;)V
    .locals 31
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "triggerAtTime"    # J
    .param p5, "windowLength"    # J
    .param p7, "interval"    # J
    .param p9, "flags"    # I
    .param p10, "operation"    # Landroid/app/PendingIntent;
    .param p11, "directReceiver"    # Landroid/app/IAlarmListener;
    .param p12, "listenerTag"    # Ljava/lang/String;
    .param p13, "workSource"    # Landroid/os/WorkSource;
    .param p14, "alarmClock"    # Landroid/app/AlarmManager$AlarmClockInfo;

    .line 2443
    move-object/from16 v0, p0

    move-object/from16 v15, p1

    iget-object v1, v0, Lcom/android/server/alarm/AlarmManagerService$5;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {v1}, Lcom/android/server/alarm/AlarmManagerService;->access$000(Lcom/android/server/alarm/AlarmManagerService;)Lcom/android/server/alarm/AlarmManagerService$Injector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getCallingUid()I

    move-result v14

    .line 2444
    .local v14, "callingUid":I
    invoke-static {v14}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v13

    .line 2448
    .local v13, "callingUserId":I
    iget-object v1, v0, Lcom/android/server/alarm/AlarmManagerService$5;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {v1}, Lcom/android/server/alarm/AlarmManagerService;->access$1200(Lcom/android/server/alarm/AlarmManagerService;)Landroid/content/pm/PackageManagerInternal;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v15, v2, v13}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;II)I

    move-result v1

    if-ne v14, v1, :cond_19

    .line 2455
    const-wide/16 v3, 0x0

    cmp-long v1, p7, v3

    if-eqz v1, :cond_1

    if-nez p11, :cond_0

    goto :goto_0

    .line 2456
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Repeating alarms cannot use AlarmReceivers"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2459
    :cond_1
    :goto_0
    if-eqz p13, :cond_2

    .line 2460
    iget-object v1, v0, Lcom/android/server/alarm/AlarmManagerService$5;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {v1}, Lcom/android/server/alarm/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 2462
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    .line 2460
    const-string v6, "android.permission.UPDATE_DEVICE_STATS"

    const-string v7, "AlarmManager.set"

    invoke-virtual {v1, v6, v5, v14, v7}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 2465
    :cond_2
    and-int/lit8 v1, p9, 0x10

    if-eqz v1, :cond_4

    .line 2468
    const/16 v1, 0x3e8

    if-eq v14, v1, :cond_3

    .line 2470
    and-int/lit8 v1, p9, -0x11

    move-wide/from16 v5, p5

    .end local p9    # "flags":I
    .local v1, "flags":I
    goto :goto_1

    .line 2473
    .end local v1    # "flags":I
    .restart local p9    # "flags":I
    :cond_3
    const-wide/16 v5, 0x0

    move/from16 v1, p9

    .end local p5    # "windowLength":J
    .local v5, "windowLength":J
    goto :goto_1

    .line 2465
    .end local v5    # "windowLength":J
    .restart local p5    # "windowLength":J
    :cond_4
    move-wide/from16 v5, p5

    move/from16 v1, p9

    .line 2478
    .end local p5    # "windowLength":J
    .end local p9    # "flags":I
    .restart local v1    # "flags":I
    .restart local v5    # "windowLength":J
    :goto_1
    and-int/lit8 v1, v1, -0x2b

    .line 2483
    if-eqz p14, :cond_5

    .line 2484
    or-int/lit8 v1, v1, 0x2

    .line 2485
    const-wide/16 v5, 0x0

    move-wide/from16 v19, v5

    goto :goto_2

    .line 2491
    :cond_5
    if-nez p13, :cond_7

    invoke-static {v14}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v7

    if-nez v7, :cond_6

    iget-object v7, v0, Lcom/android/server/alarm/AlarmManagerService$5;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget v7, v7, Lcom/android/server/alarm/AlarmManagerService;->mSystemUiUid:I

    .line 2492
    invoke-static {v14, v7}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v7

    if-nez v7, :cond_6

    iget-object v7, v0, Lcom/android/server/alarm/AlarmManagerService$5;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 2493
    invoke-static {v7}, Lcom/android/server/alarm/AlarmManagerService;->access$1300(Lcom/android/server/alarm/AlarmManagerService;)Lcom/android/server/AppStateTrackerImpl;

    move-result-object v7

    if-eqz v7, :cond_7

    iget-object v7, v0, Lcom/android/server/alarm/AlarmManagerService$5;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 2494
    invoke-static {v7}, Lcom/android/server/alarm/AlarmManagerService;->access$1300(Lcom/android/server/alarm/AlarmManagerService;)Lcom/android/server/AppStateTrackerImpl;

    move-result-object v7

    invoke-virtual {v7, v14}, Lcom/android/server/AppStateTrackerImpl;->isUidPowerSaveUserExempt(I)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 2495
    :cond_6
    or-int/lit8 v1, v1, 0x8

    .line 2496
    and-int/lit8 v1, v1, -0x45

    move-wide/from16 v19, v5

    goto :goto_2

    .line 2499
    :cond_7
    move-wide/from16 v19, v5

    .end local v5    # "windowLength":J
    .local v19, "windowLength":J
    :goto_2
    and-int/lit8 v5, v1, 0x4

    const/4 v6, 0x1

    if-eqz v5, :cond_8

    move v5, v6

    goto :goto_3

    :cond_8
    move v5, v2

    :goto_3
    move/from16 v21, v5

    .line 2500
    .local v21, "allowWhileIdle":Z
    cmp-long v3, v19, v3

    if-nez v3, :cond_9

    move v3, v6

    goto :goto_4

    :cond_9
    move v3, v2

    :goto_4
    move/from16 v22, v3

    .line 2504
    .local v22, "exact":Z
    const/4 v3, 0x0

    .line 2505
    .local v3, "allowListed":Z
    const/4 v4, 0x0

    .line 2506
    .local v4, "changeDisabled":Z
    const/4 v5, 0x0

    .line 2507
    .local v5, "idleOptions":Landroid/os/Bundle;
    and-int/lit8 v7, v1, 0x40

    if-eqz v7, :cond_a

    .line 2508
    iget-object v2, v0, Lcom/android/server/alarm/AlarmManagerService$5;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {v2}, Lcom/android/server/alarm/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 2510
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    .line 2508
    const-string v7, "android.permission.SCHEDULE_PRIORITIZED_ALARM"

    const-string v8, "AlarmManager.setPrioritized"

    invoke-virtual {v2, v7, v6, v14, v8}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 2512
    and-int/lit8 v1, v1, -0x5

    move/from16 v23, v3

    move/from16 v24, v4

    move-object/from16 v25, v5

    goto/16 :goto_a

    .line 2514
    :cond_a
    if-nez v22, :cond_c

    if-eqz v21, :cond_b

    goto :goto_5

    :cond_b
    move/from16 v23, v3

    move/from16 v24, v4

    move-object/from16 v25, v5

    goto/16 :goto_a

    .line 2517
    :cond_c
    :goto_5
    invoke-static {v15, v13}, Lcom/android/server/alarm/AlarmManagerService;->access$600(Ljava/lang/String;I)Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_f

    .line 2518
    move/from16 v7, v22

    .line 2519
    .local v7, "needsPermission":Z
    if-nez v22, :cond_d

    move v2, v6

    .line 2520
    .local v2, "lowerQuota":Z
    :cond_d
    iget-object v6, v0, Lcom/android/server/alarm/AlarmManagerService$5;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    if-eqz v22, :cond_e

    iget-object v6, v6, Lcom/android/server/alarm/AlarmManagerService;->mOptsWithFgs:Landroid/app/BroadcastOptions;

    goto :goto_6

    :cond_e
    iget-object v6, v6, Lcom/android/server/alarm/AlarmManagerService;->mOptsWithoutFgs:Landroid/app/BroadcastOptions;

    :goto_6
    invoke-virtual {v6}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v6

    move-object v5, v6

    goto :goto_8

    .line 2522
    .end local v2    # "lowerQuota":Z
    .end local v7    # "needsPermission":Z
    :cond_f
    const/4 v2, 0x1

    .line 2523
    .end local v4    # "changeDisabled":Z
    .local v2, "changeDisabled":Z
    const/4 v7, 0x0

    .line 2524
    .restart local v7    # "needsPermission":Z
    move/from16 v4, v21

    .line 2525
    .local v4, "lowerQuota":Z
    if-eqz v21, :cond_10

    iget-object v6, v0, Lcom/android/server/alarm/AlarmManagerService$5;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v6, v6, Lcom/android/server/alarm/AlarmManagerService;->mOptsWithFgs:Landroid/app/BroadcastOptions;

    invoke-virtual {v6}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v6

    goto :goto_7

    :cond_10
    move-object v6, v8

    :goto_7
    move-object v5, v6

    move/from16 v30, v4

    move v4, v2

    move/from16 v2, v30

    .line 2527
    .local v2, "lowerQuota":Z
    .local v4, "changeDisabled":Z
    :goto_8
    if-eqz v7, :cond_14

    iget-object v6, v0, Lcom/android/server/alarm/AlarmManagerService$5;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {v6, v15, v14}, Lcom/android/server/alarm/AlarmManagerService;->hasScheduleExactAlarmInternal(Ljava/lang/String;I)Z

    move-result v6

    if-nez v6, :cond_14

    .line 2528
    iget-object v6, v0, Lcom/android/server/alarm/AlarmManagerService$5;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {v6, v14}, Lcom/android/server/alarm/AlarmManagerService;->isExemptFromExactAlarmPermission(I)Z

    move-result v6

    if-nez v6, :cond_12

    .line 2529
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Caller "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " needs to hold "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "android.permission.SCHEDULE_EXACT_ALARM"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " to set exact alarms."

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2532
    .local v6, "errorMessage":Ljava/lang/String;
    iget-object v9, v0, Lcom/android/server/alarm/AlarmManagerService$5;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v9, v9, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget-boolean v9, v9, Lcom/android/server/alarm/AlarmManagerService$Constants;->CRASH_NON_CLOCK_APPS:Z

    if-nez v9, :cond_11

    .line 2535
    const-string v9, "AlarmManager"

    invoke-static {v9, v6}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2537
    .end local v6    # "errorMessage":Ljava/lang/String;
    goto :goto_9

    .line 2533
    .restart local v6    # "errorMessage":Ljava/lang/String;
    :cond_11
    new-instance v8, Ljava/lang/SecurityException;

    invoke-direct {v8, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 2538
    .end local v6    # "errorMessage":Ljava/lang/String;
    :cond_12
    const/4 v3, 0x1

    .line 2550
    :goto_9
    if-eqz v21, :cond_13

    iget-object v6, v0, Lcom/android/server/alarm/AlarmManagerService$5;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v6, v6, Lcom/android/server/alarm/AlarmManagerService;->mOptsWithoutFgs:Landroid/app/BroadcastOptions;

    invoke-virtual {v6}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v8

    :cond_13
    move-object v5, v8

    .line 2551
    move/from16 v2, v21

    .line 2553
    :cond_14
    if-eqz v2, :cond_15

    .line 2554
    and-int/lit8 v1, v1, -0x5

    .line 2555
    or-int/lit8 v1, v1, 0x20

    move/from16 v23, v3

    move/from16 v24, v4

    move-object/from16 v25, v5

    goto :goto_a

    .line 2553
    :cond_15
    move/from16 v23, v3

    move/from16 v24, v4

    move-object/from16 v25, v5

    .line 2559
    .end local v2    # "lowerQuota":Z
    .end local v3    # "allowListed":Z
    .end local v4    # "changeDisabled":Z
    .end local v5    # "idleOptions":Landroid/os/Bundle;
    .end local v7    # "needsPermission":Z
    .local v23, "allowListed":Z
    .local v24, "changeDisabled":Z
    .local v25, "idleOptions":Landroid/os/Bundle;
    :goto_a
    if-eqz v22, :cond_18

    .line 2561
    or-int/lit8 v1, v1, 0x1

    .line 2563
    if-eqz v24, :cond_16

    .line 2564
    const/4 v2, 0x2

    move/from16 v26, v1

    move/from16 v27, v2

    .local v2, "exactAllowReason":I
    goto :goto_b

    .line 2565
    .end local v2    # "exactAllowReason":I
    :cond_16
    if-eqz v23, :cond_17

    .line 2566
    const/4 v2, 0x1

    move/from16 v26, v1

    move/from16 v27, v2

    .restart local v2    # "exactAllowReason":I
    goto :goto_b

    .line 2568
    .end local v2    # "exactAllowReason":I
    :cond_17
    const/4 v2, 0x0

    move/from16 v26, v1

    move/from16 v27, v2

    .restart local v2    # "exactAllowReason":I
    goto :goto_b

    .line 2571
    .end local v2    # "exactAllowReason":I
    :cond_18
    const/4 v2, -0x1

    move/from16 v26, v1

    move/from16 v27, v2

    .line 2574
    .end local v1    # "flags":I
    .local v26, "flags":I
    .local v27, "exactAllowReason":I
    :goto_b
    iget-object v1, v0, Lcom/android/server/alarm/AlarmManagerService$5;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    move/from16 v2, p2

    move-wide/from16 v3, p3

    move-wide/from16 v5, v19

    move-wide/from16 v7, p7

    move-object/from16 v9, p10

    move-object/from16 v10, p11

    move-object/from16 v11, p12

    move/from16 v12, v26

    move/from16 v28, v13

    .end local v13    # "callingUserId":I
    .local v28, "callingUserId":I
    move-object/from16 v13, p13

    move/from16 v29, v14

    .end local v14    # "callingUid":I
    .local v29, "callingUid":I
    move-object/from16 v14, p14

    move-object v0, v15

    move/from16 v15, v29

    move-object/from16 v16, p1

    move-object/from16 v17, v25

    move/from16 v18, v27

    invoke-virtual/range {v1 .. v18}, Lcom/android/server/alarm/AlarmManagerService;->setImpl(IJJJLandroid/app/PendingIntent;Landroid/app/IAlarmListener;Ljava/lang/String;ILandroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;ILjava/lang/String;Landroid/os/Bundle;I)V

    .line 2577
    return-void

    .line 2450
    .end local v19    # "windowLength":J
    .end local v21    # "allowWhileIdle":Z
    .end local v22    # "exact":Z
    .end local v23    # "allowListed":Z
    .end local v24    # "changeDisabled":Z
    .end local v25    # "idleOptions":Landroid/os/Bundle;
    .end local v26    # "flags":I
    .end local v27    # "exactAllowReason":I
    .end local v28    # "callingUserId":I
    .end local v29    # "callingUid":I
    .restart local v13    # "callingUserId":I
    .restart local v14    # "callingUid":I
    .restart local p5    # "windowLength":J
    .restart local p9    # "flags":I
    :cond_19
    move/from16 v29, v14

    move-object v0, v15

    .end local v14    # "callingUid":I
    .restart local v29    # "callingUid":I
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " does not belong to the calling uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v3, v29

    .end local v29    # "callingUid":I
    .local v3, "callingUid":I
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setTime(J)Z
    .locals 3
    .param p1, "millis"    # J

    .line 2612
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$5;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {v0}, Lcom/android/server/alarm/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.SET_TIME"

    const-string/jumbo v2, "setTime"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2616
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$5;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/alarm/AlarmManagerService;->setTimeImpl(J)Z

    move-result v0

    return v0
.end method

.method public setTimeZone(Ljava/lang/String;)V
    .locals 3
    .param p1, "tz"    # Ljava/lang/String;

    .line 2621
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$5;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {v0}, Lcom/android/server/alarm/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.SET_TIME_ZONE"

    const-string/jumbo v2, "setTimeZone"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2625
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2627
    .local v0, "oldId":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService$5;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {v2, p1}, Lcom/android/server/alarm/AlarmManagerService;->setTimeZoneImpl(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2629
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2630
    nop

    .line 2631
    return-void

    .line 2629
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2630
    throw v2
.end method
