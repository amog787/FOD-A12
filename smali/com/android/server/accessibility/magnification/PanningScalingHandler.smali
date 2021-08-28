.class Lcom/android/server/accessibility/magnification/PanningScalingHandler;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "PanningScalingHandler.java"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/magnification/PanningScalingHandler$MagnificationDelegate;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "PanningScalingHandler"


# instance fields
.field private final mBlockScroll:Z

.field private final mDisplayId:I

.field private mEnable:Z

.field private mInitialScaleFactor:F

.field private final mMagnificationDelegate:Lcom/android/server/accessibility/magnification/PanningScalingHandler$MagnificationDelegate;

.field private final mMaxScale:F

.field private final mMinScale:F

.field private final mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

.field private mScaling:Z

.field private final mScalingThreshold:F

.field private final mScrollGestureDetector:Landroid/view/GestureDetector;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 44
    const-string v0, "PanningScalingHandler"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/accessibility/magnification/PanningScalingHandler;->DEBUG:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;FFZLcom/android/server/accessibility/magnification/PanningScalingHandler$MagnificationDelegate;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "maxScale"    # F
    .param p3, "minScale"    # F
    .param p4, "blockScroll"    # Z
    .param p5, "magnificationDelegate"    # Lcom/android/server/accessibility/magnification/PanningScalingHandler$MagnificationDelegate;

    .line 68
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 59
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/server/accessibility/magnification/PanningScalingHandler;->mInitialScaleFactor:F

    .line 69
    invoke-virtual {p1}, Landroid/content/Context;->getDisplayId()I

    move-result v0

    iput v0, p0, Lcom/android/server/accessibility/magnification/PanningScalingHandler;->mDisplayId:I

    .line 70
    iput p2, p0, Lcom/android/server/accessibility/magnification/PanningScalingHandler;->mMaxScale:F

    .line 71
    iput p3, p0, Lcom/android/server/accessibility/magnification/PanningScalingHandler;->mMinScale:F

    .line 72
    iput-boolean p4, p0, Lcom/android/server/accessibility/magnification/PanningScalingHandler;->mBlockScroll:Z

    .line 73
    new-instance v0, Landroid/view/ScaleGestureDetector;

    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p1, p0, v1}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/accessibility/magnification/PanningScalingHandler;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 74
    new-instance v1, Landroid/view/GestureDetector;

    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v1, p1, p0, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/accessibility/magnification/PanningScalingHandler;->mScrollGestureDetector:Landroid/view/GestureDetector;

    .line 75
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ScaleGestureDetector;->setQuickScaleEnabled(Z)V

    .line 76
    iput-object p5, p0, Lcom/android/server/accessibility/magnification/PanningScalingHandler;->mMagnificationDelegate:Lcom/android/server/accessibility/magnification/PanningScalingHandler$MagnificationDelegate;

    .line 77
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 78
    .local v0, "scaleValue":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10500d1

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 81
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v1

    iput v1, p0, Lcom/android/server/accessibility/magnification/PanningScalingHandler;->mScalingThreshold:F

    .line 82
    return-void
.end method


