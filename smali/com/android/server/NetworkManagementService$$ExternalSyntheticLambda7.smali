.class public final synthetic Lcom/android/server/NetworkManagementService$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/server/NetworkManagementService$NetworkManagementEventCallback;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Landroid/net/LinkAddress;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Landroid/net/LinkAddress;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/NetworkManagementService$$ExternalSyntheticLambda7;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/NetworkManagementService$$ExternalSyntheticLambda7;->f$1:Landroid/net/LinkAddress;

    return-void
.end method


# virtual methods
.method public final sendCallback(Landroid/net/INetworkManagementEventObserver;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/NetworkManagementService$$ExternalSyntheticLambda7;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/NetworkManagementService$$ExternalSyntheticLambda7;->f$1:Landroid/net/LinkAddress;

    invoke-static {v0, v1, p1}, Lcom/android/server/NetworkManagementService;->lambda$notifyAddressUpdated$7(Ljava/lang/String;Landroid/net/LinkAddress;Landroid/net/INetworkManagementEventObserver;)V

    return-void
.end method
