.class public interface abstract Lcom/android/server/wm/WindowManagerInternal$WindowsForAccessibilityCallback;
.super Ljava/lang/Object;
.source "WindowManagerInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowManagerInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "WindowsForAccessibilityCallback"
.end annotation


# virtual methods
.method public abstract onWindowsForAccessibilityChanged(ZILandroid/os/IBinder;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Landroid/os/IBinder;",
            "Ljava/util/List<",
            "Landroid/view/WindowInfo;",
            ">;)V"
        }
    .end annotation
.end method
