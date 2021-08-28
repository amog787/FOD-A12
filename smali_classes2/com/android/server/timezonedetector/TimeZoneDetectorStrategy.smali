.class public interface abstract Lcom/android/server/timezonedetector/TimeZoneDetectorStrategy;
.super Ljava/lang/Object;
.source "TimeZoneDetectorStrategy.java"

# interfaces
.implements Lcom/android/server/timezonedetector/Dumpable;
.implements Lcom/android/server/timezonedetector/Dumpable$Container;


# virtual methods
.method public abstract addConfigChangeListener(Lcom/android/server/timezonedetector/ConfigurationChangeListener;)V
.end method

.method public abstract generateMetricsState()Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;
.end method

.method public abstract getConfigurationInternal(I)Lcom/android/server/timezonedetector/ConfigurationInternal;
.end method

.method public abstract getCurrentUserConfigurationInternal()Lcom/android/server/timezonedetector/ConfigurationInternal;
.end method

.method public abstract suggestGeolocationTimeZone(Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;)V
.end method

.method public abstract suggestManualTimeZone(ILandroid/app/timezonedetector/ManualTimeZoneSuggestion;)Z
.end method

.method public abstract suggestTelephonyTimeZone(Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;)V
.end method

.method public abstract updateConfiguration(ILandroid/app/time/TimeZoneConfiguration;)Z
.end method
