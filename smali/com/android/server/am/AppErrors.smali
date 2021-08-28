.class Lcom/android/server/am/AppErrors;
.super Ljava/lang/Object;
.source "AppErrors.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/AppErrors$BadProcessInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ActivityManager"


# instance fields
.field private mAppsNotReportingCrashes:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mBadProcessLock:Ljava/lang/Object;

.field private volatile mBadProcesses:Lcom/android/internal/app/ProcessMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/app/ProcessMap<",
            "Lcom/android/server/am/AppErrors$BadProcessInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mPackageWatchdog:Lcom/android/server/PackageWatchdog;

.field private final mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

.field private final mProcessCrashCounts:Lcom/android/internal/app/ProcessMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/app/ProcessMap<",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mProcessCrashShowDialogTimes:Lcom/android/internal/app/ProcessMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/app/ProcessMap<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/app/ProcessMap<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mProcessCrashTimesPersistent:Lcom/android/internal/app/ProcessMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/app/ProcessMap<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mService:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/PackageWatchdog;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p3, "watchdog"    # Lcom/android/server/PackageWatchdog;

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v0, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v0}, Lcom/android/internal/app/ProcessMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    .line 95
    new-instance v0, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v0}, Lcom/android/internal/app/ProcessMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppErrors;->mProcessCrashTimesPersistent:Lcom/android/internal/app/ProcessMap;

    .line 101
    new-instance v0, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v0}, Lcom/android/internal/app/ProcessMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppErrors;->mProcessCrashShowDialogTimes:Lcom/android/internal/app/ProcessMap;

    .line 108
    new-instance v0, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v0}, Lcom/android/internal/app/ProcessMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppErrors;->mProcessCrashCounts:Lcom/android/internal/app/ProcessMap;

    .line 129
    new-instance v0, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v0}, Lcom/android/internal/app/ProcessMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppErrors;->mBadProcesses:Lcom/android/internal/app/ProcessMap;

    .line 140
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppErrors;->mBadProcessLock:Ljava/lang/Object;

    .line 143
    invoke-virtual {p1}, Landroid/content/Context;->assertRuntimeOverlayThemable()V

    .line 144
    iput-object p2, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 145
    iget-object v0, p2, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    iput-object v0, p0, Lcom/android/server/am/AppErrors;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    .line 146
    iput-object p1, p0, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    .line 147
    iput-object p3, p0, Lcom/android/server/am/AppErrors;->mPackageWatchdog:Lcom/android/server/PackageWatchdog;

    .line 148
    return-void
.end method

.method private crashApplicationInner(Lcom/android/server/am/ProcessRecord;Landroid/app/ApplicationErrorReport$CrashInfo;II)V
    .locals 24
    .param p1, "r"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "crashInfo"    # Landroid/app/ApplicationErrorReport$CrashInfo;
    .param p3, "callingPid"    # I
    .param p4, "callingUid"    # I

    .line 564
    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 565
    .local v14, "timeMillis":J
    iget-object v10, v13, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionClassName:Ljava/lang/String;

    .line 566
    .local v10, "shortMsg":Ljava/lang/String;
    iget-object v0, v13, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionMessage:Ljava/lang/String;

    .line 567
    .local v0, "longMsg":Ljava/lang/String;
    iget-object v9, v13, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    .line 568
    .local v9, "stackTrace":Ljava/lang/String;
    if-eqz v10, :cond_0

    if-eqz v0, :cond_0

    .line 569
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v16, v0

    goto :goto_0

    .line 570
    :cond_0
    if-eqz v10, :cond_1

    .line 571
    move-object v0, v10

    move-object/from16 v16, v0

    goto :goto_0

    .line 570
    :cond_1
    move-object/from16 v16, v0

    .line 574
    .end local v0    # "longMsg":Ljava/lang/String;
    .local v16, "longMsg":Ljava/lang/String;
    :goto_0
    const/4 v0, 0x0

    if-eqz v12, :cond_3

    .line 575
    iget-object v1, v11, Lcom/android/server/am/AppErrors;->mPackageWatchdog:Lcom/android/server/PackageWatchdog;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getPackageListWithVersionCode()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/PackageWatchdog;->onPackageFailure(Ljava/util/List;I)V

    .line 578
    iget-object v1, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    if-eqz v13, :cond_2

    const-string v2, "Native crash"

    iget-object v3, v13, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionClassName:Ljava/lang/String;

    .line 579
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 580
    const/4 v2, 0x5

    goto :goto_1

    .line 581
    :cond_2
    const/4 v2, 0x4

    :goto_1
    const-string v3, "crash"

    .line 578
    invoke-virtual {v1, v12, v2, v0, v3}, Lcom/android/server/am/ProcessList;->noteAppKill(Lcom/android/server/am/ProcessRecord;IILjava/lang/String;)V

    .line 586
    :cond_3
    if-eqz v12, :cond_4

    .line 587
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/WindowProcessController;->computeRelaunchReason()I

    move-result v1

    goto :goto_2

    :cond_4
    move v1, v0

    :goto_2
    move v7, v1

    .line 589
    .local v7, "relaunchReason":I
    new-instance v1, Lcom/android/server/am/AppErrorResult;

    invoke-direct {v1}, Lcom/android/server/am/AppErrorResult;-><init>()V

    move-object v8, v1

    .line 591
    .local v8, "result":Lcom/android/server/am/AppErrorResult;
    iget-object v6, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v6

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_b

    .line 596
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object v4, v10

    move-object/from16 v5, v16

    move-object/from16 v17, v6

    move-object v6, v9

    move v13, v7

    move-object/from16 v18, v8

    .end local v7    # "relaunchReason":I
    .end local v8    # "result":Lcom/android/server/am/AppErrorResult;
    .local v13, "relaunchReason":I
    .local v18, "result":Lcom/android/server/am/AppErrorResult;
    move-wide v7, v14

    move-object/from16 v19, v9

    .end local v9    # "stackTrace":Ljava/lang/String;
    .local v19, "stackTrace":Ljava/lang/String;
    move/from16 v9, p3

    move-object/from16 v20, v10

    .end local v10    # "shortMsg":Ljava/lang/String;
    .local v20, "shortMsg":Ljava/lang/String;
    move/from16 v10, p4

    :try_start_1
    invoke-direct/range {v1 .. v10}, Lcom/android/server/am/AppErrors;->handleAppCrashInActivityController(Lcom/android/server/am/ProcessRecord;Landroid/app/ApplicationErrorReport$CrashInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JII)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_a

    if-eqz v1, :cond_5

    .line 598
    :try_start_2
    monitor-exit v17
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 636
    :catchall_0
    move-exception v0

    move-object/from16 v8, v18

    move/from16 v18, v13

    move-object/from16 v13, p2

    goto/16 :goto_d

    .line 603
    :cond_5
    const/4 v1, 0x2

    if-ne v13, v1, :cond_6

    .line 604
    :try_start_3
    monitor-exit v17
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 611
    :cond_6
    if-eqz v12, :cond_7

    :try_start_4
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getActiveInstrumentation()Lcom/android/server/am/ActiveInstrumentation;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 612
    monitor-exit v17
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 616
    :cond_7
    if-eqz v12, :cond_8

    .line 617
    :try_start_5
    iget-object v1, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    iget-object v2, v12, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v3, v12, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/BatteryStatsService;->noteProcessCrash(Ljava/lang/String;I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 620
    :cond_8
    :try_start_6
    new-instance v1, Lcom/android/server/am/AppErrorDialog$Data;

    invoke-direct {v1}, Lcom/android/server/am/AppErrorDialog$Data;-><init>()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_a

    move-object v7, v1

    .line 621
    .local v7, "data":Lcom/android/server/am/AppErrorDialog$Data;
    move-object/from16 v8, v18

    .end local v18    # "result":Lcom/android/server/am/AppErrorResult;
    .restart local v8    # "result":Lcom/android/server/am/AppErrorResult;
    :try_start_7
    iput-object v8, v7, Lcom/android/server/am/AppErrorDialog$Data;->result:Lcom/android/server/am/AppErrorResult;

    .line 622
    iput-object v12, v7, Lcom/android/server/am/AppErrorDialog$Data;->proc:Lcom/android/server/am/ProcessRecord;

    .line 626
    if-eqz v12, :cond_f

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, v20

    move-object/from16 v4, v16

    move-object/from16 v5, v19

    move-object v6, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/AppErrors;->makeAppCrashingLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/am/AppErrorDialog$Data;)Z

    move-result v1

    if-nez v1, :cond_9

    move/from16 v18, v13

    move-object/from16 v13, p2

    goto/16 :goto_c

    .line 630
    :cond_9
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 631
    .local v1, "msg":Landroid/os/Message;
    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->what:I

    .line 633
    iget v2, v7, Lcom/android/server/am/AppErrorDialog$Data;->taskId:I

    move v9, v2

    .line 634
    .local v9, "taskId":I
    iput-object v7, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 635
    iget-object v2, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 636
    nop

    .end local v1    # "msg":Landroid/os/Message;
    .end local v7    # "data":Lcom/android/server/am/AppErrorDialog$Data;
    monitor-exit v17
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_9

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 638
    invoke-virtual {v8}, Lcom/android/server/am/AppErrorResult;->get()I

    move-result v1

    .line 640
    .local v1, "res":I
    const/4 v7, 0x0

    .line 641
    .local v7, "appErrorIntent":Landroid/content/Intent;
    iget-object v2, v11, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    const/16 v3, 0x13c

    invoke-static {v2, v3, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    .line 642
    const/4 v2, 0x6

    if-eq v1, v2, :cond_b

    const/4 v2, 0x7

    if-ne v1, v2, :cond_a

    goto :goto_3

    :cond_a
    move v10, v1

    goto :goto_4

    .line 643
    :cond_b
    :goto_3
    const/4 v1, 0x1

    move v10, v1

    .line 645
    .end local v1    # "res":I
    .local v10, "res":I
    :goto_4
    packed-switch v10, :pswitch_data_0

    :pswitch_0
    move/from16 v18, v13

    move-object/from16 v13, p2

    .end local v13    # "relaunchReason":I
    .local v18, "relaunchReason":I
    goto/16 :goto_a

    .line 684
    .end local v18    # "relaunchReason":I
    .restart local v13    # "relaunchReason":I
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v7, v0

    .line 685
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "package:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v12, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 686
    const/high16 v0, 0x10000000

    invoke-virtual {v7, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 687
    move/from16 v18, v13

    move-object/from16 v13, p2

    goto/16 :goto_a

    .line 647
    :pswitch_2
    iget-object v1, v11, Lcom/android/server/am/AppErrors;->mBadProcessLock:Ljava/lang/Object;

    monitor-enter v1

    .line 648
    :try_start_8
    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/AppErrors;->stopReportingCrashesLBp(Lcom/android/server/am/ProcessRecord;)V

    .line 649
    monitor-exit v1

    .line 650
    move/from16 v18, v13

    move-object/from16 v13, p2

    goto/16 :goto_a

    .line 649
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v0

    .line 652
    :pswitch_3
    iget-object v6, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v6

    :try_start_9
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 653
    iget-object v0, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x4

    const-string v0, "crash"
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    move-object/from16 v2, p1

    move-object/from16 v17, v6

    move-object v6, v0

    :try_start_a
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ProcessList;->removeProcessLocked(Lcom/android/server/am/ProcessRecord;ZZILjava/lang/String;)Z

    .line 655
    monitor-exit v17
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 656
    const/4 v0, -0x1

    if-eq v9, v0, :cond_c

    .line 658
    :try_start_b
    iget-object v0, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 659
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    .line 658
    invoke-virtual {v0, v9, v1}, Lcom/android/server/am/ActivityManagerService;->startActivityFromRecents(ILandroid/os/Bundle;)I
    :try_end_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_b} :catch_0

    goto :goto_5

    .line 660
    :catch_0
    move-exception v0

    .line 663
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not restart taskId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 664
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :goto_5
    move/from16 v18, v13

    move-object/from16 v13, p2

    goto/16 :goto_a

    .line 656
    :cond_c
    move/from16 v18, v13

    move-object/from16 v13, p2

    goto/16 :goto_a

    .line 655
    :catchall_2
    move-exception v0

    move-object/from16 v17, v6

    :goto_6
    :try_start_c
    monitor-exit v17
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_3
    move-exception v0

    goto :goto_6

    .line 689
    :pswitch_4
    iget-object v1, v11, Lcom/android/server/am/AppErrors;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    monitor-enter v1

    :try_start_d
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    .line 690
    move/from16 v18, v13

    move-object/from16 v13, p2

    .end local v13    # "relaunchReason":I
    .restart local v18    # "relaunchReason":I
    :try_start_e
    invoke-virtual {v11, v12, v14, v15, v13}, Lcom/android/server/am/AppErrors;->createAppErrorIntentLOSP(Lcom/android/server/am/ProcessRecord;JLandroid/app/ApplicationErrorReport$CrashInfo;)Landroid/content/Intent;

    move-result-object v0

    move-object v7, v0

    .line 691
    monitor-exit v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    goto :goto_a

    :catchall_4
    move-exception v0

    goto :goto_7

    .end local v18    # "relaunchReason":I
    .restart local v13    # "relaunchReason":I
    :catchall_5
    move-exception v0

    move/from16 v18, v13

    move-object/from16 v13, p2

    .end local v13    # "relaunchReason":I
    .restart local v18    # "relaunchReason":I
    :goto_7
    :try_start_f
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v0

    .line 668
    .end local v18    # "relaunchReason":I
    .restart local v13    # "relaunchReason":I
    :pswitch_5
    move/from16 v18, v13

    move-object/from16 v13, p2

    .end local v13    # "relaunchReason":I
    .restart local v18    # "relaunchReason":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v21

    .line 671
    .local v21, "orig":J
    :try_start_10
    iget-object v1, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityTaskManagerInternal;->onHandleAppCrash(Lcom/android/server/wm/WindowProcessController;)V

    .line 672
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v1

    if-nez v1, :cond_d

    .line 673
    iget-object v6, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v6
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_8

    :try_start_11
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 674
    iget-object v1, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x4

    const-string v17, "crash"
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    move-object/from16 v2, p1

    move-object/from16 v23, v6

    move-object/from16 v6, v17

    :try_start_12
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ProcessList;->removeProcessLocked(Lcom/android/server/am/ProcessRecord;ZZILjava/lang/String;)Z

    .line 676
    monitor-exit v23
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_7

    :try_start_13
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 677
    iget-object v1, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->resumeTopActivities(Z)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_8

    goto :goto_9

    .line 676
    :catchall_6
    move-exception v0

    move-object/from16 v23, v6

    :goto_8
    :try_start_14
    monitor-exit v23
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_7

    :try_start_15
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .end local v7    # "appErrorIntent":Landroid/content/Intent;
    .end local v8    # "result":Lcom/android/server/am/AppErrorResult;
    .end local v9    # "taskId":I
    .end local v10    # "res":I
    .end local v14    # "timeMillis":J
    .end local v16    # "longMsg":Ljava/lang/String;
    .end local v18    # "relaunchReason":I
    .end local v19    # "stackTrace":Ljava/lang/String;
    .end local v20    # "shortMsg":Ljava/lang/String;
    .end local v21    # "orig":J
    .end local p0    # "this":Lcom/android/server/am/AppErrors;
    .end local p1    # "r":Lcom/android/server/am/ProcessRecord;
    .end local p2    # "crashInfo":Landroid/app/ApplicationErrorReport$CrashInfo;
    .end local p3    # "callingPid":I
    .end local p4    # "callingUid":I
    throw v0
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_8

    .restart local v7    # "appErrorIntent":Landroid/content/Intent;
    .restart local v8    # "result":Lcom/android/server/am/AppErrorResult;
    .restart local v9    # "taskId":I
    .restart local v10    # "res":I
    .restart local v14    # "timeMillis":J
    .restart local v16    # "longMsg":Ljava/lang/String;
    .restart local v18    # "relaunchReason":I
    .restart local v19    # "stackTrace":Ljava/lang/String;
    .restart local v20    # "shortMsg":Ljava/lang/String;
    .restart local v21    # "orig":J
    .restart local p0    # "this":Lcom/android/server/am/AppErrors;
    .restart local p1    # "r":Lcom/android/server/am/ProcessRecord;
    .restart local p2    # "crashInfo":Landroid/app/ApplicationErrorReport$CrashInfo;
    .restart local p3    # "callingPid":I
    .restart local p4    # "callingUid":I
    :catchall_7
    move-exception v0

    goto :goto_8

    .line 680
    :cond_d
    :goto_9
    invoke-static/range {v21 .. v22}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 681
    nop

    .line 682
    goto :goto_a

    .line 680
    :catchall_8
    move-exception v0

    invoke-static/range {v21 .. v22}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 681
    throw v0

    .line 695
    .end local v21    # "orig":J
    :goto_a
    if-eqz v7, :cond_e

    .line 697
    :try_start_16
    iget-object v0, v11, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/os/UserHandle;

    iget v2, v12, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v7, v1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_16
    .catch Landroid/content/ActivityNotFoundException; {:try_start_16 .. :try_end_16} :catch_1

    .line 700
    goto :goto_b

    .line 698
    :catch_1
    move-exception v0

    .line 699
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v1, "ActivityManager"

    const-string v2, "bug report receiver dissappeared"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 702
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :cond_e
    :goto_b
    return-void

    .line 626
    .end local v9    # "taskId":I
    .end local v10    # "res":I
    .end local v18    # "relaunchReason":I
    .local v7, "data":Lcom/android/server/am/AppErrorDialog$Data;
    .restart local v13    # "relaunchReason":I
    :cond_f
    move/from16 v18, v13

    move-object/from16 v13, p2

    .line 627
    .end local v13    # "relaunchReason":I
    .restart local v18    # "relaunchReason":I
    :goto_c
    :try_start_17
    monitor-exit v17
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_c

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 636
    .end local v7    # "data":Lcom/android/server/am/AppErrorDialog$Data;
    .end local v18    # "relaunchReason":I
    .restart local v13    # "relaunchReason":I
    :catchall_9
    move-exception v0

    move/from16 v18, v13

    move-object/from16 v13, p2

    .end local v13    # "relaunchReason":I
    .restart local v18    # "relaunchReason":I
    goto :goto_d

    .end local v8    # "result":Lcom/android/server/am/AppErrorResult;
    .restart local v13    # "relaunchReason":I
    .local v18, "result":Lcom/android/server/am/AppErrorResult;
    :catchall_a
    move-exception v0

    move-object/from16 v8, v18

    move/from16 v18, v13

    move-object/from16 v13, p2

    .end local v13    # "relaunchReason":I
    .restart local v8    # "result":Lcom/android/server/am/AppErrorResult;
    .local v18, "relaunchReason":I
    goto :goto_d

    .end local v18    # "relaunchReason":I
    .end local v19    # "stackTrace":Ljava/lang/String;
    .end local v20    # "shortMsg":Ljava/lang/String;
    .local v7, "relaunchReason":I
    .local v9, "stackTrace":Ljava/lang/String;
    .local v10, "shortMsg":Ljava/lang/String;
    :catchall_b
    move-exception v0

    move-object/from16 v17, v6

    move/from16 v18, v7

    move-object/from16 v19, v9

    move-object/from16 v20, v10

    .end local v7    # "relaunchReason":I
    .end local v9    # "stackTrace":Ljava/lang/String;
    .end local v10    # "shortMsg":Ljava/lang/String;
    .restart local v18    # "relaunchReason":I
    .restart local v19    # "stackTrace":Ljava/lang/String;
    .restart local v20    # "shortMsg":Ljava/lang/String;
    :goto_d
    :try_start_18
    monitor-exit v17
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_c

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_c
    move-exception v0

    goto :goto_d

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private createAppErrorReportLOSP(Lcom/android/server/am/ProcessRecord;JLandroid/app/ApplicationErrorReport$CrashInfo;)Landroid/app/ApplicationErrorReport;
    .locals 4
    .param p1, "r"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "timeMillis"    # J
    .param p4, "crashInfo"    # Landroid/app/ApplicationErrorReport$CrashInfo;

    .line 803
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    .line 804
    .local v0, "errState":Lcom/android/server/am/ProcessErrorStateRecord;
    invoke-virtual {v0}, Lcom/android/server/am/ProcessErrorStateRecord;->getErrorReportReceiver()Landroid/content/ComponentName;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 805
    return-object v2

    .line 808
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/am/ProcessErrorStateRecord;->isCrashing()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/android/server/am/ProcessErrorStateRecord;->isNotResponding()Z

    move-result v1

    if-nez v1, :cond_1

    .line 809
    invoke-virtual {v0}, Lcom/android/server/am/ProcessErrorStateRecord;->isForceCrashReport()Z

    move-result v1

    if-nez v1, :cond_1

    .line 810
    return-object v2

    .line 813
    :cond_1
    new-instance v1, Landroid/app/ApplicationErrorReport;

    invoke-direct {v1}, Landroid/app/ApplicationErrorReport;-><init>()V

    .line 814
    .local v1, "report":Landroid/app/ApplicationErrorReport;
    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v2, v1, Landroid/app/ApplicationErrorReport;->packageName:Ljava/lang/String;

    .line 815
    invoke-virtual {v0}, Lcom/android/server/am/ProcessErrorStateRecord;->getErrorReportReceiver()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/app/ApplicationErrorReport;->installerPackageName:Ljava/lang/String;

    .line 816
    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iput-object v2, v1, Landroid/app/ApplicationErrorReport;->processName:Ljava/lang/String;

    .line 817
    iput-wide p2, v1, Landroid/app/ApplicationErrorReport;->time:J

    .line 818
    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v3, 0x1

    and-int/2addr v2, v3

    if-eqz v2, :cond_2

    move v2, v3

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, v1, Landroid/app/ApplicationErrorReport;->systemApp:Z

    .line 820
    invoke-virtual {v0}, Lcom/android/server/am/ProcessErrorStateRecord;->isCrashing()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v0}, Lcom/android/server/am/ProcessErrorStateRecord;->isForceCrashReport()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    .line 823
    :cond_3
    invoke-virtual {v0}, Lcom/android/server/am/ProcessErrorStateRecord;->isNotResponding()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 824
    const/4 v2, 0x2

    iput v2, v1, Landroid/app/ApplicationErrorReport;->type:I

    .line 825
    new-instance v2, Landroid/app/ApplicationErrorReport$AnrInfo;

    invoke-direct {v2}, Landroid/app/ApplicationErrorReport$AnrInfo;-><init>()V

    iput-object v2, v1, Landroid/app/ApplicationErrorReport;->anrInfo:Landroid/app/ApplicationErrorReport$AnrInfo;

    .line 827
    iget-object v2, v1, Landroid/app/ApplicationErrorReport;->anrInfo:Landroid/app/ApplicationErrorReport$AnrInfo;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessErrorStateRecord;->getNotRespondingReport()Landroid/app/ActivityManager$ProcessErrorStateInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/app/ActivityManager$ProcessErrorStateInfo;->tag:Ljava/lang/String;

    iput-object v3, v2, Landroid/app/ApplicationErrorReport$AnrInfo;->activity:Ljava/lang/String;

    .line 828
    iget-object v2, v1, Landroid/app/ApplicationErrorReport;->anrInfo:Landroid/app/ApplicationErrorReport$AnrInfo;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessErrorStateRecord;->getNotRespondingReport()Landroid/app/ActivityManager$ProcessErrorStateInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/app/ActivityManager$ProcessErrorStateInfo;->shortMsg:Ljava/lang/String;

    iput-object v3, v2, Landroid/app/ApplicationErrorReport$AnrInfo;->cause:Ljava/lang/String;

    .line 829
    iget-object v2, v1, Landroid/app/ApplicationErrorReport;->anrInfo:Landroid/app/ApplicationErrorReport$AnrInfo;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessErrorStateRecord;->getNotRespondingReport()Landroid/app/ActivityManager$ProcessErrorStateInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/app/ActivityManager$ProcessErrorStateInfo;->longMsg:Ljava/lang/String;

    iput-object v3, v2, Landroid/app/ApplicationErrorReport$AnrInfo;->info:Ljava/lang/String;

    goto :goto_2

    .line 821
    :cond_4
    :goto_1
    iput v3, v1, Landroid/app/ApplicationErrorReport;->type:I

    .line 822
    iput-object p4, v1, Landroid/app/ApplicationErrorReport;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    .line 832
    :cond_5
    :goto_2
    return-object v1
