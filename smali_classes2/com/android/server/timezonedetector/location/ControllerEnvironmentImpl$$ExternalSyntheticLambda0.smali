.class public final synthetic Lcom/android/server/timezonedetector/location/ControllerEnvironmentImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/server/timezonedetector/ConfigurationChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/timezonedetector/location/ControllerEnvironmentImpl;

.field public final synthetic f$1:Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/timezonedetector/location/ControllerEnvironmentImpl;Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/timezonedetector/location/ControllerEnvironmentImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/timezonedetector/location/ControllerEnvironmentImpl;

    iput-object p2, p0, Lcom/android/server/timezonedetector/location/ControllerEnvironmentImpl$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;

    return-void
.end method


# virtual methods
.method public final onChange()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/timezonedetector/location/ControllerEnvironmentImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/timezonedetector/location/ControllerEnvironmentImpl;

    iget-object v1, p0, Lcom/android/server/timezonedetector/location/ControllerEnvironmentImpl$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;

    invoke-virtual {v0, v1}, Lcom/android/server/timezonedetector/location/ControllerEnvironmentImpl;->lambda$new$0$ControllerEnvironmentImpl(Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;)V

    return-void
.end method
