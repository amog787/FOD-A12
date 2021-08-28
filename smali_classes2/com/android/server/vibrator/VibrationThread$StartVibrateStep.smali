.class final Lcom/android/server/vibrator/VibrationThread$StartVibrateStep;
.super Lcom/android/server/vibrator/VibrationThread$Step;
.source "VibrationThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vibrator/VibrationThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "StartVibrateStep"
.end annotation


# instance fields
.field public final currentIndex:I

.field private mVibratorsOnMaxDuration:J

.field public final sequentialEffect:Landroid/os/CombinedVibration$Sequential;

.field final synthetic this$0:Lcom/android/server/vibrator/VibrationThread;


# direct methods
.method constructor <init>(Lcom/android/server/vibrator/VibrationThread;JLandroid/os/CombinedVibration$Sequential;I)V
    .locals 0
    .param p2, "startTime"    # J
    .param p4, "effect"    # Landroid/os/CombinedVibration$Sequential;
    .param p5, "index"    # I

    .line 589
    iput-object p1, p0, Lcom/android/server/vibrator/VibrationThread$StartVibrateStep;->this$0:Lcom/android/server/vibrator/VibrationThread;

    .line 590
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/vibrator/VibrationThread$Step;-><init>(Lcom/android/server/vibrator/VibrationThread;J)V

    .line 591
    iput-object p4, p0, Lcom/android/server/vibrator/VibrationThread$StartVibrateStep;->sequentialEffect:Landroid/os/CombinedVibration$Sequential;

    .line 592
    iput p5, p0, Lcom/android/server/vibrator/VibrationThread$StartVibrateStep;->currentIndex:I

    .line 593
    return-void
.end method

.method constructor <init>(Lcom/android/server/vibrator/VibrationThread;Landroid/os/CombinedVibration$Sequential;)V
    .locals 10
    .param p2, "effect"    # Landroid/os/CombinedVibration$Sequential;

    .line 586
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p2}, Landroid/os/CombinedVibration$Sequential;->getDelays()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    add-long v6, v0, v2

    const/4 v9, 0x0

    move-object v4, p0

    move-object v5, p1

    move-object v8, p2

    invoke-direct/range {v4 .. v9}, Lcom/android/server/vibrator/VibrationThread$StartVibrateStep;-><init>(Lcom/android/server/vibrator/VibrationThread;JLandroid/os/CombinedVibration$Sequential;I)V

    .line 587
    return-void
.end method

.method static synthetic access$900(Lcom/android/server/vibrator/VibrationThread$StartVibrateStep;)Lcom/android/server/vibrator/VibrationThread$Step;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/vibrator/VibrationThread$StartVibrateStep;

    .line 579
    invoke-direct {p0}, Lcom/android/server/vibrator/VibrationThread$StartVibrateStep;->nextStep()Lcom/android/server/vibrator/VibrationThread$Step;

    move-result-object v0

    return-object v0
.end method

