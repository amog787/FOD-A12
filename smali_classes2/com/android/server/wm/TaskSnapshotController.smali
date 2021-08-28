.class Lcom/android/server/wm/TaskSnapshotController;
.super Ljava/lang/Object;
.source "TaskSnapshotController.java"


# static fields
.field static final SNAPSHOT_MODE_APP_THEME:I = 0x1

.field static final SNAPSHOT_MODE_NONE:I = 0x2

.field static final SNAPSHOT_MODE_REAL:I = 0x0

.field private static final TAG:Ljava/lang/String; = "WindowManager"


# instance fields
.field private final mCache:Lcom/android/server/wm/TaskSnapshotCache;

.field private final mHandler:Landroid/os/Handler;

.field private final mHighResTaskSnapshotScale:F

.field private final mIsRunningOnIoT:Z

.field private final mIsRunningOnTv:Z

.field private final mIsRunningOnWear:Z

.field private final mLoader:Lcom/android/server/wm/TaskSnapshotLoader;

.field private final mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private final mSkipClosingAppSnapshotTasks:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/Task;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpRect:Landroid/graphics/Rect;

.field private final mTmpTasks:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/Task;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 2
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mSkipClosingAppSnapshotTasks:Landroid/util/ArraySet;

    .line 100
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mTmpTasks:Landroid/util/ArraySet;

    .line 101
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mHandler:Landroid/os/Handler;

    .line 104
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mTmpRect:Landroid/graphics/Rect;

    .line 122
    iput-object p1, p0, Lcom/android/server/wm/TaskSnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 123
    new-instance v0, Lcom/android/server/wm/TaskSnapshotPersister;

    sget-object v1, Lcom/android/server/wm/TaskSnapshotController$$ExternalSyntheticLambda1;->INSTANCE:Lcom/android/server/wm/TaskSnapshotController$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1, v1}, Lcom/android/server/wm/TaskSnapshotPersister;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/TaskSnapshotPersister$DirectoryResolver;)V

    iput-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

    .line 124
    new-instance v1, Lcom/android/server/wm/TaskSnapshotLoader;

    invoke-direct {v1, v0}, Lcom/android/server/wm/TaskSnapshotLoader;-><init>(Lcom/android/server/wm/TaskSnapshotPersister;)V

    iput-object v1, p0, Lcom/android/server/wm/TaskSnapshotController;->mLoader:Lcom/android/server/wm/TaskSnapshotLoader;

    .line 125
    new-instance v0, Lcom/android/server/wm/TaskSnapshotCache;

    invoke-direct {v0, p1, v1}, Lcom/android/server/wm/TaskSnapshotCache;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/TaskSnapshotLoader;)V

    iput-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mCache:Lcom/android/server/wm/TaskSnapshotCache;

    .line 126
    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.software.leanback"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mIsRunningOnTv:Z

    .line 128
    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.type.embedded"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mIsRunningOnIoT:Z

    .line 130
    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.type.watch"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mIsRunningOnWear:Z

    .line 132
    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10500b2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    iput v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mHighResTaskSnapshotScale:F

    .line 134
    return-void
.end method

