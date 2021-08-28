.class Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;
.super Lcom/android/server/vcn/VcnGatewayConnection$ConnectedStateBase;
.source "VcnGatewayConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vcn/VcnGatewayConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ConnectedState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/vcn/VcnGatewayConnection;


# direct methods
.method constructor <init>(Lcom/android/server/vcn/VcnGatewayConnection;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/vcn/VcnGatewayConnection;

    .line 1743
    iput-object p1, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedStateBase;-><init>(Lcom/android/server/vcn/VcnGatewayConnection;Lcom/android/server/vcn/VcnGatewayConnection$1;)V

    return-void
.end method

.method private handleMigrationCompleted(Lcom/android/server/vcn/VcnGatewayConnection$EventMigrationCompletedInfo;)V
    .locals 7
    .param p1, "migrationCompletedInfo"    # Lcom/android/server/vcn/VcnGatewayConnection$EventMigrationCompletedInfo;

    .line 1811
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Migration completed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {v2}, Lcom/android/server/vcn/VcnGatewayConnection;->access$2000(Lcom/android/server/vcn/VcnGatewayConnection;)Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;->network:Landroid/net/Network;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/vcn/VcnGatewayConnection;->access$500(Lcom/android/server/vcn/VcnGatewayConnection;Ljava/lang/String;)V

    .line 1813
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    .line 1814
    invoke-static {v0}, Lcom/android/server/vcn/VcnGatewayConnection;->access$2100(Lcom/android/server/vcn/VcnGatewayConnection;)I

    move-result v2

    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    .line 1815
    invoke-static {v0}, Lcom/android/server/vcn/VcnGatewayConnection;->access$3600(Lcom/android/server/vcn/VcnGatewayConnection;)Landroid/net/IpSecManager$IpSecTunnelInterface;

    move-result-object v3

    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    .line 1816
    invoke-static {v0}, Lcom/android/server/vcn/VcnGatewayConnection;->access$2000(Lcom/android/server/vcn/VcnGatewayConnection;)Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;

    move-result-object v0

    iget-object v4, v0, Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;->network:Landroid/net/Network;

    iget-object v5, p1, Lcom/android/server/vcn/VcnGatewayConnection$EventMigrationCompletedInfo;->inTransform:Landroid/net/IpSecTransform;

    .line 1813
    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->applyTransform(ILandroid/net/IpSecManager$IpSecTunnelInterface;Landroid/net/Network;Landroid/net/IpSecTransform;I)V

    .line 1820
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    .line 1821
    invoke-static {v0}, Lcom/android/server/vcn/VcnGatewayConnection;->access$2100(Lcom/android/server/vcn/VcnGatewayConnection;)I

    move-result v2

    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    .line 1822
    invoke-static {v0}, Lcom/android/server/vcn/VcnGatewayConnection;->access$3600(Lcom/android/server/vcn/VcnGatewayConnection;)Landroid/net/IpSecManager$IpSecTunnelInterface;

    move-result-object v3

    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    .line 1823
    invoke-static {v0}, Lcom/android/server/vcn/VcnGatewayConnection;->access$2000(Lcom/android/server/vcn/VcnGatewayConnection;)Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;

    move-result-object v0

    iget-object v4, v0, Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;->network:Landroid/net/Network;

    iget-object v5, p1, Lcom/android/server/vcn/VcnGatewayConnection$EventMigrationCompletedInfo;->outTransform:Landroid/net/IpSecTransform;

    .line 1820
    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->applyTransform(ILandroid/net/IpSecManager$IpSecTunnelInterface;Landroid/net/Network;Landroid/net/IpSecTransform;I)V

    .line 1827
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {v0}, Lcom/android/server/vcn/VcnGatewayConnection;->access$3600(Lcom/android/server/vcn/VcnGatewayConnection;)Landroid/net/IpSecManager$IpSecTunnelInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {v1}, Lcom/android/server/vcn/VcnGatewayConnection;->access$1100(Lcom/android/server/vcn/VcnGatewayConnection;)Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {v2}, Lcom/android/server/vcn/VcnGatewayConnection;->access$3700(Lcom/android/server/vcn/VcnGatewayConnection;)Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->updateNetworkAgent(Landroid/net/IpSecManager$IpSecTunnelInterface;Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;)V

    .line 1828
    return-void
.end method

.method private handleUnderlyingNetworkChanged(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 1831
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {v0}, Lcom/android/server/vcn/VcnGatewayConnection;->access$2000(Lcom/android/server/vcn/VcnGatewayConnection;)Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;

    move-result-object v0

    .line 1832
    .local v0, "oldUnderlying":Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;
    iget-object v1, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/vcn/VcnGatewayConnection$EventUnderlyingNetworkChangedInfo;

    iget-object v2, v2, Lcom/android/server/vcn/VcnGatewayConnection$EventUnderlyingNetworkChangedInfo;->newUnderlying:Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;

    invoke-static {v1, v2}, Lcom/android/server/vcn/VcnGatewayConnection;->access$2002(Lcom/android/server/vcn/VcnGatewayConnection;Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;)Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;

    .line 1834
    iget-object v1, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {v1}, Lcom/android/server/vcn/VcnGatewayConnection;->access$2000(Lcom/android/server/vcn/VcnGatewayConnection;)Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1835
    iget-object v1, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    const-string v2, "Underlying network lost"

    invoke-static {v1, v2}, Lcom/android/server/vcn/VcnGatewayConnection;->access$500(Lcom/android/server/vcn/VcnGatewayConnection;Ljava/lang/String;)V

    .line 1839
    return-void

    .line 1844
    :cond_0
    if-eqz v0, :cond_2

    iget-object v1, v0, Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;->network:Landroid/net/Network;

    iget-object v2, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {v2}, Lcom/android/server/vcn/VcnGatewayConnection;->access$2000(Lcom/android/server/vcn/VcnGatewayConnection;)Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;->network:Landroid/net/Network;

    invoke-virtual {v1, v2}, Landroid/net/Network;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 1852
    :cond_1
    iget-object v1, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {v1}, Lcom/android/server/vcn/VcnGatewayConnection;->access$1100(Lcom/android/server/vcn/VcnGatewayConnection;)Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {v1}, Lcom/android/server/vcn/VcnGatewayConnection;->access$3700(Lcom/android/server/vcn/VcnGatewayConnection;)Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1854
    iget-object v1, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {v1}, Lcom/android/server/vcn/VcnGatewayConnection;->access$3600(Lcom/android/server/vcn/VcnGatewayConnection;)Landroid/net/IpSecManager$IpSecTunnelInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {v2}, Lcom/android/server/vcn/VcnGatewayConnection;->access$1100(Lcom/android/server/vcn/VcnGatewayConnection;)Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {v3}, Lcom/android/server/vcn/VcnGatewayConnection;->access$3700(Lcom/android/server/vcn/VcnGatewayConnection;)Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->updateNetworkAgent(Landroid/net/IpSecManager$IpSecTunnelInterface;Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;)V

    goto :goto_1

    .line 1845
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Migrating to new network: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {v3}, Lcom/android/server/vcn/VcnGatewayConnection;->access$2000(Lcom/android/server/vcn/VcnGatewayConnection;)Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;->network:Landroid/net/Network;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/vcn/VcnGatewayConnection;->access$500(Lcom/android/server/vcn/VcnGatewayConnection;Ljava/lang/String;)V

    .line 1846
    iget-object v1, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {v1}, Lcom/android/server/vcn/VcnGatewayConnection;->access$1300(Lcom/android/server/vcn/VcnGatewayConnection;)Lcom/android/server/vcn/VcnGatewayConnection$VcnIkeSession;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {v2}, Lcom/android/server/vcn/VcnGatewayConnection;->access$2000(Lcom/android/server/vcn/VcnGatewayConnection;)Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;->network:Landroid/net/Network;

    invoke-virtual {v1, v2}, Lcom/android/server/vcn/VcnGatewayConnection$VcnIkeSession;->setNetwork(Landroid/net/Network;)V

    .line 1857
    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method protected enterState()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1746
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {v0}, Lcom/android/server/vcn/VcnGatewayConnection;->access$3600(Lcom/android/server/vcn/VcnGatewayConnection;)Landroid/net/IpSecManager$IpSecTunnelInterface;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1750
    :try_start_0
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    .line 1751
    invoke-static {v0}, Lcom/android/server/vcn/VcnGatewayConnection;->access$3200(Lcom/android/server/vcn/VcnGatewayConnection;)Landroid/net/IpSecManager;

    move-result-object v1

    sget-object v2, Lcom/android/server/vcn/VcnGatewayConnection;->DUMMY_ADDR:Ljava/net/InetAddress;

    sget-object v3, Lcom/android/server/vcn/VcnGatewayConnection;->DUMMY_ADDR:Ljava/net/InetAddress;

    iget-object v4, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    .line 1752
    invoke-static {v4}, Lcom/android/server/vcn/VcnGatewayConnection;->access$2000(Lcom/android/server/vcn/VcnGatewayConnection;)Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;->network:Landroid/net/Network;

    .line 1751
    invoke-virtual {v1, v2, v3, v4}, Landroid/net/IpSecManager;->createIpSecTunnelInterface(Ljava/net/InetAddress;Ljava/net/InetAddress;Landroid/net/Network;)Landroid/net/IpSecManager$IpSecTunnelInterface;

    move-result-object v1

    .line 1750
    invoke-static {v0, v1}, Lcom/android/server/vcn/VcnGatewayConnection;->access$3602(Lcom/android/server/vcn/VcnGatewayConnection;Landroid/net/IpSecManager$IpSecTunnelInterface;)Landroid/net/IpSecManager$IpSecTunnelInterface;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/net/IpSecManager$ResourceUnavailableException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1755
    goto :goto_0

    .line 1753
    :catch_0
    move-exception v0

    .line 1754
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-virtual {v1}, Lcom/android/server/vcn/VcnGatewayConnection;->teardownAsynchronously()V

    .line 1757
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method protected exitState()V
    .locals 1

    .line 1880
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-virtual {v0}, Lcom/android/server/vcn/VcnGatewayConnection;->setSafeModeAlarm()V

    .line 1881
    return-void
.end method

.method protected processStateMsg(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .line 1761
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1805
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->logUnhandledMessage(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1799
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/vcn/VcnGatewayConnection$EventMigrationCompletedInfo;

    .line 1802
    .local v0, "migrationCompletedInfo":Lcom/android/server/vcn/VcnGatewayConnection$EventMigrationCompletedInfo;
    invoke-direct {p0, v0}, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->handleMigrationCompleted(Lcom/android/server/vcn/VcnGatewayConnection$EventMigrationCompletedInfo;)V

    .line 1803
    goto :goto_0

    .line 1796
    .end local v0    # "migrationCompletedInfo":Lcom/android/server/vcn/VcnGatewayConnection$EventMigrationCompletedInfo;
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->handleSafeModeTimeoutExceeded()V

    .line 1797
    goto :goto_0

    .line 1793
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/vcn/VcnGatewayConnection$EventDisconnectRequestedInfo;

    invoke-virtual {p0, v0}, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->handleDisconnectRequested(Lcom/android/server/vcn/VcnGatewayConnection$EventDisconnectRequestedInfo;)V

    .line 1794
    goto :goto_0

    .line 1786
    :pswitch_4
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {v0}, Lcom/android/server/vcn/VcnGatewayConnection;->access$3700(Lcom/android/server/vcn/VcnGatewayConnection;)Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;

    move-result-object v0

    .line 1787
    .local v0, "oldChildConfig":Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;
    iget-object v1, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/vcn/VcnGatewayConnection$EventSetupCompletedInfo;

    iget-object v2, v2, Lcom/android/server/vcn/VcnGatewayConnection$EventSetupCompletedInfo;->childSessionConfig:Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;

    invoke-static {v1, v2}, Lcom/android/server/vcn/VcnGatewayConnection;->access$3702(Lcom/android/server/vcn/VcnGatewayConnection;Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;)Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;

    .line 1789
    iget-object v1, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    .line 1790
    invoke-static {v1}, Lcom/android/server/vcn/VcnGatewayConnection;->access$2100(Lcom/android/server/vcn/VcnGatewayConnection;)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {v2}, Lcom/android/server/vcn/VcnGatewayConnection;->access$3600(Lcom/android/server/vcn/VcnGatewayConnection;)Landroid/net/IpSecManager$IpSecTunnelInterface;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {v3}, Lcom/android/server/vcn/VcnGatewayConnection;->access$3700(Lcom/android/server/vcn/VcnGatewayConnection;)Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;

    move-result-object v3

    .line 1789
    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->setupInterfaceAndNetworkAgent(ILandroid/net/IpSecManager$IpSecTunnelInterface;Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;)V

    .line 1791
    goto :goto_0

    .line 1775
    .end local v0    # "oldChildConfig":Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;
    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/vcn/VcnGatewayConnection$EventTransformCreatedInfo;

    .line 1778
    .local v0, "transformCreatedInfo":Lcom/android/server/vcn/VcnGatewayConnection$EventTransformCreatedInfo;
    iget-object v1, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    .line 1779
    invoke-static {v1}, Lcom/android/server/vcn/VcnGatewayConnection;->access$2100(Lcom/android/server/vcn/VcnGatewayConnection;)I

    move-result v3

    iget-object v1, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    .line 1780
    invoke-static {v1}, Lcom/android/server/vcn/VcnGatewayConnection;->access$3600(Lcom/android/server/vcn/VcnGatewayConnection;)Landroid/net/IpSecManager$IpSecTunnelInterface;

    move-result-object v4

    iget-object v1, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    .line 1781
    invoke-static {v1}, Lcom/android/server/vcn/VcnGatewayConnection;->access$2000(Lcom/android/server/vcn/VcnGatewayConnection;)Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;

    move-result-object v1

    iget-object v5, v1, Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;->network:Landroid/net/Network;

    iget-object v6, v0, Lcom/android/server/vcn/VcnGatewayConnection$EventTransformCreatedInfo;->transform:Landroid/net/IpSecTransform;

    iget v7, v0, Lcom/android/server/vcn/VcnGatewayConnection$EventTransformCreatedInfo;->direction:I

    .line 1778
    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->applyTransform(ILandroid/net/IpSecManager$IpSecTunnelInterface;Landroid/net/Network;Landroid/net/IpSecTransform;I)V

    .line 1784
    goto :goto_0

    .line 1768
    .end local v0    # "transformCreatedInfo":Lcom/android/server/vcn/VcnGatewayConnection$EventTransformCreatedInfo;
    :pswitch_6
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-virtual {v0, p1}, Lcom/android/server/vcn/VcnGatewayConnection;->deferMessage(Landroid/os/Message;)V

    .line 1769
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    iget-object v1, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mDisconnectingState:Lcom/android/server/vcn/VcnGatewayConnection$DisconnectingState;

    invoke-virtual {v0, v1}, Lcom/android/server/vcn/VcnGatewayConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 1770
    goto :goto_0

    .line 1772
    :pswitch_7
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    iget-object v1, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mDisconnectingState:Lcom/android/server/vcn/VcnGatewayConnection$DisconnectingState;

    invoke-virtual {v0, v1}, Lcom/android/server/vcn/VcnGatewayConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 1773
    goto :goto_0

    .line 1763
    :pswitch_8
    invoke-direct {p0, p1}, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->handleUnderlyingNetworkChanged(Landroid/os/Message;)V

    .line 1764
    nop

    .line 1808
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected setupInterfaceAndNetworkAgent(ILandroid/net/IpSecManager$IpSecTunnelInterface;Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "tunnelIface"    # Landroid/net/IpSecManager$IpSecTunnelInterface;
    .param p3, "childConfig"    # Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;
    .param p4, "oldChildConfig"    # Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;

    .line 1864
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->setupInterface(ILandroid/net/IpSecManager$IpSecTunnelInterface;Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;)V

    .line 1866
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {v0}, Lcom/android/server/vcn/VcnGatewayConnection;->access$1100(Lcom/android/server/vcn/VcnGatewayConnection;)Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1867
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-virtual {p0, p2, p3}, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->buildNetworkAgent(Landroid/net/IpSecManager$IpSecTunnelInterface;Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;)Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/vcn/VcnGatewayConnection;->access$1102(Lcom/android/server/vcn/VcnGatewayConnection;Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;)Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;

    goto :goto_0

    .line 1869
    :cond_0
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {v0}, Lcom/android/server/vcn/VcnGatewayConnection;->access$1100(Lcom/android/server/vcn/VcnGatewayConnection;)Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;

    move-result-object v0

    invoke-virtual {p0, p2, v0, p3}, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->updateNetworkAgent(Landroid/net/IpSecManager$IpSecTunnelInterface;Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;)V

    .line 1873
    invoke-virtual {p0}, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->clearFailedAttemptCounterAndSafeModeAlarm()V

    .line 1875
    :goto_0
    return-void
.end method
