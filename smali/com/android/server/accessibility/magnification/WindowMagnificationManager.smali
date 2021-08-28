.class public Lcom/android/server/accessibility/magnification/WindowMagnificationManager;
.super Ljava/lang/Object;
.source "WindowMagnificationManager.java"

# interfaces
.implements Lcom/android/server/accessibility/magnification/PanningScalingHandler$MagnificationDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;,
        Lcom/android/server/accessibility/magnification/WindowMagnificationManager$ConnectionCallback;,
        Lcom/android/server/accessibility/magnification/WindowMagnificationManager$Callback;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field static final MAX_SCALE:F = 8.0f

.field static final MIN_SCALE:F = 1.0f

.field private static final TAG:Ljava/lang/String; = "WindowMagnificationMgr"


# instance fields
.field private final mCallback:Lcom/android/server/accessibility/magnification/WindowMagnificationManager$Callback;

.field private mConnectionCallback:Lcom/android/server/accessibility/magnification/WindowMagnificationManager$ConnectionCallback;

.field mConnectionWrapper:Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;

.field private final mContext:Landroid/content/Context;

.field private final mLock:Ljava/lang/Object;

.field private mReceiverRegistered:Z

.field protected final mScreenStateReceiver:Landroid/content/BroadcastReceiver;

.field private mUserId:I