.end method

.method private handleAppCrashInActivityController(Lcom/android/server/am/ProcessRecord;Landroid/app/ApplicationErrorReport$CrashInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JII)Z
    .locals 21
    .param p1, "r"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "crashInfo"    # Landroid/app/ApplicationErrorReport$CrashInfo;
    .param p3, "shortMsg"    # Ljava/lang/String;
    .param p4, "longMsg"    # Ljava/lang/String;
    .param p5, "stackTrace"    # Ljava/lang/String;
    .param p6, "timeMillis"    # J
    .param p8, "callingPid"    # I
    .param p9, "callingUid"    # I

    .line 710
    move-object/from16 v10, p1

    if-eqz v10, :cond_0

    iget-object v0, v10, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v3, v0

    .line 711
    .local v3, "name":Ljava/lang/String;
    if-eqz v10, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v0

    move v4, v0

    goto :goto_1

    :cond_1
    move/from16 v4, p8

    .line 712
    .local v4, "pid":I
    :goto_1
    if-eqz v10, :cond_2

    iget-object v0, v10, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move v9, v0

    goto :goto_2

    :cond_2
    move/from16 v9, p9

    .line 714
    .local v9, "uid":I
    :goto_2
    move-object/from16 v11, p0

    iget-object v0, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v12, v0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    move-object/from16 v15, p2

    iget-object v14, v15, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    new-instance v20, Lcom/android/server/am/AppErrors$$ExternalSyntheticLambda0;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v5, p1

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    invoke-direct/range {v0 .. v9}, Lcom/android/server/am/AppErrors$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/AppErrors;Landroid/app/ApplicationErrorReport$CrashInfo;Ljava/lang/String;ILcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    move-object v13, v3

    move-object v0, v14

    move v14, v4

    move-object/from16 v15, p3

    move-object/from16 v16, p4

    move-wide/from16 v17, p6

    move-object/from16 v19, v0

    invoke-virtual/range {v12 .. v20}, Lcom/android/server/wm/ActivityTaskManagerInternal;->handleAppCrashInActivityController(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/Runnable;)Z

    move-result v0

    return v0
.end method

