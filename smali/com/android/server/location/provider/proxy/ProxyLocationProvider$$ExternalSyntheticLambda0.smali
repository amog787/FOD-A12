.class public final synthetic Lcom/android/server/location/provider/proxy/ProxyLocationProvider$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/server/servicewatcher/ServiceWatcher$BinderOperation;


# instance fields
.field public final synthetic f$0:Landroid/location/provider/ProviderRequest;


# direct methods
.method public synthetic constructor <init>(Landroid/location/provider/ProviderRequest;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider$$ExternalSyntheticLambda0;->f$0:Landroid/location/provider/ProviderRequest;

    return-void
.end method


# virtual methods
.method public final run(Landroid/os/IBinder;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider$$ExternalSyntheticLambda0;->f$0:Landroid/location/provider/ProviderRequest;

    invoke-static {v0, p1}, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->lambda$onSetRequest$0(Landroid/location/provider/ProviderRequest;Landroid/os/IBinder;)V

    return-void
.end method
