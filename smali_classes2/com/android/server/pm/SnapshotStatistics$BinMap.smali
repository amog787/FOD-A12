.class Lcom/android/server/pm/SnapshotStatistics$BinMap;
.super Ljava/lang/Object;
.source "SnapshotStatistics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/SnapshotStatistics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BinMap"
.end annotation


# instance fields
.field private mBinMap:[I

.field private mCount:I

.field private mMaxBin:I

.field private mUserKey:[I


# direct methods
.method constructor <init>([I)V
    .locals 4
    .param p1, "userKey"    # [I

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/SnapshotStatistics$BinMap;->mUserKey:[I

    .line 158
    array-length v1, v0

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/pm/SnapshotStatistics$BinMap;->mCount:I

    .line 160
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/pm/SnapshotStatistics$BinMap;->mMaxBin:I

    .line 161
    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/pm/SnapshotStatistics$BinMap;->mBinMap:[I

    .line 163
    const/4 v0, 0x0

    .line 164
    .local v0, "j":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/pm/SnapshotStatistics$BinMap;->mUserKey:[I

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 165
    :goto_1
    iget-object v2, p0, Lcom/android/server/pm/SnapshotStatistics$BinMap;->mUserKey:[I

    aget v2, v2, v1

    if-gt v0, v2, :cond_0

    .line 166
    iget-object v2, p0, Lcom/android/server/pm/SnapshotStatistics$BinMap;->mBinMap:[I

    aput v1, v2, v0

    .line 167
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 164
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 170
    .end local v1    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/android/server/pm/SnapshotStatistics$BinMap;->mBinMap:[I

    iget v3, p0, Lcom/android/server/pm/SnapshotStatistics$BinMap;->mMaxBin:I

    array-length v2, v2

    aput v2, v1, v3

    .line 171
    return-void
.end method


# virtual methods
.method public count()I
    .locals 1

    .line 191
    iget v0, p0, Lcom/android/server/pm/SnapshotStatistics$BinMap;->mCount:I

    return v0
.end method

.method public getBin(I)I
    .locals 2
    .param p1, "x"    # I

    .line 177
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/android/server/pm/SnapshotStatistics$BinMap;->mMaxBin:I

    if-ge p1, v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/android/server/pm/SnapshotStatistics$BinMap;->mBinMap:[I

    aget v0, v0, p1

    return v0

    .line 179
    :cond_0
    iget v0, p0, Lcom/android/server/pm/SnapshotStatistics$BinMap;->mMaxBin:I

    if-lt p1, v0, :cond_1

    .line 180
    iget-object v1, p0, Lcom/android/server/pm/SnapshotStatistics$BinMap;->mBinMap:[I

    aget v0, v1, v0

    return v0

    .line 183
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public userKeys()[I
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/android/server/pm/SnapshotStatistics$BinMap;->mUserKey:[I

    return-object v0
.end method
