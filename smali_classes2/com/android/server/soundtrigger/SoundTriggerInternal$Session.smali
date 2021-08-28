.class public interface abstract Lcom/android/server/soundtrigger/SoundTriggerInternal$Session;
.super Ljava/lang/Object;
.source "SoundTriggerInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/soundtrigger/SoundTriggerInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Session"
.end annotation


# virtual methods
.method public abstract dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
.end method

.method public abstract getModuleProperties()Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;
.end method

.method public abstract getParameter(II)I
.end method

.method public abstract queryParameter(II)Landroid/hardware/soundtrigger/SoundTrigger$ModelParamRange;
.end method

.method public abstract setParameter(III)I
.end method

.method public abstract startRecognition(ILandroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;Landroid/hardware/soundtrigger/IRecognitionStatusCallback;Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;Z)I
.end method

.method public abstract stopRecognition(ILandroid/hardware/soundtrigger/IRecognitionStatusCallback;)I
.end method

.method public abstract unloadKeyphraseModel(I)I
.end method
