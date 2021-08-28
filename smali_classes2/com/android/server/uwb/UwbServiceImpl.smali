.class public Lcom/android/server/uwb/UwbServiceImpl;
.super Landroid/uwb/IUwbAdapter$Stub;
.source "UwbServiceImpl.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/uwb/UwbServiceImpl$UwbRangingCallbacksWrapper;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "UwbServiceImpl"


# instance fields
.field private final mCallbacksMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/uwb/SessionHandle;",
            "Lcom/android/server/uwb/UwbServiceImpl$UwbRangingCallbacksWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mUwbInjector:Lcom/android/server/uwb/UwbInjector;

.field private mVendorUwbAdapter:Landroid/uwb/IUwbAdapter;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/server/uwb/UwbInjector;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uwbInjector"    # Lcom/android/server/uwb/UwbInjector;

    .line 239
    invoke-direct {p0}, Landroid/uwb/IUwbAdapter$Stub;-><init>()V

    .line 50
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/uwb/UwbServiceImpl;->mCallbacksMap:Ljava/util/Map;

    .line 240
    iput-object p1, p0, Lcom/android/server/uwb/UwbServiceImpl;->mContext:Landroid/content/Context;

    .line 241
    iput-object p2, p0, Lcom/android/server/uwb/UwbServiceImpl;->mUwbInjector:Lcom/android/server/uwb/UwbInjector;

    .line 242
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/uwb/UwbServiceImpl;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/uwb/UwbServiceImpl;

    .line 42
    iget-object v0, p0, Lcom/android/server/uwb/UwbServiceImpl;->mCallbacksMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/uwb/UwbServiceImpl;)Lcom/android/server/uwb/UwbInjector;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/uwb/UwbServiceImpl;

    .line 42
    iget-object v0, p0, Lcom/android/server/uwb/UwbServiceImpl;->mUwbInjector:Lcom/android/server/uwb/UwbInjector;

    return-object v0
.end method

.method private enforceUwbPrivilegedPermission()V
    .locals 3

    .line 245
    iget-object v0, p0, Lcom/android/server/uwb/UwbServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.UWB_PRIVILEGED"

    const-string v2, "UwbService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    return-void
.end method

