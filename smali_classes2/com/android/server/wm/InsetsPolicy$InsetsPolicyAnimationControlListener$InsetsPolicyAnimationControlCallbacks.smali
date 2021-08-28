.class Lcom/android/server/wm/InsetsPolicy$InsetsPolicyAnimationControlListener$InsetsPolicyAnimationControlCallbacks;
.super Ljava/lang/Object;
.source "InsetsPolicy.java"

# interfaces
.implements Landroid/view/InsetsAnimationControlCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/InsetsPolicy$InsetsPolicyAnimationControlListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InsetsPolicyAnimationControlCallbacks"
.end annotation


# instance fields
.field private mAnimationControl:Landroid/view/InsetsAnimationControlImpl;

.field private mListener:Lcom/android/server/wm/InsetsPolicy$InsetsPolicyAnimationControlListener;

.field final synthetic this$1:Lcom/android/server/wm/InsetsPolicy$InsetsPolicyAnimationControlListener;


# direct methods
.method constructor <init>(Lcom/android/server/wm/InsetsPolicy$InsetsPolicyAnimationControlListener;Lcom/android/server/wm/InsetsPolicy$InsetsPolicyAnimationControlListener;)V
    .locals 0
    .param p2, "listener"    # Lcom/android/server/wm/InsetsPolicy$InsetsPolicyAnimationControlListener;

    .line 508
    iput-object p1, p0, Lcom/android/server/wm/InsetsPolicy$InsetsPolicyAnimationControlListener$InsetsPolicyAnimationControlCallbacks;->this$1:Lcom/android/server/wm/InsetsPolicy$InsetsPolicyAnimationControlListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 505
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/wm/InsetsPolicy$InsetsPolicyAnimationControlListener$InsetsPolicyAnimationControlCallbacks;->mAnimationControl:Landroid/view/InsetsAnimationControlImpl;

    .line 509
    iput-object p2, p0, Lcom/android/server/wm/InsetsPolicy$InsetsPolicyAnimationControlListener$InsetsPolicyAnimationControlCallbacks;->mListener:Lcom/android/server/wm/InsetsPolicy$InsetsPolicyAnimationControlListener;

    .line 510
    return-void
.end method

