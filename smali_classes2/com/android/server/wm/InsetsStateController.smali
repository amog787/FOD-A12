.class Lcom/android/server/wm/InsetsStateController;
.super Ljava/lang/Object;
.source "InsetsStateController.java"


# instance fields
.field private final mControlTargetTypeMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/android/server/wm/InsetsControlTarget;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mDispatchInsetsChanged:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field private final mEmptyImeControlTarget:Lcom/android/server/wm/InsetsControlTarget;

.field private final mLastState:Landroid/view/InsetsState;

.field private final mPendingControlChanged:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/InsetsControlTarget;",
            ">;"
        }
    .end annotation
.end field

.field private final mProviders:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/wm/InsetsSourceProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final mState:Landroid/view/InsetsState;

.field private final mTypeControlTargetMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/wm/InsetsControlTarget;",
            ">;"
        }
    .end annotation
.end field

.field private final mTypeFakeControlTargetMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/wm/InsetsControlTarget;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/server/wm/DisplayContent;)V
    .locals 1
    .param p1, "displayContent"    # Lcom/android/server/wm/DisplayContent;

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Landroid/view/InsetsState;

    invoke-direct {v0}, Landroid/view/InsetsState;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mLastState:Landroid/view/InsetsState;

    .line 67
    new-instance v0, Landroid/view/InsetsState;

    invoke-direct {v0}, Landroid/view/InsetsState;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mState:Landroid/view/InsetsState;

    .line 70
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mProviders:Landroid/util/ArrayMap;

    .line 71
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mControlTargetTypeMap:Landroid/util/ArrayMap;

    .line 73
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mTypeControlTargetMap:Landroid/util/SparseArray;

    .line 76
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mTypeFakeControlTargetMap:Landroid/util/SparseArray;

    .line 78
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mPendingControlChanged:Landroid/util/ArraySet;

    .line 80
    sget-object v0, Lcom/android/server/wm/InsetsStateController$$ExternalSyntheticLambda3;->INSTANCE:Lcom/android/server/wm/InsetsStateController$$ExternalSyntheticLambda3;

    iput-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mDispatchInsetsChanged:Ljava/util/function/Consumer;

    .line 85
    new-instance v0, Lcom/android/server/wm/InsetsStateController$1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/InsetsStateController$1;-><init>(Lcom/android/server/wm/InsetsStateController;)V

    iput-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mEmptyImeControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    .line 102
    iput-object p1, p0, Lcom/android/server/wm/InsetsStateController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 103
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/InsetsStateController;)Lcom/android/server/wm/DisplayContent;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/InsetsStateController;

    .line 64
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    return-object v0
.end method

.method private addToControlMaps(Lcom/android/server/wm/InsetsControlTarget;IZ)V
    .locals 2
    .param p1, "target"    # Lcom/android/server/wm/InsetsControlTarget;
    .param p2, "type"    # I
    .param p3, "fake"    # Z

    .line 525
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mControlTargetTypeMap:Landroid/util/ArrayMap;

    sget-object v1, Lcom/android/server/wm/InsetsStateController$$ExternalSyntheticLambda6;->INSTANCE:Lcom/android/server/wm/InsetsStateController$$ExternalSyntheticLambda6;

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 527
    .local v0, "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 528
    if-eqz p3, :cond_0

    .line 529
    iget-object v1, p0, Lcom/android/server/wm/InsetsStateController;->mTypeFakeControlTargetMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 531
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/InsetsStateController;->mTypeControlTargetMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 533
    :goto_0
    return-void
.end method

