.class public Lcom/android/server/utils/WatchedSparseBooleanMatrix;
.super Lcom/android/server/utils/WatchableImpl;
.source "WatchedSparseBooleanMatrix.java"

# interfaces
.implements Lcom/android/server/utils/Snappable;


# static fields
.field private static final PACKING:I = 0x20

.field static final STEP:I = 0x40

.field static final STRING_INUSE_INDEX:I = 0x2

.field static final STRING_KEY_INDEX:I = 0x0

.field static final STRING_MAP_INDEX:I = 0x1


# instance fields
.field private mInUse:[Z

.field private mKeys:[I

.field private mMap:[I

.field private mOrder:I

.field private mSize:I

.field private mValues:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 140
    const/16 v0, 0x40

    invoke-direct {p0, v0}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;-><init>(I)V

    .line 141
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .param p1, "initialCapacity"    # I

    .line 148
    invoke-direct {p0}, Lcom/android/server/utils/WatchableImpl;-><init>()V

    .line 149
    iput p1, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mOrder:I

    .line 150
    const/16 v0, 0x40

    if-ge p1, v0, :cond_0

    .line 151
    iput v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mOrder:I

    .line 153
    :cond_0
    iget v1, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mOrder:I

    rem-int/2addr v1, v0

    if-eqz v1, :cond_1

    .line 154
    div-int/lit8 v1, p1, 0x40

    add-int/lit8 v1, v1, 0x1

    mul-int/2addr v1, v0

    iput v1, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mOrder:I

    .line 156
    :cond_1
    iget v1, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mOrder:I

    if-lt v1, v0, :cond_2

    rem-int/lit8 v0, v1, 0x40

    if-nez v0, :cond_2

    .line 160
    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedBooleanArray(I)[Z

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mInUse:[Z

    .line 161
    iget v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mOrder:I

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mKeys:[I

    .line 162
    iget v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mOrder:I

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mMap:[I

    .line 163
    iget v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mOrder:I

    mul-int/2addr v0, v0

    div-int/lit8 v0, v0, 0x20

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mValues:[I

    .line 164
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    .line 165
    return-void

    .line 157
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mOrder is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mOrder:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " initCap is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private constructor <init>(Lcom/android/server/utils/WatchedSparseBooleanMatrix;)V
    .locals 1
    .param p1, "r"    # Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    .line 170
    invoke-direct {p0}, Lcom/android/server/utils/WatchableImpl;-><init>()V

    .line 171
    iget v0, p1, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mOrder:I

    iput v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mOrder:I

    .line 172
    iget v0, p1, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    iput v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    .line 173
    iget-object v0, p1, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mKeys:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mKeys:[I

    .line 174
    iget-object v0, p1, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mMap:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mMap:[I

    .line 175
    iget-object v0, p1, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mInUse:[Z

    invoke-virtual {v0}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    iput-object v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mInUse:[Z

    .line 176
    iget-object v0, p1, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mValues:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mValues:[I

    .line 177
    return-void
.end method

.method private static binarySearch([III)I
    .locals 4
    .param p0, "array"    # [I
    .param p1, "size"    # I
    .param p2, "value"    # I

    .line 692
    const/4 v0, 0x0

    .line 693
    .local v0, "lo":I
    add-int/lit8 v1, p1, -0x1

    .line 695
    .local v1, "hi":I
    :goto_0
    if-gt v0, v1, :cond_2

    .line 696
    add-int v2, v0, v1

    ushr-int/lit8 v2, v2, 0x1

    .line 697
    .local v2, "mid":I
    aget v3, p0, v2

    .line 699
    .local v3, "midVal":I
    if-ge v3, p2, :cond_0

    .line 700
    add-int/lit8 v0, v2, 0x1

    goto :goto_1

    .line 701
    :cond_0
    if-le v3, p2, :cond_1

    .line 702
    add-int/lit8 v1, v2, -0x1

    .line 706
    .end local v2    # "mid":I
    .end local v3    # "midVal":I
    :goto_1
    goto :goto_0

    .line 704
    .restart local v2    # "mid":I
    .restart local v3    # "midVal":I
    :cond_1
    return v2

    .line 707
    .end local v2    # "mid":I
    .end local v3    # "midVal":I
    :cond_2
    not-int v2, v0

    return v2
.end method

.method private growMatrix()V
    .locals 1

    .line 415
    iget v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mOrder:I

    add-int/lit8 v0, v0, 0x40

    invoke-direct {p0, v0}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->resizeMatrix(I)V

    .line 416
    return-void
.end method

.method private indexOfKey(IZ)I
    .locals 9
    .param p1, "key"    # I
    .param p2, "grow"    # Z

    .line 367
    iget-object v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mKeys:[I

    iget v1, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    invoke-static {v0, v1, p1}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->binarySearch([III)I

    move-result v0

    .line 368
    .local v0, "i":I
    if-gez v0, :cond_1

    if-eqz p2, :cond_1

    .line 369
    not-int v0, v0

    .line 370
    iget v1, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    iget v2, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mOrder:I

    if-lt v1, v2, :cond_0

    .line 372
    invoke-direct {p0}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->growMatrix()V

    .line 374
    :cond_0
    invoke-direct {p0}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->nextFree()I

    move-result v1

    .line 375
    .local v1, "newIndex":I
    iget-object v2, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mKeys:[I

    iget v3, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    invoke-static {v2, v3, v0, p1}, Lcom/android/internal/util/GrowingArrayUtils;->insert([IIII)[I

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mKeys:[I

    .line 376
    iget-object v2, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mMap:[I

    iget v3, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    invoke-static {v2, v3, v0, v1}, Lcom/android/internal/util/GrowingArrayUtils;->insert([IIII)[I

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mMap:[I

    .line 377
    iget v2, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    .line 380
    iget v2, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mOrder:I

    div-int/lit8 v2, v2, 0x20

    .line 381
    .local v2, "valueRow":I
    div-int/lit8 v4, v1, 0x20

    .line 382
    .local v4, "offset":I
    rem-int/lit8 v5, v1, 0x20

    shl-int/2addr v3, v5

    not-int v3, v3

    .line 383
    .local v3, "mask":I
    iget-object v5, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mValues:[I

    mul-int v6, v1, v2

    add-int/lit8 v7, v1, 0x1

    mul-int/2addr v7, v2

    const/4 v8, 0x0

    invoke-static {v5, v6, v7, v8}, Ljava/util/Arrays;->fill([IIII)V

    .line 384
    const/4 v5, 0x0

    .local v5, "n":I
    :goto_0
    iget v6, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    if-ge v5, v6, :cond_1

    .line 385
    iget-object v6, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mValues:[I

    mul-int v7, v5, v2

    add-int/2addr v7, v4

    aget v8, v6, v7

    and-int/2addr v8, v3

    aput v8, v6, v7

    .line 384
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 390
    .end local v1    # "newIndex":I
    .end local v2    # "valueRow":I
    .end local v3    # "mask":I
    .end local v4    # "offset":I
    .end local v5    # "n":I
    :cond_1
    return v0
.end method

.method private lastInuse()I
    .locals 3

    .line 468
    iget v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mOrder:I

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_3

    .line 469
    iget-object v1, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mInUse:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_2

    .line 470
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    iget v2, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    if-ge v1, v2, :cond_1

    .line 471
    iget-object v2, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mMap:[I

    aget v2, v2, v1

    if-ne v2, v0, :cond_0

    .line 472
    return v1

    .line 470
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 475
    .end local v1    # "j":I
    :cond_1
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    .line 468
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 478
    .end local v0    # "i":I
    :cond_3
    const/4 v0, -0x1

    return v0
.end method

.method private nextFree()I
    .locals 3

    .line 453
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mInUse:[Z

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 454
    aget-boolean v2, v1, v0

    if-nez v2, :cond_0

    .line 455
    const/4 v2, 0x1

    aput-boolean v2, v1, v0

    .line 456
    return v0

    .line 453
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 459
    .end local v0    # "i":I
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private onChanged()V
    .locals 0

    .line 133
    invoke-virtual {p0, p0}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    .line 134
    return-void
.end method

.method private pack()V
    .locals 12

    .line 486
    iget v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    if-eqz v0, :cond_4

    iget v1, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mOrder:I

    if-ne v0, v1, :cond_0

    goto :goto_3

    .line 491
    :cond_0
    invoke-direct {p0}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->nextFree()I

    move-result v0

    .local v0, "dst":I
    :goto_0
    iget v1, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    if-ge v0, v1, :cond_3

    .line 492
    invoke-direct {p0}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->lastInuse()I

    move-result v1

    .line 493
    .local v1, "srcIndex":I
    iget-object v2, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mMap:[I

    aget v3, v2, v1

    .line 494
    .local v3, "src":I
    iget-object v4, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mInUse:[Z

    const/4 v5, 0x0

    aput-boolean v5, v4, v3

    .line 495
    aput v0, v2, v1

    .line 496
    iget-object v2, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mValues:[I

    iget v4, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mOrder:I

    mul-int v5, v3, v4

    div-int/lit8 v5, v5, 0x20

    mul-int v6, v0, v4

    div-int/lit8 v6, v6, 0x20

    div-int/lit8 v4, v4, 0x20

    invoke-static {v2, v5, v2, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 499
    div-int/lit8 v2, v3, 0x20

    .line 500
    .local v2, "srcOffset":I
    rem-int/lit8 v4, v3, 0x20

    const/4 v5, 0x1

    shl-int v4, v5, v4

    .line 501
    .local v4, "srcMask":I
    div-int/lit8 v6, v0, 0x20

    .line 502
    .local v6, "dstOffset":I
    rem-int/lit8 v7, v0, 0x20

    shl-int/2addr v5, v7

    .line 503
    .local v5, "dstMask":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    iget v8, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mOrder:I

    if-ge v7, v8, :cond_2

    .line 504
    iget-object v9, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mValues:[I

    aget v10, v9, v2

    and-int/2addr v10, v4

    if-nez v10, :cond_1

    .line 505
    aget v10, v9, v6

    not-int v11, v5

    and-int/2addr v10, v11

    aput v10, v9, v6

    goto :goto_2

    .line 507
    :cond_1
    aget v10, v9, v6

    or-int/2addr v10, v5

    aput v10, v9, v6

    .line 509
    :goto_2
    div-int/lit8 v9, v8, 0x20

    add-int/2addr v2, v9

    .line 510
    div-int/lit8 v8, v8, 0x20

    add-int/2addr v6, v8

    .line 503
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 491
    .end local v1    # "srcIndex":I
    .end local v2    # "srcOffset":I
    .end local v3    # "src":I
    .end local v4    # "srcMask":I
    .end local v5    # "dstMask":I
    .end local v6    # "dstOffset":I
    .end local v7    # "i":I
    :cond_2
    invoke-direct {p0}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->nextFree()I

    move-result v0

    goto :goto_0

    .line 513
    .end local v0    # "dst":I
    :cond_3
    return-void

    .line 487
    :cond_4
    :goto_3
    return-void
.end method

.method private resizeMatrix(I)V
    .locals 10
    .param p1, "newOrder"    # I

    .line 422
    rem-int/lit8 v0, p1, 0x40

    if-nez v0, :cond_1

    .line 426
    iget v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mOrder:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 428
    .local v0, "minOrder":I
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedBooleanArray(I)[Z

    move-result-object v1

    .line 429
    .local v1, "newInUse":[Z
    iget-object v2, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mInUse:[Z

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 430
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    move-result-object v2

    .line 431
    .local v2, "newMap":[I
    iget-object v4, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mMap:[I

    invoke-static {v4, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 432
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    move-result-object v4

    .line 433
    .local v4, "newKeys":[I
    iget-object v5, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mKeys:[I

    invoke-static {v5, v3, v4, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 435
    mul-int v3, p1, p1

    div-int/lit8 v3, v3, 0x20

    invoke-static {v3}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    move-result-object v3

    .line 436
    .local v3, "newValues":[I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v0, :cond_0

    .line 437
    iget v6, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mOrder:I

    mul-int/2addr v6, v5

    div-int/lit8 v6, v6, 0x20

    .line 438
    .local v6, "row":I
    mul-int v7, p1, v5

    div-int/lit8 v7, v7, 0x20

    .line 439
    .local v7, "newRow":I
    iget-object v8, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mValues:[I

    div-int/lit8 v9, v0, 0x20

    invoke-static {v8, v6, v3, v7, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 436
    .end local v6    # "row":I
    .end local v7    # "newRow":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 442
    .end local v5    # "i":I
    :cond_0
    iput-object v1, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mInUse:[Z

    .line 443
    iput-object v2, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mMap:[I

    .line 444
    iput-object v4, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mKeys:[I

    .line 445
    iput-object v3, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mValues:[I

    .line 446
    iput p1, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mOrder:I

    .line 447
    return-void

    .line 423
    .end local v0    # "minOrder":I
    .end local v1    # "newInUse":[Z
    .end local v2    # "newMap":[I
    .end local v3    # "newValues":[I
    .end local v4    # "newKeys":[I
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "matrix order "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is not a multiple of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private setValueAtInternal(IIZ)V
    .locals 6
    .param p1, "row"    # I
    .param p2, "col"    # I
    .param p3, "value"    # Z

    .line 326
    iget v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mOrder:I

    mul-int/2addr v0, p1

    add-int/2addr v0, p2

    .line 327
    .local v0, "element":I
    div-int/lit8 v1, v0, 0x20

    .line 328
    .local v1, "offset":I
    rem-int/lit8 v2, v0, 0x20

    const/4 v3, 0x1

    shl-int v2, v3, v2

    .line 329
    .local v2, "mask":I
    if-eqz p3, :cond_0

    .line 330
    iget-object v3, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mValues:[I

    aget v4, v3, v1

    or-int/2addr v4, v2

    aput v4, v3, v1

    goto :goto_0

    .line 332
    :cond_0
    iget-object v3, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mValues:[I

    aget v4, v3, v1

    not-int v5, v2

    and-int/2addr v4, v5

    aput v4, v3, v1

    .line 334
    :goto_0
    return-void
.end method

.method private validateIndex(I)V
    .locals 1
    .param p1, "index"    # I

    .line 397
    iget v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    if-ge p1, v0, :cond_0

    .line 401
    return-void

    .line 399
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0
.end method

.method private validateIndex(II)V
    .locals 0
    .param p1, "row"    # I
    .param p2, "col"    # I

    .line 407
    invoke-direct {p0, p1}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->validateIndex(I)V

    .line 408
    invoke-direct {p0, p2}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->validateIndex(I)V

    .line 409
    return-void
.end method

.method private valueAtInternal(II)Z
    .locals 5
    .param p1, "row"    # I
    .param p2, "col"    # I

    .line 303
    iget v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mOrder:I

    mul-int/2addr v0, p1

    add-int/2addr v0, p2

    .line 304
    .local v0, "element":I
    div-int/lit8 v1, v0, 0x20

    .line 305
    .local v1, "offset":I
    rem-int/lit8 v2, v0, 0x20

    const/4 v3, 0x1

    shl-int v2, v3, v2

    .line 306
    .local v2, "mask":I
    iget-object v4, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mValues:[I

    aget v4, v4, v1

    and-int/2addr v4, v2

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    return v3
.end method


# virtual methods
.method public capacity()I
    .locals 1

    .line 538
    iget v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mOrder:I

    return v0
.end method

.method public clear()V
    .locals 2

    .line 277
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    .line 278
    iget-object v1, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mInUse:[Z

    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([ZZ)V

    .line 279
    invoke-direct {p0}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->onChanged()V

    .line 280
    return-void
.end method

.method public compact()V
    .locals 3

    .line 519
    invoke-direct {p0}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->pack()V

    .line 520
    iget v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mOrder:I

    iget v1, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    sub-int v1, v0, v1

    div-int/lit8 v1, v1, 0x40

    .line 521
    .local v1, "unused":I
    if-lez v1, :cond_0

    .line 522
    mul-int/lit8 v2, v1, 0x40

    sub-int/2addr v0, v2

    invoke-direct {p0, v0}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->resizeMatrix(I)V

    .line 524
    :cond_0
    return-void
.end method

.method public contains(I)Z
    .locals 1
    .param p1, "key"    # I

    .line 359
    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public deleteKey(I)V
    .locals 1
    .param p1, "key"    # I

    .line 242
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->indexOfKey(IZ)I

    move-result v0

    .line 243
    .local v0, "i":I
    if-ltz v0, :cond_0

    .line 244
    invoke-virtual {p0, v0}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->removeAt(I)V

    .line 246
    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 9
    .param p1, "that"    # Ljava/lang/Object;

    .line 563
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 564
    return v0

    .line 567
    :cond_0
    instance-of v1, p1, Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 568
    return v2

    .line 571
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    .line 572
    .local v1, "other":Lcom/android/server/utils/WatchedSparseBooleanMatrix;
    iget v3, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    iget v4, v1, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    if-eq v3, v4, :cond_2

    .line 573
    return v2

    .line 575
    :cond_2
    iget-object v3, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mKeys:[I

    iget-object v4, v1, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mKeys:[I

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 578
    return v2

    .line 580
    :cond_3
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget v4, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    if-ge v3, v4, :cond_6

    .line 581
    iget-object v4, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mMap:[I

    aget v4, v4, v3

    .line 582
    .local v4, "row":I
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    iget v6, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    if-ge v5, v6, :cond_5

    .line 583
    iget-object v6, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mMap:[I

    aget v6, v6, v5

    .line 584
    .local v6, "col":I
    invoke-direct {p0, v4, v6}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->valueAtInternal(II)Z

    move-result v7

    invoke-direct {v1, v4, v6}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->valueAtInternal(II)Z

    move-result v8

    if-eq v7, v8, :cond_4

    .line 585
    return v2

    .line 582
    .end local v6    # "col":I
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 580
    .end local v4    # "row":I
    .end local v5    # "j":I
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 589
    .end local v3    # "i":I
    :cond_6
    return v0
.end method

.method public get(II)Z
    .locals 1
    .param p1, "row"    # I
    .param p2, "col"    # I

    .line 191
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->get(IIZ)Z

    move-result v0

    return v0
.end method

.method public get(IIZ)Z
    .locals 3
    .param p1, "row"    # I
    .param p2, "col"    # I
    .param p3, "valueIfKeyNotFound"    # Z

    .line 199
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->indexOfKey(IZ)I

    move-result v1

    .line 200
    .local v1, "r":I
    invoke-direct {p0, p2, v0}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->indexOfKey(IZ)I

    move-result v0

    .line 201
    .local v0, "c":I
    if-ltz v1, :cond_0

    if-ltz v0, :cond_0

    .line 202
    invoke-virtual {p0, v1, v0}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->valueAt(II)Z

    move-result v2

    return v2

    .line 204
    :cond_0
    return p3
.end method

.method public hashCode()I
    .locals 6

    .line 546
    iget v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    .line 547
    .local v0, "hashCode":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mKeys:[I

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([I)I

    move-result v2

    add-int/2addr v1, v2

    .line 548
    .end local v0    # "hashCode":I
    .local v1, "hashCode":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mMap:[I

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([I)I

    move-result v2

    add-int/2addr v0, v2

    .line 549
    .end local v1    # "hashCode":I
    .restart local v0    # "hashCode":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    if-ge v1, v2, :cond_1

    .line 550
    iget-object v2, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mMap:[I

    aget v2, v2, v1

    .line 551
    .local v2, "row":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    iget v4, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    if-ge v3, v4, :cond_0

    .line 552
    mul-int/lit8 v4, v0, 0x1f

    iget-object v5, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mMap:[I

    aget v5, v5, v3

    invoke-direct {p0, v2, v5}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->valueAtInternal(II)Z

    move-result v5

    add-int v0, v4, v5

    .line 551
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 549
    .end local v2    # "row":I
    .end local v3    # "j":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 555
    .end local v1    # "i":I
    :cond_1
    return v0
.end method

.method public indexOfKey(I)I
    .locals 2
    .param p1, "key"    # I

    .line 352
    iget-object v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mKeys:[I

    iget v1, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    invoke-static {v0, v1, p1}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->binarySearch([III)I

    move-result v0

    return v0
.end method

.method public keyAt(I)I
    .locals 1
    .param p1, "index"    # I

    .line 294
    invoke-direct {p0, p1}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->validateIndex(I)V

    .line 295
    iget-object v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mKeys:[I

    aget v0, v0, p1

    return v0
.end method

.method public keys()[I
    .locals 2

    .line 530
    iget-object v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mKeys:[I

    iget v1, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    return-object v0
.end method

.method public matrixToString(Z)[Ljava/lang/String;
    .locals 6
    .param p1, "raw"    # Z

    .line 665
    invoke-virtual {p0}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->matrixToStringMeta()[Ljava/lang/String;

    move-result-object v0

    .line 667
    .local v0, "meta":[Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 668
    invoke-virtual {p0}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->matrixToStringRaw()[Ljava/lang/String;

    move-result-object v1

    .local v1, "data":[Ljava/lang/String;
    goto :goto_0

    .line 670
    .end local v1    # "data":[Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->matrixToStringCooked()[Ljava/lang/String;

    move-result-object v1

    .line 672
    .restart local v1    # "data":[Ljava/lang/String;
    :goto_0
    array-length v2, v0

    array-length v3, v1

    add-int/2addr v2, v3

    new-array v2, v2, [Ljava/lang/String;

    .line 673
    .local v2, "result":[Ljava/lang/String;
    array-length v3, v0

    const/4 v4, 0x0

    invoke-static {v0, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 674
    array-length v3, v0

    array-length v5, v1

    invoke-static {v1, v4, v2, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 675
    return-object v2
.end method

.method matrixToStringCooked()[Ljava/lang/String;
    .locals 6

    .line 652
    iget v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    new-array v0, v0, [Ljava/lang/String;

    .line 653
    .local v0, "result":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    if-ge v1, v2, :cond_2

    .line 654
    iget-object v3, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mMap:[I

    aget v3, v3, v1

    .line 655
    .local v3, "row":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v2, v4

    .line 656
    .local v2, "line":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    iget v5, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    if-ge v4, v5, :cond_1

    .line 657
    iget-object v5, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mMap:[I

    aget v5, v5, v4

    invoke-direct {p0, v3, v5}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->valueAtInternal(II)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "1"

    goto :goto_2

    :cond_0
    const-string v5, "0"

    :goto_2
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 656
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 659
    .end local v4    # "j":I
    :cond_1
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v1

    .line 653
    .end local v2    # "line":Ljava/lang/StringBuilder;
    .end local v3    # "row":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 661
    .end local v1    # "i":I
    :cond_2
    return-object v0
.end method

.method matrixToStringMeta()[Ljava/lang/String;
    .locals 8

    .line 599
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    .line 601
    .local v0, "result":[Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 602
    .local v1, "k":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v3, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    const-string v4, " "

    const/4 v5, 0x1

    if-ge v2, v3, :cond_1

    .line 603
    iget-object v3, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mKeys:[I

    aget v3, v3, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 604
    iget v3, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    sub-int/2addr v3, v5

    if-ge v2, v3, :cond_0

    .line 605
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 602
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 608
    .end local v2    # "i":I
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 610
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 611
    .local v3, "m":Ljava/lang/StringBuilder;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    iget v7, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    if-ge v6, v7, :cond_3

    .line 612
    iget-object v7, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mMap:[I

    aget v7, v7, v6

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 613
    iget v7, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    sub-int/2addr v7, v5

    if-ge v6, v7, :cond_2

    .line 614
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 611
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 617
    .end local v6    # "i":I
    :cond_3
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v5

    .line 619
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 620
    .local v4, "u":Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    iget v6, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mOrder:I

    if-ge v5, v6, :cond_5

    .line 621
    iget-object v6, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mInUse:[Z

    aget-boolean v6, v6, v5

    if-eqz v6, :cond_4

    const-string v6, "1"

    goto :goto_3

    :cond_4
    const-string v6, "0"

    :goto_3
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 620
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 623
    .end local v5    # "i":I
    :cond_5
    const/4 v5, 0x2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v5

    .line 624
    return-object v0
.end method

.method matrixToStringRaw()[Ljava/lang/String;
    .locals 5

    .line 634
    iget v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mOrder:I

    new-array v0, v0, [Ljava/lang/String;

    .line 635
    .local v0, "result":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mOrder:I

    if-ge v1, v2, :cond_2

    .line 636
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v2, v3

    .line 637
    .local v2, "line":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    iget v4, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mOrder:I

    if-ge v3, v4, :cond_1

    .line 638
    invoke-direct {p0, v1, v3}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->valueAtInternal(II)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "1"

    goto :goto_2

    :cond_0
    const-string v4, "0"

    :goto_2
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 637
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 640
    .end local v3    # "j":I
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    .line 635
    .end local v2    # "line":Ljava/lang/StringBuilder;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 642
    .end local v1    # "i":I
    :cond_2
    return-object v0
.end method

.method public put(IIZ)V
    .locals 4
    .param p1, "row"    # I
    .param p2, "col"    # I
    .param p3, "value"    # Z

    .line 213
    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->indexOfKey(I)I

    move-result v0

    .line 214
    .local v0, "r":I
    invoke-virtual {p0, p2}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->indexOfKey(I)I

    move-result v1

    .line 215
    .local v1, "c":I
    if-ltz v0, :cond_0

    if-gez v1, :cond_3

    .line 219
    :cond_0
    const/4 v2, 0x1

    if-gez v0, :cond_1

    .line 220
    invoke-direct {p0, p1, v2}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->indexOfKey(IZ)I

    move-result v0

    .line 222
    :cond_1
    if-gez v1, :cond_2

    .line 223
    invoke-direct {p0, p2, v2}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->indexOfKey(IZ)I

    move-result v1

    .line 225
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->indexOfKey(I)I

    move-result v0

    .line 226
    invoke-virtual {p0, p2}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->indexOfKey(I)I

    move-result v1

    .line 228
    :cond_3
    if-ltz v0, :cond_4

    if-ltz v1, :cond_4

    .line 229
    invoke-virtual {p0, v0, v1, p3}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->setValueAt(IIZ)V

    .line 234
    return-void

    .line 232
    :cond_4
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "matrix overflow"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public removeAt(I)V
    .locals 5
    .param p1, "index"    # I

    .line 253
    invoke-direct {p0, p1}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->validateIndex(I)V

    .line 254
    iget-object v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mInUse:[Z

    iget-object v1, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mMap:[I

    aget v1, v1, p1

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 257
    iget-object v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mKeys:[I

    add-int/lit8 v1, p1, 0x1

    iget v3, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    add-int/lit8 v4, p1, 0x1

    sub-int/2addr v3, v4

    invoke-static {v0, v1, v0, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 258
    iget-object v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mKeys:[I

    iget v1, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    add-int/lit8 v3, v1, -0x1

    aput v2, v0, v3

    .line 259
    iget-object v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mMap:[I

    add-int/lit8 v3, p1, 0x1

    add-int/lit8 v4, p1, 0x1

    sub-int/2addr v1, v4

    invoke-static {v0, v3, v0, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 260
    iget-object v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mMap:[I

    iget v1, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    add-int/lit8 v3, v1, -0x1

    aput v2, v0, v3

    .line 261
    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    .line 262
    invoke-direct {p0}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->onChanged()V

    .line 263
    return-void
.end method

.method public setValueAt(IIZ)V
    .locals 2
    .param p1, "rowIndex"    # I
    .param p2, "colIndex"    # I
    .param p3, "value"    # Z

    .line 340
    invoke-direct {p0, p1, p2}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->validateIndex(II)V

    .line 341
    iget-object v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mMap:[I

    aget v1, v0, p1

    .line 342
    .local v1, "r":I
    aget v0, v0, p2

    .line 343
    .local v0, "c":I
    invoke-direct {p0, v1, v0, p3}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->setValueAtInternal(IIZ)V

    .line 344
    invoke-direct {p0}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->onChanged()V

    .line 345
    return-void
.end method

.method public size()I
    .locals 1

    .line 270
    iget v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    return v0
.end method

.method public snapshot()Lcom/android/server/utils/WatchedSparseBooleanMatrix;
    .locals 1

    .line 183
    new-instance v0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    invoke-direct {v0, p0}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;-><init>(Lcom/android/server/utils/WatchedSparseBooleanMatrix;)V

    return-object v0
.end method

.method public bridge synthetic snapshot()Ljava/lang/Object;
    .locals 1

    .line 42
    invoke-virtual {p0}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->snapshot()Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 686
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public valueAt(II)Z
    .locals 3
    .param p1, "rowIndex"    # I
    .param p2, "colIndex"    # I

    .line 315
    invoke-direct {p0, p1, p2}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->validateIndex(II)V

    .line 316
    iget-object v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mMap:[I

    aget v1, v0, p1

    .line 317
    .local v1, "r":I
    aget v0, v0, p2

    .line 318
    .local v0, "c":I
    invoke-direct {p0, v1, v0}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->valueAtInternal(II)Z

    move-result v2

    return v2
.end method
