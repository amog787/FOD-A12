.class final Lcom/android/server/vibrator/VibratorController;
.super Ljava/lang/Object;
.source "VibratorController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/vibrator/VibratorController$NativeWrapper;,
        Lcom/android/server/vibrator/VibratorController$OnVibrationCompleteListener;
    }
.end annotation


# static fields
.field private static final SUGGESTED_FREQUENCY_SAFE_RANGE:I = 0xc8

.field private static final TAG:Ljava/lang/String; = "VibratorController"


# instance fields
.field private mCurrentAmplitude:F

.field private mIsUnderExternalControl:Z

.field private mIsVibrating:Z

.field private final mLock:Ljava/lang/Object;

.field private final mNativeWrapper:Lcom/android/server/vibrator/VibratorController$NativeWrapper;

.field private mVibratorInfo:Landroid/os/VibratorInfo;

.field private final mVibratorInfoBuilder:Landroid/os/VibratorInfo$Builder;

.field private mVibratorInfoLoaded:Z

.field private final mVibratorStateListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/os/IVibratorStateListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(ILcom/android/server/vibrator/VibratorController$OnVibrationCompleteListener;)V
    .locals 1
    .param p1, "vibratorId"    # I
    .param p2, "listener"    # Lcom/android/server/vibrator/VibratorController$OnVibrationCompleteListener;

    .line 68
    new-instance v0, Lcom/android/server/vibrator/VibratorController$NativeWrapper;

    invoke-direct {v0}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/vibrator/VibratorController;-><init>(ILcom/android/server/vibrator/VibratorController$OnVibrationCompleteListener;Lcom/android/server/vibrator/VibratorController$NativeWrapper;)V

    .line 69
    return-void
.end method

