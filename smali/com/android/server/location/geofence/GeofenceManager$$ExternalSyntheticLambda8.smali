.class public final synthetic Lcom/android/server/location/geofence/GeofenceManager$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Landroid/app/PendingIntent;


# direct methods
.method public synthetic constructor <init>(Landroid/app/PendingIntent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/geofence/GeofenceManager$$ExternalSyntheticLambda8;->f$0:Landroid/app/PendingIntent;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/geofence/GeofenceManager$$ExternalSyntheticLambda8;->f$0:Landroid/app/PendingIntent;

    check-cast p1, Lcom/android/server/location/geofence/GeofenceKey;

    invoke-static {v0, p1}, Lcom/android/server/location/geofence/GeofenceManager;->lambda$removeGeofence$0(Landroid/app/PendingIntent;Lcom/android/server/location/geofence/GeofenceKey;)Z

    move-result p1

    return p1
.end method
