.class public final synthetic Lcom/android/server/location/geofence/GeofenceManager$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Landroid/location/Location;


# direct methods
.method public synthetic constructor <init>(Landroid/location/Location;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/geofence/GeofenceManager$$ExternalSyntheticLambda3;->f$0:Landroid/location/Location;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/geofence/GeofenceManager$$ExternalSyntheticLambda3;->f$0:Landroid/location/Location;

    check-cast p1, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;

    invoke-static {v0, p1}, Lcom/android/server/location/geofence/GeofenceManager;->lambda$onLocationChanged$1(Landroid/location/Location;Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;)Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;

    move-result-object p1

    return-object p1
.end method
