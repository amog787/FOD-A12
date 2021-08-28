.class public final synthetic Lcom/android/server/wm/FadeRotationAnimationController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/FadeRotationAnimationController;

.field public final synthetic f$1:Lcom/android/server/wm/DisplayContent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/FadeRotationAnimationController;Lcom/android/server/wm/DisplayContent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/FadeRotationAnimationController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/FadeRotationAnimationController;

    iput-object p2, p0, Lcom/android/server/wm/FadeRotationAnimationController$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/wm/DisplayContent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/FadeRotationAnimationController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/FadeRotationAnimationController;

    iget-object v1, p0, Lcom/android/server/wm/FadeRotationAnimationController$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/FadeRotationAnimationController;->lambda$new$0$FadeRotationAnimationController(Lcom/android/server/wm/DisplayContent;)V

    return-void
.end method
