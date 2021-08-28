.class Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
.super Ljava/lang/Object;
.source "StatsPullAtomService.java"

# interfaces
.implements Landroid/app/StatsManager$StatsPullAtomCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/stats/pull/StatsPullAtomService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StatsPullAtomCallbackImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/stats/pull/StatsPullAtomService;


# direct methods
.method private constructor <init>(Lcom/android/server/stats/pull/StatsPullAtomService;)V
    .locals 0

    .line 465
    iput-object p1, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/stats/pull/StatsPullAtomService;Lcom/android/server/stats/pull/StatsPullAtomService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/stats/pull/StatsPullAtomService;
    .param p2, "x1"    # Lcom/android/server/stats/pull/StatsPullAtomService$1;

    .line 465
    invoke-direct {p0, p1}, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;-><init>(Lcom/android/server/stats/pull/StatsPullAtomService;)V

    return-void
.end method


# virtual methods
.method public onPullAtom(ILjava/util/List;)I
    .locals 5
    .param p1, "atomTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 468
    .local p2, "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    const-wide/32 v0, 0x80000

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 469
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "StatsPull-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 472
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 738
    :pswitch_0
    :try_start_0
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    goto/16 :goto_0

    .line 568
    :pswitch_1
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullVmStat(ILjava/util/List;)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_39

    .line 741
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 568
    return v2

    .line 723
    :pswitch_2
    :try_start_1
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->access$5600(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_39

    .line 724
    :try_start_2
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullInstalledIncrementalPackagesLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 741
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 724
    return v3

    .line 725
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_4
    throw v3

    .line 564
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :pswitch_3
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullProcessDmabufMemory(ILjava/util/List;)I

    move-result v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_39

    .line 741
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 564
    return v2

    .line 736
    :pswitch_4
    :try_start_5
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullKeystoreAtoms(ILjava/util/List;)I

    move-result v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_39

    .line 741
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 736
    return v2

    .line 679
    :pswitch_5
    :try_start_6
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->access$4600(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_39

    .line 680
    :try_start_7
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullTimeZoneDetectorStateLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 741
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 680
    return v3

    .line 681
    :catchall_1
    move-exception v3

    :try_start_8
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_9
    throw v3

    .line 510
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :pswitch_6
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullCpuCyclesPerThreadGroupCluster(ILjava/util/List;)I

    move-result v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_39

    .line 741
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 510
    return v2

    .line 502
    :pswitch_7
    :try_start_a
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->access$600(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_39

    .line 503
    :try_start_b
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullCpuCyclesPerUidClusterLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 741
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 503
    return v3

    .line 504
    :catchall_2
    move-exception v3

    :try_start_c
    monitor-exit v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_d
    throw v3

    .line 492
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :pswitch_8
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->access$400(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_39

    .line 493
    :try_start_e
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullCpuTimePerClusterFreqLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    .line 741
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 493
    return v3

    .line 494
    :catchall_3
    move-exception v3

    :try_start_f
    monitor-exit v2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_10
    throw v3

    .line 566
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :pswitch_9
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullSystemMemory(ILjava/util/List;)I

    move-result v2
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_39

    .line 741
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 566
    return v2

    .line 719
    :pswitch_a
    :try_start_11
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->access$5500(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_39

    .line 720
    :try_start_12
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullSettingsStatsLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    .line 741
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 720
    return v3

    .line 721
    :catchall_4
    move-exception v3

    :try_start_13
    monitor-exit v2
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_4

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_14
    throw v3

    .line 715
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :pswitch_b
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->access$5400(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_39

    .line 716
    :try_start_15
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullAttributedAppOpsLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_5

    .line 741
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 716
    return v3

    .line 717
    :catchall_5
    move-exception v3

    :try_start_16
    monitor-exit v2
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_5

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_17
    throw v3

    .line 556
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :pswitch_c
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->access$1800(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_39

    .line 557
    :try_start_18
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullIonHeapSizeLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_6

    .line 741
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 557
    return v3

    .line 558
    :catchall_6
    move-exception v3

    :try_start_19
    monitor-exit v2
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_6

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_1a
    throw v3

    .line 699
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :pswitch_d
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->access$5100(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_39

    .line 700
    :try_start_1b
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullRuntimeAppOpAccessMessageLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_7

    .line 741
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 700
    return v3

    .line 701
    :catchall_7
    move-exception v3

    :try_start_1c
    monitor-exit v2
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_7

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_1d
    throw v3

    .line 703
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :pswitch_e
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->access$5200(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_39

    .line 704
    :try_start_1e
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullNotificationRemoteViewsLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_8

    .line 741
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 704
    return v3

    .line 705
    :catchall_8
    move-exception v3

    :try_start_1f
    monitor-exit v2
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_8

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_20
    throw v3

    .line 548
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :pswitch_f
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->access$1600(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_39

    .line 549
    :try_start_21
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullProcessMemorySnapshotLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_9

    .line 741
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 549
    return v3

    .line 550
    :catchall_9
    move-exception v3

    :try_start_22
    monitor-exit v2
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_9

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_23
    throw v3

    .line 560
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :pswitch_10
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->access$1900(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_39

    .line 561
    :try_start_24
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullProcessSystemIonHeapSizeLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_a

    .line 741
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 561
    return v3

    .line 562
    :catchall_a
    move-exception v3

    :try_start_25
    monitor-exit v2
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_a

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_26
    throw v3

    .line 695
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :pswitch_11
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->access$5000(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_39

    .line 696
    :try_start_27
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullAppOpsLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_b

    .line 741
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 696
    return v3

    .line 697
    :catchall_b
    move-exception v3

    :try_start_28
    monitor-exit v2
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_b

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_29
    throw v3

    .line 574
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :pswitch_12
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->access$2100(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_39

    .line 575
    :try_start_2a
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullCooldownDeviceLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_c

    .line 741
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 575
    return v3

    .line 576
    :catchall_c
    move-exception v3

    :try_start_2b
    monitor-exit v2
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_c

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_2c
    throw v3

    .line 691
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :pswitch_13
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->access$4900(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_39

    .line 692
    :try_start_2d
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullFaceSettingsLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_d

    .line 741
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 692
    return v3

    .line 693
    :catchall_d
    move-exception v3

    :try_start_2e
    monitor-exit v2
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_d

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_2f
    throw v3

    .line 687
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :pswitch_14
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->access$4800(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_39

    .line 688
    :try_start_30
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullAppsOnExternalStorageInfoLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_e

    .line 741
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 688
    return v3

    .line 689
    :catchall_e
    move-exception v3

    :try_start_31
    monitor-exit v2
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_e

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_32
    throw v3

    .line 552
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :pswitch_15
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->access$1700(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_39

    .line 553
    :try_start_33
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullSystemIonHeapSizeLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_f

    .line 741
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 553
    return v3

    .line 554
    :catchall_f
    move-exception v3

    :try_start_34
    monitor-exit v2
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_f

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_35
    throw v3

    .line 683
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :pswitch_16
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->access$4700(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_35
    .catchall {:try_start_35 .. :try_end_35} :catchall_39

    .line 684
    :try_start_36
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullExternalStorageInfoLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_36
    .catchall {:try_start_36 .. :try_end_36} :catchall_10

    .line 741
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 684
    return v3

    .line 685
    :catchall_10
    move-exception v3

    :try_start_37
    monitor-exit v2
    :try_end_37
    .catchall {:try_start_37 .. :try_end_37} :catchall_10

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_38
    throw v3

    .line 675
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :pswitch_17
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->access$4500(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_38
    .catchall {:try_start_38 .. :try_end_38} :catchall_39

    .line 676
    :try_start_39
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullTimeZoneDataInfoLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_39
    .catchall {:try_start_39 .. :try_end_39} :catchall_11

    .line 741
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 676
    return v3

    .line 677
    :catchall_11
    move-exception v3

    :try_start_3a
    monitor-exit v2
    :try_end_3a
    .catchall {:try_start_3a .. :try_end_3a} :catchall_11

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_3b
    throw v3

    .line 671
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :pswitch_18
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->access$4400(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_3b
    .catchall {:try_start_3b .. :try_end_3b} :catchall_39

    .line 672
    :try_start_3c
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullDangerousPermissionStateLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_3c
    .catchall {:try_start_3c .. :try_end_3c} :catchall_12

    .line 741
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 672
    return v3

    .line 673
    :catchall_12
    move-exception v3

    :try_start_3d
    monitor-exit v2
    :try_end_3d
    .catchall {:try_start_3d .. :try_end_3d} :catchall_12

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_3e
    throw v3

    .line 665
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :pswitch_19
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->access$4300(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_3e
    .catchall {:try_start_3e .. :try_end_3e} :catchall_39

    .line 666
    :try_start_3f
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullRoleHolderLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_3f
    .catchall {:try_start_3f .. :try_end_3f} :catchall_13

    .line 741
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 666
    return v3

    .line 667
    :catchall_13
    move-exception v3

    :try_start_40
    monitor-exit v2
    :try_end_40
    .catchall {:try_start_40 .. :try_end_40} :catchall_13

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_41
    throw v3

    .line 611
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :pswitch_1a
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->access$2900(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_41
    .catchall {:try_start_41 .. :try_end_41} :catchall_39

    .line 612
    :try_start_42
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    const/4 v4, 0x4

    invoke-static {v3, v4, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->access$3000(Lcom/android/server/stats/pull/StatsPullAtomService;IILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_42
    .catchall {:try_start_42 .. :try_end_42} :catchall_14

    .line 741
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 612
    return v3

    .line 614
    :catchall_14
    move-exception v3

    :try_start_43
    monitor-exit v2
    :try_end_43
    .catchall {:try_start_43 .. :try_end_43} :catchall_14

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_44
    throw v3

    .line 657
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :pswitch_1b
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->access$4100(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_44
    .catchall {:try_start_44 .. :try_end_44} :catchall_39

    .line 658
    :try_start_45
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullDebugFailingElapsedClockLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_45
    .catchall {:try_start_45 .. :try_end_45} :catchall_15

    .line 741
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 658
    return v3

    .line 659
    :catchall_15
    move-exception v3

    :try_start_46
    monitor-exit v2
    :try_end_46
    .catchall {:try_start_46 .. :try_end_46} :catchall_15

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_47
    throw v3

    .line 653
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :pswitch_1c
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->access$4000(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_47
    .catchall {:try_start_47 .. :try_end_47} :catchall_39

    .line 654
    :try_start_48
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullDebugElapsedClockLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_48
    .catchall {:try_start_48 .. :try_end_48} :catchall_16

    .line 741
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 654
    return v3

    .line 655
    :catchall_16
    move-exception v3

    :try_start_49
    monitor-exit v2
    :try_end_49
    .catchall {:try_start_49 .. :try_end_49} :catchall_16

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_4a
    throw v3

    .line 661
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :pswitch_1d
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->access$4200(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_4a
    .catchall {:try_start_4a .. :try_end_4a} :catchall_39

    .line 662
    :try_start_4b
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullBuildInformationLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_4b
    .catchall {:try_start_4b .. :try_end_4b} :catchall_17

    .line 741
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 662
    return v3

    .line 663
    :catchall_17
    move-exception v3

    :try_start_4c
    monitor-exit v2
    :try_end_4c
    .catchall {:try_start_4c .. :try_end_4c} :catchall_17

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_4d
    throw v3

    .line 544
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :pswitch_1e
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->access$1500(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_4d
    .catchall {:try_start_4d .. :try_end_4d} :catchall_39

    .line 545
    :try_start_4e
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullProcessMemoryHighWaterMarkLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_4e
    .catchall {:try_start_4e .. :try_end_4e} :catchall_18

    .line 741
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 545
    return v3

    .line 546
    :catchall_18
    move-exception v3

    :try_start_4f
    monitor-exit v2
    :try_end_4f
    .catchall {:try_start_4f .. :try_end_4f} :catchall_18

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_50
    throw v3

    .line 649
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :pswitch_1f
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->access$3900(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_50
    .catchall {:try_start_50 .. :try_end_50} :catchall_39

    .line 650
    :try_start_51
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullDeviceCalculatedPowerBlameOtherLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_51
    .catchall {:try_start_51 .. :try_end_51} :catchall_19

    .line 741
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 650
    return v3

    .line 651
    :catchall_19
    move-exception v3

    :try_start_52
    monitor-exit v2
    :try_end_52
    .catchall {:try_start_52 .. :try_end_52} :catchall_19

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_53
    throw v3

    .line 645
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :pswitch_20
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->access$3800(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_53
    .catchall {:try_start_53 .. :try_end_53} :catchall_39

    .line 646
    :try_start_54
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullDeviceCalculatedPowerBlameUidLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_54
    .catchall {:try_start_54 .. :try_end_54} :catchall_1a

    .line 741
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 646
    return v3

    .line 647
    :catchall_1a
    move-exception v3

    :try_start_55
    monitor-exit v2
    :try_end_55
    .catchall {:try_start_55 .. :try_end_55} :catchall_1a

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_56
    throw v3

    .line 641
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :pswitch_21
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->access$3700(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_56
    .catchall {:try_start_56 .. :try_end_56} :catchall_39

    .line 642
    :try_start_57
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullDeviceCalculatedPowerUseLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_57
    .catchall {:try_start_57 .. :try_end_57} :catchall_1b

    .line 741
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 642
    return v3

    .line 643
    :catchall_1b
    move-exception v3

    :try_start_58
    monitor-exit v2
    :try_end_58
    .catchall {:try_start_58 .. :try_end_58} :catchall_1b

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_59
    throw v3

    .line 637
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :pswitch_22
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->access$3600(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_59
    .catchall {:try_start_59 .. :try_end_59} :catchall_39

    .line 638
    :try_start_5a
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullCpuTimePerThreadFreqLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_5a
    .catchall {:try_start_5a .. :try_end_5a} :catchall_1c

    .line 741
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 638
    return v3

    .line 639
    :catchall_1c
    move-exception v3

    :try_start_5b
    monitor-exit v2
    :try_end_5b
    .catchall {:try_start_5b .. :try_end_5b} :catchall_1c

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_5c
    throw v3

    .line 633
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :pswitch_23
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->access$3500(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_5c
    .catchall {:try_start_5c .. :try_end_5c} :catchall_39

    .line 634
    :try_start_5d
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullProcessCpuTimeLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_5d
    .catchall {:try_start_5d .. :try_end_5d} :catchall_1d

    .line 741
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 634
    return v3

    .line 635
    :catchall_1d
    move-exception v3

    :try_start_5e
    monitor-exit v2
    :try_end_5e
    .catchall {:try_start_5e .. :try_end_5e} :catchall_1d

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_5f
    throw v3

    .line 620
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :pswitch_24
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->access$3100(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_5f
    .catchall {:try_start_5f .. :try_end_5f} :catchall_39

    .line 621
    :try_start_60
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    const/4 v4, 0x2

    invoke-static {v3, v4, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->access$3200(Lcom/android/server/stats/pull/StatsPullAtomService;IILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_60
    .catchall {:try_start_60 .. :try_end_60} :catchall_1e

    .line 741
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 621
    return v3

    .line 623
    :catchall_1e
    move-exception v3

    :try_start_61
    monitor-exit v2
    :try_end_61
    .catchall {:try_start_61 .. :try_end_61} :catchall_1e

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_62
    throw v3

    .line 629
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :pswitch_25
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->access$3400(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_62
    .catchall {:try_start_62 .. :try_end_62} :catchall_39

    .line 630
    :try_start_63
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullPowerProfileLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_63
    .catchall {:try_start_63 .. :try_end_63} :catchall_1f

    .line 741
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 630
    return v3

    .line 631
    :catchall_1f
    move-exception v3

    :try_start_64
    monitor-exit v2
    :try_end_64
    .catchall {:try_start_64 .. :try_end_64} :catchall_1f

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_65
    throw v3

    .line 625
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :pswitch_26
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->access$3300(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_65
    .catchall {:try_start_65 .. :try_end_65} :catchall_39

    .line 626
    :try_start_66
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullDiskIOLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_66
    .catchall {:try_start_66 .. :try_end_66} :catchall_20

    .line 741
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 626
    return v3

    .line 627
    :catchall_20
    move-exception v3

    :try_start_67
    monitor-exit v2
    :try_end_67
    .catchall {:try_start_67 .. :try_end_67} :catchall_20

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_68
    throw v3

    .line 606
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :pswitch_27
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->access$2900(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_68
    .catchall {:try_start_68 .. :try_end_68} :catchall_39

    .line 607
    :try_start_69
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    const/4 v4, 0x1

    invoke-static {v3, v4, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->access$3000(Lcom/android/server/stats/pull/StatsPullAtomService;IILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_69
    .catchall {:try_start_69 .. :try_end_69} :catchall_21

    .line 741
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 607
    return v3

    .line 609
    :catchall_21
    move-exception v3

    :try_start_6a
    monitor-exit v2
    :try_end_6a
    .catchall {:try_start_6a .. :try_end_6a} :catchall_21

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_6b
    throw v3

    .line 616
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :pswitch_28
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->access$3100(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_6b
    .catchall {:try_start_6b .. :try_end_6b} :catchall_39

    .line 617
    :try_start_6c
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    const/16 v4, 0xf

    invoke-static {v3, v4, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->access$3200(Lcom/android/server/stats/pull/StatsPullAtomService;IILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_6c
    .catchall {:try_start_6c .. :try_end_6c} :catchall_22

    .line 741
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 617
    return v3

    .line 618
    :catchall_22
    move-exception v3

    :try_start_6d
    monitor-exit v2
    :try_end_6d
    .catchall {:try_start_6d .. :try_end_6d} :catchall_22

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_6e
    throw v3

    .line 602
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :pswitch_29
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->access$2800(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_6e
    .catchall {:try_start_6e .. :try_end_6e} :catchall_39

    .line 603
    :try_start_6f
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullCategorySizeLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_6f
    .catchall {:try_start_6f .. :try_end_6f} :catchall_23

    .line 741
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 603
    return v3

    .line 604
    :catchall_23
    move-exception v3

    :try_start_70
    monitor-exit v2
    :try_end_70
    .catchall {:try_start_70 .. :try_end_70} :catchall_23

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_71
    throw v3

    .line 598
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :pswitch_2a
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->access$2700(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_71
    .catchall {:try_start_71 .. :try_end_71} :catchall_39

    .line 599
    :try_start_72
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullAppSizeLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_72
    .catchall {:try_start_72 .. :try_end_72} :catchall_24

    .line 741
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 599
    return v3

    .line 600
    :catchall_24
    move-exception v3

    :try_start_73
    monitor-exit v2
    :try_end_73
    .catchall {:try_start_73 .. :try_end_73} :catchall_24

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_74
    throw v3

    .line 594
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :pswitch_2b
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->access$2600(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_74
    .catchall {:try_start_74 .. :try_end_74} :catchall_39

    .line 595
    :try_start_75
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullDirectoryUsageLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_75
    .catchall {:try_start_75 .. :try_end_75} :catchall_25

    .line 741
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 595
    return v3

    .line 596
    :catchall_25
    move-exception v3

    :try_start_76
    monitor-exit v2
    :try_end_76
    .catchall {:try_start_76 .. :try_end_76} :catchall_25

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_77
    throw v3

    .line 590
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :pswitch_2c
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->access$2500(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_77
    .catchall {:try_start_77 .. :try_end_77} :catchall_39

    .line 591
    :try_start_78
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullDiskStatsLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_78
    .catchall {:try_start_78 .. :try_end_78} :catchall_26

    .line 741
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 591
    return v3

    .line 592
    :catchall_26
    move-exception v3

    :try_start_79
    monitor-exit v2
    :try_end_79
    .catchall {:try_start_79 .. :try_end_79} :catchall_26

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_7a
    throw v3

    .line 586
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :pswitch_2d
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->access$2400(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_7a
    .catchall {:try_start_7a .. :try_end_7a} :catchall_39

    .line 587
    :try_start_7b
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullLooperStatsLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_7b
    .catchall {:try_start_7b .. :try_end_7b} :catchall_27

    .line 741
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 587
    return v3

    .line 588
    :catchall_27
    move-exception v3

    :try_start_7c
    monitor-exit v2
    :try_end_7c
    .catchall {:try_start_7c .. :try_end_7c} :catchall_27

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_7d
    throw v3

    .line 582
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :pswitch_2e
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->access$2300(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_7d
    .catchall {:try_start_7d .. :try_end_7d} :catchall_39

    .line 583
    :try_start_7e
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullBinderCallsStatsExceptionsLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_7e
    .catchall {:try_start_7e .. :try_end_7e} :catchall_28

    .line 741
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 583
    return v3

    .line 584
    :catchall_28
    move-exception v3

    :try_start_7f
    monitor-exit v2
    :try_end_7f
    .catchall {:try_start_7f .. :try_end_7f} :catchall_28

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_80
    throw v3

    .line 578
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :pswitch_2f
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->access$2200(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_80
    .catchall {:try_start_80 .. :try_end_80} :catchall_39

    .line 579
    :try_start_81
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullBinderCallsStatsLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_81
    .catchall {:try_start_81 .. :try_end_81} :catchall_29

    .line 741
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 579
    return v3

    .line 580
    :catchall_29
    move-exception v3

    :try_start_82
    monitor-exit v2
    :try_end_82
    .catchall {:try_start_82 .. :try_end_82} :catchall_29

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_83
    throw v3

    .line 570
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :pswitch_30
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->access$2000(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_83
    .catchall {:try_start_83 .. :try_end_83} :catchall_39

    .line 571
    :try_start_84
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullTemperatureLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_84
    .catchall {:try_start_84 .. :try_end_84} :catchall_2a

    .line 741
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 571
    return v3

    .line 572
    :catchall_2a
    move-exception v3

    :try_start_85
    monitor-exit v2
    :try_end_85
    .catchall {:try_start_85 .. :try_end_85} :catchall_2a

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_86
    throw v3

    .line 711
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :pswitch_31
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->access$5300(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_86
    .catchall {:try_start_86 .. :try_end_86} :catchall_39

    .line 712
    :try_start_87
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullHealthHalLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_87
    .catchall {:try_start_87 .. :try_end_87} :catchall_2b

    .line 741
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 712
    return v3

    .line 713
    :catchall_2b
    move-exception v3

    :try_start_88
    monitor-exit v2
    :try_end_88
    .catchall {:try_start_88 .. :try_end_88} :catchall_2b

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_89
    throw v3

    .line 516
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :pswitch_32
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->access$800(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_89
    .catchall {:try_start_89 .. :try_end_89} :catchall_39

    .line 517
    :try_start_8a
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullCpuClusterTimeLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_8a
    .catchall {:try_start_8a .. :try_end_8a} :catchall_2c

    .line 741
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 517
    return v3

    .line 518
    :catchall_2c
    move-exception v3

    :try_start_8b
    monitor-exit v2
    :try_end_8b
    .catchall {:try_start_8b .. :try_end_8b} :catchall_2c

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_8c
    throw v3

    .line 512
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :pswitch_33
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->access$700(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_8c
    .catchall {:try_start_8c .. :try_end_8c} :catchall_39

    .line 513
    :try_start_8d
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullCpuActiveTimeLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_8d
    .catchall {:try_start_8d .. :try_end_8d} :catchall_2d

    .line 741
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 513
    return v3

    .line 514
    :catchall_2d
    move-exception v3

    :try_start_8e
    monitor-exit v2
    :try_end_8e
    .catchall {:try_start_8e .. :try_end_8e} :catchall_2d

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_8f
    throw v3

    .line 536
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :pswitch_34
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->access$1300(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_8f
    .catchall {:try_start_8f .. :try_end_8f} :catchall_39

    .line 537
    :try_start_90
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullSystemUptimeLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_90
    .catchall {:try_start_90 .. :try_end_90} :catchall_2e

    .line 741
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 537
    return v3

    .line 538
    :catchall_2e
    move-exception v3

    :try_start_91
    monitor-exit v2
    :try_end_91
    .catchall {:try_start_91 .. :try_end_91} :catchall_2e

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_92
    throw v3

    .line 532
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :pswitch_35
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->access$1200(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_92
    .catchall {:try_start_92 .. :try_end_92} :catchall_39

    .line 533
    :try_start_93
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullSystemElapsedRealtimeLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_93
    .catchall {:try_start_93 .. :try_end_93} :catchall_2f

    .line 741
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 533
    return v3

    .line 534
    :catchall_2f
    move-exception v3

    :try_start_94
    monitor-exit v2
    :try_end_94
    .catchall {:try_start_94 .. :try_end_94} :catchall_2f

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_95
    throw v3

    .line 540
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :pswitch_36
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->access$1400(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_95
    .catchall {:try_start_95 .. :try_end_95} :catchall_39

    .line 541
    :try_start_96
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullProcessMemoryStateLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_96
    .catchall {:try_start_96 .. :try_end_96} :catchall_30

    .line 741
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 541
    return v3

    .line 542
    :catchall_30
    move-exception v3

    :try_start_97
    monitor-exit v2
    :try_end_97
    .catchall {:try_start_97 .. :try_end_97} :catchall_30

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_98
    throw v3

    .line 524
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :pswitch_37
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->access$1000(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_98
    .catchall {:try_start_98 .. :try_end_98} :catchall_39

    .line 525
    :try_start_99
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullModemActivityInfoLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_99
    .catchall {:try_start_99 .. :try_end_99} :catchall_31

    .line 741
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 525
    return v3

    .line 526
    :catchall_31
    move-exception v3

    :try_start_9a
    monitor-exit v2
    :try_end_9a
    .catchall {:try_start_9a .. :try_end_9a} :catchall_31

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_9b
    throw v3

    .line 520
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :pswitch_38
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->access$900(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_9b
    .catchall {:try_start_9b .. :try_end_9b} :catchall_39

    .line 521
    :try_start_9c
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullWifiActivityInfoLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_9c
    .catchall {:try_start_9c .. :try_end_9c} :catchall_32

    .line 741
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 521
    return v3

    .line 522
    :catchall_32
    move-exception v3

    :try_start_9d
    monitor-exit v2
    :try_end_9d
    .catchall {:try_start_9d .. :try_end_9d} :catchall_32

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_9e
    throw v3

    .line 506
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :pswitch_39
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->access$600(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_9e
    .catchall {:try_start_9e .. :try_end_9e} :catchall_39

    .line 507
    :try_start_9f
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullCpuTimePerUidFreqLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_9f
    .catchall {:try_start_9f .. :try_end_9f} :catchall_33

    .line 741
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 507
    return v3

    .line 508
    :catchall_33
    move-exception v3

    :try_start_a0
    monitor-exit v2
    :try_end_a0
    .catchall {:try_start_a0 .. :try_end_a0} :catchall_33

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_a1
    throw v3

    .line 496
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :pswitch_3a
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->access$500(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_a1
    .catchall {:try_start_a1 .. :try_end_a1} :catchall_39

    .line 497
    :try_start_a2
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullCpuTimePerUidLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_a2
    .catchall {:try_start_a2 .. :try_end_a2} :catchall_34

    .line 741
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 497
    return v3

    .line 498
    :catchall_34
    move-exception v3

    :try_start_a3
    monitor-exit v2
    :try_end_a3
    .catchall {:try_start_a3 .. :try_end_a3} :catchall_34

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_a4
    throw v3

    .line 528
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :pswitch_3b
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->access$1100(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_a4
    .catchall {:try_start_a4 .. :try_end_a4} :catchall_39

    .line 529
    :try_start_a5
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullBluetoothActivityInfoLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_a5
    .catchall {:try_start_a5 .. :try_end_a5} :catchall_35

    .line 741
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 529
    return v3

    .line 530
    :catchall_35
    move-exception v3

    :try_start_a6
    monitor-exit v2
    :try_end_a6
    .catchall {:try_start_a6 .. :try_end_a6} :catchall_35

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_a7
    throw v3

    .line 484
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :pswitch_3c
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->access$200(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_a7
    .catchall {:try_start_a7 .. :try_end_a7} :catchall_39

    .line 485
    :try_start_a8
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullBluetoothBytesTransferLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_a8
    .catchall {:try_start_a8 .. :try_end_a8} :catchall_36

    .line 741
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 485
    return v3

    .line 486
    :catchall_36
    move-exception v3

    :try_start_a9
    monitor-exit v2
    :try_end_a9
    .catchall {:try_start_a9 .. :try_end_a9} :catchall_36

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_aa
    throw v3

    .line 488
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :pswitch_3d
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->access$300(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_aa
    .catchall {:try_start_aa .. :try_end_aa} :catchall_39

    .line 489
    :try_start_ab
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullKernelWakelockLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_ab
    .catchall {:try_start_ab .. :try_end_ab} :catchall_37

    .line 741
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 489
    return v3

    .line 490
    :catchall_37
    move-exception v3

    :try_start_ac
    monitor-exit v2
    :try_end_ac
    .catchall {:try_start_ac .. :try_end_ac} :catchall_37

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_ad
    throw v3

    .line 480
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :pswitch_3e
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->access$000(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_ad
    .catchall {:try_start_ad .. :try_end_ad} :catchall_39

    .line 481
    :try_start_ae
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->access$100(Lcom/android/server/stats/pull/StatsPullAtomService;ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_ae
    .catchall {:try_start_ae .. :try_end_ae} :catchall_38

    .line 741
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 481
    return v3

    .line 482
    :catchall_38
    move-exception v3

    :try_start_af
    monitor-exit v2
    :try_end_af
    .catchall {:try_start_af .. :try_end_af} :catchall_38

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_b0
    throw v3

    .line 741
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :catchall_39
    move-exception v2

    goto :goto_1

    .line 738
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown tagId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    throw v2
    :try_end_b0
    .catchall {:try_start_b0 .. :try_end_b0} :catchall_39

    .line 741
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 742
    throw v2

    nop

    :pswitch_data_0
    .packed-switch 0x2710
        :pswitch_3e
        :pswitch_3e
        :pswitch_3e
        :pswitch_3e
        :pswitch_3d
        :pswitch_0
        :pswitch_3c
        :pswitch_3b
        :pswitch_0
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_0
        :pswitch_31
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_31
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_0
        :pswitch_22
        :pswitch_0
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_31
        :pswitch_1d
        :pswitch_31
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_0
        :pswitch_17
        :pswitch_16
        :pswitch_0
        :pswitch_0
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_0
        :pswitch_0
        :pswitch_f
        :pswitch_0
        :pswitch_e
        :pswitch_18
        :pswitch_0
        :pswitch_d
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_0
        :pswitch_3e
        :pswitch_3e
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_3e
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method
