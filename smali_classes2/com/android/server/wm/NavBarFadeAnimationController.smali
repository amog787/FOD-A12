.class public Lcom/android/server/wm/NavBarFadeAnimationController;
.super Lcom/android/server/wm/FadeAnimationController;
.source "NavBarFadeAnimationController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/NavBarFadeAnimationController$NavFadeAnimationAdapter;
    }
.end annotation


# static fields
.field private static final FADE_IN_DURATION:I = 0x10a

.field private static final FADE_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final FADE_OUT_DURATION:I = 0x85

.field private static final FADE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;


# instance fields
.field private mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field private mFadeInAnimation:Landroid/view/animation/Animation;

.field private mFadeInParent:Landroid/view/SurfaceControl;

.field private mFadeOutAnimation:Landroid/view/animation/Animation;

.field private mFadeOutParent:Landroid/view/SurfaceControl;

.field private final mNavigationBar:Lcom/android/server/wm/WindowState;

.field private mPlaySequentially:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 34
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/server/wm/NavBarFadeAnimationController;->FADE_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 36
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v3, 0x3e4ccccd    # 0.2f

    invoke-direct {v0, v3, v1, v2, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/server/wm/NavBarFadeAnimationController;->FADE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/DisplayContent;)V
    .locals 5
    .param p1, "displayContent"    # Lcom/android/server/wm/DisplayContent;

    .line 48
    invoke-direct {p0, p1}, Lcom/android/server/wm/FadeAnimationController;-><init>(Lcom/android/server/wm/DisplayContent;)V

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/NavBarFadeAnimationController;->mPlaySequentially:Z

    .line 49
    iput-object p1, p0, Lcom/android/server/wm/NavBarFadeAnimationController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 50
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getNavigationBar()Lcom/android/server/wm/WindowState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/NavBarFadeAnimationController;->mNavigationBar:Lcom/android/server/wm/WindowState;

    .line 51
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/android/server/wm/NavBarFadeAnimationController;->mFadeInAnimation:Landroid/view/animation/Animation;

    .line 52
    const-wide/16 v3, 0x10a

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 53
    iget-object v0, p0, Lcom/android/server/wm/NavBarFadeAnimationController;->mFadeInAnimation:Landroid/view/animation/Animation;

    sget-object v3, Lcom/android/server/wm/NavBarFadeAnimationController;->FADE_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 55
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v2, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/android/server/wm/NavBarFadeAnimationController;->mFadeOutAnimation:Landroid/view/animation/Animation;

    .line 56
    const-wide/16 v1, 0x85

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 57
    iget-object v0, p0, Lcom/android/server/wm/NavBarFadeAnimationController;->mFadeOutAnimation:Landroid/view/animation/Animation;

    sget-object v1, Lcom/android/server/wm/NavBarFadeAnimationController;->FADE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 58
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/NavBarFadeAnimationController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/NavBarFadeAnimationController;

    .line 31
    iget-boolean v0, p0, Lcom/android/server/wm/NavBarFadeAnimationController;->mPlaySequentially:Z

    return v0
.end method


# virtual methods
.method protected createAdapter(ZLcom/android/server/wm/WindowToken;)Lcom/android/server/wm/FadeAnimationController$FadeAnimationAdapter;
    .locals 10
    .param p1, "show"    # Z
    .param p2, "windowToken"    # Lcom/android/server/wm/WindowToken;

    .line 72
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/NavBarFadeAnimationController;->getFadeInAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/NavBarFadeAnimationController;->getFadeOutAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    .line 73
    .local v0, "animation":Landroid/view/animation/Animation;
    :goto_0
    if-nez v0, :cond_1

    .line 74
    const/4 v1, 0x0

    return-object v1

    .line 77
    :cond_1
    nop

    .line 78
    invoke-virtual {p0, v0}, Lcom/android/server/wm/NavBarFadeAnimationController;->createAnimationSpec(Landroid/view/animation/Animation;)Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;

    move-result-object v1

    .line 79
    .local v1, "windowAnimationSpec":Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;
    new-instance v9, Lcom/android/server/wm/NavBarFadeAnimationController$NavFadeAnimationAdapter;

    .line 80
    invoke-virtual {p2}, Lcom/android/server/wm/WindowToken;->getSurfaceAnimationRunner()Lcom/android/server/wm/SurfaceAnimationRunner;

    move-result-object v5

    .line 81
    if-eqz p1, :cond_2

    iget-object v2, p0, Lcom/android/server/wm/NavBarFadeAnimationController;->mFadeInParent:Landroid/view/SurfaceControl;

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/android/server/wm/NavBarFadeAnimationController;->mFadeOutParent:Landroid/view/SurfaceControl;

    :goto_1
    move-object v8, v2

    move-object v2, v9

    move-object v3, p0

    move-object v4, v1

    move v6, p1

    move-object v7, p2

    invoke-direct/range {v2 .. v8}, Lcom/android/server/wm/NavBarFadeAnimationController$NavFadeAnimationAdapter;-><init>(Lcom/android/server/wm/NavBarFadeAnimationController;Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;Lcom/android/server/wm/SurfaceAnimationRunner;ZLcom/android/server/wm/WindowToken;Landroid/view/SurfaceControl;)V

    .line 79
    return-object v9
