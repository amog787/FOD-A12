.class public Lcom/android/server/wm/DockedTaskDividerController;
.super Ljava/lang/Object;
.source "DockedTaskDividerController.java"


# instance fields
.field private final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field private mResizing:Z

.field private final mTouchRegion:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Lcom/android/server/wm/DisplayContent;)V
    .locals 1
    .param p1, "displayContent"    # Lcom/android/server/wm/DisplayContent;

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DockedTaskDividerController;->mTouchRegion:Landroid/graphics/Rect;

    .line 32
    iput-object p1, p0, Lcom/android/server/wm/DockedTaskDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 33
    return-void
.end method

.method private resetDragResizingChangeReported()V
    .locals 3

    .line 60
    iget-object v0, p0, Lcom/android/server/wm/DockedTaskDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    sget-object v1, Lcom/android/server/wm/DockedTaskDividerController$$ExternalSyntheticLambda0;->INSTANCE:Lcom/android/server/wm/DockedTaskDividerController$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 62
    return-void
.end method


# virtual methods
.method getTouchRegion(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "outRegion"    # Landroid/graphics/Rect;

    .line 56
    iget-object v0, p0, Lcom/android/server/wm/DockedTaskDividerController;->mTouchRegion:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 57
    return-void
.end method

.method isResizing()Z
    .locals 1

    .line 36
    iget-boolean v0, p0, Lcom/android/server/wm/DockedTaskDividerController;->mResizing:Z

    return v0
.end method

.method setResizing(Z)V
    .locals 1
    .param p1, "resizing"    # Z

    .line 40
    iget-boolean v0, p0, Lcom/android/server/wm/DockedTaskDividerController;->mResizing:Z

    if-eq v0, p1, :cond_0

    .line 41
    iput-boolean p1, p0, Lcom/android/server/wm/DockedTaskDividerController;->mResizing:Z

    .line 42
    invoke-direct {p0}, Lcom/android/server/wm/DockedTaskDividerController;->resetDragResizingChangeReported()V

    .line 44
    :cond_0
    return-void
.end method

.method setTouchRegion(Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "touchRegion"    # Landroid/graphics/Rect;

    .line 47
    iget-object v0, p0, Lcom/android/server/wm/DockedTaskDividerController;->mTouchRegion:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 49
    iget-object v0, p0, Lcom/android/server/wm/DockedTaskDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/android/server/wm/DockedTaskDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/wm/DockedTaskDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 51
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v3

    aput v3, v1, v2

    .line 50
    invoke-virtual {v0, v1}, Lcom/android/server/wm/AccessibilityController;->onSomeWindowResizedOrMoved([I)V

    .line 53
    :cond_0
    return-void
.end method
