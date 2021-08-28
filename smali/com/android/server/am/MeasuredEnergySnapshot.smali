.class public Lcom/android/server/am/MeasuredEnergySnapshot;
.super Ljava/lang/Object;
.source "MeasuredEnergySnapshot.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/MeasuredEnergySnapshot$MeasuredEnergyDeltaData;
    }
.end annotation


# static fields
.field private static final MILLIVOLTS_PER_VOLT:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "MeasuredEnergySnapshot"

.field public static final UNAVAILABLE:J = -0x1L


# instance fields
.field private final mAttributionSnapshots:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseLongArray;",
            ">;"
        }
    .end annotation
.end field

.field private final mEnergyConsumers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/hardware/power/stats/EnergyConsumer;",
            ">;"
        }
    .end annotation
.end field

.field private final mMeasuredEnergySnapshots:Landroid/util/SparseLongArray;

.field private final mNumCpuClusterOrdinals:I

.field private final mNumOtherOrdinals:I

.field private final mVoltageSnapshots:Landroid/util/SparseIntArray;


# direct methods
.method constructor <init>(Landroid/util/SparseArray;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/hardware/power/stats/EnergyConsumer;",
            ">;)V"
        }
    .end annotation

    .line 91
    .local p1, "idToConsumerMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/hardware/power/stats/EnergyConsumer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object p1, p0, Lcom/android/server/am/MeasuredEnergySnapshot;->mEnergyConsumers:Landroid/util/SparseArray;

    .line 93
    new-instance v0, Landroid/util/SparseLongArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/SparseLongArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/am/MeasuredEnergySnapshot;->mMeasuredEnergySnapshots:Landroid/util/SparseLongArray;

    .line 94
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/am/MeasuredEnergySnapshot;->mVoltageSnapshots:Landroid/util/SparseIntArray;

    .line 96
    const/4 v0, 0x2

    invoke-static {v0, p1}, Lcom/android/server/am/MeasuredEnergySnapshot;->calculateNumOrdinals(ILandroid/util/SparseArray;)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/MeasuredEnergySnapshot;->mNumCpuClusterOrdinals:I

    .line 98
    const/4 v0, 0x0

    invoke-static {v0, p1}, Lcom/android/server/am/MeasuredEnergySnapshot;->calculateNumOrdinals(ILandroid/util/SparseArray;)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/MeasuredEnergySnapshot;->mNumOtherOrdinals:I

    .line 99
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1, v0}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/am/MeasuredEnergySnapshot;->mAttributionSnapshots:Landroid/util/SparseArray;

    .line 100
    return-void
.end method

.method private calculateChargeConsumedUC(JI)J
    .locals 4
    .param p1, "deltaEnergyUJ"    # J
    .param p3, "avgVoltageMV"    # I

    .line 388
    const-wide/16 v0, 0x3e8

    mul-long/2addr v0, p1

    div-int/lit8 v2, p3, 0x2

    int-to-long v2, v2

    add-long/2addr v0, v2

    int-to-long v2, p3

    div-long/2addr v0, v2

    return-wide v0
.end method

.method private static calculateNumOrdinals(ILandroid/util/SparseArray;)I
    .locals 5
    .param p0, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/SparseArray<",
            "Landroid/hardware/power/stats/EnergyConsumer;",
            ">;)I"
        }
    .end annotation

    .line 374
    .local p1, "idToConsumer":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/hardware/power/stats/EnergyConsumer;>;"
    if-nez p1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 375
    :cond_0
    const/4 v0, 0x0

    .line 376
    .local v0, "numOrdinals":I
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 377
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "idx":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 378
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/power/stats/EnergyConsumer;

    .line 379
    .local v3, "consumer":Landroid/hardware/power/stats/EnergyConsumer;
    iget-byte v4, v3, Landroid/hardware/power/stats/EnergyConsumer;->type:B

    if-ne v4, p0, :cond_1

    add-int/lit8 v0, v0, 0x1

    .line 377
    .end local v3    # "consumer":Landroid/hardware/power/stats/EnergyConsumer;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 381
    .end local v2    # "idx":I
    :cond_2
    return v0
.end method

