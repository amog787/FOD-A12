.class public interface abstract Lcom/android/server/wm/WindowManagerInternal$AccessibilityControllerInternal;
.super Ljava/lang/Object;
.source "WindowManagerInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowManagerInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AccessibilityControllerInternal"
.end annotation


# virtual methods
.method public abstract isAccessibilityTracingEnabled()Z
.end method

.method public abstract logTrace(Ljava/lang/String;Ljava/lang/String;[BI[Ljava/lang/StackTraceElement;)V
.end method

.method public abstract logTrace(Ljava/lang/String;Ljava/lang/String;[BI[Ljava/lang/StackTraceElement;JIJ)V
.end method

.method public abstract startTrace()V
.end method

.method public abstract stopTrace()V
.end method
