.class public final Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationTransport;
.super Ljava/lang/Object;
.source "LocationProviderManager.java"

# interfaces
.implements Lcom/android/server/location/provider/LocationProviderManager$LocationTransport;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/provider/LocationProviderManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "GetCurrentLocationTransport"
.end annotation


# instance fields
.field private final mCallback:Landroid/location/ILocationCallback;


# direct methods
.method protected constructor <init>(Landroid/location/ILocationCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/location/ILocationCallback;

    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 282
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Landroid/location/ILocationCallback;

    iput-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationTransport;->mCallback:Landroid/location/ILocationCallback;

    .line 283
    return-void
.end method


# virtual methods
.method public deliverOnFlushComplete(I)V
    .locals 0
    .param p1, "requestCode"    # I

    .line 299
    return-void
.end method

.method public deliverOnLocationChanged(Landroid/location/LocationResult;Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "locationResult"    # Landroid/location/LocationResult;
    .param p2, "onCompleteCallback"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 290
    if-nez p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 291
    if-eqz p1, :cond_1

    .line 292
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationTransport;->mCallback:Landroid/location/ILocationCallback;

    invoke-virtual {p1}, Landroid/location/LocationResult;->getLastLocation()Landroid/location/Location;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/location/ILocationCallback;->onLocation(Landroid/location/Location;)V

    goto :goto_1

    .line 294
    :cond_1
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationTransport;->mCallback:Landroid/location/ILocationCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/location/ILocationCallback;->onLocation(Landroid/location/Location;)V

    .line 296
    :goto_1
    return-void
.end method
