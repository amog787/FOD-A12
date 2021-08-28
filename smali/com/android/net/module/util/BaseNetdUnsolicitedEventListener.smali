.class public Lcom/android/net/module/util/BaseNetdUnsolicitedEventListener;
.super Landroid/net/INetdUnsolicitedEventListener$Stub;
.source "BaseNetdUnsolicitedEventListener.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Landroid/net/INetdUnsolicitedEventListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterfaceHash()Ljava/lang/String;
    .locals 1

    .line 73
    const-string v0, "850353de5d19a0dd718f8fd20791f0532e6a34c7"

    return-object v0
.end method

.method public getInterfaceVersion()I
    .locals 1

    .line 68
    const/4 v0, 0x7

    return v0
.end method

.method public onInterfaceAdded(Ljava/lang/String;)V
    .locals 0
    .param p1, "ifName"    # Ljava/lang/String;

    .line 48
    return-void
.end method

.method public onInterfaceAddressRemoved(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0
    .param p1, "addr"    # Ljava/lang/String;
    .param p2, "ifName"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p4, "scope"    # I

    .line 45
    return-void
.end method

.method public onInterfaceAddressUpdated(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0
    .param p1, "addr"    # Ljava/lang/String;
    .param p2, "ifName"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p4, "scope"    # I

    .line 41
    return-void
.end method

.method public onInterfaceChanged(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "ifName"    # Ljava/lang/String;
    .param p2, "up"    # Z

    .line 54
    return-void
.end method

.method public onInterfaceClassActivityChanged(ZIJI)V
    .locals 0
    .param p1, "isActive"    # Z
    .param p2, "timerLabel"    # I
    .param p3, "timestampNs"    # J
    .param p5, "uid"    # I

    .line 30
    return-void
.end method

.method public onInterfaceDnsServerInfo(Ljava/lang/String;J[Ljava/lang/String;)V
    .locals 0
    .param p1, "ifName"    # Ljava/lang/String;
    .param p2, "lifetimeS"    # J
    .param p4, "servers"    # [Ljava/lang/String;

    .line 37
    return-void
.end method

.method public onInterfaceLinkStateChanged(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "ifName"    # Ljava/lang/String;
    .param p2, "up"    # Z

    .line 57
    return-void
.end method

.method public onInterfaceRemoved(Ljava/lang/String;)V
    .locals 0
    .param p1, "ifName"    # Ljava/lang/String;

    .line 51
    return-void
.end method

.method public onQuotaLimitReached(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "alertName"    # Ljava/lang/String;
    .param p2, "ifName"    # Ljava/lang/String;

    .line 33
    return-void
.end method

.method public onRouteChanged(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "updated"    # Z
    .param p2, "route"    # Ljava/lang/String;
    .param p3, "gateway"    # Ljava/lang/String;
    .param p4, "ifName"    # Ljava/lang/String;

    .line 61
    return-void
.end method

.method public onStrictCleartextDetected(ILjava/lang/String;)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "hex"    # Ljava/lang/String;

    .line 64
    return-void
.end method
