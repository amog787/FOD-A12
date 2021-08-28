.class Lcom/android/server/job/JobSchedulerService$PendingJobComparator;
.super Ljava/lang/Object;
.source "JobSchedulerService.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/JobSchedulerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PendingJobComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/server/job/controllers/JobStatus;",
        ">;"
    }
.end annotation


# instance fields
.field private final mEarliestRegEnqueueTimeCache:Landroid/util/SparseLongArray;

.field private final mUidHasEjCache:Landroid/util/SparseBooleanArray;

.field final synthetic this$0:Lcom/android/server/job/JobSchedulerService;


# direct methods
.method constructor <init>(Lcom/android/server/job/JobSchedulerService;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/job/JobSchedulerService;

    .line 692
    iput-object p1, p0, Lcom/android/server/job/JobSchedulerService$PendingJobComparator;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 693
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService$PendingJobComparator;->mUidHasEjCache:Landroid/util/SparseBooleanArray;

    .line 694
    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService$PendingJobComparator;->mEarliestRegEnqueueTimeCache:Landroid/util/SparseLongArray;

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)I
    .locals 16
    .param p1, "o1"    # Lcom/android/server/job/controllers/JobStatus;
    .param p2, "o2"    # Lcom/android/server/job/controllers/JobStatus;

    .line 720
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    .line 721
    return v3

    .line 725
    :cond_0
    iget v4, v1, Lcom/android/server/job/controllers/JobStatus;->overrideState:I

    iget v5, v2, Lcom/android/server/job/controllers/JobStatus;->overrideState:I

    if-eq v4, v5, :cond_1

    .line 728
    iget v3, v2, Lcom/android/server/job/controllers/JobStatus;->overrideState:I

    iget v4, v1, Lcom/android/server/job/controllers/JobStatus;->overrideState:I

    sub-int/2addr v3, v4

    return v3

    .line 730
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->isRequestedExpeditedJob()Z

    move-result v4

    .line 731
    .local v4, "o1EJ":Z
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/job/controllers/JobStatus;->isRequestedExpeditedJob()Z

    move-result v5

    .line 732
    .local v5, "o2EJ":Z
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v7

    const/4 v8, -0x1

    if-ne v6, v7, :cond_3

    .line 733
    if-eq v4, v5, :cond_3

    .line 736
    if-eqz v4, :cond_2

    goto :goto_0

    :cond_2
    const/4 v8, 0x1

    :goto_0
    return v8

    .line 739
    :cond_3
    iget-object v6, v0, Lcom/android/server/job/JobSchedulerService$PendingJobComparator;->mUidHasEjCache:Landroid/util/SparseBooleanArray;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    .line 740
    .local v6, "uid1HasEj":Z
    iget-object v7, v0, Lcom/android/server/job/JobSchedulerService$PendingJobComparator;->mUidHasEjCache:Landroid/util/SparseBooleanArray;

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v10

    invoke-virtual {v7, v10}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v7

    .line 741
    .local v7, "uid2HasEj":Z
    if-nez v6, :cond_5

    if-eqz v7, :cond_4

    goto :goto_1

    :cond_4
    const/4 v3, 0x1

    goto :goto_2

    :cond_5
    :goto_1
    if-nez v4, :cond_6

    if-eqz v5, :cond_4

    .line 751
    :cond_6
    iget-wide v10, v1, Lcom/android/server/job/controllers/JobStatus;->enqueueTime:J

    iget-object v12, v0, Lcom/android/server/job/JobSchedulerService$PendingJobComparator;->mEarliestRegEnqueueTimeCache:Landroid/util/SparseLongArray;

    .line 752
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v13

    const-wide v14, 0x7fffffffffffffffL

    invoke-virtual {v12, v13, v14, v15}, Landroid/util/SparseLongArray;->get(IJ)J

    move-result-wide v12

    .line 751
    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    .line 753
    .local v10, "uid1EarliestRegEnqueueTime":J
    iget-wide v12, v2, Lcom/android/server/job/controllers/JobStatus;->enqueueTime:J

    iget-object v3, v0, Lcom/android/server/job/JobSchedulerService$PendingJobComparator;->mEarliestRegEnqueueTimeCache:Landroid/util/SparseLongArray;

    .line 754
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v9

    invoke-virtual {v3, v9, v14, v15}, Landroid/util/SparseLongArray;->get(IJ)J

    move-result-wide v14

    .line 753
    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v12

    .line 756
    .local v12, "uid2EarliestRegEnqueueTime":J
    if-eqz v4, :cond_9

    if-eqz v5, :cond_9

    .line 757
    cmp-long v3, v10, v12

    if-gez v3, :cond_7

    .line 758
    return v8

    .line 759
    :cond_7
    cmp-long v3, v10, v12

    if-lez v3, :cond_8

    .line 760
    const/4 v3, 0x1

    return v3

    .line 759
    :cond_8
    const/4 v3, 0x1

    goto :goto_2

    .line 762
    :cond_9
    if-eqz v4, :cond_a

    iget-wide v14, v2, Lcom/android/server/job/controllers/JobStatus;->enqueueTime:J

    cmp-long v3, v10, v14

    if-gez v3, :cond_a

    .line 763
    return v8

    .line 764
    :cond_a
    if-eqz v5, :cond_b

    iget-wide v14, v1, Lcom/android/server/job/controllers/JobStatus;->enqueueTime:J

    cmp-long v3, v12, v14

    if-gez v3, :cond_b

    .line 765
    const/4 v3, 0x1

    return v3

    .line 764
    :cond_b
    const/4 v3, 0x1

    .line 768
    .end local v10    # "uid1EarliestRegEnqueueTime":J
    .end local v12    # "uid2EarliestRegEnqueueTime":J
    :goto_2
    iget-wide v9, v1, Lcom/android/server/job/controllers/JobStatus;->enqueueTime:J

    iget-wide v11, v2, Lcom/android/server/job/controllers/JobStatus;->enqueueTime:J

    cmp-long v9, v9, v11

    if-gez v9, :cond_c

    .line 769
    return v8

    .line 771
    :cond_c
    iget-wide v8, v1, Lcom/android/server/job/controllers/JobStatus;->enqueueTime:J

    iget-wide v10, v2, Lcom/android/server/job/controllers/JobStatus;->enqueueTime:J

    cmp-long v8, v8, v10

    if-lez v8, :cond_d

    goto :goto_3

    :cond_d
    const/4 v3, 0x0

    :goto_3
    return v3
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 691
    check-cast p1, Lcom/android/server/job/controllers/JobStatus;

    check-cast p2, Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/job/JobSchedulerService$PendingJobComparator;->compare(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)I

    move-result p1

    return p1
