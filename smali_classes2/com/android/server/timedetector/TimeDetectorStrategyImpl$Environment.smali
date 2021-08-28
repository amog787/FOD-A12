.class public interface abstract Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;
.super Ljava/lang/Object;
.source "TimeDetectorStrategyImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/timedetector/TimeDetectorStrategyImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Environment"
.end annotation


# virtual methods
.method public abstract acquireWakeLock()V
.end method

.method public abstract autoOriginPriorities()[I
.end method

.method public abstract autoTimeLowerBound()Ljava/time/Instant;
.end method

.method public abstract configurationInternal(I)Lcom/android/server/timedetector/ConfigurationInternal;
.end method

.method public abstract elapsedRealtimeMillis()J
.end method

.method public abstract isAutoTimeDetectionEnabled()Z
.end method

.method public abstract releaseWakeLock()V
.end method

.method public abstract setConfigChangeListener(Lcom/android/server/timezonedetector/ConfigurationChangeListener;)V
.end method

.method public abstract setSystemClock(J)V
.end method

.method public abstract systemClockMillis()J
.end method

.method public abstract systemClockUpdateThresholdMillis()I
.end method
