.class public Lcom/android/server/accessibility/magnification/MagnificationController;
.super Ljava/lang/Object;
.source "MagnificationController.java"

# interfaces
.implements Lcom/android/server/accessibility/magnification/WindowMagnificationManager$Callback;
.implements Lcom/android/server/accessibility/magnification/MagnificationGestureHandler$Callback;
.implements Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$MagnificationInfoChangedCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;,
        Lcom/android/server/accessibility/magnification/MagnificationController$TransitionCallBack;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "MagnificationController"


# instance fields
.field private mActivatedMode:I

.field private final mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

.field private final mContext:Landroid/content/Context;

.field private mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

.field private mFullScreenModeEnabledTime:J

.field private mImeWindowVisible:Z

.field private final mLock:Ljava/lang/Object;

.field private mMagnificationCapabilities:I

.field private final mMagnificationEndRunnableSparseArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mTempPoint:Landroid/graphics/PointF;

.field private mWindowMagnificationMgr:Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

.field private mWindowModeEnabledTime:J


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;Ljava/lang/Object;Landroid/content/Context;)V
    .locals 2
    .param p1, "ams"    # Lcom/android/server/accessibility/AccessibilityManagerService;
    .param p2, "lock"    # Ljava/lang/Object;
    .param p3, "context"    # Landroid/content/Context;

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mTempPoint:Landroid/graphics/PointF;

    .line 74
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mMagnificationEndRunnableSparseArray:Landroid/util/SparseArray;

    .line 79
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mMagnificationCapabilities:I

    .line 81
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mActivatedMode:I

    .line 83
    iput-boolean v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mImeWindowVisible:Z

    .line 85
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mWindowModeEnabledTime:J

    .line 86
    iput-wide v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mFullScreenModeEnabledTime:J

    .line 101
    iput-object p1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 102
    iput-object p2, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    .line 103
    iput-object p3, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mContext:Landroid/content/Context;

    .line 104
    return-void
.end method

.method public constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;Ljava/lang/Object;Landroid/content/Context;Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;Lcom/android/server/accessibility/magnification/WindowMagnificationManager;)V
    .locals 0
    .param p1, "ams"    # Lcom/android/server/accessibility/AccessibilityManagerService;
    .param p2, "lock"    # Ljava/lang/Object;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "fullScreenMagnificationController"    # Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;
    .param p5, "windowMagnificationManager"    # Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    .line 110
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accessibility/magnification/MagnificationController;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;Ljava/lang/Object;Landroid/content/Context;)V

    .line 111
    iput-object p4, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    .line 112
    iput-object p5, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mWindowMagnificationMgr:Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    .line 113
    return-void
.end method

