.class Lcom/android/server/location/GeocoderProxy$1;
.super Ljava/lang/Object;
.source "GeocoderProxy.java"

# interfaces
.implements Lcom/android/server/servicewatcher/ServiceWatcher$BinderOperation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/GeocoderProxy;->getFromLocation(DDILandroid/location/GeocoderParams;Landroid/location/IGeocodeListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GeocoderProxy;

.field final synthetic val$latitude:D

.field final synthetic val$listener:Landroid/location/IGeocodeListener;

.field final synthetic val$longitude:D

.field final synthetic val$maxResults:I

.field final synthetic val$params:Landroid/location/GeocoderParams;


# direct methods
.method constructor <init>(Lcom/android/server/location/GeocoderProxy;DDILandroid/location/GeocoderParams;Landroid/location/IGeocodeListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/location/GeocoderProxy;

    .line 78
    iput-object p1, p0, Lcom/android/server/location/GeocoderProxy$1;->this$0:Lcom/android/server/location/GeocoderProxy;

    iput-wide p2, p0, Lcom/android/server/location/GeocoderProxy$1;->val$latitude:D

    iput-wide p4, p0, Lcom/android/server/location/GeocoderProxy$1;->val$longitude:D

    iput p6, p0, Lcom/android/server/location/GeocoderProxy$1;->val$maxResults:I

    iput-object p7, p0, Lcom/android/server/location/GeocoderProxy$1;->val$params:Landroid/location/GeocoderParams;

    iput-object p8, p0, Lcom/android/server/location/GeocoderProxy$1;->val$listener:Landroid/location/IGeocodeListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError()V
    .locals 3

    .line 88
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/GeocoderProxy$1;->val$listener:Landroid/location/IGeocodeListener;

    const-string v1, "Service not Available"

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/location/IGeocodeListener;->onResults(Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    goto :goto_0

    .line 89
    :catch_0
    move-exception v0

    .line 92
    :goto_0
    return-void
.end method

.method public run(Landroid/os/IBinder;)V
    .locals 9
    .param p1, "binder"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 81
    invoke-static {p1}, Landroid/location/IGeocodeProvider$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/IGeocodeProvider;

    move-result-object v8

    .line 82
    .local v8, "provider":Landroid/location/IGeocodeProvider;
    iget-wide v1, p0, Lcom/android/server/location/GeocoderProxy$1;->val$latitude:D

    iget-wide v3, p0, Lcom/android/server/location/GeocoderProxy$1;->val$longitude:D

    iget v5, p0, Lcom/android/server/location/GeocoderProxy$1;->val$maxResults:I

    iget-object v6, p0, Lcom/android/server/location/GeocoderProxy$1;->val$params:Landroid/location/GeocoderParams;

    iget-object v7, p0, Lcom/android/server/location/GeocoderProxy$1;->val$listener:Landroid/location/IGeocodeListener;

    move-object v0, v8

    invoke-interface/range {v0 .. v7}, Landroid/location/IGeocodeProvider;->getFromLocation(DDILandroid/location/GeocoderParams;Landroid/location/IGeocodeListener;)V

    .line 83
    return-void
.end method
