.class final Lcom/android/server/IpSecService$TunnelInterfaceRecord;
.super Lcom/android/server/IpSecService$OwnedResourceRecord;
.source "IpSecService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/IpSecService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "TunnelInterfaceRecord"
.end annotation


# instance fields
.field private final mIfId:I

.field private final mIkey:I

.field private final mInterfaceName:Ljava/lang/String;

.field private final mLocalAddress:Ljava/lang/String;

.field private final mOkey:I

.field private final mRemoteAddress:Ljava/lang/String;

.field private mUnderlyingNetwork:Landroid/net/Network;

.field final synthetic this$0:Lcom/android/server/IpSecService;


# direct methods
.method constructor <init>(Lcom/android/server/IpSecService;ILjava/lang/String;Landroid/net/Network;Ljava/lang/String;Ljava/lang/String;III)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/IpSecService;
    .param p2, "resourceId"    # I
    .param p3, "interfaceName"    # Ljava/lang/String;
    .param p4, "underlyingNetwork"    # Landroid/net/Network;
    .param p5, "localAddr"    # Ljava/lang/String;
    .param p6, "remoteAddr"    # Ljava/lang/String;
    .param p7, "ikey"    # I
    .param p8, "okey"    # I
    .param p9, "intfId"    # I

    .line 828
    iput-object p1, p0, Lcom/android/server/IpSecService$TunnelInterfaceRecord;->this$0:Lcom/android/server/IpSecService;

    .line 829
    invoke-direct {p0, p1, p2}, Lcom/android/server/IpSecService$OwnedResourceRecord;-><init>(Lcom/android/server/IpSecService;I)V

    .line 831
    iput-object p3, p0, Lcom/android/server/IpSecService$TunnelInterfaceRecord;->mInterfaceName:Ljava/lang/String;

    .line 832
    iput-object p4, p0, Lcom/android/server/IpSecService$TunnelInterfaceRecord;->mUnderlyingNetwork:Landroid/net/Network;

    .line 833
    iput-object p5, p0, Lcom/android/server/IpSecService$TunnelInterfaceRecord;->mLocalAddress:Ljava/lang/String;

    .line 834
    iput-object p6, p0, Lcom/android/server/IpSecService$TunnelInterfaceRecord;->mRemoteAddress:Ljava/lang/String;

    .line 835
    iput p7, p0, Lcom/android/server/IpSecService$TunnelInterfaceRecord;->mIkey:I

    .line 836
    iput p8, p0, Lcom/android/server/IpSecService$TunnelInterfaceRecord;->mOkey:I

    .line 837
    iput p9, p0, Lcom/android/server/IpSecService$TunnelInterfaceRecord;->mIfId:I

    .line 838
    return-void
.end method

