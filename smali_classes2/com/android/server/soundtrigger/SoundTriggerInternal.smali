.class public interface abstract Lcom/android/server/soundtrigger/SoundTriggerInternal;
.super Ljava/lang/Object;
.source "SoundTriggerInternal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/soundtrigger/SoundTriggerInternal$Session;
    }
.end annotation


# static fields
.field public static final STATUS_ERROR:I = -0x80000000

.field public static final STATUS_OK:I


# virtual methods
.method public abstract attach(Landroid/os/IBinder;)Lcom/android/server/soundtrigger/SoundTriggerInternal$Session;
.end method

.method public abstract dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
.end method
