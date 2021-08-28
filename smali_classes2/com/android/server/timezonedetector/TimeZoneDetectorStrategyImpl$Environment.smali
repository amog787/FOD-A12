.class public interface abstract Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$Environment;
.super Ljava/lang/Object;
.source "TimeZoneDetectorStrategyImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Environment"
.end annotation


# virtual methods
.method public abstract getConfigurationInternal(I)Lcom/android/server/timezonedetector/ConfigurationInternal;
.end method

.method public abstract getCurrentUserId()I
.end method

.method public abstract getDeviceTimeZone()Ljava/lang/String;
.end method

.method public abstract isDeviceTimeZoneInitialized()Z
.end method

.method public abstract setConfigChangeListener(Lcom/android/server/timezonedetector/ConfigurationChangeListener;)V
.end method

.method public abstract setDeviceTimeZone(Ljava/lang/String;)V
.end method

.method public abstract storeConfiguration(ILandroid/app/time/TimeZoneConfiguration;)V
.end method
