.class public final synthetic Lcom/android/server/vcn/VcnGatewayConnection$ConnectedStateBase$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/vcn/VcnGatewayConnection$ConnectedStateBase;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/vcn/VcnGatewayConnection$ConnectedStateBase;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedStateBase$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/vcn/VcnGatewayConnection$ConnectedStateBase;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedStateBase$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/vcn/VcnGatewayConnection$ConnectedStateBase;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {v0, p1}, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedStateBase;->lambda$buildNetworkAgent$1$VcnGatewayConnection$ConnectedStateBase(Ljava/lang/Integer;)V

    return-void
.end method
