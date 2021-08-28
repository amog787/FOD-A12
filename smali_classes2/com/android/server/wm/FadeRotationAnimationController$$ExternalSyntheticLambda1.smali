.class public final synthetic Lcom/android/server/wm/FadeRotationAnimationController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/FadeRotationAnimationController;

.field public final synthetic f$1:Lcom/android/server/wm/WindowState;

.field public final synthetic f$2:Lcom/android/server/wm/WindowState;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/FadeRotationAnimationController;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/FadeRotationAnimationController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/FadeRotationAnimationController;

    iput-object p2, p0, Lcom/android/server/wm/FadeRotationAnimationController$$ExternalSyntheticLambda1;->f$1:Lcom/android/server/wm/WindowState;

    iput-object p3, p0, Lcom/android/server/wm/FadeRotationAnimationController$$ExternalSyntheticLambda1;->f$2:Lcom/android/server/wm/WindowState;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/FadeRotationAnimationController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/FadeRotationAnimationController;

    iget-object v1, p0, Lcom/android/server/wm/FadeRotationAnimationController$$ExternalSyntheticLambda1;->f$1:Lcom/android/server/wm/WindowState;

    iget-object v2, p0, Lcom/android/server/wm/FadeRotationAnimationController$$ExternalSyntheticLambda1;->f$2:Lcom/android/server/wm/WindowState;

    check-cast p1, Lcom/android/server/wm/WindowState;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/server/wm/FadeRotationAnimationController;->lambda$new$1$FadeRotationAnimationController(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V

    return-void
.end method
