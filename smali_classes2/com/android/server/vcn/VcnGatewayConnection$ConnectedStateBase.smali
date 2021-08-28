.class abstract Lcom/android/server/vcn/VcnGatewayConnection$ConnectedStateBase;
.super Lcom/android/server/vcn/VcnGatewayConnection$ActiveBaseState;
.source "VcnGatewayConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vcn/VcnGatewayConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "ConnectedStateBase"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/vcn/VcnGatewayConnection;


# direct methods
.method private constructor <init>(Lcom/android/server/vcn/VcnGatewayConnection;)V
    .locals 1

    .line 1572
    iput-object p1, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedStateBase;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/vcn/VcnGatewayConnection$ActiveBaseState;-><init>(Lcom/android/server/vcn/VcnGatewayConnection;Lcom/android/server/vcn/VcnGatewayConnection$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/vcn/VcnGatewayConnection;Lcom/android/server/vcn/VcnGatewayConnection$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/vcn/VcnGatewayConnection;
    .param p2, "x1"    # Lcom/android/server/vcn/VcnGatewayConnection$1;

    .line 1572
    invoke-direct {p0, p1}, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedStateBase;-><init>(Lcom/android/server/vcn/VcnGatewayConnection;)V

    return-void
.end method


# virtual methods
.method protected applyTransform(ILandroid/net/IpSecManager$IpSecTunnelInterface;Landroid/net/Network;Landroid/net/IpSecTransform;I)V
    .locals 4
    .param p1, "token"    # I
    .param p2, "tunnelIface"    # Landroid/net/IpSecManager$IpSecTunnelInterface;
    .param p3, "underlyingNetwork"    # Landroid/net/Network;
    .param p4, "transform"    # Landroid/net/IpSecTransform;
    .param p5, "direction"    # I

    .line 1678
    if-eqz p5, :cond_0

    const/4 v0, 0x1

    if-eq p5, v0, :cond_0

    .line 1679
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedStateBase;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Applying transform for unexpected direction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/vcn/VcnGatewayConnection;->access$1700(Lcom/android/server/vcn/VcnGatewayConnection;Ljava/lang/String;)V

    .line 1683
    :cond_0
    :try_start_0
    invoke-virtual {p2, p3}, Landroid/net/IpSecManager$IpSecTunnelInterface;->setUnderlyingNetwork(Landroid/net/Network;)V

    .line 1686
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedStateBase;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {v0}, Lcom/android/server/vcn/VcnGatewayConnection;->access$3200(Lcom/android/server/vcn/VcnGatewayConnection;)Landroid/net/IpSecManager;

    move-result-object v0

    invoke-virtual {v0, p2, p5, p4}, Landroid/net/IpSecManager;->applyTunnelModeTransform(Landroid/net/IpSecManager$IpSecTunnelInterface;ILandroid/net/IpSecTransform;)V

    .line 1690
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedStateBase;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {v0}, Lcom/android/server/vcn/VcnGatewayConnection;->access$2600(Lcom/android/server/vcn/VcnGatewayConnection;)Landroid/net/vcn/VcnGatewayConnectionConfig;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/vcn/VcnGatewayConnectionConfig;->getAllExposedCapabilities()Ljava/util/Set;

    move-result-object v0

    .line 1691
    .local v0, "exposedCaps":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    if-nez p5, :cond_1

    .line 1692
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1693
    iget-object v2, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedStateBase;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {v2}, Lcom/android/server/vcn/VcnGatewayConnection;->access$3200(Lcom/android/server/vcn/VcnGatewayConnection;)Landroid/net/IpSecManager;

    move-result-object v2

    invoke-virtual {v2, p2, v1, p4}, Landroid/net/IpSecManager;->applyTunnelModeTransform(Landroid/net/IpSecManager$IpSecTunnelInterface;ILandroid/net/IpSecTransform;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1699
    .end local v0    # "exposedCaps":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_1
    goto :goto_0

    .line 1696
    :catch_0
    move-exception v0

    .line 1697
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedStateBase;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Transform application failed for network "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->access$3300(Lcom/android/server/vcn/VcnGatewayConnection;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1698
    iget-object v1, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedStateBase;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {v1, p1, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->access$3400(Lcom/android/server/vcn/VcnGatewayConnection;ILjava/lang/Exception;)V

    .line 1700
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method

.method protected buildNetworkAgent(Landroid/net/IpSecManager$IpSecTunnelInterface;Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;)Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;
    .locals 13
    .param p1, "tunnelIface"    # Landroid/net/IpSecManager$IpSecTunnelInterface;
    .param p2, "childConfig"    # Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;

    .line 1593
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedStateBase;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    .line 1594
    invoke-static {v0}, Lcom/android/server/vcn/VcnGatewayConnection;->access$2600(Lcom/android/server/vcn/VcnGatewayConnection;)Landroid/net/vcn/VcnGatewayConnectionConfig;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedStateBase;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {v1}, Lcom/android/server/vcn/VcnGatewayConnection;->access$2000(Lcom/android/server/vcn/VcnGatewayConnection;)Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedStateBase;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {v2}, Lcom/android/server/vcn/VcnGatewayConnection;->access$2700(Lcom/android/server/vcn/VcnGatewayConnection;)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/server/vcn/VcnGatewayConnection;->buildNetworkCapabilities(Landroid/net/vcn/VcnGatewayConnectionConfig;Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;Z)Landroid/net/NetworkCapabilities;

    move-result-object v0

    .line 1595
    .local v0, "caps":Landroid/net/NetworkCapabilities;
    iget-object v1, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedStateBase;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    .line 1597
    invoke-static {v1}, Lcom/android/server/vcn/VcnGatewayConnection;->access$2600(Lcom/android/server/vcn/VcnGatewayConnection;)Landroid/net/vcn/VcnGatewayConnectionConfig;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedStateBase;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {v2}, Lcom/android/server/vcn/VcnGatewayConnection;->access$2000(Lcom/android/server/vcn/VcnGatewayConnection;)Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;

    move-result-object v2

    .line 1596
    invoke-static {v1, p1, p2, v2}, Lcom/android/server/vcn/VcnGatewayConnection;->access$2800(Landroid/net/vcn/VcnGatewayConnectionConfig;Landroid/net/IpSecManager$IpSecTunnelInterface;Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;)Landroid/net/LinkProperties;

    move-result-object v1

    .line 1598
    .local v1, "lp":Landroid/net/LinkProperties;
    new-instance v2, Landroid/net/NetworkAgentConfig$Builder;

    invoke-direct {v2}, Landroid/net/NetworkAgentConfig$Builder;-><init>()V

    .line 1600
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/net/NetworkAgentConfig$Builder;->setLegacyType(I)Landroid/net/NetworkAgentConfig$Builder;

    move-result-object v2

    .line 1601
    invoke-virtual {v2}, Landroid/net/NetworkAgentConfig$Builder;->build()Landroid/net/NetworkAgentConfig;

    move-result-object v2

    .line 1603
    .local v2, "nac":Landroid/net/NetworkAgentConfig;
    iget-object v3, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedStateBase;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    .line 1604
    invoke-static {v3}, Lcom/android/server/vcn/VcnGatewayConnection;->access$3000(Lcom/android/server/vcn/VcnGatewayConnection;)Lcom/android/server/vcn/VcnGatewayConnection$Dependencies;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedStateBase;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    .line 1605
    invoke-static {v4}, Lcom/android/server/vcn/VcnGatewayConnection;->access$400(Lcom/android/server/vcn/VcnGatewayConnection;)Lcom/android/server/vcn/VcnContext;

    move-result-object v4

    .line 1606
    invoke-static {}, Lcom/android/server/vcn/VcnGatewayConnection;->access$2900()Ljava/lang/String;

    move-result-object v5

    .line 1609
    invoke-static {}, Lcom/android/server/vcn/Vcn;->getNetworkScore()Landroid/net/NetworkScore;

    move-result-object v8

    iget-object v6, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedStateBase;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    .line 1611
    invoke-static {v6}, Lcom/android/server/vcn/VcnGatewayConnection;->access$400(Lcom/android/server/vcn/VcnGatewayConnection;)Lcom/android/server/vcn/VcnContext;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/vcn/VcnContext;->getVcnNetworkProvider()Lcom/android/server/vcn/VcnNetworkProvider;

    move-result-object v10

    new-instance v11, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedStateBase$$ExternalSyntheticLambda0;

    invoke-direct {v11, p0}, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedStateBase$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/vcn/VcnGatewayConnection$ConnectedStateBase;)V

    new-instance v12, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedStateBase$$ExternalSyntheticLambda1;

    invoke-direct {v12, p0}, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedStateBase$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/vcn/VcnGatewayConnection$ConnectedStateBase;)V

    .line 1604
    move-object v6, v0

    move-object v7, v1

    move-object v9, v2

    invoke-virtual/range {v3 .. v12}, Lcom/android/server/vcn/VcnGatewayConnection$Dependencies;->newNetworkAgent(Lcom/android/server/vcn/VcnContext;Ljava/lang/String;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;Landroid/net/NetworkScore;Landroid/net/NetworkAgentConfig;Landroid/net/NetworkProvider;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;

    move-result-object v3

    .line 1651
    .local v3, "agent":Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;
    invoke-virtual {v3}, Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;->register()V

    .line 1652
    nop

    .line 1653
    iget-object v4, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedStateBase;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {v4}, Lcom/android/server/vcn/VcnGatewayConnection;->access$2000(Lcom/android/server/vcn/VcnGatewayConnection;)Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;

    move-result-object v4

    if-nez v4, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedStateBase;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {v4}, Lcom/android/server/vcn/VcnGatewayConnection;->access$2000(Lcom/android/server/vcn/VcnGatewayConnection;)Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;->network:Landroid/net/Network;

    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 1652
    :goto_0
    invoke-virtual {v3, v4}, Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;->setUnderlyingNetworks(Ljava/util/List;)V

    .line 1654
    invoke-virtual {v3}, Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;->markConnected()V

    .line 1656
    return-object v3
.end method

.method protected clearFailedAttemptCounterAndSafeModeAlarm()V
    .locals 2

    .line 1660
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedStateBase;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {v0}, Lcom/android/server/vcn/VcnGatewayConnection;->access$400(Lcom/android/server/vcn/VcnGatewayConnection;)Lcom/android/server/vcn/VcnContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/vcn/VcnContext;->ensureRunningOnLooperThread()V

    .line 1663
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedStateBase;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/vcn/VcnGatewayConnection;->access$3102(Lcom/android/server/vcn/VcnGatewayConnection;I)I

    .line 1664
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedStateBase;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {v0}, Lcom/android/server/vcn/VcnGatewayConnection;->access$1900(Lcom/android/server/vcn/VcnGatewayConnection;)V

    .line 1666
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedStateBase;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {v0}, Lcom/android/server/vcn/VcnGatewayConnection;->access$1500(Lcom/android/server/vcn/VcnGatewayConnection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1667
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedStateBase;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {v0, v1}, Lcom/android/server/vcn/VcnGatewayConnection;->access$1502(Lcom/android/server/vcn/VcnGatewayConnection;Z)Z

    .line 1668
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedStateBase;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {v0}, Lcom/android/server/vcn/VcnGatewayConnection;->access$1600(Lcom/android/server/vcn/VcnGatewayConnection;)Lcom/android/server/vcn/Vcn$VcnGatewayStatusCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/vcn/Vcn$VcnGatewayStatusCallback;->onSafeModeStatusChanged()V

    .line 1670
    :cond_0
    return-void
.end method

.method public synthetic lambda$buildNetworkAgent$0$VcnGatewayConnection$ConnectedStateBase(Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;)V
    .locals 2
    .param p1, "agentRef"    # Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;

    .line 1620
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedStateBase;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {v0}, Lcom/android/server/vcn/VcnGatewayConnection;->access$1100(Lcom/android/server/vcn/VcnGatewayConnection;)Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 1621
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedStateBase;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    const-string v1, "unwanted() called on stale NetworkAgent"

    invoke-static {v0, v1}, Lcom/android/server/vcn/VcnGatewayConnection;->access$500(Lcom/android/server/vcn/VcnGatewayConnection;Ljava/lang/String;)V

    .line 1622
    return-void

    .line 1625
    :cond_0
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedStateBase;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    const-string v1, "NetworkAgent was unwanted"

    invoke-static {v0, v1}, Lcom/android/server/vcn/VcnGatewayConnection;->access$500(Lcom/android/server/vcn/VcnGatewayConnection;Ljava/lang/String;)V

    .line 1626
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedStateBase;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-virtual {v0}, Lcom/android/server/vcn/VcnGatewayConnection;->teardownAsynchronously()V

    .line 1627
    return-void
.end method

.method public synthetic lambda$buildNetworkAgent$1$VcnGatewayConnection$ConnectedStateBase(Ljava/lang/Integer;)V
    .locals 3
    .param p1, "status"    # Ljava/lang/Integer;

    .line 1629
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedStateBase;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {v0}, Lcom/android/server/vcn/VcnGatewayConnection;->access$1200(Lcom/android/server/vcn/VcnGatewayConnection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1630
    return-void

    .line 1633
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1643
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedStateBase;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown validation status "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "; ignoring"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/vcn/VcnGatewayConnection;->access$1700(Lcom/android/server/vcn/VcnGatewayConnection;Ljava/lang/String;)V

    goto :goto_0

    .line 1640
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedStateBase;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-virtual {v0}, Lcom/android/server/vcn/VcnGatewayConnection;->setSafeModeAlarm()V

    .line 1641
    goto :goto_0

    .line 1635
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedStateBase;->clearFailedAttemptCounterAndSafeModeAlarm()V

    .line 1636
    nop

    .line 1649
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected setupInterface(ILandroid/net/IpSecManager$IpSecTunnelInterface;Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;)V
    .locals 8
    .param p1, "token"    # I
    .param p2, "tunnelIface"    # Landroid/net/IpSecManager$IpSecTunnelInterface;
    .param p3, "childConfig"    # Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;
    .param p4, "oldChildConfig"    # Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;

    .line 1708
    :try_start_0
    new-instance v0, Landroid/util/ArraySet;

    .line 1709
    invoke-virtual {p3}, Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;->getInternalAddresses()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 1710
    .local v0, "newAddrs":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/LinkAddress;>;"
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 1711
    .local v1, "existingAddrs":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/LinkAddress;>;"
    if-eqz p4, :cond_0

    .line 1712
    invoke-virtual {p4}, Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;->getInternalAddresses()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1715
    :cond_0
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 1716
    .local v2, "toAdd":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/LinkAddress;>;"
    invoke-interface {v2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1717
    invoke-interface {v2, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 1719
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 1720
    .local v3, "toRemove":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/LinkAddress;>;"
    invoke-interface {v3, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1721
    invoke-interface {v3, v0}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 1723
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/LinkAddress;

    .line 1724
    .local v5, "address":Landroid/net/LinkAddress;
    invoke-virtual {v5}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v6

    invoke-virtual {v5}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result v7

    invoke-virtual {p2, v6, v7}, Landroid/net/IpSecManager$IpSecTunnelInterface;->addAddress(Ljava/net/InetAddress;I)V

    .line 1725
    .end local v5    # "address":Landroid/net/LinkAddress;
    goto :goto_0

    .line 1727
    :cond_1
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/LinkAddress;

    .line 1728
    .restart local v5    # "address":Landroid/net/LinkAddress;
    invoke-virtual {v5}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v6

    invoke-virtual {v5}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result v7

    invoke-virtual {p2, v6, v7}, Landroid/net/IpSecManager$IpSecTunnelInterface;->removeAddress(Ljava/net/InetAddress;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1729
    .end local v5    # "address":Landroid/net/LinkAddress;
    goto :goto_1

    .line 1733
    .end local v0    # "newAddrs":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/LinkAddress;>;"
    .end local v1    # "existingAddrs":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/LinkAddress;>;"
    .end local v2    # "toAdd":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/LinkAddress;>;"
    .end local v3    # "toRemove":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/LinkAddress;>;"
    :cond_2
    goto :goto_2

    .line 1730
    :catch_0
    move-exception v0

    .line 1731
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedStateBase;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding address to tunnel failed for token "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->access$3300(Lcom/android/server/vcn/VcnGatewayConnection;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1732
    iget-object v1, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedStateBase;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {v1, p1, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->access$3400(Lcom/android/server/vcn/VcnGatewayConnection;ILjava/lang/Exception;)V

    .line 1734
    .end local v0    # "e":Ljava/io/IOException;
    :goto_2
    return-void
.end method

.method protected updateNetworkAgent(Landroid/net/IpSecManager$IpSecTunnelInterface;Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;)V
    .locals 3
    .param p1, "tunnelIface"    # Landroid/net/IpSecManager$IpSecTunnelInterface;
    .param p2, "agent"    # Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;
    .param p3, "childConfig"    # Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;

    .line 1577
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedStateBase;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    .line 1578
    invoke-static {v0}, Lcom/android/server/vcn/VcnGatewayConnection;->access$2600(Lcom/android/server/vcn/VcnGatewayConnection;)Landroid/net/vcn/VcnGatewayConnectionConfig;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedStateBase;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {v1}, Lcom/android/server/vcn/VcnGatewayConnection;->access$2000(Lcom/android/server/vcn/VcnGatewayConnection;)Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedStateBase;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {v2}, Lcom/android/server/vcn/VcnGatewayConnection;->access$2700(Lcom/android/server/vcn/VcnGatewayConnection;)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/server/vcn/VcnGatewayConnection;->buildNetworkCapabilities(Landroid/net/vcn/VcnGatewayConnectionConfig;Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;Z)Landroid/net/NetworkCapabilities;

    move-result-object v0

    .line 1579
    .local v0, "caps":Landroid/net/NetworkCapabilities;
    iget-object v1, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedStateBase;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    .line 1581
    invoke-static {v1}, Lcom/android/server/vcn/VcnGatewayConnection;->access$2600(Lcom/android/server/vcn/VcnGatewayConnection;)Landroid/net/vcn/VcnGatewayConnectionConfig;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedStateBase;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {v2}, Lcom/android/server/vcn/VcnGatewayConnection;->access$2000(Lcom/android/server/vcn/VcnGatewayConnection;)Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;

    move-result-object v2

    .line 1580
    invoke-static {v1, p1, p3, v2}, Lcom/android/server/vcn/VcnGatewayConnection;->access$2800(Landroid/net/vcn/VcnGatewayConnectionConfig;Landroid/net/IpSecManager$IpSecTunnelInterface;Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;)Landroid/net/LinkProperties;

    move-result-object v1

    .line 1583
    .local v1, "lp":Landroid/net/LinkProperties;
    invoke-virtual {p2, v0}, Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;->sendNetworkCapabilities(Landroid/net/NetworkCapabilities;)V

    .line 1584
    invoke-virtual {p2, v1}, Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;->sendLinkProperties(Landroid/net/LinkProperties;)V

    .line 1586
    nop

    .line 1587
    iget-object v2, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedStateBase;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {v2}, Lcom/android/server/vcn/VcnGatewayConnection;->access$2000(Lcom/android/server/vcn/VcnGatewayConnection;)Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedStateBase;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {v2}, Lcom/android/server/vcn/VcnGatewayConnection;->access$2000(Lcom/android/server/vcn/VcnGatewayConnection;)Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;->network:Landroid/net/Network;

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 1586
    :goto_0
    invoke-virtual {p2, v2}, Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;->setUnderlyingNetworks(Ljava/util/List;)V

    .line 1588
    return-void
.end method
