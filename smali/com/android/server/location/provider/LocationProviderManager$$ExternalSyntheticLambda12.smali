.class public final synthetic Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/location/provider/LocationProviderManager;

.field public final synthetic f$1:Lcom/android/server/location/provider/LocationProviderManager$StateChangedListener;

.field public final synthetic f$2:Lcom/android/server/location/provider/AbstractLocationProvider$State;

.field public final synthetic f$3:Lcom/android/server/location/provider/AbstractLocationProvider$State;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/provider/LocationProviderManager;Lcom/android/server/location/provider/LocationProviderManager$StateChangedListener;Lcom/android/server/location/provider/AbstractLocationProvider$State;Lcom/android/server/location/provider/AbstractLocationProvider$State;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda12;->f$0:Lcom/android/server/location/provider/LocationProviderManager;

    iput-object p2, p0, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda12;->f$1:Lcom/android/server/location/provider/LocationProviderManager$StateChangedListener;

    iput-object p3, p0, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda12;->f$2:Lcom/android/server/location/provider/AbstractLocationProvider$State;

    iput-object p4, p0, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda12;->f$3:Lcom/android/server/location/provider/AbstractLocationProvider$State;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda12;->f$0:Lcom/android/server/location/provider/LocationProviderManager;

    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda12;->f$1:Lcom/android/server/location/provider/LocationProviderManager$StateChangedListener;

    iget-object v2, p0, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda12;->f$2:Lcom/android/server/location/provider/AbstractLocationProvider$State;

    iget-object v3, p0, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda12;->f$3:Lcom/android/server/location/provider/AbstractLocationProvider$State;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/location/provider/LocationProviderManager;->lambda$onStateChanged$13$LocationProviderManager(Lcom/android/server/location/provider/LocationProviderManager$StateChangedListener;Lcom/android/server/location/provider/AbstractLocationProvider$State;Lcom/android/server/location/provider/AbstractLocationProvider$State;)V

    return-void
.end method
