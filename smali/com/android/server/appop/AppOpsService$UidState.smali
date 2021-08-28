.class final Lcom/android/server/appop/AppOpsService$UidState;
.super Ljava/lang/Object;
.source "AppOpsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/appop/AppOpsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "UidState"
.end annotation


# instance fields
.field public appWidgetVisible:Z

.field public capability:I

.field public foregroundOps:Landroid/util/SparseBooleanArray;

.field public hasForegroundWatchers:Z

.field public opModes:Landroid/util/SparseIntArray;

.field public pendingAppWidgetVisible:Z

.field public pendingCapability:I

.field public pendingState:I

.field public pendingStateCommitTime:J

.field public pkgOps:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/appop/AppOpsService$Ops;",
            ">;"
        }
    .end annotation
.end field

.field public state:I

.field final synthetic this$0:Lcom/android/server/appop/AppOpsService;

.field public final uid:I


# direct methods
.method public constructor <init>(Lcom/android/server/appop/AppOpsService;I)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/appop/AppOpsService;
    .param p2, "uid"    # I

    .line 558
    iput-object p1, p0, Lcom/android/server/appop/AppOpsService$UidState;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 543
    const/16 v0, 0x2bc

    iput v0, p0, Lcom/android/server/appop/AppOpsService$UidState;->state:I

    .line 544
    iput v0, p0, Lcom/android/server/appop/AppOpsService$UidState;->pendingState:I

    .line 559
    iput p2, p0, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    .line 560
    return-void
.end method

