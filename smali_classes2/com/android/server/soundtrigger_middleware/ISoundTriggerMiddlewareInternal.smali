.class public interface abstract Lcom/android/server/soundtrigger_middleware/ISoundTriggerMiddlewareInternal;
.super Ljava/lang/Object;
.source "ISoundTriggerMiddlewareInternal.java"

# interfaces
.implements Landroid/media/ICaptureStateListener;


# virtual methods
.method public abstract attach(ILandroid/media/soundtrigger_middleware/ISoundTriggerCallback;)Landroid/media/soundtrigger_middleware/ISoundTriggerModule;
.end method

.method public abstract listModules()[Landroid/media/soundtrigger_middleware/SoundTriggerModuleDescriptor;
.end method
