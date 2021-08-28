.class public final synthetic Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;->lambda$runSuggestGeolocationTimeZone$0$TimeZoneDetectorShellCommand()Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;

    move-result-object v0

    return-object v0
.end method