.method static synthetic access$400(Lcom/android/server/wm/InsetsPolicy$InsetsPolicyAnimationControlListener$InsetsPolicyAnimationControlCallbacks;ILandroid/util/SparseArray;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/InsetsPolicy$InsetsPolicyAnimationControlListener$InsetsPolicyAnimationControlCallbacks;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/util/SparseArray;
    .param p3, "x3"    # Z

    .line 503
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/InsetsPolicy$InsetsPolicyAnimationControlListener$InsetsPolicyAnimationControlCallbacks;->controlAnimationUnchecked(ILandroid/util/SparseArray;Z)V

    return-void
.end method

.method private controlAnimationUnchecked(ILandroid/util/SparseArray;Z)V
    .locals 18
    .param p1, "typesReady"    # I
    .param p3, "show"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/SparseArray<",
            "Landroid/view/InsetsSourceControl;",
            ">;Z)V"
        }
    .end annotation

    .line 514
    .local p2, "controls":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/InsetsSourceControl;>;"
    move-object/from16 v13, p0

    move/from16 v14, p1

    move/from16 v15, p3

    if-nez v14, :cond_0

    .line 516
    return-void

    .line 518
    :cond_0
    iget-object v0, v13, Lcom/android/server/wm/InsetsPolicy$InsetsPolicyAnimationControlListener$InsetsPolicyAnimationControlCallbacks;->this$1:Lcom/android/server/wm/InsetsPolicy$InsetsPolicyAnimationControlListener;

    iget-object v0, v0, Lcom/android/server/wm/InsetsPolicy$InsetsPolicyAnimationControlListener;->this$0:Lcom/android/server/wm/InsetsPolicy;

    invoke-static {v0, v15}, Lcom/android/server/wm/InsetsPolicy;->access$602(Lcom/android/server/wm/InsetsPolicy;Z)Z

    .line 520
    iget-object v0, v13, Lcom/android/server/wm/InsetsPolicy$InsetsPolicyAnimationControlListener$InsetsPolicyAnimationControlCallbacks;->this$1:Lcom/android/server/wm/InsetsPolicy$InsetsPolicyAnimationControlListener;

    iget-object v0, v0, Lcom/android/server/wm/InsetsPolicy$InsetsPolicyAnimationControlListener;->this$0:Lcom/android/server/wm/InsetsPolicy;

    iget-object v1, v13, Lcom/android/server/wm/InsetsPolicy$InsetsPolicyAnimationControlListener$InsetsPolicyAnimationControlCallbacks;->this$1:Lcom/android/server/wm/InsetsPolicy$InsetsPolicyAnimationControlListener;

    iget-object v1, v1, Lcom/android/server/wm/InsetsPolicy$InsetsPolicyAnimationControlListener;->this$0:Lcom/android/server/wm/InsetsPolicy;

    invoke-static {v1}, Lcom/android/server/wm/InsetsPolicy;->access$700(Lcom/android/server/wm/InsetsPolicy;)Lcom/android/server/wm/WindowState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/InsetsPolicy;->getInsetsForWindow(Lcom/android/server/wm/WindowState;)Landroid/view/InsetsState;

    move-result-object v16

    .line 524
    .local v16, "state":Landroid/view/InsetsState;
    new-instance v12, Landroid/view/InsetsAnimationControlImpl;

    const/4 v2, 0x0

    iget-object v4, v13, Lcom/android/server/wm/InsetsPolicy$InsetsPolicyAnimationControlListener$InsetsPolicyAnimationControlCallbacks;->mListener:Lcom/android/server/wm/InsetsPolicy$InsetsPolicyAnimationControlListener;

    .line 526
    invoke-virtual {v4}, Lcom/android/server/wm/InsetsPolicy$InsetsPolicyAnimationControlListener;->getDurationMs()J

    move-result-wide v7

    iget-object v0, v13, Lcom/android/server/wm/InsetsPolicy$InsetsPolicyAnimationControlListener$InsetsPolicyAnimationControlCallbacks;->this$1:Lcom/android/server/wm/InsetsPolicy$InsetsPolicyAnimationControlListener;

    invoke-static {v0}, Lcom/android/server/wm/InsetsPolicy$InsetsPolicyAnimationControlListener;->access$800(Lcom/android/server/wm/InsetsPolicy$InsetsPolicyAnimationControlListener;)Landroid/view/animation/Interpolator;

    move-result-object v9

    .line 527
    xor-int/lit8 v10, v15, 0x1

    if-eqz v15, :cond_1

    .line 528
    const/4 v0, 0x0

    move v11, v0

    goto :goto_0

    .line 529
    :cond_1
    const/4 v0, 0x1

    move v11, v0

    :goto_0
    const/16 v17, 0x0

    move-object v0, v12

    move-object/from16 v1, p2

    move-object/from16 v3, v16

    move/from16 v5, p1

    move-object/from16 v6, p0

    move-object v15, v12

    move-object/from16 v12, v17

    invoke-direct/range {v0 .. v12}, Landroid/view/InsetsAnimationControlImpl;-><init>(Landroid/util/SparseArray;Landroid/graphics/Rect;Landroid/view/InsetsState;Landroid/view/WindowInsetsAnimationControlListener;ILandroid/view/InsetsAnimationControlCallbacks;JLandroid/view/animation/Interpolator;IILandroid/content/res/CompatibilityInfo$Translator;)V

    iput-object v15, v13, Lcom/android/server/wm/InsetsPolicy$InsetsPolicyAnimationControlListener$InsetsPolicyAnimationControlCallbacks;->mAnimationControl:Landroid/view/InsetsAnimationControlImpl;

    .line 531
    invoke-static {}, Lcom/android/server/wm/SurfaceAnimationThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/wm/InsetsPolicy$InsetsPolicyAnimationControlListener$InsetsPolicyAnimationControlCallbacks$$ExternalSyntheticLambda0;

    invoke-direct {v1, v13, v14}, Lcom/android/server/wm/InsetsPolicy$InsetsPolicyAnimationControlListener$InsetsPolicyAnimationControlCallbacks$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/InsetsPolicy$InsetsPolicyAnimationControlListener$InsetsPolicyAnimationControlCallbacks;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 533
    return-void
.end method