.method static synthetic access$200(Lcom/android/server/IpSecService$TunnelInterfaceRecord;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/IpSecService$TunnelInterfaceRecord;

    .line 806
    iget-object v0, p0, Lcom/android/server/IpSecService$TunnelInterfaceRecord;->mInterfaceName:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public freeUnderlyingResources()V
    .locals 14

    .line 847
    :try_start_0
    iget-object v0, p0, Lcom/android/server/IpSecService$TunnelInterfaceRecord;->this$0:Lcom/android/server/IpSecService;

    invoke-static {v0}, Lcom/android/server/IpSecService;->access$000(Lcom/android/server/IpSecService;)Lcom/android/server/IpSecService$IpSecServiceConfiguration;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/IpSecService$IpSecServiceConfiguration;->getNetdInstance()Landroid/net/INetd;

    move-result-object v0

    .line 848
    .local v0, "netd":Landroid/net/INetd;
    iget-object v1, p0, Lcom/android/server/IpSecService$TunnelInterfaceRecord;->mInterfaceName:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/net/INetd;->ipSecRemoveTunnelInterface(Ljava/lang/String;)V

    .line 850
    invoke-static {}, Lcom/android/server/IpSecService;->access$100()[I

    move-result-object v11

    array-length v12, v11

    const/4 v1, 0x0

    move v13, v1

    :goto_0
    if-ge v13, v12, :cond_0

    aget v3, v11, v13

    .line 851
    .local v3, "selAddrFamily":I
    iget v2, p0, Lcom/android/server/IpSecService$TunnelInterfaceRecord;->uid:I

    const/4 v4, 0x1

    iget v5, p0, Lcom/android/server/IpSecService$TunnelInterfaceRecord;->mOkey:I

    const/4 v6, -0x1

    iget v7, p0, Lcom/android/server/IpSecService$TunnelInterfaceRecord;->mIfId:I

    move-object v1, v0

    invoke-interface/range {v1 .. v7}, Landroid/net/INetd;->ipSecDeleteSecurityPolicy(IIIIII)V

    .line 858
    iget v5, p0, Lcom/android/server/IpSecService$TunnelInterfaceRecord;->uid:I

    const/4 v7, 0x0

    iget v8, p0, Lcom/android/server/IpSecService$TunnelInterfaceRecord;->mIkey:I

    const/4 v9, -0x1

    iget v10, p0, Lcom/android/server/IpSecService$TunnelInterfaceRecord;->mIfId:I

    move-object v4, v0

    move v6, v3

    invoke-interface/range {v4 .. v10}, Landroid/net/INetd;->ipSecDeleteSecurityPolicy(IIIIII)V
    :try_end_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 850
    .end local v3    # "selAddrFamily":I
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 873
    .end local v0    # "netd":Landroid/net/INetd;
    :cond_0
    goto :goto_1

    .line 866
    :catch_0
    move-exception v0

    .line 867
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to delete VTI with interface name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/IpSecService$TunnelInterfaceRecord;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " and id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/IpSecService$TunnelInterfaceRecord;->mResourceId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IpSecService"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 875
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/IpSecService$TunnelInterfaceRecord;->getResourceTracker()Lcom/android/server/IpSecService$ResourceTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/IpSecService$ResourceTracker;->give()V

    .line 876
    iget-object v0, p0, Lcom/android/server/IpSecService$TunnelInterfaceRecord;->this$0:Lcom/android/server/IpSecService;

    iget v1, p0, Lcom/android/server/IpSecService$TunnelInterfaceRecord;->mIkey:I

    invoke-virtual {v0, v1}, Lcom/android/server/IpSecService;->releaseNetId(I)V

    .line 877
    iget-object v0, p0, Lcom/android/server/IpSecService$TunnelInterfaceRecord;->this$0:Lcom/android/server/IpSecService;

    iget v1, p0, Lcom/android/server/IpSecService$TunnelInterfaceRecord;->mOkey:I

    invoke-virtual {v0, v1}, Lcom/android/server/IpSecService;->releaseNetId(I)V

    .line 878
    return-void
.end method

.method public getIfId()I
    .locals 1

    .line 915
    iget v0, p0, Lcom/android/server/IpSecService$TunnelInterfaceRecord;->mIfId:I

    return v0
.end method

.method public getIkey()I
    .locals 1

    .line 907
    iget v0, p0, Lcom/android/server/IpSecService$TunnelInterfaceRecord;->mIkey:I

    return v0
.end method

.method public getInterfaceName()Ljava/lang/String;
    .locals 1

    .line 893
    iget-object v0, p0, Lcom/android/server/IpSecService$TunnelInterfaceRecord;->mInterfaceName:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalAddress()Ljava/lang/String;
    .locals 1

    .line 898
    iget-object v0, p0, Lcom/android/server/IpSecService$TunnelInterfaceRecord;->mLocalAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getOkey()I
    .locals 1

    .line 911
    iget v0, p0, Lcom/android/server/IpSecService$TunnelInterfaceRecord;->mOkey:I

    return v0
.end method

.method public getRemoteAddress()Ljava/lang/String;
    .locals 1

    .line 903
    iget-object v0, p0, Lcom/android/server/IpSecService$TunnelInterfaceRecord;->mRemoteAddress:Ljava/lang/String;

    return-object v0
.end method

.method protected getResourceTracker()Lcom/android/server/IpSecService$ResourceTracker;
    .locals 1

    .line 920
    invoke-virtual {p0}, Lcom/android/server/IpSecService$TunnelInterfaceRecord;->getUserRecord()Lcom/android/server/IpSecService$UserRecord;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/IpSecService$UserRecord;->mTunnelQuotaTracker:Lcom/android/server/IpSecService$ResourceTracker;

    return-object v0
.end method

.method public getUnderlyingNetwork()Landroid/net/Network;
    .locals 1

    .line 889
    iget-object v0, p0, Lcom/android/server/IpSecService$TunnelInterfaceRecord;->mUnderlyingNetwork:Landroid/net/Network;

    return-object v0
.end method

.method public invalidate()V
    .locals 2

    .line 925
    invoke-virtual {p0}, Lcom/android/server/IpSecService$TunnelInterfaceRecord;->getUserRecord()Lcom/android/server/IpSecService$UserRecord;

    move-result-object v0

    iget v1, p0, Lcom/android/server/IpSecService$TunnelInterfaceRecord;->mResourceId:I

    invoke-virtual {v0, v1}, Lcom/android/server/IpSecService$UserRecord;->removeTunnelInterfaceRecord(I)V

    .line 926
    return-void
.end method

.method public setUnderlyingNetwork(Landroid/net/Network;)V
    .locals 0
    .param p1, "underlyingNetwork"    # Landroid/net/Network;

    .line 884
    iput-object p1, p0, Lcom/android/server/IpSecService$TunnelInterfaceRecord;->mUnderlyingNetwork:Landroid/net/Network;

    .line 885
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 930
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 931
    const-string/jumbo v1, "{super="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 932
    invoke-super {p0}, Lcom/android/server/IpSecService$OwnedResourceRecord;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 933
    const-string v1, ", mInterfaceName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/IpSecService$TunnelInterfaceRecord;->mInterfaceName:Ljava/lang/String;

    .line 934
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 935
    const-string v1, ", mUnderlyingNetwork="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/IpSecService$TunnelInterfaceRecord;->mUnderlyingNetwork:Landroid/net/Network;

    .line 936
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 937
    const-string v1, ", mLocalAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/IpSecService$TunnelInterfaceRecord;->mLocalAddress:Ljava/lang/String;

    .line 938
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 939
    const-string v1, ", mRemoteAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/IpSecService$TunnelInterfaceRecord;->mRemoteAddress:Ljava/lang/String;

    .line 940
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 941
    const-string v1, ", mIkey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/IpSecService$TunnelInterfaceRecord;->mIkey:I

    .line 942
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 943
    const-string v1, ", mOkey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/IpSecService$TunnelInterfaceRecord;->mOkey:I

    .line 944
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 945
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 946
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 930
    return-object v0
.end method
