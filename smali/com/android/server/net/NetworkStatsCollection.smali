.class public Lcom/android/server/net/NetworkStatsCollection;
.super Ljava/lang/Object;
.source "NetworkStatsCollection.java"

# interfaces
.implements Lcom/android/internal/util/FileRotator$Reader;
.implements Lcom/android/internal/util/FileRotator$Writer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/net/NetworkStatsCollection$Key;
    }
.end annotation


# static fields
.field private static final BUFFER_SIZE:I = 0x2000

.field private static final FILE_MAGIC:I = 0x414e4554

.field private static final VERSION_NETWORK_INIT:I = 0x1

.field private static final VERSION_UID_INIT:I = 0x1

.field private static final VERSION_UID_WITH_IDENT:I = 0x2

.field private static final VERSION_UID_WITH_SET:I = 0x4

.field private static final VERSION_UID_WITH_TAG:I = 0x3

.field private static final VERSION_UNIFIED_INIT:I = 0x10


# instance fields
.field private final mBucketDuration:J

.field private mDirty:Z

.field private mEndMillis:J

.field private mStartMillis:J

.field private mStats:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/android/server/net/NetworkStatsCollection$Key;",
            "Landroid/net/NetworkStatsHistory;",
            ">;"
        }
    .end annotation
.end field

.field private mTotalBytes:J


# direct methods
.method public constructor <init>(J)V
    .locals 1
    .param p1, "bucketDuration"    # J

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    .line 116
    iput-wide p1, p0, Lcom/android/server/net/NetworkStatsCollection;->mBucketDuration:J

    .line 117
    invoke-virtual {p0}, Lcom/android/server/net/NetworkStatsCollection;->reset()V

    .line 118
    return-void
.end method

.method private dumpCheckin(Ljava/io/PrintWriter;JJLandroid/net/NetworkTemplate;Ljava/lang/String;)V
    .locals 15
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "start"    # J
    .param p4, "end"    # J
    .param p6, "groupTemplate"    # Landroid/net/NetworkTemplate;
    .param p7, "groupPrefix"    # Ljava/lang/String;

    .line 716
    move-object v0, p0

    move-object/from16 v1, p1

    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 719
    .local v2, "grouped":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/net/NetworkStatsCollection$Key;Landroid/net/NetworkStatsHistory;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v4, v0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 720
    iget-object v4, v0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/net/NetworkStatsCollection$Key;

    .line 721
    .local v4, "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    iget-object v5, v0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/NetworkStatsHistory;

    .line 723
    .local v5, "value":Landroid/net/NetworkStatsHistory;
    iget-object v6, v4, Lcom/android/server/net/NetworkStatsCollection$Key;->ident:Lcom/android/server/net/NetworkIdentitySet;

    move-object/from16 v12, p6

    invoke-static {v12, v6}, Lcom/android/server/net/NetworkStatsCollection;->templateMatches(Landroid/net/NetworkTemplate;Lcom/android/server/net/NetworkIdentitySet;)Z

    move-result v6

    if-nez v6, :cond_0

    goto :goto_2

    .line 724
    :cond_0
    iget v6, v4, Lcom/android/server/net/NetworkStatsCollection$Key;->set:I

    const/16 v7, 0x3e8

    if-lt v6, v7, :cond_1

    goto :goto_2

    .line 726
    :cond_1
    new-instance v6, Lcom/android/server/net/NetworkStatsCollection$Key;

    const/4 v7, 0x0

    iget v8, v4, Lcom/android/server/net/NetworkStatsCollection$Key;->uid:I

    iget v9, v4, Lcom/android/server/net/NetworkStatsCollection$Key;->set:I

    iget v10, v4, Lcom/android/server/net/NetworkStatsCollection$Key;->tag:I

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/android/server/net/NetworkStatsCollection$Key;-><init>(Lcom/android/server/net/NetworkIdentitySet;III)V

    move-object v13, v6

    .line 727
    .local v13, "groupKey":Lcom/android/server/net/NetworkStatsCollection$Key;
    invoke-virtual {v2, v13}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/NetworkStatsHistory;

    .line 728
    .local v6, "groupHistory":Landroid/net/NetworkStatsHistory;
    if-nez v6, :cond_2

    .line 729
    new-instance v7, Landroid/net/NetworkStatsHistory;

    invoke-virtual {v5}, Landroid/net/NetworkStatsHistory;->getBucketDuration()J

    move-result-wide v8

    invoke-direct {v7, v8, v9}, Landroid/net/NetworkStatsHistory;-><init>(J)V

    move-object v6, v7

    .line 730
    invoke-virtual {v2, v13, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v14, v6

    goto :goto_1

    .line 728
    :cond_2
    move-object v14, v6

    .line 732
    .end local v6    # "groupHistory":Landroid/net/NetworkStatsHistory;
    .local v14, "groupHistory":Landroid/net/NetworkStatsHistory;
    :goto_1
    move-object v6, v14

    move-object v7, v5

    move-wide/from16 v8, p2

    move-wide/from16 v10, p4

    invoke-virtual/range {v6 .. v11}, Landroid/net/NetworkStatsHistory;->recordHistory(Landroid/net/NetworkStatsHistory;JJ)V

    .line 719
    .end local v4    # "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    .end local v5    # "value":Landroid/net/NetworkStatsHistory;
    .end local v13    # "groupKey":Lcom/android/server/net/NetworkStatsCollection$Key;
    .end local v14    # "groupHistory":Landroid/net/NetworkStatsHistory;
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    move-object/from16 v12, p6

    .line 735
    .end local v3    # "i":I
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_3
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v3, v4, :cond_5

    .line 736
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/net/NetworkStatsCollection$Key;

    .line 737
    .restart local v4    # "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/NetworkStatsHistory;

    .line 739
    .restart local v5    # "value":Landroid/net/NetworkStatsHistory;
    invoke-virtual {v5}, Landroid/net/NetworkStatsHistory;->size()I

    move-result v6

    if-nez v6, :cond_4

    move-object/from16 v6, p7

    goto :goto_4

    .line 741
    :cond_4
    const-string v6, "c,"

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 742
    move-object/from16 v6, p7

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v7, 0x2c

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(C)V

    .line 743
    iget v8, v4, Lcom/android/server/net/NetworkStatsCollection$Key;->uid:I

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(C)V

    .line 744
    iget v8, v4, Lcom/android/server/net/NetworkStatsCollection$Key;->set:I

    invoke-static {v8}, Landroid/net/NetworkStats;->setToCheckinString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(C)V

    .line 745
    iget v7, v4, Lcom/android/server/net/NetworkStatsCollection$Key;->tag:I

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(I)V

    .line 746
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 748
    invoke-virtual {v5, v1}, Landroid/net/NetworkStatsHistory;->dumpCheckin(Ljava/io/PrintWriter;)V

    .line 735
    .end local v4    # "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    .end local v5    # "value":Landroid/net/NetworkStatsHistory;
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_5
    move-object/from16 v6, p7

    .line 750
    .end local v3    # "i":I
    return-void
.end method

.method private estimateBuckets()I
    .locals 4

    .line 655
    iget-wide v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mEndMillis:J

    iget-wide v2, p0, Lcom/android/server/net/NetworkStatsCollection;->mStartMillis:J

    sub-long/2addr v0, v2

    const-wide v2, 0xb43e9400L

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/net/NetworkStatsCollection;->mBucketDuration:J

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method private findOrCreateHistory(Lcom/android/server/net/NetworkIdentitySet;III)Landroid/net/NetworkStatsHistory;
    .locals 7
    .param p1, "ident"    # Lcom/android/server/net/NetworkIdentitySet;
    .param p2, "uid"    # I
    .param p3, "set"    # I
    .param p4, "tag"    # I

    .line 421
    new-instance v0, Lcom/android/server/net/NetworkStatsCollection$Key;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/server/net/NetworkStatsCollection$Key;-><init>(Lcom/android/server/net/NetworkIdentitySet;III)V

    .line 422
    .local v0, "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkStatsHistory;

    .line 425
    .local v1, "existing":Landroid/net/NetworkStatsHistory;
    const/4 v2, 0x0

    .line 426
    .local v2, "updated":Landroid/net/NetworkStatsHistory;
    if-nez v1, :cond_0

    .line 427
    new-instance v3, Landroid/net/NetworkStatsHistory;

    iget-wide v4, p0, Lcom/android/server/net/NetworkStatsCollection;->mBucketDuration:J

    const/16 v6, 0xa

    invoke-direct {v3, v4, v5, v6}, Landroid/net/NetworkStatsHistory;-><init>(JI)V

    move-object v2, v3

    goto :goto_0

    .line 428
    :cond_0
    invoke-virtual {v1}, Landroid/net/NetworkStatsHistory;->getBucketDuration()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/server/net/NetworkStatsCollection;->mBucketDuration:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1

    .line 429
    new-instance v3, Landroid/net/NetworkStatsHistory;

    iget-wide v4, p0, Lcom/android/server/net/NetworkStatsCollection;->mBucketDuration:J

    invoke-direct {v3, v1, v4, v5}, Landroid/net/NetworkStatsHistory;-><init>(Landroid/net/NetworkStatsHistory;J)V

    move-object v2, v3

    .line 432
    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    .line 433
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    return-object v2

    .line 436
    :cond_2
    return-object v1
.end method

.method private getSortedKeys()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/net/NetworkStatsCollection$Key;",
            ">;"
        }
    .end annotation

    .line 660
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 661
    .local v0, "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/net/NetworkStatsCollection$Key;>;"
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 662
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 663
    return-object v0
