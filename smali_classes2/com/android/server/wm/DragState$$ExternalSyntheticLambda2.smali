.class public final synthetic Lcom/android/server/wm/DragState$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/DragState;

.field public final synthetic f$1:F

.field public final synthetic f$2:F

.field public final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/DragState;FFZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/DragState$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/wm/DragState;

    iput p2, p0, Lcom/android/server/wm/DragState$$ExternalSyntheticLambda2;->f$1:F

    iput p3, p0, Lcom/android/server/wm/DragState$$ExternalSyntheticLambda2;->f$2:F

    iput-boolean p4, p0, Lcom/android/server/wm/DragState$$ExternalSyntheticLambda2;->f$3:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/DragState$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/wm/DragState;

    iget v1, p0, Lcom/android/server/wm/DragState$$ExternalSyntheticLambda2;->f$1:F

    iget v2, p0, Lcom/android/server/wm/DragState$$ExternalSyntheticLambda2;->f$2:F

    iget-boolean v3, p0, Lcom/android/server/wm/DragState$$ExternalSyntheticLambda2;->f$3:Z

    check-cast p1, Lcom/android/server/wm/WindowState;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/server/wm/DragState;->lambda$broadcastDragStartedLocked$0$DragState(FFZLcom/android/server/wm/WindowState;)V

    return-void
.end method
