.class public final synthetic Lcom/android/server/wm/RemoteAnimationController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/RemoteAnimationController;

.field public final synthetic f$1:I

.field public final synthetic f$2:[Landroid/view/RemoteAnimationTarget;

.field public final synthetic f$3:[Landroid/view/RemoteAnimationTarget;

.field public final synthetic f$4:[Landroid/view/RemoteAnimationTarget;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/RemoteAnimationController;I[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/RemoteAnimationController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/RemoteAnimationController;

    iput p2, p0, Lcom/android/server/wm/RemoteAnimationController$$ExternalSyntheticLambda1;->f$1:I

    iput-object p3, p0, Lcom/android/server/wm/RemoteAnimationController$$ExternalSyntheticLambda1;->f$2:[Landroid/view/RemoteAnimationTarget;

    iput-object p4, p0, Lcom/android/server/wm/RemoteAnimationController$$ExternalSyntheticLambda1;->f$3:[Landroid/view/RemoteAnimationTarget;

    iput-object p5, p0, Lcom/android/server/wm/RemoteAnimationController$$ExternalSyntheticLambda1;->f$4:[Landroid/view/RemoteAnimationTarget;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/RemoteAnimationController;

    iget v1, p0, Lcom/android/server/wm/RemoteAnimationController$$ExternalSyntheticLambda1;->f$1:I

    iget-object v2, p0, Lcom/android/server/wm/RemoteAnimationController$$ExternalSyntheticLambda1;->f$2:[Landroid/view/RemoteAnimationTarget;

    iget-object v3, p0, Lcom/android/server/wm/RemoteAnimationController$$ExternalSyntheticLambda1;->f$3:[Landroid/view/RemoteAnimationTarget;

    iget-object v4, p0, Lcom/android/server/wm/RemoteAnimationController$$ExternalSyntheticLambda1;->f$4:[Landroid/view/RemoteAnimationTarget;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/wm/RemoteAnimationController;->lambda$goodToGo$1$RemoteAnimationController(I[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;)V

    return-void
.end method
