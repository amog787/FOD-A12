.class final Lcom/android/server/voiceinteraction/SoundTriggerSessionBinderProxy;
.super Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession$Stub;
.source "SoundTriggerSessionBinderProxy.java"


# instance fields
.field private final mDelegate:Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession;


# direct methods
.method constructor <init>(Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession;)V
    .locals 0
    .param p1, "delegate"    # Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession;

    .line 34
    invoke-direct {p0}, Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession$Stub;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/android/server/voiceinteraction/SoundTriggerSessionBinderProxy;->mDelegate:Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession;

    .line 36
    return-void
.end method


# virtual methods
.method public getDspModuleProperties()Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lcom/android/server/voiceinteraction/SoundTriggerSessionBinderProxy;->mDelegate:Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession;

    invoke-interface {v0}, Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession;->getDspModuleProperties()Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    move-result-object v0

    return-object v0
.end method

.method public getParameter(II)I
    .locals 1
    .param p1, "i"    # I
    .param p2, "i1"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lcom/android/server/voiceinteraction/SoundTriggerSessionBinderProxy;->mDelegate:Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession;->getParameter(II)I

    move-result v0

    return v0
.end method

.method public queryParameter(II)Landroid/hardware/soundtrigger/SoundTrigger$ModelParamRange;
    .locals 1
    .param p1, "i"    # I
    .param p2, "i1"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/android/server/voiceinteraction/SoundTriggerSessionBinderProxy;->mDelegate:Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession;->queryParameter(II)Landroid/hardware/soundtrigger/SoundTrigger$ModelParamRange;

    move-result-object v0

    return-object v0
.end method

.method public setParameter(III)I
    .locals 1
    .param p1, "i"    # I
    .param p2, "i1"    # I
    .param p3, "i2"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/android/server/voiceinteraction/SoundTriggerSessionBinderProxy;->mDelegate:Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession;->setParameter(III)I

    move-result v0

    return v0
.end method

.method public startRecognition(ILjava/lang/String;Lcom/android/internal/app/IHotwordRecognitionStatusCallback;Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;Z)I
    .locals 6
    .param p1, "i"    # I
    .param p2, "s"    # Ljava/lang/String;
    .param p3, "iHotwordRecognitionStatusCallback"    # Lcom/android/internal/app/IHotwordRecognitionStatusCallback;
    .param p4, "recognitionConfig"    # Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;
    .param p5, "b"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/android/server/voiceinteraction/SoundTriggerSessionBinderProxy;->mDelegate:Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession;->startRecognition(ILjava/lang/String;Lcom/android/internal/app/IHotwordRecognitionStatusCallback;Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;Z)I

    move-result v0

    return v0
.end method

.method public stopRecognition(ILcom/android/internal/app/IHotwordRecognitionStatusCallback;)I
    .locals 1
    .param p1, "i"    # I
    .param p2, "iHotwordRecognitionStatusCallback"    # Lcom/android/internal/app/IHotwordRecognitionStatusCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/android/server/voiceinteraction/SoundTriggerSessionBinderProxy;->mDelegate:Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession;->stopRecognition(ILcom/android/internal/app/IHotwordRecognitionStatusCallback;)I

    move-result v0

    return v0
.end method