.method private createEffectToVibratorMapping(Landroid/os/CombinedVibration;)Lcom/android/server/vibrator/VibrationThread$DeviceEffectMap;
    .locals 3
    .param p1, "effect"    # Landroid/os/CombinedVibration;

    .line 662
    instance-of v0, p1, Landroid/os/CombinedVibration$Mono;

    if-eqz v0, :cond_0

    .line 663
    new-instance v0, Lcom/android/server/vibrator/VibrationThread$DeviceEffectMap;

    iget-object v1, p0, Lcom/android/server/vibrator/VibrationThread$StartVibrateStep;->this$0:Lcom/android/server/vibrator/VibrationThread;

    move-object v2, p1

    check-cast v2, Landroid/os/CombinedVibration$Mono;

    invoke-direct {v0, v1, v2}, Lcom/android/server/vibrator/VibrationThread$DeviceEffectMap;-><init>(Lcom/android/server/vibrator/VibrationThread;Landroid/os/CombinedVibration$Mono;)V

    return-object v0

    .line 665
    :cond_0
    instance-of v0, p1, Landroid/os/CombinedVibration$Stereo;

    if-eqz v0, :cond_1

    .line 666
    new-instance v0, Lcom/android/server/vibrator/VibrationThread$DeviceEffectMap;

    iget-object v1, p0, Lcom/android/server/vibrator/VibrationThread$StartVibrateStep;->this$0:Lcom/android/server/vibrator/VibrationThread;

    move-object v2, p1

    check-cast v2, Landroid/os/CombinedVibration$Stereo;

    invoke-direct {v0, v1, v2}, Lcom/android/server/vibrator/VibrationThread$DeviceEffectMap;-><init>(Lcom/android/server/vibrator/VibrationThread;Landroid/os/CombinedVibration$Stereo;)V

    return-object v0

    .line 668
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private nextStep()Lcom/android/server/vibrator/VibrationThread$Step;
    .locals 12

    .line 649
    iget v0, p0, Lcom/android/server/vibrator/VibrationThread$StartVibrateStep;->currentIndex:I

    add-int/lit8 v0, v0, 0x1

    .line 650
    .local v0, "nextIndex":I
    iget-object v1, p0, Lcom/android/server/vibrator/VibrationThread$StartVibrateStep;->sequentialEffect:Landroid/os/CombinedVibration$Sequential;

    invoke-virtual {v1}, Landroid/os/CombinedVibration$Sequential;->getEffects()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 651
    const/4 v1, 0x0

    return-object v1

    .line 653
    :cond_0
    iget-object v1, p0, Lcom/android/server/vibrator/VibrationThread$StartVibrateStep;->sequentialEffect:Landroid/os/CombinedVibration$Sequential;

    invoke-virtual {v1}, Landroid/os/CombinedVibration$Sequential;->getDelays()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v7, v1

    .line 654
    .local v7, "nextEffectDelay":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    add-long v9, v1, v7

    .line 655
    .local v9, "nextStartTime":J
    new-instance v11, Lcom/android/server/vibrator/VibrationThread$StartVibrateStep;

    iget-object v2, p0, Lcom/android/server/vibrator/VibrationThread$StartVibrateStep;->this$0:Lcom/android/server/vibrator/VibrationThread;

    iget-object v5, p0, Lcom/android/server/vibrator/VibrationThread$StartVibrateStep;->sequentialEffect:Landroid/os/CombinedVibration$Sequential;

    move-object v1, v11

    move-wide v3, v9

    move v6, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/vibrator/VibrationThread$StartVibrateStep;-><init>(Lcom/android/server/vibrator/VibrationThread;JLandroid/os/CombinedVibration$Sequential;I)V

    return-object v11
.end method