.method private createImeSnapshot(Lcom/android/server/wm/Task;I)Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;
    .locals 6
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "pixelFormat"    # I

    .line 378
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 382
    return-object v1

    .line 384
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    .line 385
    .local v0, "imeWindow":Lcom/android/server/wm/WindowState;
    const/4 v2, 0x0

    .line 386
    .local v2, "imeBuffer":Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isWinVisibleLw()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 387
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getContainingFrame()Landroid/graphics/Rect;

    move-result-object v3

    .line 388
    .local v3, "bounds":Landroid/graphics/Rect;
    const/4 v4, 0x0

    invoke-virtual {v3, v4, v4}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 389
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v4

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v4, v3, v5, p2, v1}, Landroid/view/SurfaceControl;->captureLayersExcluding(Landroid/view/SurfaceControl;Landroid/graphics/Rect;FI[Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;

    move-result-object v2

    .line 392
    .end local v3    # "bounds":Landroid/graphics/Rect;
    :cond_1
    return-object v2
.end method

.method private drawAppThemeSnapshot(Lcom/android/server/wm/Task;)Landroid/window/TaskSnapshot;
    .locals 36
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 536
    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/Task;->getTopMostActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 537
    .local v1, "topChild":Lcom/android/server/wm/ActivityRecord;
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 538
    return-object v2

    .line 540
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v3

    .line 541
    .local v3, "mainWindow":Lcom/android/server/wm/WindowState;
    if-nez v3, :cond_1

    .line 542
    return-object v2

    .line 544
    :cond_1
    nop

    .line 545
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/Task;->getTaskDescription()Landroid/app/ActivityManager$TaskDescription;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ActivityManager$TaskDescription;->getBackgroundColor()I

    move-result v4

    const/16 v5, 0xff

    .line 544
    invoke-static {v4, v5}, Lcom/android/internal/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v4

    .line 546
    .local v4, "color":I
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    .line 547
    .local v5, "attrs":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/Task;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    .line 548
    .local v6, "taskBounds":Landroid/graphics/Rect;
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getInsetsStateWithVisibilityOverride()Landroid/view/InsetsState;

    move-result-object v14

    .line 549
    .local v14, "insetsState":Landroid/view/InsetsState;
    invoke-static {v6, v14}, Lcom/android/server/wm/TaskSnapshotController;->getSystemBarInsets(Landroid/graphics/Rect;Landroid/view/InsetsState;)Landroid/graphics/Rect;

    move-result-object v15

    .line 550
    .local v15, "systemBarInsets":Landroid/graphics/Rect;
    new-instance v16, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;

    iget v8, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v9, v5, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    iget-object v7, v5, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget v10, v7, Landroid/view/InsetsFlags;->appearance:I

    .line 551
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/Task;->getTaskDescription()Landroid/app/ActivityManager$TaskDescription;

    move-result-object v11

    iget v12, v0, Lcom/android/server/wm/TaskSnapshotController;->mHighResTaskSnapshotScale:F

    move-object/from16 v7, v16

    move-object v13, v14

    invoke-direct/range {v7 .. v13}, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;-><init>(IIILandroid/app/ActivityManager$TaskDescription;FLandroid/view/InsetsState;)V

    .line 553
    .local v7, "decorPainter":Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v8

    .line 554
    .local v8, "taskWidth":I
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v9

    .line 555
    .local v9, "taskHeight":I
    int-to-float v10, v8

    iget v11, v0, Lcom/android/server/wm/TaskSnapshotController;->mHighResTaskSnapshotScale:F

    mul-float/2addr v10, v11

    float-to-int v10, v10

    .line 556
    .local v10, "width":I
    int-to-float v12, v9

    mul-float/2addr v12, v11

    float-to-int v11, v12

    .line 558
    .local v11, "height":I
    const-string v12, "TaskSnapshotController"

    invoke-static {v12, v2}, Landroid/graphics/RenderNode;->create(Ljava/lang/String;Landroid/graphics/RenderNode$AnimationHost;)Landroid/graphics/RenderNode;

    move-result-object v12

    .line 559
    .local v12, "node":Landroid/graphics/RenderNode;
    const/4 v13, 0x0

    invoke-virtual {v12, v13, v13, v10, v11}, Landroid/graphics/RenderNode;->setLeftTopRightBottom(IIII)Z

    .line 560
    invoke-virtual {v12, v13}, Landroid/graphics/RenderNode;->setClipToBounds(Z)Z

    .line 561
    invoke-virtual {v12, v10, v11}, Landroid/graphics/RenderNode;->start(II)Landroid/graphics/RecordingCanvas;

    move-result-object v13

    .line 562
    .local v13, "c":Landroid/graphics/RecordingCanvas;
    invoke-virtual {v13, v4}, Landroid/graphics/RecordingCanvas;->drawColor(I)V

    .line 563
    invoke-virtual {v7, v15}, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->setInsets(Landroid/graphics/Rect;)V

    .line 564
    invoke-virtual {v7, v13, v2}, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->drawDecors(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 565
    invoke-virtual {v12, v13}, Landroid/graphics/RenderNode;->end(Landroid/graphics/RecordingCanvas;)V

    .line 566
    invoke-static {v12, v10, v11}, Landroid/view/ThreadedRenderer;->createHardwareBitmap(Landroid/graphics/RenderNode;II)Landroid/graphics/Bitmap;

    move-result-object v16

    .line 567
    .local v16, "hwBitmap":Landroid/graphics/Bitmap;
    if-nez v16, :cond_2

    .line 568
    return-object v2

    .line 570
    :cond_2
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v15}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 571
    .local v2, "contentInsets":Landroid/graphics/Rect;
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getLetterboxInsets()Landroid/graphics/Rect;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/server/wm/utils/InsetUtils;->addInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 575
    new-instance v0, Landroid/window/TaskSnapshot;

    .line 576
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    move/from16 v33, v4

    .end local v4    # "color":I
    .local v33, "color":I
    iget-object v4, v1, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    .line 577
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v21

    .line 578
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v22

    move-object/from16 v34, v1

    .end local v1    # "topChild":Lcom/android/server/wm/ActivityRecord;
    .local v34, "topChild":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    .line 579
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v24

    move-object/from16 v35, v3

    .end local v3    # "mainWindow":Lcom/android/server/wm/WindowState;
    .local v35, "mainWindow":Lcom/android/server/wm/WindowState;
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3, v8, v9}, Landroid/graphics/Point;-><init>(II)V

    const/16 v27, 0x0

    const/16 v28, 0x0

    .line 581
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v29

    invoke-direct/range {p0 .. p1}, Lcom/android/server/wm/TaskSnapshotController;->getAppearance(Lcom/android/server/wm/Task;)I

    move-result v30

    const/16 v31, 0x0

    const/16 v32, 0x0

    move-object/from16 v17, v0

    move-object/from16 v20, v4

    move/from16 v23, v1

    move-object/from16 v25, v3

    move-object/from16 v26, v2

    invoke-direct/range {v17 .. v32}, Landroid/window/TaskSnapshot;-><init>(JLandroid/content/ComponentName;Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;IILandroid/graphics/Point;Landroid/graphics/Rect;ZZIIZZ)V

    .line 575
    return-object v0
.end method

.method private findAppTokenForSnapshot(Lcom/android/server/wm/Task;)Lcom/android/server/wm/ActivityRecord;
    .locals 1
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 251
    sget-object v0, Lcom/android/server/wm/TaskSnapshotController$$ExternalSyntheticLambda4;->INSTANCE:Lcom/android/server/wm/TaskSnapshotController$$ExternalSyntheticLambda4;

    invoke-virtual {p1, v0}, Lcom/android/server/wm/Task;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method private getAppearance(Lcom/android/server/wm/Task;)I
    .locals 3
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 675
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getTopFullscreenActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 676
    .local v0, "topFullscreenActivity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v0, :cond_0

    .line 677
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTopFullscreenOpaqueWindow()Lcom/android/server/wm/WindowState;

    move-result-object v1

    goto :goto_0

    .line 678
    :cond_0
    const/4 v1, 0x0

    :goto_0
    nop

    .line 679
    .local v1, "topFullscreenOpaqueWindow":Lcom/android/server/wm/WindowState;
    if-eqz v1, :cond_1

    .line 680
    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, v2, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget v2, v2, Landroid/view/InsetsFlags;->appearance:I

    return v2

    .line 682
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method static getSystemBarInsets(Landroid/graphics/Rect;Landroid/view/InsetsState;)Landroid/graphics/Rect;
    .locals 2
    .param p0, "frame"    # Landroid/graphics/Rect;
    .param p1, "state"    # Landroid/view/InsetsState;

    .line 686
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, p0, v0, v1}, Landroid/view/InsetsState;->calculateInsets(Landroid/graphics/Rect;IZ)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method private handleClosingApps(Landroid/util/ArraySet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;)V"
        }
    .end annotation

    .line 154
    .local p1, "closingApps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/ActivityRecord;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/TaskSnapshotController;->shouldDisableSnapshots()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    return-void

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mTmpTasks:Landroid/util/ArraySet;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/TaskSnapshotController;->getClosingTasks(Landroid/util/ArraySet;Landroid/util/ArraySet;)V

    .line 160
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mTmpTasks:Landroid/util/ArraySet;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskSnapshotController;->snapshotTasks(Landroid/util/ArraySet;)V

    .line 161
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mSkipClosingAppSnapshotTasks:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 162
    return-void
