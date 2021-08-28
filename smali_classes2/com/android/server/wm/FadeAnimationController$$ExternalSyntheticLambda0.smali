.class public final synthetic Lcom/android/server/wm/FadeAnimationController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/FadeAnimationController;

.field public final synthetic f$1:Lcom/android/server/wm/WindowToken;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/FadeAnimationController;Lcom/android/server/wm/WindowToken;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/FadeAnimationController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/FadeAnimationController;

    iput-object p2, p0, Lcom/android/server/wm/FadeAnimationController$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/wm/WindowToken;

    return-void
.end method


# virtual methods
.method public final onAnimationFinished(ILcom/android/server/wm/AnimationAdapter;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/FadeAnimationController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/FadeAnimationController;

    iget-object v1, p0, Lcom/android/server/wm/FadeAnimationController$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/wm/FadeAnimationController;->lambda$fadeWindowToken$0$FadeAnimationController(Lcom/android/server/wm/WindowToken;ILcom/android/server/wm/AnimationAdapter;)V

    return-void
.end method
