.class public Lcom/android/server/wm/FadeRotationAnimationController;
.super Lcom/android/server/wm/FadeAnimationController;
.source "FadeRotationAnimationController.java"


# instance fields
.field private final mFrozenTimeoutRunnable:Ljava/lang/Runnable;

.field private final mNavBarToken:Lcom/android/server/wm/WindowToken;

.field private mOnShowRunnable:Ljava/lang/Runnable;

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private final mTargetWindowTokens:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WindowToken;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/server/wm/DisplayContent;)V
    .locals 10
    .param p1, "displayContent"    # Lcom/android/server/wm/DisplayContent;

    .line 46
    invoke-direct {p0, p1}, Lcom/android/server/wm/FadeAnimationController;-><init>(Lcom/android/server/wm/DisplayContent;)V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/FadeRotationAnimationController;->mTargetWindowTokens:Ljava/util/ArrayList;

    .line 47
    iget-object v1, p1, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iput-object v1, p0, Lcom/android/server/wm/FadeRotationAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 48
    iget-boolean v2, v1, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    new-instance v2, Lcom/android/server/wm/FadeRotationAnimationController$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1}, Lcom/android/server/wm/FadeRotationAnimationController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/FadeRotationAnimationController;Lcom/android/server/wm/DisplayContent;)V

    goto :goto_0

    .line 53
    :cond_0
    move-object v2, v3

    :goto_0
    iput-object v2, p0, Lcom/android/server/wm/FadeRotationAnimationController;->mFrozenTimeoutRunnable:Ljava/lang/Runnable;

    .line 54
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v4

    .line 55
    .local v4, "displayPolicy":Lcom/android/server/wm/DisplayPolicy;
    invoke-virtual {v4}, Lcom/android/server/wm/DisplayPolicy;->getNavigationBar()Lcom/android/server/wm/WindowState;

    move-result-object v5

    .line 56
    .local v5, "navigationBar":Lcom/android/server/wm/WindowState;
    const/4 v6, 0x1

    if-eqz v5, :cond_3

    .line 57
    iget-object v7, v5, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    iput-object v7, p0, Lcom/android/server/wm/FadeRotationAnimationController;->mNavBarToken:Lcom/android/server/wm/WindowToken;

    .line 58
    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getRecentsAnimationController()Lcom/android/server/wm/RecentsAnimationController;

    move-result-object v1

    .line 59
    .local v1, "controller":Lcom/android/server/wm/RecentsAnimationController;
    if-eqz v1, :cond_1

    .line 60
    invoke-virtual {v1}, Lcom/android/server/wm/RecentsAnimationController;->isNavigationBarAttachedToApp()Z

    move-result v8

    if-eqz v8, :cond_1

    move v8, v6

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    .line 63
    .local v8, "navBarControlledByRecents":Z
    :goto_1
    invoke-virtual {v4}, Lcom/android/server/wm/DisplayPolicy;->navigationBarCanMove()Z

    move-result v9

    if-nez v9, :cond_2

    if-nez v8, :cond_2

    .line 64
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    .end local v1    # "controller":Lcom/android/server/wm/RecentsAnimationController;
    .end local v8    # "navBarControlledByRecents":Z
    :cond_2
    goto :goto_2

    .line 67
    :cond_3
    iput-object v3, p0, Lcom/android/server/wm/FadeRotationAnimationController;->mNavBarToken:Lcom/android/server/wm/WindowToken;

    .line 71
    :goto_2
    if-nez v2, :cond_4

    .line 72
    invoke-virtual {v4}, Lcom/android/server/wm/DisplayPolicy;->getNotificationShade()Lcom/android/server/wm/WindowState;

    move-result-object v3

    goto :goto_3

    :cond_4
    nop

    :goto_3
    move-object v0, v3

    .line 73
    .local v0, "notificationShade":Lcom/android/server/wm/WindowState;
    new-instance v1, Lcom/android/server/wm/FadeRotationAnimationController$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, v5, v0}, Lcom/android/server/wm/FadeRotationAnimationController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/FadeRotationAnimationController;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V

    invoke-virtual {p1, v1, v6}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 80
    return-void
.end method


# virtual methods
.method public getFadeInAnimation()Landroid/view/animation/Animation;
    .locals 2

    .line 141
    iget-object v0, p0, Lcom/android/server/wm/FadeRotationAnimationController;->mFrozenTimeoutRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/android/server/wm/FadeRotationAnimationController;->mContext:Landroid/content/Context;

    const v1, 0x10a0089

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0

    .line 145
    :cond_0
    invoke-super {p0}, Lcom/android/server/wm/FadeAnimationController;->getFadeInAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method public getFadeOutAnimation()Landroid/view/animation/Animation;
    .locals 2

    .line 150
    iget-object v0, p0, Lcom/android/server/wm/FadeRotationAnimationController;->mFrozenTimeoutRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 152
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    return-object v0

    .line 154
    :cond_0
    invoke-super {p0}, Lcom/android/server/wm/FadeAnimationController;->getFadeOutAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method hide()V
    .locals 4

    .line 115
    iget-object v0, p0, Lcom/android/server/wm/FadeRotationAnimationController;->mTargetWindowTokens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 116
    iget-object v1, p0, Lcom/android/server/wm/FadeRotationAnimationController;->mTargetWindowTokens:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowToken;

    .line 117
    .local v1, "windowToken":Lcom/android/server/wm/WindowToken;
    const/4 v2, 0x0

    const/16 v3, 0x40

    invoke-virtual {p0, v2, v1, v3}, Lcom/android/server/wm/FadeRotationAnimationController;->fadeWindowToken(ZLcom/android/server/wm/WindowToken;I)V

    .line 115
    .end local v1    # "windowToken":Lcom/android/server/wm/WindowToken;
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 119
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/FadeRotationAnimationController;->mFrozenTimeoutRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 120
    iget-object v0, p0, Lcom/android/server/wm/FadeRotationAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v1, p0, Lcom/android/server/wm/FadeRotationAnimationController;->mFrozenTimeoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/WindowManagerService$H;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 123
    :cond_1
    return-void
