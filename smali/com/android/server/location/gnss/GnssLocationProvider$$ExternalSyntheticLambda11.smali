.class public final synthetic Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/location/gnss/GnssSatelliteBlocklistHelper;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/gnss/GnssSatelliteBlocklistHelper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda11;->f$0:Lcom/android/server/location/gnss/GnssSatelliteBlocklistHelper;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda11;->f$0:Lcom/android/server/location/gnss/GnssSatelliteBlocklistHelper;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssSatelliteBlocklistHelper;->updateSatelliteBlocklist()V

    return-void
.end method
