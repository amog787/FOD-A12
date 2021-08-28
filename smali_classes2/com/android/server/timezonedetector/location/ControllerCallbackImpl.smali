.class Lcom/android/server/timezonedetector/location/ControllerCallbackImpl;
.super Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController$Callback;
.source "ControllerCallbackImpl.java"


# direct methods
.method constructor <init>(Lcom/android/server/timezonedetector/location/ThreadingDomain;)V
    .locals 0
    .param p1, "threadingDomain"    # Lcom/android/server/timezonedetector/location/ThreadingDomain;

    .line 32
    invoke-direct {p0, p1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController$Callback;-><init>(Lcom/android/server/timezonedetector/location/ThreadingDomain;)V

    .line 33
    return-void
.end method


# virtual methods
.method suggest(Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;)V
    .locals 1
    .param p1, "suggestion"    # Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;

    .line 37
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/ControllerCallbackImpl;->mThreadingDomain:Lcom/android/server/timezonedetector/location/ThreadingDomain;

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/location/ThreadingDomain;->assertCurrentThread()V

    .line 39
    const-class v0, Lcom/android/server/timezonedetector/TimeZoneDetectorInternal;

    .line 40
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/timezonedetector/TimeZoneDetectorInternal;

    .line 41
    .local v0, "timeZoneDetector":Lcom/android/server/timezonedetector/TimeZoneDetectorInternal;
    invoke-interface {v0, p1}, Lcom/android/server/timezonedetector/TimeZoneDetectorInternal;->suggestGeolocationTimeZone(Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;)V

    .line 42
    return-void
.end method
