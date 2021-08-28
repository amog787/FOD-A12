.class public Lcom/android/server/pm/SnapshotStatistics;
.super Ljava/lang/Object;
.source "SnapshotStatistics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/SnapshotStatistics$Stats;,
        Lcom/android/server/pm/SnapshotStatistics$BinMap;
    }
.end annotation


# static fields
.field public static final SNAPSHOT_BIG_BUILD_TIME_US:I = 0x2710

.field public static final SNAPSHOT_BUILD_REPORT_LIMIT:I = 0xa

.field public static final SNAPSHOT_LONG_TICKS:I = 0x2760

.field public static final SNAPSHOT_REPORTABLE_BUILD_TIME_US:I = 0x7530

.field public static final SNAPSHOT_SHORT_LIFETIME:I = 0x5

.field public static final SNAPSHOT_TICK_INTERVAL_MS:I = 0xea60

.field private static final US_IN_MS:I = 0x3e8


# instance fields
.field private mEventsReported:I

.field private mHandler:Landroid/os/Handler;

.field private mLastBuildTime:J

.field private final mLock:Ljava/lang/Object;

.field private mLong:[Lcom/android/server/pm/SnapshotStatistics$Stats;

.field private mShort:[Lcom/android/server/pm/SnapshotStatistics$Stats;

.field private mTicks:I

.field private final mTimeBins:Lcom/android/server/pm/SnapshotStatistics$BinMap;

.field private final mUseBins:Lcom/android/server/pm/SnapshotStatistics$BinMap;


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 490
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/SnapshotStatistics;->mLock:Ljava/lang/Object;

    .line 113
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/pm/SnapshotStatistics;->mEventsReported:I

    .line 118
    iput v0, p0, Lcom/android/server/pm/SnapshotStatistics;->mTicks:I

    .line 123
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/pm/SnapshotStatistics;->mHandler:Landroid/os/Handler;

    .line 484
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/server/pm/SnapshotStatistics;->mLastBuildTime:J

    .line 492
    new-instance v2, Lcom/android/server/pm/SnapshotStatistics$BinMap;

    const/4 v3, 0x7

    new-array v4, v3, [I

    fill-array-data v4, :array_0

    invoke-direct {v2, v4}, Lcom/android/server/pm/SnapshotStatistics$BinMap;-><init>([I)V

    iput-object v2, p0, Lcom/android/server/pm/SnapshotStatistics;->mTimeBins:Lcom/android/server/pm/SnapshotStatistics$BinMap;

    .line 493
    new-instance v2, Lcom/android/server/pm/SnapshotStatistics$BinMap;

    new-array v3, v3, [I

    fill-array-data v3, :array_1

    invoke-direct {v2, v3}, Lcom/android/server/pm/SnapshotStatistics$BinMap;-><init>([I)V

    iput-object v2, p0, Lcom/android/server/pm/SnapshotStatistics;->mUseBins:Lcom/android/server/pm/SnapshotStatistics$BinMap;

    .line 496
    invoke-static {}, Landroid/os/SystemClock;->currentTimeMicro()J

    move-result-wide v2

    .line 497
    .local v2, "now":J
    const/4 v4, 0x2

    new-array v4, v4, [Lcom/android/server/pm/SnapshotStatistics$Stats;

    iput-object v4, p0, Lcom/android/server/pm/SnapshotStatistics;->mLong:[Lcom/android/server/pm/SnapshotStatistics$Stats;

    .line 498
    new-instance v5, Lcom/android/server/pm/SnapshotStatistics$Stats;

    invoke-direct {v5, p0, v2, v3, v1}, Lcom/android/server/pm/SnapshotStatistics$Stats;-><init>(Lcom/android/server/pm/SnapshotStatistics;JLcom/android/server/pm/SnapshotStatistics$1;)V

    aput-object v5, v4, v0

    .line 499
    const/16 v4, 0xa

    new-array v4, v4, [Lcom/android/server/pm/SnapshotStatistics$Stats;

    iput-object v4, p0, Lcom/android/server/pm/SnapshotStatistics;->mShort:[Lcom/android/server/pm/SnapshotStatistics$Stats;

    .line 500
    new-instance v5, Lcom/android/server/pm/SnapshotStatistics$Stats;

    invoke-direct {v5, p0, v2, v3, v1}, Lcom/android/server/pm/SnapshotStatistics$Stats;-><init>(Lcom/android/server/pm/SnapshotStatistics;JLcom/android/server/pm/SnapshotStatistics$1;)V

    aput-object v5, v4, v0

    .line 503
    new-instance v0, Lcom/android/server/pm/SnapshotStatistics$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/pm/SnapshotStatistics$1;-><init>(Lcom/android/server/pm/SnapshotStatistics;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/pm/SnapshotStatistics;->mHandler:Landroid/os/Handler;

    .line 509
    invoke-direct {p0}, Lcom/android/server/pm/SnapshotStatistics;->scheduleTick()V

    .line 510
    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x5
        0xa
        0x14
        0x32
        0x64
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x2
        0x5
        0xa
        0x14
        0x32
        0x64
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/server/pm/SnapshotStatistics;)Lcom/android/server/pm/SnapshotStatistics$BinMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/SnapshotStatistics;

    .line 54
    iget-object v0, p0, Lcom/android/server/pm/SnapshotStatistics;->mTimeBins:Lcom/android/server/pm/SnapshotStatistics$BinMap;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/pm/SnapshotStatistics;)Lcom/android/server/pm/SnapshotStatistics$BinMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/SnapshotStatistics;

    .line 54
    iget-object v0, p0, Lcom/android/server/pm/SnapshotStatistics;->mUseBins:Lcom/android/server/pm/SnapshotStatistics$BinMap;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/pm/SnapshotStatistics;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/SnapshotStatistics;
    .param p1, "x1"    # Landroid/os/Message;

    .line 54
    invoke-direct {p0, p1}, Lcom/android/server/pm/SnapshotStatistics;->handleMessage(Landroid/os/Message;)V

    return-void
.end method

.method private dump(Ljava/io/PrintWriter;Ljava/lang/String;J[Lcom/android/server/pm/SnapshotStatistics$Stats;[Lcom/android/server/pm/SnapshotStatistics$Stats;Ljava/lang/String;)V
    .locals 11
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "indent"    # Ljava/lang/String;
    .param p3, "now"    # J
    .param p5, "l"    # [Lcom/android/server/pm/SnapshotStatistics$Stats;
    .param p6, "s"    # [Lcom/android/server/pm/SnapshotStatistics$Stats;
    .param p7, "what"    # Ljava/lang/String;

    .line 610
    move-object/from16 v0, p5

    move-object/from16 v1, p6

    const/4 v2, 0x0

    aget-object v3, v0, v2

    const/4 v8, 0x1

    move-object v4, p1

    move-object v5, p2

    move-wide v6, p3

    move-object/from16 v9, p7

    invoke-static/range {v3 .. v9}, Lcom/android/server/pm/SnapshotStatistics$Stats;->access$700(Lcom/android/server/pm/SnapshotStatistics$Stats;Ljava/io/PrintWriter;Ljava/lang/String;JZLjava/lang/String;)V

    .line 611
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    .line 612
    aget-object v3, v1, v2

    if-eqz v3, :cond_0

    .line 613
    aget-object v4, v1, v2

    const/4 v9, 0x0

    move-object v5, p1

    move-object v6, p2

    move-wide v7, p3

    move-object/from16 v10, p7

    invoke-static/range {v4 .. v10}, Lcom/android/server/pm/SnapshotStatistics$Stats;->access$700(Lcom/android/server/pm/SnapshotStatistics$Stats;Ljava/io/PrintWriter;Ljava/lang/String;JZLjava/lang/String;)V

    .line 611
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 616
    .end local v2    # "i":I
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    array-length v3, v0

    if-ge v2, v3, :cond_3

    .line 617
    aget-object v3, v0, v2

    if-eqz v3, :cond_2

    .line 618
    aget-object v4, v0, v2

    const/4 v9, 0x0

    move-object v5, p1

    move-object v6, p2

    move-wide v7, p3

    move-object/from16 v10, p7

    invoke-static/range {v4 .. v10}, Lcom/android/server/pm/SnapshotStatistics$Stats;->access$700(Lcom/android/server/pm/SnapshotStatistics$Stats;Ljava/io/PrintWriter;Ljava/lang/String;JZLjava/lang/String;)V

    .line 616
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 621
    .end local v2    # "i":I
    :cond_3
    return-void
.end method

.method private handleMessage(Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    .line 516
    invoke-direct {p0}, Lcom/android/server/pm/SnapshotStatistics;->tick()V

    .line 517
    invoke-direct {p0}, Lcom/android/server/pm/SnapshotStatistics;->scheduleTick()V

    .line 518
    return-void
.end method

.method private scheduleTick()V
    .locals 4

    .line 524
    iget-object v0, p0, Lcom/android/server/pm/SnapshotStatistics;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 525
    return-void
.end method

.method private shift([Lcom/android/server/pm/SnapshotStatistics$Stats;J)V
    .locals 3
    .param p1, "s"    # [Lcom/android/server/pm/SnapshotStatistics$Stats;
    .param p2, "now"    # J

    .line 577
    const/4 v0, 0x0

    aget-object v1, p1, v0

    invoke-static {v1, p2, p3}, Lcom/android/server/pm/SnapshotStatistics$Stats;->access$600(Lcom/android/server/pm/SnapshotStatistics$Stats;J)V

    .line 578
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-lez v1, :cond_0

    .line 579
    add-int/lit8 v2, v1, -0x1

    aget-object v2, p1, v2

    aput-object v2, p1, v1

    .line 578
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 581
    .end local v1    # "i":I
    :cond_0
    new-instance v1, Lcom/android/server/pm/SnapshotStatistics$Stats;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p2, p3, v2}, Lcom/android/server/pm/SnapshotStatistics$Stats;-><init>(Lcom/android/server/pm/SnapshotStatistics;JLcom/android/server/pm/SnapshotStatistics$1;)V

    aput-object v1, p1, v0

    .line 582
    return-void
.end method

.method private tick()V
    .locals 4

    .line 595
    iget-object v0, p0, Lcom/android/server/pm/SnapshotStatistics;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 596
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->currentTimeMicro()J

    move-result-wide v1

    .line 597
    .local v1, "now":J
    iget v3, p0, Lcom/android/server/pm/SnapshotStatistics;->mTicks:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/pm/SnapshotStatistics;->mTicks:I

    .line 598
    rem-int/lit16 v3, v3, 0x2760

    if-nez v3, :cond_0

    .line 599
    iget-object v3, p0, Lcom/android/server/pm/SnapshotStatistics;->mLong:[Lcom/android/server/pm/SnapshotStatistics$Stats;

    invoke-direct {p0, v3, v1, v2}, Lcom/android/server/pm/SnapshotStatistics;->shift([Lcom/android/server/pm/SnapshotStatistics$Stats;J)V

    .line 601
    :cond_0
    iget-object v3, p0, Lcom/android/server/pm/SnapshotStatistics;->mShort:[Lcom/android/server/pm/SnapshotStatistics$Stats;

    invoke-direct {p0, v3, v1, v2}, Lcom/android/server/pm/SnapshotStatistics;->shift([Lcom/android/server/pm/SnapshotStatistics$Stats;J)V

    .line 602
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/server/pm/SnapshotStatistics;->mEventsReported:I

    .line 603
    .end local v1    # "now":J
    monitor-exit v0

    .line 604
    return-void

    .line 603
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private usToMs(I)I
    .locals 1
    .param p1, "us"    # I

    .line 130
    div-int/lit16 v0, p1, 0x3e8

    return v0
.end method


# virtual methods
.method public final corked()V
    .locals 3

    .line 565
    iget-object v0, p0, Lcom/android/server/pm/SnapshotStatistics;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 566
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/SnapshotStatistics;->mShort:[Lcom/android/server/pm/SnapshotStatistics$Stats;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {v1}, Lcom/android/server/pm/SnapshotStatistics$Stats;->access$500(Lcom/android/server/pm/SnapshotStatistics$Stats;)V

    .line 567
    iget-object v1, p0, Lcom/android/server/pm/SnapshotStatistics;->mLong:[Lcom/android/server/pm/SnapshotStatistics$Stats;

    aget-object v1, v1, v2

    invoke-static {v1}, Lcom/android/server/pm/SnapshotStatistics$Stats;->access$500(Lcom/android/server/pm/SnapshotStatistics$Stats;)V

    .line 568
    monitor-exit v0

    .line 569
    return-void

    .line 568
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;JIIZ)V
    .locals 12
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "indent"    # Ljava/lang/String;
    .param p3, "now"    # J
    .param p5, "unrecorded"    # I
    .param p6, "corkLevel"    # I
    .param p7, "brief"    # Z

    .line 632
    move-object v9, p0

    iget-object v1, v9, Lcom/android/server/pm/SnapshotStatistics;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 633
    :try_start_0
    iget-object v0, v9, Lcom/android/server/pm/SnapshotStatistics;->mLong:[Lcom/android/server/pm/SnapshotStatistics$Stats;

    array-length v2, v0

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/pm/SnapshotStatistics$Stats;

    .line 634
    .local v0, "l":[Lcom/android/server/pm/SnapshotStatistics$Stats;
    new-instance v2, Lcom/android/server/pm/SnapshotStatistics$Stats;

    const/4 v3, 0x0

    aget-object v4, v0, v3

    const/4 v5, 0x0

    invoke-direct {v2, p0, v4, v5}, Lcom/android/server/pm/SnapshotStatistics$Stats;-><init>(Lcom/android/server/pm/SnapshotStatistics;Lcom/android/server/pm/SnapshotStatistics$Stats;Lcom/android/server/pm/SnapshotStatistics$1;)V

    aput-object v2, v0, v3

    .line 635
    iget-object v2, v9, Lcom/android/server/pm/SnapshotStatistics;->mShort:[Lcom/android/server/pm/SnapshotStatistics$Stats;

    array-length v4, v2

    invoke-static {v2, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/android/server/pm/SnapshotStatistics$Stats;

    move-object v10, v2

    .line 636
    .local v10, "s":[Lcom/android/server/pm/SnapshotStatistics$Stats;
    new-instance v2, Lcom/android/server/pm/SnapshotStatistics$Stats;

    aget-object v4, v10, v3

    invoke-direct {v2, p0, v4, v5}, Lcom/android/server/pm/SnapshotStatistics$Stats;-><init>(Lcom/android/server/pm/SnapshotStatistics;Lcom/android/server/pm/SnapshotStatistics$Stats;Lcom/android/server/pm/SnapshotStatistics$1;)V

    aput-object v2, v10, v3

    .line 637
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 638
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%s Unrecorded-hits: %d  Cork-level: %d"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p2, v4, v3

    const/4 v3, 0x1

    .line 639
    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    const/4 v3, 0x2

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    .line 638
    move-object v11, p1

    invoke-virtual {p1, v1, v2, v4}, Ljava/io/PrintWriter;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 640
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 641
    const-string v8, "stats"

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v6, v0

    move-object v7, v10

    invoke-direct/range {v1 .. v8}, Lcom/android/server/pm/SnapshotStatistics;->dump(Ljava/io/PrintWriter;Ljava/lang/String;J[Lcom/android/server/pm/SnapshotStatistics$Stats;[Lcom/android/server/pm/SnapshotStatistics$Stats;Ljava/lang/String;)V

    .line 642
    if-eqz p7, :cond_0

    .line 643
    return-void

    .line 645
    :cond_0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 646
    const-string v8, "times"

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v6, v0

    move-object v7, v10

    invoke-direct/range {v1 .. v8}, Lcom/android/server/pm/SnapshotStatistics;->dump(Ljava/io/PrintWriter;Ljava/lang/String;J[Lcom/android/server/pm/SnapshotStatistics$Stats;[Lcom/android/server/pm/SnapshotStatistics$Stats;Ljava/lang/String;)V

    .line 647
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 648
    const-string v8, "usage"

    invoke-direct/range {v1 .. v8}, Lcom/android/server/pm/SnapshotStatistics;->dump(Ljava/io/PrintWriter;Ljava/lang/String;J[Lcom/android/server/pm/SnapshotStatistics$Stats;[Lcom/android/server/pm/SnapshotStatistics$Stats;Ljava/lang/String;)V

    .line 649
    return-void

    .line 637
    .end local v0    # "l":[Lcom/android/server/pm/SnapshotStatistics$Stats;
    .end local v10    # "s":[Lcom/android/server/pm/SnapshotStatistics$Stats;
    :catchall_0
    move-exception v0

    move-object v11, p1

    :goto_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method public final rebuild(JJI)V
    .locals 19
    .param p1, "now"    # J
    .param p3, "done"    # J
    .param p5, "hits"    # I

    .line 536
    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move/from16 v15, p5

    sub-long v4, p3, v2

    long-to-int v14, v4

    .line 537
    .local v14, "duration":I
    const/16 v18, 0x0

    .line 538
    .local v18, "reportEvent":Z
    iget-object v13, v1, Lcom/android/server/pm/SnapshotStatistics;->mLock:Ljava/lang/Object;

    monitor-enter v13

    .line 539
    :try_start_0
    iput-wide v2, v1, Lcom/android/server/pm/SnapshotStatistics;->mLastBuildTime:J

    .line 541
    iget-object v0, v1, Lcom/android/server/pm/SnapshotStatistics;->mTimeBins:Lcom/android/server/pm/SnapshotStatistics$BinMap;

    div-int/lit16 v4, v14, 0x3e8

    invoke-virtual {v0, v4}, Lcom/android/server/pm/SnapshotStatistics$BinMap;->getBin(I)I

    move-result v7

    .line 542
    .local v7, "timeBin":I
    iget-object v0, v1, Lcom/android/server/pm/SnapshotStatistics;->mUseBins:Lcom/android/server/pm/SnapshotStatistics$BinMap;

    invoke-virtual {v0, v15}, Lcom/android/server/pm/SnapshotStatistics$BinMap;->getBin(I)I

    move-result v8

    .line 543
    .local v8, "useBin":I
    const/16 v0, 0x2710

    const/4 v4, 0x1

    const/4 v11, 0x0

    if-lt v14, v0, :cond_0

    move v9, v4

    goto :goto_0

    :cond_0
    move v9, v11

    .line 544
    .local v9, "big":Z
    :goto_0
    const/4 v0, 0x5

    if-gt v15, v0, :cond_1

    move v10, v4

    goto :goto_1

    :cond_1
    move v10, v11

    .line 546
    .local v10, "quick":Z
    :goto_1
    iget-object v0, v1, Lcom/android/server/pm/SnapshotStatistics;->mShort:[Lcom/android/server/pm/SnapshotStatistics$Stats;

    aget-object v4, v0, v11

    move v5, v14

    move/from16 v6, p5

    invoke-static/range {v4 .. v10}, Lcom/android/server/pm/SnapshotStatistics$Stats;->access$400(Lcom/android/server/pm/SnapshotStatistics$Stats;IIIIZZ)V

    .line 547
    iget-object v0, v1, Lcom/android/server/pm/SnapshotStatistics;->mLong:[Lcom/android/server/pm/SnapshotStatistics$Stats;

    aget-object v11, v0, v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v12, v14

    move-object v4, v13

    move/from16 v13, p5

    move v5, v14

    .end local v14    # "duration":I
    .local v5, "duration":I
    move v14, v7

    move v6, v15

    move v15, v8

    move/from16 v16, v9

    move/from16 v17, v10

    :try_start_1
    invoke-static/range {v11 .. v17}, Lcom/android/server/pm/SnapshotStatistics$Stats;->access$400(Lcom/android/server/pm/SnapshotStatistics$Stats;IIIIZZ)V

    .line 548
    const/16 v0, 0x7530

    if-lt v5, v0, :cond_2

    .line 549
    iget v0, v1, Lcom/android/server/pm/SnapshotStatistics;->mEventsReported:I

    add-int/lit8 v11, v0, 0x1

    iput v11, v1, Lcom/android/server/pm/SnapshotStatistics;->mEventsReported:I

    const/16 v11, 0xa

    if-ge v0, v11, :cond_2

    .line 550
    const/4 v0, 0x1

    move/from16 v18, v0

    .line 553
    .end local v7    # "timeBin":I
    .end local v8    # "useBin":I
    .end local v9    # "big":Z
    .end local v10    # "quick":Z
    :cond_2
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 555
    if-eqz v18, :cond_3

    .line 557
    div-int/lit16 v14, v5, 0x3e8

    invoke-static {v14, v6}, Lcom/android/server/EventLogTags;->writePmSnapshotRebuild(II)V

    .line 559
    :cond_3
    return-void

    .line 553
    .end local v5    # "duration":I
    .restart local v14    # "duration":I
    :catchall_0
    move-exception v0

    move-object v4, v13

    move v5, v14

    move v6, v15

    .end local v14    # "duration":I
    .restart local v5    # "duration":I
    :goto_2
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_2
.end method
