.class public final synthetic Lcom/android/server/location/geofence/GeofenceManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/location/geofence/GeofenceManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/geofence/GeofenceManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/geofence/GeofenceManager$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/location/geofence/GeofenceManager;

    return-void
.end method


# virtual methods
.method public final onSettingChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/geofence/GeofenceManager$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/location/geofence/GeofenceManager;

    invoke-virtual {v0, p1}, Lcom/android/server/location/geofence/GeofenceManager;->onLocationPackageBlacklistChanged(I)V

    return-void
.end method
