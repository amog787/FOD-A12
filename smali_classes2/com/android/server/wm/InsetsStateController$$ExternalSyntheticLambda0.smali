.class public final synthetic Lcom/android/server/wm/InsetsStateController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/internal/util/ToBooleanFunction;


# instance fields
.field public final synthetic f$0:[Z

.field public final synthetic f$1:Lcom/android/server/wm/WindowState;

.field public final synthetic f$2:Landroid/view/InsetsState;

.field public final synthetic f$3:Ljava/util/ArrayList;

.field public final synthetic f$4:Landroid/util/SparseArray;


# direct methods
.method public synthetic constructor <init>([ZLcom/android/server/wm/WindowState;Landroid/view/InsetsState;Ljava/util/ArrayList;Landroid/util/SparseArray;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/InsetsStateController$$ExternalSyntheticLambda0;->f$0:[Z

    iput-object p2, p0, Lcom/android/server/wm/InsetsStateController$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/wm/WindowState;

    iput-object p3, p0, Lcom/android/server/wm/InsetsStateController$$ExternalSyntheticLambda0;->f$2:Landroid/view/InsetsState;

    iput-object p4, p0, Lcom/android/server/wm/InsetsStateController$$ExternalSyntheticLambda0;->f$3:Ljava/util/ArrayList;

    iput-object p5, p0, Lcom/android/server/wm/InsetsStateController$$ExternalSyntheticLambda0;->f$4:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Z
    .locals 6

    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController$$ExternalSyntheticLambda0;->f$0:[Z

    iget-object v1, p0, Lcom/android/server/wm/InsetsStateController$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/wm/WindowState;

    iget-object v2, p0, Lcom/android/server/wm/InsetsStateController$$ExternalSyntheticLambda0;->f$2:Landroid/view/InsetsState;

    iget-object v3, p0, Lcom/android/server/wm/InsetsStateController$$ExternalSyntheticLambda0;->f$3:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/wm/InsetsStateController$$ExternalSyntheticLambda0;->f$4:Landroid/util/SparseArray;

    move-object v5, p1

    check-cast v5, Lcom/android/server/wm/WindowState;

    invoke-static/range {v0 .. v5}, Lcom/android/server/wm/InsetsStateController;->lambda$updateAboveInsetsState$3([ZLcom/android/server/wm/WindowState;Landroid/view/InsetsState;Ljava/util/ArrayList;Landroid/util/SparseArray;Lcom/android/server/wm/WindowState;)Z

    move-result p1

    return p1
.end method