.method private startVibrating(Lcom/android/server/vibrator/VibrationThread$DeviceEffectMap;Ljava/util/List;)J
    .locals 22
    .param p1, "effectMapping"    # Lcom/android/server/vibrator/VibrationThread$DeviceEffectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/vibrator/VibrationThread$DeviceEffectMap;",
            "Ljava/util/List<",
            "Lcom/android/server/vibrator/VibrationThread$Step;",
            ">;)J"
        }
    .end annotation

    .line 683
    .local p2, "nextSteps":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/vibrator/VibrationThread$Step;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/vibrator/VibrationThread$DeviceEffectMap;->size()I

    move-result v4

    .line 684
    .local v4, "vibratorCount":I
    const-wide/16 v5, 0x0

    if-nez v4, :cond_0

    .line 686
    return-wide v5

    .line 689
    :cond_0
    new-array v7, v4, [Lcom/android/server/vibrator/VibrationThread$SingleVibratorStep;

    .line 690
    .local v7, "steps":[Lcom/android/server/vibrator/VibrationThread$SingleVibratorStep;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    .line 691
    .local v16, "vibrationStartTime":J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_1

    .line 692
    iget-object v8, v1, Lcom/android/server/vibrator/VibrationThread$StartVibrateStep;->this$0:Lcom/android/server/vibrator/VibrationThread;

    .line 693
    invoke-static {v8}, Lcom/android/server/vibrator/VibrationThread;->access$400(Lcom/android/server/vibrator/VibrationThread;)Landroid/util/SparseArray;

    move-result-object v9

    invoke-virtual {v2, v0}, Lcom/android/server/vibrator/VibrationThread$DeviceEffectMap;->vibratorIdAt(I)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    move-object v11, v9

    check-cast v11, Lcom/android/server/vibrator/VibratorController;

    .line 694
    invoke-virtual {v2, v0}, Lcom/android/server/vibrator/VibrationThread$DeviceEffectMap;->effectAt(I)Landroid/os/VibrationEffect$Composed;

    move-result-object v12

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    .line 692
    move-wide/from16 v9, v16

    invoke-static/range {v8 .. v15}, Lcom/android/server/vibrator/VibrationThread;->access$500(Lcom/android/server/vibrator/VibrationThread;JLcom/android/server/vibrator/VibratorController;Landroid/os/VibrationEffect$Composed;IJ)Lcom/android/server/vibrator/VibrationThread$SingleVibratorStep;

    move-result-object v8

    aput-object v8, v7, v0

    .line 691
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 698
    .end local v0    # "i":I
    :cond_1
    array-length v0, v7

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-ne v0, v9, :cond_2

    .line 700
    aget-object v0, v7, v8

    invoke-direct {v1, v0, v3}, Lcom/android/server/vibrator/VibrationThread$StartVibrateStep;->startVibrating(Lcom/android/server/vibrator/VibrationThread$SingleVibratorStep;Ljava/util/List;)J

    move-result-wide v5

    return-wide v5

    .line 706
    :cond_2
    iget-object v0, v1, Lcom/android/server/vibrator/VibrationThread$StartVibrateStep;->this$0:Lcom/android/server/vibrator/VibrationThread;

    invoke-static {v0}, Lcom/android/server/vibrator/VibrationThread;->access$100(Lcom/android/server/vibrator/VibrationThread;)Ljava/lang/Object;

    move-result-object v10

    monitor-enter v10

    .line 707
    const/4 v11, 0x0

    .line 708
    .local v11, "hasPrepared":Z
    const/4 v12, 0x0

    .line 709
    .local v12, "hasTriggered":Z
    const-wide/16 v13, 0x0

    .line 711
    .local v13, "maxDuration":J
    :try_start_0
    iget-object v0, v1, Lcom/android/server/vibrator/VibrationThread$StartVibrateStep;->this$0:Lcom/android/server/vibrator/VibrationThread;

    invoke-static {v0}, Lcom/android/server/vibrator/VibrationThread;->access$600(Lcom/android/server/vibrator/VibrationThread;)Lcom/android/server/vibrator/VibrationThread$VibrationCallbacks;

    move-result-object v0

    .line 712
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/vibrator/VibrationThread$DeviceEffectMap;->getRequiredSyncCapabilities()J

    move-result-wide v8

    .line 713
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/vibrator/VibrationThread$DeviceEffectMap;->getVibratorIds()[I

    move-result-object v15

    .line 711
    invoke-interface {v0, v8, v9, v15}, Lcom/android/server/vibrator/VibrationThread$VibrationCallbacks;->prepareSyncedVibration(J[I)Z

    move-result v0

    move v11, v0

    .line 715
    array-length v0, v7

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v0, :cond_6

    aget-object v9, v7, v8

    .line 716
    .local v9, "step":Lcom/android/server/vibrator/VibrationThread$SingleVibratorStep;
    invoke-direct {v1, v9, v3}, Lcom/android/server/vibrator/VibrationThread$StartVibrateStep;->startVibrating(Lcom/android/server/vibrator/VibrationThread$SingleVibratorStep;Ljava/util/List;)J

    move-result-wide v18
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-wide/from16 v20, v18

    .line 717
    .local v20, "duration":J
    move-object v15, v7

    move/from16 v18, v8

    move-wide/from16 v7, v20

    .end local v20    # "duration":J
    .local v7, "duration":J
    .local v15, "steps":[Lcom/android/server/vibrator/VibrationThread$SingleVibratorStep;
    cmp-long v19, v7, v5

    if-gez v19, :cond_5

    .line 719
    const-wide/16 v18, -0x1

    move-wide/from16 v13, v18

    .line 731
    if-eqz v11, :cond_3

    if-nez v12, :cond_3

    .line 733
    :try_start_1
    iget-object v0, v1, Lcom/android/server/vibrator/VibrationThread$StartVibrateStep;->this$0:Lcom/android/server/vibrator/VibrationThread;

    invoke-static {v0}, Lcom/android/server/vibrator/VibrationThread;->access$600(Lcom/android/server/vibrator/VibrationThread;)Lcom/android/server/vibrator/VibrationThread$VibrationCallbacks;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/vibrator/VibrationThread$VibrationCallbacks;->cancelSyncedVibration()V

    .line 734
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->clear()V

    goto :goto_3

    .line 735
    :cond_3
    cmp-long v0, v13, v5

    if-gez v0, :cond_4

    .line 738
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v5, 0x1

    sub-int/2addr v0, v5

    .restart local v0    # "i":I
    :goto_2
    if-ltz v0, :cond_4

    .line 739
    invoke-interface {v3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/vibrator/VibrationThread$Step;

    invoke-virtual {v5}, Lcom/android/server/vibrator/VibrationThread$Step;->cancelImmediately()V

    .line 738
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .end local v0    # "i":I
    :cond_4
    :goto_3
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 719
    return-wide v18

    .line 721
    :cond_5
    :try_start_2
    invoke-static {v13, v14, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v19

    move-wide/from16 v13, v19

    .line 715
    .end local v7    # "duration":J
    .end local v9    # "step":Lcom/android/server/vibrator/VibrationThread$SingleVibratorStep;
    add-int/lit8 v8, v18, 0x1

    move-object v7, v15

    goto :goto_1

    .line 726
    .end local v15    # "steps":[Lcom/android/server/vibrator/VibrationThread$SingleVibratorStep;
    .local v7, "steps":[Lcom/android/server/vibrator/VibrationThread$SingleVibratorStep;
    :cond_6
    move-object v15, v7

    .end local v7    # "steps":[Lcom/android/server/vibrator/VibrationThread$SingleVibratorStep;
    .restart local v15    # "steps":[Lcom/android/server/vibrator/VibrationThread$SingleVibratorStep;
    if-eqz v11, :cond_7

    cmp-long v0, v13, v5

    if-lez v0, :cond_7

    .line 727
    iget-object v0, v1, Lcom/android/server/vibrator/VibrationThread$StartVibrateStep;->this$0:Lcom/android/server/vibrator/VibrationThread;

    invoke-static {v0}, Lcom/android/server/vibrator/VibrationThread;->access$600(Lcom/android/server/vibrator/VibrationThread;)Lcom/android/server/vibrator/VibrationThread$VibrationCallbacks;

    move-result-object v0

    iget-object v7, v1, Lcom/android/server/vibrator/VibrationThread$StartVibrateStep;->this$0:Lcom/android/server/vibrator/VibrationThread;

    invoke-static {v7}, Lcom/android/server/vibrator/VibrationThread;->access$700(Lcom/android/server/vibrator/VibrationThread;)Lcom/android/server/vibrator/Vibration;

    move-result-object v7

    iget-wide v7, v7, Lcom/android/server/vibrator/Vibration;->id:J

    invoke-interface {v0, v7, v8}, Lcom/android/server/vibrator/VibrationThread$VibrationCallbacks;->triggerSyncedVibration(J)Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v12, v0

    goto :goto_4

    .line 731
    :catchall_0
    move-exception v0

    goto :goto_7

    .line 729
    :cond_7
    :goto_4
    nop

    .line 731
    if-eqz v11, :cond_8

    if-nez v12, :cond_8

    .line 733
    :try_start_3
    iget-object v0, v1, Lcom/android/server/vibrator/VibrationThread$StartVibrateStep;->this$0:Lcom/android/server/vibrator/VibrationThread;

    invoke-static {v0}, Lcom/android/server/vibrator/VibrationThread;->access$600(Lcom/android/server/vibrator/VibrationThread;)Lcom/android/server/vibrator/VibrationThread$VibrationCallbacks;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/vibrator/VibrationThread$VibrationCallbacks;->cancelSyncedVibration()V

    .line 734
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->clear()V

    goto :goto_6

    .line 735
    :cond_8
    cmp-long v0, v13, v5

    if-gez v0, :cond_9

    .line 738
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v5, 0x1

    sub-int/2addr v0, v5

    .restart local v0    # "i":I
    :goto_5
    if-ltz v0, :cond_9

    .line 739
    invoke-interface {v3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/vibrator/VibrationThread$Step;

    invoke-virtual {v5}, Lcom/android/server/vibrator/VibrationThread$Step;->cancelImmediately()V

    .line 738
    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    .end local v0    # "i":I
    :cond_9
    :goto_6
    monitor-exit v10

    .line 729
    return-wide v13

    .line 731
    .end local v15    # "steps":[Lcom/android/server/vibrator/VibrationThread$SingleVibratorStep;
    .restart local v7    # "steps":[Lcom/android/server/vibrator/VibrationThread$SingleVibratorStep;
    :catchall_1
    move-exception v0

    move-object v15, v7

    .end local v7    # "steps":[Lcom/android/server/vibrator/VibrationThread$SingleVibratorStep;
    .restart local v15    # "steps":[Lcom/android/server/vibrator/VibrationThread$SingleVibratorStep;
    :goto_7
    if-eqz v11, :cond_b

    if-eqz v12, :cond_a

    goto :goto_8

    .line 733
    :cond_a
    iget-object v5, v1, Lcom/android/server/vibrator/VibrationThread$StartVibrateStep;->this$0:Lcom/android/server/vibrator/VibrationThread;

    invoke-static {v5}, Lcom/android/server/vibrator/VibrationThread;->access$600(Lcom/android/server/vibrator/VibrationThread;)Lcom/android/server/vibrator/VibrationThread$VibrationCallbacks;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/server/vibrator/VibrationThread$VibrationCallbacks;->cancelSyncedVibration()V

    .line 734
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->clear()V

    goto :goto_a

    .line 735
    :cond_b
    :goto_8
    cmp-long v5, v13, v5

    if-gez v5, :cond_c

    .line 738
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    .local v5, "i":I
    :goto_9
    if-ltz v5, :cond_c

    .line 739
    invoke-interface {v3, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/vibrator/VibrationThread$Step;

    invoke-virtual {v6}, Lcom/android/server/vibrator/VibrationThread$Step;->cancelImmediately()V

    .line 738
    add-int/lit8 v5, v5, -0x1

    goto :goto_9

    .line 742
    .end local v5    # "i":I
    :cond_c
    :goto_a
    nop

    .end local v4    # "vibratorCount":I
    .end local v15    # "steps":[Lcom/android/server/vibrator/VibrationThread$SingleVibratorStep;
    .end local v16    # "vibrationStartTime":J
    .end local p0    # "this":Lcom/android/server/vibrator/VibrationThread$StartVibrateStep;
    .end local p1    # "effectMapping":Lcom/android/server/vibrator/VibrationThread$DeviceEffectMap;
    .end local p2    # "nextSteps":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/vibrator/VibrationThread$Step;>;"
    throw v0

    .line 743
    .end local v11    # "hasPrepared":Z
    .end local v12    # "hasTriggered":Z
    .end local v13    # "maxDuration":J
    .restart local v4    # "vibratorCount":I
    .restart local v15    # "steps":[Lcom/android/server/vibrator/VibrationThread$SingleVibratorStep;
    .restart local v16    # "vibrationStartTime":J
    .restart local p0    # "this":Lcom/android/server/vibrator/VibrationThread$StartVibrateStep;
    .restart local p1    # "effectMapping":Lcom/android/server/vibrator/VibrationThread$DeviceEffectMap;
    .restart local p2    # "nextSteps":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/vibrator/VibrationThread$Step;>;"
    :catchall_2
    move-exception v0

    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0
.end method

.method private startVibrating(Lcom/android/server/vibrator/VibrationThread$SingleVibratorStep;Ljava/util/List;)J
    .locals 4
    .param p1, "step"    # Lcom/android/server/vibrator/VibrationThread$SingleVibratorStep;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/vibrator/VibrationThread$SingleVibratorStep;",
            "Ljava/util/List<",
            "Lcom/android/server/vibrator/VibrationThread$Step;",
            ">;)J"
        }
    .end annotation

    .line 747
    .local p2, "nextSteps":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/vibrator/VibrationThread$Step;>;"
    invoke-virtual {p1}, Lcom/android/server/vibrator/VibrationThread$SingleVibratorStep;->play()Ljava/util/List;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 748
    invoke-virtual {p1}, Lcom/android/server/vibrator/VibrationThread$SingleVibratorStep;->getVibratorOnDuration()J

    move-result-wide v0

    .line 749
    .local v0, "stepDuration":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 751
    return-wide v0

    .line 754
    :cond_0
    iget-object v2, p1, Lcom/android/server/vibrator/VibrationThread$SingleVibratorStep;->effect:Landroid/os/VibrationEffect$Composed;

    invoke-virtual {v2}, Landroid/os/VibrationEffect$Composed;->getDuration()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    return-wide v2
.end method


# virtual methods
.method public cancel()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/vibrator/VibrationThread$Step;",
            ">;"
        }
    .end annotation

    .line 636
    invoke-static {}, Lcom/android/server/vibrator/VibrationThread;->access$300()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public cancelImmediately()V
    .locals 0

    .line 641
    return-void
.end method

.method public getVibratorOnDuration()J
    .locals 2

    .line 597
    iget-wide v0, p0, Lcom/android/server/vibrator/VibrationThread$StartVibrateStep;->mVibratorsOnMaxDuration:J

    return-wide v0
.end method

.method public play()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/vibrator/VibrationThread$Step;",
            ">;"
        }
    .end annotation

    .line 602
    const-wide/32 v0, 0x800000

    const-string v2, "StartVibrateStep"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 603
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 604
    .local v2, "nextSteps":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/vibrator/VibrationThread$Step;>;"
    const-wide/16 v3, -0x1

    iput-wide v3, p0, Lcom/android/server/vibrator/VibrationThread$StartVibrateStep;->mVibratorsOnMaxDuration:J

    .line 609
    const-wide/16 v3, 0x0

    :try_start_0
    iget-object v5, p0, Lcom/android/server/vibrator/VibrationThread$StartVibrateStep;->sequentialEffect:Landroid/os/CombinedVibration$Sequential;

    invoke-virtual {v5}, Landroid/os/CombinedVibration$Sequential;->getEffects()Ljava/util/List;

    move-result-object v5

    iget v6, p0, Lcom/android/server/vibrator/VibrationThread$StartVibrateStep;->currentIndex:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/CombinedVibration;

    .line 610
    .local v5, "effect":Landroid/os/CombinedVibration;
    invoke-direct {p0, v5}, Lcom/android/server/vibrator/VibrationThread$StartVibrateStep;->createEffectToVibratorMapping(Landroid/os/CombinedVibration;)Lcom/android/server/vibrator/VibrationThread$DeviceEffectMap;

    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 611
    .local v6, "effectMapping":Lcom/android/server/vibrator/VibrationThread$DeviceEffectMap;
    if-nez v6, :cond_2

    .line 613
    nop

    .line 619
    iget-wide v7, p0, Lcom/android/server/vibrator/VibrationThread$StartVibrateStep;->mVibratorsOnMaxDuration:J

    cmp-long v9, v7, v3

    if-ltz v9, :cond_1

    .line 624
    cmp-long v3, v7, v3

    if-lez v3, :cond_0

    new-instance v3, Lcom/android/server/vibrator/VibrationThread$FinishVibrateStep;

    iget-object v4, p0, Lcom/android/server/vibrator/VibrationThread$StartVibrateStep;->this$0:Lcom/android/server/vibrator/VibrationThread;

    invoke-direct {v3, v4, p0}, Lcom/android/server/vibrator/VibrationThread$FinishVibrateStep;-><init>(Lcom/android/server/vibrator/VibrationThread;Lcom/android/server/vibrator/VibrationThread$StartVibrateStep;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/server/vibrator/VibrationThread$StartVibrateStep;->nextStep()Lcom/android/server/vibrator/VibrationThread$Step;

    move-result-object v3

    .line 625
    .local v3, "nextStep":Lcom/android/server/vibrator/VibrationThread$Step;
    :goto_0
    if-eqz v3, :cond_1

    .line 626
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 629
    .end local v3    # "nextStep":Lcom/android/server/vibrator/VibrationThread$Step;
    :cond_1
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 613
    return-object v2

    .line 616
    :cond_2
    :try_start_1
    invoke-direct {p0, v6, v2}, Lcom/android/server/vibrator/VibrationThread$StartVibrateStep;->startVibrating(Lcom/android/server/vibrator/VibrationThread$DeviceEffectMap;Ljava/util/List;)J

    move-result-wide v7

    iput-wide v7, p0, Lcom/android/server/vibrator/VibrationThread$StartVibrateStep;->mVibratorsOnMaxDuration:J

    .line 617
    iget-object v9, p0, Lcom/android/server/vibrator/VibrationThread$StartVibrateStep;->this$0:Lcom/android/server/vibrator/VibrationThread;

    invoke-static {v9, v7, v8}, Lcom/android/server/vibrator/VibrationThread;->access$200(Lcom/android/server/vibrator/VibrationThread;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 619
    .end local v5    # "effect":Landroid/os/CombinedVibration;
    .end local v6    # "effectMapping":Lcom/android/server/vibrator/VibrationThread$DeviceEffectMap;
    iget-wide v5, p0, Lcom/android/server/vibrator/VibrationThread$StartVibrateStep;->mVibratorsOnMaxDuration:J

    cmp-long v7, v5, v3

    if-ltz v7, :cond_4

    .line 624
    cmp-long v3, v5, v3

    if-lez v3, :cond_3

    new-instance v3, Lcom/android/server/vibrator/VibrationThread$FinishVibrateStep;

    iget-object v4, p0, Lcom/android/server/vibrator/VibrationThread$StartVibrateStep;->this$0:Lcom/android/server/vibrator/VibrationThread;

    invoke-direct {v3, v4, p0}, Lcom/android/server/vibrator/VibrationThread$FinishVibrateStep;-><init>(Lcom/android/server/vibrator/VibrationThread;Lcom/android/server/vibrator/VibrationThread$StartVibrateStep;)V

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lcom/android/server/vibrator/VibrationThread$StartVibrateStep;->nextStep()Lcom/android/server/vibrator/VibrationThread$Step;

    move-result-object v3

    .line 625
    .restart local v3    # "nextStep":Lcom/android/server/vibrator/VibrationThread$Step;
    :goto_1
    if-eqz v3, :cond_4

    .line 626
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 629
    .end local v3    # "nextStep":Lcom/android/server/vibrator/VibrationThread$Step;
    :cond_4
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 630
    nop

    .line 631
    return-object v2

    .line 619
    :catchall_0
    move-exception v5

    iget-wide v6, p0, Lcom/android/server/vibrator/VibrationThread$StartVibrateStep;->mVibratorsOnMaxDuration:J

    cmp-long v8, v6, v3

    if-ltz v8, :cond_6

    .line 624
    cmp-long v3, v6, v3

    if-lez v3, :cond_5

    new-instance v3, Lcom/android/server/vibrator/VibrationThread$FinishVibrateStep;

    iget-object v4, p0, Lcom/android/server/vibrator/VibrationThread$StartVibrateStep;->this$0:Lcom/android/server/vibrator/VibrationThread;

    invoke-direct {v3, v4, p0}, Lcom/android/server/vibrator/VibrationThread$FinishVibrateStep;-><init>(Lcom/android/server/vibrator/VibrationThread;Lcom/android/server/vibrator/VibrationThread$StartVibrateStep;)V

    goto :goto_2

    :cond_5
    invoke-direct {p0}, Lcom/android/server/vibrator/VibrationThread$StartVibrateStep;->nextStep()Lcom/android/server/vibrator/VibrationThread$Step;

    move-result-object v3

    .line 625
    .restart local v3    # "nextStep":Lcom/android/server/vibrator/VibrationThread$Step;
    :goto_2
    if-eqz v3, :cond_6

    .line 626
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 629
    .end local v3    # "nextStep":Lcom/android/server/vibrator/VibrationThread$Step;
    :cond_6
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 630
    throw v5
.end method
