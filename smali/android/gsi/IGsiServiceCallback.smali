.class public interface abstract Landroid/gsi/IGsiServiceCallback;
.super Ljava/lang/Object;
.source "IGsiServiceCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/gsi/IGsiServiceCallback$Stub;,
        Landroid/gsi/IGsiServiceCallback$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.gsi.IGsiServiceCallback"


# virtual methods
.method public abstract onResult(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
