.class public final synthetic Lcom/android/server/timezonedetector/location/ControllerImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/timezonedetector/location/ControllerImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/timezonedetector/location/ControllerImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/timezonedetector/location/ControllerImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/timezonedetector/location/ControllerImpl;

    return-void
.end method


# virtual methods
.method public final onProviderStateChange(Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/timezonedetector/location/ControllerImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/timezonedetector/location/ControllerImpl;

    invoke-virtual {v0, p1}, Lcom/android/server/timezonedetector/location/ControllerImpl;->onProviderStateChange(Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;)V

    return-void
.end method
