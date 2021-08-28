.class Lcom/android/server/wm/InsetsPolicy$1;
.super Ljava/lang/Object;
.source "InsetsPolicy.java"

# interfaces
.implements Lcom/android/server/wm/InsetsControlTarget;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/InsetsPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/InsetsPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/wm/InsetsPolicy;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wm/InsetsPolicy;

    .line 70
    iput-object p1, p0, Lcom/android/server/wm/InsetsPolicy$1;->this$0:Lcom/android/server/wm/InsetsPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyInsetsControlChanged()V
    .locals 9

    .line 74
    const/4 v0, 0x0

    .line 75
    .local v0, "hasLeash":Z
    iget-object v1, p0, Lcom/android/server/wm/InsetsPolicy$1;->this$0:Lcom/android/server/wm/InsetsPolicy;

    .line 76
    invoke-static {v1}, Lcom/android/server/wm/InsetsPolicy;->access$000(Lcom/android/server/wm/InsetsPolicy;)Lcom/android/server/wm/InsetsStateController;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/server/wm/InsetsStateController;->getControlsForDispatch(Lcom/android/server/wm/InsetsControlTarget;)[Landroid/view/InsetsSourceControl;

    move-result-object v1

    .line 77
    .local v1, "controls":[Landroid/view/InsetsSourceControl;
    if-nez v1, :cond_0

    .line 78
    return-void

    .line 80
    :cond_0
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_4

    aget-object v4, v1, v3

    .line 81
    .local v4, "control":Landroid/view/InsetsSourceControl;
    invoke-virtual {v4}, Landroid/view/InsetsSourceControl;->getType()I

    move-result v5

    .line 82
    .local v5, "type":I
    iget-object v6, p0, Lcom/android/server/wm/InsetsPolicy$1;->this$0:Lcom/android/server/wm/InsetsPolicy;

    invoke-static {v6}, Lcom/android/server/wm/InsetsPolicy;->access$100(Lcom/android/server/wm/InsetsPolicy;)Landroid/util/IntArray;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/util/IntArray;->indexOf(I)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_1

    .line 84
    goto :goto_2

    .line 86
    :cond_1
    invoke-virtual {v4}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v6

    .line 87
    .local v6, "leash":Landroid/view/SurfaceControl;
    if-eqz v6, :cond_3

    .line 88
    const/4 v0, 0x1

    .line 92
    iget-object v7, p0, Lcom/android/server/wm/InsetsPolicy$1;->this$0:Lcom/android/server/wm/InsetsPolicy;

    invoke-static {v7}, Lcom/android/server/wm/InsetsPolicy;->access$200(Lcom/android/server/wm/InsetsPolicy;)Lcom/android/server/wm/DisplayContent;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/wm/DisplayContent;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v7

    .line 93
    invoke-static {v5}, Landroid/view/InsetsState;->getDefaultVisibility(I)Z

    move-result v8

    if-eqz v8, :cond_2

    const/high16 v8, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_2
    const/4 v8, 0x0

    .line 92
    :goto_1
    invoke-virtual {v7, v6, v8}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 80
    .end local v4    # "control":Landroid/view/InsetsSourceControl;
    .end local v5    # "type":I
    .end local v6    # "leash":Landroid/view/SurfaceControl;
    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 96
    :cond_4
    if-eqz v0, :cond_5

    .line 97
    iget-object v2, p0, Lcom/android/server/wm/InsetsPolicy$1;->this$0:Lcom/android/server/wm/InsetsPolicy;

    invoke-static {v2}, Lcom/android/server/wm/InsetsPolicy;->access$200(Lcom/android/server/wm/InsetsPolicy;)Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->scheduleAnimation()V

    .line 99
    :cond_5
    return-void
.end method