# virtual methods
.method public varargs applySurfaceParams([Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;)V
    .locals 4
    .param p1, "params"    # [Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;

    .line 553
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 554
    .local v0, "t":Landroid/view/SurfaceControl$Transaction;
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 555
    aget-object v2, p1, v1

    .line 556
    .local v2, "surfaceParams":Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;
    iget-object v3, p0, Lcom/android/server/wm/InsetsPolicy$InsetsPolicyAnimationControlListener$InsetsPolicyAnimationControlCallbacks;->this$1:Lcom/android/server/wm/InsetsPolicy$InsetsPolicyAnimationControlListener;

    iget-object v3, v3, Lcom/android/server/wm/InsetsPolicy$InsetsPolicyAnimationControlListener;->this$0:Lcom/android/server/wm/InsetsPolicy;

    invoke-static {v3}, Lcom/android/server/wm/InsetsPolicy;->access$900(Lcom/android/server/wm/InsetsPolicy;)[F

    move-result-object v3

    invoke-static {v0, v2, v3}, Landroid/view/SyncRtSurfaceTransactionApplier;->applyParams(Landroid/view/SurfaceControl$Transaction;Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;[F)V

    .line 554
    .end local v2    # "surfaceParams":Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 558
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 559
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->close()V

    .line 560
    return-void
.end method

.method public synthetic lambda$controlAnimationUnchecked$0$InsetsPolicy$InsetsPolicyAnimationControlListener$InsetsPolicyAnimationControlCallbacks(I)V
    .locals 2
    .param p1, "typesReady"    # I

    .line 532
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy$InsetsPolicyAnimationControlListener$InsetsPolicyAnimationControlCallbacks;->mListener:Lcom/android/server/wm/InsetsPolicy$InsetsPolicyAnimationControlListener;

    iget-object v1, p0, Lcom/android/server/wm/InsetsPolicy$InsetsPolicyAnimationControlListener$InsetsPolicyAnimationControlCallbacks;->mAnimationControl:Landroid/view/InsetsAnimationControlImpl;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/InsetsPolicy$InsetsPolicyAnimationControlListener;->onReady(Landroid/view/WindowInsetsAnimationController;I)V

    return-void
.end method

.method public notifyFinished(Landroid/view/InsetsAnimationControlRunner;Z)V
    .locals 0
    .param p1, "runner"    # Landroid/view/InsetsAnimationControlRunner;
    .param p2, "shown"    # Z

    .line 547
    return-void
.end method

.method public releaseSurfaceControlFromRt(Landroid/view/SurfaceControl;)V
    .locals 0
    .param p1, "sc"    # Landroid/view/SurfaceControl;

    .line 566
    invoke-virtual {p1}, Landroid/view/SurfaceControl;->release()V

    .line 567
    return-void
.end method

.method public reportPerceptible(IZ)V
    .locals 0
    .param p1, "types"    # I
    .param p2, "perceptible"    # Z

    .line 580
    return-void
.end method

.method public scheduleApplyChangeInsets(Landroid/view/InsetsAnimationControlRunner;)V
    .locals 2
    .param p1, "runner"    # Landroid/view/InsetsAnimationControlRunner;

    .line 538
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy$InsetsPolicyAnimationControlListener$InsetsPolicyAnimationControlCallbacks;->mAnimationControl:Landroid/view/InsetsAnimationControlImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/InsetsAnimationControlImpl;->applyChangeInsets(Landroid/view/InsetsState;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 539
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy$InsetsPolicyAnimationControlListener$InsetsPolicyAnimationControlCallbacks;->mAnimationControl:Landroid/view/InsetsAnimationControlImpl;

    iget-object v1, p0, Lcom/android/server/wm/InsetsPolicy$InsetsPolicyAnimationControlListener$InsetsPolicyAnimationControlCallbacks;->this$1:Lcom/android/server/wm/InsetsPolicy$InsetsPolicyAnimationControlListener;

    iget-object v1, v1, Lcom/android/server/wm/InsetsPolicy$InsetsPolicyAnimationControlListener;->this$0:Lcom/android/server/wm/InsetsPolicy;

    invoke-static {v1}, Lcom/android/server/wm/InsetsPolicy;->access$600(Lcom/android/server/wm/InsetsPolicy;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/InsetsAnimationControlImpl;->finish(Z)V

    .line 541
    :cond_0
    return-void
.end method

.method public startAnimation(Landroid/view/InsetsAnimationControlImpl;Landroid/view/WindowInsetsAnimationControlListener;ILandroid/view/WindowInsetsAnimation;Landroid/view/WindowInsetsAnimation$Bounds;)V
    .locals 0
    .param p1, "controller"    # Landroid/view/InsetsAnimationControlImpl;
    .param p2, "listener"    # Landroid/view/WindowInsetsAnimationControlListener;
    .param p3, "types"    # I
    .param p4, "animation"    # Landroid/view/WindowInsetsAnimation;
    .param p5, "bounds"    # Landroid/view/WindowInsetsAnimation$Bounds;

    .line 574
    return-void
.end method
