.class public final synthetic Lcom/android/server/location/provider/LocationProviderManager$Registration$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration$$ExternalSyntheticLambda0;->f$0:I

    return-void
.end method


# virtual methods
.method public final operate(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration$$ExternalSyntheticLambda0;->f$0:I

    check-cast p1, Lcom/android/server/location/provider/LocationProviderManager$LocationTransport;

    invoke-static {v0, p1}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->lambda$flush$0(ILcom/android/server/location/provider/LocationProviderManager$LocationTransport;)V

    return-void
.end method