.end method

.method static synthetic lambda$findAppTokenForSnapshot$0(Lcom/android/server/wm/WindowState;)Z
    .locals 2
    .param p0, "ws"    # Lcom/android/server/wm/WindowState;

    .line 259
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowStateAnimator;->getShown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mLastAlpha:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$findAppTokenForSnapshot$1(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 2
    .param p0, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 252
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isSurfaceShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 255
    :cond_0
    sget-object v0, Lcom/android/server/wm/TaskSnapshotController$$ExternalSyntheticLambda0;->INSTANCE:Lcom/android/server/wm/TaskSnapshotController$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/ActivityRecord;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v0

    return v0

    .line 253
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private snapshotTasks(Landroid/util/ArraySet;Z)V
    .locals 9
    .param p2, "allowSnapshotHome"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/Task;",
            ">;Z)V"
        }
    .end annotation

    .line 179
    .local p1, "tasks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/Task;>;"
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_5

    .line 180
    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Task;

    .line 182
    .local v2, "task":Lcom/android/server/wm/Task;
    if-eqz p2, :cond_0

    invoke-virtual {v2}, Lcom/android/server/wm/Task;->isActivityTypeHome()Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    .line 183
    .local v3, "snapshotHome":Z
    :goto_1
    if-eqz v3, :cond_1

    .line 184
    invoke-virtual {p0, v2}, Lcom/android/server/wm/TaskSnapshotController;->snapshotTask(Lcom/android/server/wm/Task;)Landroid/window/TaskSnapshot;

    move-result-object v4

    .local v4, "snapshot":Landroid/window/TaskSnapshot;
    goto :goto_2

    .line 186
    .end local v4    # "snapshot":Landroid/window/TaskSnapshot;
    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/server/wm/TaskSnapshotController;->getSnapshotMode(Lcom/android/server/wm/Task;)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 196
    const/4 v4, 0x0

    .restart local v4    # "snapshot":Landroid/window/TaskSnapshot;
    goto :goto_2

    .line 188
    .end local v4    # "snapshot":Landroid/window/TaskSnapshot;
    :pswitch_0
    goto :goto_4

    .line 190
    :pswitch_1
    invoke-direct {p0, v2}, Lcom/android/server/wm/TaskSnapshotController;->drawAppThemeSnapshot(Lcom/android/server/wm/Task;)Landroid/window/TaskSnapshot;

    move-result-object v4

    .line 191
    .restart local v4    # "snapshot":Landroid/window/TaskSnapshot;
    goto :goto_2

    .line 193
    .end local v4    # "snapshot":Landroid/window/TaskSnapshot;
    :pswitch_2
    invoke-virtual {p0, v2}, Lcom/android/server/wm/TaskSnapshotController;->snapshotTask(Lcom/android/server/wm/Task;)Landroid/window/TaskSnapshot;

    move-result-object v4

    .line 194
    .restart local v4    # "snapshot":Landroid/window/TaskSnapshot;
    nop

    .line 200
    :goto_2
    if-eqz v4, :cond_4

    .line 201
    invoke-virtual {v4}, Landroid/window/TaskSnapshot;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v5

    .line 202
    .local v5, "buffer":Landroid/hardware/HardwareBuffer;
    invoke-virtual {v5}, Landroid/hardware/HardwareBuffer;->getWidth()I

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v5}, Landroid/hardware/HardwareBuffer;->getHeight()I

    move-result v6

    if-nez v6, :cond_2

    goto :goto_3

    .line 207
    :cond_2
    iget-object v6, p0, Lcom/android/server/wm/TaskSnapshotController;->mCache:Lcom/android/server/wm/TaskSnapshotCache;

    invoke-virtual {v6, v2, v4}, Lcom/android/server/wm/TaskSnapshotCache;->putSnapshot(Lcom/android/server/wm/Task;Landroid/window/TaskSnapshot;)V

    .line 209
    if-nez v3, :cond_4

    .line 210
    iget-object v6, p0, Lcom/android/server/wm/TaskSnapshotController;->mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

    iget v7, v2, Lcom/android/server/wm/Task;->mTaskId:I

    iget v8, v2, Lcom/android/server/wm/Task;->mUserId:I

    invoke-virtual {v6, v7, v8, v4}, Lcom/android/server/wm/TaskSnapshotPersister;->persistSnapshot(IILandroid/window/TaskSnapshot;)V

    .line 211
    invoke-virtual {v2, v4}, Lcom/android/server/wm/Task;->onSnapshotChanged(Landroid/window/TaskSnapshot;)V

    goto :goto_4

    .line 203
    :cond_3
    :goto_3
    invoke-virtual {v5}, Landroid/hardware/HardwareBuffer;->close()V

    .line 204
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid task snapshot dimensions "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/hardware/HardwareBuffer;->getWidth()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    invoke-virtual {v5}, Landroid/hardware/HardwareBuffer;->getHeight()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 204
    const-string v7, "WindowManager"

    invoke-static {v7, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    .end local v2    # "task":Lcom/android/server/wm/Task;
    .end local v3    # "snapshotHome":Z
    .end local v4    # "snapshot":Landroid/window/TaskSnapshot;
    .end local v5    # "buffer":Landroid/hardware/HardwareBuffer;
    :cond_4
    :goto_4
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_0

    .line 216
    .end local v0    # "i":I
    :cond_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method addSkipClosingAppSnapshotTasks(Landroid/util/ArraySet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/Task;",
            ">;)V"
        }
    .end annotation

    .line 171
    .local p1, "tasks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/Task;>;"
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mSkipClosingAppSnapshotTasks:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 172
    return-void
.end method

.method checkIfReadyToSnapshot(Lcom/android/server/wm/Task;)Landroid/util/Pair;
    .locals 5
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/Task;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/android/server/wm/ActivityRecord;",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation

    .line 324
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->isScreenOn()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 328
    return-object v1

    .line 330
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/wm/TaskSnapshotController;->findAppTokenForSnapshot(Lcom/android/server/wm/Task;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 331
    .local v0, "activity":Lcom/android/server/wm/ActivityRecord;
    if-nez v0, :cond_1

    .line 335
    return-object v1

    .line 337
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->hasCommittedReparentToAnimationLeash()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 341
    return-object v1

    .line 344
    :cond_2
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v2

    .line 345
    .local v2, "mainWindow":Lcom/android/server/wm/WindowState;
    if-nez v2, :cond_3

    .line 346
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to take screenshot. No main window for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "WindowManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    return-object v1

    .line 349
    :cond_3
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->hasFixedRotationTransform()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 354
    return-object v1

    .line 356
    :cond_4
    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, v0, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method

.method public clearSnapshotCache()V
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mCache:Lcom/android/server/wm/TaskSnapshotCache;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskSnapshotCache;->clearRunningCache()V

    .line 234
    return-void
.end method

.method createStartingSurface(Lcom/android/server/wm/ActivityRecord;Landroid/window/TaskSnapshot;)Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;
    .locals 1
    .param p1, "activity"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "snapshot"    # Landroid/window/TaskSnapshot;

    .line 242
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-static {v0, p1, p2}, Lcom/android/server/wm/TaskSnapshotSurface;->create(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/ActivityRecord;Landroid/window/TaskSnapshot;)Lcom/android/server/wm/TaskSnapshotSurface;

    move-result-object v0

    return-object v0
.end method

.method createTaskSnapshot(Lcom/android/server/wm/Task;FILandroid/graphics/Point;Landroid/window/TaskSnapshot$Builder;)Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;
    .locals 10
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "scaleFraction"    # F
    .param p3, "pixelFormat"    # I
    .param p4, "outTaskSize"    # Landroid/graphics/Point;
    .param p5, "builder"    # Landroid/window/TaskSnapshot$Builder;

    .line 415
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 419
    return-object v1

    .line 421
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Lcom/android/server/wm/Task;->getBounds(Landroid/graphics/Rect;)V

    .line 422
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mTmpRect:Landroid/graphics/Rect;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 425
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    .line 427
    .local v0, "imeWindow":Lcom/android/server/wm/WindowState;
    const/4 v3, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 428
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->shouldImeAttachedToApp()Z

    move-result v4

    if-nez v4, :cond_1

    move v4, v3

    goto :goto_0

    :cond_1
    move v4, v2

    .line 429
    .local v4, "excludeIme":Z
    :goto_0
    nop

    .line 430
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/DisplayPolicy;->getNavigationBar()Lcom/android/server/wm/WindowState;

    move-result-object v5

    .line 434
    .local v5, "navWindow":Lcom/android/server/wm/WindowState;
    if-eqz v5, :cond_2

    move v6, v3

    goto :goto_1

    :cond_2
    move v6, v2

    .line 435
    .local v6, "excludeNavBar":Z
    :goto_1
    if-eqz v4, :cond_3

    if-eqz v6, :cond_3

    .line 436
    const/4 v7, 0x2

    new-array v7, v7, [Landroid/view/SurfaceControl;

    .line 437
    .local v7, "excludeLayers":[Landroid/view/SurfaceControl;
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v8

    aput-object v8, v7, v2

    .line 438
    invoke-virtual {v5}, Lcom/android/server/wm/WindowState;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v8

    aput-object v8, v7, v3

    goto :goto_4

    .line 439
    .end local v7    # "excludeLayers":[Landroid/view/SurfaceControl;
    :cond_3
    if-nez v4, :cond_5

    if-eqz v6, :cond_4

    goto :goto_2

    .line 444
    :cond_4
    new-array v7, v2, [Landroid/view/SurfaceControl;

    .restart local v7    # "excludeLayers":[Landroid/view/SurfaceControl;
    goto :goto_4

    .line 440
    .end local v7    # "excludeLayers":[Landroid/view/SurfaceControl;
    :cond_5
    :goto_2
    new-array v7, v3, [Landroid/view/SurfaceControl;

    .line 441
    .restart local v7    # "excludeLayers":[Landroid/view/SurfaceControl;
    nop

    .line 442
    if-eqz v4, :cond_6

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v8

    goto :goto_3

    :cond_6
    invoke-virtual {v5}, Lcom/android/server/wm/WindowState;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v8

    :goto_3
    aput-object v8, v7, v2

    .line 446
    :goto_4
    if-nez v4, :cond_7

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v8

    if-eqz v8, :cond_7

    move v2, v3

    :cond_7
    invoke-virtual {p5, v2}, Landroid/window/TaskSnapshot$Builder;->setHasImeSurface(Z)Landroid/window/TaskSnapshot$Builder;

    .line 448
    nop

    .line 450
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v2

    iget-object v8, p0, Lcom/android/server/wm/TaskSnapshotController;->mTmpRect:Landroid/graphics/Rect;

    .line 449
    invoke-static {v2, v8, p2, p3, v7}, Landroid/view/SurfaceControl;->captureLayersExcluding(Landroid/view/SurfaceControl;Landroid/graphics/Rect;FI[Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;

    move-result-object v2

    .line 452
    .local v2, "screenshotBuffer":Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;
    if-eqz p4, :cond_8

    .line 453
    iget-object v8, p0, Lcom/android/server/wm/TaskSnapshotController;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    iput v8, p4, Landroid/graphics/Point;->x:I

    .line 454
    iget-object v8, p0, Lcom/android/server/wm/TaskSnapshotController;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    iput v8, p4, Landroid/graphics/Point;->y:I

    .line 456
    :cond_8
    if-nez v2, :cond_9

    move-object v8, v1

    goto :goto_5

    .line 457
    :cond_9
    invoke-virtual {v2}, Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v8

    :goto_5
    nop

    .line 458
    .local v8, "buffer":Landroid/hardware/HardwareBuffer;
    if-eqz v8, :cond_b

    invoke-virtual {v8}, Landroid/hardware/HardwareBuffer;->getWidth()I

    move-result v9

    if-le v9, v3, :cond_b

    invoke-virtual {v8}, Landroid/hardware/HardwareBuffer;->getHeight()I

    move-result v9

    if-gt v9, v3, :cond_a

    goto :goto_6

    .line 461
    :cond_a
    return-object v2

    .line 459
    :cond_b
    :goto_6
    return-object v1
.end method

.method createTaskSnapshot(Lcom/android/server/wm/Task;FLandroid/window/TaskSnapshot$Builder;)Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;
    .locals 6
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "scaleFraction"    # F
    .param p3, "builder"    # Landroid/window/TaskSnapshot$Builder;

    .line 372
    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/TaskSnapshotController;->createTaskSnapshot(Lcom/android/server/wm/Task;FILandroid/graphics/Point;Landroid/window/TaskSnapshot$Builder;)Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;

    move-result-object v0

    return-object v0
.end method

.method createTaskSnapshot(Lcom/android/server/wm/Task;Landroid/window/TaskSnapshot$Builder;)Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;
    .locals 7
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "builder"    # Landroid/window/TaskSnapshot$Builder;

    .line 362
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 363
    .local v0, "taskSize":Landroid/graphics/Point;
    iget v3, p0, Lcom/android/server/wm/TaskSnapshotController;->mHighResTaskSnapshotScale:F

    .line 364
    invoke-virtual {p2}, Landroid/window/TaskSnapshot$Builder;->getPixelFormat()I

    move-result v4

    .line 363
    move-object v1, p0

    move-object v2, p1

    move-object v5, v0

    move-object v6, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/TaskSnapshotController;->createTaskSnapshot(Lcom/android/server/wm/Task;FILandroid/graphics/Point;Landroid/window/TaskSnapshot$Builder;)Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;

    move-result-object v1

    .line 365
    .local v1, "taskSnapshot":Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;
    invoke-virtual {p2, v0}, Landroid/window/TaskSnapshot$Builder;->setTaskSize(Landroid/graphics/Point;)Landroid/window/TaskSnapshot$Builder;

    .line 366
    return-object v1
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 690
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mHighResTaskSnapshotScale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/TaskSnapshotController;->mHighResTaskSnapshotScale:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 691
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mCache:Lcom/android/server/wm/TaskSnapshotCache;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/TaskSnapshotCache;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 692
    return-void
.end method

.method getClosingTasks(Landroid/util/ArraySet;Landroid/util/ArraySet;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/Task;",
            ">;)V"
        }
    .end annotation

    .line 499
    .local p1, "closingApps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/ActivityRecord;>;"
    .local p2, "outClosingTasks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/Task;>;"
    invoke-virtual {p2}, Landroid/util/ArraySet;->clear()V

    .line 500
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_3

    .line 501
    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityRecord;

    .line 502
    .local v1, "activity":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    .line 503
    .local v2, "task":Lcom/android/server/wm/Task;
    if-nez v2, :cond_0

    goto :goto_1

    .line 508
    :cond_0
    invoke-virtual {v2}, Lcom/android/server/wm/Task;->isAnimatingByRecents()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 509
    iget-object v3, p0, Lcom/android/server/wm/TaskSnapshotController;->mSkipClosingAppSnapshotTasks:Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 513
    :cond_1
    invoke-virtual {v2}, Lcom/android/server/wm/Task;->isVisible()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/server/wm/TaskSnapshotController;->mSkipClosingAppSnapshotTasks:Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 514
    invoke-virtual {p2, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 500
    .end local v1    # "activity":Lcom/android/server/wm/ActivityRecord;
    .end local v2    # "task":Lcom/android/server/wm/Task;
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 517
    .end local v0    # "i":I
    :cond_3
    return-void
.end method

.method getSnapshot(IIZZ)Landroid/window/TaskSnapshot;
    .locals 2
    .param p1, "taskId"    # I
    .param p2, "userId"    # I
    .param p3, "restoreFromDisk"    # Z
    .param p4, "isLowResolution"    # Z

    .line 225
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mCache:Lcom/android/server/wm/TaskSnapshotCache;

    if-eqz p4, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotController;->mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

    .line 226
    invoke-virtual {v1}, Lcom/android/server/wm/TaskSnapshotPersister;->enableLowResSnapshots()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 225
    :goto_0
    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/android/server/wm/TaskSnapshotCache;->getSnapshot(IIZZ)Landroid/window/TaskSnapshot;

    move-result-object v0

    return-object v0
.end method

.method getSnapshotMode(Lcom/android/server/wm/Task;)I
    .locals 2
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 521
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getTopMostActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 522
    .local v0, "topChild":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isActivityTypeStandardOrUndefined()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isActivityTypeAssistant()Z

    move-result v1

    if-nez v1, :cond_0

    .line 523
    const/4 v1, 0x2

    return v1

    .line 524
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->shouldUseAppThemeSnapshot()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 525
    const/4 v1, 0x1

    return v1

    .line 527
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public synthetic lambda$screenTurningOff$2$TaskSnapshotController(ILcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;)V
    .locals 2
    .param p1, "displayId"    # I
    .param p2, "listener"    # Lcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;

    .line 636
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 637
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskSnapshotController;->snapshotForSleeping(I)V

    .line 638
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 640
    invoke-interface {p2}, Lcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;->onScreenOff()V

    .line 641
    nop

    .line 642
    return-void

    .line 638
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local p0    # "this":Lcom/android/server/wm/TaskSnapshotController;
    .end local p1    # "displayId":I
    .end local p2    # "listener":Lcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 640
    .restart local p0    # "this":Lcom/android/server/wm/TaskSnapshotController;
    .restart local p1    # "displayId":I
    .restart local p2    # "listener":Lcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;
    :catchall_1
    move-exception v0

    invoke-interface {p2}, Lcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;->onScreenOff()V

    .line 641
    throw v0
.end method

.method public synthetic lambda$snapshotForSleeping$3$TaskSnapshotController(Lcom/android/server/wm/Task;)V
    .locals 1
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 659
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isAnimatingByRecents()Z

    move-result v0

    if-nez v0, :cond_0

    .line 660
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mTmpTasks:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 662
    :cond_0
    return-void
.end method

.method notifyAppVisibilityChanged(Lcom/android/server/wm/ActivityRecord;Z)V
    .locals 2
    .param p1, "appWindowToken"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "visible"    # Z

    .line 148
    if-nez p2, :cond_0

    .line 149
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/server/wm/ActivityRecord;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wm/TaskSnapshotController;->handleClosingApps(Landroid/util/ArraySet;)V

    .line 151
    :cond_0
    return-void
.end method

.method notifyTaskRemovedFromRecents(II)V
    .locals 1
    .param p1, "taskId"    # I
    .param p2, "userId"    # I

    .line 600
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mCache:Lcom/android/server/wm/TaskSnapshotCache;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/TaskSnapshotCache;->onTaskRemoved(I)V

    .line 601
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/TaskSnapshotPersister;->onTaskRemovedFromRecents(II)V

    .line 602
    return-void
.end method

.method onAppDied(Lcom/android/server/wm/ActivityRecord;)V
    .locals 1
    .param p1, "activity"    # Lcom/android/server/wm/ActivityRecord;

    .line 596
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mCache:Lcom/android/server/wm/TaskSnapshotCache;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/TaskSnapshotCache;->onAppDied(Lcom/android/server/wm/ActivityRecord;)V

    .line 597
    return-void
.end method

.method onAppRemoved(Lcom/android/server/wm/ActivityRecord;)V
    .locals 1
    .param p1, "activity"    # Lcom/android/server/wm/ActivityRecord;

    .line 589
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mCache:Lcom/android/server/wm/TaskSnapshotCache;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/TaskSnapshotCache;->onAppRemoved(Lcom/android/server/wm/ActivityRecord;)V

    .line 590
    return-void
.end method

.method onTransitionStarting(Lcom/android/server/wm/DisplayContent;)V
    .locals 1
    .param p1, "displayContent"    # Lcom/android/server/wm/DisplayContent;

    .line 141
    iget-object v0, p1, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    invoke-direct {p0, v0}, Lcom/android/server/wm/TaskSnapshotController;->handleClosingApps(Landroid/util/ArraySet;)V

    .line 142
    return-void
.end method

.method prepareTaskSnapshot(Lcom/android/server/wm/Task;ILandroid/window/TaskSnapshot$Builder;)Z
    .locals 9
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "pixelFormat"    # I
    .param p3, "builder"    # Landroid/window/TaskSnapshot$Builder;

    .line 278
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskSnapshotController;->checkIfReadyToSnapshot(Lcom/android/server/wm/Task;)Landroid/util/Pair;

    move-result-object v0

    .line 279
    .local v0, "result":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/WindowState;>;"
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 280
    return v1

    .line 282
    :cond_0
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    .line 283
    .local v2, "activity":Lcom/android/server/wm/ActivityRecord;
    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/wm/WindowState;

    .line 284
    .local v3, "mainWindow":Lcom/android/server/wm/WindowState;
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    .line 285
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getInsetsStateWithVisibilityOverride()Landroid/view/InsetsState;

    move-result-object v5

    .line 284
    invoke-static {v4, v5}, Lcom/android/server/wm/TaskSnapshotController;->getSystemBarInsets(Landroid/graphics/Rect;Landroid/view/InsetsState;)Landroid/graphics/Rect;

    move-result-object v4

    .line 286
    .local v4, "contentInsets":Landroid/graphics/Rect;
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getLetterboxInsets()Landroid/graphics/Rect;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/wm/utils/InsetUtils;->addInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 288
    const/4 v5, 0x1

    invoke-virtual {p3, v5}, Landroid/window/TaskSnapshot$Builder;->setIsRealSnapshot(Z)Landroid/window/TaskSnapshot$Builder;

    .line 289
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {p3, v6, v7}, Landroid/window/TaskSnapshot$Builder;->setId(J)Landroid/window/TaskSnapshot$Builder;

    .line 290
    invoke-virtual {p3, v4}, Landroid/window/TaskSnapshot$Builder;->setContentInsets(Landroid/graphics/Rect;)Landroid/window/TaskSnapshot$Builder;

    .line 292
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->format:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_1

    move v6, v5

    goto :goto_0

    :cond_1
    move v6, v1

    .line 293
    .local v6, "isWindowTranslucent":Z
    :goto_0
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->hasWallpaper()Z

    move-result v7

    .line 295
    .local v7, "isShowWallpaper":Z
    if-nez p2, :cond_4

    .line 297
    iget-object v8, p0, Lcom/android/server/wm/TaskSnapshotController;->mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

    .line 296
    invoke-virtual {v8}, Lcom/android/server/wm/TaskSnapshotPersister;->use16BitFormat()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->fillsParent()Z

    move-result v8

    if-eqz v8, :cond_3

    if-eqz v6, :cond_2

    if-nez v7, :cond_3

    .line 298
    :cond_2
    const/4 v8, 0x4

    goto :goto_1

    .line 299
    :cond_3
    move v8, v5

    :goto_1
    move p2, v8

    .line 302
    :cond_4
    invoke-static {p2}, Landroid/graphics/PixelFormat;->formatHasAlpha(I)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 303
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->fillsParent()Z

    move-result v8

    if-eqz v8, :cond_5

    if-eqz v6, :cond_6

    :cond_5
    move v1, v5

    goto :goto_2

    :cond_6
    nop

    .line 305
    .local v1, "isTranslucent":Z
    :goto_2
    iget-object v8, v2, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    invoke-virtual {p3, v8}, Landroid/window/TaskSnapshot$Builder;->setTopActivityComponent(Landroid/content/ComponentName;)Landroid/window/TaskSnapshot$Builder;

    .line 306
    invoke-virtual {p3, p2}, Landroid/window/TaskSnapshot$Builder;->setPixelFormat(I)Landroid/window/TaskSnapshot$Builder;

    .line 307
    invoke-virtual {p3, v1}, Landroid/window/TaskSnapshot$Builder;->setIsTranslucent(Z)Landroid/window/TaskSnapshot$Builder;

    .line 308
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/wm/Task;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v8, v8, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p3, v8}, Landroid/window/TaskSnapshot$Builder;->setOrientation(I)Landroid/window/TaskSnapshot$Builder;

    .line 309
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/wm/DisplayContent;->getRotation()I

    move-result v8

    invoke-virtual {p3, v8}, Landroid/window/TaskSnapshot$Builder;->setRotation(I)Landroid/window/TaskSnapshot$Builder;

    .line 310
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v8

    invoke-virtual {p3, v8}, Landroid/window/TaskSnapshot$Builder;->setWindowingMode(I)Landroid/window/TaskSnapshot$Builder;

    .line 311
    invoke-direct {p0, p1}, Lcom/android/server/wm/TaskSnapshotController;->getAppearance(Lcom/android/server/wm/Task;)I

    move-result v8

    invoke-virtual {p3, v8}, Landroid/window/TaskSnapshot$Builder;->setAppearance(I)Landroid/window/TaskSnapshot$Builder;

    .line 312
    return v5
.end method

.method removeObsoleteTaskFiles(Landroid/util/ArraySet;[I)V
    .locals 1
    .param p2, "runningUserIds"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;[I)V"
        }
    .end annotation

    .line 612
    .local p1, "persistentTaskIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/TaskSnapshotPersister;->removeObsoleteFiles(Landroid/util/ArraySet;[I)V

    .line 613
    return-void
.end method

.method removeSnapshotCache(I)V
    .locals 1
    .param p1, "taskId"    # I

    .line 605
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mCache:Lcom/android/server/wm/TaskSnapshotCache;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/TaskSnapshotCache;->removeRunningEntry(I)V

    .line 606
    return-void
.end method

.method screenTurningOff(ILcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;)V
    .locals 2
    .param p1, "displayId"    # I
    .param p2, "listener"    # Lcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;

    .line 628
    invoke-virtual {p0}, Lcom/android/server/wm/TaskSnapshotController;->shouldDisableSnapshots()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 629
    invoke-interface {p2}, Lcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;->onScreenOff()V

    .line 630
    return-void

    .line 634
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/wm/TaskSnapshotController$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/wm/TaskSnapshotController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/TaskSnapshotController;ILcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 643
    return-void
.end method

.method setPersisterPaused(Z)V
    .locals 1
    .param p1, "paused"    # Z

    .line 621
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/TaskSnapshotPersister;->setPaused(Z)V

    .line 622
    return-void
.end method

.method shouldDisableSnapshots()Z
    .locals 1

    .line 491
    iget-boolean v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mIsRunningOnWear:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mIsRunningOnTv:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mIsRunningOnIoT:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method snapshotForSleeping(I)V
    .locals 3
    .param p1, "displayId"    # I

    .line 647
    invoke-virtual {p0}, Lcom/android/server/wm/TaskSnapshotController;->shouldDisableSnapshots()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayEnabled:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 650
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 651
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-nez v0, :cond_1

    .line 652
    return-void

    .line 654
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotController;->mTmpTasks:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    .line 655
    new-instance v1, Lcom/android/server/wm/TaskSnapshotController$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/android/server/wm/TaskSnapshotController$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/wm/TaskSnapshotController;)V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayContent;->forAllTasks(Ljava/util/function/Consumer;)V

    .line 665
    if-nez p1, :cond_2

    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget-object v2, p0, Lcom/android/server/wm/TaskSnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v2, v2, Lcom/android/server/wm/WindowManagerService;->mCurrentUserId:I

    .line 666
    invoke-interface {v1, v2}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardSecure(I)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 667
    .local v1, "allowSnapshotHome":Z
    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/TaskSnapshotController;->mTmpTasks:Landroid/util/ArraySet;

    invoke-direct {p0, v2, v1}, Lcom/android/server/wm/TaskSnapshotController;->snapshotTasks(Landroid/util/ArraySet;Z)V

    .line 668
    return-void

    .line 648
    .end local v0    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v1    # "allowSnapshotHome":Z
    :cond_3
    :goto_1
    return-void
.end method

.method snapshotImeFromAttachedTask(Lcom/android/server/wm/Task;)Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;
    .locals 2
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 403
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskSnapshotController;->checkIfReadyToSnapshot(Lcom/android/server/wm/Task;)Landroid/util/Pair;

    move-result-object v0

    if-nez v0, :cond_0

    .line 404
    const/4 v0, 0x0

    return-object v0

    .line 406
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskSnapshotPersister;->use16BitFormat()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 407
    const/4 v0, 0x4

    goto :goto_0

    .line 408
    :cond_1
    const/4 v0, 0x1

    :goto_0
    nop

    .line 409
    .local v0, "pixelFormat":I
    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/TaskSnapshotController;->createImeSnapshot(Lcom/android/server/wm/Task;I)Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;

    move-result-object v1

    return-object v1
.end method

.method snapshotTask(Lcom/android/server/wm/Task;)Landroid/window/TaskSnapshot;
    .locals 1
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 466
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/TaskSnapshotController;->snapshotTask(Lcom/android/server/wm/Task;I)Landroid/window/TaskSnapshot;

    move-result-object v0

    return-object v0
.end method

.method snapshotTask(Lcom/android/server/wm/Task;I)Landroid/window/TaskSnapshot;
    .locals 3
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "pixelFormat"    # I

    .line 471
    new-instance v0, Landroid/window/TaskSnapshot$Builder;

    invoke-direct {v0}, Landroid/window/TaskSnapshot$Builder;-><init>()V

    .line 473
    .local v0, "builder":Landroid/window/TaskSnapshot$Builder;
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wm/TaskSnapshotController;->prepareTaskSnapshot(Lcom/android/server/wm/Task;ILandroid/window/TaskSnapshot$Builder;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 475
    return-object v2

    .line 478
    :cond_0
    nop

    .line 479
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/TaskSnapshotController;->createTaskSnapshot(Lcom/android/server/wm/Task;Landroid/window/TaskSnapshot$Builder;)Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;

    move-result-object v1

    .line 481
    .local v1, "screenshotBuffer":Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;
    if-nez v1, :cond_1

    .line 483
    return-object v2

    .line 485
    :cond_1
    invoke-virtual {v1}, Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/window/TaskSnapshot$Builder;->setSnapshot(Landroid/hardware/HardwareBuffer;)Landroid/window/TaskSnapshot$Builder;

    .line 486
    invoke-virtual {v1}, Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/window/TaskSnapshot$Builder;->setColorSpace(Landroid/graphics/ColorSpace;)Landroid/window/TaskSnapshot$Builder;

    .line 487
    invoke-virtual {v0}, Landroid/window/TaskSnapshot$Builder;->build()Landroid/window/TaskSnapshot;

    move-result-object v2

    return-object v2
.end method

.method snapshotTasks(Landroid/util/ArraySet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/Task;",
            ">;)V"
        }
    .end annotation

    .line 175
    .local p1, "tasks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/Task;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/TaskSnapshotController;->snapshotTasks(Landroid/util/ArraySet;Z)V

    .line 176
    return-void
.end method

.method systemReady()V
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskSnapshotPersister;->start()V

    .line 138
    return-void
.end method
