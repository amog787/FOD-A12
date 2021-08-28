.class final Lcom/android/server/voiceinteraction/SoundTriggerSessionPermissionsDecorator;
.super Ljava/lang/Object;
.source "SoundTriggerSessionPermissionsDecorator.java"

# interfaces
.implements Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession;


# static fields
.field static final TAG:Ljava/lang/String; = "SoundTriggerSessionPermissionsDecorator"

.field private static final TEMPORARY_PERMISSION_DENIED:I = 0x3


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDelegate:Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession;

.field private final mOriginatorIdentity:Landroid/media/permission/Identity;


# direct methods
.method constructor <init>(Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession;Landroid/content/Context;Landroid/media/permission/Identity;)V
    .locals 0
    .param p1, "delegate"    # Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "originatorIdentity"    # Landroid/media/permission/Identity;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/android/server/voiceinteraction/SoundTriggerSessionPermissionsDecorator;->mDelegate:Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession;

    .line 58
    iput-object p2, p0, Lcom/android/server/voiceinteraction/SoundTriggerSessionPermissionsDecorator;->mContext:Landroid/content/Context;

    .line 59
    iput-object p3, p0, Lcom/android/server/voiceinteraction/SoundTriggerSessionPermissionsDecorator;->mOriginatorIdentity:Landroid/media/permission/Identity;

    .line 60
    return-void
.end method

.method static enforcePermissionForPreflight(Landroid/content/Context;Landroid/media/permission/Identity;Ljava/lang/String;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "identity"    # Landroid/media/permission/Identity;
    .param p2, "permission"    # Ljava/lang/String;

    .line 129
    invoke-static {p0, p1, p2}, Landroid/media/permission/PermissionUtil;->checkPermissionForPreflight(Landroid/content/Context;Landroid/media/permission/Identity;Ljava/lang/String;)I

    move-result v0

    .line 131
    .local v0, "status":I
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const-string v4, "Failed to obtain permission %s for identity %s"

    packed-switch v0, :pswitch_data_0

    .line 143
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unexpected permission check result."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 135
    :pswitch_0
    new-instance v5, Ljava/lang/SecurityException;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p2, v3, v2

    .line 137
    invoke-static {p1}, Lcom/android/server/voiceinteraction/SoundTriggerSessionPermissionsDecorator;->toString(Landroid/media/permission/Identity;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v1

    .line 136
    invoke-static {v4, v3}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 139
    :pswitch_1
    new-instance v5, Landroid/os/ServiceSpecificException;

    const/4 v6, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p2, v3, v2

    .line 141
    invoke-static {p1}, Lcom/android/server/voiceinteraction/SoundTriggerSessionPermissionsDecorator;->toString(Landroid/media/permission/Identity;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v1

    .line 140
    invoke-static {v4, v3}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v6, v1}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v5

    .line 133
    :pswitch_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private enforcePermissions()V
    .locals 3

    .line 114
    iget-object v0, p0, Lcom/android/server/voiceinteraction/SoundTriggerSessionPermissionsDecorator;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/voiceinteraction/SoundTriggerSessionPermissionsDecorator;->mOriginatorIdentity:Landroid/media/permission/Identity;

    const-string v2, "android.permission.RECORD_AUDIO"

    invoke-static {v0, v1, v2}, Lcom/android/server/voiceinteraction/SoundTriggerSessionPermissionsDecorator;->enforcePermissionForPreflight(Landroid/content/Context;Landroid/media/permission/Identity;Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/android/server/voiceinteraction/SoundTriggerSessionPermissionsDecorator;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/voiceinteraction/SoundTriggerSessionPermissionsDecorator;->mOriginatorIdentity:Landroid/media/permission/Identity;

    const-string v2, "android.permission.CAPTURE_AUDIO_HOTWORD"

    invoke-static {v0, v1, v2}, Lcom/android/server/voiceinteraction/SoundTriggerSessionPermissionsDecorator;->enforcePermissionForPreflight(Landroid/content/Context;Landroid/media/permission/Identity;Ljava/lang/String;)V

    .line 116
    return-void
.end method

.method static toString(Landroid/media/permission/Identity;)Ljava/lang/String;
    .locals 2
    .param p0, "identity"    # Landroid/media/permission/Identity;

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/media/permission/Identity;->uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/media/permission/Identity;->pid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/media/permission/Identity;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " attributionTag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/media/permission/Identity;->attributionTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 2

    .line 108
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This object isn\'t intended to be used as a Binder."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDspModuleProperties()Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lcom/android/server/voiceinteraction/SoundTriggerSessionPermissionsDecorator;->mDelegate:Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession;

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

    .line 96
    invoke-direct {p0}, Lcom/android/server/voiceinteraction/SoundTriggerSessionPermissionsDecorator;->enforcePermissions()V

    .line 97
    iget-object v0, p0, Lcom/android/server/voiceinteraction/SoundTriggerSessionPermissionsDecorator;->mDelegate:Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession;

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

    .line 102
    invoke-direct {p0}, Lcom/android/server/voiceinteraction/SoundTriggerSessionPermissionsDecorator;->enforcePermissions()V

    .line 103
    iget-object v0, p0, Lcom/android/server/voiceinteraction/SoundTriggerSessionPermissionsDecorator;->mDelegate:Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession;

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

    .line 90
    invoke-direct {p0}, Lcom/android/server/voiceinteraction/SoundTriggerSessionPermissionsDecorator;->enforcePermissions()V

    .line 91
    iget-object v0, p0, Lcom/android/server/voiceinteraction/SoundTriggerSessionPermissionsDecorator;->mDelegate:Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession;->setParameter(III)I

    move-result v0

    return v0
.end method

.method public startRecognition(ILjava/lang/String;Lcom/android/internal/app/IHotwordRecognitionStatusCallback;Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;Z)I
    .locals 8
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

    .line 73
    const-string v0, "SoundTriggerSessionPermissionsDecorator"

    const-string v1, "startRecognition"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    invoke-direct {p0}, Lcom/android/server/voiceinteraction/SoundTriggerSessionPermissionsDecorator;->enforcePermissions()V

    .line 76
    iget-object v2, p0, Lcom/android/server/voiceinteraction/SoundTriggerSessionPermissionsDecorator;->mDelegate:Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession;

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    invoke-interface/range {v2 .. v7}, Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession;->startRecognition(ILjava/lang/String;Lcom/android/internal/app/IHotwordRecognitionStatusCallback;Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;Z)I

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

    .line 84
    invoke-direct {p0}, Lcom/android/server/voiceinteraction/SoundTriggerSessionPermissionsDecorator;->enforcePermissions()V

    .line 85
    iget-object v0, p0, Lcom/android/server/voiceinteraction/SoundTriggerSessionPermissionsDecorator;->mDelegate:Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession;->stopRecognition(ILcom/android/internal/app/IHotwordRecognitionStatusCallback;)I

    move-result v0

    return v0
.end method
