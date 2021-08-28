.class Lcom/android/server/wm/DisplayContent$ImeContainer;
.super Lcom/android/server/wm/DisplayArea$Tokens;
.source "DisplayContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/DisplayContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImeContainer"
.end annotation


# instance fields
.field mNeedsLayer:Z


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 2
    .param p1, "wms"    # Lcom/android/server/wm/WindowManagerService;

    .line 4652
    sget-object v0, Lcom/android/server/wm/DisplayArea$Type;->ABOVE_TASKS:Lcom/android/server/wm/DisplayArea$Type;

    const-string v1, "ImeContainer"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/wm/DisplayArea$Tokens;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayArea$Type;Ljava/lang/String;)V

    .line 4649
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent$ImeContainer;->mNeedsLayer:Z

    .line 4653
    return-void
.end method

.method private static skipImeWindowsDuringTraversal(Lcom/android/server/wm/DisplayContent;)Z
    .locals 1
    .param p0, "dc"    # Lcom/android/server/wm/DisplayContent;

    .line 4684
    invoke-static {p0}, Lcom/android/server/wm/DisplayContent;->access$300(Lcom/android/server/wm/DisplayContent;)Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4685
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->isSplitScreenModeActivated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4686
    invoke-static {p0}, Lcom/android/server/wm/DisplayContent;->access$300(Lcom/android/server/wm/DisplayContent;)Lcom/android/server/wm/WindowState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 4684
    :goto_0
    return v0
.end method


# virtual methods
.method assignLayer(Landroid/view/SurfaceControl$Transaction;I)V
    .locals 1
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "layer"    # I

    .line 4697
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent$ImeContainer;->mNeedsLayer:Z

    if-nez v0, :cond_0

    .line 4698
    return-void

    .line 4700
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/DisplayArea$Tokens;->assignLayer(Landroid/view/SurfaceControl$Transaction;I)V

    .line 4701
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent$ImeContainer;->mNeedsLayer:Z

    .line 4702
    return-void
.end method

.method assignRelativeLayer(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;IZ)V
    .locals 1
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "relativeTo"    # Landroid/view/SurfaceControl;
    .param p3, "layer"    # I
    .param p4, "forceUpdate"    # Z

    .line 4707
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent$ImeContainer;->mNeedsLayer:Z

    if-nez v0, :cond_0

    .line 4708
    return-void

    .line 4710
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/wm/DisplayArea$Tokens;->assignRelativeLayer(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;IZ)V

    .line 4711
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent$ImeContainer;->mNeedsLayer:Z

    .line 4712
    return-void
.end method

.method forAllWindowForce(Lcom/android/internal/util/ToBooleanFunction;Z)Z
    .locals 1
    .param p2, "traverseTopToBottom"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/ToBooleanFunction<",
            "Lcom/android/server/wm/WindowState;",
            ">;Z)Z"
        }
    .end annotation

    .line 4692
    .local p1, "callback":Lcom/android/internal/util/ToBooleanFunction;, "Lcom/android/internal/util/ToBooleanFunction<Lcom/android/server/wm/WindowState;>;"
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/DisplayArea$Tokens;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v0

    return v0
.end method

.method forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z
    .locals 2
    .param p2, "traverseTopToBottom"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/ToBooleanFunction<",
            "Lcom/android/server/wm/WindowState;",
            ">;Z)Z"
        }
    .end annotation

    .line 4672
    .local p1, "callback":Lcom/android/internal/util/ToBooleanFunction;, "Lcom/android/internal/util/ToBooleanFunction<Lcom/android/server/wm/WindowState;>;"
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$ImeContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 4673
    .local v0, "dc":Lcom/android/server/wm/DisplayContent;
    invoke-static {v0}, Lcom/android/server/wm/DisplayContent$ImeContainer;->skipImeWindowsDuringTraversal(Lcom/android/server/wm/DisplayContent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4674
    const/4 v1, 0x0

    return v1

    .line 4676
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/DisplayArea$Tokens;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v1

    return v1
.end method

.method getOrientation(I)I
    .locals 1
    .param p1, "candidate"    # I

    .line 4661
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent$ImeContainer;->mIgnoreOrientationRequest:Z

    if-eqz v0, :cond_0

    .line 4662
    const/4 v0, -0x2

    return v0

    .line 4666
    :cond_0
    return p1
.end method

.method public setNeedsLayer()V
    .locals 1

    .line 4656
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent$ImeContainer;->mNeedsLayer:Z

    .line 4657
    return-void
.end method
