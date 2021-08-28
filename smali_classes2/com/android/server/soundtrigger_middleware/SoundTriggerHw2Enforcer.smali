.class public Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;
.super Ljava/lang/Object;
.source "SoundTriggerHw2Enforcer.java"

# interfaces
.implements Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer$CallbackEnforcer;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "SoundTriggerHw2Enforcer"


# instance fields
.field mModelStates:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final mUnderlying:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;


# direct methods
.method public constructor <init>(Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;)V
    .locals 1
    .param p1, "underlying"    # Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;->mModelStates:Ljava/util/Map;

    .line 49
    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;->mUnderlying:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;

    .line 50
    return-void
.end method

.method static synthetic access$100()V
    .locals 0

    .line 41
    invoke-static {}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;->rebootHal()V

    return-void
.end method

.method private static handleException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;
    .locals 2
    .param p0, "e"    # Ljava/lang/RuntimeException;

    .line 198
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Landroid/os/DeadObjectException;

    const-string v1, "SoundTriggerHw2Enforcer"

    if-eqz v0, :cond_0

    .line 200
    const-string v0, "HAL died"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    new-instance v0, Lcom/android/server/soundtrigger_middleware/RecoverableException;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/android/server/soundtrigger_middleware/RecoverableException;-><init>(I)V

    throw v0

    .line 203
    :cond_0
    const-string v0, "Exception caught from HAL, rebooting HAL"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    invoke-static {}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;->rebootHal()V

    .line 205
    throw p0
.end method

.method private static rebootHal()V
    .locals 2

    .line 210
    const-string v0, "sys.audio.restart.hal"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    return-void
.end method


