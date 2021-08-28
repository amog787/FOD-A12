.class public Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog;
.super Ljava/lang/Object;
.source "SoundTriggerHw2Watchdog.java"

# interfaces
.implements Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog$Watchdog;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SoundTriggerHw2Watchdog"

.field private static final TIMEOUT_MS:J = 0xbb8L


# instance fields
.field private final mTimer:Ljava/util/Timer;

.field private final mUnderlying:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;


# direct methods
.method public constructor <init>(Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;)V
    .locals 2
    .param p1, "underlying"    # Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;

    iput-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog;->mUnderlying:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;

    .line 48
    new-instance v0, Ljava/util/Timer;

    const-string v1, "SoundTriggerHw2Watchdog"

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog;->mTimer:Ljava/util/Timer;

    .line 49
    return-void
.end method

.method static synthetic access$100()V
    .locals 0

    .line 37
    invoke-static {}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog;->rebootHal()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog;)Ljava/util/Timer;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog;

    .line 37
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog;->mTimer:Ljava/util/Timer;

    return-object v0
.end method

.method private static rebootHal()V
    .locals 2

    .line 148
    const-string v0, "sys.audio.restart.hal"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    return-void
.end method


# virtual methods
.method public getModelParameter(II)I
    .locals 3
    .param p1, "modelHandle"    # I
    .param p2, "param"    # I

    .line 112
    new-instance v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog$Watchdog;

    invoke-direct {v0, p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog$Watchdog;-><init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog;)V

    .line 113
    .local v0, "ignore":Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog$Watchdog;
    :try_start_0
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog;->mUnderlying:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;

    invoke-interface {v1, p1, p2}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;->getModelParameter(II)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    invoke-virtual {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog$Watchdog;->close()V

    .line 113
    return v1

    .line 112
    :catchall_0
    move-exception v1

    :try_start_1
    invoke-virtual {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog$Watchdog;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1
.end method

.method public getModelState(I)V
    .locals 3
    .param p1, "modelHandle"    # I

    .line 105
    new-instance v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog$Watchdog;

    invoke-direct {v0, p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog$Watchdog;-><init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog;)V

    .line 106
    .local v0, "ignore":Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog$Watchdog;
    :try_start_0
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog;->mUnderlying:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;

    invoke-interface {v1, p1}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;->getModelState(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    invoke-virtual {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog$Watchdog;->close()V

    .line 108
    .end local v0    # "ignore":Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog$Watchdog;
    return-void

    .line 105
    .restart local v0    # "ignore":Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog$Watchdog;
    :catchall_0
    move-exception v1

    :try_start_1
    invoke-virtual {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog$Watchdog;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1
.end method

.method public getProperties()Landroid/hardware/soundtrigger/V2_3/Properties;
    .locals 3

    .line 53
    new-instance v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog$Watchdog;

    invoke-direct {v0, p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog$Watchdog;-><init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog;)V

    .line 54
    .local v0, "ignore":Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog$Watchdog;
    :try_start_0
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog;->mUnderlying:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;

    invoke-interface {v1}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;->getProperties()Landroid/hardware/soundtrigger/V2_3/Properties;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    invoke-virtual {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog$Watchdog;->close()V

    .line 54
    return-object v1

    .line 53
    :catchall_0
    move-exception v1

    :try_start_1
    invoke-virtual {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog$Watchdog;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1
.end method

.method public interfaceDescriptor()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 143
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog;->mUnderlying:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;

    invoke-interface {v0}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 133
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog;->mUnderlying:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    move-result v0

    return v0
.end method

.method public loadPhraseSoundModel(Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$PhraseSoundModel;Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2$Callback;I)I
    .locals 3
    .param p1, "soundModel"    # Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$PhraseSoundModel;
    .param p2, "callback"    # Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2$Callback;
    .param p3, "cookie"    # I

    .line 69
    new-instance v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog$Watchdog;

    invoke-direct {v0, p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog$Watchdog;-><init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog;)V

    .line 70
    .local v0, "ignore":Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog$Watchdog;
    :try_start_0
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog;->mUnderlying:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;->loadPhraseSoundModel(Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$PhraseSoundModel;Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2$Callback;I)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    invoke-virtual {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog$Watchdog;->close()V

    .line 70
    return v1

    .line 69
    :catchall_0
    move-exception v1

    :try_start_1
    invoke-virtual {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog$Watchdog;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1
.end method

.method public loadSoundModel(Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2$Callback;I)I
    .locals 3
    .param p1, "soundModel"    # Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;
    .param p2, "callback"    # Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2$Callback;
    .param p3, "cookie"    # I

    .line 61
    new-instance v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog$Watchdog;

    invoke-direct {v0, p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog$Watchdog;-><init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog;)V

    .line 62
    .local v0, "ignore":Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog$Watchdog;
    :try_start_0
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog;->mUnderlying:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;->loadSoundModel(Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2$Callback;I)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    invoke-virtual {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog$Watchdog;->close()V

    .line 62
    return v1

    .line 61
    :catchall_0
    move-exception v1

    :try_start_1
    invoke-virtual {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog$Watchdog;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1
.end method

.method public queryParameter(II)Landroid/hardware/soundtrigger/V2_3/ModelParameterRange;
    .locals 3
    .param p1, "modelHandle"    # I
    .param p2, "param"    # I

    .line 126
    new-instance v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog$Watchdog;

    invoke-direct {v0, p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog$Watchdog;-><init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog;)V

    .line 127
    .local v0, "ignore":Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog$Watchdog;
    :try_start_0
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog;->mUnderlying:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;

    invoke-interface {v1, p1, p2}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;->queryParameter(II)Landroid/hardware/soundtrigger/V2_3/ModelParameterRange;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    invoke-virtual {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog$Watchdog;->close()V

    .line 127
    return-object v1

    .line 126
    :catchall_0
    move-exception v1

    :try_start_1
    invoke-virtual {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog$Watchdog;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1
.end method

.method public setModelParameter(III)V
    .locals 3
    .param p1, "modelHandle"    # I
    .param p2, "param"    # I
    .param p3, "value"    # I

    .line 119
    new-instance v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog$Watchdog;

    invoke-direct {v0, p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog$Watchdog;-><init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog;)V

    .line 120
    .local v0, "ignore":Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog$Watchdog;
    :try_start_0
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog;->mUnderlying:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;->setModelParameter(III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    invoke-virtual {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog$Watchdog;->close()V

    .line 122
    .end local v0    # "ignore":Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog$Watchdog;
    return-void

    .line 119
    .restart local v0    # "ignore":Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog$Watchdog;
    :catchall_0
    move-exception v1

    :try_start_1
    invoke-virtual {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog$Watchdog;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1
.end method

.method public startRecognition(ILandroid/hardware/soundtrigger/V2_3/RecognitionConfig;Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2$Callback;I)V
    .locals 3
    .param p1, "modelHandle"    # I
    .param p2, "config"    # Landroid/hardware/soundtrigger/V2_3/RecognitionConfig;
    .param p3, "callback"    # Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2$Callback;
    .param p4, "cookie"    # I

    .line 98
    new-instance v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog$Watchdog;

    invoke-direct {v0, p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog$Watchdog;-><init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog;)V

    .line 99
    .local v0, "ignore":Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog$Watchdog;
    :try_start_0
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog;->mUnderlying:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;->startRecognition(ILandroid/hardware/soundtrigger/V2_3/RecognitionConfig;Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2$Callback;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    invoke-virtual {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog$Watchdog;->close()V

    .line 101
    .end local v0    # "ignore":Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog$Watchdog;
    return-void

    .line 98
    .restart local v0    # "ignore":Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog$Watchdog;
    :catchall_0
    move-exception v1

    :try_start_1
    invoke-virtual {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog$Watchdog;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1
.end method

.method public stopAllRecognitions()V
    .locals 3

    .line 90
    new-instance v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog$Watchdog;

    invoke-direct {v0, p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog$Watchdog;-><init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog;)V

    .line 91
    .local v0, "ignore":Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog$Watchdog;
    :try_start_0
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog;->mUnderlying:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;

    invoke-interface {v1}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;->stopAllRecognitions()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    invoke-virtual {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog$Watchdog;->close()V

    .line 93
    .end local v0    # "ignore":Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog$Watchdog;
    return-void

    .line 90
    .restart local v0    # "ignore":Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog$Watchdog;
    :catchall_0
    move-exception v1

    :try_start_1
    invoke-virtual {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog$Watchdog;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1
.end method

.method public stopRecognition(I)V
    .locals 3
    .param p1, "modelHandle"    # I

    .line 83
    new-instance v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog$Watchdog;

    invoke-direct {v0, p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog$Watchdog;-><init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog;)V

    .line 84
    .local v0, "ignore":Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog$Watchdog;
    :try_start_0
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog;->mUnderlying:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;

    invoke-interface {v1, p1}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;->stopRecognition(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    invoke-virtual {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog$Watchdog;->close()V

    .line 86
    .end local v0    # "ignore":Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog$Watchdog;
    return-void

    .line 83
    .restart local v0    # "ignore":Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog$Watchdog;
    :catchall_0
    move-exception v1

    :try_start_1
    invoke-virtual {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog$Watchdog;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1
.end method

.method public unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;

    .line 138
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog;->mUnderlying:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;

    invoke-interface {v0, p1}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;->unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z

    move-result v0

    return v0
.end method

.method public unloadSoundModel(I)V
    .locals 3
    .param p1, "modelHandle"    # I

    .line 76
    new-instance v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog$Watchdog;

    invoke-direct {v0, p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog$Watchdog;-><init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog;)V

    .line 77
    .local v0, "ignore":Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog$Watchdog;
    :try_start_0
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog;->mUnderlying:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;

    invoke-interface {v1, p1}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;->unloadSoundModel(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    invoke-virtual {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog$Watchdog;->close()V

    .line 79
    .end local v0    # "ignore":Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog$Watchdog;
    return-void

    .line 76
    .restart local v0    # "ignore":Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog$Watchdog;
    :catchall_0
    move-exception v1

    :try_start_1
    invoke-virtual {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog$Watchdog;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1
.end method
