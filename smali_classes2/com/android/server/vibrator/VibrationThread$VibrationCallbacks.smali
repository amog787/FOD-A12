.class interface abstract Lcom/android/server/vibrator/VibrationThread$VibrationCallbacks;
.super Ljava/lang/Object;
.source "VibrationThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vibrator/VibrationThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "VibrationCallbacks"
.end annotation


# virtual methods
.method public abstract cancelSyncedVibration()V
.end method

.method public abstract onVibrationCompleted(JLcom/android/server/vibrator/Vibration$Status;)V
.end method

.method public abstract onVibratorsReleased()V
.end method

.method public abstract prepareSyncedVibration(J[I)Z
.end method

.method public abstract triggerSyncedVibration(J)Z
.end method
