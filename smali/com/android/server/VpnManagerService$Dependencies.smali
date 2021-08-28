.class public Lcom/android/server/VpnManagerService$Dependencies;
.super Ljava/lang/Object;
.source "VpnManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/VpnManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Dependencies"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCallingUid()I
    .locals 1

    .line 110
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    return v0
.end method

.method public getINetworkManagementService()Landroid/os/INetworkManagementService;
    .locals 1

    .line 128
    nop

    .line 129
    const-string/jumbo v0, "network_management"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 128
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v0

    return-object v0
.end method

.method public getNetd()Landroid/net/INetd;
    .locals 1

    .line 124
    invoke-static {}, Landroid/net/util/NetdService;->getInstance()Landroid/net/INetd;

    move-result-object v0

    return-object v0
.end method

.method public getVpnProfileStore()Lcom/android/server/connectivity/VpnProfileStore;
    .locals 1

    .line 120
    new-instance v0, Lcom/android/server/connectivity/VpnProfileStore;

    invoke-direct {v0}, Lcom/android/server/connectivity/VpnProfileStore;-><init>()V

    return-object v0
.end method

.method public makeHandlerThread()Landroid/os/HandlerThread;
    .locals 2

    .line 115
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "VpnManagerService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
