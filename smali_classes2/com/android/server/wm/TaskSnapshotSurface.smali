.class Lcom/android/server/wm/TaskSnapshotSurface;
.super Ljava/lang/Object;
.source "TaskSnapshotSurface.java"

# interfaces
.implements Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;,
        Lcom/android/server/wm/TaskSnapshotSurface$Window;
    }
.end annotation


# static fields
.field static final FLAG_INHERIT_EXCLUDES:I = 0x3186e038

.field private static final MSG_REPORT_DRAW:I = 0x0

.field private static final PRIVATE_FLAG_INHERITS:I = 0x20000

.field private static final SIZE_MISMATCH_MINIMUM_TIME_MS:J = 0x1c2L

.field private static final TAG:Ljava/lang/String; = "WindowManager"

.field private static final TITLE_FORMAT:Ljava/lang/String; = "SnapshotStartingWindow for taskId=%s"

.field private static sHandler:Landroid/os/Handler;

.field private static final sTmpSurfaceSize:Landroid/graphics/Point;


# instance fields
.field private final mActivityType:I

.field private final mBackgroundPaint:Landroid/graphics/Paint;

.field private final mDisplayId:I

.field private final mFrame:Landroid/graphics/Rect;

.field private final mHandler:Landroid/os/Handler;

.field private mHasDrawn:Z

.field private final mOrientationOnCreation:I

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private final mSession:Landroid/view/IWindowSession;

.field private mShownTime:J

.field private mSizeMismatch:Z

.field private mSnapshot:Landroid/window/TaskSnapshot;

.field private final mSnapshotMatrix:Landroid/graphics/Matrix;

.field private final mStatusBarColor:I

.field private final mSurfaceControl:Landroid/view/SurfaceControl;

.field final mSystemBarBackgroundPainter:Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;

.field private final mSystemBarInsets:Landroid/graphics/Rect;

.field private final mTaskBounds:Landroid/graphics/Rect;

.field private final mTitle:Ljava/lang/CharSequence;

.field private final mTmpDstFrame:Landroid/graphics/RectF;

