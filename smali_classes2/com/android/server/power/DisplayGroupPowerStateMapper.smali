.class public Lcom/android/server/power/DisplayGroupPowerStateMapper;
.super Ljava/lang/Object;
.source "DisplayGroupPowerStateMapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/DisplayGroupPowerStateMapper$DisplayGroupInfo;,
        Lcom/android/server/power/DisplayGroupPowerStateMapper$DisplayGroupPowerChangeListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DisplayPowerRequestMapper"


# instance fields
.field private mDisplayGroupIds:[I

.field private final mDisplayGroupInfos:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/power/DisplayGroupPowerStateMapper$DisplayGroupInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mDisplayGroupListener:Landroid/hardware/display/DisplayManagerInternal$DisplayGroupListener;

.field private final mListener:Lcom/android/server/power/DisplayGroupPowerStateMapper$DisplayGroupPowerChangeListener;

.field private final mLock:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;Landroid/hardware/display/DisplayManagerInternal;Lcom/android/server/power/DisplayGroupPowerStateMapper$DisplayGroupPowerChangeListener;)V
    .locals 5
    .param p1, "lock"    # Ljava/lang/Object;
    .param p2, "displayManagerInternal"    # Landroid/hardware/display/DisplayManagerInternal;
    .param p3, "listener"    # Lcom/android/server/power/DisplayGroupPowerStateMapper$DisplayGroupPowerChangeListener;

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/DisplayGroupPowerStateMapper;->mDisplayGroupInfos:Landroid/util/SparseArray;

    .line 64
    new-instance v1, Lcom/android/server/power/DisplayGroupPowerStateMapper$1;

    invoke-direct {v1, p0}, Lcom/android/server/power/DisplayGroupPowerStateMapper$1;-><init>(Lcom/android/server/power/DisplayGroupPowerStateMapper;)V

    iput-object v1, p0, Lcom/android/server/power/DisplayGroupPowerStateMapper;->mDisplayGroupListener:Landroid/hardware/display/DisplayManagerInternal$DisplayGroupListener;

    .line 109
    iput-object p1, p0, Lcom/android/server/power/DisplayGroupPowerStateMapper;->mLock:Ljava/lang/Object;

    .line 110
    iput-object p3, p0, Lcom/android/server/power/DisplayGroupPowerStateMapper;->mListener:Lcom/android/server/power/DisplayGroupPowerStateMapper$DisplayGroupPowerChangeListener;

    .line 111
    invoke-virtual {p2, v1}, Landroid/hardware/display/DisplayManagerInternal;->registerDisplayGroupListener(Landroid/hardware/display/DisplayManagerInternal$DisplayGroupListener;)V

    .line 113
    new-instance v1, Lcom/android/server/power/DisplayGroupPowerStateMapper$DisplayGroupInfo;

    new-instance v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-direct {v2}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;-><init>()V

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4, v3}, Lcom/android/server/power/DisplayGroupPowerStateMapper$DisplayGroupInfo;-><init>(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;IZZ)V

    .line 116
    .local v1, "displayGroupInfo":Lcom/android/server/power/DisplayGroupPowerStateMapper$DisplayGroupInfo;
    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 117
    new-array v0, v3, [I

    aput v4, v0, v4

    iput-object v0, p0, Lcom/android/server/power/DisplayGroupPowerStateMapper;->mDisplayGroupIds:[I

    .line 118
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/power/DisplayGroupPowerStateMapper;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/DisplayGroupPowerStateMapper;

    .line 46
    iget-object v0, p0, Lcom/android/server/power/DisplayGroupPowerStateMapper;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/power/DisplayGroupPowerStateMapper;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/DisplayGroupPowerStateMapper;

    .line 46
    iget-object v0, p0, Lcom/android/server/power/DisplayGroupPowerStateMapper;->mDisplayGroupInfos:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/power/DisplayGroupPowerStateMapper;)[I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/DisplayGroupPowerStateMapper;

    .line 46
    iget-object v0, p0, Lcom/android/server/power/DisplayGroupPowerStateMapper;->mDisplayGroupIds:[I

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/server/power/DisplayGroupPowerStateMapper;[I)[I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/DisplayGroupPowerStateMapper;
    .param p1, "x1"    # [I

    .line 46
    iput-object p1, p0, Lcom/android/server/power/DisplayGroupPowerStateMapper;->mDisplayGroupIds:[I

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/server/power/DisplayGroupPowerStateMapper;)Lcom/android/server/power/DisplayGroupPowerStateMapper$DisplayGroupPowerChangeListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/DisplayGroupPowerStateMapper;

    .line 46
    iget-object v0, p0, Lcom/android/server/power/DisplayGroupPowerStateMapper;->mListener:Lcom/android/server/power/DisplayGroupPowerStateMapper$DisplayGroupPowerChangeListener;

    return-object v0
.end method


# virtual methods
.method areAllDisplaysReadyLocked()Z
    .locals 3

    .line 232
    iget-object v0, p0, Lcom/android/server/power/DisplayGroupPowerStateMapper;->mDisplayGroupInfos:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 233
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 234
    iget-object v2, p0, Lcom/android/server/power/DisplayGroupPowerStateMapper;->mDisplayGroupInfos:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/DisplayGroupPowerStateMapper$DisplayGroupInfo;

    iget-boolean v2, v2, Lcom/android/server/power/DisplayGroupPowerStateMapper$DisplayGroupInfo;->ready:Z

    if-nez v2, :cond_0

    .line 235
    const/4 v2, 0x0

    return v2

    .line 233
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 239
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method getDisplayGroupCountLocked()I
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/android/server/power/DisplayGroupPowerStateMapper;->mDisplayGroupIds:[I

    array-length v0, v0

    return v0
.end method

.method getDisplayGroupIdsLocked()[I
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/android/server/power/DisplayGroupPowerStateMapper;->mDisplayGroupIds:[I

    return-object v0
.end method

.method getGlobalWakefulnessLocked()I
    .locals 6

    .line 165
    iget-object v0, p0, Lcom/android/server/power/DisplayGroupPowerStateMapper;->mDisplayGroupInfos:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 166
    .local v0, "size":I
    const/4 v1, 0x0

    .line 167
    .local v1, "deviceWakefulness":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_4

    .line 168
    iget-object v3, p0, Lcom/android/server/power/DisplayGroupPowerStateMapper;->mDisplayGroupInfos:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/DisplayGroupPowerStateMapper$DisplayGroupInfo;

    iget v3, v3, Lcom/android/server/power/DisplayGroupPowerStateMapper$DisplayGroupInfo;->wakefulness:I

    .line 169
    .local v3, "wakefulness":I
    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 170
    return v4

    .line 171
    :cond_0
    const/4 v4, 0x2

    const/4 v5, 0x3

    if-ne v3, v4, :cond_2

    if-eqz v1, :cond_1

    if-ne v1, v5, :cond_2

    .line 174
    :cond_1
    const/4 v1, 0x2

    goto :goto_1

    .line 175
    :cond_2
    if-ne v3, v5, :cond_3

    if-nez v1, :cond_3

    .line 177
    const/4 v1, 0x3

    .line 167
    .end local v3    # "wakefulness":I
    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 181
    .end local v2    # "i":I
    :cond_4
    return v1
.end method

.method getLastPowerOnTimeLocked(I)J
    .locals 2
    .param p1, "groupId"    # I

    .line 141
    iget-object v0, p0, Lcom/android/server/power/DisplayGroupPowerStateMapper;->mDisplayGroupInfos:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/DisplayGroupPowerStateMapper$DisplayGroupInfo;

    iget-wide v0, v0, Lcom/android/server/power/DisplayGroupPowerStateMapper$DisplayGroupInfo;->lastPowerOnTime:J

    return-wide v0
.end method

.method getLastUserActivityTimeLocked(I)J
    .locals 2
    .param p1, "groupId"    # I

    .line 264
    iget-object v0, p0, Lcom/android/server/power/DisplayGroupPowerStateMapper;->mDisplayGroupInfos:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/DisplayGroupPowerStateMapper$DisplayGroupInfo;

    iget-wide v0, v0, Lcom/android/server/power/DisplayGroupPowerStateMapper$DisplayGroupInfo;->lastUserActivityTime:J

    return-wide v0
.end method

.method getLastUserActivityTimeNoChangeLightsLocked(I)J
    .locals 2
    .param p1, "groupId"    # I

    .line 268
    iget-object v0, p0, Lcom/android/server/power/DisplayGroupPowerStateMapper;->mDisplayGroupInfos:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/DisplayGroupPowerStateMapper$DisplayGroupInfo;

    iget-wide v0, v0, Lcom/android/server/power/DisplayGroupPowerStateMapper$DisplayGroupInfo;->lastUserActivityTimeNoChangeLights:J

    return-wide v0
.end method

.method getPowerRequestLocked(I)Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;
    .locals 1
    .param p1, "groupId"    # I

    .line 121
    iget-object v0, p0, Lcom/android/server/power/DisplayGroupPowerStateMapper;->mDisplayGroupInfos:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/DisplayGroupPowerStateMapper$DisplayGroupInfo;

    iget-object v0, v0, Lcom/android/server/power/DisplayGroupPowerStateMapper$DisplayGroupInfo;->displayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    return-object v0
.end method

.method getUserActivitySummaryLocked(I)I
    .locals 1
    .param p1, "groupId"    # I

    .line 272
    iget-object v0, p0, Lcom/android/server/power/DisplayGroupPowerStateMapper;->mDisplayGroupInfos:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/DisplayGroupPowerStateMapper$DisplayGroupInfo;

    iget v0, v0, Lcom/android/server/power/DisplayGroupPowerStateMapper$DisplayGroupInfo;->userActivitySummary:I

    return v0
.end method

.method getWakeLockSummaryLocked(I)I
    .locals 1
    .param p1, "groupId"    # I

    .line 288
    iget-object v0, p0, Lcom/android/server/power/DisplayGroupPowerStateMapper;->mDisplayGroupInfos:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/DisplayGroupPowerStateMapper$DisplayGroupInfo;

    iget v0, v0, Lcom/android/server/power/DisplayGroupPowerStateMapper$DisplayGroupInfo;->wakeLockSummary:I

    return v0
.end method

.method getWakefulnessLocked(I)I
    .locals 1
    .param p1, "groupId"    # I

    .line 133
    iget-object v0, p0, Lcom/android/server/power/DisplayGroupPowerStateMapper;->mDisplayGroupInfos:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/DisplayGroupPowerStateMapper$DisplayGroupInfo;

    iget v0, v0, Lcom/android/server/power/DisplayGroupPowerStateMapper$DisplayGroupInfo;->wakefulness:I

    return v0
.end method

.method isPoweringOnLocked(I)Z
    .locals 1
    .param p1, "groupId"    # I

    .line 149
    iget-object v0, p0, Lcom/android/server/power/DisplayGroupPowerStateMapper;->mDisplayGroupInfos:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/DisplayGroupPowerStateMapper$DisplayGroupInfo;

    iget-boolean v0, v0, Lcom/android/server/power/DisplayGroupPowerStateMapper$DisplayGroupInfo;->poweringOn:Z

    return v0
.end method

.method isReady(I)Z
    .locals 1
    .param p1, "groupId"    # I

    .line 227
    iget-object v0, p0, Lcom/android/server/power/DisplayGroupPowerStateMapper;->mDisplayGroupInfos:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/DisplayGroupPowerStateMapper$DisplayGroupInfo;

    iget-boolean v0, v0, Lcom/android/server/power/DisplayGroupPowerStateMapper$DisplayGroupInfo;->ready:Z

    return v0
.end method

.method isSandmanSummoned(I)Z
    .locals 1
    .param p1, "groupId"    # I

    .line 201
    iget-object v0, p0, Lcom/android/server/power/DisplayGroupPowerStateMapper;->mDisplayGroupInfos:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/DisplayGroupPowerStateMapper$DisplayGroupInfo;

    iget-boolean v0, v0, Lcom/android/server/power/DisplayGroupPowerStateMapper$DisplayGroupInfo;->sandmanSummoned:Z

    return v0
.end method

.method isSandmanSupported(I)Z
    .locals 1
    .param p1, "groupId"    # I

    .line 205
    iget-object v0, p0, Lcom/android/server/power/DisplayGroupPowerStateMapper;->mDisplayGroupInfos:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/DisplayGroupPowerStateMapper$DisplayGroupInfo;

    iget-boolean v0, v0, Lcom/android/server/power/DisplayGroupPowerStateMapper$DisplayGroupInfo;->supportsSandman:Z

    return v0
.end method

.method setDisplayGroupReadyLocked(IZ)Z
    .locals 2
    .param p1, "groupId"    # I
    .param p2, "ready"    # Z

    .line 254
    iget-object v0, p0, Lcom/android/server/power/DisplayGroupPowerStateMapper;->mDisplayGroupInfos:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/DisplayGroupPowerStateMapper$DisplayGroupInfo;

    .line 255
    .local v0, "displayGroupInfo":Lcom/android/server/power/DisplayGroupPowerStateMapper$DisplayGroupInfo;
    iget-boolean v1, v0, Lcom/android/server/power/DisplayGroupPowerStateMapper$DisplayGroupInfo;->ready:Z

    if-eq v1, p2, :cond_0

    .line 256
    iput-boolean p2, v0, Lcom/android/server/power/DisplayGroupPowerStateMapper$DisplayGroupInfo;->ready:Z

    .line 257
    const/4 v1, 0x1

    return v1

    .line 260
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method setLastPowerOnTimeLocked(IJ)V
    .locals 1
    .param p1, "groupId"    # I
    .param p2, "eventTime"    # J

    .line 137
    iget-object v0, p0, Lcom/android/server/power/DisplayGroupPowerStateMapper;->mDisplayGroupInfos:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/DisplayGroupPowerStateMapper$DisplayGroupInfo;

    iput-wide p2, v0, Lcom/android/server/power/DisplayGroupPowerStateMapper$DisplayGroupInfo;->lastPowerOnTime:J

    .line 138
    return-void
.end method

.method setLastUserActivityTimeLocked(IJ)V
    .locals 1
    .param p1, "groupId"    # I
    .param p2, "time"    # J

    .line 276
    iget-object v0, p0, Lcom/android/server/power/DisplayGroupPowerStateMapper;->mDisplayGroupInfos:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/DisplayGroupPowerStateMapper$DisplayGroupInfo;

    iput-wide p2, v0, Lcom/android/server/power/DisplayGroupPowerStateMapper$DisplayGroupInfo;->lastUserActivityTime:J

    .line 277
    return-void
.end method

.method setLastUserActivityTimeNoChangeLightsLocked(IJ)V
    .locals 1
    .param p1, "groupId"    # I
    .param p2, "time"    # J

    .line 280
    iget-object v0, p0, Lcom/android/server/power/DisplayGroupPowerStateMapper;->mDisplayGroupInfos:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/DisplayGroupPowerStateMapper$DisplayGroupInfo;

    iput-wide p2, v0, Lcom/android/server/power/DisplayGroupPowerStateMapper$DisplayGroupInfo;->lastUserActivityTimeNoChangeLights:J

    .line 281
    return-void
.end method

.method setPoweringOnLocked(IZ)V
    .locals 1
    .param p1, "groupId"    # I
    .param p2, "poweringOn"    # Z

    .line 145
    iget-object v0, p0, Lcom/android/server/power/DisplayGroupPowerStateMapper;->mDisplayGroupInfos:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/DisplayGroupPowerStateMapper$DisplayGroupInfo;

    iput-boolean p2, v0, Lcom/android/server/power/DisplayGroupPowerStateMapper$DisplayGroupInfo;->poweringOn:Z

    .line 146
    return-void
.end method

.method setSandmanSummoned(IZ)V
    .locals 2
    .param p1, "groupId"    # I
    .param p2, "sandmanSummoned"    # Z

    .line 216
    iget-object v0, p0, Lcom/android/server/power/DisplayGroupPowerStateMapper;->mDisplayGroupInfos:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/DisplayGroupPowerStateMapper$DisplayGroupInfo;

    .line 217
    .local v0, "displayGroupInfo":Lcom/android/server/power/DisplayGroupPowerStateMapper$DisplayGroupInfo;
    iget-boolean v1, v0, Lcom/android/server/power/DisplayGroupPowerStateMapper$DisplayGroupInfo;->supportsSandman:Z

    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, v0, Lcom/android/server/power/DisplayGroupPowerStateMapper$DisplayGroupInfo;->sandmanSummoned:Z

    .line 218
    return-void
.end method

.method setUserActivitySummaryLocked(II)V
    .locals 1
    .param p1, "groupId"    # I
    .param p2, "summary"    # I

    .line 284
    iget-object v0, p0, Lcom/android/server/power/DisplayGroupPowerStateMapper;->mDisplayGroupInfos:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/DisplayGroupPowerStateMapper$DisplayGroupInfo;

    iput p2, v0, Lcom/android/server/power/DisplayGroupPowerStateMapper$DisplayGroupInfo;->userActivitySummary:I

    .line 285
    return-void
.end method

.method setWakeLockSummaryLocked(II)V
    .locals 1
    .param p1, "groupId"    # I
    .param p2, "summary"    # I

    .line 292
    iget-object v0, p0, Lcom/android/server/power/DisplayGroupPowerStateMapper;->mDisplayGroupInfos:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/DisplayGroupPowerStateMapper$DisplayGroupInfo;

    iput p2, v0, Lcom/android/server/power/DisplayGroupPowerStateMapper$DisplayGroupInfo;->wakeLockSummary:I

    .line 293
    return-void
.end method

.method setWakefulnessLocked(II)Z
    .locals 2
    .param p1, "groupId"    # I
    .param p2, "wakefulness"    # I

    .line 191
    iget-object v0, p0, Lcom/android/server/power/DisplayGroupPowerStateMapper;->mDisplayGroupInfos:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/DisplayGroupPowerStateMapper$DisplayGroupInfo;

    .line 192
    .local v0, "displayGroupInfo":Lcom/android/server/power/DisplayGroupPowerStateMapper$DisplayGroupInfo;
    iget v1, v0, Lcom/android/server/power/DisplayGroupPowerStateMapper$DisplayGroupInfo;->wakefulness:I

    if-eq v1, p2, :cond_0

    .line 193
    iput p2, v0, Lcom/android/server/power/DisplayGroupPowerStateMapper$DisplayGroupInfo;->wakefulness:I

    .line 194
    const/4 v1, 0x1

    return v1

    .line 197
    :cond_0
    const/4 v1, 0x0

    return v1
.end method