# virtual methods
.method clear()V
    .locals 1

    .line 153
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/server/accessibility/magnification/PanningScalingHandler;->mInitialScaleFactor:F

    .line 154
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/accessibility/magnification/PanningScalingHandler;->mScaling:Z

    .line 155
    return-void
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 7
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .line 105
    sget-boolean v0, Lcom/android/server/accessibility/magnification/PanningScalingHandler;->DEBUG:Z

    const-string v1, "PanningScalingHandler"

    if-eqz v0, :cond_0

    .line 106
    const-string/jumbo v2, "onScale: triggered "

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :cond_0
    iget-boolean v2, p0, Lcom/android/server/accessibility/magnification/PanningScalingHandler;->mScaling:Z

    const/4 v3, 0x1

    if-nez v2, :cond_3

    .line 109
    iget v0, p0, Lcom/android/server/accessibility/magnification/PanningScalingHandler;->mInitialScaleFactor:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    const/4 v1, 0x0

    if-gez v0, :cond_1

    .line 110
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v0

    iput v0, p0, Lcom/android/server/accessibility/magnification/PanningScalingHandler;->mInitialScaleFactor:F

    .line 111
    return v1

    .line 113
    :cond_1
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v0

    iget v2, p0, Lcom/android/server/accessibility/magnification/PanningScalingHandler;->mInitialScaleFactor:F

    sub-float/2addr v0, v2

    .line 114
    .local v0, "deltaScale":F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v4, p0, Lcom/android/server/accessibility/magnification/PanningScalingHandler;->mScalingThreshold:F

    cmpl-float v2, v2, v4

    if-lez v2, :cond_2

    goto :goto_0

    :cond_2
    move v3, v1

    :goto_0
    iput-boolean v3, p0, Lcom/android/server/accessibility/magnification/PanningScalingHandler;->mScaling:Z

    .line 115
    return v3

    .line 121
    .end local v0    # "deltaScale":F
    :cond_3
    iget-object v2, p0, Lcom/android/server/accessibility/magnification/PanningScalingHandler;->mMagnificationDelegate:Lcom/android/server/accessibility/magnification/PanningScalingHandler$MagnificationDelegate;

    iget v4, p0, Lcom/android/server/accessibility/magnification/PanningScalingHandler;->mDisplayId:I

    invoke-interface {v2, v4}, Lcom/android/server/accessibility/magnification/PanningScalingHandler$MagnificationDelegate;->getScale(I)F

    move-result v2

    .line 122
    .local v2, "initialScale":F
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v4

    mul-float/2addr v4, v2

    .line 124
    .local v4, "targetScale":F
    iget v5, p0, Lcom/android/server/accessibility/magnification/PanningScalingHandler;->mMaxScale:F

    cmpl-float v5, v4, v5

    if-lez v5, :cond_4

    cmpl-float v5, v4, v2

    if-lez v5, :cond_4

    .line 126
    iget v5, p0, Lcom/android/server/accessibility/magnification/PanningScalingHandler;->mMaxScale:F

    .local v5, "scale":F
    goto :goto_1

    .line 127
    .end local v5    # "scale":F
    :cond_4
    iget v5, p0, Lcom/android/server/accessibility/magnification/PanningScalingHandler;->mMinScale:F

    cmpg-float v5, v4, v5

    if-gez v5, :cond_5

    cmpg-float v5, v4, v2

    if-gez v5, :cond_5

    .line 129
    iget v5, p0, Lcom/android/server/accessibility/magnification/PanningScalingHandler;->mMinScale:F

    .restart local v5    # "scale":F
    goto :goto_1

    .line 134
    .end local v5    # "scale":F
    :cond_5
    move v5, v4

    .line 137
    .restart local v5    # "scale":F
    :goto_1
    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Scaled content to: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "x"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :cond_6
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/PanningScalingHandler;->mMagnificationDelegate:Lcom/android/server/accessibility/magnification/PanningScalingHandler$MagnificationDelegate;

    iget v1, p0, Lcom/android/server/accessibility/magnification/PanningScalingHandler;->mDisplayId:I

    invoke-interface {v0, v1, v5}, Lcom/android/server/accessibility/magnification/PanningScalingHandler$MagnificationDelegate;->setScale(IF)V

    .line 139
    return v3
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 1
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .line 144
    iget-boolean v0, p0, Lcom/android/server/accessibility/magnification/PanningScalingHandler;->mEnable:Z

    return v0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 0
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .line 149
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/PanningScalingHandler;->clear()V

    .line 150
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .line 97
    iget-boolean v0, p0, Lcom/android/server/accessibility/magnification/PanningScalingHandler;->mEnable:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/accessibility/magnification/PanningScalingHandler;->mBlockScroll:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/accessibility/magnification/PanningScalingHandler;->mScaling:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/PanningScalingHandler;->mMagnificationDelegate:Lcom/android/server/accessibility/magnification/PanningScalingHandler$MagnificationDelegate;

    iget v1, p0, Lcom/android/server/accessibility/magnification/PanningScalingHandler;->mDisplayId:I

    invoke-interface {v0, v1, p3, p4}, Lcom/android/server/accessibility/magnification/PanningScalingHandler$MagnificationDelegate;->processScroll(IFF)Z

    move-result v0

    return v0

    .line 98
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .line 90
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/PanningScalingHandler;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 91
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/PanningScalingHandler;->mScrollGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 92
    return-void
.end method

.method setEnabled(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .line 85
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/PanningScalingHandler;->clear()V

    .line 86
    iput-boolean p1, p0, Lcom/android/server/accessibility/magnification/PanningScalingHandler;->mEnable:Z

    .line 87
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PanningScalingHandler{mInitialScaleFactor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/accessibility/magnification/PanningScalingHandler;->mInitialScaleFactor:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mScaling="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/accessibility/magnification/PanningScalingHandler;->mScaling:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