.method private sanitizeCustomBucketName(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "bucketName"    # Ljava/lang/String;

    .line 355
    if-nez p1, :cond_0

    .line 356
    const-string v0, ""

    return-object v0

    .line 358
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 359
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-char v4, v1, v3

    .line 360
    .local v4, "c":C
    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 361
    const/16 v5, 0x20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 362
    :cond_1
    invoke-static {v4}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 363
    const/16 v5, 0x5f

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 365
    :cond_2
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 359
    .end local v4    # "c":C
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 368
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private updateAndGetDeltaForTypeOther(Landroid/hardware/power/stats/EnergyConsumer;[Landroid/hardware/power/stats/EnergyConsumerAttribution;I)Landroid/util/SparseLongArray;
    .locals 17
    .param p1, "consumerInfo"    # Landroid/hardware/power/stats/EnergyConsumer;
    .param p2, "newAttributions"    # [Landroid/hardware/power/stats/EnergyConsumerAttribution;
    .param p3, "avgVoltageMV"    # I

    .line 266
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    iget-byte v3, v1, Landroid/hardware/power/stats/EnergyConsumer;->type:B

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 267
    return-object v4

    .line 269
    :cond_0
    const/4 v3, 0x0

    if-nez p2, :cond_1

    .line 271
    new-array v5, v3, [Landroid/hardware/power/stats/EnergyConsumerAttribution;

    .end local p2    # "newAttributions":[Landroid/hardware/power/stats/EnergyConsumerAttribution;
    .local v5, "newAttributions":[Landroid/hardware/power/stats/EnergyConsumerAttribution;
    goto :goto_0

    .line 269
    .end local v5    # "newAttributions":[Landroid/hardware/power/stats/EnergyConsumerAttribution;
    .restart local p2    # "newAttributions":[Landroid/hardware/power/stats/EnergyConsumerAttribution;
    :cond_1
    move-object/from16 v5, p2

    .line 275
    .end local p2    # "newAttributions":[Landroid/hardware/power/stats/EnergyConsumerAttribution;
    .restart local v5    # "newAttributions":[Landroid/hardware/power/stats/EnergyConsumerAttribution;
    :goto_0
    iget-object v6, v0, Lcom/android/server/am/MeasuredEnergySnapshot;->mAttributionSnapshots:Landroid/util/SparseArray;

    iget v7, v1, Landroid/hardware/power/stats/EnergyConsumer;->id:I

    invoke-virtual {v6, v7, v4}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/SparseLongArray;

    .line 278
    .local v6, "uidOldEnergyMap":Landroid/util/SparseLongArray;
    if-nez v6, :cond_3

    .line 279
    new-instance v7, Landroid/util/SparseLongArray;

    array-length v8, v5

    invoke-direct {v7, v8}, Landroid/util/SparseLongArray;-><init>(I)V

    move-object v6, v7

    .line 280
    iget-object v7, v0, Lcom/android/server/am/MeasuredEnergySnapshot;->mAttributionSnapshots:Landroid/util/SparseArray;

    iget v8, v1, Landroid/hardware/power/stats/EnergyConsumer;->id:I

    invoke-virtual {v7, v8, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 281
    array-length v7, v5

    :goto_1
    if-ge v3, v7, :cond_2

    aget-object v8, v5, v3

    .line 282
    .local v8, "newAttribution":Landroid/hardware/power/stats/EnergyConsumerAttribution;
    iget v9, v8, Landroid/hardware/power/stats/EnergyConsumerAttribution;->uid:I

    iget-wide v10, v8, Landroid/hardware/power/stats/EnergyConsumerAttribution;->energyUWs:J

    invoke-virtual {v6, v9, v10, v11}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 281
    .end local v8    # "newAttribution":Landroid/hardware/power/stats/EnergyConsumerAttribution;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 284
    :cond_2
    return-object v4

    .line 288
    :cond_3
    new-instance v4, Landroid/util/SparseLongArray;

    invoke-direct {v4}, Landroid/util/SparseLongArray;-><init>()V

    .line 290
    .local v4, "uidChargeDeltas":Landroid/util/SparseLongArray;
    array-length v7, v5

    :goto_2
    if-ge v3, v7, :cond_8

    aget-object v8, v5, v3

    .line 291
    .restart local v8    # "newAttribution":Landroid/hardware/power/stats/EnergyConsumerAttribution;
    iget v9, v8, Landroid/hardware/power/stats/EnergyConsumerAttribution;->uid:I

    .line 292
    .local v9, "uid":I
    iget-wide v10, v8, Landroid/hardware/power/stats/EnergyConsumerAttribution;->energyUWs:J

    .line 294
    .local v10, "newEnergyUJ":J
    const-wide/16 v12, 0x0

    invoke-virtual {v6, v9, v12, v13}, Landroid/util/SparseLongArray;->get(IJ)J

    move-result-wide v14

    .line 295
    .local v14, "oldEnergyUJ":J
    invoke-virtual {v6, v9, v10, v11}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 298
    cmp-long v16, v14, v12

    if-gez v16, :cond_4

    move-object/from16 v16, v5

    move-object/from16 p2, v6

    goto :goto_4

    .line 299
    :cond_4
    cmp-long v16, v10, v14

    if-nez v16, :cond_5

    move-object/from16 v16, v5

    move-object/from16 p2, v6

    goto :goto_4

    .line 300
    :cond_5
    move-object/from16 v16, v5

    move-object/from16 p2, v6

    .end local v5    # "newAttributions":[Landroid/hardware/power/stats/EnergyConsumerAttribution;
    .end local v6    # "uidOldEnergyMap":Landroid/util/SparseLongArray;
    .local v16, "newAttributions":[Landroid/hardware/power/stats/EnergyConsumerAttribution;
    .local p2, "uidOldEnergyMap":Landroid/util/SparseLongArray;
    sub-long v5, v10, v14

    .line 301
    .local v5, "deltaUJ":J
    cmp-long v12, v5, v12

    if-ltz v12, :cond_7

    if-gtz v2, :cond_6

    goto :goto_3

    .line 308
    :cond_6
    invoke-direct {v0, v5, v6, v2}, Lcom/android/server/am/MeasuredEnergySnapshot;->calculateChargeConsumedUC(JI)J

    move-result-wide v12

    .line 309
    .local v12, "deltaChargeUC":J
    invoke-virtual {v4, v9, v12, v13}, Landroid/util/SparseLongArray;->put(IJ)V

    goto :goto_4

    .line 302
    .end local v12    # "deltaChargeUC":J
    :cond_7
    :goto_3
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "EnergyConsumer "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v1, Landroid/hardware/power/stats/EnergyConsumer;->name:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ": new energy ("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v13, ") but old energy ("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v13, "). Average voltage ("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ")Skipping. "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v13, "MeasuredEnergySnapshot"

    invoke-static {v13, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    nop

    .line 290
    .end local v5    # "deltaUJ":J
    .end local v8    # "newAttribution":Landroid/hardware/power/stats/EnergyConsumerAttribution;
    .end local v9    # "uid":I
    .end local v10    # "newEnergyUJ":J
    .end local v14    # "oldEnergyUJ":J
    :goto_4
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v6, p2

    move-object/from16 v5, v16

    goto :goto_2

    .line 311
    .end local v16    # "newAttributions":[Landroid/hardware/power/stats/EnergyConsumerAttribution;
    .end local p2    # "uidOldEnergyMap":Landroid/util/SparseLongArray;
    .local v5, "newAttributions":[Landroid/hardware/power/stats/EnergyConsumerAttribution;
    .restart local v6    # "uidOldEnergyMap":Landroid/util/SparseLongArray;
    :cond_8
    return-object v4
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 12
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 316
    const-string v0, "Measured energy snapshot"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 317
    const-string v0, "List of EnergyConsumers:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 318
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/am/MeasuredEnergySnapshot;->mEnergyConsumers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ge v0, v1, :cond_0

    .line 319
    iget-object v1, p0, Lcom/android/server/am/MeasuredEnergySnapshot;->mEnergyConsumers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 320
    .local v1, "id":I
    iget-object v6, p0, Lcom/android/server/am/MeasuredEnergySnapshot;->mEnergyConsumers:Landroid/util/SparseArray;

    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/power/stats/EnergyConsumer;

    .line 321
    .local v6, "consumer":Landroid/hardware/power/stats/EnergyConsumer;
    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v4

    iget v4, v6, Landroid/hardware/power/stats/EnergyConsumer;->id:I

    .line 322
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v7, v5

    iget v4, v6, Landroid/hardware/power/stats/EnergyConsumer;->ordinal:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v7, v3

    iget-byte v3, v6, Landroid/hardware/power/stats/EnergyConsumer;->type:B

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v7, v2

    const/4 v2, 0x4

    iget-object v3, v6, Landroid/hardware/power/stats/EnergyConsumer;->name:Ljava/lang/String;

    aput-object v3, v7, v2

    .line 321
    const-string v2, "    Consumer %d is {id=%d, ordinal=%d, type=%d, name=%s}"

    invoke-static {v2, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 318
    .end local v1    # "id":I
    .end local v6    # "consumer":Landroid/hardware/power/stats/EnergyConsumer;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 324
    .end local v0    # "i":I
    :cond_0
    const-string v0, "Map of consumerIds to energy (in microjoules):"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 325
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/am/MeasuredEnergySnapshot;->mMeasuredEnergySnapshots:Landroid/util/SparseLongArray;

    invoke-virtual {v1}, Landroid/util/SparseLongArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 326
    iget-object v1, p0, Lcom/android/server/am/MeasuredEnergySnapshot;->mMeasuredEnergySnapshots:Landroid/util/SparseLongArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseLongArray;->keyAt(I)I

    move-result v1

    .line 327
    .restart local v1    # "id":I
    iget-object v6, p0, Lcom/android/server/am/MeasuredEnergySnapshot;->mMeasuredEnergySnapshots:Landroid/util/SparseLongArray;

    invoke-virtual {v6, v0}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v6

    .line 328
    .local v6, "energyUJ":J
    iget-object v8, p0, Lcom/android/server/am/MeasuredEnergySnapshot;->mVoltageSnapshots:Landroid/util/SparseIntArray;

    invoke-virtual {v8, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v8

    int-to-long v8, v8

    .line 329
    .local v8, "voltageMV":J
    new-array v10, v2, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v4

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v10, v5

    .line 330
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v10, v3

    .line 329
    const-string v11, "    Consumer %d has energy %d uJ at %d mV"

    invoke-static {v11, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 325
    .end local v1    # "id":I
    .end local v6    # "energyUJ":J
    .end local v8    # "voltageMV":J
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 332
    .end local v0    # "i":I
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "List of the "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/MeasuredEnergySnapshot;->mNumOtherOrdinals:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " OTHER EnergyConsumers:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 333
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/MeasuredEnergySnapshot;->mAttributionSnapshots:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 334
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 335
    return-void
.end method

.method public getOtherOrdinalNames()[Ljava/lang/String;
    .locals 7

    .line 342
    iget v0, p0, Lcom/android/server/am/MeasuredEnergySnapshot;->mNumOtherOrdinals:I

    new-array v0, v0, [Ljava/lang/String;

    .line 343
    .local v0, "names":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 344
    .local v1, "consumerIndex":I
    iget-object v2, p0, Lcom/android/server/am/MeasuredEnergySnapshot;->mEnergyConsumers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 345
    .local v2, "size":I
    const/4 v3, 0x0

    .local v3, "idx":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 346
    iget-object v4, p0, Lcom/android/server/am/MeasuredEnergySnapshot;->mEnergyConsumers:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/power/stats/EnergyConsumer;

    .line 347
    .local v4, "consumer":Landroid/hardware/power/stats/EnergyConsumer;
    iget-byte v5, v4, Landroid/hardware/power/stats/EnergyConsumer;->type:B

    if-nez v5, :cond_0

    .line 348
    add-int/lit8 v5, v1, 0x1

    .end local v1    # "consumerIndex":I
    .local v5, "consumerIndex":I
    iget-object v6, v4, Landroid/hardware/power/stats/EnergyConsumer;->name:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/android/server/am/MeasuredEnergySnapshot;->sanitizeCustomBucketName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v1

    move v1, v5

    .line 345
    .end local v4    # "consumer":Landroid/hardware/power/stats/EnergyConsumer;
    .end local v5    # "consumerIndex":I
    .restart local v1    # "consumerIndex":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 351
    .end local v3    # "idx":I
    :cond_1
    return-object v0
.end method

.method public updateAndGetDelta([Landroid/hardware/power/stats/EnergyConsumerResult;I)Lcom/android/server/am/MeasuredEnergySnapshot$MeasuredEnergyDeltaData;
    .locals 23
    .param p1, "ecrs"    # [Landroid/hardware/power/stats/EnergyConsumerResult;
    .param p2, "voltageMV"    # I

    .line 147
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    const/4 v3, 0x0

    if-eqz v1, :cond_a

    array-length v4, v1

    if-nez v4, :cond_0

    move v1, v2

    goto/16 :goto_3

    .line 150
    :cond_0
    const-string v4, "MeasuredEnergySnapshot"

    if-gtz v2, :cond_1

    .line 151
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected battery voltage ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " mV) when taking measured energy snapshot"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    return-object v3

    .line 157
    :cond_1
    new-instance v5, Lcom/android/server/am/MeasuredEnergySnapshot$MeasuredEnergyDeltaData;

    invoke-direct {v5}, Lcom/android/server/am/MeasuredEnergySnapshot$MeasuredEnergyDeltaData;-><init>()V

    .line 159
    .local v5, "output":Lcom/android/server/am/MeasuredEnergySnapshot$MeasuredEnergyDeltaData;
    array-length v6, v1

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v6, :cond_9

    aget-object v8, v1, v7

    .line 161
    .local v8, "ecr":Landroid/hardware/power/stats/EnergyConsumerResult;
    iget v9, v8, Landroid/hardware/power/stats/EnergyConsumerResult;->id:I

    .line 162
    .local v9, "consumerId":I
    iget-wide v10, v8, Landroid/hardware/power/stats/EnergyConsumerResult;->energyUWs:J

    .line 163
    .local v10, "newEnergyUJ":J
    iget-object v12, v8, Landroid/hardware/power/stats/EnergyConsumerResult;->attribution:[Landroid/hardware/power/stats/EnergyConsumerAttribution;

    .line 166
    .local v12, "newAttributions":[Landroid/hardware/power/stats/EnergyConsumerAttribution;
    iget-object v13, v0, Lcom/android/server/am/MeasuredEnergySnapshot;->mEnergyConsumers:Landroid/util/SparseArray;

    invoke-virtual {v13, v9, v3}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/hardware/power/stats/EnergyConsumer;

    .line 167
    .local v13, "consumer":Landroid/hardware/power/stats/EnergyConsumer;
    if-nez v13, :cond_2

    .line 168
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "updateAndGetDelta given invalid consumerId "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v4, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    move v1, v2

    move/from16 v16, v6

    move/from16 v17, v7

    goto/16 :goto_2

    .line 171
    :cond_2
    iget-byte v14, v13, Landroid/hardware/power/stats/EnergyConsumer;->type:B

    .line 172
    .local v14, "type":I
    iget v15, v13, Landroid/hardware/power/stats/EnergyConsumer;->ordinal:I

    .line 175
    .local v15, "ordinal":I
    iget-object v3, v0, Lcom/android/server/am/MeasuredEnergySnapshot;->mMeasuredEnergySnapshots:Landroid/util/SparseLongArray;

    move/from16 v16, v6

    move/from16 v17, v7

    const-wide/16 v6, -0x1

    invoke-virtual {v3, v9, v6, v7}, Landroid/util/SparseLongArray;->get(IJ)J

    move-result-wide v6

    .line 176
    .local v6, "oldEnergyUJ":J
    iget-object v3, v0, Lcom/android/server/am/MeasuredEnergySnapshot;->mVoltageSnapshots:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v9}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    .line 177
    .local v3, "oldVoltageMV":I
    iget-object v1, v0, Lcom/android/server/am/MeasuredEnergySnapshot;->mMeasuredEnergySnapshots:Landroid/util/SparseLongArray;

    invoke-virtual {v1, v9, v10, v11}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 178
    iget-object v1, v0, Lcom/android/server/am/MeasuredEnergySnapshot;->mVoltageSnapshots:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v9, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 180
    add-int v1, v3, v2

    add-int/lit8 v1, v1, 0x1

    div-int/lit8 v1, v1, 0x2

    .line 181
    .local v1, "avgVoltageMV":I
    nop

    .line 182
    invoke-direct {v0, v13, v12, v1}, Lcom/android/server/am/MeasuredEnergySnapshot;->updateAndGetDeltaForTypeOther(Landroid/hardware/power/stats/EnergyConsumer;[Landroid/hardware/power/stats/EnergyConsumerAttribution;I)Landroid/util/SparseLongArray;

    move-result-object v18

    .line 189
    .local v18, "otherUidCharges":Landroid/util/SparseLongArray;
    const-wide/16 v19, 0x0

    cmp-long v21, v6, v19

    if-gez v21, :cond_3

    move v1, v2

    goto/16 :goto_2

    .line 190
    :cond_3
    cmp-long v21, v10, v6

    if-nez v21, :cond_4

    move v1, v2

    goto/16 :goto_2

    .line 192
    :cond_4
    move-object/from16 v21, v8

    move/from16 v22, v9

    .end local v8    # "ecr":Landroid/hardware/power/stats/EnergyConsumerResult;
    .end local v9    # "consumerId":I
    .local v21, "ecr":Landroid/hardware/power/stats/EnergyConsumerResult;
    .local v22, "consumerId":I
    sub-long v8, v10, v6

    .line 193
    .local v8, "deltaUJ":J
    cmp-long v19, v8, v19

    if-ltz v19, :cond_8

    if-gtz v3, :cond_5

    move/from16 v20, v1

    move/from16 v19, v3

    goto/16 :goto_1

    .line 201
    :cond_5
    move/from16 v19, v3

    .end local v3    # "oldVoltageMV":I
    .local v19, "oldVoltageMV":I
    invoke-direct {v0, v8, v9, v1}, Lcom/android/server/am/MeasuredEnergySnapshot;->calculateChargeConsumedUC(JI)J

    move-result-wide v2

    .line 202
    .local v2, "deltaChargeUC":J
    packed-switch v14, :pswitch_data_0

    .line 240
    move/from16 v20, v1

    .end local v1    # "avgVoltageMV":I
    .local v20, "avgVoltageMV":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Ignoring consumer "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v13, Landroid/hardware/power/stats/EnergyConsumer;->name:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " of unknown type "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v1, p2

    goto/16 :goto_2

    .line 227
    .end local v20    # "avgVoltageMV":I
    .restart local v1    # "avgVoltageMV":I
    :pswitch_0
    iput-wide v2, v5, Lcom/android/server/am/MeasuredEnergySnapshot$MeasuredEnergyDeltaData;->wifiChargeUC:J

    .line 228
    move/from16 v1, p2

    goto/16 :goto_2

    .line 223
    :pswitch_1
    iput-wide v2, v5, Lcom/android/server/am/MeasuredEnergySnapshot$MeasuredEnergyDeltaData;->mobileRadioChargeUC:J

    .line 224
    move/from16 v1, p2

    goto/16 :goto_2

    .line 219
    :pswitch_2
    iput-wide v2, v5, Lcom/android/server/am/MeasuredEnergySnapshot$MeasuredEnergyDeltaData;->gnssChargeUC:J

    .line 220
    move/from16 v1, p2

    goto/16 :goto_2

    .line 215
    :pswitch_3
    iput-wide v2, v5, Lcom/android/server/am/MeasuredEnergySnapshot$MeasuredEnergyDeltaData;->displayChargeUC:J

    .line 216
    move/from16 v1, p2

    goto/16 :goto_2

    .line 208
    :pswitch_4
    move/from16 v20, v1

    .end local v1    # "avgVoltageMV":I
    .restart local v20    # "avgVoltageMV":I
    iget-object v1, v5, Lcom/android/server/am/MeasuredEnergySnapshot$MeasuredEnergyDeltaData;->cpuClusterChargeUC:[J

    if-nez v1, :cond_6

    .line 209
    iget v1, v0, Lcom/android/server/am/MeasuredEnergySnapshot;->mNumCpuClusterOrdinals:I

    new-array v1, v1, [J

    iput-object v1, v5, Lcom/android/server/am/MeasuredEnergySnapshot$MeasuredEnergyDeltaData;->cpuClusterChargeUC:[J

    .line 211
    :cond_6
    iget-object v1, v5, Lcom/android/server/am/MeasuredEnergySnapshot$MeasuredEnergyDeltaData;->cpuClusterChargeUC:[J

    aput-wide v2, v1, v15

    .line 212
    move/from16 v1, p2

    goto :goto_2

    .line 204
    .end local v20    # "avgVoltageMV":I
    .restart local v1    # "avgVoltageMV":I
    :pswitch_5
    move/from16 v20, v1

    .end local v1    # "avgVoltageMV":I
    .restart local v20    # "avgVoltageMV":I
    iput-wide v2, v5, Lcom/android/server/am/MeasuredEnergySnapshot$MeasuredEnergyDeltaData;->bluetoothChargeUC:J

    .line 205
    move/from16 v1, p2

    goto :goto_2

    .line 231
    .end local v20    # "avgVoltageMV":I
    .restart local v1    # "avgVoltageMV":I
    :pswitch_6
    move/from16 v20, v1

    .end local v1    # "avgVoltageMV":I
    .restart local v20    # "avgVoltageMV":I
    iget-object v1, v5, Lcom/android/server/am/MeasuredEnergySnapshot$MeasuredEnergyDeltaData;->otherTotalChargeUC:[J

    if-nez v1, :cond_7

    .line 232
    iget v1, v0, Lcom/android/server/am/MeasuredEnergySnapshot;->mNumOtherOrdinals:I

    new-array v1, v1, [J

    iput-object v1, v5, Lcom/android/server/am/MeasuredEnergySnapshot$MeasuredEnergyDeltaData;->otherTotalChargeUC:[J

    .line 233
    iget v1, v0, Lcom/android/server/am/MeasuredEnergySnapshot;->mNumOtherOrdinals:I

    new-array v1, v1, [Landroid/util/SparseLongArray;

    iput-object v1, v5, Lcom/android/server/am/MeasuredEnergySnapshot$MeasuredEnergyDeltaData;->otherUidChargesUC:[Landroid/util/SparseLongArray;

    .line 235
    :cond_7
    iget-object v1, v5, Lcom/android/server/am/MeasuredEnergySnapshot$MeasuredEnergyDeltaData;->otherTotalChargeUC:[J

    aput-wide v2, v1, v15

    .line 236
    iget-object v1, v5, Lcom/android/server/am/MeasuredEnergySnapshot$MeasuredEnergyDeltaData;->otherUidChargesUC:[Landroid/util/SparseLongArray;

    aput-object v18, v1, v15

    .line 237
    move/from16 v1, p2

    goto :goto_2

    .line 193
    .end local v2    # "deltaChargeUC":J
    .end local v19    # "oldVoltageMV":I
    .end local v20    # "avgVoltageMV":I
    .restart local v1    # "avgVoltageMV":I
    .restart local v3    # "oldVoltageMV":I
    :cond_8
    move/from16 v20, v1

    move/from16 v19, v3

    .line 194
    .end local v1    # "avgVoltageMV":I
    .end local v3    # "oldVoltageMV":I
    .restart local v19    # "oldVoltageMV":I
    .restart local v20    # "avgVoltageMV":I
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bad data! EnergyConsumer "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v13, Landroid/hardware/power/stats/EnergyConsumer;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": new energy ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ") < old energy ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "), new voltage ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "), old voltage ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, v19

    .end local v19    # "oldVoltageMV":I
    .local v2, "oldVoltageMV":I
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "). Skipping. "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    nop

    .line 159
    .end local v2    # "oldVoltageMV":I
    .end local v6    # "oldEnergyUJ":J
    .end local v8    # "deltaUJ":J
    .end local v10    # "newEnergyUJ":J
    .end local v12    # "newAttributions":[Landroid/hardware/power/stats/EnergyConsumerAttribution;
    .end local v13    # "consumer":Landroid/hardware/power/stats/EnergyConsumer;
    .end local v14    # "type":I
    .end local v15    # "ordinal":I
    .end local v18    # "otherUidCharges":Landroid/util/SparseLongArray;
    .end local v20    # "avgVoltageMV":I
    .end local v21    # "ecr":Landroid/hardware/power/stats/EnergyConsumerResult;
    .end local v22    # "consumerId":I
    :goto_2
    add-int/lit8 v7, v17, 0x1

    move-object/from16 v0, p0

    move v2, v1

    move/from16 v6, v16

    const/4 v3, 0x0

    move-object/from16 v1, p1

    goto/16 :goto_0

    .line 244
    :cond_9
    move v1, v2

    return-object v5

    .line 147
    .end local v5    # "output":Lcom/android/server/am/MeasuredEnergySnapshot$MeasuredEnergyDeltaData;
    :cond_a
    move v1, v2

    .line 148
    :goto_3
    const/4 v0, 0x0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
