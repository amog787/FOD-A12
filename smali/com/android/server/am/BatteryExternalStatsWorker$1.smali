.class Lcom/android/server/am/BatteryExternalStatsWorker$1;
.super Ljava/lang/Object;
.source "BatteryExternalStatsWorker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/BatteryExternalStatsWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/BatteryExternalStatsWorker;


# direct methods
.method constructor <init>(Lcom/android/server/am/BatteryExternalStatsWorker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/BatteryExternalStatsWorker;

    .line 425
    iput-object p1, p0, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 20

    .line 436
    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    monitor-enter v2

    .line 437
    :try_start_0
    iget-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-static {v0}, Lcom/android/server/am/BatteryExternalStatsWorker;->access$000(Lcom/android/server/am/BatteryExternalStatsWorker;)I

    move-result v0

    move v10, v0

    .line 438
    .local v10, "updateFlags":I
    iget-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-static {v0}, Lcom/android/server/am/BatteryExternalStatsWorker;->access$100(Lcom/android/server/am/BatteryExternalStatsWorker;)Ljava/lang/String;

    move-result-object v4

    .line 439
    .local v4, "reason":Ljava/lang/String;
    iget-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-static {v0}, Lcom/android/server/am/BatteryExternalStatsWorker;->access$200(Lcom/android/server/am/BatteryExternalStatsWorker;)Landroid/util/IntArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IntArray;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-static {v0}, Lcom/android/server/am/BatteryExternalStatsWorker;->access$200(Lcom/android/server/am/BatteryExternalStatsWorker;)Landroid/util/IntArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IntArray;->toArray()[I

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    :goto_0
    move-object v11, v0

    .line 440
    .local v11, "uidsToRemove":[I
    iget-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-static {v0}, Lcom/android/server/am/BatteryExternalStatsWorker;->access$300(Lcom/android/server/am/BatteryExternalStatsWorker;)Z

    move-result v6

    .line 441
    .local v6, "onBattery":Z
    iget-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-static {v0}, Lcom/android/server/am/BatteryExternalStatsWorker;->access$400(Lcom/android/server/am/BatteryExternalStatsWorker;)Z

    move-result v7

    .line 442
    .local v7, "onBatteryScreenOff":Z
    iget-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-static {v0}, Lcom/android/server/am/BatteryExternalStatsWorker;->access$500(Lcom/android/server/am/BatteryExternalStatsWorker;)I

    move-result v8

    .line 443
    .local v8, "screenState":I
    iget-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-static {v0}, Lcom/android/server/am/BatteryExternalStatsWorker;->access$600(Lcom/android/server/am/BatteryExternalStatsWorker;)Z

    move-result v9

    .line 444
    .local v9, "useLatestStates":Z
    iget-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    const/4 v12, 0x0

    invoke-static {v0, v12}, Lcom/android/server/am/BatteryExternalStatsWorker;->access$002(Lcom/android/server/am/BatteryExternalStatsWorker;I)I

    .line 445
    iget-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/android/server/am/BatteryExternalStatsWorker;->access$102(Lcom/android/server/am/BatteryExternalStatsWorker;Ljava/lang/String;)Ljava/lang/String;

    .line 446
    iget-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-static {v0}, Lcom/android/server/am/BatteryExternalStatsWorker;->access$200(Lcom/android/server/am/BatteryExternalStatsWorker;)Landroid/util/IntArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IntArray;->clear()V

    .line 447
    iget-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-static {v0, v3}, Lcom/android/server/am/BatteryExternalStatsWorker;->access$702(Lcom/android/server/am/BatteryExternalStatsWorker;Ljava/util/concurrent/Future;)Ljava/util/concurrent/Future;

    .line 448
    iget-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    const/4 v3, 0x1

    invoke-static {v0, v3}, Lcom/android/server/am/BatteryExternalStatsWorker;->access$602(Lcom/android/server/am/BatteryExternalStatsWorker;Z)Z

    .line 449
    const/16 v13, 0x3f

    if-ne v10, v13, :cond_1

    .line 450
    iget-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-static {v0}, Lcom/android/server/am/BatteryExternalStatsWorker;->access$800(Lcom/android/server/am/BatteryExternalStatsWorker;)V

    .line 452
    :cond_1
    and-int/lit8 v0, v10, 0x1

    if-eqz v0, :cond_2

    .line 453
    iget-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-virtual {v0}, Lcom/android/server/am/BatteryExternalStatsWorker;->cancelCpuSyncDueToWakelockChange()V

    .line 455
    :cond_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 458
    :try_start_1
    iget-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-static {v0}, Lcom/android/server/am/BatteryExternalStatsWorker;->access$900(Lcom/android/server/am/BatteryExternalStatsWorker;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 463
    :try_start_2
    iget-object v3, v1, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    move v5, v10

    invoke-static/range {v3 .. v9}, Lcom/android/server/am/BatteryExternalStatsWorker;->access$1000(Lcom/android/server/am/BatteryExternalStatsWorker;Ljava/lang/String;IZZIZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 469
    nop

    .line 470
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 472
    and-int/lit8 v0, v10, 0x1

    if-eqz v0, :cond_3

    .line 473
    :try_start_4
    iget-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-static {v0}, Lcom/android/server/am/BatteryExternalStatsWorker;->access$1100(Lcom/android/server/am/BatteryExternalStatsWorker;)Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->copyFromAllUidsCpuTimes()V

    .line 477
    :cond_3
    iget-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-static {v0}, Lcom/android/server/am/BatteryExternalStatsWorker;->access$1100(Lcom/android/server/am/BatteryExternalStatsWorker;)Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v2

    monitor-enter v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 478
    :try_start_5
    array-length v0, v11

    move v3, v12

    :goto_1
    if-ge v3, v0, :cond_4

    aget v5, v11, v3

    .line 479
    .local v5, "uid":I
    const/16 v14, 0x2b

    const/4 v15, -0x1

    invoke-static {v14, v15, v5, v12}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII)V

    .line 481
    iget-object v14, v1, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-static {v14}, Lcom/android/server/am/BatteryExternalStatsWorker;->access$1100(Lcom/android/server/am/BatteryExternalStatsWorker;)Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v14

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v16

    .line 482
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v18

    .line 481
    move v15, v5

    invoke-virtual/range {v14 .. v19}, Lcom/android/internal/os/BatteryStatsImpl;->removeIsolatedUidLocked(IJJ)V

    .line 478
    .end local v5    # "uid":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 484
    :cond_4
    iget-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-static {v0}, Lcom/android/server/am/BatteryExternalStatsWorker;->access$1100(Lcom/android/server/am/BatteryExternalStatsWorker;)Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->clearPendingRemovedUids()V

    .line 485
    monitor-exit v2

    .line 488
    goto :goto_2

    .line 485
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .end local v4    # "reason":Ljava/lang/String;
    .end local v6    # "onBattery":Z
    .end local v7    # "onBatteryScreenOff":Z
    .end local v8    # "screenState":I
    .end local v9    # "useLatestStates":Z
    .end local v10    # "updateFlags":I
    .end local v11    # "uidsToRemove":[I
    .end local p0    # "this":Lcom/android/server/am/BatteryExternalStatsWorker$1;
    :try_start_6
    throw v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 466
    .restart local v4    # "reason":Ljava/lang/String;
    .restart local v6    # "onBattery":Z
    .restart local v7    # "onBatteryScreenOff":Z
    .restart local v8    # "screenState":I
    .restart local v9    # "useLatestStates":Z
    .restart local v10    # "updateFlags":I
    .restart local v11    # "uidsToRemove":[I
    .restart local p0    # "this":Lcom/android/server/am/BatteryExternalStatsWorker$1;
    :catchall_1
    move-exception v0

    .line 469
    nop

    .end local v4    # "reason":Ljava/lang/String;
    .end local v6    # "onBattery":Z
    .end local v7    # "onBatteryScreenOff":Z
    .end local v8    # "screenState":I
    .end local v9    # "useLatestStates":Z
    .end local v10    # "updateFlags":I
    .end local v11    # "uidsToRemove":[I
    .end local p0    # "this":Lcom/android/server/am/BatteryExternalStatsWorker$1;
    :try_start_7
    throw v0

    .line 470
    .restart local v4    # "reason":Ljava/lang/String;
    .restart local v6    # "onBattery":Z
    .restart local v7    # "onBatteryScreenOff":Z
    .restart local v8    # "screenState":I
    .restart local v9    # "useLatestStates":Z
    .restart local v10    # "updateFlags":I
    .restart local v11    # "uidsToRemove":[I
    .restart local p0    # "this":Lcom/android/server/am/BatteryExternalStatsWorker$1;
    :catchall_2
    move-exception v0

    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .end local v4    # "reason":Ljava/lang/String;
    .end local v6    # "onBattery":Z
    .end local v7    # "onBatteryScreenOff":Z
    .end local v8    # "screenState":I
    .end local v9    # "useLatestStates":Z
    .end local v10    # "updateFlags":I
    .end local v11    # "uidsToRemove":[I
    .end local p0    # "this":Lcom/android/server/am/BatteryExternalStatsWorker$1;
    :try_start_8
    throw v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 486
    .restart local v4    # "reason":Ljava/lang/String;
    .restart local v6    # "onBattery":Z
    .restart local v7    # "onBatteryScreenOff":Z
    .restart local v8    # "screenState":I
    .restart local v9    # "useLatestStates":Z
    .restart local v10    # "updateFlags":I
    .restart local v11    # "uidsToRemove":[I
    .restart local p0    # "this":Lcom/android/server/am/BatteryExternalStatsWorker$1;
    :catch_0
    move-exception v0

    .line 487
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "BatteryExternalStatsWorker"

    const-string v3, "Error updating external stats: "

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 490
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    and-int/lit8 v0, v10, 0x3f

    if-ne v0, v13, :cond_5

    .line 491
    iget-object v2, v1, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    monitor-enter v2

    .line 492
    :try_start_9
    iget-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    invoke-static {v0, v12, v13}, Lcom/android/server/am/BatteryExternalStatsWorker;->access$1202(Lcom/android/server/am/BatteryExternalStatsWorker;J)J

    .line 493
    monitor-exit v2

    goto :goto_3

    :catchall_3
    move-exception v0

    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    throw v0

    .line 495
    :cond_5
    :goto_3
    return-void

    .line 455
    .end local v4    # "reason":Ljava/lang/String;
    .end local v6    # "onBattery":Z
    .end local v7    # "onBatteryScreenOff":Z
    .end local v8    # "screenState":I
    .end local v9    # "useLatestStates":Z
    .end local v10    # "updateFlags":I
    .end local v11    # "uidsToRemove":[I
    :catchall_4
    move-exception v0

    :try_start_a
    monitor-exit v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    throw v0
.end method