# virtual methods
.method public getModelParameter(II)I
    .locals 2
    .param p1, "modelHandle"    # I
    .param p2, "param"    # I

    .line 158
    :try_start_0
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;->mUnderlying:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;

    invoke-interface {v0, p1, p2}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;->getModelParameter(II)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 159
    :catch_0
    move-exception v0

    .line 160
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-static {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;->handleException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getModelState(I)V
    .locals 2
    .param p1, "modelHandle"    # I

    .line 149
    :try_start_0
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;->mUnderlying:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;

    invoke-interface {v0, p1}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;->getModelState(I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    nop

    .line 153
    return-void

    .line 150
    :catch_0
    move-exception v0

    .line 151
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-static {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;->handleException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getProperties()Landroid/hardware/soundtrigger/V2_3/Properties;
    .locals 2

    .line 55
    :try_start_0
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;->mUnderlying:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;

    invoke-interface {v0}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;->getProperties()Landroid/hardware/soundtrigger/V2_3/Properties;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 56
    :catch_0
    move-exception v0

    .line 57
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-static {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;->handleException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public interfaceDescriptor()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 194
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;->mUnderlying:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;

    invoke-interface {v0}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 184
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;->mUnderlying:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    move-result v0

    return v0
.end method

.method public loadPhraseSoundModel(Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$PhraseSoundModel;Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2$Callback;I)I
    .locals 5
    .param p1, "soundModel"    # Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$PhraseSoundModel;
    .param p2, "callback"    # Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2$Callback;
    .param p3, "cookie"    # I

    .line 80
    :try_start_0
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;->mUnderlying:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;

    new-instance v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer$CallbackEnforcer;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p2, v2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer$CallbackEnforcer;-><init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2$Callback;Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer$1;)V

    invoke-interface {v0, p1, v1, p3}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;->loadPhraseSoundModel(Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$PhraseSoundModel;Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2$Callback;I)I

    move-result v0

    .line 83
    .local v0, "handle":I
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;->mModelStates:Ljava/util/Map;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    :try_start_1
    iget-object v2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;->mModelStates:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    monitor-exit v1

    .line 86
    return v0

    .line 85
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;
    .end local p1    # "soundModel":Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$PhraseSoundModel;
    .end local p2    # "callback":Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2$Callback;
    .end local p3    # "cookie":I
    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    .line 87
    .end local v0    # "handle":I
    .restart local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;
    .restart local p1    # "soundModel":Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$PhraseSoundModel;
    .restart local p2    # "callback":Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2$Callback;
    .restart local p3    # "cookie":I
    :catch_0
    move-exception v0

    .line 88
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-static {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;->handleException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public loadSoundModel(Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2$Callback;I)I
    .locals 5
    .param p1, "soundModel"    # Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;
    .param p2, "callback"    # Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2$Callback;
    .param p3, "cookie"    # I

    .line 65
    :try_start_0
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;->mUnderlying:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;

    new-instance v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer$CallbackEnforcer;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p2, v2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer$CallbackEnforcer;-><init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2$Callback;Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer$1;)V

    invoke-interface {v0, p1, v1, p3}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;->loadSoundModel(Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2$Callback;I)I

    move-result v0

    .line 67
    .local v0, "handle":I
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;->mModelStates:Ljava/util/Map;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    :try_start_1
    iget-object v2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;->mModelStates:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    monitor-exit v1

    .line 70
    return v0

    .line 69
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;
    .end local p1    # "soundModel":Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;
    .end local p2    # "callback":Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2$Callback;
    .end local p3    # "cookie":I
    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    .line 71
    .end local v0    # "handle":I
    .restart local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;
    .restart local p1    # "soundModel":Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;
    .restart local p2    # "callback":Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2$Callback;
    .restart local p3    # "cookie":I
    :catch_0
    move-exception v0

    .line 72
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-static {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;->handleException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public queryParameter(II)Landroid/hardware/soundtrigger/V2_3/ModelParameterRange;
    .locals 2
    .param p1, "modelHandle"    # I
    .param p2, "param"    # I

    .line 176
    :try_start_0
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;->mUnderlying:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;

    invoke-interface {v0, p1, p2}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;->queryParameter(II)Landroid/hardware/soundtrigger/V2_3/ModelParameterRange;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 177
    :catch_0
    move-exception v0

    .line 178
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-static {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;->handleException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setModelParameter(III)V
    .locals 2
    .param p1, "modelHandle"    # I
    .param p2, "param"    # I
    .param p3, "value"    # I

    .line 167
    :try_start_0
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;->mUnderlying:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;->setModelParameter(III)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    nop

    .line 171
    return-void

    .line 168
    :catch_0
    move-exception v0

    .line 169
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-static {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;->handleException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public startRecognition(ILandroid/hardware/soundtrigger/V2_3/RecognitionConfig;Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2$Callback;I)V
    .locals 4
    .param p1, "modelHandle"    # I
    .param p2, "config"    # Landroid/hardware/soundtrigger/V2_3/RecognitionConfig;
    .param p3, "callback"    # Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2$Callback;
    .param p4, "cookie"    # I

    .line 135
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;->mModelStates:Ljava/util/Map;

    monitor-enter v0

    .line 136
    :try_start_0
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;->mModelStates:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    :try_start_1
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;->mUnderlying:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;

    new-instance v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer$CallbackEnforcer;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p3, v2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer$CallbackEnforcer;-><init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2$Callback;Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer$1;)V

    invoke-interface {v0, p1, p2, v1, p4}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;->startRecognition(ILandroid/hardware/soundtrigger/V2_3/RecognitionConfig;Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2$Callback;I)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 143
    nop

    .line 144
    return-void

    .line 141
    :catch_0
    move-exception v0

    .line 142
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-static {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;->handleException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 137
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public stopAllRecognitions()V
    .locals 4

    .line 119
    :try_start_0
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;->mUnderlying:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;

    invoke-interface {v0}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;->stopAllRecognitions()V

    .line 120
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;->mModelStates:Ljava/util/Map;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    :try_start_1
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;->mModelStates:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 122
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    nop

    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    goto :goto_0

    .line 124
    :cond_0
    monitor-exit v0

    .line 127
    nop

    .line 128
    return-void

    .line 124
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;
    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    .line 125
    .restart local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;
    :catch_0
    move-exception v0

    .line 126
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-static {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;->handleException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public stopRecognition(I)V
    .locals 4
    .param p1, "modelHandle"    # I

    .line 107
    :try_start_0
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;->mUnderlying:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;

    invoke-interface {v0, p1}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;->stopRecognition(I)V

    .line 108
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;->mModelStates:Ljava/util/Map;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    :try_start_1
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;->mModelStates:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    monitor-exit v0

    .line 113
    nop

    .line 114
    return-void

    .line 110
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;
    .end local p1    # "modelHandle":I
    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    .line 111
    .restart local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;
    .restart local p1    # "modelHandle":I
    :catch_0
    move-exception v0

    .line 112
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-static {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;->handleException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;

    .line 189
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;->mUnderlying:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;

    invoke-interface {v0, p1}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;->unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z

    move-result v0

    return v0
.end method

.method public unloadSoundModel(I)V
    .locals 3
    .param p1, "modelHandle"    # I

    .line 95
    :try_start_0
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;->mUnderlying:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;

    invoke-interface {v0, p1}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;->unloadSoundModel(I)V

    .line 96
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;->mModelStates:Ljava/util/Map;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :try_start_1
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;->mModelStates:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    monitor-exit v0

    .line 101
    nop

    .line 102
    return-void

    .line 98
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;
    .end local p1    # "modelHandle":I
    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    .line 99
    .restart local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;
    .restart local p1    # "modelHandle":I
    :catch_0
    move-exception v0

    .line 100
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-static {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;->handleException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