.end method

.method isHandledToken(Lcom/android/server/wm/WindowToken;)Z
    .locals 1
    .param p1, "token"    # Lcom/android/server/wm/WindowToken;

    .line 127
    iget-object v0, p0, Lcom/android/server/wm/FadeRotationAnimationController;->mNavBarToken:Lcom/android/server/wm/WindowToken;

    if-eq p1, v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/FadeRotationAnimationController;->isTargetToken(Lcom/android/server/wm/WindowToken;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method isTargetToken(Lcom/android/server/wm/WindowToken;)Z
    .locals 1
    .param p1, "token"    # Lcom/android/server/wm/WindowToken;

    .line 132
    iget-object v0, p0, Lcom/android/server/wm/FadeRotationAnimationController;->mTargetWindowTokens:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public synthetic lambda$new$0$FadeRotationAnimationController(Lcom/android/server/wm/DisplayContent;)V
    .locals 2
    .param p1, "displayContent"    # Lcom/android/server/wm/DisplayContent;

    .line 49
    iget-object v0, p0, Lcom/android/server/wm/FadeRotationAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 50
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->finishFadeRotationAnimationIfPossible()V

    .line 51
    iget-object v1, p0, Lcom/android/server/wm/FadeRotationAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    .line 52
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 53
    return-void

    .line 52
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public synthetic lambda$new$1$FadeRotationAnimationController(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V
    .locals 2
    .param p1, "navigationBar"    # Lcom/android/server/wm/WindowState;
    .param p2, "notificationShade"    # Lcom/android/server/wm/WindowState;
    .param p3, "w"    # Lcom/android/server/wm/WindowState;

    .line 74
    iget-object v0, p3, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-nez v0, :cond_0

    iget-boolean v0, p3, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p3, Lcom/android/server/wm/WindowState;->mForceSeamlesslyRotate:Z

    if-nez v0, :cond_0

    iget-boolean v0, p3, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    if-nez v0, :cond_0

    iget-boolean v0, p3, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    if-nez v0, :cond_0

    if-eq p3, p1, :cond_0

    if-eq p3, p2, :cond_0

    .line 77
    iget-object v0, p0, Lcom/android/server/wm/FadeRotationAnimationController;->mTargetWindowTokens:Ljava/util/ArrayList;

    iget-object v1, p3, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    :cond_0
    return-void
.end method

.method setOnShowRunnable(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "onShowRunnable"    # Ljava/lang/Runnable;

    .line 136
    iput-object p1, p0, Lcom/android/server/wm/FadeRotationAnimationController;->mOnShowRunnable:Ljava/lang/Runnable;

    .line 137
    return-void
.end method

.method show()V
    .locals 4

    .line 84
    iget-object v0, p0, Lcom/android/server/wm/FadeRotationAnimationController;->mTargetWindowTokens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 85
    iget-object v2, p0, Lcom/android/server/wm/FadeRotationAnimationController;->mTargetWindowTokens:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowToken;

    .line 86
    .local v2, "windowToken":Lcom/android/server/wm/WindowToken;
    const/16 v3, 0x40

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/wm/FadeRotationAnimationController;->fadeWindowToken(ZLcom/android/server/wm/WindowToken;I)V

    .line 84
    .end local v2    # "windowToken":Lcom/android/server/wm/WindowToken;
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 88
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/FadeRotationAnimationController;->mTargetWindowTokens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 89
    iget-object v0, p0, Lcom/android/server/wm/FadeRotationAnimationController;->mFrozenTimeoutRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 90
    iget-object v0, p0, Lcom/android/server/wm/FadeRotationAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v1, p0, Lcom/android/server/wm/FadeRotationAnimationController;->mFrozenTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 92
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/FadeRotationAnimationController;->mOnShowRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    .line 93
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 94
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/FadeRotationAnimationController;->mOnShowRunnable:Ljava/lang/Runnable;

    .line 96
    :cond_2
    return-void
.end method

.method show(Lcom/android/server/wm/WindowToken;)Z
    .locals 3
    .param p1, "token"    # Lcom/android/server/wm/WindowToken;

    .line 103
    iget-object v0, p0, Lcom/android/server/wm/FadeRotationAnimationController;->mFrozenTimeoutRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/FadeRotationAnimationController;->mTargetWindowTokens:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    const/16 v0, 0x40

    const/4 v1, 0x1

    invoke-virtual {p0, v1, p1, v0}, Lcom/android/server/wm/FadeRotationAnimationController;->fadeWindowToken(ZLcom/android/server/wm/WindowToken;I)V

    .line 105
    iget-object v0, p0, Lcom/android/server/wm/FadeRotationAnimationController;->mTargetWindowTokens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/android/server/wm/FadeRotationAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v2, p0, Lcom/android/server/wm/FadeRotationAnimationController;->mFrozenTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowManagerService$H;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 107
    return v1

    .line 110
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
