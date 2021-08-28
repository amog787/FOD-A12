.class final Lcom/android/server/lights/LightsService$LightImpl;
.super Lcom/android/server/lights/LogicalLight;
.source "LightsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/lights/LightsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LightImpl"
.end annotation


# instance fields
.field private mBrightnessMode:I

.field private mColor:I

.field private mFlashing:Z

.field private mHwLight:Landroid/hardware/light/HwLight;

.field private mInitialized:Z

.field private mLastBrightnessMode:I

.field private mLastColor:I

.field private mMode:I

.field private mOffMS:I

.field private mOnMS:I

.field private mUseLowPersistenceForVR:Z

.field private mVrModeEnabled:Z

.field final synthetic this$0:Lcom/android/server/lights/LightsService;


# direct methods
.method public static synthetic $r8$lambda$HOo5xvbDNj6nMx4NiLxHGXF9Bcw(Lcom/android/server/lights/LightsService$LightImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/lights/LightsService$LightImpl;->stopFlashing()V

    return-void
.end method

.method private constructor <init>(Lcom/android/server/lights/LightsService;Landroid/content/Context;Landroid/hardware/light/HwLight;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "hwLight"    # Landroid/hardware/light/HwLight;

    .line 274
    iput-object p1, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    invoke-direct {p0}, Lcom/android/server/lights/LogicalLight;-><init>()V

    .line 275
    iput-object p3, p0, Lcom/android/server/lights/LightsService$LightImpl;->mHwLight:Landroid/hardware/light/HwLight;

    .line 276
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/lights/LightsService;Landroid/content/Context;Landroid/hardware/light/HwLight;Lcom/android/server/lights/LightsService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/lights/LightsService;
    .param p2, "x1"    # Landroid/content/Context;
    .param p3, "x2"    # Landroid/hardware/light/HwLight;
    .param p4, "x3"    # Lcom/android/server/lights/LightsService$1;

    .line 272
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/lights/LightsService$LightImpl;-><init>(Lcom/android/server/lights/LightsService;Landroid/content/Context;Landroid/hardware/light/HwLight;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/lights/LightsService$LightImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/lights/LightsService$LightImpl;

    .line 272
    invoke-direct {p0}, Lcom/android/server/lights/LightsService$LightImpl;->isSystemLight()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/lights/LightsService$LightImpl;)Landroid/hardware/light/HwLight;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/lights/LightsService$LightImpl;

    .line 272
    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mHwLight:Landroid/hardware/light/HwLight;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/lights/LightsService$LightImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/lights/LightsService$LightImpl;

    .line 272
    invoke-direct {p0}, Lcom/android/server/lights/LightsService$LightImpl;->getColor()I

    move-result v0

    return v0
.end method

.method private getColor()I
    .locals 1

    .line 429
    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mColor:I

    return v0
.end method

.method private isSystemLight()Z
    .locals 2

    .line 425
    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mHwLight:Landroid/hardware/light/HwLight;

    iget-byte v0, v0, Landroid/hardware/light/HwLight;->type:B

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mHwLight:Landroid/hardware/light/HwLight;

    iget-byte v0, v0, Landroid/hardware/light/HwLight;->type:B

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private setLightLocked(IIIII)V
    .locals 6
    .param p1, "color"    # I
    .param p2, "mode"    # I
    .param p3, "onMS"    # I
    .param p4, "offMS"    # I
    .param p5, "brightnessMode"    # I

    .line 368
    invoke-direct {p0}, Lcom/android/server/lights/LightsService$LightImpl;->shouldBeInLowPersistenceMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 369
    const/4 p5, 0x2

    goto :goto_0

    .line 370
    :cond_0
    const/4 v0, 0x2

    if-ne p5, v0, :cond_1

    .line 371
    iget p5, p0, Lcom/android/server/lights/LightsService$LightImpl;->mLastBrightnessMode:I

    .line 374
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mInitialized:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mColor:I

    if-ne p1, v0, :cond_2

    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mMode:I

    if-ne p2, v0, :cond_2

    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mOnMS:I

    if-ne p3, v0, :cond_2

    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mOffMS:I

    if-ne p4, v0, :cond_2

    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mBrightnessMode:I

    if-eq v0, p5, :cond_3

    .line 380
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mInitialized:Z

    .line 381
    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mColor:I

    iput v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mLastColor:I

    .line 382
    iput p1, p0, Lcom/android/server/lights/LightsService$LightImpl;->mColor:I

    .line 383
    iput p2, p0, Lcom/android/server/lights/LightsService$LightImpl;->mMode:I

    .line 384
    iput p3, p0, Lcom/android/server/lights/LightsService$LightImpl;->mOnMS:I

    .line 385
    iput p4, p0, Lcom/android/server/lights/LightsService$LightImpl;->mOffMS:I

    .line 386
    iput p5, p0, Lcom/android/server/lights/LightsService$LightImpl;->mBrightnessMode:I

    .line 387
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/server/lights/LightsService$LightImpl;->setLightUnchecked(IIIII)V

    .line 389
    :cond_3
    return-void
.end method

.method private setLightUnchecked(IIIII)V
    .locals 9
    .param p1, "color"    # I
    .param p2, "mode"    # I
    .param p3, "onMS"    # I
    .param p4, "offMS"    # I
    .param p5, "brightnessMode"    # I

    .line 393
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setLightState("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/lights/LightsService$LightImpl;->mHwLight:Landroid/hardware/light/HwLight;

    iget v1, v1, Landroid/hardware/light/HwLight;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 393
    const-wide/32 v1, 0x20000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 396
    :try_start_0
    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    invoke-static {v0}, Lcom/android/server/lights/LightsService;->access$400(Lcom/android/server/lights/LightsService;)Ljava/util/function/Supplier;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 397
    new-instance v0, Landroid/hardware/light/HwLightState;

    invoke-direct {v0}, Landroid/hardware/light/HwLightState;-><init>()V

    .line 398
    .local v0, "lightState":Landroid/hardware/light/HwLightState;
    iput p1, v0, Landroid/hardware/light/HwLightState;->color:I

    .line 399
    int-to-byte v3, p2

    iput-byte v3, v0, Landroid/hardware/light/HwLightState;->flashMode:B

    .line 400
    iput p3, v0, Landroid/hardware/light/HwLightState;->flashOnMs:I

    .line 401
    iput p4, v0, Landroid/hardware/light/HwLightState;->flashOffMs:I

    .line 402
    int-to-byte v3, p5

    iput-byte v3, v0, Landroid/hardware/light/HwLightState;->brightnessMode:B

    .line 403
    iget-object v3, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    invoke-static {v3}, Lcom/android/server/lights/LightsService;->access$400(Lcom/android/server/lights/LightsService;)Ljava/util/function/Supplier;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/light/ILights;

    iget-object v4, p0, Lcom/android/server/lights/LightsService$LightImpl;->mHwLight:Landroid/hardware/light/HwLight;

    iget v4, v4, Landroid/hardware/light/HwLight;->id:I

    invoke-interface {v3, v4, v0}, Landroid/hardware/light/ILights;->setLightState(ILandroid/hardware/light/HwLightState;)V

    .line 404
    .end local v0    # "lightState":Landroid/hardware/light/HwLightState;
    goto :goto_0

    .line 405
    :cond_0
    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mHwLight:Landroid/hardware/light/HwLight;

    iget v3, v0, Landroid/hardware/light/HwLight;->id:I

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    invoke-static/range {v3 .. v8}, Lcom/android/server/lights/LightsService;->setLight_native(IIIIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 410
    :goto_0
    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    .line 407
    :catch_0
    move-exception v0

    .line 408
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_1
    const-string v3, "LightsService"

    const-string v4, "Failed issuing setLightState"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 410
    nop

    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_1
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 411
    nop

    .line 412
    return-void

    .line 410
    :goto_2
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 411
    throw v0
.end method

.method private shouldBeInLowPersistenceMode()Z
    .locals 1

    .line 415
    iget-boolean v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mVrModeEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mUseLowPersistenceForVR:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private stopFlashing()V
    .locals 6

    .line 362
    monitor-enter p0

    .line 363
    :try_start_0
    iget v1, p0, Lcom/android/server/lights/LightsService$LightImpl;->mColor:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/lights/LightsService$LightImpl;->setLightLocked(IIIII)V

    .line 364
    monitor-exit p0

    .line 365
    return-void

    .line 364
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public pulse()V
    .locals 2

    .line 319
    const v0, 0xffffff

    const/4 v1, 0x7

    invoke-virtual {p0, v0, v1}, Lcom/android/server/lights/LightsService$LightImpl;->pulse(II)V

    .line 320
    return-void
.end method

.method public pulse(II)V
    .locals 7
    .param p1, "color"    # I
    .param p2, "onMS"    # I

    .line 324
    monitor-enter p0

    .line 325
    :try_start_0
    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mColor:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mFlashing:Z

    if-nez v0, :cond_0

    .line 326
    const/4 v3, 0x2

    const/16 v5, 0x3e8

    const/4 v6, 0x0

    move-object v1, p0

    move v2, p1

    move v4, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/server/lights/LightsService$LightImpl;->setLightLocked(IIIII)V

    .line 328
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mColor:I

    .line 329
    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    invoke-static {v0}, Lcom/android/server/lights/LightsService;->access$500(Lcom/android/server/lights/LightsService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/lights/LightsService$LightImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/lights/LightsService$LightImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/lights/LightsService$LightImpl;)V

    int-to-long v2, p2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 331
    :cond_0
    monitor-exit p0

    .line 332
    return-void

    .line 331
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setBrightness(F)V
    .locals 1
    .param p1, "brightness"    # F

    .line 280
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/lights/LightsService$LightImpl;->setBrightness(FI)V

    .line 281
    return-void
.end method

.method public setBrightness(FI)V
    .locals 9
    .param p1, "brightness"    # F
    .param p2, "brightnessMode"    # I

    .line 285
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    const-string v0, "LightsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Brightness is not valid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    return-void

    .line 289
    :cond_0
    monitor-enter p0

    .line 291
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 292
    :try_start_0
    const-string v0, "LightsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setBrightness with LOW_PERSISTENCE unexpected #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/lights/LightsService$LightImpl;->mHwLight:Landroid/hardware/light/HwLight;

    iget v2, v2, Landroid/hardware/light/HwLight;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ": brightness="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    monitor-exit p0

    return-void

    .line 296
    :cond_1
    iget-object v1, p0, Lcom/android/server/lights/LightsService$LightImpl;->mHwLight:Landroid/hardware/light/HwLight;

    iget v1, v1, Landroid/hardware/light/HwLight;->id:I

    if-nez v1, :cond_2

    sget-object v1, Lcom/android/server/lights/LightsService;->backlightChangeListener:Lcom/android/server/lights/LightsService$OnBacklightChange;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/server/lights/LightsService;->backlightChangeListener:Lcom/android/server/lights/LightsService$OnBacklightChange;

    float-to-int v2, p1

    invoke-interface {v1, v2}, Lcom/android/server/lights/LightsService$OnBacklightChange;->onBacklightChange(I)V

    :cond_2
    invoke-static {p1}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessFloatToInt(F)I

    move-result v0

    .line 297
    .local v0, "brightnessInt":I
    and-int/lit16 v1, v0, 0xff

    .line 298
    .local v1, "color":I
    const/high16 v2, -0x1000000

    shl-int/lit8 v3, v1, 0x10

    or-int/2addr v2, v3

    shl-int/lit8 v3, v1, 0x8

    or-int/2addr v2, v3

    or-int/2addr v1, v2

    .line 299
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p0

    move v4, v1

    move v8, p2

    invoke-direct/range {v3 .. v8}, Lcom/android/server/lights/LightsService$LightImpl;->setLightLocked(IIIII)V

    .line 300
    .end local v0    # "brightnessInt":I
    .end local v1    # "color":I
    monitor-exit p0

    .line 301
    return-void

    .line 300
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setColor(I)V
    .locals 6
    .param p1, "color"    # I

    .line 305
    monitor-enter p0

    .line 306
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    :try_start_0
    invoke-direct/range {v0 .. v5}, Lcom/android/server/lights/LightsService$LightImpl;->setLightLocked(IIIII)V

    .line 307
    monitor-exit p0

    .line 308
    return-void

    .line 307
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setFlashing(IIII)V
    .locals 6
    .param p1, "color"    # I
    .param p2, "mode"    # I
    .param p3, "onMS"    # I
    .param p4, "offMS"    # I

    .line 312
    monitor-enter p0

    .line 313
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    :try_start_0
    invoke-direct/range {v0 .. v5}, Lcom/android/server/lights/LightsService$LightImpl;->setLightLocked(IIIII)V

    .line 314
    monitor-exit p0

    .line 315
    return-void

    .line 314
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setVrMode(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 343
    monitor-enter p0

    .line 344
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mVrModeEnabled:Z

    if-eq v0, p1, :cond_1

    .line 345
    iput-boolean p1, p0, Lcom/android/server/lights/LightsService$LightImpl;->mVrModeEnabled:Z

    .line 347
    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    .line 348
    invoke-static {v0}, Lcom/android/server/lights/LightsService;->access$600(Lcom/android/server/lights/LightsService;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mUseLowPersistenceForVR:Z

    .line 349
    invoke-direct {p0}, Lcom/android/server/lights/LightsService$LightImpl;->shouldBeInLowPersistenceMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 350
    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mBrightnessMode:I

    iput v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mLastBrightnessMode:I

    .line 358
    :cond_1
    monitor-exit p0

    .line 359
    return-void

    .line 358
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public turnOff()V
    .locals 6

    .line 336
    monitor-enter p0

    .line 337
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    :try_start_0
    invoke-direct/range {v0 .. v5}, Lcom/android/server/lights/LightsService$LightImpl;->setLightLocked(IIIII)V

    .line 338
    monitor-exit p0

    .line 339
    return-void

    .line 338
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
