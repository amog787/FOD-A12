.class public interface abstract Lcom/android/server/accessibility/magnification/WindowMagnificationManager$Callback;
.super Ljava/lang/Object;
.source "WindowMagnificationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/magnification/WindowMagnificationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract onAccessibilityActionPerformed(I)V
.end method

.method public abstract onPerformScaleAction(IF)V
.end method

.method public abstract onWindowMagnificationActivationState(IZ)V
.end method
