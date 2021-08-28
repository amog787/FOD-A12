.class public Lcom/android/server/am/UidObserverController;
.super Ljava/lang/Object;
.source "UidObserverController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/UidObserverController$UidObserverRegistration;,
        Lcom/android/server/am/UidObserverController$ChangeRecord;
    }
.end annotation


# static fields
.field private static final SLOW_UID_OBSERVER_THRESHOLD_MS:I = 0x14

.field private static final VALIDATE_UID_STATES:Z = true


# instance fields
.field private mActiveUidChanges:[Lcom/android/server/am/UidObserverController$ChangeRecord;

.field private final mAvailUidChanges:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/UidObserverController$ChangeRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mDispatchRunnable:Ljava/lang/Runnable;

.field private final mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private final mPendingUidChanges:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/UidObserverController$ChangeRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mUidChangeDispatchCount:I

.field final mUidObservers:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/app/IUidObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final mValidateUids:Lcom/android/server/am/ActiveUids;


# direct methods
.method constructor <init>(Landroid/os/Handler;)V
    .locals 3
    .param p1, "handler"    # Landroid/os/Handler;

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/UidObserverController;->mLock:Ljava/lang/Object;

    .line 53
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/UidObserverController;->mUidObservers:Landroid/os/RemoteCallbackList;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/UidObserverController;->mPendingUidChanges:Ljava/util/ArrayList;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/UidObserverController;->mAvailUidChanges:Ljava/util/ArrayList;

    .line 61
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/server/am/UidObserverController$ChangeRecord;

    iput-object v0, p0, Lcom/android/server/am/UidObserverController;->mActiveUidChanges:[Lcom/android/server/am/UidObserverController$ChangeRecord;

    .line 67
    new-instance v0, Lcom/android/server/am/UidObserverController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/am/UidObserverController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/UidObserverController;)V

    iput-object v0, p0, Lcom/android/server/am/UidObserverController;->mDispatchRunnable:Ljava/lang/Runnable;

    .line 76
    iput-object p1, p0, Lcom/android/server/am/UidObserverController;->mHandler:Landroid/os/Handler;

    .line 77
    new-instance v0, Lcom/android/server/am/ActiveUids;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/ActiveUids;-><init>(Lcom/android/server/am/ActivityManagerService;Z)V

    iput-object v0, p0, Lcom/android/server/am/UidObserverController;->mValidateUids:Lcom/android/server/am/ActiveUids;

    .line 78
    return-void
.end method

.method private dispatchUidsChangedForObserver(Landroid/app/IUidObserver;Lcom/android/server/am/UidObserverController$UidObserverRegistration;I)V
    .locals 18
    .param p1, "observer"    # Landroid/app/IUidObserver;
    .param p2, "reg"    # Lcom/android/server/am/UidObserverController$UidObserverRegistration;
    .param p3, "changesSize"    # I

    .line 238
    move-object/from16 v7, p1

    move-object/from16 v8, p2

    if-nez v7, :cond_0

    .line 239
    return-void

    .line 242
    :cond_0
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_0
    move/from16 v9, p3

    if-ge v0, v9, :cond_15

    .line 243
    move-object/from16 v10, p0

    :try_start_0
    iget-object v1, v10, Lcom/android/server/am/UidObserverController;->mActiveUidChanges:[Lcom/android/server/am/UidObserverController$ChangeRecord;

    aget-object v1, v1, v0

    move-object v11, v1

    .line 244
    .local v11, "item":Lcom/android/server/am/UidObserverController$ChangeRecord;
    iget v1, v11, Lcom/android/server/am/UidObserverController$ChangeRecord;->change:I

    move v12, v1

    .line 245
    .local v12, "change":I
    const/4 v13, 0x1

    if-nez v12, :cond_1

    .line 246
    invoke-static/range {p2 .. p2}, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->access$000(Lcom/android/server/am/UidObserverController$UidObserverRegistration;)I

    move-result v1

    and-int/2addr v1, v13

    if-nez v1, :cond_1

    .line 249
    goto/16 :goto_b

    .line 251
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    move-wide v14, v1

    .line 252
    .local v14, "start":J
    and-int/lit8 v1, v12, 0x2

    if-eqz v1, :cond_2

    .line 253
    invoke-static/range {p2 .. p2}, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->access$000(Lcom/android/server/am/UidObserverController$UidObserverRegistration;)I

    move-result v1

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_3

    .line 257
    iget v1, v11, Lcom/android/server/am/UidObserverController$ChangeRecord;->uid:I

    iget-boolean v2, v11, Lcom/android/server/am/UidObserverController$ChangeRecord;->ephemeral:Z

    invoke-interface {v7, v1, v2}, Landroid/app/IUidObserver;->onUidIdle(IZ)V

    goto :goto_1

    .line 259
    :cond_2
    and-int/lit8 v1, v12, 0x4

    if-eqz v1, :cond_3

    .line 260
    invoke-static/range {p2 .. p2}, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->access$000(Lcom/android/server/am/UidObserverController$UidObserverRegistration;)I

    move-result v1

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 264
    iget v1, v11, Lcom/android/server/am/UidObserverController$ChangeRecord;->uid:I

    invoke-interface {v7, v1}, Landroid/app/IUidObserver;->onUidActive(I)V

    .line 267
    :cond_3
    :goto_1
    invoke-static/range {p2 .. p2}, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->access$000(Lcom/android/server/am/UidObserverController$UidObserverRegistration;)I

    move-result v1

    and-int/lit8 v1, v1, 0x10

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    .line 268
    and-int/lit8 v1, v12, 0x8

    if-eqz v1, :cond_4

    .line 272
    iget v1, v11, Lcom/android/server/am/UidObserverController$ChangeRecord;->uid:I

    invoke-interface {v7, v1, v13}, Landroid/app/IUidObserver;->onUidCachedChanged(IZ)V

    goto :goto_2

    .line 273
    :cond_4
    and-int/lit8 v1, v12, 0x10

    if-eqz v1, :cond_5

    .line 277
    iget v1, v11, Lcom/android/server/am/UidObserverController$ChangeRecord;->uid:I

    invoke-interface {v7, v1, v2}, Landroid/app/IUidObserver;->onUidCachedChanged(IZ)V

    .line 280
    :cond_5
    :goto_2
    and-int/lit8 v1, v12, 0x1

    const/16 v6, 0x14

    if-eqz v1, :cond_8

    .line 281
    invoke-static/range {p2 .. p2}, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->access$000(Lcom/android/server/am/UidObserverController$UidObserverRegistration;)I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_6

    .line 285
    iget v1, v11, Lcom/android/server/am/UidObserverController$ChangeRecord;->uid:I

    iget-boolean v2, v11, Lcom/android/server/am/UidObserverController$ChangeRecord;->ephemeral:Z

    invoke-interface {v7, v1, v2}, Landroid/app/IUidObserver;->onUidGone(IZ)V

    .line 287
    :cond_6
    iget-object v1, v8, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mLastProcStates:Landroid/util/SparseIntArray;

    if-eqz v1, :cond_7

    .line 288
    iget-object v1, v8, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mLastProcStates:Landroid/util/SparseIntArray;

    iget v2, v11, Lcom/android/server/am/UidObserverController$ChangeRecord;->uid:I

    invoke-virtual {v1, v2}, Landroid/util/SparseIntArray;->delete(I)V

    move v13, v6

    goto/16 :goto_a

    .line 287
    :cond_7
    move v13, v6

    goto/16 :goto_a

    .line 291
    :cond_8
    const/4 v1, 0x0

    .line 292
    .local v1, "doReport":Z
    invoke-static/range {p2 .. p2}, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->access$000(Lcom/android/server/am/UidObserverController$UidObserverRegistration;)I

    move-result v3

    and-int/2addr v3, v13

    if-eqz v3, :cond_e

    .line 293
    const/4 v1, 0x1

    .line 294
    invoke-static/range {p2 .. p2}, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->access$100(Lcom/android/server/am/UidObserverController$UidObserverRegistration;)I

    move-result v3

    if-ltz v3, :cond_e

    .line 295
    iget-object v3, v8, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mLastProcStates:Landroid/util/SparseIntArray;

    iget v4, v11, Lcom/android/server/am/UidObserverController$ChangeRecord;->uid:I

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseIntArray;->get(II)I

    move-result v3

    .line 297
    .local v3, "lastState":I
    if-eq v3, v5, :cond_c

    .line 298
    invoke-static/range {p2 .. p2}, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->access$100(Lcom/android/server/am/UidObserverController$UidObserverRegistration;)I

    move-result v4

    if-gt v3, v4, :cond_9

    move v4, v13

    goto :goto_3

    :cond_9
    move v4, v2

    .line 299
    .local v4, "lastAboveCut":Z
    :goto_3
    iget v5, v11, Lcom/android/server/am/UidObserverController$ChangeRecord;->procState:I

    invoke-static/range {p2 .. p2}, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->access$100(Lcom/android/server/am/UidObserverController$UidObserverRegistration;)I

    move-result v2

    if-gt v5, v2, :cond_a

    move v2, v13

    goto :goto_4

    :cond_a
    const/4 v2, 0x0

    .line 300
    .local v2, "newAboveCut":Z
    :goto_4
    if-eq v4, v2, :cond_b

    move v5, v13

    goto :goto_5

    :cond_b
    const/4 v5, 0x0

    :goto_5
    move v1, v5

    .line 301
    .end local v2    # "newAboveCut":Z
    .end local v4    # "lastAboveCut":Z
    goto :goto_7

    .line 302
    :cond_c
    iget v2, v11, Lcom/android/server/am/UidObserverController$ChangeRecord;->procState:I

    if-eq v2, v6, :cond_d

    move v2, v13

    goto :goto_6

    :cond_d
    const/4 v2, 0x0

    :goto_6
    move v1, v2

    .line 306
    .end local v3    # "lastState":I
    :cond_e
    :goto_7
    invoke-static/range {p2 .. p2}, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->access$000(Lcom/android/server/am/UidObserverController$UidObserverRegistration;)I

    move-result v2

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_10

    .line 307
    and-int/lit8 v2, v12, 0x20

    if-eqz v2, :cond_f

    move v2, v13

    goto :goto_8

    :cond_f
    const/4 v2, 0x0

    :goto_8
    or-int/2addr v1, v2

    move/from16 v16, v1

    goto :goto_9

    .line 306
    :cond_10
    move/from16 v16, v1

    .line 309
    .end local v1    # "doReport":Z
    .local v16, "doReport":Z
    :goto_9
    if-eqz v16, :cond_12

    .line 314
    iget-object v1, v8, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mLastProcStates:Landroid/util/SparseIntArray;

    if-eqz v1, :cond_11

    .line 315
    iget-object v1, v8, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mLastProcStates:Landroid/util/SparseIntArray;

    iget v2, v11, Lcom/android/server/am/UidObserverController$ChangeRecord;->uid:I

    iget v3, v11, Lcom/android/server/am/UidObserverController$ChangeRecord;->procState:I

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 317
    :cond_11
    iget v2, v11, Lcom/android/server/am/UidObserverController$ChangeRecord;->uid:I

    iget v3, v11, Lcom/android/server/am/UidObserverController$ChangeRecord;->procState:I

    iget-wide v4, v11, Lcom/android/server/am/UidObserverController$ChangeRecord;->procStateSeq:J

    iget v1, v11, Lcom/android/server/am/UidObserverController$ChangeRecord;->capability:I

    move/from16 v17, v1

    move-object/from16 v1, p1

    move v13, v6

    move/from16 v6, v17

    invoke-interface/range {v1 .. v6}, Landroid/app/IUidObserver;->onUidStateChanged(IIJI)V

    goto :goto_a

    .line 309
    :cond_12
    move v13, v6

    .line 321
    .end local v16    # "doReport":Z
    :goto_a
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, v14

    long-to-int v1, v1

    .line 322
    .local v1, "duration":I
    iget v2, v8, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mMaxDispatchTime:I

    if-ge v2, v1, :cond_13

    .line 323
    iput v1, v8, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mMaxDispatchTime:I

    .line 325
    :cond_13
    if-lt v1, v13, :cond_14

    .line 326
    iget v2, v8, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mSlowDispatchCount:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, v8, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mSlowDispatchCount:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 242
    .end local v1    # "duration":I
    .end local v11    # "item":Lcom/android/server/am/UidObserverController$ChangeRecord;
    .end local v12    # "change":I
    .end local v14    # "start":J
    :cond_14
    :goto_b
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 329
    .end local v0    # "j":I
    :catch_0
    move-exception v0

    goto :goto_c

    .line 242
    .restart local v0    # "j":I
    :cond_15
    move-object/from16 v10, p0

    .line 330
    .end local v0    # "j":I
    nop

    .line 331
    :goto_c
    return-void
.end method

.method private getOrCreateChangeRecordLocked()Lcom/android/server/am/UidObserverController$ChangeRecord;
    .locals 3

    .line 159
    iget-object v0, p0, Lcom/android/server/am/UidObserverController;->mAvailUidChanges:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 160
    .local v0, "size":I
    if-lez v0, :cond_0

    .line 161
    iget-object v1, p0, Lcom/android/server/am/UidObserverController;->mAvailUidChanges:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/UidObserverController$ChangeRecord;

    .local v1, "changeRecord":Lcom/android/server/am/UidObserverController$ChangeRecord;
    goto :goto_0

    .line 166
    .end local v1    # "changeRecord":Lcom/android/server/am/UidObserverController$ChangeRecord;
    :cond_0
    new-instance v1, Lcom/android/server/am/UidObserverController$ChangeRecord;

    invoke-direct {v1}, Lcom/android/server/am/UidObserverController$ChangeRecord;-><init>()V

    .line 171
    .restart local v1    # "changeRecord":Lcom/android/server/am/UidObserverController$ChangeRecord;
    :goto_0
    return-object v1
.end method

.method static mergeWithPendingChange(II)I
    .locals 1
    .param p0, "currentChange"    # I
    .param p1, "pendingChange"    # I

    .line 135
    and-int/lit8 v0, p0, 0x6

    if-nez v0, :cond_0

    .line 136
    and-int/lit8 v0, p1, 0x6

    or-int/2addr p0, v0

    .line 140
    :cond_0
    and-int/lit8 v0, p0, 0x18

    if-nez v0, :cond_1

    .line 141
    and-int/lit8 v0, p1, 0x18

    or-int/2addr p0, v0

    .line 147
    :cond_1
    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_2

    .line 148
    and-int/lit8 p0, p0, -0xd

    .line 150
    :cond_2
    and-int/lit8 v0, p1, 0x20

    if-eqz v0, :cond_3

    .line 151
    or-int/lit8 p0, p0, 0x20

    .line 153
    :cond_3
    return p0
.end method


# virtual methods
.method dispatchUidsChanged()V
    .locals 10

    .line 177
    iget-object v0, p0, Lcom/android/server/am/UidObserverController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 178
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/UidObserverController;->mPendingUidChanges:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 179
    .local v1, "numUidChanges":I
    iget-object v2, p0, Lcom/android/server/am/UidObserverController;->mActiveUidChanges:[Lcom/android/server/am/UidObserverController$ChangeRecord;

    array-length v2, v2

    if-ge v2, v1, :cond_0

    .line 180
    new-array v2, v1, [Lcom/android/server/am/UidObserverController$ChangeRecord;

    iput-object v2, p0, Lcom/android/server/am/UidObserverController;->mActiveUidChanges:[Lcom/android/server/am/UidObserverController$ChangeRecord;

    .line 182
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v3, 0x0

    if-ge v2, v1, :cond_1

    .line 183
    iget-object v4, p0, Lcom/android/server/am/UidObserverController;->mPendingUidChanges:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/UidObserverController$ChangeRecord;

    .line 184
    .local v4, "changeRecord":Lcom/android/server/am/UidObserverController$ChangeRecord;
    iget-object v5, p0, Lcom/android/server/am/UidObserverController;->mActiveUidChanges:[Lcom/android/server/am/UidObserverController$ChangeRecord;

    invoke-direct {p0}, Lcom/android/server/am/UidObserverController;->getOrCreateChangeRecordLocked()Lcom/android/server/am/UidObserverController$ChangeRecord;

    move-result-object v6

    aput-object v6, v5, v2

    .line 185
    iget-object v5, p0, Lcom/android/server/am/UidObserverController;->mActiveUidChanges:[Lcom/android/server/am/UidObserverController$ChangeRecord;

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Lcom/android/server/am/UidObserverController$ChangeRecord;->copyTo(Lcom/android/server/am/UidObserverController$ChangeRecord;)V

    .line 186
    iput-boolean v3, v4, Lcom/android/server/am/UidObserverController$ChangeRecord;->isPending:Z

    .line 182
    .end local v4    # "changeRecord":Lcom/android/server/am/UidObserverController$ChangeRecord;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 188
    .end local v2    # "i":I
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/UidObserverController;->mPendingUidChanges:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 192
    iget v2, p0, Lcom/android/server/am/UidObserverController;->mUidChangeDispatchCount:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/android/server/am/UidObserverController;->mUidChangeDispatchCount:I

    .line 193
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 195
    iget-object v0, p0, Lcom/android/server/am/UidObserverController;->mUidObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 196
    .local v0, "i":I
    :goto_1
    add-int/lit8 v2, v0, -0x1

    .end local v0    # "i":I
    .restart local v2    # "i":I
    if-lez v0, :cond_2

    .line 197
    iget-object v0, p0, Lcom/android/server/am/UidObserverController;->mUidObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/app/IUidObserver;

    iget-object v4, p0, Lcom/android/server/am/UidObserverController;->mUidObservers:Landroid/os/RemoteCallbackList;

    .line 198
    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/UidObserverController$UidObserverRegistration;

    .line 197
    invoke-direct {p0, v0, v4, v1}, Lcom/android/server/am/UidObserverController;->dispatchUidsChangedForObserver(Landroid/app/IUidObserver;Lcom/android/server/am/UidObserverController$UidObserverRegistration;I)V

    move v0, v2

    goto :goto_1

    .line 200
    :cond_2
    iget-object v0, p0, Lcom/android/server/am/UidObserverController;->mUidObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 202
    iget-object v0, p0, Lcom/android/server/am/UidObserverController;->mUidObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v0

    if-lez v0, :cond_7

    .line 203
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_2
    if-ge v0, v1, :cond_7

    .line 204
    iget-object v4, p0, Lcom/android/server/am/UidObserverController;->mActiveUidChanges:[Lcom/android/server/am/UidObserverController$ChangeRecord;

    aget-object v4, v4, v0

    .line 205
    .local v4, "item":Lcom/android/server/am/UidObserverController$ChangeRecord;
    iget v5, v4, Lcom/android/server/am/UidObserverController$ChangeRecord;->change:I

    const/4 v6, 0x1

    and-int/2addr v5, v6

    if-eqz v5, :cond_3

    .line 206
    iget-object v5, p0, Lcom/android/server/am/UidObserverController;->mValidateUids:Lcom/android/server/am/ActiveUids;

    iget v6, v4, Lcom/android/server/am/UidObserverController$ChangeRecord;->uid:I

    invoke-virtual {v5, v6}, Lcom/android/server/am/ActiveUids;->remove(I)V

    goto :goto_4

    .line 208
    :cond_3
    iget-object v5, p0, Lcom/android/server/am/UidObserverController;->mValidateUids:Lcom/android/server/am/ActiveUids;

    iget v7, v4, Lcom/android/server/am/UidObserverController$ChangeRecord;->uid:I

    invoke-virtual {v5, v7}, Lcom/android/server/am/ActiveUids;->get(I)Lcom/android/server/am/UidRecord;

    move-result-object v5

    .line 209
    .local v5, "validateUid":Lcom/android/server/am/UidRecord;
    if-nez v5, :cond_4

    .line 210
    new-instance v7, Lcom/android/server/am/UidRecord;

    iget v8, v4, Lcom/android/server/am/UidObserverController$ChangeRecord;->uid:I

    const/4 v9, 0x0

    invoke-direct {v7, v8, v9}, Lcom/android/server/am/UidRecord;-><init>(ILcom/android/server/am/ActivityManagerService;)V

    move-object v5, v7

    .line 211
    iget-object v7, p0, Lcom/android/server/am/UidObserverController;->mValidateUids:Lcom/android/server/am/ActiveUids;

    iget v8, v4, Lcom/android/server/am/UidObserverController$ChangeRecord;->uid:I

    invoke-virtual {v7, v8, v5}, Lcom/android/server/am/ActiveUids;->put(ILcom/android/server/am/UidRecord;)V

    .line 213
    :cond_4
    iget v7, v4, Lcom/android/server/am/UidObserverController$ChangeRecord;->change:I

    and-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_5

    .line 214
    invoke-virtual {v5, v6}, Lcom/android/server/am/UidRecord;->setIdle(Z)V

    goto :goto_3

    .line 215
    :cond_5
    iget v6, v4, Lcom/android/server/am/UidObserverController$ChangeRecord;->change:I

    and-int/lit8 v6, v6, 0x4

    if-eqz v6, :cond_6

    .line 216
    invoke-virtual {v5, v3}, Lcom/android/server/am/UidRecord;->setIdle(Z)V

    .line 218
    :cond_6
    :goto_3
    iget v6, v4, Lcom/android/server/am/UidObserverController$ChangeRecord;->procState:I

    invoke-virtual {v5, v6}, Lcom/android/server/am/UidRecord;->setSetProcState(I)V

    .line 219
    iget v6, v4, Lcom/android/server/am/UidObserverController$ChangeRecord;->procState:I

    invoke-virtual {v5, v6}, Lcom/android/server/am/UidRecord;->setCurProcState(I)V

    .line 220
    iget v6, v4, Lcom/android/server/am/UidObserverController$ChangeRecord;->capability:I

    invoke-virtual {v5, v6}, Lcom/android/server/am/UidRecord;->setSetCapability(I)V

    .line 221
    iget v6, v4, Lcom/android/server/am/UidObserverController$ChangeRecord;->capability:I

    invoke-virtual {v5, v6}, Lcom/android/server/am/UidRecord;->setCurCapability(I)V

    .line 222
    iget-wide v6, v4, Lcom/android/server/am/UidObserverController$ChangeRecord;->procStateSeq:J

    iput-wide v6, v5, Lcom/android/server/am/UidRecord;->lastDispatchedProcStateSeq:J

    .line 203
    .end local v4    # "item":Lcom/android/server/am/UidObserverController$ChangeRecord;
    .end local v5    # "validateUid":Lcom/android/server/am/UidRecord;
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 227
    .end local v0    # "j":I
    :cond_7
    iget-object v4, p0, Lcom/android/server/am/UidObserverController;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 228
    const/4 v0, 0x0

    .restart local v0    # "j":I
    :goto_5
    if-ge v0, v1, :cond_8

    .line 229
    :try_start_1
    iget-object v5, p0, Lcom/android/server/am/UidObserverController;->mActiveUidChanges:[Lcom/android/server/am/UidObserverController$ChangeRecord;

    aget-object v5, v5, v0

    .line 230
    .local v5, "changeRecord":Lcom/android/server/am/UidObserverController$ChangeRecord;
    iput-boolean v3, v5, Lcom/android/server/am/UidObserverController$ChangeRecord;->isPending:Z

    .line 231
    iget-object v6, p0, Lcom/android/server/am/UidObserverController;->mAvailUidChanges:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    nop

    .end local v5    # "changeRecord":Lcom/android/server/am/UidObserverController$ChangeRecord;
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 233
    .end local v0    # "j":I
    :cond_8
    monitor-exit v4

    .line 234
    return-void

    .line 233
    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 193
    .end local v1    # "numUidChanges":I
    .end local v2    # "i":I
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "dumpPackage"    # Ljava/lang/String;

    .line 338
    iget-object v0, p0, Lcom/android/server/am/UidObserverController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 339
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/UidObserverController;->mUidObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v1

    .line 340
    .local v1, "count":I
    const/4 v2, 0x0

    .line 341
    .local v2, "printed":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_3

    .line 342
    iget-object v4, p0, Lcom/android/server/am/UidObserverController;->mUidObservers:Landroid/os/RemoteCallbackList;

    .line 343
    invoke-virtual {v4, v3}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCookie(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/UidObserverController$UidObserverRegistration;

    .line 344
    .local v4, "reg":Lcom/android/server/am/UidObserverController$UidObserverRegistration;
    if-eqz p2, :cond_0

    invoke-static {v4}, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->access$200(Lcom/android/server/am/UidObserverController$UidObserverRegistration;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 345
    :cond_0
    if-nez v2, :cond_1

    .line 346
    const-string v5, "  mUidObservers:"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 347
    const/4 v2, 0x1

    .line 349
    :cond_1
    iget-object v5, p0, Lcom/android/server/am/UidObserverController;->mUidObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5, v3}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackItem(I)Landroid/os/IInterface;

    move-result-object v5

    check-cast v5, Landroid/app/IUidObserver;

    invoke-virtual {v4, p1, v5}, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->dump(Ljava/io/PrintWriter;Landroid/app/IUidObserver;)V

    .line 341
    .end local v4    # "reg":Lcom/android/server/am/UidObserverController$UidObserverRegistration;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 353
    .end local v3    # "i":I
    :cond_3
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 354
    const-string v3, "  mUidChangeDispatchCount="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 355
    iget v3, p0, Lcom/android/server/am/UidObserverController;->mUidChangeDispatchCount:I

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 356
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 357
    const-string v3, "  Slow UID dispatches:"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 358
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_1
    if-ge v3, v1, :cond_4

    .line 359
    iget-object v4, p0, Lcom/android/server/am/UidObserverController;->mUidObservers:Landroid/os/RemoteCallbackList;

    .line 360
    invoke-virtual {v4, v3}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCookie(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/UidObserverController$UidObserverRegistration;

    .line 361
    .restart local v4    # "reg":Lcom/android/server/am/UidObserverController$UidObserverRegistration;
    const-string v5, "    "

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 362
    iget-object v5, p0, Lcom/android/server/am/UidObserverController;->mUidObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5, v3}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackItem(I)Landroid/os/IInterface;

    move-result-object v5

    check-cast v5, Landroid/app/IUidObserver;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getTypeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 363
    const-string v5, ": "

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 364
    iget v5, v4, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mSlowDispatchCount:I

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 365
    const-string v5, " / Max "

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 366
    iget v5, v4, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mMaxDispatchTime:I

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 367
    const-string/jumbo v5, "ms"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 358
    .end local v4    # "reg":Lcom/android/server/am/UidObserverController$UidObserverRegistration;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 369
    .end local v1    # "count":I
    .end local v2    # "printed":Z
    .end local v3    # "i":I
    :cond_4
    monitor-exit v0

    .line 370
    return-void

    .line 369
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method dumpDebug(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;)V
    .locals 6
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "dumpPackage"    # Ljava/lang/String;

    .line 373
    iget-object v0, p0, Lcom/android/server/am/UidObserverController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 374
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/UidObserverController;->mUidObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v1

    .line 375
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 376
    iget-object v3, p0, Lcom/android/server/am/UidObserverController;->mUidObservers:Landroid/os/RemoteCallbackList;

    .line 377
    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCookie(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/UidObserverController$UidObserverRegistration;

    .line 378
    .local v3, "reg":Lcom/android/server/am/UidObserverController$UidObserverRegistration;
    if-eqz p2, :cond_0

    invoke-static {v3}, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->access$200(Lcom/android/server/am/UidObserverController$UidObserverRegistration;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 379
    :cond_0
    const-wide v4, 0x20b00000017L

    invoke-virtual {v3, p1, v4, v5}, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 375
    .end local v3    # "reg":Lcom/android/server/am/UidObserverController$UidObserverRegistration;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 382
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_2
    monitor-exit v0

    .line 383
    return-void

    .line 382
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method dumpValidateUids(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;Z)Z
    .locals 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "dumpPackage"    # Ljava/lang/String;
    .param p3, "dumpAppId"    # I
    .param p4, "header"    # Ljava/lang/String;
    .param p5, "needSep"    # Z

    .line 387
    iget-object v0, p0, Lcom/android/server/am/UidObserverController;->mValidateUids:Lcom/android/server/am/ActiveUids;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActiveUids;->dump(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method dumpValidateUidsProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;IJ)V
    .locals 6
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "dumpPackage"    # Ljava/lang/String;
    .param p3, "dumpAppId"    # I
    .param p4, "fieldId"    # J

    .line 392
    iget-object v0, p0, Lcom/android/server/am/UidObserverController;->mValidateUids:Lcom/android/server/am/ActiveUids;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActiveUids;->dumpProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;IJ)V

    .line 393
    return-void
.end method

.method enqueueUidChange(Lcom/android/server/am/UidObserverController$ChangeRecord;IIIJIZ)I
    .locals 3
    .param p1, "currentRecord"    # Lcom/android/server/am/UidObserverController$ChangeRecord;
    .param p2, "uid"    # I
    .param p3, "change"    # I
    .param p4, "procState"    # I
    .param p5, "procStateSeq"    # J
    .param p7, "capability"    # I
    .param p8, "ephemeral"    # Z

    .line 96
    iget-object v0, p0, Lcom/android/server/am/UidObserverController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 97
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/UidObserverController;->mPendingUidChanges:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 101
    iget-object v1, p0, Lcom/android/server/am/UidObserverController;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/am/UidObserverController;->mDispatchRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 104
    :cond_0
    if-eqz p1, :cond_1

    .line 105
    move-object v1, p1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/server/am/UidObserverController;->getOrCreateChangeRecordLocked()Lcom/android/server/am/UidObserverController$ChangeRecord;

    move-result-object v1

    .line 106
    .local v1, "changeRecord":Lcom/android/server/am/UidObserverController$ChangeRecord;
    :goto_0
    iget-boolean v2, v1, Lcom/android/server/am/UidObserverController$ChangeRecord;->isPending:Z

    if-nez v2, :cond_2

    .line 107
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/server/am/UidObserverController$ChangeRecord;->isPending:Z

    .line 108
    iget-object v2, p0, Lcom/android/server/am/UidObserverController;->mPendingUidChanges:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 110
    :cond_2
    iget v2, v1, Lcom/android/server/am/UidObserverController$ChangeRecord;->change:I

    invoke-static {p3, v2}, Lcom/android/server/am/UidObserverController;->mergeWithPendingChange(II)I

    move-result v2

    move p3, v2

    .line 113
    :goto_1
    iput p2, v1, Lcom/android/server/am/UidObserverController$ChangeRecord;->uid:I

    .line 114
    iput p3, v1, Lcom/android/server/am/UidObserverController$ChangeRecord;->change:I

    .line 115
    iput p4, v1, Lcom/android/server/am/UidObserverController$ChangeRecord;->procState:I

    .line 116
    iput-wide p5, v1, Lcom/android/server/am/UidObserverController$ChangeRecord;->procStateSeq:J

    .line 117
    iput p7, v1, Lcom/android/server/am/UidObserverController$ChangeRecord;->capability:I

    .line 118
    iput-boolean p8, v1, Lcom/android/server/am/UidObserverController$ChangeRecord;->ephemeral:Z

    .line 120
    iget v2, v1, Lcom/android/server/am/UidObserverController$ChangeRecord;->change:I

    monitor-exit v0

    return v2

    .line 121
    .end local v1    # "changeRecord":Lcom/android/server/am/UidObserverController$ChangeRecord;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getPendingUidChangesForTest()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/UidObserverController$ChangeRecord;",
            ">;"
        }
    .end annotation

    .line 125
    iget-object v0, p0, Lcom/android/server/am/UidObserverController;->mPendingUidChanges:Ljava/util/ArrayList;

    return-object v0
.end method

.method getValidateUidRecord(I)Lcom/android/server/am/UidRecord;
    .locals 1
    .param p1, "uid"    # I

    .line 334
    iget-object v0, p0, Lcom/android/server/am/UidObserverController;->mValidateUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActiveUids;->get(I)Lcom/android/server/am/UidRecord;

    move-result-object v0

    return-object v0
.end method

.method getValidateUidsForTest()Lcom/android/server/am/ActiveUids;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/android/server/am/UidObserverController;->mValidateUids:Lcom/android/server/am/ActiveUids;

    return-object v0
.end method

.method register(Landroid/app/IUidObserver;IILjava/lang/String;I)V
    .locals 3
    .param p1, "observer"    # Landroid/app/IUidObserver;
    .param p2, "which"    # I
    .param p3, "cutpoint"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;
    .param p5, "callingUid"    # I

    .line 82
    iget-object v0, p0, Lcom/android/server/am/UidObserverController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 83
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/UidObserverController;->mUidObservers:Landroid/os/RemoteCallbackList;

    new-instance v2, Lcom/android/server/am/UidObserverController$UidObserverRegistration;

    invoke-direct {v2, p5, p4, p2, p3}, Lcom/android/server/am/UidObserverController$UidObserverRegistration;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v1, p1, v2}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    .line 85
    monitor-exit v0

    .line 86
    return-void

    .line 85
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method unregister(Landroid/app/IUidObserver;)V
    .locals 2
    .param p1, "observer"    # Landroid/app/IUidObserver;

    .line 89
    iget-object v0, p0, Lcom/android/server/am/UidObserverController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 90
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/UidObserverController;->mUidObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 91
    monitor-exit v0

    .line 92
    return-void

    .line 91
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
