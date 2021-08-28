.class public final synthetic Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;


# instance fields
.field public final synthetic f$0:Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;

    iput-boolean p2, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$$ExternalSyntheticLambda1;->f$1:Z

    return-void
.end method


# virtual methods
.method public final operate(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;

    iget-boolean v1, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$$ExternalSyntheticLambda1;->f$1:Z

    check-cast p1, Lcom/android/server/location/provider/LocationProviderManager$ProviderTransport;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->lambda$onProviderEnabledChanged$1$LocationProviderManager$LocationRegistration(ZLcom/android/server/location/provider/LocationProviderManager$ProviderTransport;)V

    return-void
.end method
