.class public final synthetic Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;


# instance fields
.field public final synthetic f$0:Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;

    return-void
.end method


# virtual methods
.method public final operate(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;

    check-cast p1, Landroid/app/PendingIntent;

    invoke-virtual {v0, p1}, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->lambda$onLocationChanged$0$GeofenceManager$GeofenceRegistration(Landroid/app/PendingIntent;)V

    return-void
.end method
