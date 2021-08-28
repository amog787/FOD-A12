.class public final synthetic Lcom/android/server/timezonedetector/location/ControllerImpl$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/timezonedetector/location/ControllerImpl;

.field public final synthetic f$1:Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/timezonedetector/location/ControllerImpl;Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/timezonedetector/location/ControllerImpl$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/timezonedetector/location/ControllerImpl;

    iput-object p2, p0, Lcom/android/server/timezonedetector/location/ControllerImpl$$ExternalSyntheticLambda1;->f$1:Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/timezonedetector/location/ControllerImpl$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/timezonedetector/location/ControllerImpl;

    iget-object v1, p0, Lcom/android/server/timezonedetector/location/ControllerImpl$$ExternalSyntheticLambda1;->f$1:Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;

    invoke-virtual {v0, v1}, Lcom/android/server/timezonedetector/location/ControllerImpl;->lambda$handleProviderUncertainty$0$ControllerImpl(Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;)V

    return-void
.end method
