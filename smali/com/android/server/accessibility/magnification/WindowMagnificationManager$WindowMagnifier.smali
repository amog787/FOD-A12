.class Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;
.super Ljava/lang/Object;
.source "WindowMagnificationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/magnification/WindowMagnificationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WindowMagnifier"
.end annotation


# instance fields
.field private final mBounds:Landroid/graphics/Rect;

.field private final mDisplayId:I

.field private mEnabled:Z

.field private mScale:F

.field private final mSourceBounds:Landroid/graphics/Rect;

.field private final mWindowMagnificationManager:Lcom/android/server/accessibility/magnification/WindowMagnificationManager;


# direct methods
.method constructor <init>(ILcom/android/server/accessibility/magnification/WindowMagnificationManager;)V
    .locals 1
    .param p1, "displayId"    # I
    .param p2, "windowMagnificationManager"    # Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    .line 585
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 576
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mScale:F

    .line 581
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mBounds:Landroid/graphics/Rect;

    .line 583
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mSourceBounds:Landroid/graphics/Rect;

    .line 586
    iput p1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mDisplayId:I

    .line 587
    iput-object p2, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mWindowMagnificationManager:Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    .line 588
    return-void
.end method


# virtual methods
.method disableWindowMagnificationInternal(Landroid/view/accessibility/MagnificationAnimationCallback;)Z
    .locals 3
    .param p1, "animationResultCallback"    # Landroid/view/accessibility/MagnificationAnimationCallback;

    .line 610
    iget-boolean v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mEnabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 611
    return v1

    .line 613
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mWindowMagnificationManager:Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    iget v2, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mDisplayId:I

    invoke-static {v0, v2, p1}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->access$900(Lcom/android/server/accessibility/magnification/WindowMagnificationManager;ILandroid/view/accessibility/MagnificationAnimationCallback;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 615
    iput-boolean v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mEnabled:Z

    .line 617
    const/4 v0, 0x1

    return v0

    .line 619
    :cond_1
    return v1
.end method

.method enableWindowMagnificationInternal(FFFLandroid/view/accessibility/MagnificationAnimationCallback;)Z
    .locals 9
    .param p1, "scale"    # F
    .param p2, "centerX"    # F
    .param p3, "centerY"    # F
    .param p4, "animationCallback"    # Landroid/view/accessibility/MagnificationAnimationCallback;

    .line 593
    iget-boolean v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mEnabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 594
    return v1

    .line 596
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {p1, v0, v2}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v0

    .line 597
    .local v0, "normScale":F
    iget-object v3, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mWindowMagnificationManager:Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    iget v4, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mDisplayId:I

    move v5, v0

    move v6, p2

    move v7, p3

    move-object v8, p4

    invoke-static/range {v3 .. v8}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->access$800(Lcom/android/server/accessibility/magnification/WindowMagnificationManager;IFFFLandroid/view/accessibility/MagnificationAnimationCallback;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 599
    iput v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mScale:F

    .line 600
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mEnabled:Z

    .line 602
    return v1

    .line 604
    :cond_1
    return v1
.end method

.method getCenterX()F
    .locals 1

    .line 680
    iget-boolean v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mSourceBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x7fc00000    # Float.NaN

    :goto_0
    return v0
.end method

.method getCenterY()F
    .locals 1

    .line 685
    iget-boolean v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mSourceBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x7fc00000    # Float.NaN

    :goto_0
    return v0
.end method

.method getScale()F
    .locals 1

    .line 636
    iget v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mScale:F

    return v0
.end method

.method isEnabled()Z
    .locals 1

    .line 660
    iget-boolean v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mEnabled:Z

    return v0
.end method

.method move(FF)V
    .locals 2
    .param p1, "offsetX"    # F
    .param p2, "offsetY"    # F

    .line 665
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mWindowMagnificationManager:Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    iget v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mDisplayId:I

    invoke-static {v0, v1, p1, p2}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->access$1100(Lcom/android/server/accessibility/magnification/WindowMagnificationManager;IFF)Z

    .line 666
    return-void
.end method

.method public onSourceBoundsChanged(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "sourceBounds"    # Landroid/graphics/Rect;

    .line 675
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mSourceBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 676
    return-void
.end method

.method pointersInWindow(Landroid/view/MotionEvent;)I
    .locals 8
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .line 646
    const/4 v0, 0x0

    .line 647
    .local v0, "count":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    .line 648
    .local v1, "pointerCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 649
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 650
    .local v3, "x":F
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    .line 651
    .local v4, "y":F
    iget-object v5, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mBounds:Landroid/graphics/Rect;

    float-to-int v6, v3

    float-to-int v7, v4

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 652
    add-int/lit8 v0, v0, 0x1

    .line 648
    .end local v3    # "x":F
    .end local v4    # "y":F
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 655
    .end local v2    # "i":I
    :cond_1
    return v0
.end method

.method reset()V
    .locals 1

    .line 670
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mEnabled:Z

    .line 671
    return-void
.end method

.method setMagnifierLocation(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "rect"    # Landroid/graphics/Rect;

    .line 641
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 642
    return-void
.end method

.method setScale(F)V
    .locals 3
    .param p1, "scale"    # F

    .line 624
    iget-boolean v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mEnabled:Z

    if-nez v0, :cond_0

    .line 625
    return-void

    .line 627
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {p1, v0, v1}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v0

    .line 628
    .local v0, "normScale":F
    iget v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mScale:F

    invoke-static {v1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mWindowMagnificationManager:Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    iget v2, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mDisplayId:I

    .line 629
    invoke-static {v1, v2, p1}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->access$1000(Lcom/android/server/accessibility/magnification/WindowMagnificationManager;IF)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 630
    iput v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mScale:F

    .line 632
    :cond_1
    return-void
.end method