.method private getInsetsForTarget(IIZLandroid/view/InsetsState;)Landroid/view/InsetsState;
    .locals 10
    .param p1, "type"    # I
    .param p2, "windowingMode"    # I
    .param p3, "isAlwaysOnTop"    # Z
    .param p4, "state"    # Landroid/view/InsetsState;

    .line 180
    const/4 v0, 0x0

    .line 182
    .local v0, "stateCopied":Z
    const/4 v1, 0x0

    const/4 v2, -0x1

    const/16 v3, 0x15

    const/4 v4, 0x2

    const/16 v5, 0x13

    const/4 v6, 0x1

    if-eq p1, v2, :cond_5

    .line 183
    new-instance v2, Landroid/view/InsetsState;

    invoke-direct {v2, p4}, Landroid/view/InsetsState;-><init>(Landroid/view/InsetsState;)V

    move-object p4, v2

    .line 184
    const/4 v0, 0x1

    .line 185
    invoke-virtual {p4, p1}, Landroid/view/InsetsState;->removeSource(I)Z

    .line 188
    const/16 v2, 0x14

    if-eq p1, v6, :cond_0

    if-ne p1, v3, :cond_1

    .line 189
    :cond_0
    invoke-virtual {p4, v5}, Landroid/view/InsetsState;->removeSource(I)Z

    .line 190
    invoke-virtual {p4, v1}, Landroid/view/InsetsState;->removeSource(I)Z

    .line 191
    invoke-virtual {p4, v2}, Landroid/view/InsetsState;->removeSource(I)Z

    .line 192
    invoke-virtual {p4, v4}, Landroid/view/InsetsState;->removeSource(I)Z

    .line 193
    invoke-virtual {p4, v6}, Landroid/view/InsetsState;->removeSource(I)Z

    .line 194
    invoke-virtual {p4, v3}, Landroid/view/InsetsState;->removeSource(I)Z

    .line 198
    :cond_1
    if-eqz p1, :cond_2

    if-ne p1, v2, :cond_3

    .line 199
    :cond_2
    invoke-virtual {p4, v4}, Landroid/view/InsetsState;->removeSource(I)Z

    .line 203
    :cond_3
    if-ne p1, v5, :cond_5

    .line 204
    iget-object v2, p0, Lcom/android/server/wm/InsetsStateController;->mProviders:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    sub-int/2addr v2, v6

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_5

    .line 205
    iget-object v7, p0, Lcom/android/server/wm/InsetsStateController;->mProviders:Landroid/util/ArrayMap;

    invoke-virtual {v7, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/InsetsSourceProvider;

    .line 206
    .local v7, "otherProvider":Lcom/android/server/wm/InsetsSourceProvider;
    invoke-virtual {v7}, Lcom/android/server/wm/InsetsSourceProvider;->overridesImeFrame()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 207
    new-instance v8, Landroid/view/InsetsSource;

    .line 209
    invoke-virtual {v7}, Lcom/android/server/wm/InsetsSourceProvider;->getSource()Landroid/view/InsetsSource;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/InsetsSource;->getType()I

    move-result v9

    invoke-virtual {p4, v9}, Landroid/view/InsetsState;->getSource(I)Landroid/view/InsetsSource;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/view/InsetsSource;-><init>(Landroid/view/InsetsSource;)V

    .line 210
    .local v8, "override":Landroid/view/InsetsSource;
    invoke-virtual {v7}, Lcom/android/server/wm/InsetsSourceProvider;->getImeOverrideFrame()Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/view/InsetsSource;->setFrame(Landroid/graphics/Rect;)V

    .line 211
    invoke-virtual {p4, v8}, Landroid/view/InsetsState;->addSource(Landroid/view/InsetsSource;)V

    .line 204
    .end local v7    # "otherProvider":Lcom/android/server/wm/InsetsSourceProvider;
    .end local v8    # "override":Landroid/view/InsetsSource;
    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 217
    .end local v2    # "i":I
    :cond_5
    invoke-static {p2}, Landroid/app/WindowConfiguration;->isFloating(I)Z

    move-result v2

    if-nez v2, :cond_6

    const/4 v2, 0x6

    if-ne p2, v2, :cond_8

    if-eqz p3, :cond_8

    .line 219
    :cond_6
    if-nez v0, :cond_7

    .line 220
    new-instance v2, Landroid/view/InsetsState;

    invoke-direct {v2, p4}, Landroid/view/InsetsState;-><init>(Landroid/view/InsetsState;)V

    move-object p4, v2

    .line 221
    const/4 v0, 0x1

    .line 223
    :cond_7
    invoke-virtual {p4, v1}, Landroid/view/InsetsState;->removeSource(I)Z

    .line 224
    invoke-virtual {p4, v6}, Landroid/view/InsetsState;->removeSource(I)Z

    .line 225
    invoke-virtual {p4, v3}, Landroid/view/InsetsState;->removeSource(I)Z

    .line 226
    if-ne p2, v4, :cond_8

    .line 227
    invoke-virtual {p4, v5}, Landroid/view/InsetsState;->removeSource(I)Z

    .line 231
    :cond_8
    return-object p4
.end method

.method private static getInsetsTypeForLayoutParams(Landroid/view/WindowManager$LayoutParams;)I
    .locals 5
    .param p0, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .line 148
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 149
    .local v0, "type":I
    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_0

    .line 159
    iget-object v2, p0, Landroid/view/WindowManager$LayoutParams;->providesInsetsTypes:[I

    if-eqz v2, :cond_0

    .line 160
    iget-object v2, p0, Landroid/view/WindowManager$LayoutParams;->providesInsetsTypes:[I

    array-length v3, v2

    goto :goto_0

    .line 153
    :sswitch_0
    const/4 v1, 0x1

    return v1

    .line 155
    :sswitch_1
    const/16 v1, 0x13

    return v1

    .line 151
    :sswitch_2
    return v1

    .line 160
    :goto_0
    if-ge v1, v3, :cond_0

    aget v4, v2, v1

    .line 161
    .local v4, "insetsType":I
    sparse-switch v4, :sswitch_data_1

    .line 160
    .end local v4    # "insetsType":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 166
    .restart local v4    # "insetsType":I
    :sswitch_3
    return v4

    .line 171
    .end local v4    # "insetsType":I
    :cond_0
    const/4 v1, -0x1

    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x7d0 -> :sswitch_2
        0x7db -> :sswitch_1
        0x7e3 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_3
        0x1 -> :sswitch_3
        0x14 -> :sswitch_3
        0x15 -> :sswitch_3
    .end sparse-switch
.end method

.method static synthetic lambda$addToControlMaps$5(Lcom/android/server/wm/InsetsControlTarget;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "key"    # Lcom/android/server/wm/InsetsControlTarget;

    .line 526
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method static synthetic lambda$new$0(Lcom/android/server/wm/WindowState;)V
    .locals 1
    .param p0, "w"    # Lcom/android/server/wm/WindowState;

    .line 81
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isReadyToDispatchInsetsState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->notifyInsetsChanged()V

    .line 84
    :cond_0
    return-void
.end method

.method static synthetic lambda$updateAboveInsetsState$3([ZLcom/android/server/wm/WindowState;Landroid/view/InsetsState;Ljava/util/ArrayList;Landroid/util/SparseArray;Lcom/android/server/wm/WindowState;)Z
    .locals 6
    .param p0, "aboveWin"    # [Z
    .param p1, "win"    # Lcom/android/server/wm/WindowState;
    .param p2, "aboveInsetsState"    # Landroid/view/InsetsState;
    .param p3, "insetsChangedWindows"    # Ljava/util/ArrayList;
    .param p4, "winProvidedSources"    # Landroid/util/SparseArray;
    .param p5, "w"    # Lcom/android/server/wm/WindowState;

    .line 328
    const/4 v0, 0x0

    aget-boolean v1, p0, v0

    const/4 v2, 0x1

    if-eqz v1, :cond_7

    .line 329
    if-ne p5, p1, :cond_2

    .line 330
    aput-boolean v0, p0, v0

    .line 331
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAboveInsetsState:Landroid/view/InsetsState;

    invoke-virtual {v1, p2}, Landroid/view/InsetsState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 332
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAboveInsetsState:Landroid/view/InsetsState;

    invoke-virtual {v1, p2}, Landroid/view/InsetsState;->set(Landroid/view/InsetsState;)V

    .line 333
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 335
    :cond_0
    invoke-virtual {p4}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-nez v1, :cond_1

    move v0, v2

    :cond_1
    return v0

    .line 337
    :cond_2
    iget-object v1, p5, Lcom/android/server/wm/WindowState;->mProvidedInsetsSources:Landroid/util/SparseArray;

    .line 338
    .local v1, "providedSources":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/InsetsSource;>;"
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v3

    sub-int/2addr v3, v2

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_3

    .line 339
    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/InsetsSource;

    invoke-virtual {p2, v4}, Landroid/view/InsetsState;->addSource(Landroid/view/InsetsSource;)V

    .line 338
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 341
    .end local v3    # "i":I
    :cond_3
    invoke-virtual {p4}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-nez v3, :cond_4

    .line 342
    return v0

    .line 344
    :cond_4
    const/4 v3, 0x0

    .line 345
    .local v3, "changed":Z
    invoke-virtual {p4}, Landroid/util/SparseArray;->size()I

    move-result v4

    sub-int/2addr v4, v2

    .local v4, "i":I
    :goto_1
    if-ltz v4, :cond_5

    .line 346
    iget-object v2, p5, Lcom/android/server/wm/WindowState;->mAboveInsetsState:Landroid/view/InsetsState;

    invoke-virtual {p4, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/view/InsetsState;->removeSource(I)Z

    move-result v2

    or-int/2addr v3, v2

    .line 345
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 348
    .end local v4    # "i":I
    :cond_5
    if-eqz v3, :cond_6

    .line 349
    invoke-virtual {p3, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 351
    .end local v1    # "providedSources":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/InsetsSource;>;"
    .end local v3    # "changed":Z
    :cond_6
    goto :goto_3

    .line 353
    :cond_7
    invoke-virtual {p4}, Landroid/util/SparseArray;->size()I

    move-result v1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_2
    if-ltz v1, :cond_8

    .line 354
    iget-object v2, p5, Lcom/android/server/wm/WindowState;->mAboveInsetsState:Landroid/view/InsetsState;

    invoke-virtual {p4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/InsetsSource;

    invoke-virtual {v2, v3}, Landroid/view/InsetsState;->addSource(Landroid/view/InsetsSource;)V

    .line 353
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 356
    .end local v1    # "i":I
    :cond_8
    invoke-virtual {p3, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 358
    :goto_3
    return v0
.end method

.method private notifyPendingInsetsControlChanged()V
    .locals 2

    .line 541
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mPendingControlChanged:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 542
    return-void

    .line 544
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    new-instance v1, Lcom/android/server/wm/InsetsStateController$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/wm/InsetsStateController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/InsetsStateController;)V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowAnimator;->addAfterPrepareSurfacesRunnable(Ljava/lang/Runnable;)V

    .line 568
    return-void
.end method

.method private onControlChanged(ILcom/android/server/wm/InsetsControlTarget;)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "target"    # Lcom/android/server/wm/InsetsControlTarget;

    .line 456
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mTypeControlTargetMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/InsetsControlTarget;

    .line 457
    .local v0, "previous":Lcom/android/server/wm/InsetsControlTarget;
    if-ne p2, v0, :cond_0

    .line 458
    return-void

    .line 460
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/InsetsStateController;->mProviders:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/InsetsSourceProvider;

    .line 461
    .local v1, "provider":Lcom/android/server/wm/InsetsSourceProvider;
    if-nez v1, :cond_1

    .line 462
    return-void

    .line 464
    :cond_1
    invoke-virtual {v1}, Lcom/android/server/wm/InsetsSourceProvider;->isControllable()Z

    move-result v2

    if-nez v2, :cond_2

    .line 465
    return-void

    .line 467
    :cond_2
    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2}, Lcom/android/server/wm/InsetsSourceProvider;->updateControlForTarget(Lcom/android/server/wm/InsetsControlTarget;Z)V

    .line 468
    invoke-virtual {v1}, Lcom/android/server/wm/InsetsSourceProvider;->getControlTarget()Lcom/android/server/wm/InsetsControlTarget;

    move-result-object p2

    .line 469
    if-eqz v0, :cond_3

    .line 470
    invoke-direct {p0, v0, p1, v2}, Lcom/android/server/wm/InsetsStateController;->removeFromControlMaps(Lcom/android/server/wm/InsetsControlTarget;IZ)V

    .line 471
    iget-object v3, p0, Lcom/android/server/wm/InsetsStateController;->mPendingControlChanged:Landroid/util/ArraySet;

    invoke-virtual {v3, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 473
    :cond_3
    if-eqz p2, :cond_4

    .line 474
    invoke-direct {p0, p2, p1, v2}, Lcom/android/server/wm/InsetsStateController;->addToControlMaps(Lcom/android/server/wm/InsetsControlTarget;IZ)V

    .line 475
    iget-object v2, p0, Lcom/android/server/wm/InsetsStateController;->mPendingControlChanged:Landroid/util/ArraySet;

    invoke-virtual {v2, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 477
    :cond_4
    return-void
.end method

.method private removeFromControlMaps(Lcom/android/server/wm/InsetsControlTarget;IZ)V
    .locals 2
    .param p1, "target"    # Lcom/android/server/wm/InsetsControlTarget;
    .param p2, "type"    # I
    .param p3, "fake"    # Z

    .line 508
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mControlTargetTypeMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 509
    .local v0, "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-nez v0, :cond_0

    .line 510
    return-void

    .line 512
    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 513
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 514
    iget-object v1, p0, Lcom/android/server/wm/InsetsStateController;->mControlTargetTypeMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 516
    :cond_1
    if-eqz p3, :cond_2

    .line 517
    iget-object v1, p0, Lcom/android/server/wm/InsetsStateController;->mTypeFakeControlTargetMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_0

    .line 519
    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/InsetsStateController;->mTypeControlTargetMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 521
    :goto_0
    return-void
.end method


# virtual methods
.method public addProvidersToTransition()V
    .locals 4

    .line 252
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mProviders:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 253
    iget-object v1, p0, Lcom/android/server/wm/InsetsStateController;->mProviders:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/InsetsSourceProvider;

    .line 254
    .local v1, "p":Lcom/android/server/wm/InsetsSourceProvider;
    if-nez v1, :cond_0

    goto :goto_1

    .line 255
    :cond_0
    iget-object v2, v1, Lcom/android/server/wm/InsetsSourceProvider;->mWin:Lcom/android/server/wm/WindowState;

    .line 256
    .local v2, "wc":Lcom/android/server/wm/WindowContainer;
    if-nez v2, :cond_1

    goto :goto_1

    .line 257
    :cond_1
    iget-object v3, p0, Lcom/android/server/wm/InsetsStateController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v3, v3, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->getTransitionController()Lcom/android/server/wm/TransitionController;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/server/wm/TransitionController;->collect(Lcom/android/server/wm/WindowContainer;)V

    .line 252
    .end local v1    # "p":Lcom/android/server/wm/InsetsSourceProvider;
    .end local v2    # "wc":Lcom/android/server/wm/WindowContainer;
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 259
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method computeSimulatedState(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/DisplayFrames;Lcom/android/server/wm/WindowFrames;)V
    .locals 4
    .param p1, "win"    # Lcom/android/server/wm/WindowState;
    .param p2, "displayFrames"    # Lcom/android/server/wm/DisplayFrames;
    .param p3, "windowFrames"    # Lcom/android/server/wm/WindowFrames;

    .line 401
    iget-object v0, p2, Lcom/android/server/wm/DisplayFrames;->mInsetsState:Landroid/view/InsetsState;

    .line 402
    .local v0, "state":Landroid/view/InsetsState;
    iget-object v1, p0, Lcom/android/server/wm/InsetsStateController;->mProviders:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 403
    iget-object v2, p0, Lcom/android/server/wm/InsetsStateController;->mProviders:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/InsetsSourceProvider;

    .line 404
    .local v2, "provider":Lcom/android/server/wm/InsetsSourceProvider;
    iget-object v3, v2, Lcom/android/server/wm/InsetsSourceProvider;->mWin:Lcom/android/server/wm/WindowState;

    if-ne v3, p1, :cond_0

    .line 405
    invoke-virtual {v2, p2, p3}, Lcom/android/server/wm/InsetsSourceProvider;->createSimulatedSource(Lcom/android/server/wm/DisplayFrames;Lcom/android/server/wm/WindowFrames;)Landroid/view/InsetsSource;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/InsetsState;->addSource(Landroid/view/InsetsSource;)V

    .line 402
    .end local v2    # "provider":Lcom/android/server/wm/InsetsSourceProvider;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 408
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 575
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "WindowInsetsStateController"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 576
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 577
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mState:Landroid/view/InsetsState;

    invoke-virtual {v0, p1, p2}, Landroid/view/InsetsState;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 578
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Control map:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 579
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mTypeControlTargetMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 580
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 581
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/wm/InsetsStateController;->mTypeControlTargetMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-static {v3}, Landroid/view/InsetsState;->typeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/InsetsStateController;->mTypeControlTargetMap:Landroid/util/SparseArray;

    .line 582
    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 581
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 579
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 584
    .end local v0    # "i":I
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "InsetsSourceProviders:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 585
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mProviders:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .restart local v0    # "i":I
    :goto_1
    if-ltz v0, :cond_1

    .line 586
    iget-object v2, p0, Lcom/android/server/wm/InsetsStateController;->mProviders:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/InsetsSourceProvider;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p2, v3}, Lcom/android/server/wm/InsetsSourceProvider;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 585
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 588
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method getControlsForDispatch(Lcom/android/server/wm/InsetsControlTarget;)[Landroid/view/InsetsSourceControl;
    .locals 6
    .param p1, "target"    # Lcom/android/server/wm/InsetsControlTarget;

    .line 239
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mControlTargetTypeMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 240
    .local v0, "controlled":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-nez v0, :cond_0

    .line 241
    const/4 v1, 0x0

    return-object v1

    .line 243
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 244
    .local v1, "size":I
    new-array v2, v1, [Landroid/view/InsetsSourceControl;

    .line 245
    .local v2, "result":[Landroid/view/InsetsSourceControl;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 246
    iget-object v4, p0, Lcom/android/server/wm/InsetsStateController;->mProviders:Landroid/util/ArrayMap;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/InsetsSourceProvider;

    invoke-virtual {v4, p1}, Lcom/android/server/wm/InsetsSourceProvider;->getControl(Lcom/android/server/wm/InsetsControlTarget;)Landroid/view/InsetsSourceControl;

    move-result-object v4

    aput-object v4, v2, v3

    .line 245
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 248
    .end local v3    # "i":I
    :cond_1
    return-object v2
.end method

.method getImeSourceProvider()Lcom/android/server/wm/ImeInsetsSourceProvider;
    .locals 1

    .line 276
    const/16 v0, 0x13

    invoke-virtual {p0, v0}, Lcom/android/server/wm/InsetsStateController;->getSourceProvider(I)Lcom/android/server/wm/InsetsSourceProvider;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ImeInsetsSourceProvider;

    return-object v0
.end method

.method getInsetsForWindow(Lcom/android/server/wm/WindowState;)Landroid/view/InsetsState;
    .locals 6
    .param p1, "target"    # Lcom/android/server/wm/WindowState;

    .line 118
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowToken;->getFixedRotationTransformInsetsState()Landroid/view/InsetsState;

    move-result-object v0

    .line 119
    .local v0, "rotatedState":Landroid/view/InsetsState;
    if-eqz v0, :cond_0

    .line 120
    return-object v0

    .line 122
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getControllableInsetProvider()Lcom/android/server/wm/InsetsSourceProvider;

    move-result-object v1

    .line 123
    .local v1, "provider":Lcom/android/server/wm/InsetsSourceProvider;
    if-eqz v1, :cond_1

    .line 124
    invoke-virtual {v1}, Lcom/android/server/wm/InsetsSourceProvider;->getSource()Landroid/view/InsetsSource;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/InsetsSource;->getType()I

    move-result v2

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    .line 125
    .local v2, "type":I
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getWindowingMode()I

    move-result v3

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isAlwaysOnTop()Z

    move-result v4

    .line 126
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getFrozenInsetsState()Landroid/view/InsetsState;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getFrozenInsetsState()Landroid/view/InsetsState;

    move-result-object v5

    goto :goto_1

    .line 127
    :cond_2
    iget-object v5, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-boolean v5, v5, Landroid/view/WindowManager$LayoutParams;->receiveInsetsIgnoringZOrder:Z

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/server/wm/InsetsStateController;->mState:Landroid/view/InsetsState;

    goto :goto_1

    .line 128
    :cond_3
    iget-object v5, p1, Lcom/android/server/wm/WindowState;->mAboveInsetsState:Landroid/view/InsetsState;

    .line 125
    :goto_1
    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/server/wm/InsetsStateController;->getInsetsForTarget(IIZLandroid/view/InsetsState;)Landroid/view/InsetsState;

    move-result-object v3

    return-object v3
.end method

.method getInsetsForWindowMetrics(Landroid/view/WindowManager$LayoutParams;)Landroid/view/InsetsState;
    .locals 5
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .line 132
    invoke-static {p1}, Lcom/android/server/wm/InsetsStateController;->getInsetsTypeForLayoutParams(Landroid/view/WindowManager$LayoutParams;)I

    move-result v0

    .line 133
    .local v0, "type":I
    iget-object v1, p0, Lcom/android/server/wm/InsetsStateController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, p1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/DisplayContent;->getWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/WindowToken;

    move-result-object v1

    .line 134
    .local v1, "token":Lcom/android/server/wm/WindowToken;
    if-eqz v1, :cond_0

    .line 135
    invoke-virtual {v1}, Lcom/android/server/wm/WindowToken;->getFixedRotationTransformInsetsState()Landroid/view/InsetsState;

    move-result-object v2

    .line 136
    .local v2, "rotatedState":Landroid/view/InsetsState;
    if-eqz v2, :cond_0

    .line 137
    return-object v2

    .line 140
    .end local v2    # "rotatedState":Landroid/view/InsetsState;
    :cond_0
    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 141
    invoke-virtual {v1}, Lcom/android/server/wm/WindowToken;->getWindowingMode()I

    move-result v3

    goto :goto_0

    :cond_1
    move v3, v2

    .line 142
    .local v3, "windowingMode":I
    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/server/wm/WindowToken;->isAlwaysOnTop()Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v2, 0x1

    .line 143
    .local v2, "alwaysOnTop":Z
    :cond_2
    iget-object v4, p0, Lcom/android/server/wm/InsetsStateController;->mState:Landroid/view/InsetsState;

    invoke-direct {p0, v0, v3, v2, v4}, Lcom/android/server/wm/InsetsStateController;->getInsetsForTarget(IIZLandroid/view/InsetsState;)Landroid/view/InsetsState;

    move-result-object v4

    return-object v4
.end method

.method getRawInsetsState()Landroid/view/InsetsState;
    .locals 1

    .line 235
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mState:Landroid/view/InsetsState;

    return-object v0
.end method

.method getSourceProvider(I)Lcom/android/server/wm/InsetsSourceProvider;
    .locals 3
    .param p1, "type"    # I

    .line 265
    const/16 v0, 0x13

    if-ne p1, v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mProviders:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/server/wm/InsetsStateController$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0}, Lcom/android/server/wm/InsetsStateController$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/wm/InsetsStateController;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/InsetsSourceProvider;

    return-object v0

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mProviders:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/server/wm/InsetsStateController$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0}, Lcom/android/server/wm/InsetsStateController$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/wm/InsetsStateController;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/InsetsSourceProvider;

    return-object v0
.end method

.method isFakeTarget(ILcom/android/server/wm/InsetsControlTarget;)Z
    .locals 1
    .param p1, "type"    # I
    .param p2, "target"    # Lcom/android/server/wm/InsetsControlTarget;

    .line 411
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mTypeFakeControlTargetMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public synthetic lambda$getSourceProvider$1$InsetsStateController(Ljava/lang/Integer;)Lcom/android/server/wm/InsetsSourceProvider;
    .locals 3
    .param p1, "key"    # Ljava/lang/Integer;

    .line 267
    new-instance v0, Lcom/android/server/wm/ImeInsetsSourceProvider;

    iget-object v1, p0, Lcom/android/server/wm/InsetsStateController;->mState:Landroid/view/InsetsState;

    .line 268
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/InsetsState;->getSource(I)Landroid/view/InsetsSource;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/InsetsStateController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-direct {v0, v1, p0, v2}, Lcom/android/server/wm/ImeInsetsSourceProvider;-><init>(Landroid/view/InsetsSource;Lcom/android/server/wm/InsetsStateController;Lcom/android/server/wm/DisplayContent;)V

    .line 267
    return-object v0
.end method

.method public synthetic lambda$getSourceProvider$2$InsetsStateController(Ljava/lang/Integer;)Lcom/android/server/wm/InsetsSourceProvider;
    .locals 3
    .param p1, "key"    # Ljava/lang/Integer;

    .line 271
    new-instance v0, Lcom/android/server/wm/InsetsSourceProvider;

    iget-object v1, p0, Lcom/android/server/wm/InsetsStateController;->mState:Landroid/view/InsetsState;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/InsetsState;->getSource(I)Landroid/view/InsetsSource;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/InsetsStateController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-direct {v0, v1, p0, v2}, Lcom/android/server/wm/InsetsSourceProvider;-><init>(Landroid/view/InsetsSource;Lcom/android/server/wm/InsetsStateController;Lcom/android/server/wm/DisplayContent;)V

    return-object v0
.end method

.method public synthetic lambda$notifyPendingInsetsControlChanged$6$InsetsStateController()V
    .locals 4

    .line 545
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mProviders:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 546
    iget-object v1, p0, Lcom/android/server/wm/InsetsStateController;->mProviders:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/InsetsSourceProvider;

    .line 547
    .local v1, "provider":Lcom/android/server/wm/InsetsSourceProvider;
    invoke-virtual {v1}, Lcom/android/server/wm/InsetsSourceProvider;->onSurfaceTransactionApplied()V

    .line 545
    .end local v1    # "provider":Lcom/android/server/wm/InsetsSourceProvider;
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 549
    .end local v0    # "i":I
    :cond_0
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 550
    .local v0, "newControlTargets":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/InsetsControlTarget;>;"
    iget-object v1, p0, Lcom/android/server/wm/InsetsStateController;->mPendingControlChanged:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_2

    .line 551
    iget-object v2, p0, Lcom/android/server/wm/InsetsStateController;->mPendingControlChanged:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/InsetsControlTarget;

    .line 552
    .local v2, "controlTarget":Lcom/android/server/wm/InsetsControlTarget;
    invoke-interface {v2}, Lcom/android/server/wm/InsetsControlTarget;->notifyInsetsControlChanged()V

    .line 553
    iget-object v3, p0, Lcom/android/server/wm/InsetsStateController;->mControlTargetTypeMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 555
    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 550
    .end local v2    # "controlTarget":Lcom/android/server/wm/InsetsControlTarget;
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 558
    .end local v1    # "i":I
    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/InsetsStateController;->mPendingControlChanged:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    .line 563
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .restart local v1    # "i":I
    :goto_2
    if-ltz v1, :cond_3

    .line 564
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/InsetsControlTarget;

    invoke-virtual {p0, v2}, Lcom/android/server/wm/InsetsStateController;->onInsetsModified(Lcom/android/server/wm/InsetsControlTarget;)V

    .line 563
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 566
    .end local v1    # "i":I
    :cond_3
    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 567
    return-void
.end method

.method public synthetic lambda$onDisplayInfoUpdated$4$InsetsStateController(Ljava/util/ArrayList;Lcom/android/server/wm/WindowState;)V
    .locals 3
    .param p1, "insetsChangedWindows"    # Ljava/util/ArrayList;
    .param p2, "w"    # Lcom/android/server/wm/WindowState;

    .line 370
    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mAboveInsetsState:Landroid/view/InsetsState;

    iget-object v1, p0, Lcom/android/server/wm/InsetsStateController;->mState:Landroid/view/InsetsState;

    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/InsetsState;->set(Landroid/view/InsetsState;I)V

    .line 371
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 372
    return-void
.end method

.method notifyControlChanged(Lcom/android/server/wm/InsetsControlTarget;)V
    .locals 1
    .param p1, "target"    # Lcom/android/server/wm/InsetsControlTarget;

    .line 536
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mPendingControlChanged:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 537
    invoke-direct {p0}, Lcom/android/server/wm/InsetsStateController;->notifyPendingInsetsControlChanged()V

    .line 538
    return-void
.end method

.method notifyControlRevoked(Lcom/android/server/wm/InsetsControlTarget;Lcom/android/server/wm/InsetsSourceProvider;)V
    .locals 2
    .param p1, "previousControlTarget"    # Lcom/android/server/wm/InsetsControlTarget;
    .param p2, "provider"    # Lcom/android/server/wm/InsetsSourceProvider;

    .line 450
    invoke-virtual {p2}, Lcom/android/server/wm/InsetsSourceProvider;->getSource()Landroid/view/InsetsSource;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/InsetsSource;->getType()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/wm/InsetsStateController;->removeFromControlMaps(Lcom/android/server/wm/InsetsControlTarget;IZ)V

    .line 452
    return-void
.end method

.method notifyInsetsChanged()V
    .locals 2

    .line 571
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, p0, Lcom/android/server/wm/InsetsStateController;->mDispatchInsetsChanged:Ljava/util/function/Consumer;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayContent;->notifyInsetsChanged(Ljava/util/function/Consumer;)V

    .line 572
    return-void
.end method

.method onBarControlTargetChanged(Lcom/android/server/wm/InsetsControlTarget;Lcom/android/server/wm/InsetsControlTarget;Lcom/android/server/wm/InsetsControlTarget;Lcom/android/server/wm/InsetsControlTarget;)V
    .locals 4
    .param p1, "statusControlling"    # Lcom/android/server/wm/InsetsControlTarget;
    .param p2, "fakeStatusControlling"    # Lcom/android/server/wm/InsetsControlTarget;
    .param p3, "navControlling"    # Lcom/android/server/wm/InsetsControlTarget;
    .param p4, "fakeNavControlling"    # Lcom/android/server/wm/InsetsControlTarget;

    .line 437
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/android/server/wm/InsetsStateController;->onControlChanged(ILcom/android/server/wm/InsetsControlTarget;)V

    .line 438
    const/4 v1, 0x1

    invoke-direct {p0, v1, p3}, Lcom/android/server/wm/InsetsStateController;->onControlChanged(ILcom/android/server/wm/InsetsControlTarget;)V

    .line 439
    const/16 v2, 0x14

    invoke-direct {p0, v2, p1}, Lcom/android/server/wm/InsetsStateController;->onControlChanged(ILcom/android/server/wm/InsetsControlTarget;)V

    .line 440
    const/16 v3, 0x15

    invoke-direct {p0, v3, p3}, Lcom/android/server/wm/InsetsStateController;->onControlChanged(ILcom/android/server/wm/InsetsControlTarget;)V

    .line 441
    invoke-virtual {p0, v0, p2}, Lcom/android/server/wm/InsetsStateController;->onControlFakeTargetChanged(ILcom/android/server/wm/InsetsControlTarget;)V

    .line 442
    invoke-virtual {p0, v1, p4}, Lcom/android/server/wm/InsetsStateController;->onControlFakeTargetChanged(ILcom/android/server/wm/InsetsControlTarget;)V

    .line 443
    invoke-virtual {p0, v2, p2}, Lcom/android/server/wm/InsetsStateController;->onControlFakeTargetChanged(ILcom/android/server/wm/InsetsControlTarget;)V

    .line 444
    invoke-virtual {p0, v3, p4}, Lcom/android/server/wm/InsetsStateController;->onControlFakeTargetChanged(ILcom/android/server/wm/InsetsControlTarget;)V

    .line 445
    invoke-direct {p0}, Lcom/android/server/wm/InsetsStateController;->notifyPendingInsetsControlChanged()V

    .line 446
    return-void
.end method

.method onControlFakeTargetChanged(ILcom/android/server/wm/InsetsControlTarget;)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "fakeTarget"    # Lcom/android/server/wm/InsetsControlTarget;

    .line 487
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mTypeFakeControlTargetMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/InsetsControlTarget;

    .line 488
    .local v0, "previous":Lcom/android/server/wm/InsetsControlTarget;
    if-ne p2, v0, :cond_0

    .line 489
    return-void

    .line 491
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/InsetsStateController;->mProviders:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/InsetsSourceProvider;

    .line 492
    .local v1, "provider":Lcom/android/server/wm/InsetsSourceProvider;
    if-nez v1, :cond_1

    .line 493
    return-void

    .line 495
    :cond_1
    invoke-virtual {v1, p2}, Lcom/android/server/wm/InsetsSourceProvider;->updateControlForFakeTarget(Lcom/android/server/wm/InsetsControlTarget;)V

    .line 496
    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 497
    invoke-direct {p0, v0, p1, v2}, Lcom/android/server/wm/InsetsStateController;->removeFromControlMaps(Lcom/android/server/wm/InsetsControlTarget;IZ)V

    .line 498
    iget-object v3, p0, Lcom/android/server/wm/InsetsStateController;->mPendingControlChanged:Landroid/util/ArraySet;

    invoke-virtual {v3, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 500
    :cond_2
    if-eqz p2, :cond_3

    .line 501
    invoke-direct {p0, p2, p1, v2}, Lcom/android/server/wm/InsetsStateController;->addToControlMaps(Lcom/android/server/wm/InsetsControlTarget;IZ)V

    .line 502
    iget-object v2, p0, Lcom/android/server/wm/InsetsStateController;->mPendingControlChanged:Landroid/util/ArraySet;

    invoke-virtual {v2, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 504
    :cond_3
    return-void
.end method

.method onDisplayInfoUpdated(Z)V
    .locals 4
    .param p1, "notifyInsetsChange"    # Z

    .line 368
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 369
    .local v0, "insetsChangedWindows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    iget-object v1, p0, Lcom/android/server/wm/InsetsStateController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    new-instance v2, Lcom/android/server/wm/InsetsStateController$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, v0}, Lcom/android/server/wm/InsetsStateController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/InsetsStateController;Ljava/util/ArrayList;)V

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 373
    if-eqz p1, :cond_0

    .line 374
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v3

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 375
    iget-object v2, p0, Lcom/android/server/wm/InsetsStateController;->mDispatchInsetsChanged:Ljava/util/function/Consumer;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    invoke-interface {v2, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 374
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 378
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method onImeControlTargetChanged(Lcom/android/server/wm/InsetsControlTarget;)V
    .locals 7
    .param p1, "imeTarget"    # Lcom/android/server/wm/InsetsControlTarget;

    .line 418
    if-eqz p1, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mEmptyImeControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    .line 419
    .local v0, "target":Lcom/android/server/wm/InsetsControlTarget;
    :goto_0
    const/16 v1, 0x13

    invoke-direct {p0, v1, v0}, Lcom/android/server/wm/InsetsStateController;->onControlChanged(ILcom/android/server/wm/InsetsControlTarget;)V

    .line 420
    sget-boolean v1, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_IME_enabled:Z

    if-eqz v1, :cond_2

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v1

    goto :goto_1

    :cond_1
    const-string v1, "null"

    :goto_1
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .local v1, "protoLogParam0":Ljava/lang/String;
    sget-object v2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_IME:Lcom/android/internal/protolog/ProtoLogGroup;

    const v3, 0x62dc4f45

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-static {v2, v3, v6, v4, v5}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 422
    .end local v1    # "protoLogParam0":Ljava/lang/String;
    :cond_2
    invoke-direct {p0}, Lcom/android/server/wm/InsetsStateController;->notifyPendingInsetsControlChanged()V

    .line 423
    return-void
.end method

.method onInsetsModified(Lcom/android/server/wm/InsetsControlTarget;)V
    .locals 3
    .param p1, "caller"    # Lcom/android/server/wm/InsetsControlTarget;

    .line 381
    const/4 v0, 0x0

    .line 382
    .local v0, "changed":Z
    iget-object v1, p0, Lcom/android/server/wm/InsetsStateController;->mProviders:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 383
    iget-object v2, p0, Lcom/android/server/wm/InsetsStateController;->mProviders:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/InsetsSourceProvider;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/InsetsSourceProvider;->updateClientVisibility(Lcom/android/server/wm/InsetsControlTarget;)Z

    move-result v2

    or-int/2addr v0, v2

    .line 382
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 385
    .end local v1    # "i":I
    :cond_0
    if-eqz v0, :cond_1

    .line 386
    invoke-virtual {p0}, Lcom/android/server/wm/InsetsStateController;->notifyInsetsChanged()V

    .line 387
    iget-object v1, p0, Lcom/android/server/wm/InsetsStateController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->updateSystemGestureExclusion()Z

    .line 388
    iget-object v1, p0, Lcom/android/server/wm/InsetsStateController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayPolicy;->updateSystemUiVisibilityLw()Z

    .line 390
    :cond_1
    return-void
.end method

.method onPostLayout()V
    .locals 6

    .line 290
    const-wide/16 v0, 0x20

    const-string v2, "ISC.onPostLayout"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 291
    iget-object v2, p0, Lcom/android/server/wm/InsetsStateController;->mProviders:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_0

    .line 292
    iget-object v4, p0, Lcom/android/server/wm/InsetsStateController;->mProviders:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/InsetsSourceProvider;

    invoke-virtual {v4}, Lcom/android/server/wm/InsetsSourceProvider;->onPostLayout()V

    .line 291
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 294
    .end local v2    # "i":I
    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/InsetsStateController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mWinInsetsChanged:Ljava/util/ArrayList;

    .line 295
    .local v2, "winInsetsChanged":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    iget-object v4, p0, Lcom/android/server/wm/InsetsStateController;->mLastState:Landroid/view/InsetsState;

    iget-object v5, p0, Lcom/android/server/wm/InsetsStateController;->mState:Landroid/view/InsetsState;

    invoke-virtual {v4, v5}, Landroid/view/InsetsState;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 296
    iget-object v4, p0, Lcom/android/server/wm/InsetsStateController;->mLastState:Landroid/view/InsetsState;

    iget-object v5, p0, Lcom/android/server/wm/InsetsStateController;->mState:Landroid/view/InsetsState;

    invoke-virtual {v4, v5, v3}, Landroid/view/InsetsState;->set(Landroid/view/InsetsState;Z)V

    .line 297
    invoke-virtual {p0}, Lcom/android/server/wm/InsetsStateController;->notifyInsetsChanged()V

    goto :goto_2

    .line 302
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v3

    .local v4, "i":I
    :goto_1
    if-ltz v4, :cond_2

    .line 303
    iget-object v3, p0, Lcom/android/server/wm/InsetsStateController;->mDispatchInsetsChanged:Ljava/util/function/Consumer;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowState;

    invoke-interface {v3, v5}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 302
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 306
    .end local v4    # "i":I
    :cond_2
    :goto_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 307
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 308
    return-void
.end method

.method peekSourceProvider(I)Lcom/android/server/wm/InsetsSourceProvider;
    .locals 2
    .param p1, "type"    # I

    .line 283
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mProviders:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/InsetsSourceProvider;

    return-object v0
.end method

.method updateAboveInsetsState(Lcom/android/server/wm/WindowState;Z)V
    .locals 12
    .param p1, "win"    # Lcom/android/server/wm/WindowState;
    .param p2, "notifyInsetsChange"    # Z

    .line 318
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/InsetsStateController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 321
    :cond_0
    const/4 v0, 0x1

    new-array v2, v0, [Z

    const/4 v1, 0x0

    aput-boolean v0, v2, v1

    .line 322
    .local v2, "aboveWin":[Z
    new-instance v1, Landroid/view/InsetsState;

    invoke-direct {v1}, Landroid/view/InsetsState;-><init>()V

    move-object v7, v1

    .line 323
    .local v7, "aboveInsetsState":Landroid/view/InsetsState;
    iget-object v1, p0, Lcom/android/server/wm/InsetsStateController;->mState:Landroid/view/InsetsState;

    .line 324
    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v3

    invoke-static {}, Landroid/view/WindowInsets$Type;->systemGestures()I

    move-result v4

    or-int/2addr v3, v4

    invoke-static {}, Landroid/view/WindowInsets$Type;->mandatorySystemGestures()I

    move-result v4

    or-int/2addr v3, v4

    .line 323
    invoke-virtual {v7, v1, v3}, Landroid/view/InsetsState;->set(Landroid/view/InsetsState;I)V

    .line 325
    iget-object v8, p1, Lcom/android/server/wm/WindowState;->mProvidedInsetsSources:Landroid/util/SparseArray;

    .line 326
    .local v8, "winProvidedSources":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/InsetsSource;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v1

    .line 327
    .local v9, "insetsChangedWindows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    iget-object v10, p0, Lcom/android/server/wm/InsetsStateController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    new-instance v11, Lcom/android/server/wm/InsetsStateController$$ExternalSyntheticLambda0;

    move-object v1, v11

    move-object v3, p1

    move-object v4, v7

    move-object v5, v9

    move-object v6, v8

    invoke-direct/range {v1 .. v6}, Lcom/android/server/wm/InsetsStateController$$ExternalSyntheticLambda0;-><init>([ZLcom/android/server/wm/WindowState;Landroid/view/InsetsState;Ljava/util/ArrayList;Landroid/util/SparseArray;)V

    invoke-virtual {v10, v11, v0}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    .line 360
    if-eqz p2, :cond_1

    .line 361
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v0

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 362
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mDispatchInsetsChanged:Ljava/util/function/Consumer;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    invoke-interface {v0, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 361
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 365
    .end local v1    # "i":I
    :cond_1
    return-void

    .line 319
    .end local v2    # "aboveWin":[Z
    .end local v7    # "aboveInsetsState":Landroid/view/InsetsState;
    .end local v8    # "winProvidedSources":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/InsetsSource;>;"
    .end local v9    # "insetsChangedWindows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    :cond_2
    :goto_1
    return-void
.end method
