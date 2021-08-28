.class public Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;
.super Ljava/lang/Object;
.source "VcnGatewayConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vcn/VcnGatewayConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VcnChildSessionConfiguration"
.end annotation


# instance fields
.field private final mChildConfig:Landroid/net/ipsec/ike/ChildSessionConfiguration;


# direct methods
.method public constructor <init>(Landroid/net/ipsec/ike/ChildSessionConfiguration;)V
    .locals 0
    .param p1, "childConfig"    # Landroid/net/ipsec/ike/ChildSessionConfiguration;

    .line 2428
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2429
    iput-object p1, p0, Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;->mChildConfig:Landroid/net/ipsec/ike/ChildSessionConfiguration;

    .line 2430
    return-void
.end method


# virtual methods
.method public getInternalAddresses()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/LinkAddress;",
            ">;"
        }
    .end annotation

    .line 2434
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;->mChildConfig:Landroid/net/ipsec/ike/ChildSessionConfiguration;

    invoke-virtual {v0}, Landroid/net/ipsec/ike/ChildSessionConfiguration;->getInternalAddresses()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getInternalDnsServers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .line 2439
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;->mChildConfig:Landroid/net/ipsec/ike/ChildSessionConfiguration;

    invoke-virtual {v0}, Landroid/net/ipsec/ike/ChildSessionConfiguration;->getInternalDnsServers()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
