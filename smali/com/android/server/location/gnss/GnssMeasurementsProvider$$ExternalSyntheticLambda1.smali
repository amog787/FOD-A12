.class public final synthetic Lcom/android/server/location/gnss/GnssMeasurementsProvider$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/android/server/location/gnss/GnssMeasurementsProvider;

.field public final synthetic f$1:Landroid/location/GnssMeasurementsEvent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/gnss/GnssMeasurementsProvider;Landroid/location/GnssMeasurementsEvent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/gnss/GnssMeasurementsProvider$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/location/gnss/GnssMeasurementsProvider;

    iput-object p2, p0, Lcom/android/server/location/gnss/GnssMeasurementsProvider$$ExternalSyntheticLambda1;->f$1:Landroid/location/GnssMeasurementsEvent;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/server/location/gnss/GnssMeasurementsProvider$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/location/gnss/GnssMeasurementsProvider;

    iget-object v1, p0, Lcom/android/server/location/gnss/GnssMeasurementsProvider$$ExternalSyntheticLambda1;->f$1:Landroid/location/GnssMeasurementsEvent;

    check-cast p1, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/location/gnss/GnssMeasurementsProvider;->lambda$onReportMeasurements$1$GnssMeasurementsProvider(Landroid/location/GnssMeasurementsEvent;Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;)Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;

    move-result-object p1

    return-object p1
.end method
