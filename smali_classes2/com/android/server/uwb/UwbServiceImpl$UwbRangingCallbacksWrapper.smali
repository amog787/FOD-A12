.class Lcom/android/server/uwb/UwbServiceImpl$UwbRangingCallbacksWrapper;
.super Landroid/uwb/IUwbRangingCallbacks$Stub;
.source "UwbServiceImpl.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/uwb/UwbServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UwbRangingCallbacksWrapper"
.end annotation


# instance fields
.field private final mAttributionSource:Landroid/content/AttributionSource;

.field private final mExternalCb:Landroid/uwb/IUwbRangingCallbacks;

.field private mIsValid:Z

.field private final mSessionHandle:Landroid/uwb/SessionHandle;

.field final synthetic this$0:Lcom/android/server/uwb/UwbServiceImpl;


# direct methods
.method constructor <init>(Lcom/android/server/uwb/UwbServiceImpl;Landroid/content/AttributionSource;Landroid/uwb/SessionHandle;Landroid/uwb/IUwbRangingCallbacks;)V
    .locals 0
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .param p3, "sessionHandle"    # Landroid/uwb/SessionHandle;
    .param p4, "externalCb"    # Landroid/uwb/IUwbRangingCallbacks;

    .line 73
    iput-object p1, p0, Lcom/android/server/uwb/UwbServiceImpl$UwbRangingCallbacksWrapper;->this$0:Lcom/android/server/uwb/UwbServiceImpl;

    invoke-direct {p0}, Landroid/uwb/IUwbRangingCallbacks$Stub;-><init>()V

    .line 74
    iput-object p2, p0, Lcom/android/server/uwb/UwbServiceImpl$UwbRangingCallbacksWrapper;->mAttributionSource:Landroid/content/AttributionSource;

    .line 75
    iput-object p3, p0, Lcom/android/server/uwb/UwbServiceImpl$UwbRangingCallbacksWrapper;->mSessionHandle:Landroid/uwb/SessionHandle;

    .line 76
    iput-object p4, p0, Lcom/android/server/uwb/UwbServiceImpl$UwbRangingCallbacksWrapper;->mExternalCb:Landroid/uwb/IUwbRangingCallbacks;

    .line 77
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/uwb/UwbServiceImpl$UwbRangingCallbacksWrapper;->mIsValid:Z

    .line 80
    invoke-direct {p0}, Lcom/android/server/uwb/UwbServiceImpl$UwbRangingCallbacksWrapper;->linkToDeath()V

    .line 81
    return-void
.end method

.method static synthetic access$200(Lcom/android/server/uwb/UwbServiceImpl$UwbRangingCallbacksWrapper;)Landroid/uwb/IUwbRangingCallbacks;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/uwb/UwbServiceImpl$UwbRangingCallbacksWrapper;

    .line 64
    iget-object v0, p0, Lcom/android/server/uwb/UwbServiceImpl$UwbRangingCallbacksWrapper;->mExternalCb:Landroid/uwb/IUwbRangingCallbacks;

    return-object v0
.end method

