.class Lcom/android/server/location/gnss/GnssMetrics$StatsPullAtomCallbackImpl;
.super Ljava/lang/Object;
.source "GnssMetrics.java"

# interfaces
.implements Landroid/app/StatsManager$StatsPullAtomCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/gnss/GnssMetrics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StatsPullAtomCallbackImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/gnss/GnssMetrics;


# direct methods
.method constructor <init>(Lcom/android/server/location/gnss/GnssMetrics;)V
    .locals 0

    .line 607
    iput-object p1, p0, Lcom/android/server/location/gnss/GnssMetrics$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/location/gnss/GnssMetrics;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 608
    return-void
.end method


# virtual methods
.method public onPullAtom(ILjava/util/List;)I
    .locals 38
    .param p1, "atomTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 612
    .local p2, "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v14, p2

    const/16 v2, 0x275a

    if-ne v1, v2, :cond_0

    .line 613
    iget-object v2, v0, Lcom/android/server/location/gnss/GnssMetrics$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/location/gnss/GnssMetrics;

    iget-object v2, v2, Lcom/android/server/location/gnss/GnssMetrics;->mLocationFailureReportsStatistics:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    .line 614
    invoke-virtual {v2}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->getCount()I

    move-result v2

    int-to-long v2, v2

    iget-object v4, v0, Lcom/android/server/location/gnss/GnssMetrics$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/location/gnss/GnssMetrics;

    iget-object v4, v4, Lcom/android/server/location/gnss/GnssMetrics;->mLocationFailureReportsStatistics:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    .line 615
    invoke-virtual {v4}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->getLongSum()J

    move-result-wide v4

    iget-object v6, v0, Lcom/android/server/location/gnss/GnssMetrics$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/location/gnss/GnssMetrics;

    iget-object v6, v6, Lcom/android/server/location/gnss/GnssMetrics;->mTimeToFirstFixMilliSReportsStatistics:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    .line 616
    invoke-virtual {v6}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->getCount()I

    move-result v6

    int-to-long v6, v6

    iget-object v8, v0, Lcom/android/server/location/gnss/GnssMetrics$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/location/gnss/GnssMetrics;

    iget-object v8, v8, Lcom/android/server/location/gnss/GnssMetrics;->mTimeToFirstFixMilliSReportsStatistics:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    .line 617
    invoke-virtual {v8}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->getLongSum()J

    move-result-wide v8

    iget-object v10, v0, Lcom/android/server/location/gnss/GnssMetrics$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/location/gnss/GnssMetrics;

    iget-object v10, v10, Lcom/android/server/location/gnss/GnssMetrics;->mPositionAccuracyMetersReportsStatistics:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    .line 618
    invoke-virtual {v10}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->getCount()I

    move-result v10

    int-to-long v10, v10

    iget-object v12, v0, Lcom/android/server/location/gnss/GnssMetrics$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/location/gnss/GnssMetrics;

    iget-object v12, v12, Lcom/android/server/location/gnss/GnssMetrics;->mPositionAccuracyMetersReportsStatistics:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    .line 619
    invoke-virtual {v12}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->getLongSum()J

    move-result-wide v12

    iget-object v15, v0, Lcom/android/server/location/gnss/GnssMetrics$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/location/gnss/GnssMetrics;

    iget-object v15, v15, Lcom/android/server/location/gnss/GnssMetrics;->mTopFourAverageCn0DbmHzReportsStatistics:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    .line 620
    invoke-virtual {v15}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->getCount()I

    move-result v15

    int-to-long v14, v15

    iget-object v1, v0, Lcom/android/server/location/gnss/GnssMetrics$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/location/gnss/GnssMetrics;

    iget-object v1, v1, Lcom/android/server/location/gnss/GnssMetrics;->mTopFourAverageCn0DbmHzReportsStatistics:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    .line 621
    invoke-virtual {v1}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->getLongSum()J

    move-result-wide v16

    iget-object v1, v0, Lcom/android/server/location/gnss/GnssMetrics$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/location/gnss/GnssMetrics;

    iget-object v1, v1, Lcom/android/server/location/gnss/GnssMetrics;->mL5TopFourAverageCn0DbmHzReportsStatistics:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    .line 622
    invoke-virtual {v1}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->getCount()I

    move-result v1

    move-wide/from16 v30, v2

    int-to-long v1, v1

    move-wide/from16 v18, v1

    iget-object v1, v0, Lcom/android/server/location/gnss/GnssMetrics$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/location/gnss/GnssMetrics;

    iget-object v1, v1, Lcom/android/server/location/gnss/GnssMetrics;->mL5TopFourAverageCn0DbmHzReportsStatistics:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    .line 623
    invoke-virtual {v1}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->getLongSum()J

    move-result-wide v20

    iget-object v1, v0, Lcom/android/server/location/gnss/GnssMetrics$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/location/gnss/GnssMetrics;

    iget-wide v1, v1, Lcom/android/server/location/gnss/GnssMetrics;->mSvStatusReports:J

    move-wide/from16 v22, v1

    iget-object v1, v0, Lcom/android/server/location/gnss/GnssMetrics$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/location/gnss/GnssMetrics;

    iget-wide v1, v1, Lcom/android/server/location/gnss/GnssMetrics;->mSvStatusReportsUsedInFix:J

    move-wide/from16 v24, v1

    iget-object v1, v0, Lcom/android/server/location/gnss/GnssMetrics$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/location/gnss/GnssMetrics;

    iget-wide v1, v1, Lcom/android/server/location/gnss/GnssMetrics;->mL5SvStatusReports:J

    move-wide/from16 v26, v1

    iget-object v1, v0, Lcom/android/server/location/gnss/GnssMetrics$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/location/gnss/GnssMetrics;

    iget-wide v1, v1, Lcom/android/server/location/gnss/GnssMetrics;->mL5SvStatusReportsUsedInFix:J

    move-wide/from16 v28, v1

    .line 613
    move/from16 v2, p1

    move/from16 v1, p1

    move v0, v2

    move-wide/from16 v2, v30

    invoke-static/range {v1 .. v29}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IJJJJJJJJJJJJJJ)Landroid/util/StatsEvent;

    move-result-object v1

    move-object/from16 v14, p2

    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v2, v14

    const/16 v36, 0x0

    goto/16 :goto_1

    .line 626
    :cond_0
    move v0, v1

    const/16 v1, 0x2775

    if-ne v0, v1, :cond_3

    .line 627
    move v1, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/location/gnss/GnssMetrics$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/location/gnss/GnssMetrics;

    invoke-static {v2}, Lcom/android/server/location/gnss/GnssMetrics;->access$000(Lcom/android/server/location/gnss/GnssMetrics;)Lcom/android/server/location/gnss/hal/GnssNative;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/location/gnss/hal/GnssNative;->requestPowerStats()V

    .line 628
    iget-object v2, v0, Lcom/android/server/location/gnss/GnssMetrics$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/location/gnss/GnssMetrics;

    invoke-static {v2}, Lcom/android/server/location/gnss/GnssMetrics;->access$000(Lcom/android/server/location/gnss/GnssMetrics;)Lcom/android/server/location/gnss/hal/GnssNative;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/location/gnss/hal/GnssNative;->getPowerStats()Lcom/android/server/location/gnss/GnssPowerStats;

    move-result-object v35

    .line 629
    .local v35, "gnssPowerStats":Lcom/android/server/location/gnss/GnssPowerStats;
    const/16 v16, 0x1

    if-nez v35, :cond_1

    .line 630
    return v16

    .line 632
    :cond_1
    const/16 v2, 0xa

    new-array v15, v2, [D

    .line 633
    .local v15, "otherModesEnergyMilliJoule":[D
    nop

    .line 634
    invoke-virtual/range {v35 .. v35}, Lcom/android/server/location/gnss/GnssPowerStats;->getOtherModesEnergyMilliJoule()[D

    move-result-object v12

    .line 635
    .local v12, "tempGnssPowerStatsOtherModes":[D
    array-length v3, v12

    if-ge v3, v2, :cond_2

    .line 636
    array-length v2, v12

    const/4 v13, 0x0

    invoke-static {v12, v13, v15, v13, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 640
    :cond_2
    const/4 v13, 0x0

    invoke-static {v12, v13, v15, v13, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 644
    :goto_0
    nop

    .line 645
    invoke-virtual/range {v35 .. v35}, Lcom/android/server/location/gnss/GnssPowerStats;->getElapsedRealtimeUncertaintyNanos()D

    move-result-wide v2

    double-to-long v2, v2

    .line 646
    invoke-virtual/range {v35 .. v35}, Lcom/android/server/location/gnss/GnssPowerStats;->getTotalEnergyMilliJoule()D

    move-result-wide v4

    const-wide v32, 0x408f400000000000L    # 1000.0

    mul-double v4, v4, v32

    double-to-long v4, v4

    .line 647
    invoke-virtual/range {v35 .. v35}, Lcom/android/server/location/gnss/GnssPowerStats;->getSinglebandTrackingModeEnergyMilliJoule()D

    move-result-wide v6

    mul-double v6, v6, v32

    double-to-long v6, v6

    .line 649
    invoke-virtual/range {v35 .. v35}, Lcom/android/server/location/gnss/GnssPowerStats;->getMultibandTrackingModeEnergyMilliJoule()D

    move-result-wide v8

    mul-double v8, v8, v32

    double-to-long v8, v8

    .line 651
    invoke-virtual/range {v35 .. v35}, Lcom/android/server/location/gnss/GnssPowerStats;->getSinglebandAcquisitionModeEnergyMilliJoule()D

    move-result-wide v10

    mul-double v10, v10, v32

    double-to-long v10, v10

    .line 653
    invoke-virtual/range {v35 .. v35}, Lcom/android/server/location/gnss/GnssPowerStats;->getMultibandAcquisitionModeEnergyMilliJoule()D

    move-result-wide v17

    mul-double v13, v17, v32

    double-to-long v13, v13

    move-object/from16 v34, v12

    const/16 v36, 0x0

    .end local v12    # "tempGnssPowerStatsOtherModes":[D
    .local v34, "tempGnssPowerStatsOtherModes":[D
    move-wide v12, v13

    aget-wide v17, v15, v36

    mul-double v0, v17, v32

    double-to-long v0, v0

    move-object/from16 v37, v15

    .end local v15    # "otherModesEnergyMilliJoule":[D
    .local v37, "otherModesEnergyMilliJoule":[D
    move-wide v14, v0

    aget-wide v0, v37, v16

    mul-double v0, v0, v32

    double-to-long v0, v0

    move-wide/from16 v16, v0

    const/4 v0, 0x2

    aget-wide v0, v37, v0

    mul-double v0, v0, v32

    double-to-long v0, v0

    move-wide/from16 v18, v0

    const/4 v0, 0x3

    aget-wide v0, v37, v0

    mul-double v0, v0, v32

    double-to-long v0, v0

    move-wide/from16 v20, v0

    const/4 v0, 0x4

    aget-wide v0, v37, v0

    mul-double v0, v0, v32

    double-to-long v0, v0

    move-wide/from16 v22, v0

    const/4 v0, 0x5

    aget-wide v0, v37, v0

    mul-double v0, v0, v32

    double-to-long v0, v0

    move-wide/from16 v24, v0

    const/4 v0, 0x6

    aget-wide v0, v37, v0

    mul-double v0, v0, v32

    double-to-long v0, v0

    move-wide/from16 v26, v0

    const/4 v0, 0x7

    aget-wide v0, v37, v0

    mul-double v0, v0, v32

    double-to-long v0, v0

    move-wide/from16 v28, v0

    const/16 v0, 0x8

    aget-wide v0, v37, v0

    mul-double v0, v0, v32

    double-to-long v0, v0

    move-wide/from16 v30, v0

    const/16 v0, 0x9

    aget-wide v0, v37, v0

    mul-double v0, v0, v32

    double-to-long v0, v0

    move-wide/from16 v32, v0

    .line 644
    move/from16 v0, p1

    move/from16 v1, p1

    invoke-static/range {v1 .. v33}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IJJJJJJJJJJJJJJJJ)Landroid/util/StatsEvent;

    move-result-object v1

    move-object/from16 v2, p2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 665
    .end local v34    # "tempGnssPowerStatsOtherModes":[D
    .end local v35    # "gnssPowerStats":Lcom/android/server/location/gnss/GnssPowerStats;
    .end local v37    # "otherModesEnergyMilliJoule":[D
    nop

    .line 668
    :goto_1
    return v36

    .line 666
    :cond_3
    move-object v2, v14

    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown tagId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
