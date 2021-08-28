.class public Lcom/android/net/module/util/NetdUtils;
.super Ljava/lang/Object;
.source "NetdUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInterfaceConfigParcel(Landroid/net/INetd;Ljava/lang/String;)Landroid/net/InterfaceConfigurationParcel;
    .locals 2
    .param p0, "netd"    # Landroid/net/INetd;
    .param p1, "iface"    # Ljava/lang/String;

    .line 42
    :try_start_0
    invoke-interface {p0, p1}, Landroid/net/INetd;->interfaceGetCfg(Ljava/lang/String;)Landroid/net/InterfaceConfigurationParcel;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 43
    :catch_0
    move-exception v0

    .line 44
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected static removeAndAddFlags([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 5
    .param p0, "flags"    # [Ljava/lang/String;
    .param p1, "remove"    # Ljava/lang/String;
    .param p2, "add"    # Ljava/lang/String;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 61
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_0
    invoke-static {p2}, Lcom/android/net/module/util/NetdUtils;->validateFlag(Ljava/lang/String;)V

    .line 62
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p0, v2

    .line 65
    .local v3, "flag":Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    .line 66
    :cond_0
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    .end local v3    # "flag":Ljava/lang/String;
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 68
    :cond_2
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 70
    :catch_0
    move-exception v1

    .line 71
    .local v1, "iae":Ljava/lang/IllegalArgumentException;
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Invalid InterfaceConfigurationParcel"

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static setInterfaceConfig(Landroid/net/INetd;Landroid/net/InterfaceConfigurationParcel;)V
    .locals 2
    .param p0, "netd"    # Landroid/net/INetd;
    .param p1, "configParcel"    # Landroid/net/InterfaceConfigurationParcel;

    .line 80
    :try_start_0
    invoke-interface {p0, p1}, Landroid/net/INetd;->interfaceSetCfg(Landroid/net/InterfaceConfigurationParcel;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    nop

    .line 84
    return-void

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static setInterfaceDown(Landroid/net/INetd;Ljava/lang/String;)V
    .locals 4
    .param p0, "netd"    # Landroid/net/INetd;
    .param p1, "iface"    # Ljava/lang/String;

    .line 100
    invoke-static {p0, p1}, Lcom/android/net/module/util/NetdUtils;->getInterfaceConfigParcel(Landroid/net/INetd;Ljava/lang/String;)Landroid/net/InterfaceConfigurationParcel;

    move-result-object v0

    .line 101
    .local v0, "configParcel":Landroid/net/InterfaceConfigurationParcel;
    iget-object v1, v0, Landroid/net/InterfaceConfigurationParcel;->flags:[Ljava/lang/String;

    const-string/jumbo v2, "up"

    const-string v3, "down"

    invoke-static {v1, v2, v3}, Lcom/android/net/module/util/NetdUtils;->removeAndAddFlags([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/InterfaceConfigurationParcel;->flags:[Ljava/lang/String;

    .line 103
    invoke-static {p0, v0}, Lcom/android/net/module/util/NetdUtils;->setInterfaceConfig(Landroid/net/INetd;Landroid/net/InterfaceConfigurationParcel;)V

    .line 104
    return-void
.end method

.method public static setInterfaceUp(Landroid/net/INetd;Ljava/lang/String;)V
    .locals 4
    .param p0, "netd"    # Landroid/net/INetd;
    .param p1, "iface"    # Ljava/lang/String;

    .line 90
    invoke-static {p0, p1}, Lcom/android/net/module/util/NetdUtils;->getInterfaceConfigParcel(Landroid/net/INetd;Ljava/lang/String;)Landroid/net/InterfaceConfigurationParcel;

    move-result-object v0

    .line 91
    .local v0, "configParcel":Landroid/net/InterfaceConfigurationParcel;
    iget-object v1, v0, Landroid/net/InterfaceConfigurationParcel;->flags:[Ljava/lang/String;

    const-string v2, "down"

    const-string/jumbo v3, "up"

    invoke-static {v1, v2, v3}, Lcom/android/net/module/util/NetdUtils;->removeAndAddFlags([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/InterfaceConfigurationParcel;->flags:[Ljava/lang/String;

    .line 93
    invoke-static {p0, v0}, Lcom/android/net/module/util/NetdUtils;->setInterfaceConfig(Landroid/net/INetd;Landroid/net/InterfaceConfigurationParcel;)V

    .line 94
    return-void
.end method

.method private static validateFlag(Ljava/lang/String;)V
    .locals 3
    .param p0, "flag"    # Ljava/lang/String;

    .line 49
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_0

    .line 52
    return-void

    .line 50
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "flag contains space: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
