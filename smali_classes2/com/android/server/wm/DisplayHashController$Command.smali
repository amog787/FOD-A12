.class interface abstract Lcom/android/server/wm/DisplayHashController$Command;
.super Ljava/lang/Object;
.source "DisplayHashController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/DisplayHashController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "Command"
.end annotation


# virtual methods
.method public abstract run(Landroid/service/displayhash/IDisplayHashingService;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
