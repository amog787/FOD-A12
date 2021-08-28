.class Lcom/android/server/location/GeocoderProxy$2;
.super Ljava/lang/Object;
.source "GeocoderProxy.java"

# interfaces
.implements Lcom/android/server/servicewatcher/ServiceWatcher$BinderOperation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/GeocoderProxy;->getFromLocationName(Ljava/lang/String;DDDDILandroid/location/GeocoderParams;Landroid/location/IGeocodeListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GeocoderProxy;

.field final synthetic val$listener:Landroid/location/IGeocodeListener;

.field final synthetic val$locationName:Ljava/lang/String;

.field final synthetic val$lowerLeftLatitude:D

.field final synthetic val$lowerLeftLongitude:D

.field final synthetic val$maxResults:I

.field final synthetic val$params:Landroid/location/GeocoderParams;

.field final synthetic val$upperRightLatitude:D

.field final synthetic val$upperRightLongitude:D


# direct methods
.method constructor <init>(Lcom/android/server/location/GeocoderProxy;Ljava/lang/String;DDDDILandroid/location/GeocoderParams;Landroid/location/IGeocodeListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/location/GeocoderProxy;

    .line 103
    iput-object p1, p0, Lcom/android/server/location/GeocoderProxy$2;->this$0:Lcom/android/server/location/GeocoderProxy;

    iput-object p2, p0, Lcom/android/server/location/GeocoderProxy$2;->val$locationName:Ljava/lang/String;

    iput-wide p3, p0, Lcom/android/server/location/GeocoderProxy$2;->val$lowerLeftLatitude:D

    iput-wide p5, p0, Lcom/android/server/location/GeocoderProxy$2;->val$lowerLeftLongitude:D

    iput-wide p7, p0, Lcom/android/server/location/GeocoderProxy$2;->val$upperRightLatitude:D

    iput-wide p9, p0, Lcom/android/server/location/GeocoderProxy$2;->val$upperRightLongitude:D

    iput p11, p0, Lcom/android/server/location/GeocoderProxy$2;->val$maxResults:I

    iput-object p12, p0, Lcom/android/server/location/GeocoderProxy$2;->val$params:Landroid/location/GeocoderParams;

    iput-object p13, p0, Lcom/android/server/location/GeocoderProxy$2;->val$listener:Landroid/location/IGeocodeListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError()V
    .locals 3

    .line 115
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/GeocoderProxy$2;->val$listener:Landroid/location/IGeocodeListener;

    const-string v1, "Service not Available"

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/location/IGeocodeListener;->onResults(Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    goto :goto_0

    .line 116
    :catch_0
    move-exception v0

    .line 119
    :goto_0
    return-void
.end method

.method public run(Landroid/os/IBinder;)V
    .locals 14
    .param p1, "binder"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 106
    invoke-static {p1}, Landroid/location/IGeocodeProvider$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/IGeocodeProvider;

    move-result-object v13

    .line 107
    .local v13, "provider":Landroid/location/IGeocodeProvider;
    iget-object v1, p0, Lcom/android/server/location/GeocoderProxy$2;->val$locationName:Ljava/lang/String;

    iget-wide v2, p0, Lcom/android/server/location/GeocoderProxy$2;->val$lowerLeftLatitude:D

    iget-wide v4, p0, Lcom/android/server/location/GeocoderProxy$2;->val$lowerLeftLongitude:D

    iget-wide v6, p0, Lcom/android/server/location/GeocoderProxy$2;->val$upperRightLatitude:D

    iget-wide v8, p0, Lcom/android/server/location/GeocoderProxy$2;->val$upperRightLongitude:D

    iget v10, p0, Lcom/android/server/location/GeocoderProxy$2;->val$maxResults:I

    iget-object v11, p0, Lcom/android/server/location/GeocoderProxy$2;->val$params:Landroid/location/GeocoderParams;

    iget-object v12, p0, Lcom/android/server/location/GeocoderProxy$2;->val$listener:Landroid/location/IGeocodeListener;

    move-object v0, v13

    invoke-interface/range {v0 .. v12}, Landroid/location/IGeocodeProvider;->getFromLocationName(Ljava/lang/String;DDDDILandroid/location/GeocoderParams;Landroid/location/IGeocodeListener;)V

    .line 110
    return-void
.end method