.method static synthetic access$200(Lcom/android/server/accessibility/magnification/MagnificationController;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accessibility/magnification/MagnificationController;

    .line 64
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/accessibility/magnification/MagnificationController;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/accessibility/magnification/MagnificationController;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 64
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/magnification/MagnificationController;->updateMagnificationButton(II)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/accessibility/magnification/MagnificationController;ILcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/accessibility/magnification/MagnificationController;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;

    .line 64
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/magnification/MagnificationController;->setDisableMagnificationCallbackLocked(ILcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;)V

    return-void
.end method

.method private disableFullScreenMagnificationIfNeeded(I)V
    .locals 3
    .param p1, "displayId"    # I

    .line 256
    nop

    .line 257
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    move-result-object v0

    .line 259
    .local v0, "fullScreenMagnificationController":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;
    nop

    .line 260
    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->getIdOfLastServiceToMagnify(I)I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    .line 261
    .local v1, "isMagnifyByExternalRequest":Z
    :goto_0
    if-eqz v1, :cond_1

    .line 262
    invoke-virtual {v0, p1, v2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->reset(IZ)Z

    .line 264
    :cond_1
    return-void
.end method

.method private getCurrentMagnificationBoundsCenterLocked(II)Landroid/graphics/PointF;
    .locals 3
    .param p1, "displayId"    # I
    .param p2, "targetMode"    # I

    .line 423
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_2

    .line 424
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mWindowMagnificationMgr:Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    if-eqz v1, :cond_1

    .line 425
    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->isWindowMagnifierEnabled(I)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 428
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mTempPoint:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mWindowMagnificationMgr:Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->getCenterX(I)F

    move-result v1

    iget-object v2, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mWindowMagnificationMgr:Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    .line 429
    invoke-virtual {v2, p1}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->getCenterY(I)F

    move-result v2

    .line 428
    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_1

    .line 426
    :cond_1
    :goto_0
    return-object v0

    .line 431
    :cond_2
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    if-eqz v1, :cond_4

    .line 432
    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->isMagnifying(I)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_2

    .line 435
    :cond_3
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mTempPoint:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->getCenterX(I)F

    move-result v1

    iget-object v2, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    .line 436
    invoke-virtual {v2, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->getCenterY(I)F

    move-result v2

    .line 435
    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 438
    :goto_1
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mTempPoint:Landroid/graphics/PointF;

    return-object v0

    .line 433
    :cond_4
    :goto_2
    return-object v0
.end method

.method private getDisableMagnificationEndRunnableLocked(I)Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;
    .locals 1
    .param p1, "displayId"    # I

    .line 355
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mMagnificationEndRunnableSparseArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;

    return-object v0
.end method

.method private handleUserInteractionChanged(II)V
    .locals 2
    .param p1, "displayId"    # I
    .param p2, "mode"    # I

    .line 137
    iget v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mMagnificationCapabilities:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 138
    return-void

    .line 140
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/magnification/MagnificationController;->isActivated(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 141
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getWindowMagnificationMgr()Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->showMagnificationButton(II)Z

    .line 143
    :cond_1
    return-void
.end method

.method private isActivated(II)Z
    .locals 5
    .param p1, "displayId"    # I
    .param p2, "mode"    # I

    .line 442
    const/4 v0, 0x0

    .line 443
    .local v0, "isActivated":Z
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p2, v1, :cond_3

    .line 444
    iget-object v3, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 445
    :try_start_0
    iget-object v4, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    if-nez v4, :cond_0

    .line 446
    monitor-exit v3

    return v2

    .line 448
    :cond_0
    invoke-virtual {v4, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->isMagnifying(I)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    .line 449
    invoke-virtual {v4, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->isForceShowMagnifiableBounds(I)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    :cond_2
    :goto_0
    nop

    :goto_1
    move v0, v1

    .line 451
    monitor-exit v3

    goto :goto_2

    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 452
    :cond_3
    const/4 v1, 0x2

    if-ne p2, v1, :cond_5

    .line 453
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 454
    :try_start_1
    iget-object v3, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mWindowMagnificationMgr:Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    if-nez v3, :cond_4

    .line 455
    monitor-exit v1

    return v2

    .line 457
    :cond_4
    invoke-virtual {v3, p1}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->isWindowMagnifierEnabled(I)Z

    move-result v2

    move v0, v2

    .line 458
    monitor-exit v1

    goto :goto_2

    :catchall_1
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v2

    .line 460
    :cond_5
    :goto_2
    return v0
.end method

.method private logMagnificationModeWithImeOnIfNeeded()V
    .locals 2

    .line 370
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 371
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mImeWindowVisible:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mActivatedMode:I

    if-nez v1, :cond_0

    goto :goto_0

    .line 374
    :cond_0
    nop

    .line 375
    .local v1, "mode":I
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 376
    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/magnification/MagnificationController;->logMagnificationModeWithIme(I)V

    .line 377
    return-void

    .line 372
    .end local v1    # "mode":I
    :cond_1
    :goto_0
    :try_start_1
    monitor-exit v0

    return-void

    .line 375
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private setDisableMagnificationCallbackLocked(ILcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;)V
    .locals 1
    .param p1, "displayId"    # I
    .param p2, "callback"    # Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;

    .line 360
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mMagnificationEndRunnableSparseArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 365
    return-void
.end method

.method private updateMagnificationButton(II)V
    .locals 4
    .param p1, "displayId"    # I
    .param p2, "mode"    # I

    .line 156
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/magnification/MagnificationController;->isActivated(II)Z

    move-result v0

    .line 158
    .local v0, "isActivated":Z
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 159
    if-eqz v0, :cond_0

    :try_start_0
    iget v2, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mMagnificationCapabilities:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    .line 161
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 159
    :cond_0
    const/4 v2, 0x0

    .line 161
    .local v2, "showButton":Z
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    if-eqz v2, :cond_1

    .line 163
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getWindowMagnificationMgr()Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->showMagnificationButton(II)Z

    goto :goto_1

    .line 165
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getWindowMagnificationMgr()Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->removeMagnificationButton(I)Z

    .line 167
    :goto_1
    return-void

    .line 161
    .end local v2    # "showButton":Z
    :goto_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method


# virtual methods
.method public getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;
    .locals 5

    .line 385
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 386
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    if-nez v1, :cond_0

    .line 387
    new-instance v1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    iget-object v2, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget-object v4, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    invoke-direct {v1, v2, v3, v4, p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;-><init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityManagerService;Ljava/lang/Object;Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$MagnificationInfoChangedCallback;)V

    iput-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    .line 389
    iget-object v2, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserIdLocked()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->setUserId(I)V

    .line 391
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 392
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    return-object v0

    .line 391
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getWindowMagnificationMgr()Lcom/android/server/accessibility/magnification/WindowMagnificationManager;
    .locals 4

    .line 411
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 412
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mWindowMagnificationMgr:Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    if-nez v1, :cond_0

    .line 413
    new-instance v1, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    iget-object v2, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 414
    invoke-virtual {v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserIdLocked()I

    move-result v3

    invoke-direct {v1, v2, v3, p0}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;-><init>(Landroid/content/Context;ILcom/android/server/accessibility/magnification/WindowMagnificationManager$Callback;)V

    iput-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mWindowMagnificationMgr:Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    .line 417
    :cond_0
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mWindowMagnificationMgr:Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    monitor-exit v0

    return-object v1

    .line 418
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isFullScreenMagnificationControllerInitialized()Z
    .locals 2

    .line 400
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 401
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    .line 402
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public logMagnificationModeWithIme(I)V
    .locals 0
    .param p1, "mode"    # I

    .line 313
    invoke-static {p1}, Lcom/android/internal/accessibility/util/AccessibilityStatsLogUtils;->logMagnificationModeWithImeOn(I)V

    .line 314
    return-void
.end method

.method public logMagnificationUsageState(IJ)V
    .locals 0
    .param p1, "mode"    # I
    .param p2, "duration"    # J

    .line 302
    invoke-static {p1, p2, p3}, Lcom/android/internal/accessibility/util/AccessibilityStatsLogUtils;->logMagnificationUsageState(IJ)V

    .line 303
    return-void
.end method

.method public onAccessibilityActionPerformed(I)V
    .locals 1
    .param p1, "displayId"    # I

    .line 123
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/android/server/accessibility/magnification/MagnificationController;->updateMagnificationButton(II)V

    .line 124
    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 2
    .param p1, "displayId"    # I

    .line 339
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 340
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    if-eqz v1, :cond_0

    .line 341
    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->onDisplayRemoved(I)V

    .line 343
    :cond_0
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mWindowMagnificationMgr:Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    if-eqz v1, :cond_1

    .line 344
    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->onDisplayRemoved(I)V

    .line 346
    :cond_1
    monitor-exit v0

    .line 347
    return-void

    .line 346
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onFullScreenMagnificationActivationState(Z)V
    .locals 5
    .param p1, "activated"    # Z

    .line 268
    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 269
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mFullScreenModeEnabledTime:J

    .line 271
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 272
    :try_start_0
    iput v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mActivatedMode:I

    .line 273
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 274
    invoke-direct {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->logMagnificationModeWithImeOnIfNeeded()V

    goto :goto_0

    .line 273
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 276
    :cond_0
    nop

    .line 277
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mFullScreenModeEnabledTime:J

    sub-long/2addr v1, v3

    .line 276
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/accessibility/magnification/MagnificationController;->logMagnificationUsageState(IJ)V

    .line 279
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 280
    const/4 v1, 0x0

    :try_start_2
    iput v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mActivatedMode:I

    .line 281
    monitor-exit v0

    .line 283
    :goto_0
    return-void

    .line 281
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public onImeWindowVisibilityChanged(Z)V
    .locals 2
    .param p1, "shown"    # Z

    .line 287
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 288
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mImeWindowVisible:Z

    .line 289
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 290
    invoke-direct {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->logMagnificationModeWithImeOnIfNeeded()V

    .line 291
    return-void

    .line 289
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onPerformScaleAction(IF)V
    .locals 1
    .param p1, "displayId"    # I
    .param p2, "scale"    # F

    .line 117
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getWindowMagnificationMgr()Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->setScale(IF)V

    .line 118
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getWindowMagnificationMgr()Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->persistScale(I)V

    .line 119
    return-void
.end method

.method public onRequestMagnificationSpec(II)V
    .locals 3
    .param p1, "displayId"    # I
    .param p2, "serviceId"    # I

    .line 222
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 223
    if-nez p2, :cond_0

    .line 224
    :try_start_0
    monitor-exit v0

    return-void

    .line 226
    :cond_0
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/android/server/accessibility/magnification/MagnificationController;->updateMagnificationButton(II)V

    .line 227
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mWindowMagnificationMgr:Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    move-object v2, v1

    .line 228
    .local v2, "windowMagnificationManager":Lcom/android/server/accessibility/magnification/WindowMagnificationManager;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 229
    if-eqz v2, :cond_1

    .line 230
    const/4 v0, 0x0

    invoke-virtual {v1, p1, v0}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->disableWindowMagnification(IZ)V

    .line 232
    :cond_1
    return-void

    .line 228
    .end local v2    # "windowMagnificationManager":Lcom/android/server/accessibility/magnification/WindowMagnificationManager;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onShortcutTriggered(II)V
    .locals 0
    .param p1, "displayId"    # I
    .param p2, "mode"    # I

    .line 147
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/magnification/MagnificationController;->updateMagnificationButton(II)V

    .line 148
    return-void
.end method

.method public onTouchInteractionEnd(II)V
    .locals 0
    .param p1, "displayId"    # I
    .param p2, "mode"    # I

    .line 133
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/magnification/MagnificationController;->handleUserInteractionChanged(II)V

    .line 134
    return-void
.end method

.method public onTouchInteractionStart(II)V
    .locals 0
    .param p1, "displayId"    # I
    .param p2, "mode"    # I

    .line 128
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/magnification/MagnificationController;->handleUserInteractionChanged(II)V

    .line 129
    return-void
.end method

.method public onTripleTapped(II)V
    .locals 0
    .param p1, "displayId"    # I
    .param p2, "mode"    # I

    .line 152
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/magnification/MagnificationController;->updateMagnificationButton(II)V

    .line 153
    return-void
.end method

.method public onWindowMagnificationActivationState(IZ)V
    .locals 5
    .param p1, "displayId"    # I
    .param p2, "activated"    # Z

    .line 237
    const/4 v0, 0x2

    if-eqz p2, :cond_0

    .line 238
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mWindowModeEnabledTime:J

    .line 240
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 241
    :try_start_0
    iput v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mActivatedMode:I

    .line 242
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 243
    invoke-direct {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->logMagnificationModeWithImeOnIfNeeded()V

    .line 244
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/magnification/MagnificationController;->disableFullScreenMagnificationIfNeeded(I)V

    goto :goto_0

    .line 242
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 246
    :cond_0
    nop

    .line 247
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mWindowModeEnabledTime:J

    sub-long/2addr v1, v3

    .line 246
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/accessibility/magnification/MagnificationController;->logMagnificationUsageState(IJ)V

    .line 249
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 250
    const/4 v1, 0x0

    :try_start_2
    iput v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mActivatedMode:I

    .line 251
    monitor-exit v0

    .line 253
    :goto_0
    return-void

    .line 251
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public setMagnificationCapabilities(I)V
    .locals 0
    .param p1, "capabilities"    # I

    .line 350
    iput p1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mMagnificationCapabilities:I

    .line 351
    return-void
.end method

.method public transitionMagnificationModeLocked(IILcom/android/server/accessibility/magnification/MagnificationController$TransitionCallBack;)V
    .locals 16
    .param p1, "displayId"    # I
    .param p2, "targetMode"    # I
    .param p3, "transitionCallBack"    # Lcom/android/server/accessibility/magnification/MagnificationController$TransitionCallBack;

    .line 179
    move/from16 v7, p1

    move/from16 v8, p2

    move-object/from16 v9, p3

    invoke-direct/range {p0 .. p2}, Lcom/android/server/accessibility/magnification/MagnificationController;->getCurrentMagnificationBoundsCenterLocked(II)Landroid/graphics/PointF;

    move-result-object v10

    .line 181
    .local v10, "magnificationCenter":Landroid/graphics/PointF;
    nop

    .line 182
    invoke-direct/range {p0 .. p1}, Lcom/android/server/accessibility/magnification/MagnificationController;->getDisableMagnificationEndRunnableLocked(I)Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;

    move-result-object v11

    .line 183
    .local v11, "animationCallback":Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;
    const/4 v0, 0x1

    if-nez v10, :cond_0

    if-nez v11, :cond_0

    .line 184
    invoke-interface {v9, v0}, Lcom/android/server/accessibility/magnification/MagnificationController$TransitionCallBack;->onResult(Z)V

    .line 185
    return-void

    .line 188
    :cond_0
    const-string v1, "MagnificationController"

    if-eqz v11, :cond_2

    .line 189
    invoke-static {v11}, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->access$000(Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;)I

    move-result v2

    if-ne v2, v8, :cond_1

    .line 190
    invoke-virtual {v11}, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->restoreToCurrentMagnificationMode()V

    .line 191
    return-void

    .line 193
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "request during transition, abandon current:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    invoke-static {v11}, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->access$100(Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 193
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    invoke-virtual {v11}, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->setExpiredAndRemoveFromListLocked()V

    .line 198
    :cond_2
    if-nez v10, :cond_3

    .line 199
    const-string v2, "Invalid center, ignore it"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    invoke-interface {v9, v0}, Lcom/android/server/accessibility/magnification/MagnificationController$TransitionCallBack;->onResult(Z)V

    .line 201
    return-void

    .line 203
    :cond_3
    nop

    .line 204
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    move-result-object v12

    .line 205
    .local v12, "screenMagnificationController":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getWindowMagnificationMgr()Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    move-result-object v13

    .line 206
    .local v13, "windowMagnificationMgr":Lcom/android/server/accessibility/magnification/WindowMagnificationManager;
    invoke-virtual {v13}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->getPersistedScale()F

    move-result v14

    .line 207
    .local v14, "scale":F
    new-instance v15, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;

    move-object v0, v15

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move/from16 v3, p1

    move/from16 v4, p2

    move v5, v14

    move-object v6, v10

    invoke-direct/range {v0 .. v6}, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;-><init>(Lcom/android/server/accessibility/magnification/MagnificationController;Lcom/android/server/accessibility/magnification/MagnificationController$TransitionCallBack;IIFLandroid/graphics/PointF;)V

    .line 210
    .local v0, "animationEndCallback":Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;
    const/4 v1, 0x2

    if-ne v8, v1, :cond_4

    .line 211
    invoke-virtual {v12, v7, v0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->reset(ILandroid/view/accessibility/MagnificationAnimationCallback;)Z

    goto :goto_0

    .line 213
    :cond_4
    const/4 v1, 0x0

    invoke-virtual {v13, v7, v1, v0}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->disableWindowMagnification(IZLandroid/view/accessibility/MagnificationAnimationCallback;)V

    .line 216
    :goto_0
    move-object/from16 v1, p0

    invoke-direct {v1, v7, v0}, Lcom/android/server/accessibility/magnification/MagnificationController;->setDisableMagnificationCallbackLocked(ILcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;)V

    .line 217
    return-void
.end method

.method public updateUserIdIfNeeded(I)V
    .locals 2
    .param p1, "userId"    # I

    .line 323
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 324
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    if-eqz v1, :cond_0

    .line 325
    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->setUserId(I)V

    .line 327
    :cond_0
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mWindowMagnificationMgr:Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    if-eqz v1, :cond_1

    .line 328
    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->setUserId(I)V

    .line 330
    :cond_1
    monitor-exit v0

    .line 331
    return-void

    .line 330
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
