.class public final synthetic Lcom/android/server/appop/DiscreteRegistry$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/appop/DiscreteRegistry;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/appop/DiscreteRegistry;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/appop/DiscreteRegistry$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/appop/DiscreteRegistry;

    return-void
.end method


# virtual methods
.method public final onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/appop/DiscreteRegistry$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/appop/DiscreteRegistry;

    invoke-virtual {v0, p1}, Lcom/android/server/appop/DiscreteRegistry;->lambda$systemReady$0$DiscreteRegistry(Landroid/provider/DeviceConfig$Properties;)V

    return-void
.end method
