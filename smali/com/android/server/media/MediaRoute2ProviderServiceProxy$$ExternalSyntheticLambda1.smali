.class public final synthetic Lcom/android/server/media/MediaRoute2ProviderServiceProxy$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/media/MediaRoute2Provider$Callback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/media/MediaRoute2Provider$Callback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/media/MediaRoute2Provider$Callback;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/media/MediaRoute2Provider$Callback;

    check-cast p1, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;

    check-cast p2, Landroid/media/RoutingSessionInfo;

    invoke-interface {v0, p1, p2}, Lcom/android/server/media/MediaRoute2Provider$Callback;->onSessionReleased(Lcom/android/server/media/MediaRoute2Provider;Landroid/media/RoutingSessionInfo;)V

    return-void
.end method