.end method

.method fadeOutAndInSequentially(JLandroid/view/SurfaceControl;Landroid/view/SurfaceControl;)V
    .locals 5
    .param p1, "totalDuration"    # J
    .param p3, "fadeOutParent"    # Landroid/view/SurfaceControl;
    .param p4, "fadeInParent"    # Landroid/view/SurfaceControl;

    .line 118
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/NavBarFadeAnimationController;->mPlaySequentially:Z

    .line 119
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 122
    const-wide/16 v0, 0x2

    mul-long/2addr v0, p1

    const-wide/16 v2, 0x3

    div-long/2addr v0, v2

    .line 123
    .local v0, "fadeInDuration":J
    iget-object v2, p0, Lcom/android/server/wm/NavBarFadeAnimationController;->mFadeOutAnimation:Landroid/view/animation/Animation;

    sub-long v3, p1, v0

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 124
    iget-object v2, p0, Lcom/android/server/wm/NavBarFadeAnimationController;->mFadeInAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v2, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 126
    .end local v0    # "fadeInDuration":J
    :cond_0
    iput-object p3, p0, Lcom/android/server/wm/NavBarFadeAnimationController;->mFadeOutParent:Landroid/view/SurfaceControl;

    .line 127
    iput-object p4, p0, Lcom/android/server/wm/NavBarFadeAnimationController;->mFadeInParent:Landroid/view/SurfaceControl;

    .line 128
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/NavBarFadeAnimationController;->fadeWindowToken(Z)V

    .line 129
    return-void
.end method

.method public fadeWindowToken(Z)V
    .locals 4
    .param p1, "show"    # Z

    .line 90
    iget-object v0, p0, Lcom/android/server/wm/NavBarFadeAnimationController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 91
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getFadeRotationAnimationController()Lcom/android/server/wm/FadeRotationAnimationController;

    move-result-object v0

    .line 92
    .local v0, "controller":Lcom/android/server/wm/FadeRotationAnimationController;
    new-instance v1, Lcom/android/server/wm/NavBarFadeAnimationController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wm/NavBarFadeAnimationController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/NavBarFadeAnimationController;Z)V

    .line 94
    .local v1, "fadeAnim":Ljava/lang/Runnable;
    if-nez v0, :cond_0

    .line 95
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 96
    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/NavBarFadeAnimationController;->mNavigationBar:Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/FadeRotationAnimationController;->isTargetToken(Lcom/android/server/wm/WindowToken;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 100
    if-eqz p1, :cond_1

    .line 101
    invoke-virtual {v0, v1}, Lcom/android/server/wm/FadeRotationAnimationController;->setOnShowRunnable(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 103
    :cond_1
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 109
    :cond_2
    iget-object v2, p0, Lcom/android/server/wm/NavBarFadeAnimationController;->mDeferredFinishCallbacks:Landroid/util/ArrayMap;

    iget-object v3, p0, Lcom/android/server/wm/NavBarFadeAnimationController;->mNavigationBar:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    .line 110
    .local v2, "runnable":Ljava/lang/Runnable;
    if-eqz v2, :cond_3

    .line 111
    invoke-virtual {v0, v2}, Lcom/android/server/wm/FadeRotationAnimationController;->setOnShowRunnable(Ljava/lang/Runnable;)V

    .line 114
    .end local v2    # "runnable":Ljava/lang/Runnable;
    :cond_3
    :goto_0
    return-void
.end method

.method public getFadeInAnimation()Landroid/view/animation/Animation;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/android/server/wm/NavBarFadeAnimationController;->mFadeInAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method public getFadeOutAnimation()Landroid/view/animation/Animation;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/android/server/wm/NavBarFadeAnimationController;->mFadeOutAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method public synthetic lambda$fadeWindowToken$0$NavBarFadeAnimationController(Z)V
    .locals 2
    .param p1, "show"    # Z

    .line 92
    iget-object v0, p0, Lcom/android/server/wm/NavBarFadeAnimationController;->mNavigationBar:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/wm/NavBarFadeAnimationController;->fadeWindowToken(ZLcom/android/server/wm/WindowToken;I)V

    return-void
.end method