.field private final mTmpFloat9:[F

.field private final mTmpSnapshotSize:Landroid/graphics/RectF;

.field private final mTransaction:Landroid/view/SurfaceControl$Transaction;

.field private final mWindow:Lcom/android/server/wm/TaskSnapshotSurface$Window;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 126
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    sput-object v0, Lcom/android/server/wm/TaskSnapshotSurface;->sTmpSurfaceSize:Landroid/graphics/Point;

    .line 482
    new-instance v0, Lcom/android/server/wm/TaskSnapshotSurface$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/wm/TaskSnapshotSurface$1;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/android/server/wm/TaskSnapshotSurface;->sHandler:Landroid/os/Handler;

    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/WindowManagerService;ILcom/android/server/wm/TaskSnapshotSurface$Window;Landroid/view/SurfaceControl;Landroid/window/TaskSnapshot;Ljava/lang/CharSequence;Landroid/app/ActivityManager$TaskDescription;IIILandroid/graphics/Rect;IILandroid/view/InsetsState;)V
    .locals 16
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "displayId"    # I
    .param p3, "window"    # Lcom/android/server/wm/TaskSnapshotSurface$Window;
    .param p4, "surfaceControl"    # Landroid/view/SurfaceControl;
    .param p5, "snapshot"    # Landroid/window/TaskSnapshot;
    .param p6, "title"    # Ljava/lang/CharSequence;
    .param p7, "taskDescription"    # Landroid/app/ActivityManager$TaskDescription;
    .param p8, "appearance"    # I
    .param p9, "windowFlags"    # I
    .param p10, "windowPrivateFlags"    # I
    .param p11, "taskBounds"    # Landroid/graphics/Rect;
    .param p12, "currentOrientation"    # I
    .param p13, "activityType"    # I
    .param p14, "insetsState"    # Landroid/view/InsetsState;

    .line 262
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 134
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, v0, Lcom/android/server/wm/TaskSnapshotSurface;->mFrame:Landroid/graphics/Rect;

    .line 135
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, v0, Lcom/android/server/wm/TaskSnapshotSurface;->mSystemBarInsets:Landroid/graphics/Rect;

    .line 137
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, v0, Lcom/android/server/wm/TaskSnapshotSurface;->mTmpSnapshotSize:Landroid/graphics/RectF;

    .line 138
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, v0, Lcom/android/server/wm/TaskSnapshotSurface;->mTmpDstFrame:Landroid/graphics/RectF;

    .line 144
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, v0, Lcom/android/server/wm/TaskSnapshotSurface;->mBackgroundPaint:Landroid/graphics/Paint;

    .line 150
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    iput-object v3, v0, Lcom/android/server/wm/TaskSnapshotSurface;->mSnapshotMatrix:Landroid/graphics/Matrix;

    .line 151
    const/16 v3, 0x9

    new-array v3, v3, [F

    iput-object v3, v0, Lcom/android/server/wm/TaskSnapshotSurface;->mTmpFloat9:[F

    .line 263
    iput-object v1, v0, Lcom/android/server/wm/TaskSnapshotSurface;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 264
    move/from16 v3, p2

    iput v3, v0, Lcom/android/server/wm/TaskSnapshotSurface;->mDisplayId:I

    .line 265
    new-instance v4, Landroid/os/Handler;

    iget-object v5, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService$H;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v4, v0, Lcom/android/server/wm/TaskSnapshotSurface;->mHandler:Landroid/os/Handler;

    .line 266
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowSession()Landroid/view/IWindowSession;

    move-result-object v4

    iput-object v4, v0, Lcom/android/server/wm/TaskSnapshotSurface;->mSession:Landroid/view/IWindowSession;

    .line 267
    move-object/from16 v4, p3

    iput-object v4, v0, Lcom/android/server/wm/TaskSnapshotSurface;->mWindow:Lcom/android/server/wm/TaskSnapshotSurface$Window;

    .line 268
    move-object/from16 v5, p4

    iput-object v5, v0, Lcom/android/server/wm/TaskSnapshotSurface;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 269
    move-object/from16 v6, p5

    iput-object v6, v0, Lcom/android/server/wm/TaskSnapshotSurface;->mSnapshot:Landroid/window/TaskSnapshot;

    .line 270
    move-object/from16 v7, p6

    iput-object v7, v0, Lcom/android/server/wm/TaskSnapshotSurface;->mTitle:Ljava/lang/CharSequence;

    .line 271
    invoke-virtual/range {p7 .. p7}, Landroid/app/ActivityManager$TaskDescription;->getBackgroundColor()I

    move-result v8

    .line 272
    .local v8, "backgroundColor":I
    if-eqz v8, :cond_0

    move v9, v8

    goto :goto_0

    :cond_0
    const/4 v9, -0x1

    :goto_0
    invoke-virtual {v2, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 273
    move-object/from16 v2, p11

    iput-object v2, v0, Lcom/android/server/wm/TaskSnapshotSurface;->mTaskBounds:Landroid/graphics/Rect;

    .line 274
    new-instance v15, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;

    const/high16 v14, 0x3f800000    # 1.0f

    move-object v9, v15

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p8

    move-object/from16 v13, p7

    move-object v2, v15

    move-object/from16 v15, p14

    invoke-direct/range {v9 .. v15}, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;-><init>(IIILandroid/app/ActivityManager$TaskDescription;FLandroid/view/InsetsState;)V

    iput-object v2, v0, Lcom/android/server/wm/TaskSnapshotSurface;->mSystemBarBackgroundPainter:Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;

    .line 276
    invoke-virtual/range {p7 .. p7}, Landroid/app/ActivityManager$TaskDescription;->getStatusBarColor()I

    move-result v2

    iput v2, v0, Lcom/android/server/wm/TaskSnapshotSurface;->mStatusBarColor:I

    .line 277
    move/from16 v2, p12

    iput v2, v0, Lcom/android/server/wm/TaskSnapshotSurface;->mOrientationOnCreation:I

    .line 278
    move/from16 v9, p13

    iput v9, v0, Lcom/android/server/wm/TaskSnapshotSurface;->mActivityType:I

    .line 279
    iget-object v10, v1, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    invoke-interface {v10}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/SurfaceControl$Transaction;

    iput-object v10, v0, Lcom/android/server/wm/TaskSnapshotSurface;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 280
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/TaskSnapshotSurface;)Lcom/android/server/wm/WindowManagerService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/TaskSnapshotSurface;

    .line 96
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mService:Lcom/android/server/wm/WindowManagerService;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/wm/TaskSnapshotSurface;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/TaskSnapshotSurface;

    .line 96
    iget-boolean v0, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mHasDrawn:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/wm/TaskSnapshotSurface;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/TaskSnapshotSurface;

    .line 96
    invoke-direct {p0}, Lcom/android/server/wm/TaskSnapshotSurface;->reportDrawn()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/wm/TaskSnapshotSurface;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/TaskSnapshotSurface;

    .line 96
    iget v0, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mOrientationOnCreation:I

    return v0
.end method

.method static synthetic access$400()Landroid/os/Handler;
    .locals 1

    .line 96
    sget-object v0, Lcom/android/server/wm/TaskSnapshotSurface;->sHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static create(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/ActivityRecord;Landroid/window/TaskSnapshot;)Lcom/android/server/wm/TaskSnapshotSurface;
    .locals 1
    .param p0, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p1, "activity"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "snapshot"    # Landroid/window/TaskSnapshot;

    .line 155
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowSession()Landroid/view/IWindowSession;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/android/server/wm/TaskSnapshotSurface;->create(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/ActivityRecord;Landroid/window/TaskSnapshot;Landroid/view/IWindowSession;)Lcom/android/server/wm/TaskSnapshotSurface;

    move-result-object v0

    return-object v0
.end method

.method static create(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/ActivityRecord;Landroid/window/TaskSnapshot;Landroid/view/IWindowSession;)Lcom/android/server/wm/TaskSnapshotSurface;
    .locals 47
    .param p0, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p1, "activity"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "snapshot"    # Landroid/window/TaskSnapshot;
    .param p3, "session"    # Landroid/view/IWindowSession;

    .line 162
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    move-object v15, v0

    .line 163
    .local v15, "layoutParams":Landroid/view/WindowManager$LayoutParams;
    new-instance v0, Lcom/android/server/wm/TaskSnapshotSurface$Window;

    invoke-direct {v0}, Lcom/android/server/wm/TaskSnapshotSurface$Window;-><init>()V

    move-object v14, v0

    .line 164
    .local v14, "window":Lcom/android/server/wm/TaskSnapshotSurface$Window;
    move-object/from16 v13, p3

    invoke-virtual {v14, v13}, Lcom/android/server/wm/TaskSnapshotSurface$Window;->setSession(Landroid/view/IWindowSession;)V

    .line 165
    new-instance v29, Landroid/view/SurfaceControl;

    invoke-direct/range {v29 .. v29}, Landroid/view/SurfaceControl;-><init>()V

    .line 166
    .local v29, "surfaceControl":Landroid/view/SurfaceControl;
    new-instance v0, Landroid/window/ClientWindowFrames;

    invoke-direct {v0}, Landroid/window/ClientWindowFrames;-><init>()V

    move-object v12, v0

    .line 168
    .local v12, "tmpFrames":Landroid/window/ClientWindowFrames;
    new-instance v6, Landroid/view/InsetsState;

    invoke-direct {v6}, Landroid/view/InsetsState;-><init>()V

    .line 169
    .local v6, "mTmpInsetsState":Landroid/view/InsetsState;
    const/4 v0, 0x0

    new-array v11, v0, [Landroid/view/InsetsSourceControl;

    .line 170
    .local v11, "mTempControls":[Landroid/view/InsetsSourceControl;
    new-instance v20, Landroid/util/MergedConfiguration;

    invoke-direct/range {v20 .. v20}, Landroid/util/MergedConfiguration;-><init>()V

    .line 171
    .local v20, "tmpMergedConfiguration":Landroid/util/MergedConfiguration;
    new-instance v1, Landroid/app/ActivityManager$TaskDescription;

    invoke-direct {v1}, Landroid/app/ActivityManager$TaskDescription;-><init>()V

    move-object v10, v1

    .line 172
    .local v10, "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    const/4 v1, -0x1

    invoke-virtual {v10, v1}, Landroid/app/ActivityManager$TaskDescription;->setBackgroundColor(I)V

    .line 180
    move-object/from16 v9, p0

    iget-object v2, v9, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 181
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v3

    .line 182
    .local v3, "mainWindow":Lcom/android/server/wm/WindowState;
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v4

    .line 183
    .local v4, "task":Lcom/android/server/wm/Task;
    nop

    .line 184
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/Task;->getTopFullscreenActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v5

    .line 186
    .local v5, "topFullscreenActivity":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->getTopFullscreenOpaqueWindow()Lcom/android/server/wm/WindowState;

    move-result-object v7

    move-object v8, v7

    .line 187
    .local v8, "topFullscreenOpaqueWindow":Lcom/android/server/wm/WindowState;
    iget-object v7, v8, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 188
    .local v7, "attrs":Landroid/view/WindowManager$LayoutParams;
    iget-object v0, v7, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget v0, v0, Landroid/view/InsetsFlags;->appearance:I

    move/from16 v40, v0

    .line 189
    .local v40, "appearance":I
    iget v0, v7, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v41, v0

    .line 190
    .local v41, "windowFlags":I
    iget v0, v7, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    move/from16 v42, v0

    .line 192
    .local v42, "windowPrivateFlags":I
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    iput-object v0, v15, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 193
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    iput v0, v15, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 194
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    iput v0, v15, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 195
    const/4 v0, 0x3

    iput v0, v15, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 196
    invoke-virtual/range {p2 .. p2}, Landroid/window/TaskSnapshot;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/HardwareBuffer;->getFormat()I

    move-result v0

    iput v0, v15, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 197
    const v0, -0x3186e039

    and-int v0, v41, v0

    or-int/lit8 v0, v0, 0x8

    or-int/lit8 v0, v0, 0x10

    iput v0, v15, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 202
    const/high16 v0, 0x20000

    and-int v0, v42, v0

    const/high16 v17, 0x20000000

    or-int v0, v0, v17

    const/high16 v17, 0x2000000

    or-int v0, v0, v17

    iput v0, v15, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 204
    move-object/from16 v13, p1

    iget-object v0, v13, Lcom/android/server/wm/ActivityRecord;->token:Landroid/os/IBinder;

    iput-object v0, v15, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 205
    iput v1, v15, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 206
    iput v1, v15, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 207
    iget-object v0, v15, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    move/from16 v1, v40

    .end local v40    # "appearance":I
    .local v1, "appearance":I
    iput v1, v0, Landroid/view/InsetsFlags;->appearance:I

    .line 208
    iget-object v0, v15, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    move/from16 v17, v1

    .end local v1    # "appearance":I
    .local v17, "appearance":I
    iget-object v1, v7, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget v1, v1, Landroid/view/InsetsFlags;->behavior:I

    iput v1, v0, Landroid/view/InsetsFlags;->behavior:I

    .line 209
    iget v0, v7, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    iput v0, v15, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 210
    invoke-virtual {v7}, Landroid/view/WindowManager$LayoutParams;->getFitInsetsTypes()I

    move-result v0

    invoke-virtual {v15, v0}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    .line 211
    invoke-virtual {v7}, Landroid/view/WindowManager$LayoutParams;->getFitInsetsSides()I

    move-result v0

    invoke-virtual {v15, v0}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsSides(I)V

    .line 212
    invoke-virtual {v7}, Landroid/view/WindowManager$LayoutParams;->isFitInsetsIgnoringVisibility()Z

    move-result v0

    invoke-virtual {v15, v0}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsIgnoringVisibility(Z)V

    .line 214
    const-string v0, "SnapshotStartingWindow for taskId=%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    move-object/from16 v18, v3

    .end local v3    # "mainWindow":Lcom/android/server/wm/WindowState;
    .local v18, "mainWindow":Lcom/android/server/wm/WindowState;
    iget v3, v4, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v16, 0x0

    aput-object v3, v1, v16

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 216
    invoke-virtual {v4}, Lcom/android/server/wm/Task;->getTaskDescription()Landroid/app/ActivityManager$TaskDescription;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 217
    .local v0, "td":Landroid/app/ActivityManager$TaskDescription;
    if-eqz v0, :cond_0

    .line 218
    :try_start_1
    invoke-virtual {v10, v0}, Landroid/app/ActivityManager$TaskDescription;->copyFromPreserveHiddenFields(Landroid/app/ActivityManager$TaskDescription;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 226
    .end local v0    # "td":Landroid/app/ActivityManager$TaskDescription;
    .end local v4    # "task":Lcom/android/server/wm/Task;
    .end local v5    # "topFullscreenActivity":Lcom/android/server/wm/ActivityRecord;
    .end local v7    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .end local v8    # "topFullscreenOpaqueWindow":Lcom/android/server/wm/WindowState;
    .end local v17    # "appearance":I
    .end local v18    # "mainWindow":Lcom/android/server/wm/WindowState;
    .end local v41    # "windowFlags":I
    .end local v42    # "windowPrivateFlags":I
    :catchall_0
    move-exception v0

    move-object v4, v10

    move-object v5, v11

    move-object v7, v12

    move-object v8, v14

    move-object v9, v15

    goto/16 :goto_3

    .line 220
    .restart local v0    # "td":Landroid/app/ActivityManager$TaskDescription;
    .restart local v4    # "task":Lcom/android/server/wm/Task;
    .restart local v5    # "topFullscreenActivity":Lcom/android/server/wm/ActivityRecord;
    .restart local v7    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .restart local v8    # "topFullscreenOpaqueWindow":Lcom/android/server/wm/WindowState;
    .restart local v17    # "appearance":I
    .restart local v18    # "mainWindow":Lcom/android/server/wm/WindowState;
    .restart local v41    # "windowFlags":I
    .restart local v42    # "windowPrivateFlags":I
    :cond_0
    :goto_0
    :try_start_2
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    move-object v3, v1

    .line 221
    .local v3, "taskBounds":Landroid/graphics/Rect;
    invoke-virtual {v4, v3}, Lcom/android/server/wm/Task;->getBounds(Landroid/graphics/Rect;)V

    .line 222
    invoke-virtual {v8}, Lcom/android/server/wm/WindowState;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    move/from16 v37, v1

    .line 223
    .local v37, "currentOrientation":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getActivityType()I

    move-result v38

    .line 224
    .local v38, "activityType":I
    invoke-virtual {v8}, Lcom/android/server/wm/WindowState;->getInsetsStateWithVisibilityOverride()Landroid/view/InsetsState;

    move-result-object v1

    move-object v7, v1

    .line 226
    .end local v0    # "td":Landroid/app/ActivityManager$TaskDescription;
    .end local v4    # "task":Lcom/android/server/wm/Task;
    .end local v5    # "topFullscreenActivity":Lcom/android/server/wm/ActivityRecord;
    .end local v18    # "mainWindow":Lcom/android/server/wm/WindowState;
    .local v7, "insetsState":Landroid/view/InsetsState;
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 227
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v40

    .line 229
    .local v40, "displayId":I
    const/16 v4, 0x8

    const/4 v0, 0x0

    move/from16 v43, v17

    .end local v17    # "appearance":I
    .local v43, "appearance":I
    move-object/from16 v1, p3

    move-object v2, v14

    move-object/from16 v44, v3

    .end local v3    # "taskBounds":Landroid/graphics/Rect;
    .local v44, "taskBounds":Landroid/graphics/Rect;
    move-object v3, v15

    move/from16 v5, v40

    move-object/from16 v45, v7

    .end local v7    # "insetsState":Landroid/view/InsetsState;
    .local v45, "insetsState":Landroid/view/InsetsState;
    move-object v7, v0

    move-object/from16 v46, v8

    .end local v8    # "topFullscreenOpaqueWindow":Lcom/android/server/wm/WindowState;
    .local v46, "topFullscreenOpaqueWindow":Lcom/android/server/wm/WindowState;
    move-object v8, v6

    move-object v9, v11

    :try_start_3
    invoke-interface/range {v1 .. v9}, Landroid/view/IWindowSession;->addToDisplay(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;IILandroid/view/InsetsState;Landroid/view/InputChannel;Landroid/view/InsetsState;[Landroid/view/InsetsSourceControl;)I

    move-result v0

    .line 231
    .local v0, "res":I
    if-gez v0, :cond_1

    .line 232
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to add snapshot starting window res="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 233
    const/4 v1, 0x0

    return-object v1

    .line 237
    .end local v0    # "res":I
    :cond_1
    goto :goto_1

    .line 235
    :catch_0
    move-exception v0

    .line 238
    :goto_1
    new-instance v0, Lcom/android/server/wm/TaskSnapshotSurface;

    .line 239
    invoke-virtual {v15}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v31

    move-object/from16 v25, v0

    move-object/from16 v26, p0

    move/from16 v27, v40

    move-object/from16 v28, v14

    move-object/from16 v30, p2

    move-object/from16 v32, v10

    move/from16 v33, v43

    move/from16 v34, v41

    move/from16 v35, v42

    move-object/from16 v36, v44

    move-object/from16 v39, v45

    invoke-direct/range {v25 .. v39}, Lcom/android/server/wm/TaskSnapshotSurface;-><init>(Lcom/android/server/wm/WindowManagerService;ILcom/android/server/wm/TaskSnapshotSurface$Window;Landroid/view/SurfaceControl;Landroid/window/TaskSnapshot;Ljava/lang/CharSequence;Landroid/app/ActivityManager$TaskDescription;IIILandroid/graphics/Rect;IILandroid/view/InsetsState;)V

    move-object v1, v0

    .line 242
    .local v1, "snapshotSurface":Lcom/android/server/wm/TaskSnapshotSurface;
    invoke-virtual {v14, v1}, Lcom/android/server/wm/TaskSnapshotSurface$Window;->setOuter(Lcom/android/server/wm/TaskSnapshotSurface;)V

    .line 244
    const/4 v0, -0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/16 v16, 0x0

    const-wide/16 v17, -0x1

    :try_start_4
    sget-object v24, Lcom/android/server/wm/TaskSnapshotSurface;->sTmpSurfaceSize:Landroid/graphics/Point;
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2

    move-object v4, v10

    .end local v10    # "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    .local v4, "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    move-object/from16 v10, p3

    move-object v5, v11

    .end local v11    # "mTempControls":[Landroid/view/InsetsSourceControl;
    .local v5, "mTempControls":[Landroid/view/InsetsSourceControl;
    move-object v11, v14

    move-object v7, v12

    .end local v12    # "tmpFrames":Landroid/window/ClientWindowFrames;
    .local v7, "tmpFrames":Landroid/window/ClientWindowFrames;
    move-object v12, v15

    move v13, v0

    move-object v8, v14

    .end local v14    # "window":Lcom/android/server/wm/TaskSnapshotSurface$Window;
    .local v8, "window":Lcom/android/server/wm/TaskSnapshotSurface$Window;
    move v14, v2

    move-object v9, v15

    .end local v15    # "layoutParams":Landroid/view/WindowManager$LayoutParams;
    .local v9, "layoutParams":Landroid/view/WindowManager$LayoutParams;
    move v15, v3

    move-object/from16 v19, v7

    move-object/from16 v21, v29

    move-object/from16 v22, v6

    move-object/from16 v23, v5

    :try_start_5
    invoke-interface/range {v10 .. v24}, Landroid/view/IWindowSession;->relayout(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;IIIIJLandroid/window/ClientWindowFrames;Landroid/util/MergedConfiguration;Landroid/view/SurfaceControl;Landroid/view/InsetsState;[Landroid/view/InsetsSourceControl;Landroid/graphics/Point;)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    .line 249
    goto :goto_2

    .line 247
    :catch_1
    move-exception v0

    goto :goto_2

    .end local v4    # "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    .end local v5    # "mTempControls":[Landroid/view/InsetsSourceControl;
    .end local v7    # "tmpFrames":Landroid/window/ClientWindowFrames;
    .end local v8    # "window":Lcom/android/server/wm/TaskSnapshotSurface$Window;
    .end local v9    # "layoutParams":Landroid/view/WindowManager$LayoutParams;
    .restart local v10    # "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    .restart local v11    # "mTempControls":[Landroid/view/InsetsSourceControl;
    .restart local v12    # "tmpFrames":Landroid/window/ClientWindowFrames;
    .restart local v14    # "window":Lcom/android/server/wm/TaskSnapshotSurface$Window;
    .restart local v15    # "layoutParams":Landroid/view/WindowManager$LayoutParams;
    :catch_2
    move-exception v0

    move-object v4, v10

    move-object v5, v11

    move-object v7, v12

    move-object v8, v14

    move-object v9, v15

    .line 251
    .end local v10    # "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    .end local v11    # "mTempControls":[Landroid/view/InsetsSourceControl;
    .end local v12    # "tmpFrames":Landroid/window/ClientWindowFrames;
    .end local v14    # "window":Lcom/android/server/wm/TaskSnapshotSurface$Window;
    .end local v15    # "layoutParams":Landroid/view/WindowManager$LayoutParams;
    .restart local v4    # "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    .restart local v5    # "mTempControls":[Landroid/view/InsetsSourceControl;
    .restart local v7    # "tmpFrames":Landroid/window/ClientWindowFrames;
    .restart local v8    # "window":Lcom/android/server/wm/TaskSnapshotSurface$Window;
    .restart local v9    # "layoutParams":Landroid/view/WindowManager$LayoutParams;
    :goto_2
    iget-object v0, v7, Landroid/window/ClientWindowFrames;->frame:Landroid/graphics/Rect;

    move-object/from16 v2, v45

    .end local v45    # "insetsState":Landroid/view/InsetsState;
    .local v2, "insetsState":Landroid/view/InsetsState;
    invoke-static {v0, v2}, Lcom/android/server/wm/TaskSnapshotController;->getSystemBarInsets(Landroid/graphics/Rect;Landroid/view/InsetsState;)Landroid/graphics/Rect;

    move-result-object v0

    .line 252
    .local v0, "systemBarInsets":Landroid/graphics/Rect;
    iget-object v3, v7, Landroid/window/ClientWindowFrames;->frame:Landroid/graphics/Rect;

    invoke-virtual {v1, v3, v0}, Lcom/android/server/wm/TaskSnapshotSurface;->setFrames(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 253
    invoke-direct {v1}, Lcom/android/server/wm/TaskSnapshotSurface;->drawSnapshot()V

    .line 254
    return-object v1

    .line 226
    .end local v0    # "systemBarInsets":Landroid/graphics/Rect;
    .end local v1    # "snapshotSurface":Lcom/android/server/wm/TaskSnapshotSurface;
    .end local v2    # "insetsState":Landroid/view/InsetsState;
    .end local v4    # "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    .end local v5    # "mTempControls":[Landroid/view/InsetsSourceControl;
    .end local v7    # "tmpFrames":Landroid/window/ClientWindowFrames;
    .end local v8    # "window":Lcom/android/server/wm/TaskSnapshotSurface$Window;
    .end local v9    # "layoutParams":Landroid/view/WindowManager$LayoutParams;
    .end local v37    # "currentOrientation":I
    .end local v38    # "activityType":I
    .end local v40    # "displayId":I
    .end local v41    # "windowFlags":I
    .end local v42    # "windowPrivateFlags":I
    .end local v43    # "appearance":I
    .end local v44    # "taskBounds":Landroid/graphics/Rect;
    .end local v46    # "topFullscreenOpaqueWindow":Lcom/android/server/wm/WindowState;
    .restart local v10    # "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    .restart local v11    # "mTempControls":[Landroid/view/InsetsSourceControl;
    .restart local v12    # "tmpFrames":Landroid/window/ClientWindowFrames;
    .restart local v14    # "window":Lcom/android/server/wm/TaskSnapshotSurface$Window;
    .restart local v15    # "layoutParams":Landroid/view/WindowManager$LayoutParams;
    :catchall_1
    move-exception v0

    move-object v4, v10

    move-object v5, v11

    move-object v7, v12

    move-object v8, v14

    move-object v9, v15

    .end local v10    # "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    .end local v11    # "mTempControls":[Landroid/view/InsetsSourceControl;
    .end local v12    # "tmpFrames":Landroid/window/ClientWindowFrames;
    .end local v14    # "window":Lcom/android/server/wm/TaskSnapshotSurface$Window;
    .end local v15    # "layoutParams":Landroid/view/WindowManager$LayoutParams;
    .restart local v4    # "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    .restart local v5    # "mTempControls":[Landroid/view/InsetsSourceControl;
    .restart local v7    # "tmpFrames":Landroid/window/ClientWindowFrames;
    .restart local v8    # "window":Lcom/android/server/wm/TaskSnapshotSurface$Window;
    .restart local v9    # "layoutParams":Landroid/view/WindowManager$LayoutParams;
    :goto_3
    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_2
    move-exception v0

    goto :goto_3
.end method

.method private drawSizeMatchSnapshot()V
    .locals 4

    .line 337
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSnapshot:Landroid/window/TaskSnapshot;

    .line 338
    invoke-virtual {v0}, Landroid/window/TaskSnapshot;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v0

    .line 337
    invoke-static {v0}, Landroid/graphics/GraphicBuffer;->createFromHardwareBuffer(Landroid/hardware/HardwareBuffer;)Landroid/graphics/GraphicBuffer;

    move-result-object v0

    .line 339
    .local v0, "graphicBuffer":Landroid/graphics/GraphicBuffer;
    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v2, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v2, v0}, Landroid/view/SurfaceControl$Transaction;->setBuffer(Landroid/view/SurfaceControl;Landroid/graphics/GraphicBuffer;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v3, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSnapshot:Landroid/window/TaskSnapshot;

    .line 340
    invoke-virtual {v3}, Landroid/window/TaskSnapshot;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setColorSpace(Landroid/view/SurfaceControl;Landroid/graphics/ColorSpace;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    .line 341
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 342
    return-void
.end method

.method private drawSizeMismatchSnapshot()V
    .locals 11

    .line 345
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSnapshot:Landroid/window/TaskSnapshot;

    invoke-virtual {v0}, Landroid/window/TaskSnapshot;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v0

    .line 346
    .local v0, "buffer":Landroid/hardware/HardwareBuffer;
    new-instance v1, Landroid/view/SurfaceSession;

    invoke-direct {v1}, Landroid/view/SurfaceSession;-><init>()V

    .line 349
    .local v1, "session":Landroid/view/SurfaceSession;
    nop

    .line 350
    invoke-virtual {v0}, Landroid/hardware/HardwareBuffer;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/hardware/HardwareBuffer;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mFrame:Landroid/graphics/Rect;

    .line 351
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    .line 349
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v3, 0x3c23d70a    # 0.01f

    cmpl-float v2, v2, v3

    const/4 v3, 0x1

    if-lez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 354
    .local v2, "aspectRatioMismatch":Z
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " - task-snapshot-surface"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 355
    .local v4, "name":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mSurfaceControlFactory:Ljava/util/function/Function;

    invoke-interface {v5, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/SurfaceControl$Builder;

    .line 356
    invoke-virtual {v5, v4}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v5

    .line 357
    invoke-virtual {v5}, Landroid/view/SurfaceControl$Builder;->setBLASTLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v5

    .line 358
    invoke-virtual {v0}, Landroid/hardware/HardwareBuffer;->getFormat()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/SurfaceControl$Builder;->setFormat(I)Landroid/view/SurfaceControl$Builder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 359
    invoke-virtual {v5, v6}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v5

    .line 360
    const-string v6, "TaskSnapshotSurface.drawSizeMismatchSnapshot"

    invoke-virtual {v5, v6}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v5

    .line 361
    invoke-virtual {v5}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v5

    .line 366
    .local v5, "childSurfaceControl":Landroid/view/SurfaceControl;
    iget-object v6, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v6, v5}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 367
    if-eqz v2, :cond_1

    .line 369
    invoke-virtual {p0}, Lcom/android/server/wm/TaskSnapshotSurface;->calculateSnapshotCrop()Landroid/graphics/Rect;

    move-result-object v6

    .line 370
    .local v6, "crop":Landroid/graphics/Rect;
    invoke-virtual {p0, v6}, Lcom/android/server/wm/TaskSnapshotSurface;->calculateSnapshotFrame(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v7

    .line 371
    .local v7, "frame":Landroid/graphics/Rect;
    iget-object v8, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v8, v5, v6}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    .line 372
    iget-object v8, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget v9, v7, Landroid/graphics/Rect;->left:I

    int-to-float v9, v9

    iget v10, v7, Landroid/graphics/Rect;->top:I

    int-to-float v10, v10

    invoke-virtual {v8, v5, v9, v10}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 373
    iget-object v8, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mTmpSnapshotSize:Landroid/graphics/RectF;

    invoke-virtual {v8, v6}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 374
    iget-object v8, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mTmpDstFrame:Landroid/graphics/RectF;

    invoke-virtual {v8, v7}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 375
    .end local v6    # "crop":Landroid/graphics/Rect;
    goto :goto_1

    .line 376
    .end local v7    # "frame":Landroid/graphics/Rect;
    :cond_1
    const/4 v7, 0x0

    .line 377
    .restart local v7    # "frame":Landroid/graphics/Rect;
    iget-object v6, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mTmpSnapshotSize:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/hardware/HardwareBuffer;->getWidth()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v0}, Landroid/hardware/HardwareBuffer;->getHeight()I

    move-result v9

    int-to-float v9, v9

    const/4 v10, 0x0

    invoke-virtual {v6, v10, v10, v8, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 378
    iget-object v6, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mTmpDstFrame:Landroid/graphics/RectF;

    iget-object v8, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v6, v8}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 379
    iget-object v6, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mTmpDstFrame:Landroid/graphics/RectF;

    invoke-virtual {v6, v10, v10}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 383
    :goto_1
    iget-object v6, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSnapshotMatrix:Landroid/graphics/Matrix;

    iget-object v8, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mTmpSnapshotSize:Landroid/graphics/RectF;

    iget-object v9, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mTmpDstFrame:Landroid/graphics/RectF;

    sget-object v10, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v6, v8, v9, v10}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 384
    iget-object v6, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v8, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSnapshotMatrix:Landroid/graphics/Matrix;

    iget-object v9, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mTmpFloat9:[F

    invoke-virtual {v6, v5, v8, v9}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;Landroid/graphics/Matrix;[F)Landroid/view/SurfaceControl$Transaction;

    .line 386
    iget-object v6, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSnapshot:Landroid/window/TaskSnapshot;

    .line 387
    invoke-virtual {v6}, Landroid/window/TaskSnapshot;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v6

    .line 386
    invoke-static {v6}, Landroid/graphics/GraphicBuffer;->createFromHardwareBuffer(Landroid/hardware/HardwareBuffer;)Landroid/graphics/GraphicBuffer;

    move-result-object v6

    .line 388
    .local v6, "graphicBuffer":Landroid/graphics/GraphicBuffer;
    iget-object v8, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v9, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSnapshot:Landroid/window/TaskSnapshot;

    invoke-virtual {v9}, Landroid/window/TaskSnapshot;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v9

    invoke-virtual {v8, v5, v9}, Landroid/view/SurfaceControl$Transaction;->setColorSpace(Landroid/view/SurfaceControl;Landroid/graphics/ColorSpace;)Landroid/view/SurfaceControl$Transaction;

    .line 389
    iget-object v8, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v8, v5, v6}, Landroid/view/SurfaceControl$Transaction;->setBuffer(Landroid/view/SurfaceControl;Landroid/graphics/GraphicBuffer;)Landroid/view/SurfaceControl$Transaction;

    .line 393
    iget-object v8, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget v9, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mDisplayId:I

    invoke-static {v5, v8, v9, v4}, Lcom/android/server/wm/InputMonitor;->setTrustedOverlayInputInfo(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;ILjava/lang/String;)V

    .line 396
    if-eqz v2, :cond_2

    .line 397
    iget-object v8, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    iget-object v9, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    const/16 v10, 0x920

    invoke-static {v8, v9, v3, v10}, Landroid/graphics/GraphicBuffer;->create(IIII)Landroid/graphics/GraphicBuffer;

    move-result-object v3

    .line 401
    .local v3, "background":Landroid/graphics/GraphicBuffer;
    invoke-virtual {v3}, Landroid/graphics/GraphicBuffer;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v8

    .line 402
    .local v8, "c":Landroid/graphics/Canvas;
    invoke-virtual {p0, v8, v7}, Lcom/android/server/wm/TaskSnapshotSurface;->drawBackgroundAndBars(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 403
    invoke-virtual {v3, v8}, Landroid/graphics/GraphicBuffer;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 404
    iget-object v9, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v10, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v9, v10, v3}, Landroid/view/SurfaceControl$Transaction;->setBuffer(Landroid/view/SurfaceControl;Landroid/graphics/GraphicBuffer;)Landroid/view/SurfaceControl$Transaction;

    .line 406
    .end local v3    # "background":Landroid/graphics/GraphicBuffer;
    .end local v8    # "c":Landroid/graphics/Canvas;
    :cond_2
    iget-object v3, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v3}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 407
    return-void
.end method

.method private drawSnapshot()V
    .locals 9

    .line 316
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STARTING_WINDOW_enabled:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSizeMismatch:Z

    .local v0, "protoLogParam0":Z
    sget-object v3, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STARTING_WINDOW:Lcom/android/internal/protolog/ProtoLogGroup;

    const v4, -0x76b023e9

    const/4 v5, 0x3

    new-array v6, v1, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v3, v4, v5, v2, v6}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 318
    .end local v0    # "protoLogParam0":Z
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSizeMismatch:Z

    if-eqz v0, :cond_1

    .line 322
    invoke-direct {p0}, Lcom/android/server/wm/TaskSnapshotSurface;->drawSizeMismatchSnapshot()V

    goto :goto_0

    .line 324
    :cond_1
    invoke-direct {p0}, Lcom/android/server/wm/TaskSnapshotSurface;->drawSizeMatchSnapshot()V

    .line 326
    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 327
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mShownTime:J

    .line 328
    iput-boolean v1, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mHasDrawn:Z

    .line 329
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 330
    invoke-direct {p0}, Lcom/android/server/wm/TaskSnapshotSurface;->reportDrawn()V

    .line 333
    iput-object v2, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSnapshot:Landroid/window/TaskSnapshot;

    .line 334
    return-void

    .line 329
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method private reportDrawn()V
    .locals 3

    .line 476
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSession:Landroid/view/IWindowSession;

    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mWindow:Lcom/android/server/wm/TaskSnapshotSurface$Window;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/view/IWindowSession;->finishDrawing(Landroid/view/IWindow;Landroid/view/SurfaceControl$Transaction;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 479
    goto :goto_0

    .line 477
    :catch_0
    move-exception v0

    .line 480
    :goto_0
    return-void
.end method


# virtual methods
.method calculateSnapshotCrop()Landroid/graphics/Rect;
    .locals 10

    .line 416
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 417
    .local v0, "rect":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSnapshot:Landroid/window/TaskSnapshot;

    invoke-virtual {v1}, Landroid/window/TaskSnapshot;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v1

    .line 418
    .local v1, "snapshot":Landroid/hardware/HardwareBuffer;
    invoke-virtual {v1}, Landroid/hardware/HardwareBuffer;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/hardware/HardwareBuffer;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v4, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 419
    iget-object v2, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSnapshot:Landroid/window/TaskSnapshot;

    invoke-virtual {v2}, Landroid/window/TaskSnapshot;->getContentInsets()Landroid/graphics/Rect;

    move-result-object v2

    .line 421
    .local v2, "insets":Landroid/graphics/Rect;
    invoke-virtual {v1}, Landroid/hardware/HardwareBuffer;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget-object v5, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSnapshot:Landroid/window/TaskSnapshot;

    invoke-virtual {v5}, Landroid/window/TaskSnapshot;->getTaskSize()Landroid/graphics/Point;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    div-float/2addr v3, v5

    .line 422
    .local v3, "scaleX":F
    invoke-virtual {v1}, Landroid/hardware/HardwareBuffer;->getHeight()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSnapshot:Landroid/window/TaskSnapshot;

    invoke-virtual {v6}, Landroid/window/TaskSnapshot;->getTaskSize()Landroid/graphics/Point;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Point;->y:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    .line 426
    .local v5, "scaleY":F
    iget-object v6, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mTaskBounds:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mFrame:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    if-nez v6, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    move v6, v4

    .line 427
    .local v6, "isTop":Z
    :goto_0
    iget v7, v2, Landroid/graphics/Rect;->left:I

    int-to-float v7, v7

    mul-float/2addr v7, v3

    float-to-int v7, v7

    .line 428
    if-eqz v6, :cond_1

    goto :goto_1

    :cond_1
    iget v4, v2, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    mul-float/2addr v4, v5

    float-to-int v4, v4

    :goto_1
    iget v8, v2, Landroid/graphics/Rect;->right:I

    int-to-float v8, v8

    mul-float/2addr v8, v3

    float-to-int v8, v8

    iget v9, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v9, v9

    mul-float/2addr v9, v5

    float-to-int v9, v9

    .line 427
    invoke-virtual {v0, v7, v4, v8, v9}, Landroid/graphics/Rect;->inset(IIII)V

    .line 431
    return-object v0
.end method

.method calculateSnapshotFrame(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 7
    .param p1, "crop"    # Landroid/graphics/Rect;

    .line 441
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSnapshot:Landroid/window/TaskSnapshot;

    invoke-virtual {v0}, Landroid/window/TaskSnapshot;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v0

    .line 442
    .local v0, "snapshot":Landroid/hardware/HardwareBuffer;
    invoke-virtual {v0}, Landroid/hardware/HardwareBuffer;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSnapshot:Landroid/window/TaskSnapshot;

    invoke-virtual {v2}, Landroid/window/TaskSnapshot;->getTaskSize()Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 443
    .local v1, "scaleX":F
    invoke-virtual {v0}, Landroid/hardware/HardwareBuffer;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSnapshot:Landroid/window/TaskSnapshot;

    invoke-virtual {v3}, Landroid/window/TaskSnapshot;->getTaskSize()Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 446
    .local v2, "scaleY":F
    new-instance v3, Landroid/graphics/Rect;

    .line 447
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v1

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v4, v5

    float-to-int v4, v4

    .line 448
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v2

    add-float/2addr v6, v5

    float-to-int v5, v6

    const/4 v6, 0x0

    invoke-direct {v3, v6, v6, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 452
    .local v3, "frame":Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSystemBarInsets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    invoke-virtual {v3, v4, v6}, Landroid/graphics/Rect;->offset(II)V

    .line 453
    return-object v3
.end method

.method drawBackgroundAndBars(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 18
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "frame"    # Landroid/graphics/Rect;

    .line 458
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    iget-object v2, v0, Lcom/android/server/wm/TaskSnapshotSurface;->mSystemBarBackgroundPainter:Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;

    invoke-virtual {v2}, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->getStatusBarColorViewHeight()I

    move-result v2

    .line 459
    .local v2, "statusBarHeight":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    iget v4, v1, Landroid/graphics/Rect;->right:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-le v3, v4, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    move v3, v6

    .line 460
    .local v3, "fillHorizontally":Z
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    iget v7, v1, Landroid/graphics/Rect;->bottom:I

    if-le v4, v7, :cond_1

    goto :goto_1

    :cond_1
    move v5, v6

    :goto_1
    move v4, v5

    .line 461
    .local v4, "fillVertically":Z
    if-eqz v3, :cond_4

    .line 462
    iget v5, v1, Landroid/graphics/Rect;->right:I

    int-to-float v7, v5

    iget v5, v0, Lcom/android/server/wm/TaskSnapshotSurface;->mStatusBarColor:I

    invoke-static {v5}, Landroid/graphics/Color;->alpha(I)I

    move-result v5

    const/16 v6, 0xff

    if-ne v5, v6, :cond_2

    int-to-float v5, v2

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    :goto_2
    move v8, v5

    .line 463
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v5

    int-to-float v9, v5

    if-eqz v4, :cond_3

    .line 464
    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    move v10, v5

    goto :goto_3

    .line 465
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v5

    int-to-float v5, v5

    move v10, v5

    :goto_3
    iget-object v11, v0, Lcom/android/server/wm/TaskSnapshotSurface;->mBackgroundPaint:Landroid/graphics/Paint;

    .line 462
    move-object/from16 v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 468
    :cond_4
    if-eqz v4, :cond_5

    .line 469
    const/4 v13, 0x0

    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v14, v5

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v5

    int-to-float v15, v5

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, v0, Lcom/android/server/wm/TaskSnapshotSurface;->mBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v12, p1

    move/from16 v16, v5

    move-object/from16 v17, v6

    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 471
    :cond_5
    iget-object v5, v0, Lcom/android/server/wm/TaskSnapshotSurface;->mSystemBarBackgroundPainter:Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;

    move-object/from16 v6, p1

    invoke-virtual {v5, v6, v1}, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->drawDecors(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 472
    return-void
.end method

.method public synthetic lambda$remove$0$TaskSnapshotSurface()V
    .locals 1

    .line 289
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskSnapshotSurface;->remove(Z)V

    return-void
.end method

.method public remove(Z)V
    .locals 12
    .param p1, "animate"    # Z

    .line 284
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 285
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 286
    .local v1, "now":J
    iget-boolean v3, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSizeMismatch:Z

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v3, :cond_1

    iget-wide v6, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mShownTime:J

    sub-long v6, v1, v6

    const-wide/16 v8, 0x1c2

    cmp-long v3, v6, v8

    if-gez v3, :cond_1

    iget v3, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mActivityType:I

    const/4 v6, 0x2

    if-eq v3, v6, :cond_1

    .line 289
    iget-object v3, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/android/server/wm/TaskSnapshotSurface$$ExternalSyntheticLambda0;

    invoke-direct {v6, p0}, Lcom/android/server/wm/TaskSnapshotSurface$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/TaskSnapshotSurface;)V

    iget-wide v10, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mShownTime:J

    add-long/2addr v10, v8

    invoke-virtual {v3, v6, v10, v11}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 291
    sget-boolean v3, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STARTING_WINDOW_enabled:Z

    if-eqz v3, :cond_0

    iget-wide v6, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mShownTime:J

    sub-long v6, v1, v6

    .local v6, "protoLogParam0":J
    sget-object v3, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STARTING_WINDOW:Lcom/android/internal/protolog/ProtoLogGroup;

    const v8, -0x775bba9f

    const/4 v9, 0x1

    new-array v10, v9, [Ljava/lang/Object;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v10, v4

    invoke-static {v3, v8, v9, v5, v10}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 294
    .end local v6    # "protoLogParam0":J
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 296
    .end local v1    # "now":J
    :cond_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 298
    :try_start_2
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STARTING_WINDOW_enabled:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STARTING_WINDOW:Lcom/android/internal/protolog/ProtoLogGroup;

    const v1, -0x182c008d

    move-object v2, v5

    check-cast v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v4, v5, v2}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 299
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSession:Landroid/view/IWindowSession;

    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mWindow:Lcom/android/server/wm/TaskSnapshotSurface$Window;

    invoke-interface {v0, v1}, Landroid/view/IWindowSession;->remove(Landroid/view/IWindow;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 302
    goto :goto_0

    .line 300
    :catch_0
    move-exception v0

    .line 303
    :goto_0
    return-void

    .line 296
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method setFrames(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "frame"    # Landroid/graphics/Rect;
    .param p2, "systemBarInsets"    # Landroid/graphics/Rect;

    .line 307
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 308
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSystemBarInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 309
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSnapshot:Landroid/window/TaskSnapshot;

    invoke-virtual {v0}, Landroid/window/TaskSnapshot;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v0

    .line 310
    .local v0, "snapshot":Landroid/hardware/HardwareBuffer;
    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/hardware/HardwareBuffer;->getWidth()I

    move-result v2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mFrame:Landroid/graphics/Rect;

    .line 311
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {v0}, Landroid/hardware/HardwareBuffer;->getHeight()I

    move-result v2

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSizeMismatch:Z

    .line 312
    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSystemBarBackgroundPainter:Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;

    invoke-virtual {v1, p2}, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->setInsets(Landroid/graphics/Rect;)V

    .line 313
    return-void
.end method
