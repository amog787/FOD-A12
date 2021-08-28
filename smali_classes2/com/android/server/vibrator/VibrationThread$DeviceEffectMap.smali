.class final Lcom/android/server/vibrator/VibrationThread$DeviceEffectMap;
.super Ljava/lang/Object;
.source "VibrationThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vibrator/VibrationThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DeviceEffectMap"
.end annotation


# instance fields
.field private final mRequiredSyncCapabilities:J

.field private final mVibratorEffects:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/VibrationEffect$Composed;",
            ">;"
        }
    .end annotation
.end field

.field private final mVibratorIds:[I

.field final synthetic this$0:Lcom/android/server/vibrator/VibrationThread;


# direct methods
.method constructor <init>(Lcom/android/server/vibrator/VibrationThread;Landroid/os/CombinedVibration$Mono;)V
    .locals 6
    .param p2, "mono"    # Landroid/os/CombinedVibration$Mono;

    .line 1438
    iput-object p1, p0, Lcom/android/server/vibrator/VibrationThread$DeviceEffectMap;->this$0:Lcom/android/server/vibrator/VibrationThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1439
    new-instance v0, Landroid/util/SparseArray;

    invoke-static {p1}, Lcom/android/server/vibrator/VibrationThread;->access$400(Lcom/android/server/vibrator/VibrationThread;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/vibrator/VibrationThread$DeviceEffectMap;->mVibratorEffects:Landroid/util/SparseArray;

    .line 1440
    invoke-static {p1}, Lcom/android/server/vibrator/VibrationThread;->access$400(Lcom/android/server/vibrator/VibrationThread;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/vibrator/VibrationThread$DeviceEffectMap;->mVibratorIds:[I

    .line 1441
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-static {p1}, Lcom/android/server/vibrator/VibrationThread;->access$400(Lcom/android/server/vibrator/VibrationThread;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1442
    invoke-static {p1}, Lcom/android/server/vibrator/VibrationThread;->access$400(Lcom/android/server/vibrator/VibrationThread;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 1443
    .local v1, "vibratorId":I
    invoke-static {p1}, Lcom/android/server/vibrator/VibrationThread;->access$400(Lcom/android/server/vibrator/VibrationThread;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/vibrator/VibratorController;

    invoke-virtual {v2}, Lcom/android/server/vibrator/VibratorController;->getVibratorInfo()Landroid/os/VibratorInfo;

    move-result-object v2

    .line 1444
    .local v2, "vibratorInfo":Landroid/os/VibratorInfo;
    invoke-static {p1}, Lcom/android/server/vibrator/VibrationThread;->access$1100(Lcom/android/server/vibrator/VibrationThread;)Lcom/android/server/vibrator/DeviceVibrationEffectAdapter;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/CombinedVibration$Mono;->getEffect()Landroid/os/VibrationEffect;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcom/android/server/vibrator/DeviceVibrationEffectAdapter;->apply(Landroid/os/VibrationEffect;Landroid/os/VibratorInfo;)Landroid/os/VibrationEffect;

    move-result-object v3

    .line 1445
    .local v3, "effect":Landroid/os/VibrationEffect;
    instance-of v4, v3, Landroid/os/VibrationEffect$Composed;

    if-eqz v4, :cond_0

    .line 1446
    iget-object v4, p0, Lcom/android/server/vibrator/VibrationThread$DeviceEffectMap;->mVibratorEffects:Landroid/util/SparseArray;

    move-object v5, v3

    check-cast v5, Landroid/os/VibrationEffect$Composed;

    invoke-virtual {v4, v1, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1447
    iget-object v4, p0, Lcom/android/server/vibrator/VibrationThread$DeviceEffectMap;->mVibratorIds:[I

    aput v1, v4, v0

    .line 1441
    .end local v1    # "vibratorId":I
    .end local v2    # "vibratorInfo":Landroid/os/VibratorInfo;
    .end local v3    # "effect":Landroid/os/VibrationEffect;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1450
    .end local v0    # "i":I
    :cond_1
    iget-object p1, p0, Lcom/android/server/vibrator/VibrationThread$DeviceEffectMap;->mVibratorEffects:Landroid/util/SparseArray;

    invoke-direct {p0, p1}, Lcom/android/server/vibrator/VibrationThread$DeviceEffectMap;->calculateRequiredSyncCapabilities(Landroid/util/SparseArray;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/vibrator/VibrationThread$DeviceEffectMap;->mRequiredSyncCapabilities:J

    .line 1451
    return-void
.end method

.method constructor <init>(Lcom/android/server/vibrator/VibrationThread;Landroid/os/CombinedVibration$Stereo;)V
    .locals 7
    .param p2, "stereo"    # Landroid/os/CombinedVibration$Stereo;

    .line 1453
    iput-object p1, p0, Lcom/android/server/vibrator/VibrationThread$DeviceEffectMap;->this$0:Lcom/android/server/vibrator/VibrationThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1454
    invoke-virtual {p2}, Landroid/os/CombinedVibration$Stereo;->getEffects()Landroid/util/SparseArray;

    move-result-object v0

    .line 1455
    .local v0, "stereoEffects":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/VibrationEffect;>;"
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/vibrator/VibrationThread$DeviceEffectMap;->mVibratorEffects:Landroid/util/SparseArray;

    .line 1456
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1457
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 1458
    .local v2, "vibratorId":I
    invoke-static {p1}, Lcom/android/server/vibrator/VibrationThread;->access$400(Lcom/android/server/vibrator/VibrationThread;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->contains(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1459
    invoke-static {p1}, Lcom/android/server/vibrator/VibrationThread;->access$400(Lcom/android/server/vibrator/VibrationThread;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/vibrator/VibratorController;

    invoke-virtual {v3}, Lcom/android/server/vibrator/VibratorController;->getVibratorInfo()Landroid/os/VibratorInfo;

    move-result-object v3

    .line 1460
    .local v3, "vibratorInfo":Landroid/os/VibratorInfo;
    invoke-static {p1}, Lcom/android/server/vibrator/VibrationThread;->access$1100(Lcom/android/server/vibrator/VibrationThread;)Lcom/android/server/vibrator/DeviceVibrationEffectAdapter;

    move-result-object v4

    .line 1461
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/VibrationEffect;

    .line 1460
    invoke-virtual {v4, v5, v3}, Lcom/android/server/vibrator/DeviceVibrationEffectAdapter;->apply(Landroid/os/VibrationEffect;Landroid/os/VibratorInfo;)Landroid/os/VibrationEffect;

    move-result-object v4

    .line 1462
    .local v4, "effect":Landroid/os/VibrationEffect;
    instance-of v5, v4, Landroid/os/VibrationEffect$Composed;

    if-eqz v5, :cond_0

    .line 1463
    iget-object v5, p0, Lcom/android/server/vibrator/VibrationThread$DeviceEffectMap;->mVibratorEffects:Landroid/util/SparseArray;

    move-object v6, v4

    check-cast v6, Landroid/os/VibrationEffect$Composed;

    invoke-virtual {v5, v2, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1456
    .end local v2    # "vibratorId":I
    .end local v3    # "vibratorInfo":Landroid/os/VibratorInfo;
    .end local v4    # "effect":Landroid/os/VibrationEffect;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1467
    .end local v1    # "i":I
    :cond_1
    iget-object p1, p0, Lcom/android/server/vibrator/VibrationThread$DeviceEffectMap;->mVibratorEffects:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/android/server/vibrator/VibrationThread$DeviceEffectMap;->mVibratorIds:[I

    .line 1468
    const/4 p1, 0x0

    .local p1, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/vibrator/VibrationThread$DeviceEffectMap;->mVibratorEffects:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge p1, v1, :cond_2

    .line 1469
    iget-object v1, p0, Lcom/android/server/vibrator/VibrationThread$DeviceEffectMap;->mVibratorIds:[I

    iget-object v2, p0, Lcom/android/server/vibrator/VibrationThread$DeviceEffectMap;->mVibratorEffects:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    aput v2, v1, p1

    .line 1468
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 1471
    .end local p1    # "i":I
    :cond_2
    iget-object p1, p0, Lcom/android/server/vibrator/VibrationThread$DeviceEffectMap;->mVibratorEffects:Landroid/util/SparseArray;

    invoke-direct {p0, p1}, Lcom/android/server/vibrator/VibrationThread$DeviceEffectMap;->calculateRequiredSyncCapabilities(Landroid/util/SparseArray;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/vibrator/VibrationThread$DeviceEffectMap;->mRequiredSyncCapabilities:J

    .line 1472
    return-void
.end method

.method private calculateRequiredSyncCapabilities(Landroid/util/SparseArray;)J
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/VibrationEffect$Composed;",
            ">;)J"
        }
    .end annotation

    .line 1515
    .local p1, "effects":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/VibrationEffect$Composed;>;"
    const-wide/16 v0, 0x0

    .line 1516
    .local v0, "prepareCap":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v3

    const-wide/16 v4, 0x8

    const-wide/16 v6, 0x4

    const-wide/16 v8, 0x2

    if-ge v2, v3, :cond_3

    .line 1517
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/VibrationEffect$Composed;

    invoke-virtual {v3}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    move-result-object v3

    const/4 v10, 0x0

    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/vibrator/VibrationEffectSegment;

    .line 1518
    .local v3, "firstSegment":Landroid/os/vibrator/VibrationEffectSegment;
    instance-of v10, v3, Landroid/os/vibrator/StepSegment;

    if-eqz v10, :cond_0

    .line 1519
    or-long/2addr v0, v8

    goto :goto_1

    .line 1520
    :cond_0
    instance-of v8, v3, Landroid/os/vibrator/PrebakedSegment;

    if-eqz v8, :cond_1

    .line 1521
    or-long/2addr v0, v6

    goto :goto_1

    .line 1522
    :cond_1
    instance-of v6, v3, Landroid/os/vibrator/PrimitiveSegment;

    if-eqz v6, :cond_2

    .line 1523
    or-long/2addr v0, v4

    .line 1516
    .end local v3    # "firstSegment":Landroid/os/vibrator/VibrationEffectSegment;
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1526
    .end local v2    # "i":I
    :cond_3
    const/4 v2, 0x0

    .line 1527
    .local v2, "triggerCap":I
    invoke-direct {p0, v0, v1, v8, v9}, Lcom/android/server/vibrator/VibrationThread$DeviceEffectMap;->requireMixedTriggerCapability(JJ)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1528
    or-int/lit8 v2, v2, 0x10

    .line 1530
    :cond_4
    invoke-direct {p0, v0, v1, v6, v7}, Lcom/android/server/vibrator/VibrationThread$DeviceEffectMap;->requireMixedTriggerCapability(JJ)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1531
    or-int/lit8 v2, v2, 0x20

    .line 1533
    :cond_5
    invoke-direct {p0, v0, v1, v4, v5}, Lcom/android/server/vibrator/VibrationThread$DeviceEffectMap;->requireMixedTriggerCapability(JJ)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1534
    or-int/lit8 v2, v2, 0x40

    .line 1536
    :cond_6
    const-wide/16 v3, 0x1

    or-long/2addr v3, v0

    int-to-long v5, v2

    or-long/2addr v3, v5

    return-wide v3
.end method

.method private requireMixedTriggerCapability(JJ)Z
    .locals 4
    .param p1, "prepareCapabilities"    # J
    .param p3, "capability"    # J

    .line 1545
    and-long v0, p1, p3

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    not-long v0, p3

    and-long/2addr v0, p1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public effectAt(I)Landroid/os/VibrationEffect$Composed;
    .locals 1
    .param p1, "index"    # I

    .line 1503
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationThread$DeviceEffectMap;->mVibratorEffects:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/VibrationEffect$Composed;

    return-object v0
.end method

.method public getRequiredSyncCapabilities()J
    .locals 2

    .line 1488
    iget-wide v0, p0, Lcom/android/server/vibrator/VibrationThread$DeviceEffectMap;->mRequiredSyncCapabilities:J

    return-wide v0
.end method

.method public getVibratorIds()[I
    .locals 1

    .line 1493
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationThread$DeviceEffectMap;->mVibratorIds:[I

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 1479
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationThread$DeviceEffectMap;->mVibratorIds:[I

    array-length v0, v0

    return v0
.end method

.method public vibratorIdAt(I)I
    .locals 1
    .param p1, "index"    # I

    .line 1498
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationThread$DeviceEffectMap;->mVibratorEffects:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    return v0
.end method