.method private linkToDeath()V
    .locals 4

    .line 84
    iget-object v0, p0, Lcom/android/server/uwb/UwbServiceImpl$UwbRangingCallbacksWrapper;->mExternalCb:Landroid/uwb/IUwbRangingCallbacks;

    invoke-interface {v0}, Landroid/uwb/IUwbRangingCallbacks;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 86
    .local v0, "binder":Landroid/os/IBinder;
    const/4 v1, 0x0

    :try_start_0
    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    goto :goto_0

    .line 87
    :catch_0
    move-exception v1

    .line 88
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "UwbServiceImpl"

    const-string v3, "Unable to link to client death event."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 90
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private removeClientAndUnlinkToDeath()V
    .locals 3

    .line 94
    iget-object v0, p0, Lcom/android/server/uwb/UwbServiceImpl$UwbRangingCallbacksWrapper;->this$0:Lcom/android/server/uwb/UwbServiceImpl;

    invoke-static {v0}, Lcom/android/server/uwb/UwbServiceImpl;->access$000(Lcom/android/server/uwb/UwbServiceImpl;)Ljava/util/Map;

    move-result-object v0

    monitor-enter v0

    .line 95
    :try_start_0
    iget-object v1, p0, Lcom/android/server/uwb/UwbServiceImpl$UwbRangingCallbacksWrapper;->this$0:Lcom/android/server/uwb/UwbServiceImpl;

    invoke-static {v1}, Lcom/android/server/uwb/UwbServiceImpl;->access$000(Lcom/android/server/uwb/UwbServiceImpl;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/uwb/UwbServiceImpl$UwbRangingCallbacksWrapper;->mSessionHandle:Landroid/uwb/SessionHandle;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    iget-object v0, p0, Lcom/android/server/uwb/UwbServiceImpl$UwbRangingCallbacksWrapper;->mExternalCb:Landroid/uwb/IUwbRangingCallbacks;

    invoke-interface {v0}, Landroid/uwb/IUwbRangingCallbacks;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 98
    .local v0, "binder":Landroid/os/IBinder;
    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 99
    iput-boolean v1, p0, Lcom/android/server/uwb/UwbServiceImpl$UwbRangingCallbacksWrapper;->mIsValid:Z

    .line 100
    return-void

    .line 96
    .end local v0    # "binder":Landroid/os/IBinder;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public declared-synchronized binderDied()V
    .locals 3

    monitor-enter p0

    .line 188
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/uwb/UwbServiceImpl$UwbRangingCallbacksWrapper;->mIsValid:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    .line 189
    :cond_0
    :try_start_1
    const-string v0, "UwbServiceImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Client died: ending session: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/uwb/UwbServiceImpl$UwbRangingCallbacksWrapper;->mSessionHandle:Landroid/uwb/SessionHandle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 191
    :try_start_2
    invoke-direct {p0}, Lcom/android/server/uwb/UwbServiceImpl$UwbRangingCallbacksWrapper;->removeClientAndUnlinkToDeath()V

    .line 192
    iget-object v0, p0, Lcom/android/server/uwb/UwbServiceImpl$UwbRangingCallbacksWrapper;->this$0:Lcom/android/server/uwb/UwbServiceImpl;

    iget-object v1, p0, Lcom/android/server/uwb/UwbServiceImpl$UwbRangingCallbacksWrapper;->mSessionHandle:Landroid/uwb/SessionHandle;

    invoke-virtual {v0, v1}, Lcom/android/server/uwb/UwbServiceImpl;->stopRanging(Landroid/uwb/SessionHandle;)V

    .line 193
    iget-object v0, p0, Lcom/android/server/uwb/UwbServiceImpl$UwbRangingCallbacksWrapper;->this$0:Lcom/android/server/uwb/UwbServiceImpl;

    iget-object v1, p0, Lcom/android/server/uwb/UwbServiceImpl$UwbRangingCallbacksWrapper;->mSessionHandle:Landroid/uwb/SessionHandle;

    invoke-virtual {v0, v1}, Lcom/android/server/uwb/UwbServiceImpl;->closeRanging(Landroid/uwb/SessionHandle;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 196
    goto :goto_0

    .line 194
    .end local p0    # "this":Lcom/android/server/uwb/UwbServiceImpl$UwbRangingCallbacksWrapper;
    :catch_0
    move-exception v0

    .line 195
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string v1, "UwbServiceImpl"

    const-string v2, "Remote exception while handling client death"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 197
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    monitor-exit p0

    return-void

    .line 187
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public synthetic lambda$onRangingResult$0$UwbServiceImpl$UwbRangingCallbacksWrapper()Ljava/lang/Boolean;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 176
    iget-object v0, p0, Lcom/android/server/uwb/UwbServiceImpl$UwbRangingCallbacksWrapper;->this$0:Lcom/android/server/uwb/UwbServiceImpl;

    invoke-static {v0}, Lcom/android/server/uwb/UwbServiceImpl;->access$100(Lcom/android/server/uwb/UwbServiceImpl;)Lcom/android/server/uwb/UwbInjector;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/uwb/UwbServiceImpl$UwbRangingCallbacksWrapper;->mAttributionSource:Landroid/content/AttributionSource;

    const-string v2, "uwb ranging result"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/uwb/UwbInjector;->checkUwbRangingPermissionForDataDelivery(Landroid/content/AttributionSource;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized onRangingClosed(Landroid/uwb/SessionHandle;ILandroid/os/PersistableBundle;)V
    .locals 1
    .param p1, "sessionHandle"    # Landroid/uwb/SessionHandle;
    .param p2, "reason"    # I
    .param p3, "parameters"    # Landroid/os/PersistableBundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 165
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/uwb/UwbServiceImpl$UwbRangingCallbacksWrapper;->mIsValid:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    .line 166
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/uwb/UwbServiceImpl$UwbRangingCallbacksWrapper;->mExternalCb:Landroid/uwb/IUwbRangingCallbacks;

    invoke-interface {v0, p1, p2, p3}, Landroid/uwb/IUwbRangingCallbacks;->onRangingClosed(Landroid/uwb/SessionHandle;ILandroid/os/PersistableBundle;)V

    .line 167
    invoke-direct {p0}, Lcom/android/server/uwb/UwbServiceImpl$UwbRangingCallbacksWrapper;->removeClientAndUnlinkToDeath()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 168
    monitor-exit p0

    return-void

    .line 164
    .end local p0    # "this":Lcom/android/server/uwb/UwbServiceImpl$UwbRangingCallbacksWrapper;
    .end local p1    # "sessionHandle":Landroid/uwb/SessionHandle;
    .end local p2    # "reason":I
    .end local p3    # "parameters":Landroid/os/PersistableBundle;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onRangingOpenFailed(Landroid/uwb/SessionHandle;ILandroid/os/PersistableBundle;)V
    .locals 1
    .param p1, "sessionHandle"    # Landroid/uwb/SessionHandle;
    .param p2, "reason"    # I
    .param p3, "parameters"    # Landroid/os/PersistableBundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 113
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/uwb/UwbServiceImpl$UwbRangingCallbacksWrapper;->mIsValid:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    .line 114
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/uwb/UwbServiceImpl$UwbRangingCallbacksWrapper;->mExternalCb:Landroid/uwb/IUwbRangingCallbacks;

    invoke-interface {v0, p1, p2, p3}, Landroid/uwb/IUwbRangingCallbacks;->onRangingOpenFailed(Landroid/uwb/SessionHandle;ILandroid/os/PersistableBundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 115
    monitor-exit p0

    return-void

    .line 112
    .end local p0    # "this":Lcom/android/server/uwb/UwbServiceImpl$UwbRangingCallbacksWrapper;
    .end local p1    # "sessionHandle":Landroid/uwb/SessionHandle;
    .end local p2    # "reason":I
    .end local p3    # "parameters":Landroid/os/PersistableBundle;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onRangingOpened(Landroid/uwb/SessionHandle;)V
    .locals 1
    .param p1, "sessionHandle"    # Landroid/uwb/SessionHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 106
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/uwb/UwbServiceImpl$UwbRangingCallbacksWrapper;->mIsValid:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    .line 107
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/uwb/UwbServiceImpl$UwbRangingCallbacksWrapper;->mExternalCb:Landroid/uwb/IUwbRangingCallbacks;

    invoke-interface {v0, p1}, Landroid/uwb/IUwbRangingCallbacks;->onRangingOpened(Landroid/uwb/SessionHandle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 108
    monitor-exit p0

    return-void

    .line 105
    .end local p0    # "this":Lcom/android/server/uwb/UwbServiceImpl$UwbRangingCallbacksWrapper;
    .end local p1    # "sessionHandle":Landroid/uwb/SessionHandle;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onRangingReconfigureFailed(Landroid/uwb/SessionHandle;ILandroid/os/PersistableBundle;)V
    .locals 1
    .param p1, "sessionHandle"    # Landroid/uwb/SessionHandle;
    .param p2, "reason"    # I
    .param p3, "parameters"    # Landroid/os/PersistableBundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 143
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/uwb/UwbServiceImpl$UwbRangingCallbacksWrapper;->mIsValid:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    .line 144
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/uwb/UwbServiceImpl$UwbRangingCallbacksWrapper;->mExternalCb:Landroid/uwb/IUwbRangingCallbacks;

    invoke-interface {v0, p1, p2, p3}, Landroid/uwb/IUwbRangingCallbacks;->onRangingReconfigureFailed(Landroid/uwb/SessionHandle;ILandroid/os/PersistableBundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 145
    monitor-exit p0

    return-void

    .line 142
    .end local p0    # "this":Lcom/android/server/uwb/UwbServiceImpl$UwbRangingCallbacksWrapper;
    .end local p1    # "sessionHandle":Landroid/uwb/SessionHandle;
    .end local p2    # "reason":I
    .end local p3    # "parameters":Landroid/os/PersistableBundle;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onRangingReconfigured(Landroid/uwb/SessionHandle;Landroid/os/PersistableBundle;)V
    .locals 1
    .param p1, "sessionHandle"    # Landroid/uwb/SessionHandle;
    .param p2, "parameters"    # Landroid/os/PersistableBundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 136
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/uwb/UwbServiceImpl$UwbRangingCallbacksWrapper;->mIsValid:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    .line 137
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/uwb/UwbServiceImpl$UwbRangingCallbacksWrapper;->mExternalCb:Landroid/uwb/IUwbRangingCallbacks;

    invoke-interface {v0, p1, p2}, Landroid/uwb/IUwbRangingCallbacks;->onRangingReconfigured(Landroid/uwb/SessionHandle;Landroid/os/PersistableBundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 138
    monitor-exit p0

    return-void

    .line 135
    .end local p0    # "this":Lcom/android/server/uwb/UwbServiceImpl$UwbRangingCallbacksWrapper;
    .end local p1    # "sessionHandle":Landroid/uwb/SessionHandle;
    .end local p2    # "parameters":Landroid/os/PersistableBundle;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onRangingResult(Landroid/uwb/SessionHandle;Landroid/uwb/RangingReport;)V
    .locals 4
    .param p1, "sessionHandle"    # Landroid/uwb/SessionHandle;
    .param p2, "rangingReport"    # Landroid/uwb/RangingReport;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 174
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/uwb/UwbServiceImpl$UwbRangingCallbacksWrapper;->mIsValid:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    .line 175
    :cond_0
    :try_start_1
    new-instance v0, Lcom/android/server/uwb/UwbServiceImpl$UwbRangingCallbacksWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/uwb/UwbServiceImpl$UwbRangingCallbacksWrapper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/uwb/UwbServiceImpl$UwbRangingCallbacksWrapper;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 178
    .local v0, "permissionGranted":Z
    if-nez v0, :cond_1

    .line 179
    const-string v1, "UwbServiceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not delivering ranging result because of permission denial"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/uwb/UwbServiceImpl$UwbRangingCallbacksWrapper;->mSessionHandle:Landroid/uwb/SessionHandle;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 181
    monitor-exit p0

    return-void

    .line 183
    .end local p0    # "this":Lcom/android/server/uwb/UwbServiceImpl$UwbRangingCallbacksWrapper;
    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/android/server/uwb/UwbServiceImpl$UwbRangingCallbacksWrapper;->mExternalCb:Landroid/uwb/IUwbRangingCallbacks;

    invoke-interface {v1, p1, p2}, Landroid/uwb/IUwbRangingCallbacks;->onRangingResult(Landroid/uwb/SessionHandle;Landroid/uwb/RangingReport;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 184
    monitor-exit p0

    return-void

    .line 173
    .end local v0    # "permissionGranted":Z
    .end local p1    # "sessionHandle":Landroid/uwb/SessionHandle;
    .end local p2    # "rangingReport":Landroid/uwb/RangingReport;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onRangingStartFailed(Landroid/uwb/SessionHandle;ILandroid/os/PersistableBundle;)V
    .locals 1
    .param p1, "sessionHandle"    # Landroid/uwb/SessionHandle;
    .param p2, "reason"    # I
    .param p3, "parameters"    # Landroid/os/PersistableBundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 128
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/uwb/UwbServiceImpl$UwbRangingCallbacksWrapper;->mIsValid:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    .line 129
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/uwb/UwbServiceImpl$UwbRangingCallbacksWrapper;->mExternalCb:Landroid/uwb/IUwbRangingCallbacks;

    invoke-interface {v0, p1, p2, p3}, Landroid/uwb/IUwbRangingCallbacks;->onRangingStartFailed(Landroid/uwb/SessionHandle;ILandroid/os/PersistableBundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 130
    monitor-exit p0

    return-void

    .line 127
    .end local p0    # "this":Lcom/android/server/uwb/UwbServiceImpl$UwbRangingCallbacksWrapper;
    .end local p1    # "sessionHandle":Landroid/uwb/SessionHandle;
    .end local p2    # "reason":I
    .end local p3    # "parameters":Landroid/os/PersistableBundle;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onRangingStarted(Landroid/uwb/SessionHandle;Landroid/os/PersistableBundle;)V
    .locals 1
    .param p1, "sessionHandle"    # Landroid/uwb/SessionHandle;
    .param p2, "parameters"    # Landroid/os/PersistableBundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 121
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/uwb/UwbServiceImpl$UwbRangingCallbacksWrapper;->mIsValid:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    .line 122
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/uwb/UwbServiceImpl$UwbRangingCallbacksWrapper;->mExternalCb:Landroid/uwb/IUwbRangingCallbacks;

    invoke-interface {v0, p1, p2}, Landroid/uwb/IUwbRangingCallbacks;->onRangingStarted(Landroid/uwb/SessionHandle;Landroid/os/PersistableBundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 123
    monitor-exit p0

    return-void

    .line 120
    .end local p0    # "this":Lcom/android/server/uwb/UwbServiceImpl$UwbRangingCallbacksWrapper;
    .end local p1    # "sessionHandle":Landroid/uwb/SessionHandle;
    .end local p2    # "parameters":Landroid/os/PersistableBundle;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onRangingStopFailed(Landroid/uwb/SessionHandle;ILandroid/os/PersistableBundle;)V
    .locals 1
    .param p1, "sessionHandle"    # Landroid/uwb/SessionHandle;
    .param p2, "reason"    # I
    .param p3, "parameters"    # Landroid/os/PersistableBundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 158
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/uwb/UwbServiceImpl$UwbRangingCallbacksWrapper;->mIsValid:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    .line 159
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/uwb/UwbServiceImpl$UwbRangingCallbacksWrapper;->mExternalCb:Landroid/uwb/IUwbRangingCallbacks;

    invoke-interface {v0, p1, p2, p3}, Landroid/uwb/IUwbRangingCallbacks;->onRangingStopFailed(Landroid/uwb/SessionHandle;ILandroid/os/PersistableBundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 160
    monitor-exit p0

    return-void

    .line 157
    .end local p0    # "this":Lcom/android/server/uwb/UwbServiceImpl$UwbRangingCallbacksWrapper;
    .end local p1    # "sessionHandle":Landroid/uwb/SessionHandle;
    .end local p2    # "reason":I
    .end local p3    # "parameters":Landroid/os/PersistableBundle;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onRangingStopped(Landroid/uwb/SessionHandle;ILandroid/os/PersistableBundle;)V
    .locals 1
    .param p1, "sessionHandle"    # Landroid/uwb/SessionHandle;
    .param p2, "reason"    # I
    .param p3, "parameters"    # Landroid/os/PersistableBundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 151
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/uwb/UwbServiceImpl$UwbRangingCallbacksWrapper;->mIsValid:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    .line 152
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/uwb/UwbServiceImpl$UwbRangingCallbacksWrapper;->mExternalCb:Landroid/uwb/IUwbRangingCallbacks;

    invoke-interface {v0, p1, p2, p3}, Landroid/uwb/IUwbRangingCallbacks;->onRangingStopped(Landroid/uwb/SessionHandle;ILandroid/os/PersistableBundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 153
    monitor-exit p0

    return-void

    .line 150
    .end local p0    # "this":Lcom/android/server/uwb/UwbServiceImpl$UwbRangingCallbacksWrapper;
    .end local p1    # "sessionHandle":Landroid/uwb/SessionHandle;
    .end local p2    # "reason":I
    .end local p3    # "parameters":Landroid/os/PersistableBundle;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