.method private evalForegroundWatchers(ILandroid/util/SparseArray;Landroid/util/SparseBooleanArray;)V
    .locals 5
    .param p1, "op"    # I
    .param p3, "which"    # Landroid/util/SparseBooleanArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/SparseArray<",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/appop/AppOpsService$ModeCallback;",
            ">;>;",
            "Landroid/util/SparseBooleanArray;",
            ")V"
        }
    .end annotation

    .line 624
    .local p2, "watchers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;>;"
    const/4 v0, 0x0

    invoke-virtual {p3, p1, v0}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v0

    .line 625
    .local v0, "curValue":Z
    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    .line 626
    .local v1, "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    if-eqz v1, :cond_1

    .line 627
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .local v2, "cbi":I
    :goto_0
    if-nez v0, :cond_1

    if-ltz v2, :cond_1

    .line 628
    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/appop/AppOpsService$ModeCallback;

    iget v4, v4, Lcom/android/server/appop/AppOpsService$ModeCallback;->mFlags:I

    and-int/2addr v4, v3

    if-eqz v4, :cond_0

    .line 630
    iput-boolean v3, p0, Lcom/android/server/appop/AppOpsService$UidState;->hasForegroundWatchers:Z

    .line 631
    const/4 v0, 0x1

    .line 627
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 635
    .end local v2    # "cbi":I
    :cond_1
    invoke-virtual {p3, p1, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 636
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 563
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .line 564
    iput-object v0, p0, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    .line 565
    return-void
.end method

.method public evalForegroundOps(Landroid/util/SparseArray;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/appop/AppOpsService$ModeCallback;",
            ">;>;)V"
        }
    .end annotation

    .line 639
    .local p1, "watchers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;>;"
    const/4 v0, 0x0

    .line 640
    .local v0, "which":Landroid/util/SparseBooleanArray;
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/appop/AppOpsService$UidState;->hasForegroundWatchers:Z

    .line 641
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    const/4 v2, 0x4

    if-eqz v1, :cond_2

    .line 642
    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 643
    iget-object v3, p0, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    if-ne v3, v2, :cond_1

    .line 644
    if-nez v0, :cond_0

    .line 645
    new-instance v3, Landroid/util/SparseBooleanArray;

    invoke-direct {v3}, Landroid/util/SparseBooleanArray;-><init>()V

    move-object v0, v3

    .line 647
    :cond_0
    iget-object v3, p0, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    invoke-direct {p0, v3, p1, v0}, Lcom/android/server/appop/AppOpsService$UidState;->evalForegroundWatchers(ILandroid/util/SparseArray;Landroid/util/SparseBooleanArray;)V

    .line 642
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 651
    .end local v1    # "i":I
    :cond_2
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    if-eqz v1, :cond_6

    .line 652
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .restart local v1    # "i":I
    :goto_1
    if-ltz v1, :cond_6

    .line 653
    iget-object v3, p0, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appop/AppOpsService$Ops;

    .line 654
    .local v3, "ops":Lcom/android/server/appop/AppOpsService$Ops;
    invoke-virtual {v3}, Lcom/android/server/appop/AppOpsService$Ops;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .local v4, "j":I
    :goto_2
    if-ltz v4, :cond_5

    .line 655
    invoke-virtual {v3, v4}, Lcom/android/server/appop/AppOpsService$Ops;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/appop/AppOpsService$Op;

    invoke-static {v5}, Lcom/android/server/appop/AppOpsService$Op;->access$400(Lcom/android/server/appop/AppOpsService$Op;)I

    move-result v5

    if-ne v5, v2, :cond_4

    .line 656
    if-nez v0, :cond_3

    .line 657
    new-instance v5, Landroid/util/SparseBooleanArray;

    invoke-direct {v5}, Landroid/util/SparseBooleanArray;-><init>()V

    move-object v0, v5

    .line 659
    :cond_3
    invoke-virtual {v3, v4}, Lcom/android/server/appop/AppOpsService$Ops;->keyAt(I)I

    move-result v5

    invoke-direct {p0, v5, p1, v0}, Lcom/android/server/appop/AppOpsService$UidState;->evalForegroundWatchers(ILandroid/util/SparseArray;Landroid/util/SparseBooleanArray;)V

    .line 654
    :cond_4
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 652
    .end local v3    # "ops":Lcom/android/server/appop/AppOpsService$Ops;
    .end local v4    # "j":I
    :cond_5
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 664
    .end local v1    # "i":I
    :cond_6
    iput-object v0, p0, Lcom/android/server/appop/AppOpsService$UidState;->foregroundOps:Landroid/util/SparseBooleanArray;

    .line 665
    return-void
.end method

.method evalMode(II)I
    .locals 5
    .param p1, "op"    # I
    .param p2, "mode"    # I

    .line 575
    const/4 v0, 0x4

    if-ne p2, v0, :cond_8

    .line 576
    iget-boolean v1, p0, Lcom/android/server/appop/AppOpsService$UidState;->appWidgetVisible:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 577
    return v2

    .line 578
    :cond_0
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$UidState;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-static {v1}, Lcom/android/server/appop/AppOpsService;->access$300(Lcom/android/server/appop/AppOpsService;)Landroid/app/ActivityManagerInternal;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$UidState;->this$0:Lcom/android/server/appop/AppOpsService;

    .line 579
    invoke-static {v1}, Lcom/android/server/appop/AppOpsService;->access$300(Lcom/android/server/appop/AppOpsService;)Landroid/app/ActivityManagerInternal;

    move-result-object v1

    iget v3, p0, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    invoke-virtual {v1, v3}, Landroid/app/ActivityManagerInternal;->isPendingTopUid(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 580
    return v2

    .line 581
    :cond_1
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$UidState;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-static {v1}, Lcom/android/server/appop/AppOpsService;->access$300(Lcom/android/server/appop/AppOpsService;)Landroid/app/ActivityManagerInternal;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$UidState;->this$0:Lcom/android/server/appop/AppOpsService;

    .line 582
    invoke-static {v1}, Lcom/android/server/appop/AppOpsService;->access$300(Lcom/android/server/appop/AppOpsService;)Landroid/app/ActivityManagerInternal;

    move-result-object v1

    iget v3, p0, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    invoke-virtual {v1, v3}, Landroid/app/ActivityManagerInternal;->isTempAllowlistedForFgsWhileInUse(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 583
    return v2

    .line 584
    :cond_2
    iget v1, p0, Lcom/android/server/appop/AppOpsService$UidState;->state:I

    const/16 v3, 0xc8

    if-gt v1, v3, :cond_3

    .line 586
    return v2

    .line 587
    :cond_3
    invoke-static {p1}, Landroid/app/AppOpsManager;->resolveFirstUnrestrictedUidState(I)I

    move-result v3

    const/4 v4, 0x1

    if-gt v1, v3, :cond_7

    .line 589
    sparse-switch p1, :sswitch_data_0

    .line 612
    return v2

    .line 606
    :sswitch_0
    iget v1, p0, Lcom/android/server/appop/AppOpsService$UidState;->capability:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_4

    .line 607
    return v2

    .line 609
    :cond_4
    return v4

    .line 600
    :sswitch_1
    iget v0, p0, Lcom/android/server/appop/AppOpsService$UidState;->capability:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_5

    .line 601
    return v2

    .line 603
    :cond_5
    return v4

    .line 594
    :sswitch_2
    iget v0, p0, Lcom/android/server/appop/AppOpsService$UidState;->capability:I

    and-int/2addr v0, v4

    if-eqz v0, :cond_6

    .line 595
    return v2

    .line 597
    :cond_6
    return v4

    .line 616
    :cond_7
    return v4

    .line 619
    :cond_8
    return p2

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x1 -> :sswitch_2
        0x1a -> :sswitch_1
        0x1b -> :sswitch_0
        0x29 -> :sswitch_2
        0x2a -> :sswitch_2
    .end sparse-switch
.end method

.method public isDefault()Z
    .locals 2

    .line 568
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    if-eqz v0, :cond_1

    .line 569
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-gtz v0, :cond_2

    :cond_1
    iget v0, p0, Lcom/android/server/appop/AppOpsService$UidState;->state:I

    const/16 v1, 0x2bc

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/android/server/appop/AppOpsService$UidState;->pendingState:I

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 568
    :goto_0
    return v0
.end method