.field private mWindowMagnifiers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/android/server/accessibility/magnification/WindowMagnificationManager$Callback;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I
    .param p3, "callback"    # Lcom/android/server/accessibility/magnification/WindowMagnificationManager$Callback;

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mLock:Ljava/lang/Object;

    .line 68
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mReceiverRegistered:Z

    .line 73
    new-instance v0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$1;-><init>(Lcom/android/server/accessibility/magnification/WindowMagnificationManager;)V

    iput-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mScreenStateReceiver:Landroid/content/BroadcastReceiver;

    .line 116
    iput-object p1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mContext:Landroid/content/Context;

    .line 117
    iput p2, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mUserId:I

    .line 118
    iput-object p3, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mCallback:Lcom/android/server/accessibility/magnification/WindowMagnificationManager$Callback;

    .line 119
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/accessibility/magnification/WindowMagnificationManager;IF)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accessibility/magnification/WindowMagnificationManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # F

    .line 49
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->setScaleInternal(IF)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/accessibility/magnification/WindowMagnificationManager;IFF)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accessibility/magnification/WindowMagnificationManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # F
    .param p3, "x3"    # F

    .line 49
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->moveWindowMagnifierInternal(IFF)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/accessibility/magnification/WindowMagnificationManager;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    .line 49
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/accessibility/magnification/WindowMagnificationManager;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    .line 49
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/accessibility/magnification/WindowMagnificationManager;I)Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accessibility/magnification/WindowMagnificationManager;
    .param p1, "x1"    # I

    .line 49
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->createWindowMagnifier(I)Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/accessibility/magnification/WindowMagnificationManager;)Lcom/android/server/accessibility/magnification/WindowMagnificationManager$Callback;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    .line 49
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mCallback:Lcom/android/server/accessibility/magnification/WindowMagnificationManager$Callback;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/server/accessibility/magnification/WindowMagnificationManager;Lcom/android/server/accessibility/magnification/WindowMagnificationManager$ConnectionCallback;)Lcom/android/server/accessibility/magnification/WindowMagnificationManager$ConnectionCallback;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/accessibility/magnification/WindowMagnificationManager;
    .param p1, "x1"    # Lcom/android/server/accessibility/magnification/WindowMagnificationManager$ConnectionCallback;

    .line 49
    iput-object p1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mConnectionCallback:Lcom/android/server/accessibility/magnification/WindowMagnificationManager$ConnectionCallback;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/server/accessibility/magnification/WindowMagnificationManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    .line 49
    invoke-direct {p0}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->resetWindowMagnifiers()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/accessibility/magnification/WindowMagnificationManager;IFFFLandroid/view/accessibility/MagnificationAnimationCallback;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accessibility/magnification/WindowMagnificationManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # F
    .param p3, "x3"    # F
    .param p4, "x4"    # F
    .param p5, "x5"    # Landroid/view/accessibility/MagnificationAnimationCallback;

    .line 49
    invoke-direct/range {p0 .. p5}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->enableWindowMagnificationInternal(IFFFLandroid/view/accessibility/MagnificationAnimationCallback;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/accessibility/magnification/WindowMagnificationManager;ILandroid/view/accessibility/MagnificationAnimationCallback;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accessibility/magnification/WindowMagnificationManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/view/accessibility/MagnificationAnimationCallback;

    .line 49
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->disableWindowMagnificationInternal(ILandroid/view/accessibility/MagnificationAnimationCallback;)Z

    move-result v0

    return v0
.end method

.method private createWindowMagnifier(I)Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;
    .locals 2
    .param p1, "displayId"    # I

    .line 494
    new-instance v0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;

    invoke-direct {v0, p1, p0}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;-><init>(ILcom/android/server/accessibility/magnification/WindowMagnificationManager;)V

    .line 495
    .local v0, "magnifier":Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 496
    return-object v0
.end method

.method private disableAllWindowMagnifiers()V
    .locals 3

    .line 214
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 215
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;

    .line 216
    .local v1, "magnifier":Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->disableWindowMagnificationInternal(Landroid/view/accessibility/MagnificationAnimationCallback;)Z

    .line 214
    .end local v1    # "magnifier":Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 218
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 219
    return-void
.end method

.method private disableWindowMagnificationInternal(ILandroid/view/accessibility/MagnificationAnimationCallback;)Z
    .locals 1
    .param p1, "displayId"    # I
    .param p2, "animationCallback"    # Landroid/view/accessibility/MagnificationAnimationCallback;

    .line 701
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mConnectionWrapper:Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;->disableWindowMagnification(ILandroid/view/accessibility/MagnificationAnimationCallback;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private enableWindowMagnificationInternal(IFFFLandroid/view/accessibility/MagnificationAnimationCallback;)Z
    .locals 6
    .param p1, "displayId"    # I
    .param p2, "scale"    # F
    .param p3, "centerX"    # F
    .param p4, "centerY"    # F
    .param p5, "animationCallback"    # Landroid/view/accessibility/MagnificationAnimationCallback;

    .line 691
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mConnectionWrapper:Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;

    if-eqz v0, :cond_0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;->enableWindowMagnification(IFFFLandroid/view/accessibility/MagnificationAnimationCallback;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private moveWindowMagnifierInternal(IFF)Z
    .locals 1
    .param p1, "displayId"    # I
    .param p2, "offsetX"    # F
    .param p3, "offsetY"    # F

    .line 706
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mConnectionWrapper:Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;->moveWindowMagnifier(IFF)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private resetWindowMagnifiers()V
    .locals 3

    .line 222
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 223
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 224
    iget-object v2, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;

    .line 225
    .local v2, "magnifier":Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;
    invoke-virtual {v2}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->reset()V

    .line 223
    .end local v2    # "magnifier":Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 227
    .end local v1    # "i":I
    :cond_0
    monitor-exit v0

    .line 228
    return-void

    .line 227
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private setScaleInternal(IF)Z
    .locals 1
    .param p1, "displayId"    # I
    .param p2, "scale"    # F

    .line 696
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mConnectionWrapper:Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;->setScale(IF)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method disableWindowMagnification(IZ)V
    .locals 1
    .param p1, "displayId"    # I
    .param p2, "clear"    # Z

    .line 307
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->disableWindowMagnification(IZLandroid/view/accessibility/MagnificationAnimationCallback;)V

    .line 308
    return-void
.end method

.method disableWindowMagnification(IZLandroid/view/accessibility/MagnificationAnimationCallback;)V
    .locals 4
    .param p1, "displayId"    # I
    .param p2, "clear"    # Z
    .param p3, "animationCallback"    # Landroid/view/accessibility/MagnificationAnimationCallback;

    .line 320
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 321
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;

    .line 322
    .local v1, "magnifier":Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;
    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mConnectionWrapper:Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;

    if-nez v2, :cond_0

    goto :goto_0

    .line 325
    :cond_0
    invoke-virtual {v1, p3}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->disableWindowMagnificationInternal(Landroid/view/accessibility/MagnificationAnimationCallback;)Z

    move-result v2

    .line 326
    .local v2, "disabled":Z
    if-eqz p2, :cond_1

    .line 327
    iget-object v3, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 329
    .end local v1    # "magnifier":Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 331
    if-eqz v2, :cond_2

    .line 332
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mCallback:Lcom/android/server/accessibility/magnification/WindowMagnificationManager$Callback;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$Callback;->onWindowMagnificationActivationState(IZ)V

    .line 334
    :cond_2
    return-void

    .line 323
    .end local v2    # "disabled":Z
    .restart local v1    # "magnifier":Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;
    :cond_3
    :goto_0
    :try_start_1
    monitor-exit v0

    return-void

    .line 329
    .end local v1    # "magnifier":Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method enableWindowMagnification(IFFF)V
    .locals 6
    .param p1, "displayId"    # I
    .param p2, "scale"    # F
    .param p3, "centerX"    # F
    .param p4, "centerY"    # F

    .line 265
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->enableWindowMagnification(IFFFLandroid/view/accessibility/MagnificationAnimationCallback;)V

    .line 266
    return-void
.end method

.method enableWindowMagnification(IFFFLandroid/view/accessibility/MagnificationAnimationCallback;)V
    .locals 3
    .param p1, "displayId"    # I
    .param p2, "scale"    # F
    .param p3, "centerX"    # F
    .param p4, "centerY"    # F
    .param p5, "animationCallback"    # Landroid/view/accessibility/MagnificationAnimationCallback;

    .line 283
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 284
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mConnectionWrapper:Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;

    if-nez v1, :cond_0

    .line 285
    monitor-exit v0

    return-void

    .line 287
    :cond_0
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;

    .line 288
    .local v1, "magnifier":Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;
    if-nez v1, :cond_1

    .line 289
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->createWindowMagnifier(I)Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;

    move-result-object v2

    move-object v1, v2

    .line 291
    :cond_1
    invoke-virtual {v1, p2, p3, p4, p5}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->enableWindowMagnificationInternal(FFFLandroid/view/accessibility/MagnificationAnimationCallback;)Z

    move-result v2

    move v1, v2

    .line 293
    .local v1, "enabled":Z
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 295
    if-eqz v1, :cond_2

    .line 296
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mCallback:Lcom/android/server/accessibility/magnification/WindowMagnificationManager$Callback;

    const/4 v2, 0x1

    invoke-interface {v0, p1, v2}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$Callback;->onWindowMagnificationActivationState(IZ)V

    .line 298
    :cond_2
    return-void

    .line 293
    .end local v1    # "enabled":Z
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method getCenterX(I)F
    .locals 3
    .param p1, "displayId"    # I

    .line 462
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 463
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;

    .line 464
    .local v1, "magnifier":Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;
    if-nez v1, :cond_0

    .line 465
    const/high16 v2, 0x7fc00000    # Float.NaN

    monitor-exit v0

    return v2

    .line 467
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->getCenterX()F

    move-result v2

    monitor-exit v0

    return v2

    .line 468
    .end local v1    # "magnifier":Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getCenterY(I)F
    .locals 3
    .param p1, "displayId"    # I

    .line 478
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 479
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;

    .line 480
    .local v1, "magnifier":Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;
    if-nez v1, :cond_0

    .line 481
    const/high16 v2, 0x7fc00000    # Float.NaN

    monitor-exit v0

    return v2

    .line 483
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->getCenterY()F

    move-result v2

    monitor-exit v0

    return v2

    .line 484
    .end local v1    # "magnifier":Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getPersistedScale()F
    .locals 4

    .line 378
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mUserId:I

    const-string v2, "accessibility_display_magnification_scale"

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$Secure;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v0

    return v0
.end method

.method public getScale(I)F
    .locals 3
    .param p1, "displayId"    # I

    .line 404
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 405
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;

    .line 406
    .local v1, "magnifier":Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;
    if-nez v1, :cond_0

    .line 407
    const/high16 v2, 0x3f800000    # 1.0f

    monitor-exit v0

    return v2

    .line 409
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->getScale()F

    move-result v2

    monitor-exit v0

    return v2

    .line 410
    .end local v1    # "magnifier":Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isConnected()Z
    .locals 2

    .line 167
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 168
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mConnectionWrapper:Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    .line 169
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isWindowMagnifierEnabled(I)Z
    .locals 3
    .param p1, "displayId"    # I

    .line 361
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 362
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;

    .line 363
    .local v1, "magnifier":Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;
    if-nez v1, :cond_0

    .line 364
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 366
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->isEnabled()Z

    move-result v2

    monitor-exit v0

    return v2

    .line 367
    .end local v1    # "magnifier":Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public synthetic lambda$persistScale$0$WindowMagnificationManager(F)V
    .locals 3
    .param p1, "scale"    # F

    .line 391
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mUserId:I

    const-string v2, "accessibility_display_magnification_scale"

    invoke-static {v0, v2, p1, v1}, Landroid/provider/Settings$Secure;->putFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z

    .line 393
    return-void
.end method

.method moveWindowMagnification(IFF)V
    .locals 2
    .param p1, "displayId"    # I
    .param p2, "offsetX"    # F
    .param p3, "offsetY"    # F

    .line 423
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 424
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;

    .line 425
    .local v1, "magnifier":Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;
    if-nez v1, :cond_0

    .line 426
    monitor-exit v0

    return-void

    .line 428
    :cond_0
    invoke-virtual {v1, p2, p3}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->move(FF)V

    .line 429
    .end local v1    # "magnifier":Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;
    monitor-exit v0

    .line 430
    return-void

    .line 429
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method onDisplayRemoved(I)V
    .locals 1
    .param p1, "displayId"    # I

    .line 505
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->disableWindowMagnification(IZ)V

    .line 506
    return-void
.end method

.method persistScale(I)V
    .locals 3
    .param p1, "displayId"    # I

    .line 388
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->getScale(I)F

    move-result v0

    .line 389
    .local v0, "scale":F
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    .line 390
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/accessibility/magnification/WindowMagnificationManager;F)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 395
    :cond_0
    return-void
.end method

.method pointersInWindow(ILandroid/view/MotionEvent;)I
    .locals 3
    .param p1, "displayId"    # I
    .param p2, "motionEvent"    # Landroid/view/MotionEvent;

    .line 344
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 345
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;

    .line 346
    .local v1, "magnifier":Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;
    if-nez v1, :cond_0

    .line 347
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 349
    :cond_0
    invoke-virtual {v1, p2}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->pointersInWindow(Landroid/view/MotionEvent;)I

    move-result v2

    monitor-exit v0

    return v2

    .line 350
    .end local v1    # "magnifier":Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public processScroll(IFF)Z
    .locals 2
    .param p1, "displayId"    # I
    .param p2, "distanceX"    # F
    .param p3, "distanceY"    # F

    .line 232
    neg-float v0, p2

    neg-float v1, p3

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->moveWindowMagnification(IFF)V

    .line 233
    const/4 v0, 0x1

    return v0
.end method

.method public removeMagnificationButton(I)Z
    .locals 1
    .param p1, "displayId"    # I

    .line 451
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mConnectionWrapper:Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;->removeMagnificationButton(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public requestConnection(Z)Z
    .locals 5
    .param p1, "connect"    # Z

    .line 182
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 183
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->isConnected()Z

    move-result v1

    const/4 v2, 0x0

    if-ne p1, v1, :cond_0

    .line 184
    monitor-exit v0

    return v2

    .line 186
    :cond_0
    const/4 v1, 0x1

    if-eqz p1, :cond_2

    .line 187
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 188
    .local v2, "intentFilter":Landroid/content/IntentFilter;
    iget-boolean v3, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mReceiverRegistered:Z

    if-nez v3, :cond_1

    .line 189
    iget-object v3, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mScreenStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 190
    iput-boolean v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mReceiverRegistered:Z

    .line 192
    .end local v2    # "intentFilter":Landroid/content/IntentFilter;
    :cond_1
    goto :goto_0

    .line 193
    :cond_2
    invoke-direct {p0}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->disableAllWindowMagnifiers()V

    .line 194
    iget-boolean v3, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mReceiverRegistered:Z

    if-eqz v3, :cond_3

    .line 195
    iget-object v3, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mScreenStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 196
    iput-boolean v2, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mReceiverRegistered:Z

    .line 199
    :cond_3
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 201
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 203
    .local v2, "identity":J
    :try_start_1
    const-class v0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 205
    .local v0, "service":Lcom/android/server/statusbar/StatusBarManagerInternal;
    invoke-interface {v0, p1}, Lcom/android/server/statusbar/StatusBarManagerInternal;->requestWindowMagnificationConnection(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 207
    .end local v0    # "service":Lcom/android/server/statusbar/StatusBarManagerInternal;
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 208
    nop

    .line 209
    return v1

    .line 207
    :catchall_0
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 208
    throw v0

    .line 199
    .end local v2    # "identity":J
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public setConnection(Landroid/view/accessibility/IWindowMagnificationConnection;)V
    .locals 5
    .param p1, "connection"    # Landroid/view/accessibility/IWindowMagnificationConnection;

    .line 127
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 129
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mConnectionWrapper:Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 130
    invoke-virtual {v1, v2}, Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;->setConnectionCallback(Landroid/view/accessibility/IWindowMagnificationConnectionCallback;)Z

    .line 131
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mConnectionCallback:Lcom/android/server/accessibility/magnification/WindowMagnificationManager$ConnectionCallback;

    if-eqz v1, :cond_0

    .line 132
    const/4 v3, 0x1

    invoke-static {v1, v3}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$ConnectionCallback;->access$002(Lcom/android/server/accessibility/magnification/WindowMagnificationManager$ConnectionCallback;Z)Z

    .line 134
    :cond_0
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mConnectionWrapper:Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;

    iget-object v3, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mConnectionCallback:Lcom/android/server/accessibility/magnification/WindowMagnificationManager$ConnectionCallback;

    invoke-virtual {v1, v3}, Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;)V

    .line 135
    iput-object v2, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mConnectionWrapper:Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;

    .line 137
    :cond_1
    if-eqz p1, :cond_2

    .line 138
    new-instance v1, Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;

    invoke-direct {v1, p1}, Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;-><init>(Landroid/view/accessibility/IWindowMagnificationConnection;)V

    iput-object v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mConnectionWrapper:Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;

    .line 141
    :cond_2
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mConnectionWrapper:Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_3

    .line 143
    :try_start_1
    new-instance v1, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$ConnectionCallback;

    invoke-direct {v1, p0, v2}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$ConnectionCallback;-><init>(Lcom/android/server/accessibility/magnification/WindowMagnificationManager;Lcom/android/server/accessibility/magnification/WindowMagnificationManager$1;)V

    iput-object v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mConnectionCallback:Lcom/android/server/accessibility/magnification/WindowMagnificationManager$ConnectionCallback;

    .line 144
    iget-object v3, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mConnectionWrapper:Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;

    invoke-virtual {v3, v1}, Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;->linkToDeath(Landroid/os/IBinder$DeathRecipient;)V

    .line 145
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mConnectionWrapper:Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;

    iget-object v3, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mConnectionCallback:Lcom/android/server/accessibility/magnification/WindowMagnificationManager$ConnectionCallback;

    invoke-virtual {v1, v3}, Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;->setConnectionCallback(Landroid/view/accessibility/IWindowMagnificationConnectionCallback;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 149
    goto :goto_0

    .line 146
    :catch_0
    move-exception v1

    .line 147
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "WindowMagnificationMgr"

    const-string/jumbo v4, "setConnection failed"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 148
    iput-object v2, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mConnectionWrapper:Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;

    .line 151
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_3
    :goto_0
    monitor-exit v0

    .line 152
    return-void

    .line 151
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public setScale(IF)V
    .locals 2
    .param p1, "displayId"    # I
    .param p2, "scale"    # F

    .line 244
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 245
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;

    .line 246
    .local v1, "magnifier":Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;
    if-nez v1, :cond_0

    .line 247
    monitor-exit v0

    return-void

    .line 249
    :cond_0
    invoke-virtual {v1, p2}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->setScale(F)V

    .line 250
    .end local v1    # "magnifier":Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;
    monitor-exit v0

    .line 251
    return-void

    .line 250
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setUserId(I)V
    .locals 0
    .param p1, "userId"    # I

    .line 160
    iput p1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mUserId:I

    .line 161
    return-void
.end method

.method public showMagnificationButton(II)Z
    .locals 1
    .param p1, "displayId"    # I
    .param p2, "magnificationMode"    # I

    .line 440
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mConnectionWrapper:Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;->showMagnificationButton(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
