.class Lcom/android/server/location/geofence/GeofenceManager$1;
.super Ljava/lang/Object;
.source "GeofenceManager.java"

# interfaces
.implements Lcom/android/server/location/injector/LocationPermissionsHelper$LocationPermissionsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/geofence/GeofenceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/geofence/GeofenceManager;


# direct methods
.method constructor <init>(Lcom/android/server/location/geofence/GeofenceManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/location/geofence/GeofenceManager;

    .line 243
    iput-object p1, p0, Lcom/android/server/location/geofence/GeofenceManager$1;->this$0:Lcom/android/server/location/geofence/GeofenceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationPermissionsChanged(I)V
    .locals 1
    .param p1, "uid"    # I

    .line 251
    iget-object v0, p0, Lcom/android/server/location/geofence/GeofenceManager$1;->this$0:Lcom/android/server/location/geofence/GeofenceManager;

    invoke-virtual {v0, p1}, Lcom/android/server/location/geofence/GeofenceManager;->onLocationPermissionsChanged(I)V

    .line 252
    return-void
.end method

.method public onLocationPermissionsChanged(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 246
    iget-object v0, p0, Lcom/android/server/location/geofence/GeofenceManager$1;->this$0:Lcom/android/server/location/geofence/GeofenceManager;

    invoke-virtual {v0, p1}, Lcom/android/server/location/geofence/GeofenceManager;->onLocationPermissionsChanged(Ljava/lang/String;)V

    .line 247
    return-void
.end method