.end method

.method refreshLocked()V
    .locals 8

    .line 702
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$PendingJobComparator;->mUidHasEjCache:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 703
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$PendingJobComparator;->mEarliestRegEnqueueTimeCache:Landroid/util/SparseLongArray;

    invoke-virtual {v0}, Landroid/util/SparseLongArray;->clear()V

    .line 704
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$PendingJobComparator;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v1, v1, Lcom/android/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 705
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$PendingJobComparator;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v1, v1, Lcom/android/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/controllers/JobStatus;

    .line 706
    .local v1, "job":Lcom/android/server/job/controllers/JobStatus;
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v2

    .line 707
    .local v2, "uid":I
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->isRequestedExpeditedJob()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 708
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService$PendingJobComparator;->mUidHasEjCache:Landroid/util/SparseBooleanArray;

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_1

    .line 710
    :cond_0
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService$PendingJobComparator;->mEarliestRegEnqueueTimeCache:Landroid/util/SparseLongArray;

    const-wide v4, 0x7fffffffffffffffL

    .line 711
    invoke-virtual {v3, v2, v4, v5}, Landroid/util/SparseLongArray;->get(IJ)J

    move-result-wide v3

    .line 712
    .local v3, "earliestEnqueueTime":J
    iget-object v5, p0, Lcom/android/server/job/JobSchedulerService$PendingJobComparator;->mEarliestRegEnqueueTimeCache:Landroid/util/SparseLongArray;

    iget-wide v6, v1, Lcom/android/server/job/controllers/JobStatus;->enqueueTime:J

    .line 713
    invoke-static {v3, v4, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    .line 712
    invoke-virtual {v5, v2, v6, v7}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 704
    .end local v1    # "job":Lcom/android/server/job/controllers/JobStatus;
    .end local v2    # "uid":I
    .end local v3    # "earliestEnqueueTime":J
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 716
    .end local v0    # "i":I
    :cond_1
    return-void
.end method
