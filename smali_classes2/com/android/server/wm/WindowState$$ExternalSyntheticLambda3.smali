.class public final synthetic Lcom/android/server/wm/WindowState$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/WindowState;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/WindowState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/WindowState$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/wm/WindowState;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/WindowState$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/wm/WindowState;

    check-cast p1, Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowState;->lambda$new$1$WindowState(Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method
