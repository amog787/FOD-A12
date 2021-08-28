.class Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener;
.super Landroid/net/INetdUnsolicitedEventListener$Stub;
.source "NetworkManagementService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NetworkManagementService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetdUnsolicitedEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/NetworkManagementService;


# direct methods
.method private constructor <init>(Lcom/android/server/NetworkManagementService;)V
    .locals 0

    .line 579
    iput-object p1, p0, Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-direct {p0}, Landroid/net/INetdUnsolicitedEventListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/NetworkManagementService;Lcom/android/server/NetworkManagementService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/NetworkManagementService;
    .param p2, "x1"    # Lcom/android/server/NetworkManagementService$1;

    .line 579
    invoke-direct {p0, p1}, Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener;-><init>(Lcom/android/server/NetworkManagementService;)V

    return-void
.end method


# virtual methods
.method public getInterfaceHash()Ljava/lang/String;
    .locals 1

    .line 665
    const-string v0, "850353de5d19a0dd718f8fd20791f0532e6a34c7"

    return-object v0
.end method

.method public getInterfaceVersion()I
    .locals 1

    .line 660
    const/4 v0, 0x7

    return v0
.end method

.method public synthetic lambda$onInterfaceAdded$5$NetworkManagementService$NetdUnsolicitedEventListener(Ljava/lang/String;)V
    .locals 1
    .param p1, "ifName"    # Ljava/lang/String;

    .line 621
    iget-object v0, p0, Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {v0, p1}, Lcom/android/server/NetworkManagementService;->access$800(Lcom/android/server/NetworkManagementService;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$onInterfaceAddressRemoved$4$NetworkManagementService$NetdUnsolicitedEventListener(Ljava/lang/String;Landroid/net/LinkAddress;)V
    .locals 1
    .param p1, "ifName"    # Ljava/lang/String;
    .param p2, "address"    # Landroid/net/LinkAddress;

    .line 616
    iget-object v0, p0, Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {v0, p1, p2}, Lcom/android/server/NetworkManagementService;->access$900(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Landroid/net/LinkAddress;)V

    return-void
.end method

.method public synthetic lambda$onInterfaceAddressUpdated$3$NetworkManagementService$NetdUnsolicitedEventListener(Ljava/lang/String;Landroid/net/LinkAddress;)V
    .locals 1
    .param p1, "ifName"    # Ljava/lang/String;
    .param p2, "address"    # Landroid/net/LinkAddress;

    .line 609
    iget-object v0, p0, Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {v0, p1, p2}, Lcom/android/server/NetworkManagementService;->access$1000(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Landroid/net/LinkAddress;)V

    return-void
.end method

.method public synthetic lambda$onInterfaceChanged$7$NetworkManagementService$NetdUnsolicitedEventListener(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "ifName"    # Ljava/lang/String;
    .param p2, "up"    # Z

    .line 632
    iget-object v0, p0, Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {v0, p1, p2}, Lcom/android/server/NetworkManagementService;->access$600(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Z)V

    return-void
.end method

.method public synthetic lambda$onInterfaceClassActivityChanged$0$NetworkManagementService$NetdUnsolicitedEventListener(IZJI)V
    .locals 6
    .param p1, "label"    # I
    .param p2, "isActive"    # Z
    .param p3, "timestampNanos"    # J
    .param p5, "uid"    # I

    .line 590
    iget-object v0, p0, Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener;->this$0:Lcom/android/server/NetworkManagementService;

    move v1, p1

    move v2, p2

    move-wide v3, p3

    move v5, p5

    invoke-static/range {v0 .. v5}, Lcom/android/server/NetworkManagementService;->access$1300(Lcom/android/server/NetworkManagementService;IZJI)V

    return-void
.end method

.method public synthetic lambda$onInterfaceDnsServerInfo$2$NetworkManagementService$NetdUnsolicitedEventListener(Ljava/lang/String;J[Ljava/lang/String;)V
    .locals 1
    .param p1, "ifName"    # Ljava/lang/String;
    .param p2, "lifetime"    # J
    .param p4, "servers"    # [Ljava/lang/String;

    .line 602
    iget-object v0, p0, Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/server/NetworkManagementService;->access$1100(Lcom/android/server/NetworkManagementService;Ljava/lang/String;J[Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$onInterfaceLinkStateChanged$8$NetworkManagementService$NetdUnsolicitedEventListener(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "ifName"    # Ljava/lang/String;
    .param p2, "up"    # Z

    .line 638
    iget-object v0, p0, Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {v0, p1, p2}, Lcom/android/server/NetworkManagementService;->access$500(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Z)V

    return-void
.end method

.method public synthetic lambda$onInterfaceRemoved$6$NetworkManagementService$NetdUnsolicitedEventListener(Ljava/lang/String;)V
    .locals 1
    .param p1, "ifName"    # Ljava/lang/String;

    .line 626
    iget-object v0, p0, Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {v0, p1}, Lcom/android/server/NetworkManagementService;->access$700(Lcom/android/server/NetworkManagementService;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$onQuotaLimitReached$1$NetworkManagementService$NetdUnsolicitedEventListener(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "alertName"    # Ljava/lang/String;
    .param p2, "ifName"    # Ljava/lang/String;

    .line 596
    iget-object v0, p0, Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {v0, p1, p2}, Lcom/android/server/NetworkManagementService;->access$1200(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$onRouteChanged$9$NetworkManagementService$NetdUnsolicitedEventListener(ZLandroid/net/RouteInfo;)V
    .locals 1
    .param p1, "updated"    # Z
    .param p2, "processRoute"    # Landroid/net/RouteInfo;

    .line 647
    iget-object v0, p0, Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {v0, p1, p2}, Lcom/android/server/NetworkManagementService;->access$400(Lcom/android/server/NetworkManagementService;ZLandroid/net/RouteInfo;)V

    return-void
.end method

.method public onInterfaceAdded(Ljava/lang/String;)V
    .locals 2
    .param p1, "ifName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 621
    iget-object v0, p0, Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {v0}, Lcom/android/server/NetworkManagementService;->access$300(Lcom/android/server/NetworkManagementService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 622
    return-void
.end method

.method public onInterfaceAddressRemoved(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 3
    .param p1, "addr"    # Ljava/lang/String;
    .param p2, "ifName"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p4, "scope"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 615
    new-instance v0, Landroid/net/LinkAddress;

    invoke-direct {v0, p1, p3, p4}, Landroid/net/LinkAddress;-><init>(Ljava/lang/String;II)V

    .line 616
    .local v0, "address":Landroid/net/LinkAddress;
    iget-object v1, p0, Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {v1}, Lcom/android/server/NetworkManagementService;->access$300(Lcom/android/server/NetworkManagementService;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0, p2, v0}, Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener;Ljava/lang/String;Landroid/net/LinkAddress;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 617
    return-void
.end method

.method public onInterfaceAddressUpdated(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 3
    .param p1, "addr"    # Ljava/lang/String;
    .param p2, "ifName"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p4, "scope"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 608
    new-instance v0, Landroid/net/LinkAddress;

    invoke-direct {v0, p1, p3, p4}, Landroid/net/LinkAddress;-><init>(Ljava/lang/String;II)V

    .line 609
    .local v0, "address":Landroid/net/LinkAddress;
    iget-object v1, p0, Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {v1}, Lcom/android/server/NetworkManagementService;->access$300(Lcom/android/server/NetworkManagementService;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0, p2, v0}, Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener;Ljava/lang/String;Landroid/net/LinkAddress;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 610
    return-void
.end method

.method public onInterfaceChanged(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "ifName"    # Ljava/lang/String;
    .param p2, "up"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 632
    iget-object v0, p0, Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {v0}, Lcom/android/server/NetworkManagementService;->access$300(Lcom/android/server/NetworkManagementService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 633
    return-void
.end method

.method public onInterfaceClassActivityChanged(ZIJI)V
    .locals 12
    .param p1, "isActive"    # Z
    .param p2, "label"    # I
    .param p3, "timestamp"    # J
    .param p5, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 584
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-gtz v0, :cond_0

    .line 585
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    .local v0, "timestampNanos":J
    goto :goto_0

    .line 587
    .end local v0    # "timestampNanos":J
    :cond_0
    move-wide v0, p3

    .line 589
    .restart local v0    # "timestampNanos":J
    :goto_0
    move-object v9, p0

    iget-object v2, v9, Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {v2}, Lcom/android/server/NetworkManagementService;->access$300(Lcom/android/server/NetworkManagementService;)Landroid/os/Handler;

    move-result-object v10

    new-instance v11, Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener$$ExternalSyntheticLambda0;

    move-object v2, v11

    move-object v3, p0

    move v4, p2

    move v5, p1

    move-wide v6, v0

    move/from16 v8, p5

    invoke-direct/range {v2 .. v8}, Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener;IZJI)V

    invoke-virtual {v10, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 591
    return-void
.end method

.method public onInterfaceDnsServerInfo(Ljava/lang/String;J[Ljava/lang/String;)V
    .locals 8
    .param p1, "ifName"    # Ljava/lang/String;
    .param p2, "lifetime"    # J
    .param p4, "servers"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 602
    iget-object v0, p0, Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {v0}, Lcom/android/server/NetworkManagementService;->access$300(Lcom/android/server/NetworkManagementService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v7, Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener$$ExternalSyntheticLambda3;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener;Ljava/lang/String;J[Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 603
    return-void
.end method

.method public onInterfaceLinkStateChanged(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "ifName"    # Ljava/lang/String;
    .param p2, "up"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 638
    iget-object v0, p0, Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {v0}, Lcom/android/server/NetworkManagementService;->access$300(Lcom/android/server/NetworkManagementService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 639
    return-void
.end method

.method public onInterfaceRemoved(Ljava/lang/String;)V
    .locals 2
    .param p1, "ifName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 626
    iget-object v0, p0, Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {v0}, Lcom/android/server/NetworkManagementService;->access$300(Lcom/android/server/NetworkManagementService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 627
    return-void
.end method

.method public onQuotaLimitReached(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "alertName"    # Ljava/lang/String;
    .param p2, "ifName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 596
    iget-object v0, p0, Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {v0}, Lcom/android/server/NetworkManagementService;->access$300(Lcom/android/server/NetworkManagementService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 597
    return-void
.end method

.method public onRouteChanged(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "updated"    # Z
    .param p2, "route"    # Ljava/lang/String;
    .param p3, "gateway"    # Ljava/lang/String;
    .param p4, "ifName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 644
    new-instance v0, Landroid/net/RouteInfo;

    new-instance v1, Landroid/net/IpPrefix;

    invoke-direct {v1, p2}, Landroid/net/IpPrefix;-><init>(Ljava/lang/String;)V

    .line 645
    const-string v2, ""

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p3}, Landroid/net/InetAddresses;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    :goto_0
    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, p4, v3}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;Ljava/net/InetAddress;Ljava/lang/String;I)V

    .line 647
    .local v0, "processRoute":Landroid/net/RouteInfo;
    iget-object v1, p0, Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {v1}, Lcom/android/server/NetworkManagementService;->access$300(Lcom/android/server/NetworkManagementService;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener$$ExternalSyntheticLambda9;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener;ZLandroid/net/RouteInfo;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 648
    return-void
.end method

.method public onStrictCleartextDetected(ILjava/lang/String;)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "hex"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 654
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    .line 655
    invoke-static {p2}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v1

    .line 654
    invoke-interface {v0, p1, v1}, Landroid/app/IActivityManager;->notifyCleartextNetwork(I[B)V

    .line 656
    return-void
.end method
