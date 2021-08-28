.class public interface abstract Lcom/android/server/timezonedetector/TimeZoneDetectorInternal;
.super Ljava/lang/Object;
.source "TimeZoneDetectorInternal.java"

# interfaces
.implements Lcom/android/server/timezonedetector/Dumpable$Container;


# virtual methods
.method public abstract addConfigurationListener(Lcom/android/server/timezonedetector/ConfigurationChangeListener;)V
.end method

.method public abstract generateMetricsState()Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;
.end method

.method public abstract getCurrentUserConfigurationInternal()Lcom/android/server/timezonedetector/ConfigurationInternal;
.end method

.method public abstract removeConfigurationListener(Lcom/android/server/timezonedetector/ConfigurationChangeListener;)V
.end method

.method public abstract suggestGeolocationTimeZone(Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;)V
.end method
