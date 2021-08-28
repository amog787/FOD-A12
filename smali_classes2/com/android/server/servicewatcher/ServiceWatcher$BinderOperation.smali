.class public interface abstract Lcom/android/server/servicewatcher/ServiceWatcher$BinderOperation;
.super Ljava/lang/Object;
.source "ServiceWatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/servicewatcher/ServiceWatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "BinderOperation"
.end annotation


# virtual methods
.method public onError()V
    .locals 0

    .line 73
    return-void
.end method

.method public abstract run(Landroid/os/IBinder;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
