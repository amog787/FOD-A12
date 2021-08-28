.class public Lcom/android/server/wm/FadeAnimationController;
.super Ljava/lang/Object;
.source "FadeAnimationController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/FadeAnimationController$FadeAnimationAdapter;
    }
.end annotation


# instance fields
.field protected final mContext:Landroid/content/Context;

.field protected final mDeferredFinishCallbacks:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/android/server/wm/WindowToken;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/server/wm/DisplayContent;)V
    .locals 1
    .param p1, "displayContent"    # Lcom/android/server/wm/DisplayContent;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/FadeAnimationController;->mDeferredFinishCallbacks:Landroid/util/ArrayMap;

    .line 43
    iget-object v0, p1, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/wm/FadeAnimationController;->mContext:Landroid/content/Context;

    .line 44
    return-void
.end method


# virtual methods
.method protected createAdapter(ZLcom/android/server/wm/WindowToken;)Lcom/android/server/wm/FadeAnimationController$FadeAnimationAdapter;
    .locals 9
    .param p1, "show"    # Z
    .param p2, "windowToken"    # Lcom/android/server/wm/WindowToken;

    .line 90
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/FadeAnimationController;->getFadeInAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/FadeAnimationController;->getFadeOutAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    .line 91
    .local v0, "animation":Landroid/view/animation/Animation;
    :goto_0
    if-nez v0, :cond_1

    .line 92
    const/4 v1, 0x0

    return-object v1

    .line 95
    :cond_1
    nop

    .line 96
    invoke-virtual {p0, v0}, Lcom/android/server/wm/FadeAnimationController;->createAnimationSpec(Landroid/view/animation/Animation;)Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;

    move-result-object v1

    .line 98
    .local v1, "windowAnimationSpec":Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;
    new-instance v8, Lcom/android/server/wm/FadeAnimationController$FadeAnimationAdapter;

    .line 99
    invoke-virtual {p2}, Lcom/android/server/wm/WindowToken;->getSurfaceAnimationRunner()Lcom/android/server/wm/SurfaceAnimationRunner;

    move-result-object v5

    move-object v2, v8

    move-object v3, p0

    move-object v4, v1

    move v6, p1

    move-object v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/server/wm/FadeAnimationController$FadeAnimationAdapter;-><init>(Lcom/android/server/wm/FadeAnimationController;Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;Lcom/android/server/wm/SurfaceAnimationRunner;ZLcom/android/server/wm/WindowToken;)V

    .line 98
    return-object v8
.end method

.method protected createAnimationSpec(Landroid/view/animation/Animation;)Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;
    .locals 1
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 104
    new-instance v0, Lcom/android/server/wm/FadeAnimationController$1;

    invoke-direct {v0, p0, p1}, Lcom/android/server/wm/FadeAnimationController$1;-><init>(Lcom/android/server/wm/FadeAnimationController;Landroid/view/animation/Animation;)V

    return-object v0
.end method

.method public fadeWindowToken(ZLcom/android/server/wm/WindowToken;I)V
    .locals 7
    .param p1, "show"    # Z
    .param p2, "windowToken"    # Lcom/android/server/wm/WindowToken;
    .param p3, "animationType"    # I

    .line 68
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lcom/android/server/wm/WindowToken;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 72
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/FadeAnimationController;->createAdapter(ZLcom/android/server/wm/WindowToken;)Lcom/android/server/wm/FadeAnimationController$FadeAnimationAdapter;

    move-result-object v0

    .line 73
    .local v0, "animationAdapter":Lcom/android/server/wm/FadeAnimationController$FadeAnimationAdapter;
    if-nez v0, :cond_1

    .line 74
    return-void

    .line 79
    :cond_1
    if-eqz p1, :cond_2

    new-instance v1, Lcom/android/server/wm/FadeAnimationController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p2}, Lcom/android/server/wm/FadeAnimationController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/FadeAnimationController;Lcom/android/server/wm/WindowToken;)V

    move-object v6, v1

    goto :goto_0

    .line 84
    :cond_2
    const/4 v1, 0x0

    move-object v6, v1

    :goto_0
    nop

    .line 85
    .local v6, "finishedCallback":Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;
    invoke-virtual {p2}, Lcom/android/server/wm/WindowToken;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    move-object v1, p2

    move-object v3, v0

    move v4, p1

    move v5, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/WindowToken;->startAnimation(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/AnimationAdapter;ZILcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;)V

    .line 87
    return-void

    .line 69
    .end local v0    # "animationAdapter":Lcom/android/server/wm/FadeAnimationController$FadeAnimationAdapter;
    .end local v6    # "finishedCallback":Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;
    :cond_3
    :goto_1
    return-void
.end method

.method public getFadeInAnimation()Landroid/view/animation/Animation;
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/android/server/wm/FadeAnimationController;->mContext:Landroid/content/Context;

    const/high16 v1, 0x10a0000

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method public getFadeOutAnimation()Landroid/view/animation/Animation;
    .locals 2

    .line 57
    iget-object v0, p0, Lcom/android/server/wm/FadeAnimationController;->mContext:Landroid/content/Context;

    const v1, 0x10a0001

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$fadeWindowToken$0$FadeAnimationController(Lcom/android/server/wm/WindowToken;ILcom/android/server/wm/AnimationAdapter;)V
    .locals 1
    .param p1, "windowToken"    # Lcom/android/server/wm/WindowToken;
    .param p2, "t"    # I
    .param p3, "r"    # Lcom/android/server/wm/AnimationAdapter;

    .line 80
    iget-object v0, p0, Lcom/android/server/wm/FadeAnimationController;->mDeferredFinishCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 81
    .local v0, "runnable":Ljava/lang/Runnable;
    if-eqz v0, :cond_0

    .line 82
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 84
    :cond_0
    return-void
.end method