.method private declared-synchronized getVendorUwbAdapter()Landroid/uwb/IUwbAdapter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    monitor-enter p0

    .line 229
    :try_start_0
    iget-object v0, p0, Lcom/android/server/uwb/UwbServiceImpl;->mVendorUwbAdapter:Landroid/uwb/IUwbAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-object v0

    .line 230
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/uwb/UwbServiceImpl;->mUwbInjector:Lcom/android/server/uwb/UwbInjector;

    invoke-virtual {v0}, Lcom/android/server/uwb/UwbInjector;->getVendorService()Landroid/uwb/IUwbAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/uwb/UwbServiceImpl;->mVendorUwbAdapter:Landroid/uwb/IUwbAdapter;

    .line 231
    if-eqz v0, :cond_1

    .line 234
    const-string v0, "UwbServiceImpl"

    const-string v1, "Retrieved vendor service"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    invoke-direct {p0}, Lcom/android/server/uwb/UwbServiceImpl;->linkToVendorServiceDeath()V

    .line 236
    iget-object v0, p0, Lcom/android/server/uwb/UwbServiceImpl;->mVendorUwbAdapter:Landroid/uwb/IUwbAdapter;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 232
    .end local p0    # "this":Lcom/android/server/uwb/UwbServiceImpl;
    :cond_1
    :try_start_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No vendor service found!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 228
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private linkToVendorServiceDeath()V
    .locals 4

    .line 201
    iget-object v0, p0, Lcom/android/server/uwb/UwbServiceImpl;->mVendorUwbAdapter:Landroid/uwb/IUwbAdapter;

    invoke-interface {v0}, Landroid/uwb/IUwbAdapter;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 203
    .local v0, "binder":Landroid/os/IBinder;
    const/4 v1, 0x0

    :try_start_0
    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    goto :goto_0

    .line 204
    :catch_0
    move-exception v1

    .line 205
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "UwbServiceImpl"

    const-string v3, "Unable to link to vendor service death event."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 207
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 7

    .line 211
    const-string v0, "UwbServiceImpl"

    const-string v1, "Vendor service died: sending session close callbacks"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iget-object v0, p0, Lcom/android/server/uwb/UwbServiceImpl;->mCallbacksMap:Ljava/util/Map;

    monitor-enter v0

    .line 213
    :try_start_0
    iget-object v1, p0, Lcom/android/server/uwb/UwbServiceImpl;->mCallbacksMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 215
    .local v2, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/uwb/SessionHandle;Lcom/android/server/uwb/UwbServiceImpl$UwbRangingCallbacksWrapper;>;"
    :try_start_1
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/uwb/UwbServiceImpl$UwbRangingCallbacksWrapper;

    invoke-static {v3}, Lcom/android/server/uwb/UwbServiceImpl$UwbRangingCallbacksWrapper;->access$200(Lcom/android/server/uwb/UwbServiceImpl$UwbRangingCallbacksWrapper;)Landroid/uwb/IUwbRangingCallbacks;

    move-result-object v3

    .line 216
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/uwb/SessionHandle;

    const/4 v5, 0x0

    new-instance v6, Landroid/os/PersistableBundle;

    invoke-direct {v6}, Landroid/os/PersistableBundle;-><init>()V

    .line 215
    invoke-interface {v3, v4, v5, v6}, Landroid/uwb/IUwbRangingCallbacks;->onRangingClosed(Landroid/uwb/SessionHandle;ILandroid/os/PersistableBundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 220
    goto :goto_1

    .line 218
    :catch_0
    move-exception v3

    .line 219
    .local v3, "ex":Landroid/os/RemoteException;
    :try_start_2
    const-string v4, "UwbServiceImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to send session close callback "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 221
    .end local v2    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/uwb/SessionHandle;Lcom/android/server/uwb/UwbServiceImpl$UwbRangingCallbacksWrapper;>;"
    .end local v3    # "ex":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 223
    :cond_0
    iget-object v1, p0, Lcom/android/server/uwb/UwbServiceImpl;->mCallbacksMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 224
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 225
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/uwb/UwbServiceImpl;->mVendorUwbAdapter:Landroid/uwb/IUwbAdapter;

    .line 226
    return-void

    .line 224
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public closeRanging(Landroid/uwb/SessionHandle;)V
    .locals 1
    .param p1, "sessionHandle"    # Landroid/uwb/SessionHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 312
    invoke-direct {p0}, Lcom/android/server/uwb/UwbServiceImpl;->enforceUwbPrivilegedPermission()V

    .line 313
    invoke-direct {p0}, Lcom/android/server/uwb/UwbServiceImpl;->getVendorUwbAdapter()Landroid/uwb/IUwbAdapter;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/uwb/IUwbAdapter;->closeRanging(Landroid/uwb/SessionHandle;)V

    .line 314
    return-void
.end method

.method public declared-synchronized getAdapterState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 318
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/uwb/UwbServiceImpl;->getVendorUwbAdapter()Landroid/uwb/IUwbAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/uwb/IUwbAdapter;->getAdapterState()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 318
    .end local p0    # "this":Lcom/android/server/uwb/UwbServiceImpl;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSpecificationInfo()Landroid/os/PersistableBundle;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 271
    invoke-direct {p0}, Lcom/android/server/uwb/UwbServiceImpl;->enforceUwbPrivilegedPermission()V

    .line 272
    invoke-direct {p0}, Lcom/android/server/uwb/UwbServiceImpl;->getVendorUwbAdapter()Landroid/uwb/IUwbAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/uwb/IUwbAdapter;->getSpecificationInfo()Landroid/os/PersistableBundle;

    move-result-object v0

    return-object v0
.end method

.method public getTimestampResolutionNanos()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 265
    invoke-direct {p0}, Lcom/android/server/uwb/UwbServiceImpl;->enforceUwbPrivilegedPermission()V

    .line 266
    invoke-direct {p0}, Lcom/android/server/uwb/UwbServiceImpl;->getVendorUwbAdapter()Landroid/uwb/IUwbAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/uwb/IUwbAdapter;->getTimestampResolutionNanos()J

    move-result-wide v0

    return-wide v0
.end method

.method public openRanging(Landroid/content/AttributionSource;Landroid/uwb/SessionHandle;Landroid/uwb/IUwbRangingCallbacks;Landroid/os/PersistableBundle;)V
    .locals 3
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "sessionHandle"    # Landroid/uwb/SessionHandle;
    .param p3, "rangingCallbacks"    # Landroid/uwb/IUwbRangingCallbacks;
    .param p4, "parameters"    # Landroid/os/PersistableBundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 279
    invoke-direct {p0}, Lcom/android/server/uwb/UwbServiceImpl;->enforceUwbPrivilegedPermission()V

    .line 280
    iget-object v0, p0, Lcom/android/server/uwb/UwbServiceImpl;->mUwbInjector:Lcom/android/server/uwb/UwbInjector;

    invoke-virtual {v0, p1}, Lcom/android/server/uwb/UwbInjector;->enforceUwbRangingPermissionForPreflight(Landroid/content/AttributionSource;)V

    .line 282
    new-instance v0, Lcom/android/server/uwb/UwbServiceImpl$UwbRangingCallbacksWrapper;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/uwb/UwbServiceImpl$UwbRangingCallbacksWrapper;-><init>(Lcom/android/server/uwb/UwbServiceImpl;Landroid/content/AttributionSource;Landroid/uwb/SessionHandle;Landroid/uwb/IUwbRangingCallbacks;)V

    .line 284
    .local v0, "wrapperCb":Lcom/android/server/uwb/UwbServiceImpl$UwbRangingCallbacksWrapper;
    iget-object v1, p0, Lcom/android/server/uwb/UwbServiceImpl;->mCallbacksMap:Ljava/util/Map;

    monitor-enter v1

    .line 285
    :try_start_0
    iget-object v2, p0, Lcom/android/server/uwb/UwbServiceImpl;->mCallbacksMap:Ljava/util/Map;

    invoke-interface {v2, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 287
    invoke-direct {p0}, Lcom/android/server/uwb/UwbServiceImpl;->getVendorUwbAdapter()Landroid/uwb/IUwbAdapter;

    move-result-object v1

    invoke-interface {v1, p1, p2, v0, p4}, Landroid/uwb/IUwbAdapter;->openRanging(Landroid/content/AttributionSource;Landroid/uwb/SessionHandle;Landroid/uwb/IUwbRangingCallbacks;Landroid/os/PersistableBundle;)V

    .line 288
    return-void

    .line 286
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public reconfigureRanging(Landroid/uwb/SessionHandle;Landroid/os/PersistableBundle;)V
    .locals 1
    .param p1, "sessionHandle"    # Landroid/uwb/SessionHandle;
    .param p2, "parameters"    # Landroid/os/PersistableBundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 300
    invoke-direct {p0}, Lcom/android/server/uwb/UwbServiceImpl;->enforceUwbPrivilegedPermission()V

    .line 301
    invoke-direct {p0}, Lcom/android/server/uwb/UwbServiceImpl;->getVendorUwbAdapter()Landroid/uwb/IUwbAdapter;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/uwb/IUwbAdapter;->reconfigureRanging(Landroid/uwb/SessionHandle;Landroid/os/PersistableBundle;)V

    .line 302
    return-void
.end method

.method public registerAdapterStateCallbacks(Landroid/uwb/IUwbAdapterStateCallbacks;)V
    .locals 1
    .param p1, "adapterStateCallbacks"    # Landroid/uwb/IUwbAdapterStateCallbacks;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 252
    invoke-direct {p0}, Lcom/android/server/uwb/UwbServiceImpl;->enforceUwbPrivilegedPermission()V

    .line 253
    invoke-direct {p0}, Lcom/android/server/uwb/UwbServiceImpl;->getVendorUwbAdapter()Landroid/uwb/IUwbAdapter;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/uwb/IUwbAdapter;->registerAdapterStateCallbacks(Landroid/uwb/IUwbAdapterStateCallbacks;)V

    .line 254
    return-void
.end method

.method public declared-synchronized setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 323
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/uwb/UwbServiceImpl;->getVendorUwbAdapter()Landroid/uwb/IUwbAdapter;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/uwb/IUwbAdapter;->setEnabled(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 324
    monitor-exit p0

    return-void

    .line 322
    .end local p0    # "this":Lcom/android/server/uwb/UwbServiceImpl;
    .end local p1    # "enabled":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public startRanging(Landroid/uwb/SessionHandle;Landroid/os/PersistableBundle;)V
    .locals 1
    .param p1, "sessionHandle"    # Landroid/uwb/SessionHandle;
    .param p2, "parameters"    # Landroid/os/PersistableBundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 293
    invoke-direct {p0}, Lcom/android/server/uwb/UwbServiceImpl;->enforceUwbPrivilegedPermission()V

    .line 294
    invoke-direct {p0}, Lcom/android/server/uwb/UwbServiceImpl;->getVendorUwbAdapter()Landroid/uwb/IUwbAdapter;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/uwb/IUwbAdapter;->startRanging(Landroid/uwb/SessionHandle;Landroid/os/PersistableBundle;)V

    .line 295
    return-void
.end method

.method public stopRanging(Landroid/uwb/SessionHandle;)V
    .locals 1
    .param p1, "sessionHandle"    # Landroid/uwb/SessionHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 306
    invoke-direct {p0}, Lcom/android/server/uwb/UwbServiceImpl;->enforceUwbPrivilegedPermission()V

    .line 307
    invoke-direct {p0}, Lcom/android/server/uwb/UwbServiceImpl;->getVendorUwbAdapter()Landroid/uwb/IUwbAdapter;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/uwb/IUwbAdapter;->stopRanging(Landroid/uwb/SessionHandle;)V

    .line 308
    return-void
.end method

.method public unregisterAdapterStateCallbacks(Landroid/uwb/IUwbAdapterStateCallbacks;)V
    .locals 1
    .param p1, "adapterStateCallbacks"    # Landroid/uwb/IUwbAdapterStateCallbacks;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 259
    invoke-direct {p0}, Lcom/android/server/uwb/UwbServiceImpl;->enforceUwbPrivilegedPermission()V

    .line 260
    invoke-direct {p0}, Lcom/android/server/uwb/UwbServiceImpl;->getVendorUwbAdapter()Landroid/uwb/IUwbAdapter;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/uwb/IUwbAdapter;->unregisterAdapterStateCallbacks(Landroid/uwb/IUwbAdapterStateCallbacks;)V

    .line 261
    return-void
.end method
