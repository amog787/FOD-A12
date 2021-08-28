.class Lcom/android/server/location/gnss/GnssMetrics$GnssPowerMetrics;
.super Ljava/lang/Object;
.source "GnssMetrics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/gnss/GnssMetrics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GnssPowerMetrics"
.end annotation


# static fields
.field public static final POOR_TOP_FOUR_AVG_CN0_THRESHOLD_DB_HZ:D = 20.0

.field private static final REPORTING_THRESHOLD_DB_HZ:D = 1.0


# instance fields
.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private mLastAverageCn0:D

.field private mLastSignalLevel:I

.field final synthetic this$0:Lcom/android/server/location/gnss/GnssMetrics;


# direct methods
.method constructor <init>(Lcom/android/server/location/gnss/GnssMetrics;Lcom/android/internal/app/IBatteryStats;)V
    .locals 2
    .param p2, "stats"    # Lcom/android/internal/app/IBatteryStats;

    .line 505
    iput-object p1, p0, Lcom/android/server/location/gnss/GnssMetrics$GnssPowerMetrics;->this$0:Lcom/android/server/location/gnss/GnssMetrics;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 506
    iput-object p2, p0, Lcom/android/server/location/gnss/GnssMetrics$GnssPowerMetrics;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 510
    const-wide/high16 v0, -0x3fa7000000000000L    # -100.0

    iput-wide v0, p0, Lcom/android/server/location/gnss/GnssMetrics$GnssPowerMetrics;->mLastAverageCn0:D

    .line 511
    const/4 p1, -0x1

    iput p1, p0, Lcom/android/server/location/gnss/GnssMetrics$GnssPowerMetrics;->mLastSignalLevel:I

    .line 512
    return-void
.end method

.method private getSignalLevel(D)I
    .locals 2
    .param p1, "cn0"    # D

    .line 582
    const-wide/high16 v0, 0x4034000000000000L    # 20.0

    cmpl-double v0, p1, v0

    if-lez v0, :cond_0

    .line 583
    const/4 v0, 0x1

    return v0

    .line 585
    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public buildProto()Lcom/android/internal/location/nano/GnssLogsProto$PowerMetrics;
    .locals 6

    .line 520
    new-instance v0, Lcom/android/internal/location/nano/GnssLogsProto$PowerMetrics;

    invoke-direct {v0}, Lcom/android/internal/location/nano/GnssLogsProto$PowerMetrics;-><init>()V

    .line 521
    .local v0, "p":Lcom/android/internal/location/nano/GnssLogsProto$PowerMetrics;
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssMetrics$GnssPowerMetrics;->this$0:Lcom/android/server/location/gnss/GnssMetrics;

    iget-object v1, v1, Lcom/android/server/location/gnss/GnssMetrics;->mGnssPowerMetrics:Lcom/android/server/location/gnss/GnssMetrics$GnssPowerMetrics;

    invoke-virtual {v1}, Lcom/android/server/location/gnss/GnssMetrics$GnssPowerMetrics;->getGpsBatteryStats()Landroid/os/connectivity/GpsBatteryStats;

    move-result-object v1

    .line 522
    .local v1, "stats":Landroid/os/connectivity/GpsBatteryStats;
    if-eqz v1, :cond_0

    .line 523
    invoke-virtual {v1}, Landroid/os/connectivity/GpsBatteryStats;->getLoggingDurationMs()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/internal/location/nano/GnssLogsProto$PowerMetrics;->loggingDurationMs:J

    .line 524
    nop

    .line 525
    invoke-virtual {v1}, Landroid/os/connectivity/GpsBatteryStats;->getEnergyConsumedMaMs()J

    move-result-wide v2

    long-to-double v2, v2

    const-wide v4, 0x414b774000000000L    # 3600000.0

    div-double/2addr v2, v4

    iput-wide v2, v0, Lcom/android/internal/location/nano/GnssLogsProto$PowerMetrics;->energyConsumedMah:D

    .line 526
    invoke-virtual {v1}, Landroid/os/connectivity/GpsBatteryStats;->getTimeInGpsSignalQualityLevel()[J

    move-result-object v2

    .line 527
    .local v2, "t":[J
    array-length v3, v2

    new-array v3, v3, [J

    iput-object v3, v0, Lcom/android/internal/location/nano/GnssLogsProto$PowerMetrics;->timeInSignalQualityLevelMs:[J

    .line 528
    iget-object v3, v0, Lcom/android/internal/location/nano/GnssLogsProto$PowerMetrics;->timeInSignalQualityLevelMs:[J

    array-length v4, v2

    const/4 v5, 0x0

    invoke-static {v2, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 530
    .end local v2    # "t":[J
    :cond_0
    return-object v0
.end method

.method public getGpsBatteryStats()Landroid/os/connectivity/GpsBatteryStats;
    .locals 2

    .line 540
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssMetrics$GnssPowerMetrics;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v0}, Lcom/android/internal/app/IBatteryStats;->getGpsBatteryStats()Landroid/os/connectivity/GpsBatteryStats;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 541
    :catch_0
    move-exception v0

    .line 542
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "GnssMetrics"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 543
    const/4 v1, 0x0

    return-object v1
.end method

.method public reportSignalQuality([F)V
    .locals 7
    .param p1, "sortedCn0DbHzs"    # [F

    .line 554
    const-wide/16 v0, 0x0

    .line 555
    .local v0, "avgCn0":D
    if-eqz p1, :cond_1

    array-length v2, p1

    if-lez v2, :cond_1

    .line 556
    const/4 v2, 0x0

    array-length v3, p1

    const/4 v4, 0x4

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .local v2, "i":I
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_0

    .line 558
    aget v3, p1, v2

    float-to-double v5, v3

    add-double/2addr v0, v5

    .line 557
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 560
    .end local v2    # "i":I
    :cond_0
    array-length v2, p1

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-double v2, v2

    div-double/2addr v0, v2

    .line 562
    :cond_1
    iget-wide v2, p0, Lcom/android/server/location/gnss/GnssMetrics$GnssPowerMetrics;->mLastAverageCn0:D

    sub-double v2, v0, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpg-double v2, v2, v4

    if-gez v2, :cond_2

    .line 563
    return-void

    .line 565
    :cond_2
    invoke-direct {p0, v0, v1}, Lcom/android/server/location/gnss/GnssMetrics$GnssPowerMetrics;->getSignalLevel(D)I

    move-result v2

    .line 566
    .local v2, "signalLevel":I
    iget v3, p0, Lcom/android/server/location/gnss/GnssMetrics$GnssPowerMetrics;->mLastSignalLevel:I

    if-eq v2, v3, :cond_3

    .line 567
    const/16 v3, 0x45

    invoke-static {v3, v2}, Lcom/android/internal/util/FrameworkStatsLog;->write(II)V

    .line 568
    iput v2, p0, Lcom/android/server/location/gnss/GnssMetrics$GnssPowerMetrics;->mLastSignalLevel:I

    .line 571
    :cond_3
    :try_start_0
    iget-object v3, p0, Lcom/android/server/location/gnss/GnssMetrics$GnssPowerMetrics;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v3, v2}, Lcom/android/internal/app/IBatteryStats;->noteGpsSignalQuality(I)V

    .line 572
    iput-wide v0, p0, Lcom/android/server/location/gnss/GnssMetrics$GnssPowerMetrics;->mLastAverageCn0:D
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 575
    goto :goto_1

    .line 573
    :catch_0
    move-exception v3

    .line 574
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "GnssMetrics"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 576
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_1
    return-void
.end method