.end method

.method private noteRecordedHistory(JJJ)V
    .locals 2
    .param p1, "startMillis"    # J
    .param p3, "endMillis"    # J
    .param p5, "totalBytes"    # J

    .line 648
    iget-wide v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mStartMillis:J

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    iput-wide p1, p0, Lcom/android/server/net/NetworkStatsCollection;->mStartMillis:J

    .line 649
    :cond_0
    iget-wide v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mEndMillis:J

    cmp-long v0, p3, v0

    if-lez v0, :cond_1

    iput-wide p3, p0, Lcom/android/server/net/NetworkStatsCollection;->mEndMillis:J

    .line 650
    :cond_1
    iget-wide v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mTotalBytes:J

    add-long/2addr v0, p5

    iput-wide v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mTotalBytes:J

    .line 651
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mDirty:Z

    .line 652
    return-void
.end method

.method private read(Ljava/io/DataInput;)V
    .locals 12
    .param p1, "in"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 448
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v0

    .line 449
    .local v0, "magic":I
    const v1, 0x414e4554

    if-ne v0, v1, :cond_2

    .line 453
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v1

    .line 454
    .local v1, "version":I
    packed-switch v1, :pswitch_data_0

    .line 475
    new-instance v2, Ljava/net/ProtocolException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unexpected version: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 457
    :pswitch_0
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v2

    .line 458
    .local v2, "identSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 459
    new-instance v4, Lcom/android/server/net/NetworkIdentitySet;

    invoke-direct {v4, p1}, Lcom/android/server/net/NetworkIdentitySet;-><init>(Ljava/io/DataInput;)V

    .line 461
    .local v4, "ident":Lcom/android/server/net/NetworkIdentitySet;
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v5

    .line 462
    .local v5, "size":I
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_1
    if-ge v6, v5, :cond_0

    .line 463
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v7

    .line 464
    .local v7, "uid":I
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v8

    .line 465
    .local v8, "set":I
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v9

    .line 467
    .local v9, "tag":I
    new-instance v10, Lcom/android/server/net/NetworkStatsCollection$Key;

    invoke-direct {v10, v4, v7, v8, v9}, Lcom/android/server/net/NetworkStatsCollection$Key;-><init>(Lcom/android/server/net/NetworkIdentitySet;III)V

    .line 468
    .local v10, "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    new-instance v11, Landroid/net/NetworkStatsHistory;

    invoke-direct {v11, p1}, Landroid/net/NetworkStatsHistory;-><init>(Ljava/io/DataInput;)V

    .line 469
    .local v11, "history":Landroid/net/NetworkStatsHistory;
    invoke-direct {p0, v10, v11}, Lcom/android/server/net/NetworkStatsCollection;->recordHistory(Lcom/android/server/net/NetworkStatsCollection$Key;Landroid/net/NetworkStatsHistory;)V

    .line 462
    .end local v7    # "uid":I
    .end local v8    # "set":I
    .end local v9    # "tag":I
    .end local v10    # "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    .end local v11    # "history":Landroid/net/NetworkStatsHistory;
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 458
    .end local v4    # "ident":Lcom/android/server/net/NetworkIdentitySet;
    .end local v5    # "size":I
    .end local v6    # "j":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 472
    .end local v3    # "i":I
    :cond_1
    nop

    .line 478
    .end local v2    # "identSize":I
    return-void

    .line 450
    .end local v1    # "version":I
    :cond_2
    new-instance v1, Ljava/net/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unexpected magic: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
    .end packed-switch
.end method

.method private recordHistory(Lcom/android/server/net/NetworkStatsCollection$Key;Landroid/net/NetworkStatsHistory;)V
    .locals 8
    .param p1, "key"    # Lcom/android/server/net/NetworkStatsCollection$Key;
    .param p2, "history"    # Landroid/net/NetworkStatsHistory;

    .line 396
    invoke-virtual {p2}, Landroid/net/NetworkStatsHistory;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 397
    :cond_0
    invoke-virtual {p2}, Landroid/net/NetworkStatsHistory;->getStart()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/net/NetworkStatsHistory;->getEnd()J

    move-result-wide v4

    invoke-virtual {p2}, Landroid/net/NetworkStatsHistory;->getTotalBytes()J

    move-result-wide v6

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/net/NetworkStatsCollection;->noteRecordedHistory(JJJ)V

    .line 399
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkStatsHistory;

    .line 400
    .local v0, "target":Landroid/net/NetworkStatsHistory;
    if-nez v0, :cond_1

    .line 401
    new-instance v1, Landroid/net/NetworkStatsHistory;

    invoke-virtual {p2}, Landroid/net/NetworkStatsHistory;->getBucketDuration()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Landroid/net/NetworkStatsHistory;-><init>(J)V

    move-object v0, v1

    .line 402
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    :cond_1
    invoke-virtual {v0, p2}, Landroid/net/NetworkStatsHistory;->recordEntireHistory(Landroid/net/NetworkStatsHistory;)V

    .line 405
    return-void
.end method

