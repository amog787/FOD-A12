.class final Lcom/android/server/stats/pull/SystemMemoryUtil;
.super Ljava/lang/Object;
.source "SystemMemoryUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/stats/pull/SystemMemoryUtil$Metrics;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getMetrics()Lcom/android/server/stats/pull/SystemMemoryUtil$Metrics;
    .locals 17

    .line 29
    invoke-static {}, Landroid/os/Debug;->getDmabufHeapTotalExportedKb()J

    move-result-wide v0

    long-to-int v0, v0

    .line 30
    .local v0, "totalIonKb":I
    invoke-static {}, Landroid/os/Debug;->getGpuTotalUsageKb()J

    move-result-wide v1

    long-to-int v1, v1

    .line 31
    .local v1, "gpuTotalUsageKb":I
    invoke-static {}, Landroid/os/Debug;->getGpuDmaBufUsageKb()J

    move-result-wide v2

    long-to-int v2, v2

    .line 32
    .local v2, "gpuDmaBufUsageKb":I
    invoke-static {}, Landroid/os/Debug;->getDmabufTotalExportedKb()J

    move-result-wide v3

    long-to-int v3, v3

    .line 34
    .local v3, "dmaBufTotalExportedKb":I
    const/16 v4, 0x13

    new-array v4, v4, [J

    .line 35
    .local v4, "mInfos":[J
    invoke-static {v4}, Landroid/os/Debug;->getMemInfo([J)V

    .line 37
    const/16 v5, 0xf

    aget-wide v5, v4, v5

    .line 41
    .local v5, "kReclaimableKb":J
    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-nez v7, :cond_0

    .line 42
    const/4 v7, 0x6

    aget-wide v5, v4, v7

    .line 45
    :cond_0
    const/4 v7, 0x1

    aget-wide v7, v4, v7

    const/16 v9, 0xa

    aget-wide v9, v4, v9

    add-long/2addr v7, v9

    const/4 v9, 0x2

    aget-wide v9, v4, v9

    add-long/2addr v7, v9

    const/16 v9, 0x10

    aget-wide v9, v4, v9

    add-long/2addr v7, v9

    const/16 v9, 0x11

    aget-wide v9, v4, v9

    add-long/2addr v7, v9

    const/16 v9, 0x12

    aget-wide v9, v4, v9

    add-long/2addr v7, v9

    const/4 v9, 0x7

    aget-wide v10, v4, v9

    add-long/2addr v7, v10

    add-long/2addr v7, v5

    const/16 v10, 0xc

    aget-wide v11, v4, v10

    add-long/2addr v7, v11

    const/16 v11, 0xd

    aget-wide v12, v4, v11

    add-long/2addr v7, v12

    .line 56
    .local v7, "accountedKb":J
    invoke-static {}, Landroid/os/Debug;->isVmapStack()Z

    move-result v12

    const/16 v13, 0xe

    if-nez v12, :cond_1

    .line 58
    aget-wide v14, v4, v13

    add-long/2addr v7, v14

    .line 61
    :cond_1
    const/4 v12, -0x1

    .line 62
    .local v12, "gpuPrivateAllocationsKb":I
    if-ltz v1, :cond_2

    if-ltz v2, :cond_2

    .line 63
    sub-int v12, v1, v2

    .line 67
    :cond_2
    const/4 v14, 0x0

    if-ltz v3, :cond_3

    if-ltz v12, :cond_3

    .line 71
    add-int v15, v3, v12

    move/from16 v16, v12

    .end local v12    # "gpuPrivateAllocationsKb":I
    .local v16, "gpuPrivateAllocationsKb":I
    int-to-long v11, v15

    add-long/2addr v7, v11

    goto :goto_0

    .line 67
    .end local v16    # "gpuPrivateAllocationsKb":I
    .restart local v12    # "gpuPrivateAllocationsKb":I
    :cond_3
    move/from16 v16, v12

    .line 75
    .end local v12    # "gpuPrivateAllocationsKb":I
    .restart local v16    # "gpuPrivateAllocationsKb":I
    invoke-static {v14, v1}, Ljava/lang/Math;->max(II)I

    move-result v11

    int-to-long v11, v11

    add-long/2addr v7, v11

    .line 76
    if-ltz v3, :cond_4

    .line 77
    int-to-long v11, v3

    add-long/2addr v7, v11

    goto :goto_0

    .line 78
    :cond_4
    if-ltz v0, :cond_5

    .line 80
    int-to-long v11, v0

    add-long/2addr v7, v11

    .line 84
    :cond_5
    :goto_0
    new-instance v11, Lcom/android/server/stats/pull/SystemMemoryUtil$Metrics;

    invoke-direct {v11}, Lcom/android/server/stats/pull/SystemMemoryUtil$Metrics;-><init>()V

    .line 85
    .local v11, "result":Lcom/android/server/stats/pull/SystemMemoryUtil$Metrics;
    aget-wide v14, v4, v9

    long-to-int v9, v14

    iput v9, v11, Lcom/android/server/stats/pull/SystemMemoryUtil$Metrics;->unreclaimableSlabKb:I

    .line 86
    aget-wide v9, v4, v10

    long-to-int v9, v9

    iput v9, v11, Lcom/android/server/stats/pull/SystemMemoryUtil$Metrics;->vmallocUsedKb:I

    .line 87
    const/16 v9, 0xd

    aget-wide v9, v4, v9

    long-to-int v9, v9

    iput v9, v11, Lcom/android/server/stats/pull/SystemMemoryUtil$Metrics;->pageTablesKb:I

    .line 88
    aget-wide v9, v4, v13

    long-to-int v9, v9

    iput v9, v11, Lcom/android/server/stats/pull/SystemMemoryUtil$Metrics;->kernelStackKb:I

    .line 89
    iput v0, v11, Lcom/android/server/stats/pull/SystemMemoryUtil$Metrics;->totalIonKb:I

    .line 90
    iput v1, v11, Lcom/android/server/stats/pull/SystemMemoryUtil$Metrics;->gpuTotalUsageKb:I

    .line 91
    move/from16 v9, v16

    .end local v16    # "gpuPrivateAllocationsKb":I
    .local v9, "gpuPrivateAllocationsKb":I
    iput v9, v11, Lcom/android/server/stats/pull/SystemMemoryUtil$Metrics;->gpuPrivateAllocationsKb:I

    .line 92
    iput v3, v11, Lcom/android/server/stats/pull/SystemMemoryUtil$Metrics;->dmaBufTotalExportedKb:I

    .line 93
    const/4 v10, 0x0

    aget-wide v12, v4, v10

    sub-long/2addr v12, v7

    long-to-int v10, v12

    iput v10, v11, Lcom/android/server/stats/pull/SystemMemoryUtil$Metrics;->unaccountedKb:I

    .line 94
    return-object v11
.end method
