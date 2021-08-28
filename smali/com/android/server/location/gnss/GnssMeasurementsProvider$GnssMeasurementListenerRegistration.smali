.class Lcom/android/server/location/gnss/GnssMeasurementsProvider$GnssMeasurementListenerRegistration;
.super Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;
.source "GnssMeasurementsProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/gnss/GnssMeasurementsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GnssMeasurementListenerRegistration"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/location/gnss/GnssListenerMultiplexer<",
        "Landroid/location/GnssMeasurementRequest;",
        "Landroid/location/IGnssMeasurementsListener;",
        "Landroid/location/GnssMeasurementRequest;",
        ">.Gnss",
        "ListenerRegistration;"
    }
.end annotation


# static fields
.field private static final GNSS_MEASUREMENTS_BUCKET:Ljava/lang/String; = "gnss_measurement"


# instance fields
.field final synthetic this$0:Lcom/android/server/location/gnss/GnssMeasurementsProvider;


# direct methods
.method protected constructor <init>(Lcom/android/server/location/gnss/GnssMeasurementsProvider;Landroid/location/GnssMeasurementRequest;Landroid/location/util/identity/CallerIdentity;Landroid/location/IGnssMeasurementsListener;)V
    .locals 0
    .param p2, "request"    # Landroid/location/GnssMeasurementRequest;
    .param p3, "callerIdentity"    # Landroid/location/util/identity/CallerIdentity;
    .param p4, "listener"    # Landroid/location/IGnssMeasurementsListener;

    .line 60
    iput-object p1, p0, Lcom/android/server/location/gnss/GnssMeasurementsProvider$GnssMeasurementListenerRegistration;->this$0:Lcom/android/server/location/gnss/GnssMeasurementsProvider;

    .line 61
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;-><init>(Lcom/android/server/location/gnss/GnssListenerMultiplexer;Ljava/lang/Object;Landroid/location/util/identity/CallerIdentity;Landroid/os/IInterface;)V

    .line 62
    return-void
.end method

.method static synthetic lambda$onGnssListenerRegister$0(Landroid/location/IGnssMeasurementsListener;)V
    .locals 1
    .param p0, "listener"    # Landroid/location/IGnssMeasurementsListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 66
    const/4 v0, 0x1

    invoke-interface {p0, v0}, Landroid/location/IGnssMeasurementsListener;->onStatusChanged(I)V

    return-void
.end method


# virtual methods
.method protected onActive()V
    .locals 4

    .line 73
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssMeasurementsProvider$GnssMeasurementListenerRegistration;->this$0:Lcom/android/server/location/gnss/GnssMeasurementsProvider;

    invoke-static {v0}, Lcom/android/server/location/gnss/GnssMeasurementsProvider;->access$000(Lcom/android/server/location/gnss/GnssMeasurementsProvider;)Lcom/android/server/location/injector/LocationAttributionHelper;

    move-result-object v0

    .line 74
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssMeasurementsProvider$GnssMeasurementListenerRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssMeasurementsProvider$GnssMeasurementListenerRegistration;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 73
    const-string v3, "gnss_measurement"

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/server/location/injector/LocationAttributionHelper;->reportHighPowerLocationStart(Landroid/location/util/identity/CallerIdentity;Ljava/lang/String;Ljava/lang/Object;)V

    .line 75
    return-void
.end method

.method protected onGnssListenerRegister()V
    .locals 1

    .line 66
    sget-object v0, Lcom/android/server/location/gnss/GnssMeasurementsProvider$GnssMeasurementListenerRegistration$$ExternalSyntheticLambda0;->INSTANCE:Lcom/android/server/location/gnss/GnssMeasurementsProvider$GnssMeasurementListenerRegistration$$ExternalSyntheticLambda0;

    invoke-virtual {p0, v0}, Lcom/android/server/location/gnss/GnssMeasurementsProvider$GnssMeasurementListenerRegistration;->executeOperation(Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;)V

    .line 68
    return-void
.end method

.method protected onInactive()V
    .locals 4

    .line 80
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssMeasurementsProvider$GnssMeasurementListenerRegistration;->this$0:Lcom/android/server/location/gnss/GnssMeasurementsProvider;

    invoke-static {v0}, Lcom/android/server/location/gnss/GnssMeasurementsProvider;->access$000(Lcom/android/server/location/gnss/GnssMeasurementsProvider;)Lcom/android/server/location/injector/LocationAttributionHelper;

    move-result-object v0

    .line 81
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssMeasurementsProvider$GnssMeasurementListenerRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssMeasurementsProvider$GnssMeasurementListenerRegistration;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 80
    const-string v3, "gnss_measurement"

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/server/location/injector/LocationAttributionHelper;->reportHighPowerLocationStop(Landroid/location/util/identity/CallerIdentity;Ljava/lang/String;Ljava/lang/Object;)V

    .line 82
    return-void
.end method