.method private static templateMatches(Landroid/net/NetworkTemplate;Lcom/android/server/net/NetworkIdentitySet;)Z
    .locals 3
    .param p0, "template"    # Landroid/net/NetworkTemplate;
    .param p1, "identSet"    # Lcom/android/server/net/NetworkIdentitySet;

    .line 757
    invoke-virtual {p1}, Lcom/android/server/net/NetworkIdentitySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkIdentity;

    .line 758
    .local v1, "ident":Landroid/net/NetworkIdentity;
    invoke-virtual {p0, v1}, Landroid/net/NetworkTemplate;->matches(Landroid/net/NetworkIdentity;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 759
    const/4 v0, 0x1

    return v0

    .line 761
    .end local v1    # "ident":Landroid/net/NetworkIdentity;
    :cond_0
    goto :goto_0

    .line 762
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private write(Ljava/io/DataOutput;)V
    .locals 8
    .param p1, "out"    # Ljava/io/DataOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 489
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    .line 490
    .local v0, "keysByIdent":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/net/NetworkIdentitySet;Ljava/util/ArrayList<Lcom/android/server/net/NetworkStatsCollection$Key;>;>;"
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/net/NetworkStatsCollection$Key;

    .line 491
    .local v2, "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    iget-object v3, v2, Lcom/android/server/net/NetworkStatsCollection$Key;->ident:Lcom/android/server/net/NetworkIdentitySet;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 492
    .local v3, "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/net/NetworkStatsCollection$Key;>;"
    if-nez v3, :cond_0

    .line 493
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 494
    iget-object v4, v2, Lcom/android/server/net/NetworkStatsCollection$Key;->ident:Lcom/android/server/net/NetworkIdentitySet;

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    :cond_0
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 497
    .end local v2    # "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    .end local v3    # "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/net/NetworkStatsCollection$Key;>;"
    goto :goto_0

    .line 499
    :cond_1
    const v1, 0x414e4554

    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeInt(I)V

    .line 500
    const/16 v1, 0x10

    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeInt(I)V

    .line 502
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeInt(I)V

    .line 503
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/net/NetworkIdentitySet;

    .line 504
    .local v2, "ident":Lcom/android/server/net/NetworkIdentitySet;
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 505
    .restart local v3    # "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/net/NetworkStatsCollection$Key;>;"
    invoke-virtual {v2, p1}, Lcom/android/server/net/NetworkIdentitySet;->writeToStream(Ljava/io/DataOutput;)V

    .line 507
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-interface {p1, v4}, Ljava/io/DataOutput;->writeInt(I)V

    .line 508
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/net/NetworkStatsCollection$Key;

    .line 509
    .local v5, "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    iget-object v6, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/NetworkStatsHistory;

    .line 510
    .local v6, "history":Landroid/net/NetworkStatsHistory;
    iget v7, v5, Lcom/android/server/net/NetworkStatsCollection$Key;->uid:I

    invoke-interface {p1, v7}, Ljava/io/DataOutput;->writeInt(I)V

    .line 511
    iget v7, v5, Lcom/android/server/net/NetworkStatsCollection$Key;->set:I

    invoke-interface {p1, v7}, Ljava/io/DataOutput;->writeInt(I)V

    .line 512
    iget v7, v5, Lcom/android/server/net/NetworkStatsCollection$Key;->tag:I

    invoke-interface {p1, v7}, Ljava/io/DataOutput;->writeInt(I)V

    .line 513
    invoke-virtual {v6, p1}, Landroid/net/NetworkStatsHistory;->writeToStream(Ljava/io/DataOutput;)V

    .line 514
    .end local v5    # "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    .end local v6    # "history":Landroid/net/NetworkStatsHistory;
    goto :goto_2

    .line 515
    .end local v2    # "ident":Lcom/android/server/net/NetworkIdentitySet;
    .end local v3    # "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/net/NetworkStatsCollection$Key;>;"
    :cond_2
    goto :goto_1

    .line 516
    :cond_3
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    .line 121
    invoke-virtual {p0}, Lcom/android/server/net/NetworkStatsCollection;->reset()V

    .line 122
    return-void
.end method

.method public clearDirty()V
    .locals 1

    .line 161
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mDirty:Z

    .line 162
    return-void
.end method

.method public dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 4
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 667
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsCollection;->getSortedKeys()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/net/NetworkStatsCollection$Key;

    .line 668
    .local v1, "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    const-string v2, "ident="

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/android/server/net/NetworkStatsCollection$Key;->ident:Lcom/android/server/net/NetworkIdentitySet;

    invoke-virtual {v2}, Lcom/android/server/net/NetworkIdentitySet;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 669
    const-string v2, " uid="

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v2, v1, Lcom/android/server/net/NetworkStatsCollection$Key;->uid:I

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 670
    const-string v2, " set="

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v2, v1, Lcom/android/server/net/NetworkStatsCollection$Key;->set:I

    invoke-static {v2}, Landroid/net/NetworkStats;->setToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 671
    const-string v2, " tag="

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v2, v1, Lcom/android/server/net/NetworkStatsCollection$Key;->tag:I

    invoke-static {v2}, Landroid/net/NetworkStats;->tagToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 673
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkStatsHistory;

    .line 674
    .local v2, "history":Landroid/net/NetworkStatsHistory;
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 675
    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Landroid/net/NetworkStatsHistory;->dump(Lcom/android/internal/util/IndentingPrintWriter;Z)V

    .line 676
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 677
    .end local v1    # "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    .end local v2    # "history":Landroid/net/NetworkStatsHistory;
    goto :goto_0

    .line 678
    :cond_0
    return-void
.end method

.method public dumpCheckin(Ljava/io/PrintWriter;JJ)V
    .locals 16
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "start"    # J
    .param p4, "end"    # J

    .line 704
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateMobileWildcard()Landroid/net/NetworkTemplate;

    move-result-object v6

    const-string v7, "cell"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/server/net/NetworkStatsCollection;->dumpCheckin(Ljava/io/PrintWriter;JJLandroid/net/NetworkTemplate;Ljava/lang/String;)V

    .line 705
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateWifiWildcard()Landroid/net/NetworkTemplate;

    move-result-object v14

    const-string/jumbo v15, "wifi"

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-wide/from16 v10, p2

    move-wide/from16 v12, p4

    invoke-direct/range {v8 .. v15}, Lcom/android/server/net/NetworkStatsCollection;->dumpCheckin(Ljava/io/PrintWriter;JJLandroid/net/NetworkTemplate;Ljava/lang/String;)V

    .line 706
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateEthernet()Landroid/net/NetworkTemplate;

    move-result-object v6

    const-string v7, "eth"

    invoke-direct/range {v0 .. v7}, Lcom/android/server/net/NetworkStatsCollection;->dumpCheckin(Ljava/io/PrintWriter;JJLandroid/net/NetworkTemplate;Ljava/lang/String;)V

    .line 707
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateBluetooth()Landroid/net/NetworkTemplate;

    move-result-object v14

    const-string v15, "bt"

    invoke-direct/range {v8 .. v15}, Lcom/android/server/net/NetworkStatsCollection;->dumpCheckin(Ljava/io/PrintWriter;JJLandroid/net/NetworkTemplate;Ljava/lang/String;)V

    .line 708
    return-void
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 12
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "tag"    # J

    .line 681
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 683
    .local v0, "start":J
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsCollection;->getSortedKeys()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/net/NetworkStatsCollection$Key;

    .line 684
    .local v3, "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    const-wide v4, 0x20b00000001L

    invoke-virtual {p1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    .line 687
    .local v4, "startStats":J
    const-wide v6, 0x10b00000001L

    invoke-virtual {p1, v6, v7}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v8

    .line 688
    .local v8, "startKey":J
    iget-object v10, v3, Lcom/android/server/net/NetworkStatsCollection$Key;->ident:Lcom/android/server/net/NetworkIdentitySet;

    invoke-virtual {v10, p1, v6, v7}, Lcom/android/server/net/NetworkIdentitySet;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 689
    const-wide v6, 0x10500000002L

    iget v10, v3, Lcom/android/server/net/NetworkStatsCollection$Key;->uid:I

    invoke-virtual {p1, v6, v7, v10}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 690
    const-wide v6, 0x10500000003L

    iget v10, v3, Lcom/android/server/net/NetworkStatsCollection$Key;->set:I

    invoke-virtual {p1, v6, v7, v10}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 691
    const-wide v6, 0x10500000004L

    iget v10, v3, Lcom/android/server/net/NetworkStatsCollection$Key;->tag:I

    invoke-virtual {p1, v6, v7, v10}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 692
    invoke-virtual {p1, v8, v9}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 695
    iget-object v6, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v6, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/NetworkStatsHistory;

    .line 696
    .local v6, "history":Landroid/net/NetworkStatsHistory;
    const-wide v10, 0x10b00000002L

    invoke-virtual {v6, p1, v10, v11}, Landroid/net/NetworkStatsHistory;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 697
    invoke-virtual {p1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 698
    .end local v3    # "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    .end local v4    # "startStats":J
    .end local v6    # "history":Landroid/net/NetworkStatsHistory;
    .end local v8    # "startKey":J
    goto :goto_0

    .line 700
    :cond_0
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 701
    return-void
.end method

.method public getEndMillis()J
    .locals 2

    .line 149
    iget-wide v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mEndMillis:J

    return-wide v0
.end method

.method public getFirstAtomicBucketMillis()J
    .locals 5

    .line 141
    iget-wide v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mStartMillis:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 142
    return-wide v2

    .line 144
    :cond_0
    iget-wide v2, p0, Lcom/android/server/net/NetworkStatsCollection;->mBucketDuration:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getHistory(Landroid/net/NetworkTemplate;Landroid/telephony/SubscriptionPlan;IIIIJJII)Landroid/net/NetworkStatsHistory;
    .locals 46
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "augmentPlan"    # Landroid/telephony/SubscriptionPlan;
    .param p3, "uid"    # I
    .param p4, "set"    # I
    .param p5, "tag"    # I
    .param p6, "fields"    # I
    .param p7, "start"    # J
    .param p9, "end"    # J
    .param p11, "accessLevel"    # I
    .param p12, "callerUid"    # I

    .line 225
    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p6

    move/from16 v9, p12

    move/from16 v10, p11

    invoke-static {v1, v9, v10}, Lcom/android/server/net/NetworkStatsAccess;->isAccessibleToUser(III)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 232
    sub-long v3, p9, p7

    iget-wide v5, v0, Lcom/android/server/net/NetworkStatsCollection;->mBucketDuration:J

    div-long v11, v3, v5

    const-wide/16 v13, 0x0

    const-wide v3, 0x39ef8b000L

    div-long v15, v3, v5

    invoke-static/range {v11 .. v16}, Landroid/util/MathUtils;->constrain(JJJ)J

    move-result-wide v3

    long-to-int v11, v3

    .line 234
    .local v11, "bucketEstimate":I
    new-instance v3, Landroid/net/NetworkStatsHistory;

    iget-wide v4, v0, Lcom/android/server/net/NetworkStatsCollection;->mBucketDuration:J

    invoke-direct {v3, v4, v5, v11, v2}, Landroid/net/NetworkStatsHistory;-><init>(JII)V

    move-object v7, v3

    .line 238
    .local v7, "combined":Landroid/net/NetworkStatsHistory;
    cmp-long v3, p7, p9

    if-nez v3, :cond_0

    return-object v7

    .line 241
    :cond_0
    const-wide/16 v3, -0x1

    .line 242
    .local v3, "augmentStart":J
    const-wide/16 v5, -0x1

    if-eqz p2, :cond_1

    invoke-virtual/range {p2 .. p2}, Landroid/telephony/SubscriptionPlan;->getDataUsageTime()J

    move-result-wide v12

    goto :goto_0

    .line 243
    :cond_1
    move-wide v12, v5

    :goto_0
    nop

    .line 245
    .local v12, "augmentEnd":J
    move-wide/from16 v14, p7

    .line 246
    .local v14, "collectStart":J
    move-wide/from16 v16, p9

    .line 248
    .local v16, "collectEnd":J
    cmp-long v8, v12, v5

    if-eqz v8, :cond_4

    .line 249
    invoke-virtual/range {p2 .. p2}, Landroid/telephony/SubscriptionPlan;->cycleIterator()Ljava/util/Iterator;

    move-result-object v8

    .line 250
    .local v8, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/util/Range<Ljava/time/ZonedDateTime;>;>;"
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_3

    .line 251
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/util/Range;

    .line 252
    .local v18, "cycle":Landroid/util/Range;, "Landroid/util/Range<Ljava/time/ZonedDateTime;>;"
    invoke-virtual/range {v18 .. v18}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v19

    check-cast v19, Ljava/time/ZonedDateTime;

    invoke-virtual/range {v19 .. v19}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v19

    .line 253
    .local v19, "cycleStart":J
    invoke-virtual/range {v18 .. v18}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v21

    check-cast v21, Ljava/time/ZonedDateTime;

    invoke-virtual/range {v21 .. v21}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v21

    .line 254
    .local v21, "cycleEnd":J
    cmp-long v23, v19, v12

    if-gtz v23, :cond_2

    cmp-long v23, v12, v21

    if-gez v23, :cond_2

    .line 255
    move-wide/from16 v3, v19

    .line 256
    invoke-static {v14, v15, v3, v4}, Ljava/lang/Long;->min(JJ)J

    move-result-wide v14

    .line 257
    move-wide/from16 v5, v16

    .end local v16    # "collectEnd":J
    .local v5, "collectEnd":J
    invoke-static {v5, v6, v12, v13}, Ljava/lang/Long;->max(JJ)J

    move-result-wide v16

    .line 258
    .end local v5    # "collectEnd":J
    .restart local v16    # "collectEnd":J
    move-wide/from16 v5, v16

    goto :goto_2

    .line 254
    :cond_2
    move-wide/from16 v5, v16

    .line 260
    .end local v16    # "collectEnd":J
    .end local v18    # "cycle":Landroid/util/Range;, "Landroid/util/Range<Ljava/time/ZonedDateTime;>;"
    .end local v19    # "cycleStart":J
    .end local v21    # "cycleEnd":J
    .restart local v5    # "collectEnd":J
    move-wide/from16 v16, v5

    const-wide/16 v5, -0x1

    goto :goto_1

    .line 250
    .end local v5    # "collectEnd":J
    .restart local v16    # "collectEnd":J
    :cond_3
    move-wide/from16 v5, v16

    .end local v16    # "collectEnd":J
    .restart local v5    # "collectEnd":J
    goto :goto_2

    .line 248
    .end local v5    # "collectEnd":J
    .end local v8    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/util/Range<Ljava/time/ZonedDateTime;>;>;"
    .restart local v16    # "collectEnd":J
    :cond_4
    move-wide/from16 v5, v16

    .line 263
    .end local v16    # "collectEnd":J
    .restart local v5    # "collectEnd":J
    :goto_2
    const-wide/16 v16, -0x1

    cmp-long v8, v3, v16

    if-eqz v8, :cond_5

    .line 265
    invoke-virtual {v0, v3, v4}, Lcom/android/server/net/NetworkStatsCollection;->roundUp(J)J

    move-result-wide v3

    .line 266
    invoke-virtual {v0, v12, v13}, Lcom/android/server/net/NetworkStatsCollection;->roundDown(J)J

    move-result-wide v12

    .line 268
    invoke-virtual {v0, v14, v15}, Lcom/android/server/net/NetworkStatsCollection;->roundDown(J)J

    move-result-wide v14

    .line 269
    invoke-virtual {v0, v5, v6}, Lcom/android/server/net/NetworkStatsCollection;->roundUp(J)J

    move-result-wide v5

    move-wide/from16 v18, v3

    move-wide/from16 v20, v5

    move-wide/from16 v24, v12

    move-wide/from16 v26, v14

    goto :goto_3

    .line 263
    :cond_5
    move-wide/from16 v18, v3

    move-wide/from16 v20, v5

    move-wide/from16 v24, v12

    move-wide/from16 v26, v14

    .line 272
    .end local v3    # "augmentStart":J
    .end local v5    # "collectEnd":J
    .end local v12    # "augmentEnd":J
    .end local v14    # "collectStart":J
    .local v18, "augmentStart":J
    .local v20, "collectEnd":J
    .local v24, "augmentEnd":J
    .local v26, "collectStart":J
    :goto_3
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_4
    iget-object v4, v0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v3, v4, :cond_9

    .line 273
    iget-object v4, v0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/net/NetworkStatsCollection$Key;

    .line 274
    .local v4, "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    iget v5, v4, Lcom/android/server/net/NetworkStatsCollection$Key;->uid:I

    if-ne v5, v1, :cond_6

    iget v5, v4, Lcom/android/server/net/NetworkStatsCollection$Key;->set:I

    move/from16 v8, p4

    invoke-static {v8, v5}, Landroid/net/NetworkStats;->setMatches(II)Z

    move-result v5

    if-eqz v5, :cond_7

    iget v5, v4, Lcom/android/server/net/NetworkStatsCollection$Key;->tag:I

    move/from16 v6, p5

    if-ne v5, v6, :cond_8

    iget-object v5, v4, Lcom/android/server/net/NetworkStatsCollection$Key;->ident:Lcom/android/server/net/NetworkIdentitySet;

    .line 275
    move-object/from16 v14, p1

    invoke-static {v14, v5}, Lcom/android/server/net/NetworkStatsCollection;->templateMatches(Landroid/net/NetworkTemplate;Lcom/android/server/net/NetworkIdentitySet;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 276
    iget-object v5, v0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/NetworkStatsHistory;

    .line 277
    .local v5, "value":Landroid/net/NetworkStatsHistory;
    move-object v12, v7

    move-object v13, v5

    move-wide/from16 v14, v26

    move-wide/from16 v16, v20

    invoke-virtual/range {v12 .. v17}, Landroid/net/NetworkStatsHistory;->recordHistory(Landroid/net/NetworkStatsHistory;JJ)V

    goto :goto_5

    .line 274
    .end local v5    # "value":Landroid/net/NetworkStatsHistory;
    :cond_6
    move/from16 v8, p4

    :cond_7
    move/from16 v6, p5

    .line 272
    .end local v4    # "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    :cond_8
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_9
    move/from16 v8, p4

    move/from16 v6, p5

    .line 281
    .end local v3    # "i":I
    const-wide/16 v3, -0x1

    cmp-long v3, v18, v3

    if-eqz v3, :cond_12

    .line 282
    const/16 v17, 0x0

    move-object v12, v7

    move-wide/from16 v13, v18

    move-wide/from16 v15, v24

    invoke-virtual/range {v12 .. v17}, Landroid/net/NetworkStatsHistory;->getValues(JJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v5

    .line 287
    .local v5, "entry":Landroid/net/NetworkStatsHistory$Entry;
    iget-wide v3, v5, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    const-wide/16 v13, 0x0

    cmp-long v3, v3, v13

    if-eqz v3, :cond_b

    iget-wide v3, v5, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    cmp-long v3, v3, v13

    if-nez v3, :cond_a

    goto :goto_6

    :cond_a
    move-wide v3, v13

    goto :goto_7

    .line 288
    :cond_b
    :goto_6
    new-instance v17, Landroid/net/NetworkStats$Entry;

    const-wide/16 v29, 0x1

    const-wide/16 v31, 0x0

    const-wide/16 v33, 0x1

    const-wide/16 v35, 0x0

    const-wide/16 v37, 0x0

    move-object/from16 v28, v17

    invoke-direct/range {v28 .. v38}, Landroid/net/NetworkStats$Entry;-><init>(JJJJJ)V

    move-object v12, v7

    move-wide v3, v13

    move-wide/from16 v13, v18

    move-wide/from16 v15, v24

    invoke-virtual/range {v12 .. v17}, Landroid/net/NetworkStatsHistory;->recordData(JJLandroid/net/NetworkStats$Entry;)V

    .line 290
    move-object/from16 v17, v5

    invoke-virtual/range {v12 .. v17}, Landroid/net/NetworkStatsHistory;->getValues(JJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    .line 293
    :goto_7
    iget-wide v12, v5, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v14, v5, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long/2addr v12, v14

    .line 294
    .local v12, "rawBytes":J
    iget-wide v14, v5, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    cmp-long v14, v14, v3

    const-wide/16 v15, 0x1

    if-nez v14, :cond_c

    move-wide/from16 v30, v15

    goto :goto_8

    :cond_c
    iget-wide v3, v5, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    move-wide/from16 v30, v3

    .line 295
    .local v30, "rawRxBytes":J
    :goto_8
    iget-wide v3, v5, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    const-wide/16 v22, 0x0

    cmp-long v3, v3, v22

    if-nez v3, :cond_d

    move-wide/from16 v36, v15

    goto :goto_9

    :cond_d
    iget-wide v3, v5, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    move-wide/from16 v36, v3

    .line 296
    .local v36, "rawTxBytes":J
    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/telephony/SubscriptionPlan;->getDataUsageBytes()J

    move-result-wide v14

    .line 298
    .local v14, "targetBytes":J
    move-wide/from16 v28, v14

    move-wide/from16 v32, v12

    invoke-static/range {v28 .. v33}, Lcom/android/internal/net/NetworkUtilsInternal;->multiplySafeByRational(JJJ)J

    move-result-wide v16

    .line 299
    .local v16, "targetRxBytes":J
    move-wide/from16 v34, v14

    move-wide/from16 v38, v12

    invoke-static/range {v34 .. v39}, Lcom/android/internal/net/NetworkUtilsInternal;->multiplySafeByRational(JJJ)J

    move-result-wide v28

    .line 303
    .local v28, "targetTxBytes":J
    invoke-virtual {v7}, Landroid/net/NetworkStatsHistory;->getTotalBytes()J

    move-result-wide v32

    .line 304
    .local v32, "beforeTotal":J
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_a
    invoke-virtual {v7}, Landroid/net/NetworkStatsHistory;->size()I

    move-result v4

    if-ge v3, v4, :cond_10

    .line 305
    invoke-virtual {v7, v3, v5}, Landroid/net/NetworkStatsHistory;->getValues(ILandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    .line 306
    move-wide/from16 v34, v12

    .end local v12    # "rawBytes":J
    .local v34, "rawBytes":J
    iget-wide v12, v5, Landroid/net/NetworkStatsHistory$Entry;->bucketStart:J

    cmp-long v4, v12, v18

    if-ltz v4, :cond_e

    iget-wide v12, v5, Landroid/net/NetworkStatsHistory$Entry;->bucketStart:J

    move-wide/from16 v44, v14

    .end local v14    # "targetBytes":J
    .local v44, "targetBytes":J
    iget-wide v14, v5, Landroid/net/NetworkStatsHistory$Entry;->bucketDuration:J

    add-long/2addr v12, v14

    cmp-long v4, v12, v24

    if-gtz v4, :cond_f

    .line 308
    iget-wide v12, v5, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    move-wide/from16 v38, v16

    move-wide/from16 v40, v12

    move-wide/from16 v42, v30

    invoke-static/range {v38 .. v43}, Lcom/android/internal/net/NetworkUtilsInternal;->multiplySafeByRational(JJJ)J

    move-result-wide v12

    iput-wide v12, v5, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    .line 310
    iget-wide v12, v5, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    move-wide/from16 v38, v28

    move-wide/from16 v40, v12

    move-wide/from16 v42, v36

    invoke-static/range {v38 .. v43}, Lcom/android/internal/net/NetworkUtilsInternal;->multiplySafeByRational(JJJ)J

    move-result-wide v12

    iput-wide v12, v5, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    .line 314
    const-wide/16 v12, 0x0

    iput-wide v12, v5, Landroid/net/NetworkStatsHistory$Entry;->rxPackets:J

    .line 315
    iput-wide v12, v5, Landroid/net/NetworkStatsHistory$Entry;->txPackets:J

    .line 316
    invoke-virtual {v7, v3, v5}, Landroid/net/NetworkStatsHistory;->setValues(ILandroid/net/NetworkStatsHistory$Entry;)V

    goto :goto_b

    .line 306
    .end local v44    # "targetBytes":J
    .restart local v14    # "targetBytes":J
    :cond_e
    move-wide/from16 v44, v14

    .line 304
    .end local v14    # "targetBytes":J
    .restart local v44    # "targetBytes":J
    :cond_f
    :goto_b
    add-int/lit8 v3, v3, 0x1

    move-wide/from16 v12, v34

    move-wide/from16 v14, v44

    goto :goto_a

    .end local v34    # "rawBytes":J
    .end local v44    # "targetBytes":J
    .restart local v12    # "rawBytes":J
    .restart local v14    # "targetBytes":J
    :cond_10
    move-wide/from16 v34, v12

    move-wide/from16 v44, v14

    .line 320
    .end local v3    # "i":I
    .end local v12    # "rawBytes":J
    .end local v14    # "targetBytes":J
    .restart local v34    # "rawBytes":J
    .restart local v44    # "targetBytes":J
    invoke-virtual {v7}, Landroid/net/NetworkStatsHistory;->getTotalBytes()J

    move-result-wide v3

    sub-long v12, v3, v32

    .line 321
    .local v12, "deltaTotal":J
    const-wide/16 v3, 0x0

    cmp-long v3, v12, v3

    if-eqz v3, :cond_11

    .line 322
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Augmented network usage by "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " bytes"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "NetworkStats"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    :cond_11
    new-instance v3, Landroid/net/NetworkStatsHistory;

    iget-wide v14, v0, Lcom/android/server/net/NetworkStatsCollection;->mBucketDuration:J

    invoke-direct {v3, v14, v15, v11, v2}, Landroid/net/NetworkStatsHistory;-><init>(JII)V

    move-object v14, v3

    .line 328
    .local v14, "sliced":Landroid/net/NetworkStatsHistory;
    move-object v4, v7

    move-object v15, v5

    .end local v5    # "entry":Landroid/net/NetworkStatsHistory$Entry;
    .local v15, "entry":Landroid/net/NetworkStatsHistory$Entry;
    move-wide/from16 v5, p7

    move-object/from16 v22, v7

    .end local v7    # "combined":Landroid/net/NetworkStatsHistory;
    .local v22, "combined":Landroid/net/NetworkStatsHistory;
    move-wide/from16 v7, p9

    invoke-virtual/range {v3 .. v8}, Landroid/net/NetworkStatsHistory;->recordHistory(Landroid/net/NetworkStatsHistory;JJ)V

    .line 329
    return-object v14

    .line 331
    .end local v12    # "deltaTotal":J
    .end local v14    # "sliced":Landroid/net/NetworkStatsHistory;
    .end local v15    # "entry":Landroid/net/NetworkStatsHistory$Entry;
    .end local v16    # "targetRxBytes":J
    .end local v22    # "combined":Landroid/net/NetworkStatsHistory;
    .end local v28    # "targetTxBytes":J
    .end local v30    # "rawRxBytes":J
    .end local v32    # "beforeTotal":J
    .end local v34    # "rawBytes":J
    .end local v36    # "rawTxBytes":J
    .end local v44    # "targetBytes":J
    .restart local v7    # "combined":Landroid/net/NetworkStatsHistory;
    :cond_12
    move-object/from16 v22, v7

    .end local v7    # "combined":Landroid/net/NetworkStatsHistory;
    .restart local v22    # "combined":Landroid/net/NetworkStatsHistory;
    return-object v22

    .line 226
    .end local v11    # "bucketEstimate":I
    .end local v18    # "augmentStart":J
    .end local v20    # "collectEnd":J
    .end local v22    # "combined":Landroid/net/NetworkStatsHistory;
    .end local v24    # "augmentEnd":J
    .end local v26    # "collectStart":J
    :cond_13
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Network stats history of uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " is forbidden for caller "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getRelevantUids(I)[I
    .locals 1
    .param p1, "accessLevel"    # I

    .line 198
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/net/NetworkStatsCollection;->getRelevantUids(II)[I

    move-result-object v0

    return-object v0
.end method

.method public getRelevantUids(II)[I
    .locals 5
    .param p1, "accessLevel"    # I
    .param p2, "callerUid"    # I

    .line 203
    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    .line 204
    .local v0, "uids":Landroid/util/IntArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 205
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/net/NetworkStatsCollection$Key;

    .line 206
    .local v2, "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    iget v3, v2, Lcom/android/server/net/NetworkStatsCollection$Key;->uid:I

    invoke-static {v3, p2, p1}, Lcom/android/server/net/NetworkStatsAccess;->isAccessibleToUser(III)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 207
    iget v3, v2, Lcom/android/server/net/NetworkStatsCollection$Key;->uid:I

    invoke-virtual {v0, v3}, Landroid/util/IntArray;->binarySearch(I)I

    move-result v3

    .line 209
    .local v3, "j":I
    if-gez v3, :cond_0

    .line 210
    not-int v3, v3

    .line 211
    iget v4, v2, Lcom/android/server/net/NetworkStatsCollection$Key;->uid:I

    invoke-virtual {v0, v3, v4}, Landroid/util/IntArray;->add(II)V

    .line 204
    .end local v2    # "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    .end local v3    # "j":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 215
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {v0}, Landroid/util/IntArray;->toArray()[I

    move-result-object v1

    return-object v1
.end method

.method public getStartMillis()J
    .locals 2

    .line 133
    iget-wide v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mStartMillis:J

    return-wide v0
.end method

.method public getSummary(Landroid/net/NetworkTemplate;JJII)Landroid/net/NetworkStats;
    .locals 17
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "start"    # J
    .param p4, "end"    # J
    .param p6, "accessLevel"    # I
    .param p7, "callerUid"    # I

    .line 341
    move-object/from16 v0, p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 343
    .local v9, "now":J
    new-instance v1, Landroid/net/NetworkStats;

    sub-long v2, p4, p2

    const/16 v4, 0x18

    invoke-direct {v1, v2, v3, v4}, Landroid/net/NetworkStats;-><init>(JI)V

    move-object v11, v1

    .line 346
    .local v11, "stats":Landroid/net/NetworkStats;
    cmp-long v1, p2, p4

    if-nez v1, :cond_0

    return-object v11

    .line 348
    :cond_0
    new-instance v1, Landroid/net/NetworkStats$Entry;

    invoke-direct {v1}, Landroid/net/NetworkStats$Entry;-><init>()V

    move-object v12, v1

    .line 349
    .local v12, "entry":Landroid/net/NetworkStats$Entry;
    const/4 v1, 0x0

    .line 351
    .local v1, "historyEntry":Landroid/net/NetworkStatsHistory$Entry;
    const/4 v2, 0x0

    move-object v13, v1

    move v14, v2

    .end local v1    # "historyEntry":Landroid/net/NetworkStatsHistory$Entry;
    .local v13, "historyEntry":Landroid/net/NetworkStatsHistory$Entry;
    .local v14, "i":I
    :goto_0
    iget-object v1, v0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v14, v1, :cond_4

    .line 352
    iget-object v1, v0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v1, v14}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Lcom/android/server/net/NetworkStatsCollection$Key;

    .line 353
    .local v15, "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    iget-object v1, v15, Lcom/android/server/net/NetworkStatsCollection$Key;->ident:Lcom/android/server/net/NetworkIdentitySet;

    move-object/from16 v8, p1

    invoke-static {v8, v1}, Lcom/android/server/net/NetworkStatsCollection;->templateMatches(Landroid/net/NetworkTemplate;Lcom/android/server/net/NetworkIdentitySet;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, v15, Lcom/android/server/net/NetworkStatsCollection$Key;->uid:I

    .line 354
    move/from16 v6, p6

    move/from16 v7, p7

    invoke-static {v1, v7, v6}, Lcom/android/server/net/NetworkStatsAccess;->isAccessibleToUser(III)Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, v15, Lcom/android/server/net/NetworkStatsCollection$Key;->set:I

    const/16 v2, 0x3e8

    if-ge v1, v2, :cond_3

    .line 356
    iget-object v1, v0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v1, v14}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v16, v1

    check-cast v16, Landroid/net/NetworkStatsHistory;

    .line 357
    .local v16, "value":Landroid/net/NetworkStatsHistory;
    move-object/from16 v1, v16

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-wide v6, v9

    move-object v8, v13

    invoke-virtual/range {v1 .. v8}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v1

    .line 359
    .end local v13    # "historyEntry":Landroid/net/NetworkStatsHistory$Entry;
    .restart local v1    # "historyEntry":Landroid/net/NetworkStatsHistory$Entry;
    sget-object v2, Landroid/net/NetworkStats;->IFACE_ALL:Ljava/lang/String;

    iput-object v2, v12, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    .line 360
    iget v2, v15, Lcom/android/server/net/NetworkStatsCollection$Key;->uid:I

    iput v2, v12, Landroid/net/NetworkStats$Entry;->uid:I

    .line 361
    iget v2, v15, Lcom/android/server/net/NetworkStatsCollection$Key;->set:I

    iput v2, v12, Landroid/net/NetworkStats$Entry;->set:I

    .line 362
    iget v2, v15, Lcom/android/server/net/NetworkStatsCollection$Key;->tag:I

    iput v2, v12, Landroid/net/NetworkStats$Entry;->tag:I

    .line 363
    iget-object v2, v15, Lcom/android/server/net/NetworkStatsCollection$Key;->ident:Lcom/android/server/net/NetworkIdentitySet;

    invoke-virtual {v2}, Lcom/android/server/net/NetworkIdentitySet;->areAllMembersOnDefaultNetwork()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 364
    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    iput v2, v12, Landroid/net/NetworkStats$Entry;->defaultNetwork:I

    .line 365
    iget-object v2, v15, Lcom/android/server/net/NetworkStatsCollection$Key;->ident:Lcom/android/server/net/NetworkIdentitySet;

    invoke-virtual {v2}, Lcom/android/server/net/NetworkIdentitySet;->isAnyMemberMetered()Z

    move-result v2

    iput v2, v12, Landroid/net/NetworkStats$Entry;->metered:I

    .line 366
    iget-object v2, v15, Lcom/android/server/net/NetworkStatsCollection$Key;->ident:Lcom/android/server/net/NetworkIdentitySet;

    invoke-virtual {v2}, Lcom/android/server/net/NetworkIdentitySet;->isAnyMemberRoaming()Z

    move-result v2

    iput v2, v12, Landroid/net/NetworkStats$Entry;->roaming:I

    .line 367
    iget-wide v2, v1, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iput-wide v2, v12, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 368
    iget-wide v2, v1, Landroid/net/NetworkStatsHistory$Entry;->rxPackets:J

    iput-wide v2, v12, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 369
    iget-wide v2, v1, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    iput-wide v2, v12, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 370
    iget-wide v2, v1, Landroid/net/NetworkStatsHistory$Entry;->txPackets:J

    iput-wide v2, v12, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 371
    iget-wide v2, v1, Landroid/net/NetworkStatsHistory$Entry;->operations:J

    iput-wide v2, v12, Landroid/net/NetworkStats$Entry;->operations:J

    .line 373
    invoke-virtual {v12}, Landroid/net/NetworkStats$Entry;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 374
    invoke-virtual {v11, v12}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    .line 351
    .end local v15    # "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    .end local v16    # "value":Landroid/net/NetworkStatsHistory;
    :cond_2
    move-object v13, v1

    .end local v1    # "historyEntry":Landroid/net/NetworkStatsHistory$Entry;
    .restart local v13    # "historyEntry":Landroid/net/NetworkStatsHistory$Entry;
    :cond_3
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_0

    .line 379
    .end local v14    # "i":I
    :cond_4
    return-object v11
.end method

.method public getTotalBytes()J
    .locals 2

    .line 153
    iget-wide v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mTotalBytes:J

    return-wide v0
.end method

.method public isDirty()Z
    .locals 1

    .line 157
    iget-boolean v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mDirty:Z

    return v0
.end method

.method public isEmpty()Z
    .locals 4

    .line 165
    iget-wide v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mStartMillis:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mEndMillis:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public read(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 442
    new-instance v0, Lcom/android/internal/util/FastDataInput;

    const/16 v1, 0x2000

    invoke-direct {v0, p1, v1}, Lcom/android/internal/util/FastDataInput;-><init>(Ljava/io/InputStream;I)V

    .line 443
    .local v0, "dataIn":Lcom/android/internal/util/FastDataInput;
    invoke-direct {p0, v0}, Lcom/android/server/net/NetworkStatsCollection;->read(Ljava/io/DataInput;)V

    .line 444
    return-void
.end method

.method public readLegacyNetwork(Ljava/io/File;)V
    .locals 11
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 520
    new-instance v0, Landroid/util/AtomicFile;

    invoke-direct {v0, p1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 522
    .local v0, "inputFile":Landroid/util/AtomicFile;
    const/4 v1, 0x0

    .line 524
    .local v1, "in":Ljava/io/DataInputStream;
    :try_start_0
    new-instance v2, Ljava/io/DataInputStream;

    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v1, v2

    .line 527
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    .line 528
    .local v2, "magic":I
    const v3, 0x414e4554

    if-ne v2, v3, :cond_1

    .line 532
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    .line 533
    .local v3, "version":I
    packed-switch v3, :pswitch_data_0

    .line 547
    new-instance v4, Ljava/net/ProtocolException;

    goto :goto_1

    .line 536
    :pswitch_0
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    .line 537
    .local v4, "size":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v4, :cond_0

    .line 538
    new-instance v6, Lcom/android/server/net/NetworkIdentitySet;

    invoke-direct {v6, v1}, Lcom/android/server/net/NetworkIdentitySet;-><init>(Ljava/io/DataInput;)V

    .line 539
    .local v6, "ident":Lcom/android/server/net/NetworkIdentitySet;
    new-instance v7, Landroid/net/NetworkStatsHistory;

    invoke-direct {v7, v1}, Landroid/net/NetworkStatsHistory;-><init>(Ljava/io/DataInput;)V

    .line 541
    .local v7, "history":Landroid/net/NetworkStatsHistory;
    new-instance v8, Lcom/android/server/net/NetworkStatsCollection$Key;

    const/4 v9, 0x0

    const/4 v10, -0x1

    invoke-direct {v8, v6, v10, v10, v9}, Lcom/android/server/net/NetworkStatsCollection$Key;-><init>(Lcom/android/server/net/NetworkIdentitySet;III)V

    .line 542
    .local v8, "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    invoke-direct {p0, v8, v7}, Lcom/android/server/net/NetworkStatsCollection;->recordHistory(Lcom/android/server/net/NetworkStatsCollection$Key;Landroid/net/NetworkStatsHistory;)V

    .line 537
    .end local v6    # "ident":Lcom/android/server/net/NetworkIdentitySet;
    .end local v7    # "history":Landroid/net/NetworkStatsHistory;
    .end local v8    # "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 544
    .end local v5    # "i":I
    :cond_0
    goto :goto_2

    .line 547
    .end local v4    # "size":I
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "unexpected version: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .end local v0    # "inputFile":Landroid/util/AtomicFile;
    .end local v1    # "in":Ljava/io/DataInputStream;
    .end local p0    # "this":Lcom/android/server/net/NetworkStatsCollection;
    .end local p1    # "file":Ljava/io/File;
    throw v4

    .line 529
    .end local v3    # "version":I
    .restart local v0    # "inputFile":Landroid/util/AtomicFile;
    .restart local v1    # "in":Ljava/io/DataInputStream;
    .restart local p0    # "this":Lcom/android/server/net/NetworkStatsCollection;
    .restart local p1    # "file":Ljava/io/File;
    :cond_1
    new-instance v3, Ljava/net/ProtocolException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unexpected magic: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .end local v0    # "inputFile":Landroid/util/AtomicFile;
    .end local v1    # "in":Ljava/io/DataInputStream;
    .end local p0    # "this":Lcom/android/server/net/NetworkStatsCollection;
    .end local p1    # "file":Ljava/io/File;
    throw v3
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 553
    .end local v2    # "magic":I
    .restart local v0    # "inputFile":Landroid/util/AtomicFile;
    .restart local v1    # "in":Ljava/io/DataInputStream;
    .restart local p0    # "this":Lcom/android/server/net/NetworkStatsCollection;
    .restart local p1    # "file":Ljava/io/File;
    :catchall_0
    move-exception v2

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 554
    throw v2

    .line 550
    :catch_0
    move-exception v2

    .line 553
    :goto_2
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 554
    nop

    .line 555
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public readLegacyUid(Ljava/io/File;Z)V
    .locals 16
    .param p1, "file"    # Ljava/io/File;
    .param p2, "onlyTags"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 559
    new-instance v0, Landroid/util/AtomicFile;

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    move-object v2, v0

    .line 561
    .local v2, "inputFile":Landroid/util/AtomicFile;
    const/4 v3, 0x0

    .line 563
    .local v3, "in":Ljava/io/DataInputStream;
    :try_start_0
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v4, Ljava/io/BufferedInputStream;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v3, v0

    .line 566
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 567
    .local v0, "magic":I
    const v4, 0x414e4554

    if-ne v0, v4, :cond_5

    .line 571
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v4
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 572
    .local v4, "version":I
    packed-switch v4, :pswitch_data_0

    .line 612
    move-object/from16 v12, p0

    move/from16 v1, p2

    :try_start_1
    new-instance v5, Ljava/net/ProtocolException;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_4

    .line 590
    :pswitch_0
    :try_start_2
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    .line 591
    .local v5, "identSize":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v5, :cond_4

    .line 592
    new-instance v7, Lcom/android/server/net/NetworkIdentitySet;

    invoke-direct {v7, v3}, Lcom/android/server/net/NetworkIdentitySet;-><init>(Ljava/io/DataInput;)V

    .line 594
    .local v7, "ident":Lcom/android/server/net/NetworkIdentitySet;
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    .line 595
    .local v8, "size":I
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_1
    if-ge v9, v8, :cond_3

    .line 596
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v10

    .line 597
    .local v10, "uid":I
    const/4 v11, 0x4

    const/4 v12, 0x0

    if-lt v4, v11, :cond_0

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v11

    goto :goto_2

    .line 598
    :cond_0
    move v11, v12

    :goto_2
    nop

    .line 599
    .local v11, "set":I
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v13

    .line 601
    .local v13, "tag":I
    new-instance v14, Lcom/android/server/net/NetworkStatsCollection$Key;

    invoke-direct {v14, v7, v10, v11, v13}, Lcom/android/server/net/NetworkStatsCollection$Key;-><init>(Lcom/android/server/net/NetworkIdentitySet;III)V

    .line 602
    .local v14, "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    new-instance v15, Landroid/net/NetworkStatsHistory;

    invoke-direct {v15, v3}, Landroid/net/NetworkStatsHistory;-><init>(Ljava/io/DataInput;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 604
    .local v15, "history":Landroid/net/NetworkStatsHistory;
    if-nez v13, :cond_1

    const/4 v12, 0x1

    :cond_1
    move/from16 v1, p2

    if-eq v12, v1, :cond_2

    .line 605
    move-object/from16 v12, p0

    :try_start_3
    invoke-direct {v12, v14, v15}, Lcom/android/server/net/NetworkStatsCollection;->recordHistory(Lcom/android/server/net/NetworkStatsCollection$Key;Landroid/net/NetworkStatsHistory;)V

    goto :goto_3

    .line 604
    :cond_2
    move-object/from16 v12, p0

    .line 595
    .end local v10    # "uid":I
    .end local v11    # "set":I
    .end local v13    # "tag":I
    .end local v14    # "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    .end local v15    # "history":Landroid/net/NetworkStatsHistory;
    :goto_3
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v1, p1

    goto :goto_1

    :cond_3
    move-object/from16 v12, p0

    move/from16 v1, p2

    .line 591
    .end local v7    # "ident":Lcom/android/server/net/NetworkIdentitySet;
    .end local v8    # "size":I
    .end local v9    # "j":I
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v1, p1

    goto :goto_0

    :cond_4
    move-object/from16 v12, p0

    move/from16 v1, p2

    .line 609
    .end local v6    # "i":I
    goto :goto_6

    .line 585
    .end local v5    # "identSize":I
    :pswitch_1
    move-object/from16 v12, p0

    move/from16 v1, p2

    goto :goto_6

    .line 578
    :pswitch_2
    move-object/from16 v12, p0

    move/from16 v1, p2

    goto :goto_6

    .line 612
    :goto_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "unexpected version: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .end local v2    # "inputFile":Landroid/util/AtomicFile;
    .end local v3    # "in":Ljava/io/DataInputStream;
    .end local p0    # "this":Lcom/android/server/net/NetworkStatsCollection;
    .end local p1    # "file":Ljava/io/File;
    .end local p2    # "onlyTags":Z
    throw v5

    .line 568
    .end local v4    # "version":I
    .restart local v2    # "inputFile":Landroid/util/AtomicFile;
    .restart local v3    # "in":Ljava/io/DataInputStream;
    .restart local p0    # "this":Lcom/android/server/net/NetworkStatsCollection;
    .restart local p1    # "file":Ljava/io/File;
    .restart local p2    # "onlyTags":Z
    :cond_5
    move-object/from16 v12, p0

    move/from16 v1, p2

    new-instance v4, Ljava/net/ProtocolException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "unexpected magic: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .end local v2    # "inputFile":Landroid/util/AtomicFile;
    .end local v3    # "in":Ljava/io/DataInputStream;
    .end local p0    # "this":Lcom/android/server/net/NetworkStatsCollection;
    .end local p1    # "file":Ljava/io/File;
    .end local p2    # "onlyTags":Z
    throw v4
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 618
    .end local v0    # "magic":I
    .restart local v2    # "inputFile":Landroid/util/AtomicFile;
    .restart local v3    # "in":Ljava/io/DataInputStream;
    .restart local p0    # "this":Lcom/android/server/net/NetworkStatsCollection;
    .restart local p1    # "file":Ljava/io/File;
    .restart local p2    # "onlyTags":Z
    :catchall_0
    move-exception v0

    goto :goto_5

    .line 615
    :catch_0
    move-exception v0

    goto :goto_6

    .line 618
    :catchall_1
    move-exception v0

    move-object/from16 v12, p0

    move/from16 v1, p2

    :goto_5
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 619
    throw v0

    .line 615
    :catch_1
    move-exception v0

    move-object/from16 v12, p0

    move/from16 v1, p2

    .line 618
    :goto_6
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 619
    nop

    .line 620
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public recordCollection(Lcom/android/server/net/NetworkStatsCollection;)V
    .locals 3
    .param p1, "another"    # Lcom/android/server/net/NetworkStatsCollection;

    .line 412
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p1, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 413
    iget-object v1, p1, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/net/NetworkStatsCollection$Key;

    .line 414
    .local v1, "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    iget-object v2, p1, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkStatsHistory;

    .line 415
    .local v2, "value":Landroid/net/NetworkStatsHistory;
    invoke-direct {p0, v1, v2}, Lcom/android/server/net/NetworkStatsCollection;->recordHistory(Lcom/android/server/net/NetworkStatsCollection$Key;Landroid/net/NetworkStatsHistory;)V

    .line 412
    .end local v1    # "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    .end local v2    # "value":Landroid/net/NetworkStatsHistory;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 417
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public recordData(Lcom/android/server/net/NetworkIdentitySet;IIIJJLandroid/net/NetworkStats$Entry;)V
    .locals 15
    .param p1, "ident"    # Lcom/android/server/net/NetworkIdentitySet;
    .param p2, "uid"    # I
    .param p3, "set"    # I
    .param p4, "tag"    # I
    .param p5, "start"    # J
    .param p7, "end"    # J
    .param p9, "entry"    # Landroid/net/NetworkStats$Entry;

    .line 387
    move-object/from16 v6, p9

    invoke-direct/range {p0 .. p4}, Lcom/android/server/net/NetworkStatsCollection;->findOrCreateHistory(Lcom/android/server/net/NetworkIdentitySet;III)Landroid/net/NetworkStatsHistory;

    move-result-object v7

    .line 388
    .local v7, "history":Landroid/net/NetworkStatsHistory;
    move-object v0, v7

    move-wide/from16 v1, p5

    move-wide/from16 v3, p7

    move-object/from16 v5, p9

    invoke-virtual/range {v0 .. v5}, Landroid/net/NetworkStatsHistory;->recordData(JJLandroid/net/NetworkStats$Entry;)V

    .line 389
    invoke-virtual {v7}, Landroid/net/NetworkStatsHistory;->getStart()J

    move-result-wide v9

    invoke-virtual {v7}, Landroid/net/NetworkStatsHistory;->getEnd()J

    move-result-wide v11

    iget-wide v0, v6, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iget-wide v2, v6, Landroid/net/NetworkStats$Entry;->txBytes:J

    add-long v13, v0, v2

    move-object v8, p0

    invoke-direct/range {v8 .. v14}, Lcom/android/server/net/NetworkStatsCollection;->noteRecordedHistory(JJJ)V

    .line 390
    return-void
.end method

.method public removeUids([I)V
    .locals 7
    .param p1, "uids"    # [I

    .line 628
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 629
    .local v0, "knownKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/net/NetworkStatsCollection$Key;>;"
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 632
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/net/NetworkStatsCollection$Key;

    .line 633
    .local v2, "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    iget v3, v2, Lcom/android/server/net/NetworkStatsCollection$Key;->uid:I

    invoke-static {p1, v3}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 635
    iget v3, v2, Lcom/android/server/net/NetworkStatsCollection$Key;->tag:I

    if-nez v3, :cond_0

    .line 636
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkStatsHistory;

    .line 637
    .local v3, "uidHistory":Landroid/net/NetworkStatsHistory;
    iget-object v4, v2, Lcom/android/server/net/NetworkStatsCollection$Key;->ident:Lcom/android/server/net/NetworkIdentitySet;

    const/4 v5, -0x4

    const/4 v6, 0x0

    invoke-direct {p0, v4, v5, v6, v6}, Lcom/android/server/net/NetworkStatsCollection;->findOrCreateHistory(Lcom/android/server/net/NetworkIdentitySet;III)Landroid/net/NetworkStatsHistory;

    move-result-object v4

    .line 639
    .local v4, "removedHistory":Landroid/net/NetworkStatsHistory;
    invoke-virtual {v4, v3}, Landroid/net/NetworkStatsHistory;->recordEntireHistory(Landroid/net/NetworkStatsHistory;)V

    .line 641
    .end local v3    # "uidHistory":Landroid/net/NetworkStatsHistory;
    .end local v4    # "removedHistory":Landroid/net/NetworkStatsHistory;
    :cond_0
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 642
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/net/NetworkStatsCollection;->mDirty:Z

    .line 644
    .end local v2    # "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    :cond_1
    goto :goto_0

    .line 645
    :cond_2
    return-void
.end method

.method public reset()V
    .locals 2

    .line 125
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 126
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mStartMillis:J

    .line 127
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mEndMillis:J

    .line 128
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mTotalBytes:J

    .line 129
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mDirty:Z

    .line 130
    return-void
.end method

.method public roundDown(J)J
    .locals 4
    .param p1, "time"    # J

    .line 185
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-eqz v0, :cond_2

    const-wide v0, 0x7fffffffffffffffL

    cmp-long v0, p1, v0

    if-eqz v0, :cond_2

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 189
    :cond_0
    iget-wide v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mBucketDuration:J

    rem-long v0, p1, v0

    .line 190
    .local v0, "mod":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 191
    sub-long/2addr p1, v0

    .line 193
    :cond_1
    return-wide p1

    .line 187
    .end local v0    # "mod":J
    :cond_2
    :goto_0
    return-wide p1
.end method

.method public roundUp(J)J
    .locals 6
    .param p1, "time"    # J

    .line 170
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-eqz v0, :cond_2

    const-wide v0, 0x7fffffffffffffffL

    cmp-long v0, p1, v0

    if-eqz v0, :cond_2

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 174
    :cond_0
    iget-wide v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mBucketDuration:J

    rem-long v2, p1, v0

    .line 175
    .local v2, "mod":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_1

    .line 176
    sub-long/2addr p1, v2

    .line 177
    add-long/2addr p1, v0

    .line 179
    :cond_1
    return-wide p1

    .line 172
    .end local v2    # "mod":J
    :cond_2
    :goto_0
    return-wide p1
.end method

.method public write(Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 482
    new-instance v0, Lcom/android/internal/util/FastDataOutput;

    const/16 v1, 0x2000

    invoke-direct {v0, p1, v1}, Lcom/android/internal/util/FastDataOutput;-><init>(Ljava/io/OutputStream;I)V

    .line 483
    .local v0, "dataOut":Lcom/android/internal/util/FastDataOutput;
    invoke-direct {p0, v0}, Lcom/android/server/net/NetworkStatsCollection;->write(Ljava/io/DataOutput;)V

    .line 484
    invoke-virtual {v0}, Lcom/android/internal/util/FastDataOutput;->flush()V

    .line 485
    return-void
.end method
