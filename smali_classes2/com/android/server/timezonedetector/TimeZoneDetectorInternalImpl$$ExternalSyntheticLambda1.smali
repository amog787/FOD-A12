.class public final synthetic Lcom/android/server/timezonedetector/TimeZoneDetectorInternalImpl$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/timezonedetector/TimeZoneDetectorInternalImpl;

.field public final synthetic f$1:Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/timezonedetector/TimeZoneDetectorInternalImpl;Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorInternalImpl$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/timezonedetector/TimeZoneDetectorInternalImpl;

    iput-object p2, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorInternalImpl$$ExternalSyntheticLambda1;->f$1:Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorInternalImpl$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/timezonedetector/TimeZoneDetectorInternalImpl;

    iget-object v1, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorInternalImpl$$ExternalSyntheticLambda1;->f$1:Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;

    invoke-virtual {v0, v1}, Lcom/android/server/timezonedetector/TimeZoneDetectorInternalImpl;->lambda$suggestGeolocationTimeZone$0$TimeZoneDetectorInternalImpl(Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;)V

    return-void
.end method
