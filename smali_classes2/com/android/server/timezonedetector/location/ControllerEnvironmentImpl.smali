.class Lcom/android/server/timezonedetector/location/ControllerEnvironmentImpl;
.super Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController$Environment;
.source "ControllerEnvironmentImpl.java"


# instance fields
.field private final mConfigurationChangeListener:Lcom/android/server/timezonedetector/ConfigurationChangeListener;

.field private final mServiceConfigAccessor:Lcom/android/server/timezonedetector/ServiceConfigAccessor;

.field private final mTimeZoneDetectorInternal:Lcom/android/server/timezonedetector/TimeZoneDetectorInternal;


# direct methods
.method constructor <init>(Lcom/android/server/timezonedetector/location/ThreadingDomain;Lcom/android/server/timezonedetector/ServiceConfigAccessor;Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;)V
    .locals 2
    .param p1, "threadingDomain"    # Lcom/android/server/timezonedetector/location/ThreadingDomain;
    .param p2, "serviceConfigAccessor"    # Lcom/android/server/timezonedetector/ServiceConfigAccessor;
    .param p3, "controller"    # Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;

    .line 43
    invoke-direct {p0, p1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController$Environment;-><init>(Lcom/android/server/timezonedetector/location/ThreadingDomain;)V

    .line 44
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p2

    check-cast v0, Lcom/android/server/timezonedetector/ServiceConfigAccessor;

    iput-object v0, p0, Lcom/android/server/timezonedetector/location/ControllerEnvironmentImpl;->mServiceConfigAccessor:Lcom/android/server/timezonedetector/ServiceConfigAccessor;

    .line 45
    const-class v0, Lcom/android/server/timezonedetector/TimeZoneDetectorInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/timezonedetector/TimeZoneDetectorInternal;

    iput-object v0, p0, Lcom/android/server/timezonedetector/location/ControllerEnvironmentImpl;->mTimeZoneDetectorInternal:Lcom/android/server/timezonedetector/TimeZoneDetectorInternal;

    .line 48
    new-instance v1, Lcom/android/server/timezonedetector/location/ControllerEnvironmentImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p3}, Lcom/android/server/timezonedetector/location/ControllerEnvironmentImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/timezonedetector/location/ControllerEnvironmentImpl;Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;)V

    iput-object v1, p0, Lcom/android/server/timezonedetector/location/ControllerEnvironmentImpl;->mConfigurationChangeListener:Lcom/android/server/timezonedetector/ConfigurationChangeListener;

    .line 49
    invoke-interface {v0, v1}, Lcom/android/server/timezonedetector/TimeZoneDetectorInternal;->addConfigurationListener(Lcom/android/server/timezonedetector/ConfigurationChangeListener;)V

    .line 50
    return-void
.end method


# virtual methods
.method destroy()V
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/ControllerEnvironmentImpl;->mTimeZoneDetectorInternal:Lcom/android/server/timezonedetector/TimeZoneDetectorInternal;

    iget-object v1, p0, Lcom/android/server/timezonedetector/location/ControllerEnvironmentImpl;->mConfigurationChangeListener:Lcom/android/server/timezonedetector/ConfigurationChangeListener;

    invoke-interface {v0, v1}, Lcom/android/server/timezonedetector/TimeZoneDetectorInternal;->removeConfigurationListener(Lcom/android/server/timezonedetector/ConfigurationChangeListener;)V

    .line 56
    return-void
.end method

.method getCurrentUserConfigurationInternal()Lcom/android/server/timezonedetector/ConfigurationInternal;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/ControllerEnvironmentImpl;->mTimeZoneDetectorInternal:Lcom/android/server/timezonedetector/TimeZoneDetectorInternal;

    invoke-interface {v0}, Lcom/android/server/timezonedetector/TimeZoneDetectorInternal;->getCurrentUserConfigurationInternal()Lcom/android/server/timezonedetector/ConfigurationInternal;

    move-result-object v0

    return-object v0
.end method

.method getProviderInitializationTimeout()Ljava/time/Duration;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/ControllerEnvironmentImpl;->mServiceConfigAccessor:Lcom/android/server/timezonedetector/ServiceConfigAccessor;

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/ServiceConfigAccessor;->getLocationTimeZoneProviderInitializationTimeout()Ljava/time/Duration;

    move-result-object v0

    return-object v0
.end method

.method getProviderInitializationTimeoutFuzz()Ljava/time/Duration;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/ControllerEnvironmentImpl;->mServiceConfigAccessor:Lcom/android/server/timezonedetector/ServiceConfigAccessor;

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/ServiceConfigAccessor;->getLocationTimeZoneProviderInitializationTimeoutFuzz()Ljava/time/Duration;

    move-result-object v0

    return-object v0
.end method

.method getUncertaintyDelay()Ljava/time/Duration;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/ControllerEnvironmentImpl;->mServiceConfigAccessor:Lcom/android/server/timezonedetector/ServiceConfigAccessor;

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/ServiceConfigAccessor;->getLocationTimeZoneUncertaintyDelay()Ljava/time/Duration;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$new$0$ControllerEnvironmentImpl(Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;)V
    .locals 2
    .param p1, "controller"    # Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;

    .line 48
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/ControllerEnvironmentImpl;->mThreadingDomain:Lcom/android/server/timezonedetector/location/ThreadingDomain;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/server/timezonedetector/location/ControllerEnvironmentImpl$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lcom/android/server/timezonedetector/location/ControllerEnvironmentImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;)V

    invoke-virtual {v0, v1}, Lcom/android/server/timezonedetector/location/ThreadingDomain;->post(Ljava/lang/Runnable;)V

    return-void
.end method
