.class public interface abstract Lcom/android/server/biometrics/sensors/LockoutTracker;
.super Ljava/lang/Object;
.source "LockoutTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/biometrics/sensors/LockoutTracker$LockoutMode;
    }
.end annotation


# static fields
.field public static final LOCKOUT_NONE:I = 0x0

.field public static final LOCKOUT_PERMANENT:I = 0x2

.field public static final LOCKOUT_TIMED:I = 0x1


# virtual methods
.method public abstract getLockoutModeForUser(I)I
.end method