.method private handleAppCrashLSPB(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/am/AppErrorDialog$Data;)Z
    .locals 27
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "shortMsg"    # Ljava/lang/String;
    .param p4, "longMsg"    # Ljava/lang/String;
    .param p5, "stackTrace"    # Ljava/lang/String;
    .param p6, "data"    # Lcom/android/server/am/AppErrorDialog$Data;

    .line 838
    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 839
    .local v9, "now":J
    iget-object v1, v0, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    .line 841
    invoke-virtual {v2}, Lcom/android/server/am/UserController;->getCurrentUserId()I

    move-result v2

    .line 839
    const-string v3, "anr_show_background"

    const/4 v11, 0x0

    invoke-static {v1, v3, v11, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v11

    :goto_0
    move v13, v1

    .line 845
    .local v13, "showBackground":Z
    iget-object v14, v7, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 846
    .local v14, "processName":Ljava/lang/String;
    iget v15, v7, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 847
    .local v15, "uid":I
    iget v6, v7, Lcom/android/server/am/ProcessRecord;->userId:I

    .line 848
    .local v6, "userId":I
    iget-boolean v5, v7, Lcom/android/server/am/ProcessRecord;->isolated:Z

    .line 849
    .local v5, "isolated":Z
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v16

    .line 850
    .local v16, "persistent":Z
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v4

    .line 851
    .local v4, "proc":Lcom/android/server/wm/WindowProcessController;
    iget-object v2, v7, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    .line 853
    .local v2, "errState":Lcom/android/server/am/ProcessErrorStateRecord;
    iget-boolean v1, v7, Lcom/android/server/am/ProcessRecord;->isolated:Z

    if-nez v1, :cond_1

    .line 854
    iget-object v1, v0, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v1, v14, v15}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 855
    .local v1, "crashTime":Ljava/lang/Long;
    iget-object v3, v0, Lcom/android/server/am/AppErrors;->mProcessCrashTimesPersistent:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v3, v14, v15}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    move-object/from16 v17, v1

    move-object/from16 v18, v3

    .local v3, "crashTimePersistent":Ljava/lang/Long;
    goto :goto_1

    .line 857
    .end local v1    # "crashTime":Ljava/lang/Long;
    .end local v3    # "crashTimePersistent":Ljava/lang/Long;
    :cond_1
    const/4 v1, 0x0

    move-object v3, v1

    .restart local v3    # "crashTimePersistent":Ljava/lang/Long;
    move-object/from16 v17, v1

    move-object/from16 v18, v3

    .line 861
    .end local v3    # "crashTimePersistent":Ljava/lang/Long;
    .local v17, "crashTime":Ljava/lang/Long;
    .local v18, "crashTimePersistent":Ljava/lang/Long;
    :goto_1
    iget-object v1, v7, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    invoke-virtual {v1, v9, v10}, Lcom/android/server/am/ProcessServiceRecord;->incServiceCrashCountLocked(J)Z

    move-result v19

    .line 863
    .local v19, "tryAgain":Z
    if-eqz v17, :cond_2

    .line 864
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    sget v1, Lcom/android/server/am/ActivityManagerConstants;->MIN_CRASH_INTERVAL:I

    int-to-long v11, v1

    add-long v20, v20, v11

    cmp-long v1, v9, v20

    if-gez v1, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    move v11, v1

    .line 865
    .local v11, "quickCrash":Z
    if-nez v11, :cond_7

    invoke-direct {v0, v7, v9, v10}, Lcom/android/server/am/AppErrors;->isProcOverCrashLimitLBp(Lcom/android/server/am/ProcessRecord;J)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object/from16 v12, p2

    move-object/from16 v23, v2

    goto/16 :goto_3

    .line 913
    :cond_3
    iget-object v1, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    move-object/from16 v12, p2

    invoke-virtual {v1, v4, v12}, Lcom/android/server/wm/ActivityTaskManagerInternal;->finishTopCrashedActivities(Lcom/android/server/wm/WindowProcessController;Ljava/lang/String;)I

    move-result v1

    .line 915
    .local v1, "affectedTaskId":I
    if-eqz v8, :cond_4

    .line 916
    iput v1, v8, Lcom/android/server/am/AppErrorDialog$Data;->taskId:I

    .line 918
    :cond_4
    if-eqz v8, :cond_6

    if-eqz v18, :cond_6

    .line 919
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    sget v3, Lcom/android/server/am/ActivityManagerConstants;->MIN_CRASH_INTERVAL:I

    move/from16 v22, v1

    move-object/from16 v23, v2

    .end local v1    # "affectedTaskId":I
    .end local v2    # "errState":Lcom/android/server/am/ProcessErrorStateRecord;
    .local v22, "affectedTaskId":I
    .local v23, "errState":Lcom/android/server/am/ProcessErrorStateRecord;
    int-to-long v1, v3

    add-long v20, v20, v1

    cmp-long v1, v9, v20

    if-gez v1, :cond_5

    .line 920
    const/4 v1, 0x1

    iput-boolean v1, v8, Lcom/android/server/am/AppErrorDialog$Data;->repeating:Z

    move/from16 v24, v5

    move-wide/from16 v25, v9

    move/from16 v20, v11

    move/from16 v21, v15

    move-object/from16 v11, v23

    move-object/from16 v23, v4

    move v9, v6

    goto/16 :goto_7

    .line 919
    :cond_5
    move/from16 v24, v5

    move-wide/from16 v25, v9

    move/from16 v20, v11

    move/from16 v21, v15

    move-object/from16 v11, v23

    move-object/from16 v23, v4

    move v9, v6

    goto/16 :goto_7

    .line 918
    .end local v22    # "affectedTaskId":I
    .end local v23    # "errState":Lcom/android/server/am/ProcessErrorStateRecord;
    .restart local v1    # "affectedTaskId":I
    .restart local v2    # "errState":Lcom/android/server/am/ProcessErrorStateRecord;
    :cond_6
    move/from16 v22, v1

    move-object/from16 v23, v2

    .end local v1    # "affectedTaskId":I
    .end local v2    # "errState":Lcom/android/server/am/ProcessErrorStateRecord;
    .restart local v22    # "affectedTaskId":I
    .restart local v23    # "errState":Lcom/android/server/am/ProcessErrorStateRecord;
    move/from16 v24, v5

    move-wide/from16 v25, v9

    move/from16 v20, v11

    move/from16 v21, v15

    move-object/from16 v11, v23

    move-object/from16 v23, v4

    move v9, v6

    goto/16 :goto_7

    .line 865
    .end local v22    # "affectedTaskId":I
    .end local v23    # "errState":Lcom/android/server/am/ProcessErrorStateRecord;
    .restart local v2    # "errState":Lcom/android/server/am/ProcessErrorStateRecord;
    :cond_7
    move-object/from16 v12, p2

    move-object/from16 v23, v2

    .line 869
    .end local v2    # "errState":Lcom/android/server/am/ProcessErrorStateRecord;
    .restart local v23    # "errState":Lcom/android/server/am/ProcessErrorStateRecord;
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Process "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " has crashed too many times, killing! Reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 870
    if-eqz v11, :cond_8

    const-string v2, "crashed quickly"

    goto :goto_4

    :cond_8
    const-string/jumbo v2, "over process crash limit"

    :goto_4
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 869
    const-string v2, "ActivityManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    const/16 v1, 0x7550

    const/4 v2, 0x3

    new-array v3, v2, [Ljava/lang/Object;

    .line 872
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    const/16 v21, 0x0

    aput-object v20, v3, v21

    const/16 v20, 0x1

    aput-object v14, v3, v20

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    const/16 v21, 0x2

    aput-object v20, v3, v21

    .line 871
    invoke-static {v1, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 873
    iget-object v1, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v1, v4}, Lcom/android/server/wm/ActivityTaskManagerInternal;->onHandleAppCrash(Lcom/android/server/wm/WindowProcessController;)V

    .line 874
    if-nez v16, :cond_c

    .line 879
    const/16 v1, 0x753f

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v20, 0x0

    aput-object v3, v2, v20

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v20, 0x1

    aput-object v3, v2, v20

    aput-object v14, v2, v21

    invoke-static {v1, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 881
    if-nez v5, :cond_9

    .line 884
    iget v2, v7, Lcom/android/server/am/ProcessRecord;->uid:I

    new-instance v3, Lcom/android/server/am/AppErrors$BadProcessInfo;

    move-object v1, v3

    move v12, v2

    move/from16 v20, v11

    move/from16 v21, v15

    move-object/from16 v11, v23

    move-object v15, v3

    .end local v15    # "uid":I
    .end local v23    # "errState":Lcom/android/server/am/ProcessErrorStateRecord;
    .local v11, "errState":Lcom/android/server/am/ProcessErrorStateRecord;
    .local v20, "quickCrash":Z
    .local v21, "uid":I
    move-wide v2, v9

    move-object/from16 v23, v4

    .end local v4    # "proc":Lcom/android/server/wm/WindowProcessController;
    .local v23, "proc":Lcom/android/server/wm/WindowProcessController;
    move-object/from16 v4, p3

    move/from16 v24, v5

    .end local v5    # "isolated":Z
    .local v24, "isolated":Z
    move-object/from16 v5, p4

    move-wide/from16 v25, v9

    move v9, v6

    .end local v6    # "userId":I
    .local v9, "userId":I
    .local v25, "now":J
    move-object/from16 v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/AppErrors$BadProcessInfo;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v14, v12, v15}, Lcom/android/server/am/AppErrors;->markBadProcess(Ljava/lang/String;ILcom/android/server/am/AppErrors$BadProcessInfo;)V

    .line 886
    iget-object v1, v0, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    iget v2, v7, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v1, v14, v2}, Lcom/android/internal/app/ProcessMap;->remove(Ljava/lang/String;I)Ljava/lang/Object;

    .line 887
    iget-object v1, v0, Lcom/android/server/am/AppErrors;->mProcessCrashCounts:Lcom/android/internal/app/ProcessMap;

    iget v2, v7, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v1, v14, v2}, Lcom/android/internal/app/ProcessMap;->remove(Ljava/lang/String;I)Ljava/lang/Object;

    goto :goto_5

    .line 881
    .end local v20    # "quickCrash":Z
    .end local v21    # "uid":I
    .end local v24    # "isolated":Z
    .end local v25    # "now":J
    .restart local v4    # "proc":Lcom/android/server/wm/WindowProcessController;
    .restart local v5    # "isolated":Z
    .restart local v6    # "userId":I
    .local v9, "now":J
    .local v11, "quickCrash":Z
    .restart local v15    # "uid":I
    .local v23, "errState":Lcom/android/server/am/ProcessErrorStateRecord;
    :cond_9
    move/from16 v24, v5

    move-wide/from16 v25, v9

    move/from16 v20, v11

    move/from16 v21, v15

    move-object/from16 v11, v23

    move-object/from16 v23, v4

    move v9, v6

    .line 889
    .end local v4    # "proc":Lcom/android/server/wm/WindowProcessController;
    .end local v5    # "isolated":Z
    .end local v6    # "userId":I
    .end local v15    # "uid":I
    .local v9, "userId":I
    .local v11, "errState":Lcom/android/server/am/ProcessErrorStateRecord;
    .restart local v20    # "quickCrash":Z
    .restart local v21    # "uid":I
    .local v23, "proc":Lcom/android/server/wm/WindowProcessController;
    .restart local v24    # "isolated":Z
    .restart local v25    # "now":J
    :goto_5
    const/4 v1, 0x1

    invoke-virtual {v11, v1}, Lcom/android/server/am/ProcessErrorStateRecord;->setBad(Z)V

    .line 890
    invoke-virtual {v7, v1}, Lcom/android/server/am/ProcessRecord;->setRemoved(Z)V

    .line 891
    const-class v1, Lcom/android/server/usage/AppStandbyInternal;

    .line 892
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/android/server/usage/AppStandbyInternal;

    .line 893
    .local v10, "appStandbyInternal":Lcom/android/server/usage/AppStandbyInternal;
    if-eqz v10, :cond_b

    .line 894
    nop

    .line 898
    iget-object v1, v7, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_a

    iget-object v1, v7, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    goto :goto_6

    :cond_a
    move-object v1, v14

    :goto_6
    const/4 v2, 0x4

    .line 894
    invoke-interface {v10, v1, v9, v2}, Lcom/android/server/usage/AppStandbyInternal;->restrictApp(Ljava/lang/String;II)V

    .line 904
    :cond_b
    iget-object v1, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    const/4 v3, 0x0

    const/4 v5, 0x4

    const-string v6, "crash"

    move-object/from16 v2, p1

    move/from16 v4, v19

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ProcessList;->removeProcessLocked(Lcom/android/server/am/ProcessRecord;ZZILjava/lang/String;)Z

    .line 906
    iget-object v1, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityTaskManagerInternal;->resumeTopActivities(Z)V

    .line 907
    if-nez v13, :cond_d

    .line 908
    return v2

    .line 874
    .end local v10    # "appStandbyInternal":Lcom/android/server/usage/AppStandbyInternal;
    .end local v20    # "quickCrash":Z
    .end local v21    # "uid":I
    .end local v24    # "isolated":Z
    .end local v25    # "now":J
    .restart local v4    # "proc":Lcom/android/server/wm/WindowProcessController;
    .restart local v5    # "isolated":Z
    .restart local v6    # "userId":I
    .local v9, "now":J
    .local v11, "quickCrash":Z
    .restart local v15    # "uid":I
    .local v23, "errState":Lcom/android/server/am/ProcessErrorStateRecord;
    :cond_c
    move/from16 v24, v5

    move-wide/from16 v25, v9

    move/from16 v20, v11

    move/from16 v21, v15

    move-object/from16 v11, v23

    const/4 v2, 0x0

    move-object/from16 v23, v4

    move v9, v6

    .line 911
    .end local v4    # "proc":Lcom/android/server/wm/WindowProcessController;
    .end local v5    # "isolated":Z
    .end local v6    # "userId":I
    .end local v15    # "uid":I
    .local v9, "userId":I
    .local v11, "errState":Lcom/android/server/am/ProcessErrorStateRecord;
    .restart local v20    # "quickCrash":Z
    .restart local v21    # "uid":I
    .local v23, "proc":Lcom/android/server/wm/WindowProcessController;
    .restart local v24    # "isolated":Z
    .restart local v25    # "now":J
    :cond_d
    iget-object v1, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityTaskManagerInternal;->resumeTopActivities(Z)V

    .line 924
    :goto_7
    if-eqz v8, :cond_e

    if-eqz v19, :cond_e

    .line 925
    const/4 v1, 0x1

    iput-boolean v1, v8, Lcom/android/server/am/AppErrorDialog$Data;->isRestartableForService:Z

    .line 932
    :cond_e
    invoke-virtual/range {v23 .. v23}, Lcom/android/server/wm/WindowProcessController;->isHomeProcess()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-virtual/range {v23 .. v23}, Lcom/android/server/wm/WindowProcessController;->hasActivities()Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object v1, v7, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-nez v1, :cond_f

    .line 933
    invoke-virtual/range {v23 .. v23}, Lcom/android/server/wm/WindowProcessController;->clearPackagePreferredForHomeActivities()V

    .line 936
    :cond_f
    if-nez v24, :cond_10

    .line 939
    iget-object v1, v0, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move/from16 v3, v21

    .end local v21    # "uid":I
    .local v3, "uid":I
    invoke-virtual {v1, v14, v3, v2}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 940
    iget-object v1, v0, Lcom/android/server/am/AppErrors;->mProcessCrashTimesPersistent:Lcom/android/internal/app/ProcessMap;

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v14, v3, v2}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 941
    move-wide/from16 v1, v25

    .end local v25    # "now":J
    .local v1, "now":J
    invoke-direct {v0, v14, v3, v1, v2}, Lcom/android/server/am/AppErrors;->updateProcessCrashCountLBp(Ljava/lang/String;IJ)V

    goto :goto_8

    .line 936
    .end local v1    # "now":J
    .end local v3    # "uid":I
    .restart local v21    # "uid":I
    .restart local v25    # "now":J
    :cond_10
    move/from16 v3, v21

    move-wide/from16 v1, v25

    .line 944
    .end local v21    # "uid":I
    .end local v25    # "now":J
    .restart local v1    # "now":J
    .restart local v3    # "uid":I
    :goto_8
    invoke-virtual {v11}, Lcom/android/server/am/ProcessErrorStateRecord;->getCrashHandler()Ljava/lang/Runnable;

    move-result-object v4

    if-eqz v4, :cond_11

    .line 945
    iget-object v4, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    invoke-virtual {v11}, Lcom/android/server/am/ProcessErrorStateRecord;->getCrashHandler()Ljava/lang/Runnable;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/am/ActivityManagerService$MainHandler;->post(Ljava/lang/Runnable;)Z

    .line 947
    :cond_11
    const/4 v4, 0x1

    return v4
.end method

.method private isProcOverCrashLimitLBp(Lcom/android/server/am/ProcessRecord;J)Z
    .locals 5
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "now"    # J

    .line 963
    iget-object v0, p0, Lcom/android/server/am/AppErrors;->mProcessCrashCounts:Lcom/android/internal/app/ProcessMap;

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v2, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 964
    .local v0, "crashCount":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;"
    iget-boolean v1, p1, Lcom/android/server/am/ProcessRecord;->isolated:Z

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    .line 965
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    sget-wide v3, Lcom/android/server/am/ActivityManagerConstants;->PROCESS_CRASH_COUNT_RESET_INTERVAL:J

    add-long/2addr v1, v3

    cmp-long v1, p2, v1

    if-gez v1, :cond_0

    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    .line 966
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget v2, Lcom/android/server/am/ActivityManagerConstants;->PROCESS_CRASH_COUNT_LIMIT:I

    if-lt v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 964
    :goto_0
    return v1
.end method

.method private killAppImmediateLSP(Lcom/android/server/am/ProcessRecord;IILjava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "reasonCode"    # I
    .param p3, "subReason"    # I
    .param p4, "reason"    # Ljava/lang/String;
    .param p5, "killReason"    # Ljava/lang/String;

    .line 467
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    .line 468
    .local v0, "errState":Lcom/android/server/am/ProcessErrorStateRecord;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessErrorStateRecord;->setCrashing(Z)V

    .line 469
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/server/am/ProcessErrorStateRecord;->setCrashingReport(Landroid/app/ActivityManager$ProcessErrorStateInfo;)V

    .line 470
    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessErrorStateRecord;->setNotResponding(Z)V

    .line 471
    invoke-virtual {v0, v2}, Lcom/android/server/am/ProcessErrorStateRecord;->setNotRespondingReport(Landroid/app/ActivityManager$ProcessErrorStateInfo;)V

    .line 472
    iget-object v1, v0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v1

    .line 473
    .local v1, "pid":I
    if-lez v1, :cond_0

    sget v2, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq v1, v2, :cond_0

    .line 474
    iget-object v2, p0, Lcom/android/server/am/AppErrors;->mBadProcessLock:Ljava/lang/Object;

    monitor-enter v2

    .line 475
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p4

    :try_start_0
    invoke-direct/range {v3 .. v9}, Lcom/android/server/am/AppErrors;->handleAppCrashLSPB(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/am/AppErrorDialog$Data;)Z

    .line 477
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 478
    const/4 v2, 0x1

    invoke-virtual {p1, p5, p2, p3, v2}, Lcom/android/server/am/ProcessRecord;->killLocked(Ljava/lang/String;IIZ)V

    goto :goto_0

    .line 477
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 480
    :cond_0
    :goto_0
    return-void
.end method

.method private makeAppCrashingLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/am/AppErrorDialog$Data;)Z
    .locals 10
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "shortMsg"    # Ljava/lang/String;
    .param p3, "longMsg"    # Ljava/lang/String;
    .param p4, "stackTrace"    # Ljava/lang/String;
    .param p5, "data"    # Lcom/android/server/am/AppErrorDialog$Data;

    .line 742
    iget-object v0, p0, Lcom/android/server/am/AppErrors;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 743
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    .line 744
    .local v1, "errState":Lcom/android/server/am/ProcessErrorStateRecord;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/am/ProcessErrorStateRecord;->setCrashing(Z)V

    .line 745
    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v7, p2

    move-object v8, p3

    move-object v9, p4

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/am/AppErrors;->generateProcessError(Lcom/android/server/am/ProcessRecord;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/ActivityManager$ProcessErrorStateInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/ProcessErrorStateRecord;->setCrashingReport(Landroid/app/ActivityManager$ProcessErrorStateInfo;)V

    .line 748
    invoke-virtual {v1}, Lcom/android/server/am/ProcessErrorStateRecord;->startAppProblemLSP()V

    .line 749
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/WindowProcessController;->stopFreezingActivities()V

    .line 750
    iget-object v2, p0, Lcom/android/server/am/AppErrors;->mBadProcessLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 751
    :try_start_1
    const-string v5, "force-crash"

    move-object v3, p0

    move-object v4, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    move-object v9, p5

    invoke-direct/range {v3 .. v9}, Lcom/android/server/am/AppErrors;->handleAppCrashLSPB(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/am/AppErrorDialog$Data;)Z

    move-result v3

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return v3

    .line 753
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local p0    # "this":Lcom/android/server/am/AppErrors;
    .end local p1    # "app":Lcom/android/server/am/ProcessRecord;
    .end local p2    # "shortMsg":Ljava/lang/String;
    .end local p3    # "longMsg":Ljava/lang/String;
    .end local p4    # "stackTrace":Ljava/lang/String;
    .end local p5    # "data":Lcom/android/server/am/AppErrorDialog$Data;
    :try_start_4
    throw v3

    .line 754
    .end local v1    # "errState":Lcom/android/server/am/ProcessErrorStateRecord;
    .restart local p0    # "this":Lcom/android/server/am/AppErrors;
    .restart local p1    # "app":Lcom/android/server/am/ProcessRecord;
    .restart local p2    # "shortMsg":Ljava/lang/String;
    .restart local p3    # "longMsg":Ljava/lang/String;
    .restart local p4    # "stackTrace":Ljava/lang/String;
    .restart local p5    # "data":Lcom/android/server/am/AppErrorDialog$Data;
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v1
.end method

.method private resetProcessCrashMapLBp(Landroid/util/SparseArray;ZII)V
    .locals 4
    .param p2, "resetEntireUser"    # Z
    .param p3, "appId"    # I
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "*>;ZII)V"
        }
    .end annotation

    .line 413
    .local p1, "ba":Landroid/util/SparseArray;, "Landroid/util/SparseArray<*>;"
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_4

    .line 414
    const/4 v1, 0x0

    .line 415
    .local v1, "remove":Z
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 416
    .local v2, "entUid":I
    if-nez p2, :cond_1

    .line 417
    const/4 v3, -0x1

    if-ne p4, v3, :cond_0

    .line 418
    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    if-ne v3, p3, :cond_2

    .line 419
    const/4 v1, 0x1

    goto :goto_1

    .line 422
    :cond_0
    invoke-static {p4, p3}, Landroid/os/UserHandle;->getUid(II)I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 423
    const/4 v1, 0x1

    goto :goto_1

    .line 426
    :cond_1
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    if-ne v3, p4, :cond_2

    .line 427
    const/4 v1, 0x1

    .line 429
    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    .line 430
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->removeAt(I)V

    .line 413
    .end local v1    # "remove":Z
    .end local v2    # "entUid":I
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 433
    .end local v0    # "i":I
    :cond_4
    return-void
