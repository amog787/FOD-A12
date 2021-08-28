.class public Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;
.super Ljava/lang/Object;
.source "FullScreenMagnificationController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$MagnificationInfoChangedCallback;,
        Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;,
        Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ScreenStateObserver;,
        Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$SpecAnimationBridge;,
        Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEBUG_SET_MAGNIFICATION_SPEC:Z = false

.field private static final DEFAULT_MAGNIFICATION_SCALE:F = 2.0f

.field private static final LOG_TAG:Ljava/lang/String; = "FullScreenMagnificationController"

.field public static final MAX_SCALE:F = 8.0f

.field public static final MIN_SCALE:F = 1.0f

.field private static final STUB_ANIMATION_CALLBACK:Landroid/view/accessibility/MagnificationAnimationCallback;


# instance fields
.field private final mControllerCtx:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;

.field private final mDisplays:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mMagnificationInfoChangedCallback:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$MagnificationInfoChangedCallback;

.field private final mMainThreadId:J

.field private final mScreenStateObserver:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ScreenStateObserver;

.field private mUserId:I


# direct methods
.method public static synthetic $r8$lambda$eCie_K1L6ItSIzGpzYqBHyKoIjo(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->resetAllIfNeeded(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 67
    sget-object v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$$ExternalSyntheticLambda0;->INSTANCE:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$$ExternalSyntheticLambda0;

    sput-object v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->STUB_ANIMATION_CALLBACK:Landroid/view/accessibility/MagnificationAnimationCallback;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityManagerService;Ljava/lang/Object;Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$MagnificationInfoChangedCallback;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ams"    # Lcom/android/server/accessibility/AccessibilityManagerService;
    .param p3, "lock"    # Ljava/lang/Object;
    .param p4, "magnificationInfoChangedCallback"    # Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$MagnificationInfoChangedCallback;

    .line 643
    new-instance v7, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;

    const-class v0, Lcom/android/server/wm/WindowManagerInternal;

    .line 644
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/server/wm/WindowManagerInternal;

    new-instance v4, Landroid/os/Handler;

    .line 645
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v4, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 646
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v5, v0

    move-object v0, v7

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;-><init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/wm/WindowManagerInternal;Landroid/os/Handler;J)V

    .line 643
    invoke-direct {p0, v7, p3, p4}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;-><init>(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;Ljava/lang/Object;Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$MagnificationInfoChangedCallback;)V

    .line 648
    return-void
.end method

.method public constructor <init>(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;Ljava/lang/Object;Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$MagnificationInfoChangedCallback;)V
    .locals 2
    .param p1, "ctx"    # Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;
    .param p2, "lock"    # Ljava/lang/Object;
    .param p3, "magnificationInfoChangedCallback"    # Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$MagnificationInfoChangedCallback;

    .line 656
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    .line 657
    iput-object p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mControllerCtx:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;

    .line 658
    iput-object p2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    .line 659
    invoke-virtual {p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mMainThreadId:J

    .line 660
    new-instance v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ScreenStateObserver;

    invoke-virtual {p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ScreenStateObserver;-><init>(Landroid/content/Context;Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;)V

    iput-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mScreenStateObserver:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ScreenStateObserver;

    .line 661
    iput-object p3, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mMagnificationInfoChangedCallback:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$MagnificationInfoChangedCallback;

    .line 662
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;)Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    .line 63
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mControllerCtx:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    .line 63
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .line 63
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->unregisterCallbackLocked(IZ)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    .line 63
    iget-wide v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mMainThreadId:J

    return-wide v0
.end method

.method static synthetic access$600(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;)Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$MagnificationInfoChangedCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    .line 63
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mMagnificationInfoChangedCallback:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$MagnificationInfoChangedCallback;

    return-object v0
.end method

.method static synthetic access$700(Z)Landroid/view/accessibility/MagnificationAnimationCallback;
    .locals 1
    .param p0, "x0"    # Z

    .line 63
    invoke-static {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->transformToStubCallback(Z)Landroid/view/accessibility/MagnificationAnimationCallback;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    .line 63
    invoke-direct {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->onScreenTurnedOff()V

    return-void
.end method

.method static synthetic lambda$static$0(Z)V
    .locals 0
    .param p0, "success"    # Z

    .line 68
    return-void
.end method

.method private onScreenTurnedOff()V
    .locals 2

    .line 1204
    sget-object v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$$ExternalSyntheticLambda1;->INSTANCE:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$$ExternalSyntheticLambda1;

    .line 1205
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 1204
    invoke-static {v0, p0, v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1206
    .local v0, "m":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mControllerCtx:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;

    invoke-virtual {v1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1207
    return-void
.end method

.method private resetAllIfNeeded(Z)V
    .locals 3
    .param p1, "animate"    # Z

    .line 1210
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1211
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1212
    iget-object v2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p0, v2, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->resetIfNeeded(IZ)Z

    .line 1211
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1214
    .end local v1    # "i":I
    :cond_0
    monitor-exit v0

    .line 1215
    return-void

    .line 1214
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static transformToStubCallback(Z)Landroid/view/accessibility/MagnificationAnimationCallback;
    .locals 1
    .param p0, "animate"    # Z

    .line 1546
    if-eqz p0, :cond_0

    sget-object v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->STUB_ANIMATION_CALLBACK:Landroid/view/accessibility/MagnificationAnimationCallback;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private unregisterCallbackLocked(IZ)V
    .locals 3
    .param p1, "displayId"    # I
    .param p2, "delete"    # Z

    .line 1241
    if-eqz p2, :cond_0

    .line 1242
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1245
    :cond_0
    const/4 v0, 0x0

    .line 1246
    .local v0, "hasRegister":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 1247
    iget-object v2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;

    .line 1248
    .local v2, "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    invoke-virtual {v2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->isRegistered()Z

    move-result v0

    .line 1249
    if-eqz v0, :cond_1

    .line 1250
    goto :goto_1

    .line 1246
    .end local v2    # "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1253
    .end local v1    # "i":I
    :cond_2
    :goto_1
    if-nez v0, :cond_3

    .line 1254
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mScreenStateObserver:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ScreenStateObserver;

    invoke-virtual {v1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ScreenStateObserver;->unregister()V

    .line 1256
    :cond_3
    return-void
.end method

.method private unregisterLocked(IZ)V
    .locals 2
    .param p1, "displayId"    # I
    .param p2, "delete"    # Z

    .line 1218
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;

    .line 1219
    .local v0, "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    if-nez v0, :cond_0

    .line 1220
    return-void

    .line 1222
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->isRegistered()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1223
    if-eqz p2, :cond_1

    .line 1224
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1226
    :cond_1
    return-void

    .line 1228
    :cond_2
    invoke-virtual {v0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->isMagnifying()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1229
    invoke-virtual {v0, p2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->unregister(Z)V

    goto :goto_0

    .line 1231
    :cond_3
    invoke-virtual {v0, p2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->unregisterPending(Z)V

    .line 1233
    :goto_0
    return-void
.end method


# virtual methods
.method public getCenterX(I)F
    .locals 3
    .param p1, "displayId"    # I

    .line 859
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 860
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;

    .line 861
    .local v1, "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    if-nez v1, :cond_0

    .line 862
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 864
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->getCenterX()F

    move-result v2

    monitor-exit v0

    return v2

    .line 865
    .end local v1    # "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getCenterY(I)F
    .locals 3
    .param p1, "displayId"    # I

    .line 893
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 894
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;

    .line 895
    .local v1, "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    if-nez v1, :cond_0

    .line 896
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 898
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->getCenterY()F

    move-result v2

    monitor-exit v0

    return v2

    .line 899
    .end local v1    # "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getIdOfLastServiceToMagnify(I)I
    .locals 3
    .param p1, "displayId"    # I

    .line 1068
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1069
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;

    .line 1070
    .local v1, "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    if-nez v1, :cond_0

    .line 1071
    const/4 v2, -0x1

    monitor-exit v0

    return v2

    .line 1073
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->getIdOfLastServiceToMagnify()I

    move-result v2

    monitor-exit v0

    return v2

    .line 1074
    .end local v1    # "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getMagnificationBounds(ILandroid/graphics/Rect;)V
    .locals 2
    .param p1, "displayId"    # I
    .param p2, "outBounds"    # Landroid/graphics/Rect;

    .line 790
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 791
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;

    .line 792
    .local v1, "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    if-nez v1, :cond_0

    .line 793
    monitor-exit v0

    return-void

    .line 795
    :cond_0
    invoke-virtual {v1, p2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->getMagnificationBounds(Landroid/graphics/Rect;)V

    .line 796
    .end local v1    # "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    monitor-exit v0

    .line 797
    return-void

    .line 796
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getMagnificationRegion(ILandroid/graphics/Region;)V
    .locals 2
    .param p1, "displayId"    # I
    .param p2, "outRegion"    # Landroid/graphics/Region;

    .line 808
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 809
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;

    .line 810
    .local v1, "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    if-nez v1, :cond_0

    .line 811
    monitor-exit v0

    return-void

    .line 813
    :cond_0
    invoke-virtual {v1, p2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->getMagnificationRegion(Landroid/graphics/Region;)V

    .line 814
    .end local v1    # "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    monitor-exit v0

    .line 815
    return-void

    .line 814
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getOffsetX(I)F
    .locals 3
    .param p1, "displayId"    # I

    .line 842
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 843
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;

    .line 844
    .local v1, "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    if-nez v1, :cond_0

    .line 845
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 847
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->getOffsetX()F

    move-result v2

    monitor-exit v0

    return v2

    .line 848
    .end local v1    # "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getOffsetY(I)F
    .locals 3
    .param p1, "displayId"    # I

    .line 876
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 877
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;

    .line 878
    .local v1, "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    if-nez v1, :cond_0

    .line 879
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 881
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->getOffsetY()F

    move-result v2

    monitor-exit v0

    return v2

    .line 882
    .end local v1    # "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getPersistedScale()F
    .locals 2

    .line 1102
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mControllerCtx:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;

    iget v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;->getMagnificationScale(I)F

    move-result v0

    return v0
.end method

.method public getScale(I)F
    .locals 3
    .param p1, "displayId"    # I

    .line 825
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 826
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;

    .line 827
    .local v1, "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    if-nez v1, :cond_0

    .line 828
    const/high16 v2, 0x3f800000    # 1.0f

    monitor-exit v0

    return v2

    .line 830
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->getScale()F

    move-result v2

    monitor-exit v0

    return v2

    .line 831
    .end local v1    # "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isForceShowMagnifiableBounds(I)Z
    .locals 3
    .param p1, "displayId"    # I

    .line 1194
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1195
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;

    .line 1196
    .local v1, "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    if-nez v1, :cond_0

    .line 1197
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 1199
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->isForceShowMagnifiableBounds()Z

    move-result v2

    monitor-exit v0

    return v2

    .line 1200
    .end local v1    # "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isMagnifying(I)Z
    .locals 3
    .param p1, "displayId"    # I

    .line 751
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 752
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;

    .line 753
    .local v1, "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    if-nez v1, :cond_0

    .line 754
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 756
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->isMagnifying()Z

    move-result v2

    monitor-exit v0

    return v2

    .line 757
    .end local v1    # "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isRegistered(I)Z
    .locals 3
    .param p1, "displayId"    # I

    .line 736
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 737
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;

    .line 738
    .local v1, "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    if-nez v1, :cond_0

    .line 739
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 741
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->isRegistered()Z

    move-result v2

    monitor-exit v0

    return v2

    .line 742
    .end local v1    # "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public magnificationRegionContains(IFF)Z
    .locals 3
    .param p1, "displayId"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F

    .line 771
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 772
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;

    .line 773
    .local v1, "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    if-nez v1, :cond_0

    .line 774
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 776
    :cond_0
    invoke-virtual {v1, p2, p3}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->magnificationRegionContains(FF)Z

    move-result v2

    monitor-exit v0

    return v2

    .line 777
    .end local v1    # "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method notifyImeWindowVisibilityChanged(Z)V
    .locals 1
    .param p1, "shown"    # Z

    .line 1185
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mMagnificationInfoChangedCallback:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$MagnificationInfoChangedCallback;

    invoke-interface {v0, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$MagnificationInfoChangedCallback;->onImeWindowVisibilityChanged(Z)V

    .line 1186
    return-void
.end method

.method public offsetMagnifiedRegion(IFFI)V
    .locals 2
    .param p1, "displayId"    # I
    .param p2, "offsetX"    # F
    .param p3, "offsetY"    # F
    .param p4, "id"    # I

    .line 1052
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1053
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;

    .line 1054
    .local v1, "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    if-nez v1, :cond_0

    .line 1055
    monitor-exit v0

    return-void

    .line 1057
    :cond_0
    invoke-virtual {v1, p2, p3, p4}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->offsetMagnifiedRegion(FFI)V

    .line 1058
    .end local v1    # "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    monitor-exit v0

    .line 1059
    return-void

    .line 1058
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onDisplayRemoved(I)V
    .locals 2
    .param p1, "displayId"    # I

    .line 721
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 722
    const/4 v1, 0x1

    :try_start_0
    invoke-direct {p0, p1, v1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->unregisterLocked(IZ)V

    .line 723
    monitor-exit v0

    .line 724
    return-void

    .line 723
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public persistScale()V
    .locals 4

    .line 1082
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->getScale(I)F

    move-result v1

    .line 1083
    .local v1, "scale":F
    iget v2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mUserId:I

    .line 1085
    .local v2, "userId":I
    new-instance v3, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$1;

    invoke-direct {v3, p0, v1, v2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$1;-><init>(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;FI)V

    new-array v0, v0, [Ljava/lang/Void;

    .line 1091
    invoke-virtual {v3, v0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1092
    return-void
.end method

.method public register(I)V
    .locals 3
    .param p1, "displayId"    # I

    .line 674
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 675
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;

    .line 676
    .local v1, "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    if-nez v1, :cond_0

    .line 677
    new-instance v2, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;

    invoke-direct {v2, p0, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;-><init>(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;I)V

    move-object v1, v2

    .line 679
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->isRegistered()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 680
    monitor-exit v0

    return-void

    .line 682
    :cond_1
    invoke-virtual {v1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->register()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 683
    iget-object v2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 684
    iget-object v2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mScreenStateObserver:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ScreenStateObserver;

    invoke-virtual {v2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ScreenStateObserver;->registerIfNecessary()V

    .line 686
    .end local v1    # "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    :cond_2
    monitor-exit v0

    .line 687
    return-void

    .line 686
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public reset(ILandroid/view/accessibility/MagnificationAnimationCallback;)Z
    .locals 3
    .param p1, "displayId"    # I
    .param p2, "animationCallback"    # Landroid/view/accessibility/MagnificationAnimationCallback;

    .line 928
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 929
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;

    .line 930
    .local v1, "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    if-nez v1, :cond_0

    .line 931
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 933
    :cond_0
    invoke-virtual {v1, p2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->reset(Landroid/view/accessibility/MagnificationAnimationCallback;)Z

    move-result v2

    monitor-exit v0

    return v2

    .line 934
    .end local v1    # "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public reset(IZ)Z
    .locals 1
    .param p1, "displayId"    # I
    .param p2, "animate"    # Z

    .line 913
    if-eqz p2, :cond_0

    sget-object v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->STUB_ANIMATION_CALLBACK:Landroid/view/accessibility/MagnificationAnimationCallback;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->reset(ILandroid/view/accessibility/MagnificationAnimationCallback;)Z

    move-result v0

    return v0
.end method

.method public resetAllIfNeeded(I)V
    .locals 3
    .param p1, "connectionId"    # I

    .line 1124
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1125
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1126
    iget-object v2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p0, v2, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->resetIfNeeded(II)Z

    .line 1125
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1128
    .end local v1    # "i":I
    :cond_0
    monitor-exit v0

    .line 1129
    return-void

    .line 1128
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method resetIfNeeded(II)Z
    .locals 3
    .param p1, "displayId"    # I
    .param p2, "connectionId"    # I

    .line 1157
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1158
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;

    .line 1159
    .local v1, "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->isMagnifying()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1160
    invoke-virtual {v1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->getIdOfLastServiceToMagnify()I

    move-result v2

    if-eq p2, v2, :cond_0

    goto :goto_0

    .line 1163
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->reset(Z)Z

    .line 1164
    monitor-exit v0

    return v2

    .line 1161
    :cond_1
    :goto_0
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 1165
    .end local v1    # "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method resetIfNeeded(IZ)Z
    .locals 3
    .param p1, "displayId"    # I
    .param p2, "animate"    # Z

    .line 1139
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1140
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;

    .line 1141
    .local v1, "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->isMagnifying()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 1144
    :cond_0
    invoke-virtual {v1, p2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->reset(Z)Z

    .line 1145
    const/4 v2, 0x1

    monitor-exit v0

    return v2

    .line 1142
    :cond_1
    :goto_0
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 1146
    .end local v1    # "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setCenter(IFFZI)Z
    .locals 8
    .param p1, "displayId"    # I
    .param p2, "centerX"    # F
    .param p3, "centerY"    # F
    .param p4, "animate"    # Z
    .param p5, "id"    # I

    .line 979
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 980
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;

    .line 981
    .local v1, "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    if-nez v1, :cond_0

    .line 982
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 984
    :cond_0
    const/high16 v3, 0x7fc00000    # Float.NaN

    .line 985
    if-eqz p4, :cond_1

    sget-object v2, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->STUB_ANIMATION_CALLBACK:Landroid/view/accessibility/MagnificationAnimationCallback;

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    move-object v6, v2

    .line 984
    move-object v2, v1

    move v4, p2

    move v5, p3

    move v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->setScaleAndCenter(FFFLandroid/view/accessibility/MagnificationAnimationCallback;I)Z

    move-result v2

    monitor-exit v0

    return v2

    .line 986
    .end local v1    # "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method setForceShowMagnifiableBounds(IZ)V
    .locals 2
    .param p1, "displayId"    # I
    .param p2, "show"    # Z

    .line 1169
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1170
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;

    .line 1171
    .local v1, "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    if-nez v1, :cond_0

    .line 1172
    monitor-exit v0

    return-void

    .line 1174
    :cond_0
    invoke-virtual {v1, p2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->setForceShowMagnifiableBounds(Z)V

    .line 1175
    .end local v1    # "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    monitor-exit v0

    .line 1176
    return-void

    .line 1175
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setScale(IFFFZI)Z
    .locals 8
    .param p1, "displayId"    # I
    .param p2, "scale"    # F
    .param p3, "pivotX"    # F
    .param p4, "pivotY"    # F
    .param p5, "animate"    # Z
    .param p6, "id"    # I

    .line 954
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 955
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;

    .line 956
    .local v1, "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    if-nez v1, :cond_0

    .line 957
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 959
    :cond_0
    move-object v2, v1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->setScale(FFFZI)Z

    move-result v2

    monitor-exit v0

    return v2

    .line 960
    .end local v1    # "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setScaleAndCenter(IFFFLandroid/view/accessibility/MagnificationAnimationCallback;I)Z
    .locals 8
    .param p1, "displayId"    # I
    .param p2, "scale"    # F
    .param p3, "centerX"    # F
    .param p4, "centerY"    # F
    .param p5, "animationCallback"    # Landroid/view/accessibility/MagnificationAnimationCallback;
    .param p6, "id"    # I

    .line 1031
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1032
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;

    .line 1033
    .local v1, "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    if-nez v1, :cond_0

    .line 1034
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 1036
    :cond_0
    move-object v2, v1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move v7, p6

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->setScaleAndCenter(FFFLandroid/view/accessibility/MagnificationAnimationCallback;I)Z

    move-result v2

    monitor-exit v0

    return v2

    .line 1037
    .end local v1    # "display":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setScaleAndCenter(IFFFZI)Z
    .locals 7
    .param p1, "displayId"    # I
    .param p2, "scale"    # F
    .param p3, "centerX"    # F
    .param p4, "centerY"    # F
    .param p5, "animate"    # Z
    .param p6, "id"    # I

    .line 1008
    nop

    .line 1009
    invoke-static {p5}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->transformToStubCallback(Z)Landroid/view/accessibility/MagnificationAnimationCallback;

    move-result-object v5

    .line 1008
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->setScaleAndCenter(IFFFLandroid/view/accessibility/MagnificationAnimationCallback;I)Z

    move-result v0

    return v0
.end method

.method public setUserId(I)V
    .locals 1
    .param p1, "userId"    # I

    .line 1111
    iget v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mUserId:I

    if-ne v0, p1, :cond_0

    .line 1112
    return-void

    .line 1114
    :cond_0
    iput p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mUserId:I

    .line 1115
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->resetAllIfNeeded(Z)V

    .line 1116
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1261
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "MagnificationController["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1262
    const-string/jumbo v1, "mUserId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1263
    const-string v1, ", mDisplays="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1264
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1265
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public unregister(I)V
    .locals 2
    .param p1, "displayId"    # I

    .line 696
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 697
    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, p1, v1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->unregisterLocked(IZ)V

    .line 698
    monitor-exit v0

    .line 699
    return-void

    .line 698
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public unregisterAll()V
    .locals 5

    .line 705
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 708
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v1

    .line 709
    .local v1, "displays":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 710
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->unregisterLocked(IZ)V

    .line 709
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 712
    .end local v1    # "displays":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;>;"
    .end local v2    # "i":I
    :cond_0
    monitor-exit v0

    .line 713
    return-void

    .line 712
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
