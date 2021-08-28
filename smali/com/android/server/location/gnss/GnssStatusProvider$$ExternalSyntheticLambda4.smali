.class public final synthetic Lcom/android/server/location/gnss/GnssStatusProvider$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/android/server/location/gnss/GnssStatusProvider;

.field public final synthetic f$1:Landroid/location/GnssStatus;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/gnss/GnssStatusProvider;Landroid/location/GnssStatus;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/gnss/GnssStatusProvider$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/location/gnss/GnssStatusProvider;

    iput-object p2, p0, Lcom/android/server/location/gnss/GnssStatusProvider$$ExternalSyntheticLambda4;->f$1:Landroid/location/GnssStatus;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/server/location/gnss/GnssStatusProvider$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/location/gnss/GnssStatusProvider;

    iget-object v1, p0, Lcom/android/server/location/gnss/GnssStatusProvider$$ExternalSyntheticLambda4;->f$1:Landroid/location/GnssStatus;

    check-cast p1, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/location/gnss/GnssStatusProvider;->lambda$onReportSvStatus$2$GnssStatusProvider(Landroid/location/GnssStatus;Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;)Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;

    move-result-object p1

    return-object p1
.end method