.end method

.method private stopReportingCrashesLBp(Lcom/android/server/am/ProcessRecord;)V
    .locals 2
    .param p1, "proc"    # Lcom/android/server/am/ProcessRecord;

    .line 1044
    iget-object v0, p0, Lcom/android/server/am/AppErrors;->mAppsNotReportingCrashes:Landroid/util/ArraySet;

    if-nez v0, :cond_0

    .line 1045
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppErrors;->mAppsNotReportingCrashes:Landroid/util/ArraySet;

    .line 1047
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/AppErrors;->mAppsNotReportingCrashes:Landroid/util/ArraySet;

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1048
    return-void
.end method

.method private updateProcessCrashCountLBp(Ljava/lang/String;IJ)V
    .locals 6
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "now"    # J

    .line 952
    iget-object v0, p0, Lcom/android/server/am/AppErrors;->mProcessCrashCounts:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 953
    .local v0, "count":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;"
    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sget-wide v4, Lcom/android/server/am/ActivityManagerConstants;->PROCESS_CRASH_COUNT_RESET_INTERVAL:J

    add-long/2addr v2, v4

    cmp-long v2, v2, p3

    if-gez v2, :cond_0

    goto :goto_0

    .line 956
    :cond_0
    new-instance v2, Landroid/util/Pair;

    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    iget-object v4, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/2addr v4, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v2

    goto :goto_1

    .line 954
    :cond_1
    :goto_0
    new-instance v2, Landroid/util/Pair;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v2

    .line 958
    :goto_1
    iget-object v1, p0, Lcom/android/server/am/AppErrors;->mProcessCrashCounts:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v1, p1, p2, v0}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 959
    return-void
.end method


