.class public final synthetic Lcom/android/server/wm/NavBarFadeAnimationController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/NavBarFadeAnimationController;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/NavBarFadeAnimationController;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/NavBarFadeAnimationController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/NavBarFadeAnimationController;

    iput-boolean p2, p0, Lcom/android/server/wm/NavBarFadeAnimationController$$ExternalSyntheticLambda0;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/NavBarFadeAnimationController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/NavBarFadeAnimationController;

    iget-boolean v1, p0, Lcom/android/server/wm/NavBarFadeAnimationController$$ExternalSyntheticLambda0;->f$1:Z

    invoke-virtual {v0, v1}, Lcom/android/server/wm/NavBarFadeAnimationController;->lambda$fadeWindowToken$0$NavBarFadeAnimationController(Z)V

    return-void
.end method