.method constructor <init>(ILcom/android/server/vibrator/VibratorController$OnVibrationCompleteListener;Lcom/android/server/vibrator/VibratorController$NativeWrapper;)V
    .locals 2
    .param p1, "vibratorId"    # I
    .param p2, "listener"    # Lcom/android/server/vibrator/VibratorController$OnVibrationCompleteListener;
    .param p3, "nativeWrapper"    # Lcom/android/server/vibrator/VibratorController$NativeWrapper;

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/vibrator/VibratorController;->mLock:Ljava/lang/Object;

    .line 50
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorStateListeners:Landroid/os/RemoteCallbackList;

    .line 74
    iput-object p3, p0, Lcom/android/server/vibrator/VibratorController;->mNativeWrapper:Lcom/android/server/vibrator/VibratorController$NativeWrapper;

    .line 75
    invoke-virtual {p3, p1, p2}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->init(ILcom/android/server/vibrator/VibratorController$OnVibrationCompleteListener;)V

    .line 76
    new-instance v0, Landroid/os/VibratorInfo$Builder;

    invoke-direct {v0, p1}, Landroid/os/VibratorInfo$Builder;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorInfoBuilder:Landroid/os/VibratorInfo$Builder;

    .line 77
    const/high16 v1, 0x43480000    # 200.0f

    invoke-virtual {p3, v1, v0}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->getInfo(FLandroid/os/VibratorInfo$Builder;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorInfoLoaded:Z

    .line 79
    invoke-virtual {v0}, Landroid/os/VibratorInfo$Builder;->build()Landroid/os/VibratorInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorInfo:Landroid/os/VibratorInfo;

    .line 80
    return-void
.end method

.method private notifyStateListenerLocked(Landroid/os/IVibratorStateListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/os/IVibratorStateListener;

    .line 361
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/vibrator/VibratorController;->mIsVibrating:Z

    invoke-interface {p1, v0}, Landroid/os/IVibratorStateListener;->onVibrating(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 364
    goto :goto_0

    .line 362
    :catch_0
    move-exception v0

    .line 363
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "VibratorController"

    const-string v2, "Vibrator state listener failed to call"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 365
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private notifyStateListenersLocked()V
    .locals 3

    .line 348
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorStateListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 350
    .local v0, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 351
    :try_start_0
    iget-object v2, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorStateListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/os/IVibratorStateListener;

    invoke-direct {p0, v2}, Lcom/android/server/vibrator/VibratorController;->notifyStateListenerLocked(Landroid/os/IVibratorStateListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 350
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 354
    .end local v1    # "i":I
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorStateListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 355
    throw v1

    .line 354
    :cond_0
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorStateListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 355
    nop

    .line 356
    return-void
.end method

.method private notifyVibratorOffLocked()V
    .locals 1

    .line 340
    iget-boolean v0, p0, Lcom/android/server/vibrator/VibratorController;->mIsVibrating:Z

    if-eqz v0, :cond_0

    .line 341
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/vibrator/VibratorController;->mIsVibrating:Z

    .line 342
    invoke-direct {p0}, Lcom/android/server/vibrator/VibratorController;->notifyStateListenersLocked()V

    .line 344
    :cond_0
    return-void
.end method

.method private notifyVibratorOnLocked()V
    .locals 1

    .line 332
    iget-boolean v0, p0, Lcom/android/server/vibrator/VibratorController;->mIsVibrating:Z

    if-nez v0, :cond_0

    .line 333
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/vibrator/VibratorController;->mIsVibrating:Z

    .line 334
    invoke-direct {p0}, Lcom/android/server/vibrator/VibratorController;->notifyStateListenersLocked()V

    .line 336
    :cond_0
    return-void
.end method


# virtual methods
.method public getCurrentAmplitude()F
    .locals 2

    .line 148
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 149
    :try_start_0
    iget v1, p0, Lcom/android/server/vibrator/VibratorController;->mCurrentAmplitude:F

    monitor-exit v0

    return v1

    .line 150
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getVibratorInfo()Landroid/os/VibratorInfo;
    .locals 4

    .line 113
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 114
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorInfoLoaded:Z

    if-nez v1, :cond_0

    .line 116
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorController;->mNativeWrapper:Lcom/android/server/vibrator/VibratorController$NativeWrapper;

    const/high16 v2, 0x43480000    # 200.0f

    iget-object v3, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorInfoBuilder:Landroid/os/VibratorInfo$Builder;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->getInfo(FLandroid/os/VibratorInfo$Builder;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorInfoLoaded:Z

    .line 118
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorInfoBuilder:Landroid/os/VibratorInfo$Builder;

    invoke-virtual {v1}, Landroid/os/VibratorInfo$Builder;->build()Landroid/os/VibratorInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorInfo:Landroid/os/VibratorInfo;

    .line 120
    :cond_0
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorInfo:Landroid/os/VibratorInfo;

    monitor-exit v0

    return-object v1

    .line 121
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public hasCapability(J)Z
    .locals 1
    .param p1, "capability"    # J

    .line 167
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorInfo:Landroid/os/VibratorInfo;

    invoke-virtual {v0, p1, p2}, Landroid/os/VibratorInfo;->hasCapability(J)Z

    move-result v0

    return v0
.end method

.method public isAvailable()Z
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorController;->mNativeWrapper:Lcom/android/server/vibrator/VibratorController$NativeWrapper;

    invoke-virtual {v0}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->isAvailable()Z

    move-result v0

    return v0
.end method

.method public isUnderExternalControl()Z
    .locals 2

    .line 155
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 156
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/vibrator/VibratorController;->mIsUnderExternalControl:Z

    monitor-exit v0

    return v1

    .line 157
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isVibrating()Z
    .locals 2

    .line 131
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 132
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/vibrator/VibratorController;->mIsVibrating:Z

    monitor-exit v0

    return v1

    .line 133
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public off()V
    .locals 2

    .line 309
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 310
    :try_start_0
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorController;->mNativeWrapper:Lcom/android/server/vibrator/VibratorController$NativeWrapper;

    invoke-virtual {v1}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->off()V

    .line 311
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/vibrator/VibratorController;->mCurrentAmplitude:F

    .line 312
    invoke-direct {p0}, Lcom/android/server/vibrator/VibratorController;->notifyVibratorOffLocked()V

    .line 313
    monitor-exit v0

    .line 314
    return-void

    .line 313
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public on(JJ)J
    .locals 5
    .param p1, "milliseconds"    # J
    .param p3, "vibrationId"    # J

    .line 230
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 231
    :try_start_0
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorController;->mNativeWrapper:Lcom/android/server/vibrator/VibratorController$NativeWrapper;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->on(JJ)J

    move-result-wide v1

    .line 232
    .local v1, "duration":J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_0

    .line 233
    const/high16 v3, -0x40800000    # -1.0f

    iput v3, p0, Lcom/android/server/vibrator/VibratorController;->mCurrentAmplitude:F

    .line 234
    invoke-direct {p0}, Lcom/android/server/vibrator/VibratorController;->notifyVibratorOnLocked()V

    .line 236
    :cond_0
    monitor-exit v0

    return-wide v1

    .line 237
    .end local v1    # "duration":J
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public on(Landroid/os/vibrator/PrebakedSegment;J)J
    .locals 8
    .param p1, "prebaked"    # Landroid/os/vibrator/PrebakedSegment;
    .param p2, "vibrationId"    # J

    .line 250
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 251
    :try_start_0
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorController;->mNativeWrapper:Lcom/android/server/vibrator/VibratorController$NativeWrapper;

    invoke-virtual {p1}, Landroid/os/vibrator/PrebakedSegment;->getEffectId()I

    move-result v2

    int-to-long v2, v2

    .line 252
    invoke-virtual {p1}, Landroid/os/vibrator/PrebakedSegment;->getEffectStrength()I

    move-result v4

    int-to-long v4, v4

    .line 251
    move-wide v6, p2

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->perform(JJJ)J

    move-result-wide v1

    .line 253
    .local v1, "duration":J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_0

    .line 254
    const/high16 v3, -0x40800000    # -1.0f

    iput v3, p0, Lcom/android/server/vibrator/VibratorController;->mCurrentAmplitude:F

    .line 255
    invoke-direct {p0}, Lcom/android/server/vibrator/VibratorController;->notifyVibratorOnLocked()V

    .line 257
    :cond_0
    monitor-exit v0

    return-wide v1

    .line 258
    .end local v1    # "duration":J
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public on([Landroid/os/vibrator/PrimitiveSegment;J)J
    .locals 5
    .param p1, "primitives"    # [Landroid/os/vibrator/PrimitiveSegment;
    .param p2, "vibrationId"    # J

    .line 271
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorInfo:Landroid/os/VibratorInfo;

    const-wide/16 v1, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/os/VibratorInfo;->hasCapability(J)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    .line 272
    return-wide v1

    .line 274
    :cond_0
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 275
    :try_start_0
    iget-object v3, p0, Lcom/android/server/vibrator/VibratorController;->mNativeWrapper:Lcom/android/server/vibrator/VibratorController$NativeWrapper;

    invoke-virtual {v3, p1, p2, p3}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->compose([Landroid/os/vibrator/PrimitiveSegment;J)J

    move-result-wide v3

    .line 276
    .local v3, "duration":J
    cmp-long v1, v3, v1

    if-lez v1, :cond_1

    .line 277
    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lcom/android/server/vibrator/VibratorController;->mCurrentAmplitude:F

    .line 278
    invoke-direct {p0}, Lcom/android/server/vibrator/VibratorController;->notifyVibratorOnLocked()V

    .line 280
    :cond_1
    monitor-exit v0

    return-wide v3

    .line 281
    .end local v3    # "duration":J
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public on([Landroid/os/vibrator/RampSegment;J)J
    .locals 6
    .param p1, "primitives"    # [Landroid/os/vibrator/RampSegment;
    .param p2, "vibrationId"    # J

    .line 293
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorInfo:Landroid/os/VibratorInfo;

    const-wide/16 v1, 0x400

    invoke-virtual {v0, v1, v2}, Landroid/os/VibratorInfo;->hasCapability(J)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    .line 294
    return-wide v1

    .line 296
    :cond_0
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 297
    :try_start_0
    iget-object v3, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorInfo:Landroid/os/VibratorInfo;

    invoke-virtual {v3}, Landroid/os/VibratorInfo;->getDefaultBraking()I

    move-result v3

    .line 298
    .local v3, "braking":I
    iget-object v4, p0, Lcom/android/server/vibrator/VibratorController;->mNativeWrapper:Lcom/android/server/vibrator/VibratorController$NativeWrapper;

    invoke-virtual {v4, p1, v3, p2, p3}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->composePwle([Landroid/os/vibrator/RampSegment;IJ)J

    move-result-wide v4

    .line 299
    .local v4, "duration":J
    cmp-long v1, v4, v1

    if-lez v1, :cond_1

    .line 300
    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lcom/android/server/vibrator/VibratorController;->mCurrentAmplitude:F

    .line 301
    invoke-direct {p0}, Lcom/android/server/vibrator/VibratorController;->notifyVibratorOnLocked()V

    .line 303
    :cond_1
    monitor-exit v0

    return-wide v4

    .line 304
    .end local v3    # "braking":I
    .end local v4    # "duration":J
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerVibratorStateListener(Landroid/os/IVibratorStateListener;)Z
    .locals 4
    .param p1, "listener"    # Landroid/os/IVibratorStateListener;

    .line 84
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 85
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 87
    .local v1, "token":J
    :try_start_1
    iget-object v3, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorStateListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v3, :cond_0

    .line 88
    const/4 v3, 0x0

    .line 94
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 88
    return v3

    .line 91
    :cond_0
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/vibrator/VibratorController;->notifyStateListenerLocked(Landroid/os/IVibratorStateListener;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 92
    const/4 v3, 0x1

    .line 94
    :try_start_4
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0

    .line 92
    return v3

    .line 94
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 95
    nop

    .end local p0    # "this":Lcom/android/server/vibrator/VibratorController;
    .end local p1    # "listener":Landroid/os/IVibratorStateListener;
    throw v3

    .line 96
    .end local v1    # "token":J
    .restart local p0    # "this":Lcom/android/server/vibrator/VibratorController;
    .restart local p1    # "listener":Landroid/os/IVibratorStateListener;
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method public setAmplitude(F)V
    .locals 4
    .param p1, "amplitude"    # F

    .line 210
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 211
    :try_start_0
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorInfo:Landroid/os/VibratorInfo;

    const-wide/16 v2, 0x4

    invoke-virtual {v1, v2, v3}, Landroid/os/VibratorInfo;->hasCapability(J)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 212
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorController;->mNativeWrapper:Lcom/android/server/vibrator/VibratorController$NativeWrapper;

    invoke-virtual {v1, p1}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->setAmplitude(F)V

    .line 214
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/vibrator/VibratorController;->mIsVibrating:Z

    if-eqz v1, :cond_1

    .line 215
    iput p1, p0, Lcom/android/server/vibrator/VibratorController;->mCurrentAmplitude:F

    .line 217
    :cond_1
    monitor-exit v0

    .line 218
    return-void

    .line 217
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setExternalControl(Z)V
    .locals 3
    .param p1, "externalControl"    # Z

    .line 181
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorInfo:Landroid/os/VibratorInfo;

    const-wide/16 v1, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/os/VibratorInfo;->hasCapability(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 182
    return-void

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 185
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/vibrator/VibratorController;->mIsUnderExternalControl:Z

    .line 186
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorController;->mNativeWrapper:Lcom/android/server/vibrator/VibratorController$NativeWrapper;

    invoke-virtual {v1, p1}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->setExternalControl(Z)V

    .line 187
    monitor-exit v0

    .line 188
    return-void

    .line 187
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 318
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 319
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VibratorController{mVibratorInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorInfo:Landroid/os/VibratorInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mIsVibrating="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/vibrator/VibratorController;->mIsVibrating:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mCurrentAmplitude="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/vibrator/VibratorController;->mCurrentAmplitude:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", mIsUnderExternalControl="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/vibrator/VibratorController;->mIsUnderExternalControl:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mVibratorStateListeners count="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorStateListeners:Landroid/os/RemoteCallbackList;

    .line 325
    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x7d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    .line 319
    return-object v1

    .line 327
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public unregisterVibratorStateListener(Landroid/os/IVibratorStateListener;)Z
    .locals 4
    .param p1, "listener"    # Landroid/os/IVibratorStateListener;

    .line 101
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 102
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 104
    .local v1, "token":J
    :try_start_1
    iget-object v3, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorStateListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 106
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0

    .line 104
    return v3

    .line 106
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 107
    nop

    .end local p0    # "this":Lcom/android/server/vibrator/VibratorController;
    .end local p1    # "listener":Landroid/os/IVibratorStateListener;
    throw v3

    .line 108
    .end local v1    # "token":J
    .restart local p0    # "this":Lcom/android/server/vibrator/VibratorController;
    .restart local p1    # "listener":Landroid/os/IVibratorStateListener;
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public updateAlwaysOn(ILandroid/os/vibrator/PrebakedSegment;)V
    .locals 9
    .param p1, "id"    # I
    .param p2, "prebaked"    # Landroid/os/vibrator/PrebakedSegment;

    .line 195
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorInfo:Landroid/os/VibratorInfo;

    const-wide/16 v1, 0x40

    invoke-virtual {v0, v1, v2}, Landroid/os/VibratorInfo;->hasCapability(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 196
    return-void

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 199
    if-nez p2, :cond_1

    .line 200
    :try_start_0
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorController;->mNativeWrapper:Lcom/android/server/vibrator/VibratorController$NativeWrapper;

    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->alwaysOnDisable(J)V

    goto :goto_0

    .line 202
    :cond_1
    iget-object v2, p0, Lcom/android/server/vibrator/VibratorController;->mNativeWrapper:Lcom/android/server/vibrator/VibratorController$NativeWrapper;

    int-to-long v3, p1

    invoke-virtual {p2}, Landroid/os/vibrator/PrebakedSegment;->getEffectId()I

    move-result v1

    int-to-long v5, v1

    .line 203
    invoke-virtual {p2}, Landroid/os/vibrator/PrebakedSegment;->getEffectStrength()I

    move-result v1

    int-to-long v7, v1

    .line 202
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->alwaysOnEnable(JJJ)V

    .line 205
    :goto_0
    monitor-exit v0

    .line 206
    return-void

    .line 205
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