# virtual methods
.method clearBadProcess(Ljava/lang/String;I)V
    .locals 3
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 363
    iget-object v0, p0, Lcom/android/server/am/AppErrors;->mBadProcessLock:Ljava/lang/Object;

    monitor-enter v0

    .line 364
    :try_start_0
    new-instance v1, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v1}, Lcom/android/internal/app/ProcessMap;-><init>()V

    .line 365
    .local v1, "badProcesses":Lcom/android/internal/app/ProcessMap;, "Lcom/android/internal/app/ProcessMap<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    iget-object v2, p0, Lcom/android/server/am/AppErrors;->mBadProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v1, v2}, Lcom/android/internal/app/ProcessMap;->putAll(Lcom/android/internal/app/ProcessMap;)V

    .line 366
    invoke-virtual {v1, p1, p2}, Lcom/android/internal/app/ProcessMap;->remove(Ljava/lang/String;I)Ljava/lang/Object;

    .line 367
    iput-object v1, p0, Lcom/android/server/am/AppErrors;->mBadProcesses:Lcom/android/internal/app/ProcessMap;

    .line 368
    .end local v1    # "badProcesses":Lcom/android/internal/app/ProcessMap;, "Lcom/android/internal/app/ProcessMap<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    monitor-exit v0

    .line 369
    return-void

    .line 368
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method crashApplication(Lcom/android/server/am/ProcessRecord;Landroid/app/ApplicationErrorReport$CrashInfo;)V
    .locals 5
    .param p1, "r"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "crashInfo"    # Landroid/app/ApplicationErrorReport$CrashInfo;

    .line 551
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 552
    .local v0, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 554
    .local v1, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 556
    .local v2, "origId":J
    :try_start_0
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/am/AppErrors;->crashApplicationInner(Lcom/android/server/am/ProcessRecord;Landroid/app/ApplicationErrorReport$CrashInfo;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 558
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 559
    nop

    .line 560
    return-void

    .line 558
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 559
    throw v4
.end method

.method createAppErrorIntentLOSP(Lcom/android/server/am/ProcessRecord;JLandroid/app/ApplicationErrorReport$CrashInfo;)Landroid/content/Intent;
    .locals 3
    .param p1, "r"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "timeMillis"    # J
    .param p4, "crashInfo"    # Landroid/app/ApplicationErrorReport$CrashInfo;

    .line 789
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/am/AppErrors;->createAppErrorReportLOSP(Lcom/android/server/am/ProcessRecord;JLandroid/app/ApplicationErrorReport$CrashInfo;)Landroid/app/ApplicationErrorReport;

    move-result-object v0

    .line 790
    .local v0, "report":Landroid/app/ApplicationErrorReport;
    if-nez v0, :cond_0

    .line 791
    const/4 v1, 0x0

    return-object v1

    .line 793
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.APP_ERROR"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 794
    .local v1, "result":Landroid/content/Intent;
    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessErrorStateRecord;->getErrorReportReceiver()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 795
    const-string v2, "android.intent.extra.BUG_REPORT"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 796
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 797
    return-object v1
.end method

.method dumpDebugLPr(Landroid/util/proto/ProtoOutputStream;JLjava/lang/String;)V
    .locals 28
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J
    .param p4, "dumpPackage"    # Ljava/lang/String;

    .line 165
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p4

    iget-object v4, v1, Lcom/android/server/am/AppErrors;->mBadProcesses:Lcom/android/internal/app/ProcessMap;

    .line 166
    .local v4, "badProcesses":Lcom/android/internal/app/ProcessMap;, "Lcom/android/internal/app/ProcessMap<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    iget-object v0, v1, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v4}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    return-void

    .line 170
    :cond_0
    invoke-virtual/range {p1 .. p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v5

    .line 171
    .local v5, "token":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 172
    .local v7, "now":J
    const-wide v9, 0x10300000001L

    invoke-virtual {v2, v9, v10, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 174
    invoke-virtual {v4}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 175
    invoke-virtual {v4}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    .line 176
    .local v0, "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;>;"
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v15

    .line 177
    .local v15, "processCount":I
    const/16 v16, 0x0

    move/from16 v11, v16

    .local v11, "ip":I
    :goto_0
    if-ge v11, v15, :cond_5

    .line 178
    const-wide v9, 0x20b00000003L

    invoke-virtual {v2, v9, v10}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v9

    .line 179
    .local v9, "btoken":J
    invoke-virtual {v0, v11}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 180
    .local v12, "pname":Ljava/lang/String;
    invoke-virtual {v0, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v13, v16

    check-cast v13, Landroid/util/SparseArray;

    .line 181
    .local v13, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    invoke-virtual {v13}, Landroid/util/SparseArray;->size()I

    move-result v14

    .line 183
    .local v14, "uidCount":I
    move-wide/from16 v19, v7

    const-wide v7, 0x10900000001L

    .end local v7    # "now":J
    .local v19, "now":J
    invoke-virtual {v2, v7, v8, v12}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 184
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    if-ge v7, v14, :cond_4

    .line 185
    invoke-virtual {v13, v7}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    .line 186
    .local v8, "puid":I
    move-object/from16 v16, v0

    .end local v0    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;>;"
    .local v16, "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;>;"
    iget-object v0, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getProcessNamesLOSP()Lcom/android/internal/app/ProcessMap;

    move-result-object v0

    invoke-virtual {v0, v12, v8}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    .line 187
    .local v0, "r":Lcom/android/server/am/ProcessRecord;
    if-eqz v3, :cond_2

    if-eqz v0, :cond_1

    .line 188
    move-object/from16 v21, v4

    .end local v4    # "badProcesses":Lcom/android/internal/app/ProcessMap;, "Lcom/android/internal/app/ProcessMap<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    .local v21, "badProcesses":Lcom/android/internal/app/ProcessMap;, "Lcom/android/internal/app/ProcessMap<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/server/am/PackageList;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 189
    move-wide/from16 v26, v5

    move-object/from16 v22, v12

    move-object/from16 v23, v13

    move/from16 v25, v14

    move/from16 v24, v15

    goto :goto_2

    .line 187
    .end local v21    # "badProcesses":Lcom/android/internal/app/ProcessMap;, "Lcom/android/internal/app/ProcessMap<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    .restart local v4    # "badProcesses":Lcom/android/internal/app/ProcessMap;, "Lcom/android/internal/app/ProcessMap<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    :cond_1
    move-object/from16 v21, v4

    .end local v4    # "badProcesses":Lcom/android/internal/app/ProcessMap;, "Lcom/android/internal/app/ProcessMap<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    .restart local v21    # "badProcesses":Lcom/android/internal/app/ProcessMap;, "Lcom/android/internal/app/ProcessMap<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    move-wide/from16 v26, v5

    move-object/from16 v22, v12

    move-object/from16 v23, v13

    move/from16 v25, v14

    move/from16 v24, v15

    goto :goto_2

    .end local v21    # "badProcesses":Lcom/android/internal/app/ProcessMap;, "Lcom/android/internal/app/ProcessMap<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    .restart local v4    # "badProcesses":Lcom/android/internal/app/ProcessMap;, "Lcom/android/internal/app/ProcessMap<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    :cond_2
    move-object/from16 v21, v4

    .line 191
    .end local v4    # "badProcesses":Lcom/android/internal/app/ProcessMap;, "Lcom/android/internal/app/ProcessMap<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    .restart local v21    # "badProcesses":Lcom/android/internal/app/ProcessMap;, "Lcom/android/internal/app/ProcessMap<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    :cond_3
    invoke-virtual {v13, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/AppErrors$BadProcessInfo;

    .line 192
    .local v4, "info":Lcom/android/server/am/AppErrors$BadProcessInfo;
    move-object/from16 v22, v12

    move-object/from16 v23, v13

    move/from16 v25, v14

    move/from16 v24, v15

    const-wide v12, 0x20b00000002L

    .end local v12    # "pname":Ljava/lang/String;
    .end local v13    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    .end local v14    # "uidCount":I
    .end local v15    # "processCount":I
    .local v22, "pname":Ljava/lang/String;
    .local v23, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    .local v24, "processCount":I
    .local v25, "uidCount":I
    invoke-virtual {v2, v12, v13}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v14

    .line 193
    .local v14, "etoken":J
    const-wide v12, 0x10500000001L

    invoke-virtual {v2, v12, v13, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 194
    iget-wide v12, v4, Lcom/android/server/am/AppErrors$BadProcessInfo;->time:J

    move-wide/from16 v26, v5

    const-wide v5, 0x10300000002L

    .end local v5    # "token":J
    .local v26, "token":J
    invoke-virtual {v2, v5, v6, v12, v13}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 195
    const-wide v12, 0x10900000003L

    iget-object v5, v4, Lcom/android/server/am/AppErrors$BadProcessInfo;->shortMsg:Ljava/lang/String;

    invoke-virtual {v2, v12, v13, v5}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 196
    const-wide v5, 0x10900000004L

    iget-object v12, v4, Lcom/android/server/am/AppErrors$BadProcessInfo;->longMsg:Ljava/lang/String;

    invoke-virtual {v2, v5, v6, v12}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 197
    const-wide v5, 0x10900000005L

    iget-object v12, v4, Lcom/android/server/am/AppErrors$BadProcessInfo;->stack:Ljava/lang/String;

    invoke-virtual {v2, v5, v6, v12}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 198
    invoke-virtual {v2, v14, v15}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 184
    .end local v0    # "r":Lcom/android/server/am/ProcessRecord;
    .end local v4    # "info":Lcom/android/server/am/AppErrors$BadProcessInfo;
    .end local v8    # "puid":I
    .end local v14    # "etoken":J
    :goto_2
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, v16

    move-object/from16 v4, v21

    move-object/from16 v12, v22

    move-object/from16 v13, v23

    move/from16 v15, v24

    move/from16 v14, v25

    move-wide/from16 v5, v26

    goto/16 :goto_1

    .end local v16    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;>;"
    .end local v21    # "badProcesses":Lcom/android/internal/app/ProcessMap;, "Lcom/android/internal/app/ProcessMap<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    .end local v22    # "pname":Ljava/lang/String;
    .end local v23    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    .end local v24    # "processCount":I
    .end local v25    # "uidCount":I
    .end local v26    # "token":J
    .local v0, "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;>;"
    .local v4, "badProcesses":Lcom/android/internal/app/ProcessMap;, "Lcom/android/internal/app/ProcessMap<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    .restart local v5    # "token":J
    .restart local v12    # "pname":Ljava/lang/String;
    .restart local v13    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    .local v14, "uidCount":I
    .restart local v15    # "processCount":I
    :cond_4
    move-object/from16 v16, v0

    move-object/from16 v21, v4

    move-wide/from16 v26, v5

    move-object/from16 v22, v12

    move-object/from16 v23, v13

    move/from16 v25, v14

    move/from16 v24, v15

    .line 200
    .end local v0    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;>;"
    .end local v4    # "badProcesses":Lcom/android/internal/app/ProcessMap;, "Lcom/android/internal/app/ProcessMap<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    .end local v5    # "token":J
    .end local v7    # "i":I
    .end local v12    # "pname":Ljava/lang/String;
    .end local v13    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    .end local v14    # "uidCount":I
    .end local v15    # "processCount":I
    .restart local v16    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;>;"
    .restart local v21    # "badProcesses":Lcom/android/internal/app/ProcessMap;, "Lcom/android/internal/app/ProcessMap<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    .restart local v22    # "pname":Ljava/lang/String;
    .restart local v23    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    .restart local v24    # "processCount":I
    .restart local v25    # "uidCount":I
    .restart local v26    # "token":J
    invoke-virtual {v2, v9, v10}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 177
    .end local v9    # "btoken":J
    .end local v22    # "pname":Ljava/lang/String;
    .end local v23    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    .end local v25    # "uidCount":I
    add-int/lit8 v11, v11, 0x1

    move-wide/from16 v7, v19

    goto/16 :goto_0

    .end local v16    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;>;"
    .end local v19    # "now":J
    .end local v21    # "badProcesses":Lcom/android/internal/app/ProcessMap;, "Lcom/android/internal/app/ProcessMap<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    .end local v24    # "processCount":I
    .end local v26    # "token":J
    .restart local v0    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;>;"
    .restart local v4    # "badProcesses":Lcom/android/internal/app/ProcessMap;, "Lcom/android/internal/app/ProcessMap<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    .restart local v5    # "token":J
    .local v7, "now":J
    .restart local v15    # "processCount":I
    :cond_5
    move-object/from16 v16, v0

    move-object/from16 v21, v4

    move-wide/from16 v26, v5

    move-wide/from16 v19, v7

    move/from16 v24, v15

    .end local v0    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;>;"
    .end local v4    # "badProcesses":Lcom/android/internal/app/ProcessMap;, "Lcom/android/internal/app/ProcessMap<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    .end local v5    # "token":J
    .end local v7    # "now":J
    .end local v15    # "processCount":I
    .restart local v16    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;>;"
    .restart local v19    # "now":J
    .restart local v21    # "badProcesses":Lcom/android/internal/app/ProcessMap;, "Lcom/android/internal/app/ProcessMap<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    .restart local v24    # "processCount":I
    .restart local v26    # "token":J
    goto :goto_3

    .line 174
    .end local v11    # "ip":I
    .end local v16    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;>;"
    .end local v19    # "now":J
    .end local v21    # "badProcesses":Lcom/android/internal/app/ProcessMap;, "Lcom/android/internal/app/ProcessMap<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    .end local v24    # "processCount":I
    .end local v26    # "token":J
    .restart local v4    # "badProcesses":Lcom/android/internal/app/ProcessMap;, "Lcom/android/internal/app/ProcessMap<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    .restart local v5    # "token":J
    .restart local v7    # "now":J
    :cond_6
    move-object/from16 v21, v4

    move-wide/from16 v26, v5

    move-wide/from16 v19, v7

    .line 204
    .end local v4    # "badProcesses":Lcom/android/internal/app/ProcessMap;, "Lcom/android/internal/app/ProcessMap<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    .end local v5    # "token":J
    .end local v7    # "now":J
    .restart local v19    # "now":J
    .restart local v21    # "badProcesses":Lcom/android/internal/app/ProcessMap;, "Lcom/android/internal/app/ProcessMap<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    .restart local v26    # "token":J
    :goto_3
    iget-object v4, v1, Lcom/android/server/am/AppErrors;->mBadProcessLock:Ljava/lang/Object;

    monitor-enter v4

    .line 205
    :try_start_0
    iget-object v0, v1, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_b

    .line 206
    :try_start_1
    iget-object v0, v1, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    .line 207
    .local v0, "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v5

    .line 208
    .local v5, "procCount":I
    const/4 v6, 0x0

    .local v6, "ip":I
    :goto_4
    if-ge v6, v5, :cond_a

    .line 209
    const-wide v7, 0x20b00000002L

    invoke-virtual {v2, v7, v8}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v9

    move-wide v7, v9

    .line 210
    .local v7, "ctoken":J
    invoke-virtual {v0, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 211
    .local v9, "pname":Ljava/lang/String;
    invoke-virtual {v0, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/SparseArray;

    .line 212
    .local v10, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Long;>;"
    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v11

    .line 214
    .local v11, "uidCount":I
    const-wide v12, 0x10900000001L

    invoke-virtual {v2, v12, v13, v9}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 215
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_5
    if-ge v14, v11, :cond_9

    .line 216
    invoke-virtual {v10, v14}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v15

    .line 217
    .local v15, "puid":I
    iget-object v12, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v12}, Lcom/android/server/am/ActivityManagerService;->getProcessNamesLOSP()Lcom/android/internal/app/ProcessMap;

    move-result-object v12

    invoke-virtual {v12, v9, v15}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/am/ProcessRecord;

    .line 218
    .local v12, "r":Lcom/android/server/am/ProcessRecord;
    if-eqz v3, :cond_8

    if-eqz v12, :cond_7

    .line 219
    invoke-virtual {v12}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v13

    invoke-virtual {v13, v3}, Lcom/android/server/am/PackageList;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_8

    .line 220
    move-object v13, v0

    move-object/from16 v16, v9

    move-object/from16 v24, v10

    const-wide v9, 0x10300000002L

    goto :goto_6

    .line 218
    :cond_7
    move-object v13, v0

    move-object/from16 v16, v9

    move-object/from16 v24, v10

    const-wide v9, 0x10300000002L

    goto :goto_6

    .line 222
    :cond_8
    move-object v13, v0

    const-wide v0, 0x20b00000002L

    .end local v0    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    .local v13, "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    invoke-virtual {v2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v17

    move-wide/from16 v22, v17

    .line 223
    .local v22, "etoken":J
    const-wide v0, 0x10500000001L

    invoke-virtual {v2, v0, v1, v15}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 224
    nop

    .line 225
    invoke-virtual {v10, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Long;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 224
    move-object/from16 v16, v9

    move-object/from16 v24, v10

    const-wide v9, 0x10300000002L

    .end local v9    # "pname":Ljava/lang/String;
    .end local v10    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Long;>;"
    .local v16, "pname":Ljava/lang/String;
    .local v24, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Long;>;"
    invoke-virtual {v2, v9, v10, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 226
    move-wide/from16 v0, v22

    .end local v22    # "etoken":J
    .local v0, "etoken":J
    invoke-virtual {v2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 215
    .end local v0    # "etoken":J
    .end local v12    # "r":Lcom/android/server/am/ProcessRecord;
    .end local v15    # "puid":I
    :goto_6
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v1, p0

    move-object v0, v13

    move-object/from16 v9, v16

    move-object/from16 v10, v24

    const-wide v12, 0x10900000001L

    goto :goto_5

    .end local v13    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    .end local v16    # "pname":Ljava/lang/String;
    .end local v24    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Long;>;"
    .local v0, "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    .restart local v9    # "pname":Ljava/lang/String;
    .restart local v10    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Long;>;"
    :cond_9
    move-object v13, v0

    move-object/from16 v16, v9

    move-object/from16 v24, v10

    const-wide v9, 0x10300000002L

    .line 228
    .end local v0    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    .end local v9    # "pname":Ljava/lang/String;
    .end local v10    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Long;>;"
    .end local v14    # "i":I
    .restart local v13    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    .restart local v16    # "pname":Ljava/lang/String;
    .restart local v24    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Long;>;"
    invoke-virtual {v2, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 208
    .end local v7    # "ctoken":J
    .end local v11    # "uidCount":I
    .end local v16    # "pname":Ljava/lang/String;
    .end local v24    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Long;>;"
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v1, p0

    move-object v0, v13

    goto/16 :goto_4

    .end local v13    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    .restart local v0    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    :cond_a
    move-object v13, v0

    .end local v0    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    .restart local v13    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    goto :goto_7

    .line 231
    .end local v5    # "procCount":I
    .end local v6    # "ip":I
    .end local v13    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    :catchall_0
    move-exception v0

    move-wide/from16 v5, v26

    goto :goto_8

    :cond_b
    :goto_7
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 233
    move-wide/from16 v5, v26

    .end local v26    # "token":J
    .local v5, "token":J
    invoke-virtual {v2, v5, v6}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 234
    return-void

    .line 231
    .end local v5    # "token":J
    .restart local v26    # "token":J
    :catchall_1
    move-exception v0

    move-wide/from16 v5, v26

    .end local v26    # "token":J
    .restart local v5    # "token":J
    :goto_8
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0

    :catchall_2
    move-exception v0

    goto :goto_8
.end method

.method dumpLPr(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;ZLjava/lang/String;)Z
    .locals 20
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "needSep"    # Z
    .param p4, "dumpPackage"    # Ljava/lang/String;

    .line 238
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 239
    .local v4, "now":J
    iget-object v6, v1, Lcom/android/server/am/AppErrors;->mBadProcessLock:Ljava/lang/Object;

    monitor-enter v6

    .line 240
    :try_start_0
    iget-object v0, v1, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    if-nez v0, :cond_7

    .line 241
    const/4 v0, 0x0

    .line 242
    .local v0, "printed":Z
    :try_start_1
    iget-object v7, v1, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v7}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v7

    .line 243
    .local v7, "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 244
    .local v8, "processCount":I
    const/4 v9, 0x0

    move v10, v9

    move/from16 v9, p3

    .end local p3    # "needSep":Z
    .local v9, "needSep":Z
    .local v10, "ip":I
    :goto_0
    if-ge v10, v8, :cond_6

    .line 245
    :try_start_2
    invoke-virtual {v7, v10}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 246
    .local v11, "pname":Ljava/lang/String;
    invoke-virtual {v7, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/SparseArray;

    .line 247
    .local v12, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Long;>;"
    invoke-virtual {v12}, Landroid/util/SparseArray;->size()I

    move-result v13

    .line 248
    .local v13, "uidCount":I
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_1
    if-ge v14, v13, :cond_5

    .line 249
    invoke-virtual {v12, v14}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v15

    .line 250
    .local v15, "puid":I
    move-object/from16 v16, v7

    .end local v7    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    .local v16, "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    iget-object v7, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v7}, Lcom/android/server/am/ActivityManagerService;->getProcessNamesLOSP()Lcom/android/internal/app/ProcessMap;

    move-result-object v7

    invoke-virtual {v7, v11, v15}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ProcessRecord;

    .line 251
    .local v7, "r":Lcom/android/server/am/ProcessRecord;
    if-eqz v3, :cond_1

    if-eqz v7, :cond_0

    .line 252
    move/from16 v17, v8

    .end local v8    # "processCount":I
    .local v17, "processCount":I
    invoke-virtual {v7}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v8

    invoke-virtual {v8, v3}, Lcom/android/server/am/PackageList;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 253
    goto :goto_3

    .line 251
    .end local v17    # "processCount":I
    .restart local v8    # "processCount":I
    :cond_0
    move/from16 v17, v8

    .end local v8    # "processCount":I
    .restart local v17    # "processCount":I
    goto :goto_3

    .end local v17    # "processCount":I
    .restart local v8    # "processCount":I
    :cond_1
    move/from16 v17, v8

    .line 255
    .end local v8    # "processCount":I
    .restart local v17    # "processCount":I
    :cond_2
    if-nez v0, :cond_4

    .line 256
    if-eqz v9, :cond_3

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 257
    :cond_3
    const/4 v8, 0x1

    .line 258
    .end local v9    # "needSep":Z
    .local v8, "needSep":Z
    :try_start_3
    const-string v9, "  Time since processes crashed:"

    invoke-virtual {v2, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 259
    const/4 v0, 0x1

    goto :goto_2

    .line 300
    .end local v0    # "printed":Z
    .end local v7    # "r":Lcom/android/server/am/ProcessRecord;
    .end local v10    # "ip":I
    .end local v11    # "pname":Ljava/lang/String;
    .end local v12    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Long;>;"
    .end local v13    # "uidCount":I
    .end local v14    # "i":I
    .end local v15    # "puid":I
    .end local v16    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    .end local v17    # "processCount":I
    :catchall_0
    move-exception v0

    move-wide/from16 v17, v4

    move v9, v8

    goto/16 :goto_f

    .line 255
    .end local v8    # "needSep":Z
    .restart local v0    # "printed":Z
    .restart local v7    # "r":Lcom/android/server/am/ProcessRecord;
    .restart local v9    # "needSep":Z
    .restart local v10    # "ip":I
    .restart local v11    # "pname":Ljava/lang/String;
    .restart local v12    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Long;>;"
    .restart local v13    # "uidCount":I
    .restart local v14    # "i":I
    .restart local v15    # "puid":I
    .restart local v16    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    .restart local v17    # "processCount":I
    :cond_4
    move v8, v9

    .line 261
    .end local v9    # "needSep":Z
    .restart local v8    # "needSep":Z
    :goto_2
    :try_start_4
    const-string v9, "    Process "

    invoke-virtual {v2, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 262
    const-string v9, " uid "

    invoke-virtual {v2, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2, v15}, Ljava/io/PrintWriter;->print(I)V

    .line 263
    const-string v9, ": last crashed "

    invoke-virtual {v2, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 264
    invoke-virtual {v12, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v18
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object/from16 p3, v7

    move v9, v8

    .end local v7    # "r":Lcom/android/server/am/ProcessRecord;
    .end local v8    # "needSep":Z
    .restart local v9    # "needSep":Z
    .local p3, "r":Lcom/android/server/am/ProcessRecord;
    sub-long v7, v4, v18

    :try_start_5
    invoke-static {v7, v8, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 265
    const-string v7, " ago"

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 248
    .end local v15    # "puid":I
    .end local p3    # "r":Lcom/android/server/am/ProcessRecord;
    :goto_3
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v7, v16

    move/from16 v8, v17

    goto :goto_1

    .line 300
    .end local v0    # "printed":Z
    .end local v9    # "needSep":Z
    .end local v10    # "ip":I
    .end local v11    # "pname":Ljava/lang/String;
    .end local v12    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Long;>;"
    .end local v13    # "uidCount":I
    .end local v14    # "i":I
    .end local v16    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    .end local v17    # "processCount":I
    .restart local v8    # "needSep":Z
    :catchall_1
    move-exception v0

    move v9, v8

    move-wide/from16 v17, v4

    .end local v8    # "needSep":Z
    .restart local v9    # "needSep":Z
    goto/16 :goto_f

    .line 248
    .restart local v0    # "printed":Z
    .local v7, "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    .local v8, "processCount":I
    .restart local v10    # "ip":I
    .restart local v11    # "pname":Ljava/lang/String;
    .restart local v12    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Long;>;"
    .restart local v13    # "uidCount":I
    .restart local v14    # "i":I
    :cond_5
    move-object/from16 v16, v7

    move/from16 v17, v8

    .line 244
    .end local v7    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    .end local v8    # "processCount":I
    .end local v11    # "pname":Ljava/lang/String;
    .end local v12    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Long;>;"
    .end local v13    # "uidCount":I
    .end local v14    # "i":I
    .restart local v16    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    .restart local v17    # "processCount":I
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .end local v16    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    .end local v17    # "processCount":I
    .restart local v7    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    .restart local v8    # "processCount":I
    :cond_6
    move-object/from16 v16, v7

    move/from16 v17, v8

    .end local v7    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    .end local v8    # "processCount":I
    .restart local v16    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    .restart local v17    # "processCount":I
    goto :goto_4

    .line 300
    .end local v0    # "printed":Z
    .end local v9    # "needSep":Z
    .end local v10    # "ip":I
    .end local v16    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    .end local v17    # "processCount":I
    .local p3, "needSep":Z
    :catchall_2
    move-exception v0

    move/from16 v9, p3

    move-wide/from16 v17, v4

    goto/16 :goto_f

    .line 240
    :cond_7
    move/from16 v9, p3

    .line 270
    .end local p3    # "needSep":Z
    .restart local v9    # "needSep":Z
    :goto_4
    :try_start_6
    iget-object v0, v1, Lcom/android/server/am/AppErrors;->mProcessCrashCounts:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    if-nez v0, :cond_f

    .line 271
    const/4 v0, 0x0

    .line 272
    .restart local v0    # "printed":Z
    :try_start_7
    iget-object v7, v1, Lcom/android/server/am/AppErrors;->mProcessCrashCounts:Lcom/android/internal/app/ProcessMap;

    .line 273
    invoke-virtual {v7}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v7

    .line 274
    .local v7, "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;>;>;"
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v8

    .line 275
    .restart local v8    # "processCount":I
    const/4 v10, 0x0

    .restart local v10    # "ip":I
    :goto_5
    if-ge v10, v8, :cond_e

    .line 276
    invoke-virtual {v7, v10}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 277
    .restart local v11    # "pname":Ljava/lang/String;
    invoke-virtual {v7, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/SparseArray;

    .line 278
    .local v12, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;>;"
    invoke-virtual {v12}, Landroid/util/SparseArray;->size()I

    move-result v13

    .line 279
    .restart local v13    # "uidCount":I
    const/4 v14, 0x0

    .restart local v14    # "i":I
    :goto_6
    if-ge v14, v13, :cond_d

    .line 280
    invoke-virtual {v12, v14}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v15

    .line 281
    .restart local v15    # "puid":I
    move-object/from16 p3, v7

    .end local v7    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;>;>;"
    .local p3, "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;>;>;"
    iget-object v7, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v7}, Lcom/android/server/am/ActivityManagerService;->getProcessNamesLOSP()Lcom/android/internal/app/ProcessMap;

    move-result-object v7

    invoke-virtual {v7, v11, v15}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ProcessRecord;

    .line 282
    .local v7, "r":Lcom/android/server/am/ProcessRecord;
    if-eqz v3, :cond_9

    if-eqz v7, :cond_8

    .line 283
    move/from16 v16, v8

    .end local v8    # "processCount":I
    .local v16, "processCount":I
    invoke-virtual {v7}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v8

    invoke-virtual {v8, v3}, Lcom/android/server/am/PackageList;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_a

    .line 284
    goto :goto_8

    .line 282
    .end local v16    # "processCount":I
    .restart local v8    # "processCount":I
    :cond_8
    move/from16 v16, v8

    .end local v8    # "processCount":I
    .restart local v16    # "processCount":I
    goto :goto_8

    .end local v16    # "processCount":I
    .restart local v8    # "processCount":I
    :cond_9
    move/from16 v16, v8

    .line 286
    .end local v8    # "processCount":I
    .restart local v16    # "processCount":I
    :cond_a
    if-nez v0, :cond_c

    .line 287
    if-eqz v9, :cond_b

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 288
    :cond_b
    const/4 v8, 0x1

    .line 289
    .end local v9    # "needSep":Z
    .local v8, "needSep":Z
    :try_start_8
    const-string v9, "  First time processes crashed and counts:"

    invoke-virtual {v2, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 290
    const/4 v0, 0x1

    goto :goto_7

    .line 286
    .end local v8    # "needSep":Z
    .restart local v9    # "needSep":Z
    :cond_c
    move v8, v9

    .line 292
    .end local v9    # "needSep":Z
    .restart local v8    # "needSep":Z
    :goto_7
    :try_start_9
    const-string v9, "    Process "

    invoke-virtual {v2, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 293
    const-string v9, " uid "

    invoke-virtual {v2, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2, v15}, Ljava/io/PrintWriter;->print(I)V

    .line 294
    const-string v9, ": first crashed "

    invoke-virtual {v2, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 295
    invoke-virtual {v12, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/Pair;

    iget-object v9, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v17
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    move-object/from16 v19, v7

    move v9, v8

    .end local v7    # "r":Lcom/android/server/am/ProcessRecord;
    .end local v8    # "needSep":Z
    .restart local v9    # "needSep":Z
    .local v19, "r":Lcom/android/server/am/ProcessRecord;
    sub-long v7, v4, v17

    :try_start_a
    invoke-static {v7, v8, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 296
    const-string v7, " ago; crashes since then: "

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v12, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/Pair;

    iget-object v7, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 279
    .end local v15    # "puid":I
    .end local v19    # "r":Lcom/android/server/am/ProcessRecord;
    :goto_8
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v7, p3

    move/from16 v8, v16

    goto :goto_6

    .end local v16    # "processCount":I
    .end local p3    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;>;>;"
    .local v7, "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;>;>;"
    .local v8, "processCount":I
    :cond_d
    move-object/from16 p3, v7

    move/from16 v16, v8

    .line 275
    .end local v7    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;>;>;"
    .end local v8    # "processCount":I
    .end local v11    # "pname":Ljava/lang/String;
    .end local v12    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;>;"
    .end local v13    # "uidCount":I
    .end local v14    # "i":I
    .restart local v16    # "processCount":I
    .restart local p3    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;>;>;"
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_5

    .end local v16    # "processCount":I
    .end local p3    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;>;>;"
    .restart local v7    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;>;>;"
    .restart local v8    # "processCount":I
    :cond_e
    move-object/from16 p3, v7

    move/from16 v16, v8

    .end local v7    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;>;>;"
    .end local v8    # "processCount":I
    .restart local v16    # "processCount":I
    .restart local p3    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;>;>;"
    goto :goto_9

    .line 300
    .end local v0    # "printed":Z
    .end local v10    # "ip":I
    .end local v16    # "processCount":I
    .end local p3    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;>;>;"
    :catchall_3
    move-exception v0

    move-wide/from16 v17, v4

    goto/16 :goto_f

    :cond_f
    :goto_9
    :try_start_b
    monitor-exit v6
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 302
    iget-object v0, v1, Lcom/android/server/am/AppErrors;->mBadProcesses:Lcom/android/internal/app/ProcessMap;

    .line 303
    .local v0, "badProcesses":Lcom/android/internal/app/ProcessMap;, "Lcom/android/internal/app/ProcessMap<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    invoke-virtual {v0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v6

    invoke-virtual {v6}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1b

    .line 304
    const/4 v6, 0x0

    .line 305
    .local v6, "printed":Z
    invoke-virtual {v0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v7

    .line 306
    .local v7, "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;>;"
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v8

    .line 307
    .restart local v8    # "processCount":I
    const/4 v10, 0x0

    .restart local v10    # "ip":I
    :goto_a
    if-ge v10, v8, :cond_1a

    .line 308
    invoke-virtual {v7, v10}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 309
    .restart local v11    # "pname":Ljava/lang/String;
    invoke-virtual {v7, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/SparseArray;

    .line 310
    .local v12, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    invoke-virtual {v12}, Landroid/util/SparseArray;->size()I

    move-result v13

    .line 311
    .restart local v13    # "uidCount":I
    const/4 v14, 0x0

    .restart local v14    # "i":I
    :goto_b
    if-ge v14, v13, :cond_19

    .line 312
    invoke-virtual {v12, v14}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v15

    .line 313
    .restart local v15    # "puid":I
    move-object/from16 v16, v0

    .end local v0    # "badProcesses":Lcom/android/internal/app/ProcessMap;, "Lcom/android/internal/app/ProcessMap<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    .local v16, "badProcesses":Lcom/android/internal/app/ProcessMap;, "Lcom/android/internal/app/ProcessMap<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    iget-object v0, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getProcessNamesLOSP()Lcom/android/internal/app/ProcessMap;

    move-result-object v0

    invoke-virtual {v0, v11, v15}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    .line 314
    .local v0, "r":Lcom/android/server/am/ProcessRecord;
    if-eqz v3, :cond_11

    if-eqz v0, :cond_10

    .line 315
    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/server/am/PackageList;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 311
    .end local v0    # "r":Lcom/android/server/am/ProcessRecord;
    .end local v15    # "puid":I
    :cond_10
    move-wide/from16 v17, v4

    goto/16 :goto_d

    .line 318
    .restart local v0    # "r":Lcom/android/server/am/ProcessRecord;
    .restart local v15    # "puid":I
    :cond_11
    if-nez v6, :cond_13

    .line 319
    if-eqz v9, :cond_12

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 320
    :cond_12
    const/4 v9, 0x1

    .line 321
    const-string v1, "  Bad processes:"

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 322
    const/4 v6, 0x1

    .line 324
    :cond_13
    invoke-virtual {v12, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/AppErrors$BadProcessInfo;

    .line 325
    .local v1, "info":Lcom/android/server/am/AppErrors$BadProcessInfo;
    move-object/from16 p3, v0

    .end local v0    # "r":Lcom/android/server/am/ProcessRecord;
    .local p3, "r":Lcom/android/server/am/ProcessRecord;
    const-string v0, "    Bad process "

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 326
    const-string v0, " uid "

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2, v15}, Ljava/io/PrintWriter;->print(I)V

    .line 327
    const-string v0, ": crashed at time "

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-wide/from16 v17, v4

    .end local v4    # "now":J
    .local v17, "now":J
    iget-wide v3, v1, Lcom/android/server/am/AppErrors$BadProcessInfo;->time:J

    invoke-virtual {v2, v3, v4}, Ljava/io/PrintWriter;->println(J)V

    .line 328
    iget-object v0, v1, Lcom/android/server/am/AppErrors$BadProcessInfo;->shortMsg:Ljava/lang/String;

    if-eqz v0, :cond_14

    .line 329
    const-string v0, "      Short msg: "

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/am/AppErrors$BadProcessInfo;->shortMsg:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 331
    :cond_14
    iget-object v0, v1, Lcom/android/server/am/AppErrors$BadProcessInfo;->longMsg:Ljava/lang/String;

    if-eqz v0, :cond_15

    .line 332
    const-string v0, "      Long msg: "

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/am/AppErrors$BadProcessInfo;->longMsg:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 334
    :cond_15
    iget-object v0, v1, Lcom/android/server/am/AppErrors$BadProcessInfo;->stack:Ljava/lang/String;

    if-eqz v0, :cond_18

    .line 335
    const-string v0, "      Stack:"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 336
    const/4 v0, 0x0

    .line 337
    .local v0, "lastPos":I
    const/4 v3, 0x0

    .local v3, "pos":I
    :goto_c
    iget-object v4, v1, Lcom/android/server/am/AppErrors$BadProcessInfo;->stack:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_17

    .line 338
    iget-object v4, v1, Lcom/android/server/am/AppErrors$BadProcessInfo;->stack:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0xa

    if-ne v4, v5, :cond_16

    .line 339
    const-string v4, "        "

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 340
    iget-object v4, v1, Lcom/android/server/am/AppErrors$BadProcessInfo;->stack:Ljava/lang/String;

    sub-int v5, v3, v0

    invoke-virtual {v2, v4, v0, v5}, Ljava/io/PrintWriter;->write(Ljava/lang/String;II)V

    .line 341
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 342
    add-int/lit8 v0, v3, 0x1

    .line 337
    :cond_16
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 345
    .end local v3    # "pos":I
    :cond_17
    iget-object v3, v1, Lcom/android/server/am/AppErrors$BadProcessInfo;->stack:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_18

    .line 346
    const-string v3, "        "

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 347
    iget-object v3, v1, Lcom/android/server/am/AppErrors$BadProcessInfo;->stack:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/server/am/AppErrors$BadProcessInfo;->stack:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v0

    invoke-virtual {v2, v3, v0, v4}, Ljava/io/PrintWriter;->write(Ljava/lang/String;II)V

    .line 348
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 311
    .end local v0    # "lastPos":I
    .end local v1    # "info":Lcom/android/server/am/AppErrors$BadProcessInfo;
    .end local v15    # "puid":I
    .end local p3    # "r":Lcom/android/server/am/ProcessRecord;
    :cond_18
    :goto_d
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v1, p0

    move-object/from16 v3, p4

    move-object/from16 v0, v16

    move-wide/from16 v4, v17

    goto/16 :goto_b

    .end local v16    # "badProcesses":Lcom/android/internal/app/ProcessMap;, "Lcom/android/internal/app/ProcessMap<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    .end local v17    # "now":J
    .local v0, "badProcesses":Lcom/android/internal/app/ProcessMap;, "Lcom/android/internal/app/ProcessMap<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    .restart local v4    # "now":J
    :cond_19
    move-object/from16 v16, v0

    move-wide/from16 v17, v4

    .line 307
    .end local v0    # "badProcesses":Lcom/android/internal/app/ProcessMap;, "Lcom/android/internal/app/ProcessMap<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    .end local v4    # "now":J
    .end local v11    # "pname":Ljava/lang/String;
    .end local v12    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    .end local v13    # "uidCount":I
    .end local v14    # "i":I
    .restart local v16    # "badProcesses":Lcom/android/internal/app/ProcessMap;, "Lcom/android/internal/app/ProcessMap<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    .restart local v17    # "now":J
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v1, p0

    move-object/from16 v3, p4

    goto/16 :goto_a

    .end local v16    # "badProcesses":Lcom/android/internal/app/ProcessMap;, "Lcom/android/internal/app/ProcessMap<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    .end local v17    # "now":J
    .restart local v0    # "badProcesses":Lcom/android/internal/app/ProcessMap;, "Lcom/android/internal/app/ProcessMap<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    .restart local v4    # "now":J
    :cond_1a
    move-object/from16 v16, v0

    move-wide/from16 v17, v4

    .end local v0    # "badProcesses":Lcom/android/internal/app/ProcessMap;, "Lcom/android/internal/app/ProcessMap<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    .end local v4    # "now":J
    .restart local v16    # "badProcesses":Lcom/android/internal/app/ProcessMap;, "Lcom/android/internal/app/ProcessMap<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    .restart local v17    # "now":J
    goto :goto_e

    .line 303
    .end local v6    # "printed":Z
    .end local v7    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;>;"
    .end local v8    # "processCount":I
    .end local v10    # "ip":I
    .end local v16    # "badProcesses":Lcom/android/internal/app/ProcessMap;, "Lcom/android/internal/app/ProcessMap<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    .end local v17    # "now":J
    .restart local v0    # "badProcesses":Lcom/android/internal/app/ProcessMap;, "Lcom/android/internal/app/ProcessMap<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    .restart local v4    # "now":J
    :cond_1b
    move-object/from16 v16, v0

    move-wide/from16 v17, v4

    .line 354
    .end local v0    # "badProcesses":Lcom/android/internal/app/ProcessMap;, "Lcom/android/internal/app/ProcessMap<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    .end local v4    # "now":J
    .restart local v16    # "badProcesses":Lcom/android/internal/app/ProcessMap;, "Lcom/android/internal/app/ProcessMap<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    .restart local v17    # "now":J
    :goto_e
    return v9

    .line 300
    .end local v16    # "badProcesses":Lcom/android/internal/app/ProcessMap;, "Lcom/android/internal/app/ProcessMap<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    .end local v17    # "now":J
    .restart local v4    # "now":J
    :catchall_4
    move-exception v0

    move-wide/from16 v17, v4

    .end local v4    # "now":J
    .restart local v17    # "now":J
    goto :goto_f

    .end local v9    # "needSep":Z
    .end local v17    # "now":J
    .restart local v4    # "now":J
    .local p3, "needSep":Z
    :catchall_5
    move-exception v0

    move-wide/from16 v17, v4

    move/from16 v9, p3

    .end local v4    # "now":J
    .end local p3    # "needSep":Z
    .restart local v9    # "needSep":Z
    .restart local v17    # "now":J
    :goto_f
    :try_start_c
    monitor-exit v6
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    throw v0

    :catchall_6
    move-exception v0

    goto :goto_f
.end method

.method generateProcessError(Lcom/android/server/am/ProcessRecord;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/ActivityManager$ProcessErrorStateInfo;
    .locals 2
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "condition"    # I
    .param p3, "activity"    # Ljava/lang/String;
    .param p4, "shortMsg"    # Ljava/lang/String;
    .param p5, "longMsg"    # Ljava/lang/String;
    .param p6, "stackTrace"    # Ljava/lang/String;

    .line 772
    new-instance v0, Landroid/app/ActivityManager$ProcessErrorStateInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$ProcessErrorStateInfo;-><init>()V

    .line 774
    .local v0, "report":Landroid/app/ActivityManager$ProcessErrorStateInfo;
    iput p2, v0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->condition:I

    .line 775
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iput-object v1, v0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->processName:Ljava/lang/String;

    .line 776
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v1

    iput v1, v0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->pid:I

    .line 777
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v1, v0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->uid:I

    .line 778
    iput-object p3, v0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->tag:Ljava/lang/String;

    .line 779
    iput-object p4, v0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->shortMsg:Ljava/lang/String;

    .line 780
    iput-object p5, v0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->longMsg:Ljava/lang/String;

    .line 781
    iput-object p6, v0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->stackTrace:Ljava/lang/String;

    .line 783
    return-object v0
.end method

.method handleShowAnrUi(Landroid/os/Message;)V
    .locals 16
    .param p1, "msg"    # Landroid/os/Message;

    .line 1051
    move-object/from16 v1, p0

    const/4 v2, 0x0

    .line 1052
    .local v2, "packageList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/VersionedPackage;>;"
    const/4 v3, 0x0

    .line 1053
    .local v3, "doKill":Z
    move-object/from16 v4, p1

    iget-object v0, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Lcom/android/server/am/AppNotRespondingDialog$Data;

    .line 1054
    .local v5, "data":Lcom/android/server/am/AppNotRespondingDialog$Data;
    iget-object v6, v5, Lcom/android/server/am/AppNotRespondingDialog$Data;->proc:Lcom/android/server/am/ProcessRecord;

    .line 1055
    .local v6, "proc":Lcom/android/server/am/ProcessRecord;
    if-nez v6, :cond_0

    .line 1056
    const-string v0, "ActivityManager"

    const-string v7, "handleShowAnrUi: proc is null"

    invoke-static {v0, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    return-void

    .line 1059
    :cond_0
    iget-object v7, v1, Lcom/android/server/am/AppErrors;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    monitor-enter v7

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 1060
    iget-object v0, v6, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    .line 1061
    .local v0, "errState":Lcom/android/server/am/ProcessErrorStateRecord;
    invoke-virtual {v6}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v8

    if-nez v8, :cond_1

    .line 1062
    invoke-virtual {v6}, Lcom/android/server/am/ProcessRecord;->getPackageListWithVersionCode()Ljava/util/List;

    move-result-object v8

    move-object v2, v8

    .line 1064
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/am/ProcessErrorStateRecord;->getDialogController()Lcom/android/server/am/ErrorDialogController;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/am/ErrorDialogController;->hasAnrDialogs()Z

    move-result v8

    const/16 v9, 0x13d

    if-eqz v8, :cond_2

    .line 1065
    const-string v8, "ActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "App already has anr dialog: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1066
    iget-object v8, v1, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    const/4 v10, -0x2

    invoke-static {v8, v9, v10}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    .line 1068
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return-void

    .line 1071
    :cond_2
    :try_start_1
    iget-object v8, v1, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v10, "anr_show_background"

    iget-object v11, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    .line 1073
    invoke-virtual {v11}, Lcom/android/server/am/UserController;->getCurrentUserId()I

    move-result v11

    .line 1071
    const/4 v12, 0x0

    invoke-static {v8, v10, v12, v11}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v8

    if-eqz v8, :cond_3

    const/4 v8, 0x1

    goto :goto_0

    :cond_3
    move v8, v12

    .line 1074
    .local v8, "showBackground":Z
    :goto_0
    iget-object v10, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v10}, Lcom/android/server/wm/ActivityTaskManagerInternal;->canShowErrorDialogs()Z

    move-result v10

    if-nez v10, :cond_5

    if-eqz v8, :cond_4

    goto :goto_1

    .line 1096
    :cond_4
    iget-object v10, v1, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    const/4 v11, -0x1

    invoke-static {v10, v9, v11}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    .line 1099
    const/4 v3, 0x1

    goto :goto_3

    .line 1075
    :cond_5
    :goto_1
    invoke-virtual {v0}, Lcom/android/server/am/ProcessErrorStateRecord;->getDialogController()Lcom/android/server/am/ErrorDialogController;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/am/ErrorDialogController;->getAnrController()Landroid/app/AnrController;

    move-result-object v9

    .line 1076
    .local v9, "anrController":Landroid/app/AnrController;
    if-nez v9, :cond_6

    .line 1077
    invoke-virtual {v0}, Lcom/android/server/am/ProcessErrorStateRecord;->getDialogController()Lcom/android/server/am/ErrorDialogController;

    move-result-object v10

    invoke-virtual {v10, v5}, Lcom/android/server/am/ErrorDialogController;->showAnrDialogs(Lcom/android/server/am/AppNotRespondingDialog$Data;)V

    goto :goto_2

    .line 1079
    :cond_6
    iget-object v10, v6, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1080
    .local v10, "packageName":Ljava/lang/String;
    iget-object v11, v6, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v11, v11, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1081
    .local v11, "uid":I
    invoke-interface {v9, v10, v11}, Landroid/app/AnrController;->onAnrDelayCompleted(Ljava/lang/String;I)Z

    move-result v13

    .line 1083
    .local v13, "showDialog":Z
    if-eqz v13, :cond_7

    .line 1084
    const-string v12, "ActivityManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "ANR delay completed. Showing ANR dialog for package: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1086
    invoke-virtual {v0}, Lcom/android/server/am/ProcessErrorStateRecord;->getDialogController()Lcom/android/server/am/ErrorDialogController;

    move-result-object v12

    invoke-virtual {v12, v5}, Lcom/android/server/am/ErrorDialogController;->showAnrDialogs(Lcom/android/server/am/AppNotRespondingDialog$Data;)V

    goto :goto_2

    .line 1088
    :cond_7
    const-string v14, "ActivityManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "ANR delay completed. Cancelling ANR dialog for package: "

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v14, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1090
    const/4 v12, 0x0

    invoke-virtual {v0, v12}, Lcom/android/server/am/ProcessErrorStateRecord;->setNotResponding(Z)V

    .line 1091
    const/4 v12, 0x0

    invoke-virtual {v0, v12}, Lcom/android/server/am/ProcessErrorStateRecord;->setNotRespondingReport(Landroid/app/ActivityManager$ProcessErrorStateInfo;)V

    .line 1092
    invoke-virtual {v0}, Lcom/android/server/am/ProcessErrorStateRecord;->getDialogController()Lcom/android/server/am/ErrorDialogController;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/server/am/ErrorDialogController;->clearAnrDialogs()V

    .line 1095
    .end local v9    # "anrController":Landroid/app/AnrController;
    .end local v10    # "packageName":Ljava/lang/String;
    .end local v11    # "uid":I
    .end local v13    # "showDialog":Z
    :goto_2
    nop

    .line 1101
    .end local v0    # "errState":Lcom/android/server/am/ProcessErrorStateRecord;
    .end local v8    # "showBackground":Z
    :goto_3
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 1102
    if-eqz v3, :cond_8

    .line 1103
    iget-object v0, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, v6}, Lcom/android/server/am/ActivityManagerService;->killAppAtUsersRequest(Lcom/android/server/am/ProcessRecord;)V

    .line 1106
    :cond_8
    if-eqz v2, :cond_9

    .line 1107
    iget-object v0, v1, Lcom/android/server/am/AppErrors;->mPackageWatchdog:Lcom/android/server/PackageWatchdog;

    const/4 v7, 0x4

    invoke-virtual {v0, v2, v7}, Lcom/android/server/PackageWatchdog;->onPackageFailure(Ljava/util/List;I)V

    .line 1110
    :cond_9
    return-void

    .line 1101
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v0
.end method

.method handleShowAppErrorUi(Landroid/os/Message;)V
    .locals 22
    .param p1, "msg"    # Landroid/os/Message;

    .line 970
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lcom/android/server/am/AppErrorDialog$Data;

    .line 971
    .local v3, "data":Lcom/android/server/am/AppErrorDialog$Data;
    iget-object v0, v1, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "anr_show_background"

    iget-object v5, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    .line 973
    invoke-virtual {v5}, Lcom/android/server/am/UserController;->getCurrentUserId()I

    move-result v5

    .line 971
    const/4 v6, 0x0

    invoke-static {v0, v4, v6, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v6

    :goto_0
    move v5, v0

    .line 976
    .local v5, "showBackground":Z
    iget-object v7, v1, Lcom/android/server/am/AppErrors;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    monitor-enter v7

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 977
    iget-object v0, v3, Lcom/android/server/am/AppErrorDialog$Data;->proc:Lcom/android/server/am/ProcessRecord;

    move-object v8, v0

    .line 978
    .local v8, "proc":Lcom/android/server/am/ProcessRecord;
    iget-object v0, v3, Lcom/android/server/am/AppErrorDialog$Data;->result:Lcom/android/server/am/AppErrorResult;

    move-object v9, v0

    .line 979
    .local v9, "res":Lcom/android/server/am/AppErrorResult;
    if-nez v8, :cond_1

    .line 980
    const-string v0, "ActivityManager"

    const-string v4, "handleShowAppErrorUi: proc is null"

    invoke-static {v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return-void

    .line 983
    :cond_1
    :try_start_1
    iget-object v0, v8, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    move-object v10, v0

    .line 984
    .local v10, "errState":Lcom/android/server/am/ProcessErrorStateRecord;
    iget v0, v8, Lcom/android/server/am/ProcessRecord;->userId:I

    move v11, v0

    .line 985
    .local v11, "userId":I
    invoke-virtual {v10}, Lcom/android/server/am/ProcessErrorStateRecord;->getDialogController()Lcom/android/server/am/ErrorDialogController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/ErrorDialogController;->hasCrashDialogs()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 986
    const-string v0, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "App already has crash dialog: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
    if-eqz v9, :cond_2

    .line 988
    sget v0, Lcom/android/server/am/AppErrorDialog;->ALREADY_SHOWING:I

    invoke-virtual {v9, v0}, Lcom/android/server/am/AppErrorResult;->set(I)V

    .line 990
    :cond_2
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return-void

    .line 992
    :cond_3
    :try_start_2
    iget v0, v8, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v12, 0x2710

    if-lt v0, v12, :cond_4

    .line 994
    invoke-virtual {v8}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v0

    sget v12, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq v0, v12, :cond_4

    const/4 v0, 0x1

    goto :goto_1

    :cond_4
    move v0, v6

    .line 995
    .local v0, "isBackground":Z
    :goto_1
    iget-object v12, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v12, v12, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v12}, Lcom/android/server/am/UserController;->getCurrentProfileIds()[I

    move-result-object v12

    array-length v13, v12

    move v14, v0

    move v0, v6

    .end local v0    # "isBackground":Z
    .local v14, "isBackground":Z
    :goto_2
    if-ge v0, v13, :cond_6

    aget v15, v12, v0

    .line 996
    .local v15, "profileId":I
    if-eq v11, v15, :cond_5

    const/16 v16, 0x1

    goto :goto_3

    :cond_5
    move/from16 v16, v6

    :goto_3
    and-int v14, v14, v16

    .line 995
    .end local v15    # "profileId":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 998
    :cond_6
    if-eqz v14, :cond_8

    if-nez v5, :cond_8

    .line 999
    const-string v0, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Skipping crash dialog of "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ": background"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1000
    if-eqz v9, :cond_7

    .line 1001
    sget v0, Lcom/android/server/am/AppErrorDialog;->BACKGROUND_USER:I

    invoke-virtual {v9, v0}, Lcom/android/server/am/AppErrorResult;->set(I)V

    .line 1003
    :cond_7
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return-void

    .line 1005
    :cond_8
    const/4 v12, 0x0

    .line 1006
    .local v12, "crashShowErrorTime":Ljava/lang/Long;
    :try_start_3
    iget-object v13, v1, Lcom/android/server/am/AppErrors;->mBadProcessLock:Ljava/lang/Object;

    monitor-enter v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 1007
    :try_start_4
    iget-boolean v0, v8, Lcom/android/server/am/ProcessRecord;->isolated:Z

    if-nez v0, :cond_9

    .line 1008
    iget-object v0, v1, Lcom/android/server/am/AppErrors;->mProcessCrashShowDialogTimes:Lcom/android/internal/app/ProcessMap;

    iget-object v15, v8, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v4, v8, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v0, v15, v4}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    move-object v12, v0

    .line 1011
    :cond_9
    iget-object v0, v1, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    .line 1012
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v4, "show_first_crash_dialog"

    .line 1011
    invoke-static {v0, v4, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_4

    :cond_a
    move v0, v6

    .line 1014
    .local v0, "showFirstCrash":Z
    :goto_4
    iget-object v4, v1, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    .line 1015
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v15, "show_first_crash_dialog_dev_option"

    iget-object v6, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    .line 1018
    invoke-virtual {v6}, Lcom/android/server/am/UserController;->getCurrentUserId()I

    move-result v6

    .line 1014
    const/4 v2, 0x0

    invoke-static {v4, v15, v2, v6}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-eqz v4, :cond_b

    const/4 v4, 0x1

    goto :goto_5

    :cond_b
    move v4, v2

    .line 1019
    .local v4, "showFirstCrashDevOption":Z
    :goto_5
    iget-object v6, v1, Lcom/android/server/am/AppErrors;->mAppsNotReportingCrashes:Landroid/util/ArraySet;

    if-eqz v6, :cond_c

    iget-object v15, v8, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v15, v15, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1020
    invoke-virtual {v6, v15}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    const/4 v6, 0x1

    goto :goto_6

    :cond_c
    move v6, v2

    .line 1021
    .local v6, "crashSilenced":Z
    :goto_6
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v17
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1022
    .local v17, "now":J
    if-eqz v12, :cond_d

    .line 1023
    :try_start_5
    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    sget v15, Lcom/android/server/am/ActivityManagerConstants;->MIN_CRASH_INTERVAL:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object/from16 v21, v3

    .end local v3    # "data":Lcom/android/server/am/AppErrorDialog$Data;
    .local v21, "data":Lcom/android/server/am/AppErrorDialog$Data;
    int-to-long v2, v15

    add-long v19, v19, v2

    cmp-long v2, v17, v19

    if-gez v2, :cond_e

    const/16 v16, 0x1

    goto :goto_7

    .line 1038
    .end local v0    # "showFirstCrash":Z
    .end local v4    # "showFirstCrashDevOption":Z
    .end local v6    # "crashSilenced":Z
    .end local v17    # "now":J
    .end local v21    # "data":Lcom/android/server/am/AppErrorDialog$Data;
    .restart local v3    # "data":Lcom/android/server/am/AppErrorDialog$Data;
    :catchall_0
    move-exception v0

    .end local v3    # "data":Lcom/android/server/am/AppErrorDialog$Data;
    .restart local v21    # "data":Lcom/android/server/am/AppErrorDialog$Data;
    goto/16 :goto_c

    .line 1022
    .end local v21    # "data":Lcom/android/server/am/AppErrorDialog$Data;
    .restart local v0    # "showFirstCrash":Z
    .restart local v3    # "data":Lcom/android/server/am/AppErrorDialog$Data;
    .restart local v4    # "showFirstCrashDevOption":Z
    .restart local v6    # "crashSilenced":Z
    .restart local v17    # "now":J
    :cond_d
    move-object/from16 v21, v3

    .line 1023
    .end local v3    # "data":Lcom/android/server/am/AppErrorDialog$Data;
    .restart local v21    # "data":Lcom/android/server/am/AppErrorDialog$Data;
    :cond_e
    const/16 v16, 0x0

    :goto_7
    move/from16 v2, v16

    .line 1024
    .local v2, "shouldThottle":Z
    :try_start_6
    iget-object v3, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerInternal;->canShowErrorDialogs()Z

    move-result v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-nez v3, :cond_10

    if-eqz v5, :cond_f

    goto :goto_8

    :cond_f
    move/from16 v16, v0

    move/from16 v19, v2

    move-object/from16 v3, v21

    goto :goto_a

    :cond_10
    :goto_8
    if-nez v6, :cond_14

    if-nez v2, :cond_14

    if-nez v0, :cond_12

    if-nez v4, :cond_12

    move-object/from16 v3, v21

    .end local v21    # "data":Lcom/android/server/am/AppErrorDialog$Data;
    .restart local v3    # "data":Lcom/android/server/am/AppErrorDialog$Data;
    :try_start_7
    iget-boolean v15, v3, Lcom/android/server/am/AppErrorDialog$Data;->repeating:Z

    if-eqz v15, :cond_11

    goto :goto_9

    :cond_11
    move/from16 v16, v0

    move/from16 v19, v2

    goto :goto_a

    .end local v3    # "data":Lcom/android/server/am/AppErrorDialog$Data;
    .restart local v21    # "data":Lcom/android/server/am/AppErrorDialog$Data;
    :cond_12
    move-object/from16 v3, v21

    .line 1027
    .end local v21    # "data":Lcom/android/server/am/AppErrorDialog$Data;
    .restart local v3    # "data":Lcom/android/server/am/AppErrorDialog$Data;
    :goto_9
    invoke-virtual {v10}, Lcom/android/server/am/ProcessErrorStateRecord;->getDialogController()Lcom/android/server/am/ErrorDialogController;

    move-result-object v15

    invoke-virtual {v15, v3}, Lcom/android/server/am/ErrorDialogController;->showCrashDialogs(Lcom/android/server/am/AppErrorDialog$Data;)V

    .line 1028
    iget-boolean v15, v8, Lcom/android/server/am/ProcessRecord;->isolated:Z

    if-nez v15, :cond_13

    .line 1029
    iget-object v15, v1, Lcom/android/server/am/AppErrors;->mProcessCrashShowDialogTimes:Lcom/android/internal/app/ProcessMap;

    move/from16 v16, v0

    .end local v0    # "showFirstCrash":Z
    .local v16, "showFirstCrash":Z
    iget-object v0, v8, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v1, v8, Lcom/android/server/am/ProcessRecord;->uid:I

    move/from16 v19, v2

    .end local v2    # "shouldThottle":Z
    .local v19, "shouldThottle":Z
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v15, v0, v1, v2}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    .line 1028
    .end local v16    # "showFirstCrash":Z
    .end local v19    # "shouldThottle":Z
    .restart local v0    # "showFirstCrash":Z
    .restart local v2    # "shouldThottle":Z
    :cond_13
    move/from16 v16, v0

    move/from16 v19, v2

    .end local v0    # "showFirstCrash":Z
    .end local v2    # "shouldThottle":Z
    .restart local v16    # "showFirstCrash":Z
    .restart local v19    # "shouldThottle":Z
    goto :goto_b

    .line 1024
    .end local v3    # "data":Lcom/android/server/am/AppErrorDialog$Data;
    .end local v16    # "showFirstCrash":Z
    .end local v19    # "shouldThottle":Z
    .restart local v0    # "showFirstCrash":Z
    .restart local v2    # "shouldThottle":Z
    .restart local v21    # "data":Lcom/android/server/am/AppErrorDialog$Data;
    :cond_14
    move/from16 v16, v0

    move/from16 v19, v2

    move-object/from16 v3, v21

    .line 1034
    .end local v0    # "showFirstCrash":Z
    .end local v2    # "shouldThottle":Z
    .end local v21    # "data":Lcom/android/server/am/AppErrorDialog$Data;
    .restart local v3    # "data":Lcom/android/server/am/AppErrorDialog$Data;
    .restart local v16    # "showFirstCrash":Z
    .restart local v19    # "shouldThottle":Z
    :goto_a
    if-eqz v9, :cond_15

    .line 1035
    sget v0, Lcom/android/server/am/AppErrorDialog;->CANT_SHOW:I

    invoke-virtual {v9, v0}, Lcom/android/server/am/AppErrorResult;->set(I)V

    .line 1038
    .end local v4    # "showFirstCrashDevOption":Z
    .end local v6    # "crashSilenced":Z
    .end local v16    # "showFirstCrash":Z
    .end local v17    # "now":J
    .end local v19    # "shouldThottle":Z
    :cond_15
    :goto_b
    monitor-exit v13
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 1039
    .end local v8    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v9    # "res":Lcom/android/server/am/AppErrorResult;
    .end local v10    # "errState":Lcom/android/server/am/ProcessErrorStateRecord;
    .end local v12    # "crashShowErrorTime":Ljava/lang/Long;
    .end local v14    # "isBackground":Z
    :try_start_8
    monitor-exit v7
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 1040
    return-void

    .line 1038
    .end local v3    # "data":Lcom/android/server/am/AppErrorDialog$Data;
    .restart local v8    # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v9    # "res":Lcom/android/server/am/AppErrorResult;
    .restart local v10    # "errState":Lcom/android/server/am/ProcessErrorStateRecord;
    .restart local v12    # "crashShowErrorTime":Ljava/lang/Long;
    .restart local v14    # "isBackground":Z
    .restart local v21    # "data":Lcom/android/server/am/AppErrorDialog$Data;
    :catchall_1
    move-exception v0

    move-object/from16 v3, v21

    .end local v21    # "data":Lcom/android/server/am/AppErrorDialog$Data;
    .restart local v3    # "data":Lcom/android/server/am/AppErrorDialog$Data;
    goto :goto_c

    :catchall_2
    move-exception v0

    :goto_c
    :try_start_9
    monitor-exit v13
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .end local v3    # "data":Lcom/android/server/am/AppErrorDialog$Data;
    .end local v5    # "showBackground":Z
    .end local p0    # "this":Lcom/android/server/am/AppErrors;
    .end local p1    # "msg":Landroid/os/Message;
    :try_start_a
    throw v0

    .line 1039
    .end local v8    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v9    # "res":Lcom/android/server/am/AppErrorResult;
    .end local v10    # "errState":Lcom/android/server/am/ProcessErrorStateRecord;
    .end local v11    # "userId":I
    .end local v12    # "crashShowErrorTime":Ljava/lang/Long;
    .end local v14    # "isBackground":Z
    .restart local v3    # "data":Lcom/android/server/am/AppErrorDialog$Data;
    .restart local v5    # "showBackground":Z
    .restart local p0    # "this":Lcom/android/server/am/AppErrors;
    .restart local p1    # "msg":Landroid/os/Message;
    :catchall_3
    move-exception v0

    monitor-exit v7
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v0
.end method

.method isBadProcess(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 359
    iget-object v0, p0, Lcom/android/server/am/AppErrors;->mBadProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method killAppAtUserRequestLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 10
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 449
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessErrorStateRecord;->getDialogController()Lcom/android/server/am/ErrorDialogController;

    move-result-object v0

    .line 451
    .local v0, "controller":Lcom/android/server/am/ErrorDialogController;
    const/4 v1, 0x6

    .line 452
    .local v1, "reasonCode":I
    const/4 v2, 0x0

    .line 453
    .local v2, "subReason":I
    iget-object v3, p0, Lcom/android/server/am/AppErrors;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    monitor-enter v3

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 454
    invoke-virtual {v0}, Lcom/android/server/am/ErrorDialogController;->hasDebugWaitingDialog()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 455
    const/16 v1, 0xd

    .line 456
    const/4 v2, 0x1

    .line 458
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/am/ErrorDialogController;->clearAllErrorDialogs()V

    .line 459
    const-string/jumbo v8, "user-terminated"

    const-string/jumbo v9, "user request after error"

    move-object v4, p0

    move-object v5, p1

    move v6, v1

    move v7, v2

    invoke-direct/range {v4 .. v9}, Lcom/android/server/am/AppErrors;->killAppImmediateLSP(Lcom/android/server/am/ProcessRecord;IILjava/lang/String;Ljava/lang/String;)V

    .line 461
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 462
    return-void

    .line 461
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v4
.end method

.method public synthetic lambda$handleAppCrashInActivityController$1$AppErrors(Landroid/app/ApplicationErrorReport$CrashInfo;Ljava/lang/String;ILcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 12
    .param p1, "crashInfo"    # Landroid/app/ApplicationErrorReport$CrashInfo;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "pid"    # I
    .param p4, "r"    # Lcom/android/server/am/ProcessRecord;
    .param p5, "shortMsg"    # Ljava/lang/String;
    .param p6, "longMsg"    # Ljava/lang/String;
    .param p7, "stackTrace"    # Ljava/lang/String;
    .param p8, "uid"    # I

    .line 716
    move-object v0, p2

    move v7, p3

    move-object/from16 v8, p4

    sget-boolean v1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    const-string v2, "ActivityManager"

    if-eqz v1, :cond_0

    move-object v9, p1

    iget-object v1, v9, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionClassName:Ljava/lang/String;

    .line 717
    const-string v3, "Native crash"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 718
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skip killing native crashed app "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") during testing"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v11, p0

    move/from16 v10, p8

    goto :goto_0

    .line 716
    :cond_0
    move-object v9, p1

    .line 721
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Force-killing crashed app "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " at watcher\'s request"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    if-eqz v8, :cond_3

    .line 723
    const/4 v6, 0x0

    move-object v1, p0

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/AppErrors;->makeAppCrashingLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/am/AppErrorDialog$Data;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 724
    const/4 v1, 0x4

    const/4 v2, 0x1

    const-string v3, "crash"

    invoke-virtual {v8, v3, v1, v2}, Lcom/android/server/am/ProcessRecord;->killLocked(Ljava/lang/String;IZ)V

    move-object v11, p0

    move/from16 v10, p8

    goto :goto_0

    .line 723
    :cond_2
    move-object v11, p0

    move/from16 v10, p8

    goto :goto_0

    .line 728
    :cond_3
    invoke-static {p3}, Landroid/os/Process;->killProcess(I)V

    .line 729
    move/from16 v10, p8

    invoke-static {v10, p3}, Lcom/android/server/am/ProcessList;->killProcessGroup(II)V

    .line 730
    move-object v11, p0

    iget-object v1, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v6, "crash"

    move v2, p3

    move/from16 v3, p8

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ProcessList;->noteAppKill(IIIILjava/lang/String;)V

    .line 736
    :goto_0
    return-void
.end method

.method public synthetic lambda$scheduleAppCrashLocked$0$AppErrors(Lcom/android/server/am/ProcessRecord;)V
    .locals 8
    .param p1, "p"    # Lcom/android/server/am/ProcessRecord;

    .line 531
    iget-object v0, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 532
    iget-object v1, p0, Lcom/android/server/am/AppErrors;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 533
    const/16 v4, 0xd

    const/16 v5, 0xe

    const-string v6, "forced"

    const-string/jumbo v7, "killed for invalid state"

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/server/am/AppErrors;->killAppImmediateLSP(Lcom/android/server/am/ProcessRecord;IILjava/lang/String;Ljava/lang/String;)V

    .line 536
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 537
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 538
    return-void

    .line 536
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .end local p0    # "this":Lcom/android/server/am/AppErrors;
    .end local p1    # "p":Lcom/android/server/am/ProcessRecord;
    throw v2

    .line 537
    .restart local p0    # "this":Lcom/android/server/am/AppErrors;
    .restart local p1    # "p":Lcom/android/server/am/ProcessRecord;
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method loadAppsNotReportingCrashesFromConfig(Ljava/lang/String;)V
    .locals 3
    .param p1, "appsNotReportingCrashesConfig"    # Ljava/lang/String;

    .line 436
    if-eqz p1, :cond_0

    .line 437
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 438
    .local v0, "split":[Ljava/lang/String;
    array-length v1, v0

    if-lez v1, :cond_0

    .line 439
    iget-object v1, p0, Lcom/android/server/am/AppErrors;->mBadProcessLock:Ljava/lang/Object;

    monitor-enter v1

    .line 440
    :try_start_0
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/AppErrors;->mAppsNotReportingCrashes:Landroid/util/ArraySet;

    .line 441
    invoke-static {v2, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 442
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 445
    .end local v0    # "split":[Ljava/lang/String;
    :cond_0
    :goto_0
    return-void
.end method

.method markBadProcess(Ljava/lang/String;ILcom/android/server/am/AppErrors$BadProcessInfo;)V
    .locals 3
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "info"    # Lcom/android/server/am/AppErrors$BadProcessInfo;

    .line 372
    iget-object v0, p0, Lcom/android/server/am/AppErrors;->mBadProcessLock:Ljava/lang/Object;

    monitor-enter v0

    .line 373
    :try_start_0
    new-instance v1, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v1}, Lcom/android/internal/app/ProcessMap;-><init>()V

    .line 374
    .local v1, "badProcesses":Lcom/android/internal/app/ProcessMap;, "Lcom/android/internal/app/ProcessMap<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    iget-object v2, p0, Lcom/android/server/am/AppErrors;->mBadProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v1, v2}, Lcom/android/internal/app/ProcessMap;->putAll(Lcom/android/internal/app/ProcessMap;)V

    .line 375
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 376
    iput-object v1, p0, Lcom/android/server/am/AppErrors;->mBadProcesses:Lcom/android/internal/app/ProcessMap;

    .line 377
    .end local v1    # "badProcesses":Lcom/android/internal/app/ProcessMap;, "Lcom/android/internal/app/ProcessMap<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    monitor-exit v0

    .line 378
    return-void

    .line 377
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method resetProcessCrashTime(Ljava/lang/String;I)V
    .locals 2
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 381
    iget-object v0, p0, Lcom/android/server/am/AppErrors;->mBadProcessLock:Ljava/lang/Object;

    monitor-enter v0

    .line 382
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/app/ProcessMap;->remove(Ljava/lang/String;I)Ljava/lang/Object;

    .line 383
    iget-object v1, p0, Lcom/android/server/am/AppErrors;->mProcessCrashCounts:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/app/ProcessMap;->remove(Ljava/lang/String;I)Ljava/lang/Object;

    .line 384
    monitor-exit v0

    .line 385
    return-void

    .line 384
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method resetProcessCrashTime(ZII)V
    .locals 6
    .param p1, "resetEntireUser"    # Z
    .param p2, "appId"    # I
    .param p3, "userId"    # I

    .line 388
    iget-object v0, p0, Lcom/android/server/am/AppErrors;->mBadProcessLock:Ljava/lang/Object;

    monitor-enter v0

    .line 389
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v1}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v1

    .line 390
    .local v1, "pTimeMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "ip":I
    :goto_0
    if-ltz v2, :cond_1

    .line 391
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseArray;

    .line 392
    .local v3, "ba":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Long;>;"
    invoke-direct {p0, v3, p1, p2, p3}, Lcom/android/server/am/AppErrors;->resetProcessCrashMapLBp(Landroid/util/SparseArray;ZII)V

    .line 393
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-nez v4, :cond_0

    .line 394
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 390
    .end local v3    # "ba":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Long;>;"
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 398
    .end local v2    # "ip":I
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/AppErrors;->mProcessCrashCounts:Lcom/android/internal/app/ProcessMap;

    .line 399
    invoke-virtual {v2}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v2

    .line 400
    .local v2, "pCountMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;>;>;"
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "ip":I
    :goto_1
    if-ltz v3, :cond_3

    .line 401
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseArray;

    .line 402
    .local v4, "ba":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;>;"
    invoke-direct {p0, v4, p1, p2, p3}, Lcom/android/server/am/AppErrors;->resetProcessCrashMapLBp(Landroid/util/SparseArray;ZII)V

    .line 403
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-nez v5, :cond_2

    .line 404
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 400
    .end local v4    # "ba":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;>;"
    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 407
    .end local v1    # "pTimeMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    .end local v2    # "pCountMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;>;>;"
    .end local v3    # "ip":I
    :cond_3
    monitor-exit v0

    .line 408
    return-void

    .line 407
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public resetState()V
    .locals 2

    .line 152
    const-string v0, "ActivityManager"

    const-string v1, "Resetting AppErrors"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget-object v0, p0, Lcom/android/server/am/AppErrors;->mBadProcessLock:Ljava/lang/Object;

    monitor-enter v0

    .line 154
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/AppErrors;->mAppsNotReportingCrashes:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    .line 155
    iget-object v1, p0, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v1}, Lcom/android/internal/app/ProcessMap;->clear()V

    .line 156
    iget-object v1, p0, Lcom/android/server/am/AppErrors;->mProcessCrashTimesPersistent:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v1}, Lcom/android/internal/app/ProcessMap;->clear()V

    .line 157
    iget-object v1, p0, Lcom/android/server/am/AppErrors;->mProcessCrashShowDialogTimes:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v1}, Lcom/android/internal/app/ProcessMap;->clear()V

    .line 158
    iget-object v1, p0, Lcom/android/server/am/AppErrors;->mProcessCrashCounts:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v1}, Lcom/android/internal/app/ProcessMap;->clear()V

    .line 159
    new-instance v1, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v1}, Lcom/android/internal/app/ProcessMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/AppErrors;->mBadProcesses:Lcom/android/internal/app/ProcessMap;

    .line 160
    monitor-exit v0

    .line 161
    return-void

    .line 160
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method scheduleAppCrashLocked(IILjava/lang/String;ILjava/lang/String;ZI)V
    .locals 6
    .param p1, "uid"    # I
    .param p2, "initialPid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "userId"    # I
    .param p5, "message"    # Ljava/lang/String;
    .param p6, "force"    # Z
    .param p7, "exceptionTypeId"    # I

    .line 493
    const/4 v0, 0x0

    .line 499
    .local v0, "proc":Lcom/android/server/am/ProcessRecord;
    iget-object v1, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter v1

    .line 500
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService$PidMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 501
    iget-object v3, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    invoke-virtual {v3, v2}, Lcom/android/server/am/ActivityManagerService$PidMap;->valueAt(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v3

    .line 502
    .local v3, "p":Lcom/android/server/am/ProcessRecord;
    if-ltz p1, :cond_0

    iget v4, v3, Lcom/android/server/am/ProcessRecord;->uid:I

    if-eq v4, p1, :cond_0

    .line 503
    goto :goto_1

    .line 505
    :cond_0
    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v4

    if-ne v4, p2, :cond_1

    .line 506
    move-object v0, v3

    .line 507
    goto :goto_2

    .line 509
    :cond_1
    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v4

    invoke-virtual {v4, p3}, Lcom/android/server/am/PackageList;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    if-ltz p4, :cond_2

    iget v4, v3, Lcom/android/server/am/ProcessRecord;->userId:I

    if-ne v4, p4, :cond_3

    .line 511
    :cond_2
    move-object v0, v3

    .line 500
    .end local v3    # "p":Lcom/android/server/am/ProcessRecord;
    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 514
    .end local v2    # "i":I
    :cond_4
    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 516
    if-nez v0, :cond_5

    .line 517
    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "crashApplication: nothing for uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " initialPid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " packageName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " userId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    return-void

    .line 524
    :cond_5
    invoke-virtual {v0, p5, p7}, Lcom/android/server/am/ProcessRecord;->scheduleCrashLocked(Ljava/lang/String;I)V

    .line 525
    if-eqz p6, :cond_6

    .line 528
    move-object v1, v0

    .line 529
    .local v1, "p":Lcom/android/server/am/ProcessRecord;
    iget-object v2, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    new-instance v3, Lcom/android/server/am/AppErrors$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, v1}, Lcom/android/server/am/AppErrors$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/am/AppErrors;Lcom/android/server/am/ProcessRecord;)V

    const-wide/16 v4, 0x1388

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/am/ActivityManagerService$MainHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 541
    .end local v1    # "p":Lcom/android/server/am/ProcessRecord;
    :cond_6
    return-void

    .line 514
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method
