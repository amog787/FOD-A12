.class Lcom/android/server/job/controllers/ConnectivityController$1;
.super Ljava/lang/Object;
.source "ConnectivityController.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/controllers/ConnectivityController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/server/job/controllers/ConnectivityController$UidStats;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/job/controllers/ConnectivityController;


# direct methods
.method constructor <init>(Lcom/android/server/job/controllers/ConnectivityController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/job/controllers/ConnectivityController;

    .line 132
    iput-object p1, p0, Lcom/android/server/job/controllers/ConnectivityController$1;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private prioritizeExistenceOver(III)I
    .locals 1
    .param p1, "threshold"    # I
    .param p2, "v1"    # I
    .param p3, "v2"    # I

    .line 135
    if-le p2, p1, :cond_0

    if-gt p3, p1, :cond_1

    :cond_0
    if-gt p2, p1, :cond_2

    if-gt p3, p1, :cond_2

    .line 136
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 139
    :cond_2
    if-le p2, p1, :cond_3

    .line 140
    const/4 v0, -0x1

    return v0

    .line 142
    :cond_3
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public compare(Lcom/android/server/job/controllers/ConnectivityController$UidStats;Lcom/android/server/job/controllers/ConnectivityController$UidStats;)I
    .locals 16
    .param p1, "us1"    # Lcom/android/server/job/controllers/ConnectivityController$UidStats;
    .param p2, "us2"    # Lcom/android/server/job/controllers/ConnectivityController$UidStats;

    .line 159
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v1, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->runningJobs:Landroid/util/ArraySet;

    .line 160
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    iget-object v4, v2, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->runningJobs:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v4

    .line 159
    const/4 v5, 0x0

    invoke-direct {v0, v5, v3, v4}, Lcom/android/server/job/controllers/ConnectivityController$1;->prioritizeExistenceOver(III)I

    move-result v3

    .line 161
    .local v3, "runningPriority":I
    if-eqz v3, :cond_0

    .line 162
    return v3

    .line 165
    :cond_0
    iget v4, v1, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->numReadyWithConnectivity:I

    iget v6, v2, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->numReadyWithConnectivity:I

    invoke-direct {v0, v5, v4, v6}, Lcom/android/server/job/controllers/ConnectivityController$1;->prioritizeExistenceOver(III)I

    move-result v4

    .line 167
    .local v4, "readyWithConnPriority":I
    if-eqz v4, :cond_1

    .line 168
    return v4

    .line 172
    :cond_1
    iget v6, v1, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->numRequestedNetworkAvailable:I

    iget v7, v2, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->numRequestedNetworkAvailable:I

    invoke-direct {v0, v5, v6, v7}, Lcom/android/server/job/controllers/ConnectivityController$1;->prioritizeExistenceOver(III)I

    move-result v6

    .line 174
    .local v6, "reqAvailPriority":I
    if-eqz v6, :cond_2

    .line 175
    return v6

    .line 179
    :cond_2
    const/16 v7, 0x27

    iget v8, v1, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->basePriority:I

    iget v9, v2, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->basePriority:I

    invoke-direct {v0, v7, v8, v9}, Lcom/android/server/job/controllers/ConnectivityController$1;->prioritizeExistenceOver(III)I

    move-result v7

    .line 181
    .local v7, "topPriority":I
    if-eqz v7, :cond_3

    .line 182
    return v7

    .line 186
    :cond_3
    iget v8, v1, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->numEJs:I

    iget v9, v2, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->numEJs:I

    invoke-direct {v0, v5, v8, v9}, Lcom/android/server/job/controllers/ConnectivityController$1;->prioritizeExistenceOver(III)I

    move-result v8

    .line 187
    .local v8, "ejPriority":I
    if-eqz v8, :cond_4

    .line 188
    return v8

    .line 193
    :cond_4
    const/16 v9, 0x22

    iget v10, v1, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->basePriority:I

    iget v11, v2, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->basePriority:I

    invoke-direct {v0, v9, v10, v11}, Lcom/android/server/job/controllers/ConnectivityController$1;->prioritizeExistenceOver(III)I

    move-result v9

    .line 195
    .local v9, "fgsPriority":I
    if-eqz v9, :cond_5

    .line 196
    return v9

    .line 199
    :cond_5
    iget-wide v10, v1, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->earliestEJEnqueueTime:J

    iget-wide v12, v2, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->earliestEJEnqueueTime:J

    cmp-long v10, v10, v12

    const/4 v11, -0x1

    if-gez v10, :cond_6

    .line 200
    return v11

    .line 201
    :cond_6
    iget-wide v12, v1, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->earliestEJEnqueueTime:J

    iget-wide v14, v2, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->earliestEJEnqueueTime:J

    cmp-long v10, v12, v14

    const/4 v12, 0x1

    if-lez v10, :cond_7

    .line 202
    return v12

    .line 205
    :cond_7
    iget v10, v1, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->basePriority:I

    iget v13, v2, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->basePriority:I

    if-eq v10, v13, :cond_8

    .line 206
    iget v5, v2, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->basePriority:I

    iget v10, v1, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->basePriority:I

    sub-int/2addr v5, v10

    return v5

    .line 209
    :cond_8
    iget-wide v13, v1, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->earliestEnqueueTime:J

    move v10, v6

    .end local v6    # "reqAvailPriority":I
    .local v10, "reqAvailPriority":I
    iget-wide v5, v2, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->earliestEnqueueTime:J

    cmp-long v5, v13, v5

    if-gez v5, :cond_9

    .line 210
    return v11

    .line 212
    :cond_9
    iget-wide v5, v1, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->earliestEnqueueTime:J

    iget-wide v13, v2, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->earliestEnqueueTime:J

    cmp-long v5, v5, v13

    if-lez v5, :cond_a

    move v5, v12

    goto :goto_0

    :cond_a
    const/4 v5, 0x0

    :goto_0
    return v5
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 132
    check-cast p1, Lcom/android/server/job/controllers/ConnectivityController$UidStats;

    check-cast p2, Lcom/android/server/job/controllers/ConnectivityController$UidStats;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/job/controllers/ConnectivityController$1;->compare(Lcom/android/server/job/controllers/ConnectivityController$UidStats;Lcom/android/server/job/controllers/ConnectivityController$UidStats;)I

    move-result p1

    return p1
.end method
