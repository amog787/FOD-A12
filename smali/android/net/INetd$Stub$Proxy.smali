.class Landroid/net/INetd$Stub$Proxy;
.super Ljava/lang/Object;
.source "INetd.java"

# interfaces
.implements Landroid/net/INetd;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/INetd$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Landroid/net/INetd;


# instance fields
.field private mCachedHash:Ljava/lang/String;

.field private mCachedVersion:I

.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 1
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 1755
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1758
    const/4 v0, -0x1

    iput v0, p0, Landroid/net/INetd$Stub$Proxy;->mCachedVersion:I

    .line 1759
    const-string v0, "-1"

    iput-object v0, p0, Landroid/net/INetd$Stub$Proxy;->mCachedHash:Ljava/lang/String;

    .line 1756
    iput-object p1, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 1757
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 1762
    iget-object v0, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public bandwidthAddNaughtyApp(I)V
    .locals 5
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3089
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3090
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3092
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3093
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3094
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x32

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3095
    .local v2, "_status":Z
    if-nez v2, :cond_1

    .line 3096
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3097
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/net/INetd;->bandwidthAddNaughtyApp(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3107
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3108
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3098
    return-void

    .line 3101
    :cond_0
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method bandwidthAddNaughtyApp is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .end local p1    # "uid":I
    throw v3

    .line 3104
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .restart local p1    # "uid":I
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3107
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3108
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3109
    nop

    .line 3110
    return-void

    .line 3107
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3108
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3109
    throw v2
.end method

.method public bandwidthAddNiceApp(I)V
    .locals 5
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3137
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3138
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3140
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3141
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3142
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x34

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3143
    .local v2, "_status":Z
    if-nez v2, :cond_1

    .line 3144
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3145
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/net/INetd;->bandwidthAddNiceApp(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3155
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3156
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3146
    return-void

    .line 3149
    :cond_0
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method bandwidthAddNiceApp is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .end local p1    # "uid":I
    throw v3

    .line 3152
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .restart local p1    # "uid":I
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3155
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3156
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3157
    nop

    .line 3158
    return-void

    .line 3155
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3156
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3157
    throw v2
.end method

.method public bandwidthEnableDataSaver(Z)Z
    .locals 6
    .param p1, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1823
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1824
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1827
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1828
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1829
    iget-object v4, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v5, 0x3

    invoke-interface {v4, v5, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    .line 1830
    .local v4, "_status":Z
    if-nez v4, :cond_2

    .line 1831
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1832
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/net/INetd;->bandwidthEnableDataSaver(Z)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1842
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1843
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1832
    return v2

    .line 1835
    :cond_1
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method bandwidthEnableDataSaver is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .end local p1    # "enable":Z
    throw v2

    .line 1838
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .restart local p1    # "enable":Z
    :cond_2
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1839
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v5, :cond_3

    goto :goto_1

    :cond_3
    move v2, v3

    .line 1842
    .end local v4    # "_status":Z
    .local v2, "_result":Z
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1843
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1844
    nop

    .line 1845
    return v2

    .line 1842
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1843
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1844
    throw v2
.end method

.method public bandwidthRemoveInterfaceAlert(Ljava/lang/String;)V
    .locals 5
    .param p1, "ifName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3041
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3042
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3044
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3045
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3046
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x30

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3047
    .local v2, "_status":Z
    if-nez v2, :cond_1

    .line 3048
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3049
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/net/INetd;->bandwidthRemoveInterfaceAlert(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3059
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3060
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3050
    return-void

    .line 3053
    :cond_0
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method bandwidthRemoveInterfaceAlert is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .end local p1    # "ifName":Ljava/lang/String;
    throw v3

    .line 3056
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .restart local p1    # "ifName":Ljava/lang/String;
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3059
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3060
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3061
    nop

    .line 3062
    return-void

    .line 3059
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3060
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3061
    throw v2
.end method

.method public bandwidthRemoveInterfaceQuota(Ljava/lang/String;)V
    .locals 5
    .param p1, "ifName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2992
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2993
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2995
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2996
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2997
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2998
    .local v2, "_status":Z
    if-nez v2, :cond_1

    .line 2999
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3000
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/net/INetd;->bandwidthRemoveInterfaceQuota(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3010
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3011
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3001
    return-void

    .line 3004
    :cond_0
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method bandwidthRemoveInterfaceQuota is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .end local p1    # "ifName":Ljava/lang/String;
    throw v3

    .line 3007
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .restart local p1    # "ifName":Ljava/lang/String;
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3010
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3011
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3012
    nop

    .line 3013
    return-void

    .line 3010
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3011
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3012
    throw v2
.end method

.method public bandwidthRemoveNaughtyApp(I)V
    .locals 5
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3113
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3114
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3116
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3117
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3118
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x33

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3119
    .local v2, "_status":Z
    if-nez v2, :cond_1

    .line 3120
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3121
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/net/INetd;->bandwidthRemoveNaughtyApp(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3131
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3132
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3122
    return-void

    .line 3125
    :cond_0
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method bandwidthRemoveNaughtyApp is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .end local p1    # "uid":I
    throw v3

    .line 3128
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .restart local p1    # "uid":I
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3131
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3132
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3133
    nop

    .line 3134
    return-void

    .line 3131
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3132
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3133
    throw v2
.end method

.method public bandwidthRemoveNiceApp(I)V
    .locals 5
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3161
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3162
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3164
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3165
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3166
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x35

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3167
    .local v2, "_status":Z
    if-nez v2, :cond_1

    .line 3168
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3169
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/net/INetd;->bandwidthRemoveNiceApp(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3179
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3180
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3170
    return-void

    .line 3173
    :cond_0
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method bandwidthRemoveNiceApp is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .end local p1    # "uid":I
    throw v3

    .line 3176
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .restart local p1    # "uid":I
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3179
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3180
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3181
    nop

    .line 3182
    return-void

    .line 3179
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3180
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3181
    throw v2
.end method

.method public bandwidthSetGlobalAlert(J)V
    .locals 5
    .param p1, "bytes"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3065
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3066
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3068
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3069
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 3070
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x31

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3071
    .local v2, "_status":Z
    if-nez v2, :cond_1

    .line 3072
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3073
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/net/INetd;->bandwidthSetGlobalAlert(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3083
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3084
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3074
    return-void

    .line 3077
    :cond_0
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method bandwidthSetGlobalAlert is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .end local p1    # "bytes":J
    throw v3

    .line 3080
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .restart local p1    # "bytes":J
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3083
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3084
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3085
    nop

    .line 3086
    return-void

    .line 3083
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3084
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3085
    throw v2
.end method

.method public bandwidthSetInterfaceAlert(Ljava/lang/String;J)V
    .locals 5
    .param p1, "ifName"    # Ljava/lang/String;
    .param p2, "bytes"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3016
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3017
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3019
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3020
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3021
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 3022
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3023
    .local v2, "_status":Z
    if-nez v2, :cond_1

    .line 3024
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3025
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Landroid/net/INetd;->bandwidthSetInterfaceAlert(Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3035
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3036
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3026
    return-void

    .line 3029
    :cond_0
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method bandwidthSetInterfaceAlert is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .end local p1    # "ifName":Ljava/lang/String;
    .end local p2    # "bytes":J
    throw v3

    .line 3032
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .restart local p1    # "ifName":Ljava/lang/String;
    .restart local p2    # "bytes":J
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3035
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3036
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3037
    nop

    .line 3038
    return-void

    .line 3035
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3036
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3037
    throw v2
.end method

.method public bandwidthSetInterfaceQuota(Ljava/lang/String;J)V
    .locals 5
    .param p1, "ifName"    # Ljava/lang/String;
    .param p2, "bytes"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2967
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2968
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2970
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2971
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2972
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 2973
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2974
    .local v2, "_status":Z
    if-nez v2, :cond_1

    .line 2975
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2976
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Landroid/net/INetd;->bandwidthSetInterfaceQuota(Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2986
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2987
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2977
    return-void

    .line 2980
    :cond_0
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method bandwidthSetInterfaceQuota is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .end local p1    # "ifName":Ljava/lang/String;
    .end local p2    # "bytes":J
    throw v3

    .line 2983
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .restart local p1    # "ifName":Ljava/lang/String;
    .restart local p2    # "bytes":J
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2986
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2987
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2988
    nop

    .line 2989
    return-void

    .line 2986
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2987
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2988
    throw v2
.end method

.method public clatdStart(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "ifName"    # Ljava/lang/String;
    .param p2, "nat64Prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2768
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2769
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2772
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2773
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2774
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2775
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x25

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2776
    .local v2, "_status":Z
    if-nez v2, :cond_1

    .line 2777
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2778
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/net/INetd;->clatdStart(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2788
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2789
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2778
    return-object v3

    .line 2781
    :cond_0
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method clatdStart is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .end local p1    # "ifName":Ljava/lang/String;
    .end local p2    # "nat64Prefix":Ljava/lang/String;
    throw v3

    .line 2784
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .restart local p1    # "ifName":Ljava/lang/String;
    .restart local p2    # "nat64Prefix":Ljava/lang/String;
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2785
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v3

    .line 2788
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2789
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2790
    nop

    .line 2791
    return-object v2

    .line 2788
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2789
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2790
    throw v2
.end method

.method public clatdStop(Ljava/lang/String;)V
    .locals 5
    .param p1, "ifName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2795
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2796
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2798
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2799
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2800
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x26

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2801
    .local v2, "_status":Z
    if-nez v2, :cond_1

    .line 2802
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2803
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/net/INetd;->clatdStop(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2813
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2814
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2804
    return-void

    .line 2807
    :cond_0
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method clatdStop is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .end local p1    # "ifName":Ljava/lang/String;
    throw v3

    .line 2810
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .restart local p1    # "ifName":Ljava/lang/String;
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2813
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2814
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2815
    nop

    .line 2816
    return-void

    .line 2813
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2814
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2815
    throw v2
.end method

.method public firewallAddUidInterfaceRules(Ljava/lang/String;[I)V
    .locals 5
    .param p1, "ifName"    # Ljava/lang/String;
    .param p2, "uids"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4119
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4120
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4122
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4123
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4124
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 4125
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x5b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4126
    .local v2, "_status":Z
    if-nez v2, :cond_1

    .line 4127
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 4128
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/net/INetd;->firewallAddUidInterfaceRules(Ljava/lang/String;[I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4138
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4139
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4129
    return-void

    .line 4132
    :cond_0
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method firewallAddUidInterfaceRules is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .end local p1    # "ifName":Ljava/lang/String;
    .end local p2    # "uids":[I
    throw v3

    .line 4135
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .restart local p1    # "ifName":Ljava/lang/String;
    .restart local p2    # "uids":[I
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4138
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4139
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4140
    nop

    .line 4141
    return-void

    .line 4138
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4139
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4140
    throw v2
.end method

.method public firewallEnableChildChain(IZ)V
    .locals 5
    .param p1, "childChain"    # I
    .param p2, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3810
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3811
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3813
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3814
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3815
    const/4 v2, 0x0

    if-eqz p2, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3816
    iget-object v3, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x4f

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3817
    .local v2, "_status":Z
    if-nez v2, :cond_2

    .line 3818
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 3819
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/net/INetd;->firewallEnableChildChain(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3829
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3830
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3820
    return-void

    .line 3823
    :cond_1
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method firewallEnableChildChain is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .end local p1    # "childChain":I
    .end local p2    # "enable":Z
    throw v3

    .line 3826
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .restart local p1    # "childChain":I
    .restart local p2    # "enable":Z
    :cond_2
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3829
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3830
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3831
    nop

    .line 3832
    return-void

    .line 3829
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3830
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3831
    throw v2
.end method

.method public firewallRemoveUidInterfaceRules([I)V
    .locals 5
    .param p1, "uids"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4144
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4145
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4147
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4148
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 4149
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x5c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4150
    .local v2, "_status":Z
    if-nez v2, :cond_1

    .line 4151
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 4152
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/net/INetd;->firewallRemoveUidInterfaceRules([I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4162
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4163
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4153
    return-void

    .line 4156
    :cond_0
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method firewallRemoveUidInterfaceRules is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .end local p1    # "uids":[I
    throw v3

    .line 4159
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .restart local p1    # "uids":[I
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4162
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4163
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4164
    nop

    .line 4165
    return-void

    .line 4162
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4163
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4164
    throw v2
.end method

.method public firewallReplaceUidChain(Ljava/lang/String;Z[I)Z
    .locals 6
    .param p1, "chainName"    # Ljava/lang/String;
    .param p2, "isAllowlist"    # Z
    .param p3, "uids"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1795
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1796
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1799
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1800
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1801
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p2, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1802
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1803
    iget-object v4, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v5, 0x2

    invoke-interface {v4, v5, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    .line 1804
    .local v4, "_status":Z
    if-nez v4, :cond_2

    .line 1805
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1806
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Landroid/net/INetd;->firewallReplaceUidChain(Ljava/lang/String;Z[I)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1816
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1817
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1806
    return v2

    .line 1809
    :cond_1
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method firewallReplaceUidChain is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .end local p1    # "chainName":Ljava/lang/String;
    .end local p2    # "isAllowlist":Z
    .end local p3    # "uids":[I
    throw v2

    .line 1812
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .restart local p1    # "chainName":Ljava/lang/String;
    .restart local p2    # "isAllowlist":Z
    .restart local p3    # "uids":[I
    :cond_2
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1813
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v5, :cond_3

    goto :goto_1

    :cond_3
    move v2, v3

    .line 1816
    .end local v4    # "_status":Z
    .local v2, "_result":Z
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1817
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1818
    nop

    .line 1819
    return v2

    .line 1816
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1817
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1818
    throw v2
.end method

.method public firewallSetFirewallType(I)V
    .locals 5
    .param p1, "firewalltype"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3735
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3736
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3738
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3739
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3740
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x4c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3741
    .local v2, "_status":Z
    if-nez v2, :cond_1

    .line 3742
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3743
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/net/INetd;->firewallSetFirewallType(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3753
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3754
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3744
    return-void

    .line 3747
    :cond_0
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method firewallSetFirewallType is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .end local p1    # "firewalltype":I
    throw v3

    .line 3750
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .restart local p1    # "firewalltype":I
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3753
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3754
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3755
    nop

    .line 3756
    return-void

    .line 3753
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3754
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3755
    throw v2
.end method

.method public firewallSetInterfaceRule(Ljava/lang/String;I)V
    .locals 5
    .param p1, "ifName"    # Ljava/lang/String;
    .param p2, "firewallRule"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3759
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3760
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3762
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3763
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3764
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3765
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x4d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3766
    .local v2, "_status":Z
    if-nez v2, :cond_1

    .line 3767
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3768
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/net/INetd;->firewallSetInterfaceRule(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3778
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3779
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3769
    return-void

    .line 3772
    :cond_0
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method firewallSetInterfaceRule is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .end local p1    # "ifName":Ljava/lang/String;
    .end local p2    # "firewallRule":I
    throw v3

    .line 3775
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .restart local p1    # "ifName":Ljava/lang/String;
    .restart local p2    # "firewallRule":I
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3778
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3779
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3780
    nop

    .line 3781
    return-void

    .line 3778
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3779
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3780
    throw v2
.end method

.method public firewallSetUidRule(III)V
    .locals 5
    .param p1, "childChain"    # I
    .param p2, "uid"    # I
    .param p3, "firewallRule"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3784
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3785
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3787
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3788
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3789
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3790
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3791
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x4e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3792
    .local v2, "_status":Z
    if-nez v2, :cond_1

    .line 3793
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3794
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Landroid/net/INetd;->firewallSetUidRule(III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3804
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3805
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3795
    return-void

    .line 3798
    :cond_0
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method firewallSetUidRule is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .end local p1    # "childChain":I
    .end local p2    # "uid":I
    .end local p3    # "firewallRule":I
    throw v3

    .line 3801
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .restart local p1    # "childChain":I
    .restart local p2    # "uid":I
    .restart local p3    # "firewallRule":I
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3804
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3805
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3806
    nop

    .line 3807
    return-void

    .line 3804
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3805
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3806
    throw v2
.end method

.method public getFwmarkForNetwork(I)Landroid/net/MarkMaskParcel;
    .locals 5
    .param p1, "netId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4246
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4247
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4250
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4251
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4252
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x60

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4253
    .local v2, "_status":Z
    if-nez v2, :cond_1

    .line 4254
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 4255
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/net/INetd;->getFwmarkForNetwork(I)Landroid/net/MarkMaskParcel;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4270
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4271
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4255
    return-object v3

    .line 4258
    :cond_0
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method getFwmarkForNetwork is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .end local p1    # "netId":I
    throw v3

    .line 4261
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .restart local p1    # "netId":I
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4262
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    .line 4263
    sget-object v3, Landroid/net/MarkMaskParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/MarkMaskParcel;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .local v3, "_result":Landroid/net/MarkMaskParcel;
    goto :goto_0

    .line 4266
    .end local v3    # "_result":Landroid/net/MarkMaskParcel;
    :cond_2
    const/4 v3, 0x0

    .line 4270
    .end local v2    # "_status":Z
    .restart local v3    # "_result":Landroid/net/MarkMaskParcel;
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4271
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4272
    nop

    .line 4273
    return-object v3

    .line 4270
    .end local v3    # "_result":Landroid/net/MarkMaskParcel;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4271
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4272
    throw v2
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 1766
    sget-object v0, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getInterfaceHash()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 4623
    :try_start_0
    const-string v0, "-1"

    iget-object v1, p0, Landroid/net/INetd$Stub$Proxy;->mCachedHash:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4624
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4625
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4627
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_1
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4628
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const v3, 0xfffffe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4629
    .local v2, "_status":Z
    if-nez v2, :cond_0

    .line 4630
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 4631
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3}, Landroid/net/INetd;->getInterfaceHash()Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4637
    :try_start_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4638
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 4631
    monitor-exit p0

    return-object v3

    .line 4634
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    :cond_0
    :try_start_3
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4635
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/net/INetd$Stub$Proxy;->mCachedHash:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 4637
    .end local v2    # "_status":Z
    :try_start_4
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4638
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4639
    goto :goto_0

    .line 4637
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4638
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4639
    throw v2

    .line 4641
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v1    # "reply":Landroid/os/Parcel;
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/net/INetd$Stub$Proxy;->mCachedHash:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit p0

    return-object v0

    .line 4622
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getInterfaceVersion()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4601
    iget v0, p0, Landroid/net/INetd$Stub$Proxy;->mCachedVersion:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 4602
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4603
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4605
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4606
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const v3, 0xffffff

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4607
    .local v2, "_status":Z
    if-nez v2, :cond_0

    .line 4608
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 4609
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3}, Landroid/net/INetd;->getInterfaceVersion()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4615
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4616
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4609
    return v3

    .line 4612
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4613
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/net/INetd$Stub$Proxy;->mCachedVersion:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4615
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4616
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4617
    goto :goto_0

    .line 4615
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4616
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4617
    throw v2

    .line 4619
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v1    # "reply":Landroid/os/Parcel;
    :cond_1
    :goto_0
    iget v0, p0, Landroid/net/INetd$Stub$Proxy;->mCachedVersion:I

    return v0
.end method

.method public getOemNetd()Landroid/os/IBinder;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4191
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4192
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4195
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4196
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x5e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4197
    .local v2, "_status":Z
    if-nez v2, :cond_1

    .line 4198
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 4199
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3}, Landroid/net/INetd;->getOemNetd()Landroid/os/IBinder;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4209
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4210
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4199
    return-object v3

    .line 4202
    :cond_0
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method getOemNetd is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    throw v3

    .line 4205
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4206
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v3

    .line 4209
    .local v2, "_result":Landroid/os/IBinder;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4210
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4211
    nop

    .line 4212
    return-object v2

    .line 4209
    .end local v2    # "_result":Landroid/os/IBinder;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4210
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4211
    throw v2
.end method

.method public getProcSysNet(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "ipversion"    # I
    .param p2, "which"    # I
    .param p3, "ifname"    # Ljava/lang/String;
    .param p4, "parameter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2181
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2182
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2185
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2186
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2187
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2188
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2189
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2190
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x11

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2191
    .local v2, "_status":Z
    if-nez v2, :cond_1

    .line 2192
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2193
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3, p4}, Landroid/net/INetd;->getProcSysNet(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2203
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2204
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2193
    return-object v3

    .line 2196
    :cond_0
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method getProcSysNet is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .end local p1    # "ipversion":I
    .end local p2    # "which":I
    .end local p3    # "ifname":Ljava/lang/String;
    .end local p4    # "parameter":Ljava/lang/String;
    throw v3

    .line 2199
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .restart local p1    # "ipversion":I
    .restart local p2    # "which":I
    .restart local p3    # "ifname":Ljava/lang/String;
    .restart local p4    # "parameter":Ljava/lang/String;
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2200
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v3

    .line 2203
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2204
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2205
    nop

    .line 2206
    return-object v2

    .line 2203
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2204
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2205
    throw v2
.end method

.method public idletimerAddInterface(Ljava/lang/String;ILjava/lang/String;)V
    .locals 5
    .param p1, "ifName"    # Ljava/lang/String;
    .param p2, "timeout"    # I
    .param p3, "classLabel"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2691
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2692
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2694
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2695
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2696
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2697
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2698
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x22

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2699
    .local v2, "_status":Z
    if-nez v2, :cond_1

    .line 2700
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2701
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Landroid/net/INetd;->idletimerAddInterface(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2711
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2712
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2702
    return-void

    .line 2705
    :cond_0
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method idletimerAddInterface is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .end local p1    # "ifName":Ljava/lang/String;
    .end local p2    # "timeout":I
    .end local p3    # "classLabel":Ljava/lang/String;
    throw v3

    .line 2708
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .restart local p1    # "ifName":Ljava/lang/String;
    .restart local p2    # "timeout":I
    .restart local p3    # "classLabel":Ljava/lang/String;
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2711
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2712
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2713
    nop

    .line 2714
    return-void

    .line 2711
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2712
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2713
    throw v2
.end method

.method public idletimerRemoveInterface(Ljava/lang/String;ILjava/lang/String;)V
    .locals 5
    .param p1, "ifName"    # Ljava/lang/String;
    .param p2, "timeout"    # I
    .param p3, "classLabel"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2717
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2718
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2720
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2721
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2722
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2723
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2724
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x23

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2725
    .local v2, "_status":Z
    if-nez v2, :cond_1

    .line 2726
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2727
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Landroid/net/INetd;->idletimerRemoveInterface(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2737
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2738
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2728
    return-void

    .line 2731
    :cond_0
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method idletimerRemoveInterface is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .end local p1    # "ifName":Ljava/lang/String;
    .end local p2    # "timeout":I
    .end local p3    # "classLabel":Ljava/lang/String;
    throw v3

    .line 2734
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .restart local p1    # "ifName":Ljava/lang/String;
    .restart local p2    # "timeout":I
    .restart local p3    # "classLabel":Ljava/lang/String;
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2737
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2738
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2739
    nop

    .line 2740
    return-void

    .line 2737
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2738
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2739
    throw v2
.end method

.method public interfaceAddAddress(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5
    .param p1, "ifName"    # Ljava/lang/String;
    .param p2, "addrString"    # Ljava/lang/String;
    .param p3, "prefixLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2129
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2130
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2132
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2133
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2134
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2135
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2136
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xf

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2137
    .local v2, "_status":Z
    if-nez v2, :cond_1

    .line 2138
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2139
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Landroid/net/INetd;->interfaceAddAddress(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2149
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2150
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2140
    return-void

    .line 2143
    :cond_0
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method interfaceAddAddress is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .end local p1    # "ifName":Ljava/lang/String;
    .end local p2    # "addrString":Ljava/lang/String;
    .end local p3    # "prefixLength":I
    throw v3

    .line 2146
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .restart local p1    # "ifName":Ljava/lang/String;
    .restart local p2    # "addrString":Ljava/lang/String;
    .restart local p3    # "prefixLength":I
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2149
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2150
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2151
    nop

    .line 2152
    return-void

    .line 2149
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2150
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2151
    throw v2
.end method

.method public interfaceClearAddrs(Ljava/lang/String;)V
    .locals 5
    .param p1, "ifName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3946
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3947
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3949
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3950
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3951
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x54

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3952
    .local v2, "_status":Z
    if-nez v2, :cond_1

    .line 3953
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3954
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/net/INetd;->interfaceClearAddrs(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3964
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3965
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3955
    return-void

    .line 3958
    :cond_0
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method interfaceClearAddrs is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .end local p1    # "ifName":Ljava/lang/String;
    throw v3

    .line 3961
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .restart local p1    # "ifName":Ljava/lang/String;
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3964
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3965
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3966
    nop

    .line 3967
    return-void

    .line 3964
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3965
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3966
    throw v2
.end method

.method public interfaceDelAddress(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5
    .param p1, "ifName"    # Ljava/lang/String;
    .param p2, "addrString"    # Ljava/lang/String;
    .param p3, "prefixLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2155
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2156
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2158
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2159
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2160
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2161
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2162
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x10

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2163
    .local v2, "_status":Z
    if-nez v2, :cond_1

    .line 2164
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2165
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Landroid/net/INetd;->interfaceDelAddress(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2175
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2176
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2166
    return-void

    .line 2169
    :cond_0
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method interfaceDelAddress is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .end local p1    # "ifName":Ljava/lang/String;
    .end local p2    # "addrString":Ljava/lang/String;
    .end local p3    # "prefixLength":I
    throw v3

    .line 2172
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .restart local p1    # "ifName":Ljava/lang/String;
    .restart local p2    # "addrString":Ljava/lang/String;
    .restart local p3    # "prefixLength":I
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2175
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2176
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2177
    nop

    .line 2178
    return-void

    .line 2175
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2176
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2177
    throw v2
.end method

.method public interfaceGetCfg(Ljava/lang/String;)Landroid/net/InterfaceConfigurationParcel;
    .locals 5
    .param p1, "ifName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3860
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3861
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3864
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3865
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3866
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x51

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3867
    .local v2, "_status":Z
    if-nez v2, :cond_1

    .line 3868
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3869
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/net/INetd;->interfaceGetCfg(Ljava/lang/String;)Landroid/net/InterfaceConfigurationParcel;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3884
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3885
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3869
    return-object v3

    .line 3872
    :cond_0
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method interfaceGetCfg is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .end local p1    # "ifName":Ljava/lang/String;
    throw v3

    .line 3875
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .restart local p1    # "ifName":Ljava/lang/String;
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3876
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    .line 3877
    sget-object v3, Landroid/net/InterfaceConfigurationParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/InterfaceConfigurationParcel;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .local v3, "_result":Landroid/net/InterfaceConfigurationParcel;
    goto :goto_0

    .line 3880
    .end local v3    # "_result":Landroid/net/InterfaceConfigurationParcel;
    :cond_2
    const/4 v3, 0x0

    .line 3884
    .end local v2    # "_status":Z
    .restart local v3    # "_result":Landroid/net/InterfaceConfigurationParcel;
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3885
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3886
    nop

    .line 3887
    return-object v3

    .line 3884
    .end local v3    # "_result":Landroid/net/InterfaceConfigurationParcel;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3885
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3886
    throw v2
.end method

.method public interfaceGetList()[Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3835
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3836
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3839
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3840
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x50

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3841
    .local v2, "_status":Z
    if-nez v2, :cond_1

    .line 3842
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3843
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3}, Landroid/net/INetd;->interfaceGetList()[Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3853
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3854
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3843
    return-object v3

    .line 3846
    :cond_0
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method interfaceGetList is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    throw v3

    .line 3849
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3850
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v3

    .line 3853
    .local v2, "_result":[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3854
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3855
    nop

    .line 3856
    return-object v2

    .line 3853
    .end local v2    # "_result":[Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3854
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3855
    throw v2
.end method

.method public interfaceSetCfg(Landroid/net/InterfaceConfigurationParcel;)V
    .locals 5
    .param p1, "cfg"    # Landroid/net/InterfaceConfigurationParcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3891
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3892
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3894
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3895
    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 3896
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3897
    invoke-virtual {p1, v0, v2}, Landroid/net/InterfaceConfigurationParcel;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 3900
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3902
    :goto_0
    iget-object v3, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x52

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3903
    .local v2, "_status":Z
    if-nez v2, :cond_2

    .line 3904
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 3905
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/net/INetd;->interfaceSetCfg(Landroid/net/InterfaceConfigurationParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3915
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3916
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3906
    return-void

    .line 3909
    :cond_1
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method interfaceSetCfg is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .end local p1    # "cfg":Landroid/net/InterfaceConfigurationParcel;
    throw v3

    .line 3912
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .restart local p1    # "cfg":Landroid/net/InterfaceConfigurationParcel;
    :cond_2
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3915
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3916
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3917
    nop

    .line 3918
    return-void

    .line 3915
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3916
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3917
    throw v2
.end method

.method public interfaceSetEnableIPv6(Ljava/lang/String;Z)V
    .locals 5
    .param p1, "ifName"    # Ljava/lang/String;
    .param p2, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3970
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3971
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3973
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3974
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3975
    const/4 v2, 0x0

    if-eqz p2, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3976
    iget-object v3, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x55

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3977
    .local v2, "_status":Z
    if-nez v2, :cond_2

    .line 3978
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 3979
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/net/INetd;->interfaceSetEnableIPv6(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3989
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3990
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3980
    return-void

    .line 3983
    :cond_1
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method interfaceSetEnableIPv6 is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .end local p1    # "ifName":Ljava/lang/String;
    .end local p2    # "enable":Z
    throw v3

    .line 3986
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .restart local p1    # "ifName":Ljava/lang/String;
    .restart local p2    # "enable":Z
    :cond_2
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3989
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3990
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3991
    nop

    .line 3992
    return-void

    .line 3989
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3990
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3991
    throw v2
.end method

.method public interfaceSetIPv6PrivacyExtensions(Ljava/lang/String;Z)V
    .locals 5
    .param p1, "ifName"    # Ljava/lang/String;
    .param p2, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3921
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3922
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3924
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3925
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3926
    const/4 v2, 0x0

    if-eqz p2, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3927
    iget-object v3, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x53

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3928
    .local v2, "_status":Z
    if-nez v2, :cond_2

    .line 3929
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 3930
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/net/INetd;->interfaceSetIPv6PrivacyExtensions(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3940
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3941
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3931
    return-void

    .line 3934
    :cond_1
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method interfaceSetIPv6PrivacyExtensions is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .end local p1    # "ifName":Ljava/lang/String;
    .end local p2    # "enable":Z
    throw v3

    .line 3937
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .restart local p1    # "ifName":Ljava/lang/String;
    .restart local p2    # "enable":Z
    :cond_2
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3940
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3941
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3942
    nop

    .line 3943
    return-void

    .line 3940
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3941
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3942
    throw v2
.end method

.method public interfaceSetMtu(Ljava/lang/String;I)V
    .locals 5
    .param p1, "ifName"    # Ljava/lang/String;
    .param p2, "mtu"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3995
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3996
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3998
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3999
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4000
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4001
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x56

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4002
    .local v2, "_status":Z
    if-nez v2, :cond_1

    .line 4003
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 4004
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/net/INetd;->interfaceSetMtu(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4014
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4015
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4005
    return-void

    .line 4008
    :cond_0
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method interfaceSetMtu is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .end local p1    # "ifName":Ljava/lang/String;
    .end local p2    # "mtu":I
    throw v3

    .line 4011
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .restart local p1    # "ifName":Ljava/lang/String;
    .restart local p2    # "mtu":I
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4014
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4015
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4016
    nop

    .line 4017
    return-void

    .line 4014
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4015
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4016
    throw v2
.end method

.method public ipSecAddSecurityAssociation(IILjava/lang/String;Ljava/lang/String;IIIILjava/lang/String;[BILjava/lang/String;[BILjava/lang/String;[BIIIII)V
    .locals 25
    .param p1, "transformId"    # I
    .param p2, "mode"    # I
    .param p3, "sourceAddress"    # Ljava/lang/String;
    .param p4, "destinationAddress"    # Ljava/lang/String;
    .param p5, "underlyingNetId"    # I
    .param p6, "spi"    # I
    .param p7, "markValue"    # I
    .param p8, "markMask"    # I
    .param p9, "authAlgo"    # Ljava/lang/String;
    .param p10, "authKey"    # [B
    .param p11, "authTruncBits"    # I
    .param p12, "cryptAlgo"    # Ljava/lang/String;
    .param p13, "cryptKey"    # [B
    .param p14, "cryptTruncBits"    # I
    .param p15, "aeadAlgo"    # Ljava/lang/String;
    .param p16, "aeadKey"    # [B
    .param p17, "aeadIcvBits"    # I
    .param p18, "encapType"    # I
    .param p19, "encapLocalPort"    # I
    .param p20, "encapRemotePort"    # I
    .param p21, "interfaceId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2298
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2299
    .local v1, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 2301
    .local v2, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v0, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2302
    move/from16 v15, p1

    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 2303
    move/from16 v14, p2

    invoke-virtual {v1, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 2304
    move-object/from16 v13, p3

    invoke-virtual {v1, v13}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2305
    move-object/from16 v12, p4

    invoke-virtual {v1, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2306
    move/from16 v11, p5

    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 2307
    move/from16 v10, p6

    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 2308
    move/from16 v9, p7

    invoke-virtual {v1, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 2309
    move/from16 v8, p8

    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 2310
    move-object/from16 v7, p9

    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2311
    move-object/from16 v6, p10

    invoke-virtual {v1, v6}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 2312
    move/from16 v5, p11

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 2313
    move-object/from16 v4, p12

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2314
    move-object/from16 v3, p13

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 2315
    move/from16 v15, p14

    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 2316
    move-object/from16 v15, p15

    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2317
    move-object/from16 v15, p16

    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 2318
    move/from16 v15, p17

    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 2319
    move/from16 v15, p18

    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 2320
    move/from16 v15, p19

    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 2321
    move/from16 v15, p20

    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 2322
    move/from16 v15, p21

    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 2323
    move-object/from16 v15, p0

    iget-object v0, v15, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x15

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 2324
    .local v0, "_status":Z
    if-nez v0, :cond_1

    .line 2325
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2326
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    move/from16 v4, p1

    move/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    move/from16 v14, p11

    move-object/from16 v15, p12

    move-object/from16 v16, p13

    move/from16 v17, p14

    move-object/from16 v18, p15

    move-object/from16 v19, p16

    move/from16 v20, p17

    move/from16 v21, p18

    move/from16 v22, p19

    move/from16 v23, p20

    move/from16 v24, p21

    invoke-interface/range {v3 .. v24}, Landroid/net/INetd;->ipSecAddSecurityAssociation(IILjava/lang/String;Ljava/lang/String;IIIILjava/lang/String;[BILjava/lang/String;[BILjava/lang/String;[BIIIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2336
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2337
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2327
    return-void

    .line 2330
    :cond_0
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method ipSecAddSecurityAssociation is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v1    # "_data":Landroid/os/Parcel;
    .end local v2    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .end local p1    # "transformId":I
    .end local p2    # "mode":I
    .end local p3    # "sourceAddress":Ljava/lang/String;
    .end local p4    # "destinationAddress":Ljava/lang/String;
    .end local p5    # "underlyingNetId":I
    .end local p6    # "spi":I
    .end local p7    # "markValue":I
    .end local p8    # "markMask":I
    .end local p9    # "authAlgo":Ljava/lang/String;
    .end local p10    # "authKey":[B
    .end local p11    # "authTruncBits":I
    .end local p12    # "cryptAlgo":Ljava/lang/String;
    .end local p13    # "cryptKey":[B
    .end local p14    # "cryptTruncBits":I
    .end local p15    # "aeadAlgo":Ljava/lang/String;
    .end local p16    # "aeadKey":[B
    .end local p17    # "aeadIcvBits":I
    .end local p18    # "encapType":I
    .end local p19    # "encapLocalPort":I
    .end local p20    # "encapRemotePort":I
    .end local p21    # "interfaceId":I
    throw v3

    .line 2333
    .restart local v1    # "_data":Landroid/os/Parcel;
    .restart local v2    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .restart local p1    # "transformId":I
    .restart local p2    # "mode":I
    .restart local p3    # "sourceAddress":Ljava/lang/String;
    .restart local p4    # "destinationAddress":Ljava/lang/String;
    .restart local p5    # "underlyingNetId":I
    .restart local p6    # "spi":I
    .restart local p7    # "markValue":I
    .restart local p8    # "markMask":I
    .restart local p9    # "authAlgo":Ljava/lang/String;
    .restart local p10    # "authKey":[B
    .restart local p11    # "authTruncBits":I
    .restart local p12    # "cryptAlgo":Ljava/lang/String;
    .restart local p13    # "cryptKey":[B
    .restart local p14    # "cryptTruncBits":I
    .restart local p15    # "aeadAlgo":Ljava/lang/String;
    .restart local p16    # "aeadKey":[B
    .restart local p17    # "aeadIcvBits":I
    .restart local p18    # "encapType":I
    .restart local p19    # "encapLocalPort":I
    .restart local p20    # "encapRemotePort":I
    .restart local p21    # "interfaceId":I
    :cond_1
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2336
    .end local v0    # "_status":Z
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2337
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2338
    nop

    .line 2339
    return-void

    .line 2336
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2337
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2338
    throw v0
.end method

.method public ipSecAddSecurityPolicy(IIILjava/lang/String;Ljava/lang/String;IIII)V
    .locals 16
    .param p1, "transformId"    # I
    .param p2, "selAddrFamily"    # I
    .param p3, "direction"    # I
    .param p4, "tmplSrcAddress"    # Ljava/lang/String;
    .param p5, "tmplDstAddress"    # Ljava/lang/String;
    .param p6, "spi"    # I
    .param p7, "markValue"    # I
    .param p8, "markMask"    # I
    .param p9, "interfaceId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2437
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2438
    .local v1, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 2440
    .local v2, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v0, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 2441
    move/from16 v13, p1

    :try_start_1
    invoke-virtual {v1, v13}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 2442
    move/from16 v14, p2

    :try_start_2
    invoke-virtual {v1, v14}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2443
    move/from16 v15, p3

    :try_start_3
    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 2444
    move-object/from16 v12, p4

    invoke-virtual {v1, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2445
    move-object/from16 v11, p5

    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2446
    move/from16 v10, p6

    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 2447
    move/from16 v9, p7

    invoke-virtual {v1, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 2448
    move/from16 v8, p8

    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 2449
    move/from16 v7, p9

    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 2450
    move-object/from16 v6, p0

    iget-object v0, v6, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x19

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 2451
    .local v0, "_status":Z
    if-nez v0, :cond_1

    .line 2452
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2453
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    move/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    invoke-interface/range {v3 .. v12}, Landroid/net/INetd;->ipSecAddSecurityPolicy(IIILjava/lang/String;Ljava/lang/String;IIII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2463
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2464
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2454
    return-void

    .line 2457
    :cond_0
    :try_start_4
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method ipSecAddSecurityPolicy is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v1    # "_data":Landroid/os/Parcel;
    .end local v2    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .end local p1    # "transformId":I
    .end local p2    # "selAddrFamily":I
    .end local p3    # "direction":I
    .end local p4    # "tmplSrcAddress":Ljava/lang/String;
    .end local p5    # "tmplDstAddress":Ljava/lang/String;
    .end local p6    # "spi":I
    .end local p7    # "markValue":I
    .end local p8    # "markMask":I
    .end local p9    # "interfaceId":I
    throw v3

    .line 2460
    .restart local v1    # "_data":Landroid/os/Parcel;
    .restart local v2    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .restart local p1    # "transformId":I
    .restart local p2    # "selAddrFamily":I
    .restart local p3    # "direction":I
    .restart local p4    # "tmplSrcAddress":Ljava/lang/String;
    .restart local p5    # "tmplDstAddress":Ljava/lang/String;
    .restart local p6    # "spi":I
    .restart local p7    # "markValue":I
    .restart local p8    # "markMask":I
    .restart local p9    # "interfaceId":I
    :cond_1
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2463
    .end local v0    # "_status":Z
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2464
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2465
    nop

    .line 2466
    return-void

    .line 2463
    :catchall_0
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_1

    :catchall_2
    move-exception v0

    goto :goto_0

    :catchall_3
    move-exception v0

    move/from16 v13, p1

    :goto_0
    move/from16 v14, p2

    :goto_1
    move/from16 v15, p3

    :goto_2
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2464
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2465
    throw v0
.end method

.method public ipSecAddTunnelInterface(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V
    .locals 16
    .param p1, "deviceName"    # Ljava/lang/String;
    .param p2, "localAddress"    # Ljava/lang/String;
    .param p3, "remoteAddress"    # Ljava/lang/String;
    .param p4, "iKey"    # I
    .param p5, "oKey"    # I
    .param p6, "interfaceId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2530
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2531
    .local v1, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 2533
    .local v2, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v0, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    .line 2534
    move-object/from16 v10, p1

    :try_start_1
    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    .line 2535
    move-object/from16 v11, p2

    :try_start_2
    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 2536
    move-object/from16 v12, p3

    :try_start_3
    invoke-virtual {v1, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 2537
    move/from16 v13, p4

    :try_start_4
    invoke-virtual {v1, v13}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 2538
    move/from16 v14, p5

    :try_start_5
    invoke-virtual {v1, v14}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 2539
    move/from16 v15, p6

    :try_start_6
    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 2540
    move-object/from16 v9, p0

    iget-object v0, v9, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1c

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 2541
    .local v0, "_status":Z
    if-nez v0, :cond_1

    .line 2542
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2543
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    invoke-interface/range {v3 .. v9}, Landroid/net/INetd;->ipSecAddTunnelInterface(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 2553
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2554
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2544
    return-void

    .line 2547
    :cond_0
    :try_start_7
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method ipSecAddTunnelInterface is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v1    # "_data":Landroid/os/Parcel;
    .end local v2    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .end local p1    # "deviceName":Ljava/lang/String;
    .end local p2    # "localAddress":Ljava/lang/String;
    .end local p3    # "remoteAddress":Ljava/lang/String;
    .end local p4    # "iKey":I
    .end local p5    # "oKey":I
    .end local p6    # "interfaceId":I
    throw v3

    .line 2550
    .restart local v1    # "_data":Landroid/os/Parcel;
    .restart local v2    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .restart local p1    # "deviceName":Ljava/lang/String;
    .restart local p2    # "localAddress":Ljava/lang/String;
    .restart local p3    # "remoteAddress":Ljava/lang/String;
    .restart local p4    # "iKey":I
    .restart local p5    # "oKey":I
    .restart local p6    # "interfaceId":I
    :cond_1
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 2553
    .end local v0    # "_status":Z
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2554
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2555
    nop

    .line 2556
    return-void

    .line 2553
    :catchall_0
    move-exception v0

    goto :goto_5

    :catchall_1
    move-exception v0

    goto :goto_4

    :catchall_2
    move-exception v0

    goto :goto_3

    :catchall_3
    move-exception v0

    goto :goto_2

    :catchall_4
    move-exception v0

    goto :goto_1

    :catchall_5
    move-exception v0

    goto :goto_0

    :catchall_6
    move-exception v0

    move-object/from16 v10, p1

    :goto_0
    move-object/from16 v11, p2

    :goto_1
    move-object/from16 v12, p3

    :goto_2
    move/from16 v13, p4

    :goto_3
    move/from16 v14, p5

    :goto_4
    move/from16 v15, p6

    :goto_5
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2554
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2555
    throw v0
.end method

.method public ipSecAllocateSpi(ILjava/lang/String;Ljava/lang/String;I)I
    .locals 5
    .param p1, "transformId"    # I
    .param p2, "sourceAddress"    # Ljava/lang/String;
    .param p3, "destinationAddress"    # Ljava/lang/String;
    .param p4, "spi"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2269
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2270
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2273
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2274
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2275
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2276
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2277
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2278
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x14

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2279
    .local v2, "_status":Z
    if-nez v2, :cond_1

    .line 2280
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2281
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3, p4}, Landroid/net/INetd;->ipSecAllocateSpi(ILjava/lang/String;Ljava/lang/String;I)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2291
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2292
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2281
    return v3

    .line 2284
    :cond_0
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method ipSecAllocateSpi is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .end local p1    # "transformId":I
    .end local p2    # "sourceAddress":Ljava/lang/String;
    .end local p3    # "destinationAddress":Ljava/lang/String;
    .end local p4    # "spi":I
    throw v3

    .line 2287
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .restart local p1    # "transformId":I
    .restart local p2    # "sourceAddress":Ljava/lang/String;
    .restart local p3    # "destinationAddress":Ljava/lang/String;
    .restart local p4    # "spi":I
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2288
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v3

    .line 2291
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2292
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2293
    nop

    .line 2294
    return v2

    .line 2291
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2292
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2293
    throw v2
.end method

.method public ipSecApplyTransportModeTransform(Landroid/os/ParcelFileDescriptor;IILjava/lang/String;Ljava/lang/String;I)V
    .locals 16
    .param p1, "socket"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "transformId"    # I
    .param p3, "direction"    # I
    .param p4, "sourceAddress"    # Ljava/lang/String;
    .param p5, "destinationAddress"    # Ljava/lang/String;
    .param p6, "spi"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2372
    move-object/from16 v8, p1

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v9

    .line 2373
    .local v9, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v10

    .line 2375
    .local v10, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v0, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2376
    const/4 v0, 0x0

    if-eqz v8, :cond_0

    .line 2377
    const/4 v1, 0x1

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2378
    invoke-virtual {v8, v9, v0}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 2381
    :cond_0
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 2383
    :goto_0
    move/from16 v11, p2

    :try_start_1
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 2384
    move/from16 v12, p3

    :try_start_2
    invoke-virtual {v9, v12}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 2385
    move-object/from16 v13, p4

    :try_start_3
    invoke-virtual {v9, v13}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 2386
    move-object/from16 v14, p5

    :try_start_4
    invoke-virtual {v9, v14}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2387
    move/from16 v15, p6

    :try_start_5
    invoke-virtual {v9, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 2388
    move-object/from16 v7, p0

    iget-object v1, v7, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x17

    invoke-interface {v1, v2, v9, v10, v0}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 2389
    .local v0, "_status":Z
    if-nez v0, :cond_2

    .line 2390
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2391
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v1

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    invoke-interface/range {v1 .. v7}, Landroid/net/INetd;->ipSecApplyTransportModeTransform(Landroid/os/ParcelFileDescriptor;IILjava/lang/String;Ljava/lang/String;I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2401
    invoke-virtual {v10}, Landroid/os/Parcel;->recycle()V

    .line 2402
    invoke-virtual {v9}, Landroid/os/Parcel;->recycle()V

    .line 2392
    return-void

    .line 2395
    :cond_1
    :try_start_6
    new-instance v1, Landroid/os/RemoteException;

    const-string v2, "Method ipSecApplyTransportModeTransform is unimplemented."

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v9    # "_data":Landroid/os/Parcel;
    .end local v10    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .end local p1    # "socket":Landroid/os/ParcelFileDescriptor;
    .end local p2    # "transformId":I
    .end local p3    # "direction":I
    .end local p4    # "sourceAddress":Ljava/lang/String;
    .end local p5    # "destinationAddress":Ljava/lang/String;
    .end local p6    # "spi":I
    throw v1

    .line 2398
    .restart local v9    # "_data":Landroid/os/Parcel;
    .restart local v10    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .restart local p1    # "socket":Landroid/os/ParcelFileDescriptor;
    .restart local p2    # "transformId":I
    .restart local p3    # "direction":I
    .restart local p4    # "sourceAddress":Ljava/lang/String;
    .restart local p5    # "destinationAddress":Ljava/lang/String;
    .restart local p6    # "spi":I
    :cond_2
    invoke-virtual {v10}, Landroid/os/Parcel;->readException()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 2401
    .end local v0    # "_status":Z
    invoke-virtual {v10}, Landroid/os/Parcel;->recycle()V

    .line 2402
    invoke-virtual {v9}, Landroid/os/Parcel;->recycle()V

    .line 2403
    nop

    .line 2404
    return-void

    .line 2401
    :catchall_0
    move-exception v0

    goto :goto_5

    :catchall_1
    move-exception v0

    goto :goto_4

    :catchall_2
    move-exception v0

    goto :goto_3

    :catchall_3
    move-exception v0

    goto :goto_2

    :catchall_4
    move-exception v0

    goto :goto_1

    :catchall_5
    move-exception v0

    move/from16 v11, p2

    :goto_1
    move/from16 v12, p3

    :goto_2
    move-object/from16 v13, p4

    :goto_3
    move-object/from16 v14, p5

    :goto_4
    move/from16 v15, p6

    :goto_5
    invoke-virtual {v10}, Landroid/os/Parcel;->recycle()V

    .line 2402
    invoke-virtual {v9}, Landroid/os/Parcel;->recycle()V

    .line 2403
    throw v0
.end method

.method public ipSecDeleteSecurityAssociation(ILjava/lang/String;Ljava/lang/String;IIII)V
    .locals 16
    .param p1, "transformId"    # I
    .param p2, "sourceAddress"    # Ljava/lang/String;
    .param p3, "destinationAddress"    # Ljava/lang/String;
    .param p4, "spi"    # I
    .param p5, "markValue"    # I
    .param p6, "markMask"    # I
    .param p7, "interfaceId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2342
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2343
    .local v1, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 2345
    .local v2, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v0, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 2346
    move/from16 v11, p1

    :try_start_1
    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 2347
    move-object/from16 v12, p2

    :try_start_2
    invoke-virtual {v1, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 2348
    move-object/from16 v13, p3

    :try_start_3
    invoke-virtual {v1, v13}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 2349
    move/from16 v14, p4

    :try_start_4
    invoke-virtual {v1, v14}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2350
    move/from16 v15, p5

    :try_start_5
    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 2351
    move/from16 v10, p6

    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 2352
    move/from16 v9, p7

    invoke-virtual {v1, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 2353
    move-object/from16 v8, p0

    iget-object v0, v8, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x16

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 2354
    .local v0, "_status":Z
    if-nez v0, :cond_1

    .line 2355
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2356
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    move/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    invoke-interface/range {v3 .. v10}, Landroid/net/INetd;->ipSecDeleteSecurityAssociation(ILjava/lang/String;Ljava/lang/String;IIII)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2366
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2367
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2357
    return-void

    .line 2360
    :cond_0
    :try_start_6
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method ipSecDeleteSecurityAssociation is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v1    # "_data":Landroid/os/Parcel;
    .end local v2    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .end local p1    # "transformId":I
    .end local p2    # "sourceAddress":Ljava/lang/String;
    .end local p3    # "destinationAddress":Ljava/lang/String;
    .end local p4    # "spi":I
    .end local p5    # "markValue":I
    .end local p6    # "markMask":I
    .end local p7    # "interfaceId":I
    throw v3

    .line 2363
    .restart local v1    # "_data":Landroid/os/Parcel;
    .restart local v2    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .restart local p1    # "transformId":I
    .restart local p2    # "sourceAddress":Ljava/lang/String;
    .restart local p3    # "destinationAddress":Ljava/lang/String;
    .restart local p4    # "spi":I
    .restart local p5    # "markValue":I
    .restart local p6    # "markMask":I
    .restart local p7    # "interfaceId":I
    :cond_1
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 2366
    .end local v0    # "_status":Z
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2367
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2368
    nop

    .line 2369
    return-void

    .line 2366
    :catchall_0
    move-exception v0

    goto :goto_4

    :catchall_1
    move-exception v0

    goto :goto_3

    :catchall_2
    move-exception v0

    goto :goto_2

    :catchall_3
    move-exception v0

    goto :goto_1

    :catchall_4
    move-exception v0

    goto :goto_0

    :catchall_5
    move-exception v0

    move/from16 v11, p1

    :goto_0
    move-object/from16 v12, p2

    :goto_1
    move-object/from16 v13, p3

    :goto_2
    move/from16 v14, p4

    :goto_3
    move/from16 v15, p5

    :goto_4
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2367
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2368
    throw v0
.end method

.method public ipSecDeleteSecurityPolicy(IIIIII)V
    .locals 16
    .param p1, "transformId"    # I
    .param p2, "selAddrFamily"    # I
    .param p3, "direction"    # I
    .param p4, "markValue"    # I
    .param p5, "markMask"    # I
    .param p6, "interfaceId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2501
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2502
    .local v1, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 2504
    .local v2, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v0, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    .line 2505
    move/from16 v10, p1

    :try_start_1
    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    .line 2506
    move/from16 v11, p2

    :try_start_2
    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 2507
    move/from16 v12, p3

    :try_start_3
    invoke-virtual {v1, v12}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 2508
    move/from16 v13, p4

    :try_start_4
    invoke-virtual {v1, v13}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 2509
    move/from16 v14, p5

    :try_start_5
    invoke-virtual {v1, v14}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 2510
    move/from16 v15, p6

    :try_start_6
    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 2511
    move-object/from16 v9, p0

    iget-object v0, v9, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1b

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 2512
    .local v0, "_status":Z
    if-nez v0, :cond_1

    .line 2513
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2514
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    move/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    invoke-interface/range {v3 .. v9}, Landroid/net/INetd;->ipSecDeleteSecurityPolicy(IIIIII)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 2524
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2525
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2515
    return-void

    .line 2518
    :cond_0
    :try_start_7
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method ipSecDeleteSecurityPolicy is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v1    # "_data":Landroid/os/Parcel;
    .end local v2    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .end local p1    # "transformId":I
    .end local p2    # "selAddrFamily":I
    .end local p3    # "direction":I
    .end local p4    # "markValue":I
    .end local p5    # "markMask":I
    .end local p6    # "interfaceId":I
    throw v3

    .line 2521
    .restart local v1    # "_data":Landroid/os/Parcel;
    .restart local v2    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .restart local p1    # "transformId":I
    .restart local p2    # "selAddrFamily":I
    .restart local p3    # "direction":I
    .restart local p4    # "markValue":I
    .restart local p5    # "markMask":I
    .restart local p6    # "interfaceId":I
    :cond_1
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 2524
    .end local v0    # "_status":Z
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2525
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2526
    nop

    .line 2527
    return-void

    .line 2524
    :catchall_0
    move-exception v0

    goto :goto_5

    :catchall_1
    move-exception v0

    goto :goto_4

    :catchall_2
    move-exception v0

    goto :goto_3

    :catchall_3
    move-exception v0

    goto :goto_2

    :catchall_4
    move-exception v0

    goto :goto_1

    :catchall_5
    move-exception v0

    goto :goto_0

    :catchall_6
    move-exception v0

    move/from16 v10, p1

    :goto_0
    move/from16 v11, p2

    :goto_1
    move/from16 v12, p3

    :goto_2
    move/from16 v13, p4

    :goto_3
    move/from16 v14, p5

    :goto_4
    move/from16 v15, p6

    :goto_5
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2525
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2526
    throw v0
.end method

.method public ipSecRemoveTransportModeTransform(Landroid/os/ParcelFileDescriptor;)V
    .locals 5
    .param p1, "socket"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2407
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2408
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2410
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2411
    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 2412
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2413
    invoke-virtual {p1, v0, v2}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 2416
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2418
    :goto_0
    iget-object v3, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x18

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2419
    .local v2, "_status":Z
    if-nez v2, :cond_2

    .line 2420
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 2421
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/net/INetd;->ipSecRemoveTransportModeTransform(Landroid/os/ParcelFileDescriptor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2431
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2432
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2422
    return-void

    .line 2425
    :cond_1
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method ipSecRemoveTransportModeTransform is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .end local p1    # "socket":Landroid/os/ParcelFileDescriptor;
    throw v3

    .line 2428
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .restart local p1    # "socket":Landroid/os/ParcelFileDescriptor;
    :cond_2
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2431
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2432
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2433
    nop

    .line 2434
    return-void

    .line 2431
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2432
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2433
    throw v2
.end method

.method public ipSecRemoveTunnelInterface(Ljava/lang/String;)V
    .locals 5
    .param p1, "deviceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2588
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2589
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2591
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2592
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2593
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2594
    .local v2, "_status":Z
    if-nez v2, :cond_1

    .line 2595
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2596
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/net/INetd;->ipSecRemoveTunnelInterface(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2606
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2607
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2597
    return-void

    .line 2600
    :cond_0
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method ipSecRemoveTunnelInterface is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .end local p1    # "deviceName":Ljava/lang/String;
    throw v3

    .line 2603
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .restart local p1    # "deviceName":Ljava/lang/String;
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2606
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2607
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2608
    nop

    .line 2609
    return-void

    .line 2606
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2607
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2608
    throw v2
.end method

.method public ipSecSetEncapSocketOwner(Landroid/os/ParcelFileDescriptor;I)V
    .locals 5
    .param p1, "socket"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "newUid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2238
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2239
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2241
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2242
    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 2243
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2244
    invoke-virtual {p1, v0, v2}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 2247
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2249
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2250
    iget-object v3, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x13

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2251
    .local v2, "_status":Z
    if-nez v2, :cond_2

    .line 2252
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 2253
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/net/INetd;->ipSecSetEncapSocketOwner(Landroid/os/ParcelFileDescriptor;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2263
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2264
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2254
    return-void

    .line 2257
    :cond_1
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method ipSecSetEncapSocketOwner is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .end local p1    # "socket":Landroid/os/ParcelFileDescriptor;
    .end local p2    # "newUid":I
    throw v3

    .line 2260
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .restart local p1    # "socket":Landroid/os/ParcelFileDescriptor;
    .restart local p2    # "newUid":I
    :cond_2
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2263
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2264
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2265
    nop

    .line 2266
    return-void

    .line 2263
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2264
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2265
    throw v2
.end method

.method public ipSecUpdateSecurityPolicy(IIILjava/lang/String;Ljava/lang/String;IIII)V
    .locals 16
    .param p1, "transformId"    # I
    .param p2, "selAddrFamily"    # I
    .param p3, "direction"    # I
    .param p4, "tmplSrcAddress"    # Ljava/lang/String;
    .param p5, "tmplDstAddress"    # Ljava/lang/String;
    .param p6, "spi"    # I
    .param p7, "markValue"    # I
    .param p8, "markMask"    # I
    .param p9, "interfaceId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2469
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2470
    .local v1, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 2472
    .local v2, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v0, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 2473
    move/from16 v13, p1

    :try_start_1
    invoke-virtual {v1, v13}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 2474
    move/from16 v14, p2

    :try_start_2
    invoke-virtual {v1, v14}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2475
    move/from16 v15, p3

    :try_start_3
    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 2476
    move-object/from16 v12, p4

    invoke-virtual {v1, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2477
    move-object/from16 v11, p5

    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2478
    move/from16 v10, p6

    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 2479
    move/from16 v9, p7

    invoke-virtual {v1, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 2480
    move/from16 v8, p8

    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 2481
    move/from16 v7, p9

    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 2482
    move-object/from16 v6, p0

    iget-object v0, v6, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1a

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 2483
    .local v0, "_status":Z
    if-nez v0, :cond_1

    .line 2484
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2485
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    move/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    invoke-interface/range {v3 .. v12}, Landroid/net/INetd;->ipSecUpdateSecurityPolicy(IIILjava/lang/String;Ljava/lang/String;IIII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2495
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2496
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2486
    return-void

    .line 2489
    :cond_0
    :try_start_4
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method ipSecUpdateSecurityPolicy is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v1    # "_data":Landroid/os/Parcel;
    .end local v2    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .end local p1    # "transformId":I
    .end local p2    # "selAddrFamily":I
    .end local p3    # "direction":I
    .end local p4    # "tmplSrcAddress":Ljava/lang/String;
    .end local p5    # "tmplDstAddress":Ljava/lang/String;
    .end local p6    # "spi":I
    .end local p7    # "markValue":I
    .end local p8    # "markMask":I
    .end local p9    # "interfaceId":I
    throw v3

    .line 2492
    .restart local v1    # "_data":Landroid/os/Parcel;
    .restart local v2    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .restart local p1    # "transformId":I
    .restart local p2    # "selAddrFamily":I
    .restart local p3    # "direction":I
    .restart local p4    # "tmplSrcAddress":Ljava/lang/String;
    .restart local p5    # "tmplDstAddress":Ljava/lang/String;
    .restart local p6    # "spi":I
    .restart local p7    # "markValue":I
    .restart local p8    # "markMask":I
    .restart local p9    # "interfaceId":I
    :cond_1
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2495
    .end local v0    # "_status":Z
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2496
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2497
    nop

    .line 2498
    return-void

    .line 2495
    :catchall_0
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_1

    :catchall_2
    move-exception v0

    goto :goto_0

    :catchall_3
    move-exception v0

    move/from16 v13, p1

    :goto_0
    move/from16 v14, p2

    :goto_1
    move/from16 v15, p3

    :goto_2
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2496
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2497
    throw v0
.end method

.method public ipSecUpdateTunnelInterface(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V
    .locals 16
    .param p1, "deviceName"    # Ljava/lang/String;
    .param p2, "localAddress"    # Ljava/lang/String;
    .param p3, "remoteAddress"    # Ljava/lang/String;
    .param p4, "iKey"    # I
    .param p5, "oKey"    # I
    .param p6, "interfaceId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2559
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2560
    .local v1, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 2562
    .local v2, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v0, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    .line 2563
    move-object/from16 v10, p1

    :try_start_1
    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    .line 2564
    move-object/from16 v11, p2

    :try_start_2
    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 2565
    move-object/from16 v12, p3

    :try_start_3
    invoke-virtual {v1, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 2566
    move/from16 v13, p4

    :try_start_4
    invoke-virtual {v1, v13}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 2567
    move/from16 v14, p5

    :try_start_5
    invoke-virtual {v1, v14}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 2568
    move/from16 v15, p6

    :try_start_6
    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 2569
    move-object/from16 v9, p0

    iget-object v0, v9, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1d

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 2570
    .local v0, "_status":Z
    if-nez v0, :cond_1

    .line 2571
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2572
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    invoke-interface/range {v3 .. v9}, Landroid/net/INetd;->ipSecUpdateTunnelInterface(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 2582
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2583
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2573
    return-void

    .line 2576
    :cond_0
    :try_start_7
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method ipSecUpdateTunnelInterface is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v1    # "_data":Landroid/os/Parcel;
    .end local v2    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .end local p1    # "deviceName":Ljava/lang/String;
    .end local p2    # "localAddress":Ljava/lang/String;
    .end local p3    # "remoteAddress":Ljava/lang/String;
    .end local p4    # "iKey":I
    .end local p5    # "oKey":I
    .end local p6    # "interfaceId":I
    throw v3

    .line 2579
    .restart local v1    # "_data":Landroid/os/Parcel;
    .restart local v2    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .restart local p1    # "deviceName":Ljava/lang/String;
    .restart local p2    # "localAddress":Ljava/lang/String;
    .restart local p3    # "remoteAddress":Ljava/lang/String;
    .restart local p4    # "iKey":I
    .restart local p5    # "oKey":I
    .restart local p6    # "interfaceId":I
    :cond_1
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 2582
    .end local v0    # "_status":Z
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2583
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2584
    nop

    .line 2585
    return-void

    .line 2582
    :catchall_0
    move-exception v0

    goto :goto_5

    :catchall_1
    move-exception v0

    goto :goto_4

    :catchall_2
    move-exception v0

    goto :goto_3

    :catchall_3
    move-exception v0

    goto :goto_2

    :catchall_4
    move-exception v0

    goto :goto_1

    :catchall_5
    move-exception v0

    goto :goto_0

    :catchall_6
    move-exception v0

    move-object/from16 v10, p1

    :goto_0
    move-object/from16 v11, p2

    :goto_1
    move-object/from16 v12, p3

    :goto_2
    move/from16 v13, p4

    :goto_3
    move/from16 v14, p5

    :goto_4
    move/from16 v15, p6

    :goto_5
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2583
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2584
    throw v0
.end method

.method public ipfwdAddInterfaceForward(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "fromIface"    # Ljava/lang/String;
    .param p2, "toIface"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2917
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2918
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2920
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2921
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2922
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2923
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2924
    .local v2, "_status":Z
    if-nez v2, :cond_1

    .line 2925
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2926
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/net/INetd;->ipfwdAddInterfaceForward(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2936
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2937
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2927
    return-void

    .line 2930
    :cond_0
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method ipfwdAddInterfaceForward is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .end local p1    # "fromIface":Ljava/lang/String;
    .end local p2    # "toIface":Ljava/lang/String;
    throw v3

    .line 2933
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .restart local p1    # "fromIface":Ljava/lang/String;
    .restart local p2    # "toIface":Ljava/lang/String;
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2936
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2937
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2938
    nop

    .line 2939
    return-void

    .line 2936
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2937
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2938
    throw v2
.end method

.method public ipfwdDisableForwarding(Ljava/lang/String;)V
    .locals 5
    .param p1, "requester"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2893
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2894
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2896
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2897
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2898
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2899
    .local v2, "_status":Z
    if-nez v2, :cond_1

    .line 2900
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2901
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/net/INetd;->ipfwdDisableForwarding(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2911
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2912
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2902
    return-void

    .line 2905
    :cond_0
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method ipfwdDisableForwarding is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .end local p1    # "requester":Ljava/lang/String;
    throw v3

    .line 2908
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .restart local p1    # "requester":Ljava/lang/String;
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2911
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2912
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2913
    nop

    .line 2914
    return-void

    .line 2911
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2912
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2913
    throw v2
.end method

.method public ipfwdEnableForwarding(Ljava/lang/String;)V
    .locals 5
    .param p1, "requester"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2869
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2870
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2872
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2873
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2874
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x29

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2875
    .local v2, "_status":Z
    if-nez v2, :cond_1

    .line 2876
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2877
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/net/INetd;->ipfwdEnableForwarding(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2887
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2888
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2878
    return-void

    .line 2881
    :cond_0
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method ipfwdEnableForwarding is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .end local p1    # "requester":Ljava/lang/String;
    throw v3

    .line 2884
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .restart local p1    # "requester":Ljava/lang/String;
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2887
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2888
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2889
    nop

    .line 2890
    return-void

    .line 2887
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2888
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2889
    throw v2
.end method

.method public ipfwdEnabled()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2819
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2820
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2823
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2824
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x27

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2825
    .local v2, "_status":Z
    if-nez v2, :cond_1

    .line 2826
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2827
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3}, Landroid/net/INetd;->ipfwdEnabled()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2837
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2838
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2827
    return v3

    .line 2830
    :cond_0
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method ipfwdEnabled is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    throw v3

    .line 2833
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2834
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_2

    const/4 v4, 0x1

    :cond_2
    move v2, v4

    .line 2837
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2838
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2839
    nop

    .line 2840
    return v2

    .line 2837
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2838
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2839
    throw v2
.end method

.method public ipfwdGetRequesterList()[Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2844
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2845
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2848
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2849
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x28

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2850
    .local v2, "_status":Z
    if-nez v2, :cond_1

    .line 2851
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2852
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3}, Landroid/net/INetd;->ipfwdGetRequesterList()[Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2862
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2863
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2852
    return-object v3

    .line 2855
    :cond_0
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method ipfwdGetRequesterList is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    throw v3

    .line 2858
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2859
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v3

    .line 2862
    .local v2, "_result":[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2863
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2864
    nop

    .line 2865
    return-object v2

    .line 2862
    .end local v2    # "_result":[Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2863
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2864
    throw v2
.end method

.method public ipfwdRemoveInterfaceForward(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "fromIface"    # Ljava/lang/String;
    .param p2, "toIface"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2942
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2943
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2945
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2946
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2947
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2948
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2949
    .local v2, "_status":Z
    if-nez v2, :cond_1

    .line 2950
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2951
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/net/INetd;->ipfwdRemoveInterfaceForward(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2961
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2962
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2952
    return-void

    .line 2955
    :cond_0
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method ipfwdRemoveInterfaceForward is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .end local p1    # "fromIface":Ljava/lang/String;
    .end local p2    # "toIface":Ljava/lang/String;
    throw v3

    .line 2958
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .restart local p1    # "fromIface":Ljava/lang/String;
    .restart local p2    # "toIface":Ljava/lang/String;
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2961
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2962
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2963
    nop

    .line 2964
    return-void

    .line 2961
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2962
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2963
    throw v2
.end method

.method public isAlive()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1770
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1771
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1774
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1775
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v2, v4, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1776
    .local v2, "_status":Z
    if-nez v2, :cond_1

    .line 1777
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1778
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3}, Landroid/net/INetd;->isAlive()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1788
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1789
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1778
    return v3

    .line 1781
    :cond_0
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method isAlive is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    throw v3

    .line 1784
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1785
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v5, :cond_2

    move v3, v4

    :cond_2
    move v2, v3

    .line 1788
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1789
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1790
    nop

    .line 1791
    return v2

    .line 1788
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1789
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1790
    throw v2
.end method

.method public networkAddInterface(ILjava/lang/String;)V
    .locals 5
    .param p1, "netId"    # I
    .param p2, "iface"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1929
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1930
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1932
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1933
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1934
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1935
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1936
    .local v2, "_status":Z
    if-nez v2, :cond_1

    .line 1937
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1938
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/net/INetd;->networkAddInterface(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1948
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1949
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1939
    return-void

    .line 1942
    :cond_0
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method networkAddInterface is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .end local p1    # "netId":I
    .end local p2    # "iface":Ljava/lang/String;
    throw v3

    .line 1945
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .restart local p1    # "netId":I
    .restart local p2    # "iface":Ljava/lang/String;
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1948
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1949
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1950
    nop

    .line 1951
    return-void

    .line 1948
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1949
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1950
    throw v2
.end method

.method public networkAddLegacyRoute(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 10
    .param p1, "netId"    # I
    .param p2, "ifName"    # Ljava/lang/String;
    .param p3, "destination"    # Ljava/lang/String;
    .param p4, "nextHop"    # Ljava/lang/String;
    .param p5, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3434
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3435
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3437
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3438
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3439
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3440
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3441
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3442
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 3443
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x40

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3444
    .local v2, "_status":Z
    if-nez v2, :cond_1

    .line 3445
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3446
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v4

    move v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    move v9, p5

    invoke-interface/range {v4 .. v9}, Landroid/net/INetd;->networkAddLegacyRoute(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3456
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3457
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3447
    return-void

    .line 3450
    :cond_0
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method networkAddLegacyRoute is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .end local p1    # "netId":I
    .end local p2    # "ifName":Ljava/lang/String;
    .end local p3    # "destination":Ljava/lang/String;
    .end local p4    # "nextHop":Ljava/lang/String;
    .end local p5    # "uid":I
    throw v3

    .line 3453
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .restart local p1    # "netId":I
    .restart local p2    # "ifName":Ljava/lang/String;
    .restart local p3    # "destination":Ljava/lang/String;
    .restart local p4    # "nextHop":Ljava/lang/String;
    .restart local p5    # "uid":I
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3456
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3457
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3458
    nop

    .line 3459
    return-void

    .line 3456
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3457
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3458
    throw v2
.end method

.method public networkAddRoute(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "netId"    # I
    .param p2, "ifName"    # Ljava/lang/String;
    .param p3, "destination"    # Ljava/lang/String;
    .param p4, "nextHop"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3380
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3381
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3383
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3384
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3385
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3386
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3387
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3388
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3389
    .local v2, "_status":Z
    if-nez v2, :cond_1

    .line 3390
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3391
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3, p4}, Landroid/net/INetd;->networkAddRoute(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3401
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3402
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3392
    return-void

    .line 3395
    :cond_0
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method networkAddRoute is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .end local p1    # "netId":I
    .end local p2    # "ifName":Ljava/lang/String;
    .end local p3    # "destination":Ljava/lang/String;
    .end local p4    # "nextHop":Ljava/lang/String;
    throw v3

    .line 3398
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .restart local p1    # "netId":I
    .restart local p2    # "ifName":Ljava/lang/String;
    .restart local p3    # "destination":Ljava/lang/String;
    .restart local p4    # "nextHop":Ljava/lang/String;
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3401
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3402
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3403
    nop

    .line 3404
    return-void

    .line 3401
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3402
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3403
    throw v2
.end method

.method public networkAddRouteParcel(ILandroid/net/RouteInfoParcel;)V
    .locals 5
    .param p1, "netId"    # I
    .param p2, "routeInfo"    # Landroid/net/RouteInfoParcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4277
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4278
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4280
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4281
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4282
    const/4 v2, 0x0

    if-eqz p2, :cond_0

    .line 4283
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4284
    invoke-virtual {p2, v0, v2}, Landroid/net/RouteInfoParcel;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 4287
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4289
    :goto_0
    iget-object v3, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x61

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4290
    .local v2, "_status":Z
    if-nez v2, :cond_2

    .line 4291
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 4292
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/net/INetd;->networkAddRouteParcel(ILandroid/net/RouteInfoParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4302
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4303
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4293
    return-void

    .line 4296
    :cond_1
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method networkAddRouteParcel is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .end local p1    # "netId":I
    .end local p2    # "routeInfo":Landroid/net/RouteInfoParcel;
    throw v3

    .line 4299
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .restart local p1    # "netId":I
    .restart local p2    # "routeInfo":Landroid/net/RouteInfoParcel;
    :cond_2
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4302
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4303
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4304
    nop

    .line 4305
    return-void

    .line 4302
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4303
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4304
    throw v2
.end method

.method public networkAddUidRanges(I[Landroid/net/UidRangeParcel;)V
    .locals 5
    .param p1, "netId"    # I
    .param p2, "uidRanges"    # [Landroid/net/UidRangeParcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1979
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1980
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1982
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1983
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1984
    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1985
    iget-object v3, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x9

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1986
    .local v2, "_status":Z
    if-nez v2, :cond_1

    .line 1987
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1988
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/net/INetd;->networkAddUidRanges(I[Landroid/net/UidRangeParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1998
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1999
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1989
    return-void

    .line 1992
    :cond_0
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method networkAddUidRanges is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .end local p1    # "netId":I
    .end local p2    # "uidRanges":[Landroid/net/UidRangeParcel;
    throw v3

    .line 1995
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .restart local p1    # "netId":I
    .restart local p2    # "uidRanges":[Landroid/net/UidRangeParcel;
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1998
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1999
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2000
    nop

    .line 2001
    return-void

    .line 1998
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1999
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2000
    throw v2
.end method

.method public networkAddUidRangesParcel(Landroid/net/netd/aidl/NativeUidRangeConfig;)V
    .locals 5
    .param p1, "uidRangesConfig"    # Landroid/net/netd/aidl/NativeUidRangeConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4541
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4542
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4544
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4545
    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 4546
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4547
    invoke-virtual {p1, v0, v2}, Landroid/net/netd/aidl/NativeUidRangeConfig;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 4550
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4552
    :goto_0
    iget-object v3, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x6a

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4553
    .local v2, "_status":Z
    if-nez v2, :cond_2

    .line 4554
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 4555
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/net/INetd;->networkAddUidRangesParcel(Landroid/net/netd/aidl/NativeUidRangeConfig;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4565
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4566
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4556
    return-void

    .line 4559
    :cond_1
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method networkAddUidRangesParcel is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .end local p1    # "uidRangesConfig":Landroid/net/netd/aidl/NativeUidRangeConfig;
    throw v3

    .line 4562
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .restart local p1    # "uidRangesConfig":Landroid/net/netd/aidl/NativeUidRangeConfig;
    :cond_2
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4565
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4566
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4567
    nop

    .line 4568
    return-void

    .line 4565
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4566
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4567
    throw v2
.end method

.method public networkCanProtect(I)Z
    .locals 5
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3709
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3710
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3713
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3714
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3715
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x4b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3716
    .local v2, "_status":Z
    if-nez v2, :cond_1

    .line 3717
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3718
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/net/INetd;->networkCanProtect(I)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3728
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3729
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3718
    return v3

    .line 3721
    :cond_0
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method networkCanProtect is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .end local p1    # "uid":I
    throw v3

    .line 3724
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .restart local p1    # "uid":I
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3725
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_2

    const/4 v4, 0x1

    :cond_2
    move v2, v4

    .line 3728
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3729
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3730
    nop

    .line 3731
    return v2

    .line 3728
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3729
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3730
    throw v2
.end method

.method public networkClearDefault()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3539
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3540
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3542
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3543
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x44

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3544
    .local v2, "_status":Z
    if-nez v2, :cond_1

    .line 3545
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3546
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3}, Landroid/net/INetd;->networkClearDefault()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3556
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3557
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3547
    return-void

    .line 3550
    :cond_0
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method networkClearDefault is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    throw v3

    .line 3553
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3556
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3557
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3558
    nop

    .line 3559
    return-void

    .line 3556
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3557
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3558
    throw v2
.end method

.method public networkClearPermissionForUser([I)V
    .locals 5
    .param p1, "uids"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3612
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3613
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3615
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3616
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 3617
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x47

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3618
    .local v2, "_status":Z
    if-nez v2, :cond_1

    .line 3619
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3620
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/net/INetd;->networkClearPermissionForUser([I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3630
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3631
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3621
    return-void

    .line 3624
    :cond_0
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method networkClearPermissionForUser is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .end local p1    # "uids":[I
    throw v3

    .line 3627
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .restart local p1    # "uids":[I
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3630
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3631
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3632
    nop

    .line 3633
    return-void

    .line 3630
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3631
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3632
    throw v2
.end method

.method public networkCreate(Landroid/net/NativeNetworkConfig;)V
    .locals 5
    .param p1, "config"    # Landroid/net/NativeNetworkConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4511
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4512
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4514
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4515
    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 4516
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4517
    invoke-virtual {p1, v0, v2}, Landroid/net/NativeNetworkConfig;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 4520
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4522
    :goto_0
    iget-object v3, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x69

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4523
    .local v2, "_status":Z
    if-nez v2, :cond_2

    .line 4524
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 4525
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/net/INetd;->networkCreate(Landroid/net/NativeNetworkConfig;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4535
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4536
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4526
    return-void

    .line 4529
    :cond_1
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method networkCreate is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .end local p1    # "config":Landroid/net/NativeNetworkConfig;
    throw v3

    .line 4532
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .restart local p1    # "config":Landroid/net/NativeNetworkConfig;
    :cond_2
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4535
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4536
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4537
    nop

    .line 4538
    return-void

    .line 4535
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4536
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4537
    throw v2
.end method

.method public networkCreatePhysical(II)V
    .locals 5
    .param p1, "netId"    # I
    .param p2, "permission"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1852
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1853
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1855
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1856
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1857
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1858
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1859
    .local v2, "_status":Z
    if-nez v2, :cond_1

    .line 1860
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1861
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/net/INetd;->networkCreatePhysical(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1871
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1872
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1862
    return-void

    .line 1865
    :cond_0
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method networkCreatePhysical is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .end local p1    # "netId":I
    .end local p2    # "permission":I
    throw v3

    .line 1868
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .restart local p1    # "netId":I
    .restart local p2    # "permission":I
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1871
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1872
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1873
    nop

    .line 1874
    return-void

    .line 1871
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1872
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1873
    throw v2
.end method

.method public networkCreateVpn(IZ)V
    .locals 5
    .param p1, "netId"    # I
    .param p2, "secure"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1880
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1881
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1883
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1884
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1885
    const/4 v2, 0x0

    if-eqz p2, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1886
    iget-object v3, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x5

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1887
    .local v2, "_status":Z
    if-nez v2, :cond_2

    .line 1888
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1889
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/net/INetd;->networkCreateVpn(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1899
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1900
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1890
    return-void

    .line 1893
    :cond_1
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method networkCreateVpn is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .end local p1    # "netId":I
    .end local p2    # "secure":Z
    throw v3

    .line 1896
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .restart local p1    # "netId":I
    .restart local p2    # "secure":Z
    :cond_2
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1899
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1900
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1901
    nop

    .line 1902
    return-void

    .line 1899
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1900
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1901
    throw v2
.end method

.method public networkDestroy(I)V
    .locals 5
    .param p1, "netId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1905
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1906
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1908
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1909
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1910
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1911
    .local v2, "_status":Z
    if-nez v2, :cond_1

    .line 1912
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1913
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/net/INetd;->networkDestroy(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1923
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1924
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1914
    return-void

    .line 1917
    :cond_0
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method networkDestroy is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .end local p1    # "netId":I
    throw v3

    .line 1920
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .restart local p1    # "netId":I
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1923
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1924
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1925
    nop

    .line 1926
    return-void

    .line 1923
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1924
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1925
    throw v2
.end method

.method public networkGetDefault()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3490
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3491
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3494
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3495
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x42

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3496
    .local v2, "_status":Z
    if-nez v2, :cond_1

    .line 3497
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3498
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3}, Landroid/net/INetd;->networkGetDefault()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3508
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3509
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3498
    return v3

    .line 3501
    :cond_0
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method networkGetDefault is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    throw v3

    .line 3504
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3505
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v3

    .line 3508
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3509
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3510
    nop

    .line 3511
    return v2

    .line 3508
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3509
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3510
    throw v2
.end method

.method public networkRejectNonSecureVpn(Z[Landroid/net/UidRangeParcel;)V
    .locals 5
    .param p1, "add"    # Z
    .param p2, "uidRanges"    # [Landroid/net/UidRangeParcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2029
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2030
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2032
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2033
    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2034
    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 2035
    iget-object v3, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xb

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2036
    .local v2, "_status":Z
    if-nez v2, :cond_2

    .line 2037
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 2038
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/net/INetd;->networkRejectNonSecureVpn(Z[Landroid/net/UidRangeParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2048
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2049
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2039
    return-void

    .line 2042
    :cond_1
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method networkRejectNonSecureVpn is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .end local p1    # "add":Z
    .end local p2    # "uidRanges":[Landroid/net/UidRangeParcel;
    throw v3

    .line 2045
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .restart local p1    # "add":Z
    .restart local p2    # "uidRanges":[Landroid/net/UidRangeParcel;
    :cond_2
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2048
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2049
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2050
    nop

    .line 2051
    return-void

    .line 2048
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2049
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2050
    throw v2
.end method

.method public networkRemoveInterface(ILjava/lang/String;)V
    .locals 5
    .param p1, "netId"    # I
    .param p2, "iface"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1954
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1955
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1957
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1958
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1959
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1960
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1961
    .local v2, "_status":Z
    if-nez v2, :cond_1

    .line 1962
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1963
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/net/INetd;->networkRemoveInterface(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1973
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1974
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1964
    return-void

    .line 1967
    :cond_0
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method networkRemoveInterface is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .end local p1    # "netId":I
    .end local p2    # "iface":Ljava/lang/String;
    throw v3

    .line 1970
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .restart local p1    # "netId":I
    .restart local p2    # "iface":Ljava/lang/String;
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1973
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1974
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1975
    nop

    .line 1976
    return-void

    .line 1973
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1974
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1975
    throw v2
.end method

.method public networkRemoveLegacyRoute(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 10
    .param p1, "netId"    # I
    .param p2, "ifName"    # Ljava/lang/String;
    .param p3, "destination"    # Ljava/lang/String;
    .param p4, "nextHop"    # Ljava/lang/String;
    .param p5, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3462
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3463
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3465
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3466
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3467
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3468
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3469
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3470
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 3471
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x41

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3472
    .local v2, "_status":Z
    if-nez v2, :cond_1

    .line 3473
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3474
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v4

    move v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    move v9, p5

    invoke-interface/range {v4 .. v9}, Landroid/net/INetd;->networkRemoveLegacyRoute(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3484
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3485
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3475
    return-void

    .line 3478
    :cond_0
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method networkRemoveLegacyRoute is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .end local p1    # "netId":I
    .end local p2    # "ifName":Ljava/lang/String;
    .end local p3    # "destination":Ljava/lang/String;
    .end local p4    # "nextHop":Ljava/lang/String;
    .end local p5    # "uid":I
    throw v3

    .line 3481
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .restart local p1    # "netId":I
    .restart local p2    # "ifName":Ljava/lang/String;
    .restart local p3    # "destination":Ljava/lang/String;
    .restart local p4    # "nextHop":Ljava/lang/String;
    .restart local p5    # "uid":I
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3484
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3485
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3486
    nop

    .line 3487
    return-void

    .line 3484
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3485
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3486
    throw v2
.end method

.method public networkRemoveRoute(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "netId"    # I
    .param p2, "ifName"    # Ljava/lang/String;
    .param p3, "destination"    # Ljava/lang/String;
    .param p4, "nextHop"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3407
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3408
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3410
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3411
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3412
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3413
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3414
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3415
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3416
    .local v2, "_status":Z
    if-nez v2, :cond_1

    .line 3417
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3418
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3, p4}, Landroid/net/INetd;->networkRemoveRoute(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3428
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3429
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3419
    return-void

    .line 3422
    :cond_0
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method networkRemoveRoute is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .end local p1    # "netId":I
    .end local p2    # "ifName":Ljava/lang/String;
    .end local p3    # "destination":Ljava/lang/String;
    .end local p4    # "nextHop":Ljava/lang/String;
    throw v3

    .line 3425
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .restart local p1    # "netId":I
    .restart local p2    # "ifName":Ljava/lang/String;
    .restart local p3    # "destination":Ljava/lang/String;
    .restart local p4    # "nextHop":Ljava/lang/String;
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3428
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3429
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3430
    nop

    .line 3431
    return-void

    .line 3428
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3429
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3430
    throw v2
.end method

.method public networkRemoveRouteParcel(ILandroid/net/RouteInfoParcel;)V
    .locals 5
    .param p1, "netId"    # I
    .param p2, "routeInfo"    # Landroid/net/RouteInfoParcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4339
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4340
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4342
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4343
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4344
    const/4 v2, 0x0

    if-eqz p2, :cond_0

    .line 4345
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4346
    invoke-virtual {p2, v0, v2}, Landroid/net/RouteInfoParcel;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 4349
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4351
    :goto_0
    iget-object v3, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x63

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4352
    .local v2, "_status":Z
    if-nez v2, :cond_2

    .line 4353
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 4354
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/net/INetd;->networkRemoveRouteParcel(ILandroid/net/RouteInfoParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4364
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4365
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4355
    return-void

    .line 4358
    :cond_1
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method networkRemoveRouteParcel is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .end local p1    # "netId":I
    .end local p2    # "routeInfo":Landroid/net/RouteInfoParcel;
    throw v3

    .line 4361
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .restart local p1    # "netId":I
    .restart local p2    # "routeInfo":Landroid/net/RouteInfoParcel;
    :cond_2
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4364
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4365
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4366
    nop

    .line 4367
    return-void

    .line 4364
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4365
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4366
    throw v2
.end method

.method public networkRemoveUidRanges(I[Landroid/net/UidRangeParcel;)V
    .locals 5
    .param p1, "netId"    # I
    .param p2, "uidRanges"    # [Landroid/net/UidRangeParcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2004
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2005
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2007
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2008
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2009
    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 2010
    iget-object v3, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xa

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2011
    .local v2, "_status":Z
    if-nez v2, :cond_1

    .line 2012
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2013
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/net/INetd;->networkRemoveUidRanges(I[Landroid/net/UidRangeParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2023
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2024
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2014
    return-void

    .line 2017
    :cond_0
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method networkRemoveUidRanges is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .end local p1    # "netId":I
    .end local p2    # "uidRanges":[Landroid/net/UidRangeParcel;
    throw v3

    .line 2020
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .restart local p1    # "netId":I
    .restart local p2    # "uidRanges":[Landroid/net/UidRangeParcel;
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2023
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2024
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2025
    nop

    .line 2026
    return-void

    .line 2023
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2024
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2025
    throw v2
.end method

.method public networkRemoveUidRangesParcel(Landroid/net/netd/aidl/NativeUidRangeConfig;)V
    .locals 5
    .param p1, "uidRangesConfig"    # Landroid/net/netd/aidl/NativeUidRangeConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4571
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4572
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4574
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4575
    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 4576
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4577
    invoke-virtual {p1, v0, v2}, Landroid/net/netd/aidl/NativeUidRangeConfig;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 4580
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4582
    :goto_0
    iget-object v3, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x6b

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4583
    .local v2, "_status":Z
    if-nez v2, :cond_2

    .line 4584
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 4585
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/net/INetd;->networkRemoveUidRangesParcel(Landroid/net/netd/aidl/NativeUidRangeConfig;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4595
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4596
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4586
    return-void

    .line 4589
    :cond_1
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method networkRemoveUidRangesParcel is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .end local p1    # "uidRangesConfig":Landroid/net/netd/aidl/NativeUidRangeConfig;
    throw v3

    .line 4592
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .restart local p1    # "uidRangesConfig":Landroid/net/netd/aidl/NativeUidRangeConfig;
    :cond_2
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4595
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4596
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4597
    nop

    .line 4598
    return-void

    .line 4595
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4596
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4597
    throw v2
.end method

.method public networkSetDefault(I)V
    .locals 5
    .param p1, "netId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3515
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3516
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3518
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3519
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3520
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x43

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3521
    .local v2, "_status":Z
    if-nez v2, :cond_1

    .line 3522
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3523
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/net/INetd;->networkSetDefault(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3533
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3534
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3524
    return-void

    .line 3527
    :cond_0
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method networkSetDefault is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .end local p1    # "netId":I
    throw v3

    .line 3530
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .restart local p1    # "netId":I
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3533
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3534
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3535
    nop

    .line 3536
    return-void

    .line 3533
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3534
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3535
    throw v2
.end method

.method public networkSetPermissionForNetwork(II)V
    .locals 5
    .param p1, "netId"    # I
    .param p2, "permission"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3562
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3563
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3565
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3566
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3567
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3568
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x45

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3569
    .local v2, "_status":Z
    if-nez v2, :cond_1

    .line 3570
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3571
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/net/INetd;->networkSetPermissionForNetwork(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3581
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3582
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3572
    return-void

    .line 3575
    :cond_0
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method networkSetPermissionForNetwork is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .end local p1    # "netId":I
    .end local p2    # "permission":I
    throw v3

    .line 3578
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .restart local p1    # "netId":I
    .restart local p2    # "permission":I
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3581
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3582
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3583
    nop

    .line 3584
    return-void

    .line 3581
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3582
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3583
    throw v2
.end method

.method public networkSetPermissionForUser(I[I)V
    .locals 5
    .param p1, "permission"    # I
    .param p2, "uids"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3587
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3588
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3590
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3591
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3592
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 3593
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x46

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3594
    .local v2, "_status":Z
    if-nez v2, :cond_1

    .line 3595
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3596
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/net/INetd;->networkSetPermissionForUser(I[I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3606
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3607
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3597
    return-void

    .line 3600
    :cond_0
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method networkSetPermissionForUser is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .end local p1    # "permission":I
    .end local p2    # "uids":[I
    throw v3

    .line 3603
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .restart local p1    # "permission":I
    .restart local p2    # "uids":[I
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3606
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3607
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3608
    nop

    .line 3609
    return-void

    .line 3606
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3607
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3608
    throw v2
.end method

.method public networkSetProtectAllow(I)V
    .locals 5
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3661
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3662
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3664
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3665
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3666
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x49

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3667
    .local v2, "_status":Z
    if-nez v2, :cond_1

    .line 3668
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3669
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/net/INetd;->networkSetProtectAllow(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3679
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3680
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3670
    return-void

    .line 3673
    :cond_0
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method networkSetProtectAllow is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .end local p1    # "uid":I
    throw v3

    .line 3676
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .restart local p1    # "uid":I
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3679
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3680
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3681
    nop

    .line 3682
    return-void

    .line 3679
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3680
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3681
    throw v2
.end method

.method public networkSetProtectDeny(I)V
    .locals 5
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3685
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3686
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3688
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3689
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3690
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x4a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3691
    .local v2, "_status":Z
    if-nez v2, :cond_1

    .line 3692
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3693
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/net/INetd;->networkSetProtectDeny(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3703
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3704
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3694
    return-void

    .line 3697
    :cond_0
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method networkSetProtectDeny is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .end local p1    # "uid":I
    throw v3

    .line 3700
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .restart local p1    # "uid":I
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3703
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3704
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3705
    nop

    .line 3706
    return-void

    .line 3703
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3704
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3705
    throw v2
.end method

.method public networkUpdateRouteParcel(ILandroid/net/RouteInfoParcel;)V
    .locals 5
    .param p1, "netId"    # I
    .param p2, "routeInfo"    # Landroid/net/RouteInfoParcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4308
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4309
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4311
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4312
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4313
    const/4 v2, 0x0

    if-eqz p2, :cond_0

    .line 4314
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4315
    invoke-virtual {p2, v0, v2}, Landroid/net/RouteInfoParcel;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 4318
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4320
    :goto_0
    iget-object v3, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x62

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4321
    .local v2, "_status":Z
    if-nez v2, :cond_2

    .line 4322
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 4323
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/net/INetd;->networkUpdateRouteParcel(ILandroid/net/RouteInfoParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4333
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4334
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4324
    return-void

    .line 4327
    :cond_1
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method networkUpdateRouteParcel is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .end local p1    # "netId":I
    .end local p2    # "routeInfo":Landroid/net/RouteInfoParcel;
    throw v3

    .line 4330
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .restart local p1    # "netId":I
    .restart local p2    # "routeInfo":Landroid/net/RouteInfoParcel;
    :cond_2
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4333
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4334
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4335
    nop

    .line 4336
    return-void

    .line 4333
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4334
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4335
    throw v2
.end method

.method public registerUnsolicitedEventListener(Landroid/net/INetdUnsolicitedEventListener;)V
    .locals 5
    .param p1, "listener"    # Landroid/net/INetdUnsolicitedEventListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4095
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4096
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4098
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4099
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/net/INetdUnsolicitedEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 4100
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x5a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4101
    .local v2, "_status":Z
    if-nez v2, :cond_2

    .line 4102
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 4103
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/net/INetd;->registerUnsolicitedEventListener(Landroid/net/INetdUnsolicitedEventListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4113
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4114
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4104
    return-void

    .line 4107
    :cond_1
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method registerUnsolicitedEventListener is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .end local p1    # "listener":Landroid/net/INetdUnsolicitedEventListener;
    throw v3

    .line 4110
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .restart local p1    # "listener":Landroid/net/INetdUnsolicitedEventListener;
    :cond_2
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4113
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4114
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4115
    nop

    .line 4116
    return-void

    .line 4113
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4114
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4115
    throw v2
.end method

.method public setIPv6AddrGenMode(Ljava/lang/String;I)V
    .locals 5
    .param p1, "ifName"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2666
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2667
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2669
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2670
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2671
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2672
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x21

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2673
    .local v2, "_status":Z
    if-nez v2, :cond_1

    .line 2674
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2675
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/net/INetd;->setIPv6AddrGenMode(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2685
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2686
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2676
    return-void

    .line 2679
    :cond_0
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method setIPv6AddrGenMode is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .end local p1    # "ifName":Ljava/lang/String;
    .end local p2    # "mode":I
    throw v3

    .line 2682
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .restart local p1    # "ifName":Ljava/lang/String;
    .restart local p2    # "mode":I
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2685
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2686
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2687
    nop

    .line 2688
    return-void

    .line 2685
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2686
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2687
    throw v2
.end method

.method public setProcSysNet(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "ipversion"    # I
    .param p2, "which"    # I
    .param p3, "ifname"    # Ljava/lang/String;
    .param p4, "parameter"    # Ljava/lang/String;
    .param p5, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2210
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2211
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2213
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2214
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2215
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2216
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2217
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2218
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2219
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x12

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2220
    .local v2, "_status":Z
    if-nez v2, :cond_1

    .line 2221
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2222
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v4

    move v5, p1

    move v6, p2

    move-object v7, p3

    move-object v8, p4

    move-object v9, p5

    invoke-interface/range {v4 .. v9}, Landroid/net/INetd;->setProcSysNet(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2232
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2233
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2223
    return-void

    .line 2226
    :cond_0
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method setProcSysNet is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .end local p1    # "ipversion":I
    .end local p2    # "which":I
    .end local p3    # "ifname":Ljava/lang/String;
    .end local p4    # "parameter":Ljava/lang/String;
    .end local p5    # "value":Ljava/lang/String;
    throw v3

    .line 2229
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .restart local p1    # "ipversion":I
    .restart local p2    # "which":I
    .restart local p3    # "ifname":Ljava/lang/String;
    .restart local p4    # "parameter":Ljava/lang/String;
    .restart local p5    # "value":Ljava/lang/String;
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2232
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2233
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2234
    nop

    .line 2235
    return-void

    .line 2232
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2233
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2234
    throw v2
.end method

.method public setTcpRWmemorySize(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "rmemValues"    # Ljava/lang/String;
    .param p2, "wmemValues"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4070
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4071
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4073
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4074
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4075
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4076
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x59

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4077
    .local v2, "_status":Z
    if-nez v2, :cond_1

    .line 4078
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 4079
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/net/INetd;->setTcpRWmemorySize(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4089
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4090
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4080
    return-void

    .line 4083
    :cond_0
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method setTcpRWmemorySize is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .end local p1    # "rmemValues":Ljava/lang/String;
    .end local p2    # "wmemValues":Ljava/lang/String;
    throw v3

    .line 4086
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .restart local p1    # "rmemValues":Ljava/lang/String;
    .restart local p2    # "wmemValues":Ljava/lang/String;
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4089
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4090
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4091
    nop

    .line 4092
    return-void

    .line 4089
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4090
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4091
    throw v2
.end method

.method public socketDestroy([Landroid/net/UidRangeParcel;[I)V
    .locals 5
    .param p1, "uidRanges"    # [Landroid/net/UidRangeParcel;
    .param p2, "exemptUids"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2054
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2055
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2057
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2058
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 2059
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 2060
    iget-object v3, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xc

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2061
    .local v2, "_status":Z
    if-nez v2, :cond_1

    .line 2062
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2063
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/net/INetd;->socketDestroy([Landroid/net/UidRangeParcel;[I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2073
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2074
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2064
    return-void

    .line 2067
    :cond_0
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method socketDestroy is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .end local p1    # "uidRanges":[Landroid/net/UidRangeParcel;
    .end local p2    # "exemptUids":[I
    throw v3

    .line 2070
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .restart local p1    # "uidRanges":[Landroid/net/UidRangeParcel;
    .restart local p2    # "exemptUids":[I
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2073
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2074
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2075
    nop

    .line 2076
    return-void

    .line 2073
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2074
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2075
    throw v2
.end method

.method public strictUidCleartextPenalty(II)V
    .locals 5
    .param p1, "uid"    # I
    .param p2, "policyPenalty"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2743
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2744
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2746
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2747
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2748
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2749
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x24

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2750
    .local v2, "_status":Z
    if-nez v2, :cond_1

    .line 2751
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2752
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/net/INetd;->strictUidCleartextPenalty(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2762
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2763
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2753
    return-void

    .line 2756
    :cond_0
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method strictUidCleartextPenalty is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .end local p1    # "uid":I
    .end local p2    # "policyPenalty":I
    throw v3

    .line 2759
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .restart local p1    # "uid":I
    .restart local p2    # "policyPenalty":I
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2762
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2763
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2764
    nop

    .line 2765
    return-void

    .line 2762
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2763
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2764
    throw v2
.end method

.method public tetherAddForward(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "intIface"    # Ljava/lang/String;
    .param p2, "extIface"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4020
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4021
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4023
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4024
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4025
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4026
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x57

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4027
    .local v2, "_status":Z
    if-nez v2, :cond_1

    .line 4028
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 4029
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/net/INetd;->tetherAddForward(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4039
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4040
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4030
    return-void

    .line 4033
    :cond_0
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method tetherAddForward is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .end local p1    # "intIface":Ljava/lang/String;
    .end local p2    # "extIface":Ljava/lang/String;
    throw v3

    .line 4036
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .restart local p1    # "intIface":Ljava/lang/String;
    .restart local p2    # "extIface":Ljava/lang/String;
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4039
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4040
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4041
    nop

    .line 4042
    return-void

    .line 4039
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4040
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4041
    throw v2
.end method

.method public tetherApplyDnsInterfaces()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2079
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2080
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2083
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2084
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2085
    .local v2, "_status":Z
    if-nez v2, :cond_1

    .line 2086
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2087
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3}, Landroid/net/INetd;->tetherApplyDnsInterfaces()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2097
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2098
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2087
    return v3

    .line 2090
    :cond_0
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method tetherApplyDnsInterfaces is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    throw v3

    .line 2093
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2094
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_2

    const/4 v4, 0x1

    :cond_2
    move v2, v4

    .line 2097
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2098
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2099
    nop

    .line 2100
    return v2

    .line 2097
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2098
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2099
    throw v2
.end method

.method public tetherDnsList()[Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3355
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3356
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3359
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3360
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3361
    .local v2, "_status":Z
    if-nez v2, :cond_1

    .line 3362
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3363
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3}, Landroid/net/INetd;->tetherDnsList()[Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3373
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3374
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3363
    return-object v3

    .line 3366
    :cond_0
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method tetherDnsList is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    throw v3

    .line 3369
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3370
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v3

    .line 3373
    .local v2, "_result":[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3374
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3375
    nop

    .line 3376
    return-object v2

    .line 3373
    .end local v2    # "_result":[Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3374
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3375
    throw v2
.end method

.method public tetherDnsSet(I[Ljava/lang/String;)V
    .locals 5
    .param p1, "netId"    # I
    .param p2, "dnsAddrs"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3330
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3331
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3333
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3334
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3335
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 3336
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3337
    .local v2, "_status":Z
    if-nez v2, :cond_1

    .line 3338
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3339
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/net/INetd;->tetherDnsSet(I[Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3349
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3350
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3340
    return-void

    .line 3343
    :cond_0
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method tetherDnsSet is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .end local p1    # "netId":I
    .end local p2    # "dnsAddrs":[Ljava/lang/String;
    throw v3

    .line 3346
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .restart local p1    # "netId":I
    .restart local p2    # "dnsAddrs":[Ljava/lang/String;
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3349
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3350
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3351
    nop

    .line 3352
    return-void

    .line 3349
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3350
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3351
    throw v2
.end method

.method public tetherGetStats()[Landroid/net/TetherStatsParcel;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2104
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2105
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2108
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2109
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2110
    .local v2, "_status":Z
    if-nez v2, :cond_1

    .line 2111
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2112
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3}, Landroid/net/INetd;->tetherGetStats()[Landroid/net/TetherStatsParcel;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2122
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2123
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2112
    return-object v3

    .line 2115
    :cond_0
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method tetherGetStats is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    throw v3

    .line 2118
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2119
    sget-object v3, Landroid/net/TetherStatsParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/net/TetherStatsParcel;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v3

    .line 2122
    .local v2, "_result":[Landroid/net/TetherStatsParcel;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2123
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2124
    nop

    .line 2125
    return-object v2

    .line 2122
    .end local v2    # "_result":[Landroid/net/TetherStatsParcel;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2123
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2124
    throw v2
.end method

.method public tetherInterfaceAdd(Ljava/lang/String;)V
    .locals 5
    .param p1, "ifName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3257
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3258
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3260
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3261
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3262
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x39

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3263
    .local v2, "_status":Z
    if-nez v2, :cond_1

    .line 3264
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3265
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/net/INetd;->tetherInterfaceAdd(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3275
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3276
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3266
    return-void

    .line 3269
    :cond_0
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method tetherInterfaceAdd is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .end local p1    # "ifName":Ljava/lang/String;
    throw v3

    .line 3272
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .restart local p1    # "ifName":Ljava/lang/String;
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3275
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3276
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3277
    nop

    .line 3278
    return-void

    .line 3275
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3276
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3277
    throw v2
.end method

.method public tetherInterfaceList()[Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3305
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3306
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3309
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3310
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3311
    .local v2, "_status":Z
    if-nez v2, :cond_1

    .line 3312
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3313
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3}, Landroid/net/INetd;->tetherInterfaceList()[Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3323
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3324
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3313
    return-object v3

    .line 3316
    :cond_0
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method tetherInterfaceList is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    throw v3

    .line 3319
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3320
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v3

    .line 3323
    .local v2, "_result":[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3324
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3325
    nop

    .line 3326
    return-object v2

    .line 3323
    .end local v2    # "_result":[Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3324
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3325
    throw v2
.end method

.method public tetherInterfaceRemove(Ljava/lang/String;)V
    .locals 5
    .param p1, "ifName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3281
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3282
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3284
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3285
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3286
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3287
    .local v2, "_status":Z
    if-nez v2, :cond_1

    .line 3288
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3289
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/net/INetd;->tetherInterfaceRemove(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3299
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3300
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3290
    return-void

    .line 3293
    :cond_0
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method tetherInterfaceRemove is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .end local p1    # "ifName":Ljava/lang/String;
    throw v3

    .line 3296
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .restart local p1    # "ifName":Ljava/lang/String;
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3299
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3300
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3301
    nop

    .line 3302
    return-void

    .line 3299
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3300
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3301
    throw v2
.end method

.method public tetherIsEnabled()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3232
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3233
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3236
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3237
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x38

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3238
    .local v2, "_status":Z
    if-nez v2, :cond_1

    .line 3239
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3240
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3}, Landroid/net/INetd;->tetherIsEnabled()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3250
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3251
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3240
    return v3

    .line 3243
    :cond_0
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method tetherIsEnabled is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    throw v3

    .line 3246
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3247
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_2

    const/4 v4, 0x1

    :cond_2
    move v2, v4

    .line 3250
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3251
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3252
    nop

    .line 3253
    return v2

    .line 3250
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3251
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3252
    throw v2
.end method

.method public tetherOffloadGetAndClearStats(I)Landroid/net/TetherStatsParcel;
    .locals 5
    .param p1, "ifIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4480
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4481
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4484
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4485
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4486
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x68

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4487
    .local v2, "_status":Z
    if-nez v2, :cond_1

    .line 4488
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 4489
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/net/INetd;->tetherOffloadGetAndClearStats(I)Landroid/net/TetherStatsParcel;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4504
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4505
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4489
    return-object v3

    .line 4492
    :cond_0
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method tetherOffloadGetAndClearStats is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .end local p1    # "ifIndex":I
    throw v3

    .line 4495
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .restart local p1    # "ifIndex":I
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4496
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    .line 4497
    sget-object v3, Landroid/net/TetherStatsParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/TetherStatsParcel;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .local v3, "_result":Landroid/net/TetherStatsParcel;
    goto :goto_0

    .line 4500
    .end local v3    # "_result":Landroid/net/TetherStatsParcel;
    :cond_2
    const/4 v3, 0x0

    .line 4504
    .end local v2    # "_status":Z
    .restart local v3    # "_result":Landroid/net/TetherStatsParcel;
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4505
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4506
    nop

    .line 4507
    return-object v3

    .line 4504
    .end local v3    # "_result":Landroid/net/TetherStatsParcel;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4505
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4506
    throw v2
.end method

.method public tetherOffloadGetStats()[Landroid/net/TetherStatsParcel;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4430
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4431
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4434
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4435
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x66

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4436
    .local v2, "_status":Z
    if-nez v2, :cond_1

    .line 4437
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 4438
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3}, Landroid/net/INetd;->tetherOffloadGetStats()[Landroid/net/TetherStatsParcel;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4448
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4449
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4438
    return-object v3

    .line 4441
    :cond_0
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method tetherOffloadGetStats is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    throw v3

    .line 4444
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4445
    sget-object v3, Landroid/net/TetherStatsParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/net/TetherStatsParcel;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v3

    .line 4448
    .local v2, "_result":[Landroid/net/TetherStatsParcel;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4449
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4450
    nop

    .line 4451
    return-object v2

    .line 4448
    .end local v2    # "_result":[Landroid/net/TetherStatsParcel;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4449
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4450
    throw v2
.end method

.method public tetherOffloadRuleAdd(Landroid/net/TetherOffloadRuleParcel;)V
    .locals 5
    .param p1, "rule"    # Landroid/net/TetherOffloadRuleParcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4370
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4371
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4373
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4374
    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 4375
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4376
    invoke-virtual {p1, v0, v2}, Landroid/net/TetherOffloadRuleParcel;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 4379
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4381
    :goto_0
    iget-object v3, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x64

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4382
    .local v2, "_status":Z
    if-nez v2, :cond_2

    .line 4383
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 4384
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/net/INetd;->tetherOffloadRuleAdd(Landroid/net/TetherOffloadRuleParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4394
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4395
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4385
    return-void

    .line 4388
    :cond_1
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method tetherOffloadRuleAdd is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .end local p1    # "rule":Landroid/net/TetherOffloadRuleParcel;
    throw v3

    .line 4391
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .restart local p1    # "rule":Landroid/net/TetherOffloadRuleParcel;
    :cond_2
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4394
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4395
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4396
    nop

    .line 4397
    return-void

    .line 4394
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4395
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4396
    throw v2
.end method

.method public tetherOffloadRuleRemove(Landroid/net/TetherOffloadRuleParcel;)V
    .locals 5
    .param p1, "rule"    # Landroid/net/TetherOffloadRuleParcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4400
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4401
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4403
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4404
    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 4405
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4406
    invoke-virtual {p1, v0, v2}, Landroid/net/TetherOffloadRuleParcel;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 4409
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4411
    :goto_0
    iget-object v3, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x65

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4412
    .local v2, "_status":Z
    if-nez v2, :cond_2

    .line 4413
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 4414
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/net/INetd;->tetherOffloadRuleRemove(Landroid/net/TetherOffloadRuleParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4424
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4425
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4415
    return-void

    .line 4418
    :cond_1
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method tetherOffloadRuleRemove is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .end local p1    # "rule":Landroid/net/TetherOffloadRuleParcel;
    throw v3

    .line 4421
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .restart local p1    # "rule":Landroid/net/TetherOffloadRuleParcel;
    :cond_2
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4424
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4425
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4426
    nop

    .line 4427
    return-void

    .line 4424
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4425
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4426
    throw v2
.end method

.method public tetherOffloadSetInterfaceQuota(IJ)V
    .locals 5
    .param p1, "ifIndex"    # I
    .param p2, "quotaBytes"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4455
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4456
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4458
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4459
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4460
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 4461
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x67

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4462
    .local v2, "_status":Z
    if-nez v2, :cond_1

    .line 4463
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 4464
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Landroid/net/INetd;->tetherOffloadSetInterfaceQuota(IJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4474
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4475
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4465
    return-void

    .line 4468
    :cond_0
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method tetherOffloadSetInterfaceQuota is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .end local p1    # "ifIndex":I
    .end local p2    # "quotaBytes":J
    throw v3

    .line 4471
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .restart local p1    # "ifIndex":I
    .restart local p2    # "quotaBytes":J
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4474
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4475
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4476
    nop

    .line 4477
    return-void

    .line 4474
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4475
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4476
    throw v2
.end method

.method public tetherRemoveForward(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "intIface"    # Ljava/lang/String;
    .param p2, "extIface"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4045
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4046
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4048
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4049
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4050
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4051
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x58

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4052
    .local v2, "_status":Z
    if-nez v2, :cond_1

    .line 4053
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 4054
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/net/INetd;->tetherRemoveForward(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4064
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4065
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4055
    return-void

    .line 4058
    :cond_0
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method tetherRemoveForward is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .end local p1    # "intIface":Ljava/lang/String;
    .end local p2    # "extIface":Ljava/lang/String;
    throw v3

    .line 4061
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .restart local p1    # "intIface":Ljava/lang/String;
    .restart local p2    # "extIface":Ljava/lang/String;
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4064
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4065
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4066
    nop

    .line 4067
    return-void

    .line 4064
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4065
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4066
    throw v2
.end method

.method public tetherStart([Ljava/lang/String;)V
    .locals 5
    .param p1, "dhcpRanges"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3185
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3186
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3188
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3189
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 3190
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x36

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3191
    .local v2, "_status":Z
    if-nez v2, :cond_1

    .line 3192
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3193
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/net/INetd;->tetherStart([Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3203
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3204
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3194
    return-void

    .line 3197
    :cond_0
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method tetherStart is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .end local p1    # "dhcpRanges":[Ljava/lang/String;
    throw v3

    .line 3200
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .restart local p1    # "dhcpRanges":[Ljava/lang/String;
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3203
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3204
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3205
    nop

    .line 3206
    return-void

    .line 3203
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3204
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3205
    throw v2
.end method

.method public tetherStartWithConfiguration(Landroid/net/TetherConfigParcel;)V
    .locals 5
    .param p1, "config"    # Landroid/net/TetherConfigParcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4216
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4217
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4219
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4220
    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 4221
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4222
    invoke-virtual {p1, v0, v2}, Landroid/net/TetherConfigParcel;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 4225
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4227
    :goto_0
    iget-object v3, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x5f

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4228
    .local v2, "_status":Z
    if-nez v2, :cond_2

    .line 4229
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 4230
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/net/INetd;->tetherStartWithConfiguration(Landroid/net/TetherConfigParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4240
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4241
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4231
    return-void

    .line 4234
    :cond_1
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method tetherStartWithConfiguration is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .end local p1    # "config":Landroid/net/TetherConfigParcel;
    throw v3

    .line 4237
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .restart local p1    # "config":Landroid/net/TetherConfigParcel;
    :cond_2
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4240
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4241
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4242
    nop

    .line 4243
    return-void

    .line 4240
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4241
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4242
    throw v2
.end method

.method public tetherStop()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3209
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3210
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3212
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3213
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x37

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3214
    .local v2, "_status":Z
    if-nez v2, :cond_1

    .line 3215
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3216
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3}, Landroid/net/INetd;->tetherStop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3226
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3227
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3217
    return-void

    .line 3220
    :cond_0
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method tetherStop is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    throw v3

    .line 3223
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3226
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3227
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3228
    nop

    .line 3229
    return-void

    .line 3226
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3227
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3228
    throw v2
.end method

.method public trafficSetNetPermForUids(I[I)V
    .locals 5
    .param p1, "permission"    # I
    .param p2, "uids"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3636
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3637
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3639
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3640
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3641
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 3642
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x48

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3643
    .local v2, "_status":Z
    if-nez v2, :cond_1

    .line 3644
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3645
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/net/INetd;->trafficSetNetPermForUids(I[I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3655
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3656
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3646
    return-void

    .line 3649
    :cond_0
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method trafficSetNetPermForUids is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .end local p1    # "permission":I
    .end local p2    # "uids":[I
    throw v3

    .line 3652
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .restart local p1    # "permission":I
    .restart local p2    # "uids":[I
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3655
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3656
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3657
    nop

    .line 3658
    return-void

    .line 3655
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3656
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3657
    throw v2
.end method

.method public trafficSwapActiveStatsMap()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4168
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4169
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4171
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4172
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x5d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4173
    .local v2, "_status":Z
    if-nez v2, :cond_1

    .line 4174
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 4175
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3}, Landroid/net/INetd;->trafficSwapActiveStatsMap()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4185
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4186
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4176
    return-void

    .line 4179
    :cond_0
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method trafficSwapActiveStatsMap is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    throw v3

    .line 4182
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4185
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4186
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4187
    nop

    .line 4188
    return-void

    .line 4185
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4186
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4187
    throw v2
.end method

.method public wakeupAddInterface(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 5
    .param p1, "ifName"    # Ljava/lang/String;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "mark"    # I
    .param p4, "mask"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2612
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2613
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2615
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2616
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2617
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2618
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2619
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2620
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2621
    .local v2, "_status":Z
    if-nez v2, :cond_1

    .line 2622
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2623
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3, p4}, Landroid/net/INetd;->wakeupAddInterface(Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2633
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2634
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2624
    return-void

    .line 2627
    :cond_0
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method wakeupAddInterface is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .end local p1    # "ifName":Ljava/lang/String;
    .end local p2    # "prefix":Ljava/lang/String;
    .end local p3    # "mark":I
    .end local p4    # "mask":I
    throw v3

    .line 2630
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .restart local p1    # "ifName":Ljava/lang/String;
    .restart local p2    # "prefix":Ljava/lang/String;
    .restart local p3    # "mark":I
    .restart local p4    # "mask":I
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2633
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2634
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2635
    nop

    .line 2636
    return-void

    .line 2633
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2634
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2635
    throw v2
.end method

.method public wakeupDelInterface(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 5
    .param p1, "ifName"    # Ljava/lang/String;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "mark"    # I
    .param p4, "mask"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2639
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2640
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2642
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2643
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2644
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2645
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2646
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2647
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x20

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2648
    .local v2, "_status":Z
    if-nez v2, :cond_1

    .line 2649
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2650
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3, p4}, Landroid/net/INetd;->wakeupDelInterface(Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2660
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2661
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2651
    return-void

    .line 2654
    :cond_0
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method wakeupDelInterface is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .end local p1    # "ifName":Ljava/lang/String;
    .end local p2    # "prefix":Ljava/lang/String;
    .end local p3    # "mark":I
    .end local p4    # "mask":I
    throw v3

    .line 2657
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .restart local p1    # "ifName":Ljava/lang/String;
    .restart local p2    # "prefix":Ljava/lang/String;
    .restart local p3    # "mark":I
    .restart local p4    # "mask":I
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2660
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2661
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2662
    nop

    .line 2663
    return-void

    .line 2660
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2661
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2662
    throw v2
.end method
