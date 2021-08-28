.class final Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;
.super Lcom/android/server/infra/AbstractPerUserSystemService;
.source "RotationResolverManagerPerUserService.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/infra/AbstractPerUserSystemService<",
        "Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;",
        "Lcom/android/server/rotationresolver/RotationResolverManagerService;",
        ">;"
    }
.end annotation


# static fields
.field private static final CONNECTION_TTL_MILLIS:J = 0xea60L

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mComponentName:Landroid/content/ComponentName;

.field mCurrentRequest:Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;

.field private mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

.field mRemoteService:Lcom/android/server/rotationresolver/RemoteRotationResolverService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 52
    const-class v0, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/android/server/rotationresolver/RotationResolverManagerService;Ljava/lang/Object;I)V
    .locals 1
    .param p1, "main"    # Lcom/android/server/rotationresolver/RotationResolverManagerService;
    .param p2, "lock"    # Ljava/lang/Object;
    .param p3, "userId"    # I

    .line 72
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/infra/AbstractPerUserSystemService;-><init>(Lcom/android/server/infra/AbstractMasterSystemService;Ljava/lang/Object;I)V

    .line 73
    invoke-virtual {p0}, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/LatencyTracker;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/LatencyTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    .line 74
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;

    .line 48
    iget-object v0, p0, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;)Lcom/android/internal/util/LatencyTracker;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;

    .line 48
    iget-object v0, p0, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;

    .line 48
    iget-object v0, p0, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method private cancelLocked()V
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->mCurrentRequest:Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;

    if-nez v0, :cond_0

    .line 213
    return-void

    .line 215
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;->cancelInternal()V

    .line 216
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->mCurrentRequest:Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;

    .line 217
    return-void
.end method

.method private ensureRemoteServiceInitiated()V
    .locals 8

    .line 161
    iget-object v0, p0, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->mRemoteService:Lcom/android/server/rotationresolver/RemoteRotationResolverService;

    if-nez v0, :cond_0

    .line 162
    new-instance v0, Lcom/android/server/rotationresolver/RemoteRotationResolverService;

    invoke-virtual {p0}, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->mComponentName:Landroid/content/ComponentName;

    .line 163
    invoke-virtual {p0}, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->getUserId()I

    move-result v4

    const-wide/32 v5, 0xea60

    iget-object v7, p0, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->mLock:Ljava/lang/Object;

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/rotationresolver/RemoteRotationResolverService;-><init>(Landroid/content/Context;Landroid/content/ComponentName;IJLjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->mRemoteService:Lcom/android/server/rotationresolver/RemoteRotationResolverService;

    .line 165
    :cond_0
    return-void
.end method


# virtual methods
.method destroyLocked()V
    .locals 2

    .line 78
    invoke-virtual {p0}, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->isVerbose()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    sget-object v0, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->TAG:Ljava/lang/String;

    const-string v1, "destroyLocked()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->mCurrentRequest:Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;

    if-nez v0, :cond_1

    .line 83
    return-void

    .line 85
    :cond_1
    sget-object v0, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->TAG:Ljava/lang/String;

    const-string v1, "Trying to cancel the remote request. Reason: Service destroyed."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    invoke-direct {p0}, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->cancelLocked()V

    .line 88
    iget-object v0, p0, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->mRemoteService:Lcom/android/server/rotationresolver/RemoteRotationResolverService;

    if-eqz v0, :cond_2

    .line 89
    invoke-virtual {v0}, Lcom/android/server/rotationresolver/RemoteRotationResolverService;->unbind()V

    .line 90
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->mRemoteService:Lcom/android/server/rotationresolver/RemoteRotationResolverService;

    .line 92
    :cond_2
    return-void
.end method

.method dumpInternal(Landroid/util/IndentingPrintWriter;)V
    .locals 3
    .param p1, "ipw"    # Landroid/util/IndentingPrintWriter;

    .line 220
    iget-object v0, p0, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 221
    :try_start_0
    iget-object v1, p0, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->mRemoteService:Lcom/android/server/rotationresolver/RemoteRotationResolverService;

    if-eqz v1, :cond_0

    .line 222
    const-string v2, ""

    invoke-virtual {v1, v2, p1}, Lcom/android/server/rotationresolver/RemoteRotationResolverService;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 224
    :cond_0
    iget-object v1, p0, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->mCurrentRequest:Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;

    if-eqz v1, :cond_1

    .line 225
    invoke-virtual {v1, p1}, Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 227
    :cond_1
    monitor-exit v0

    .line 228
    return-void

    .line 227
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getComponentName()Landroid/content/ComponentName;
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->mComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method isServiceAvailableLocked()Z
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->mComponentName:Landroid/content/ComponentName;

    if-nez v0, :cond_0

    .line 181
    invoke-virtual {p0}, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->updateServiceInfoLocked()Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->mComponentName:Landroid/content/ComponentName;

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->mComponentName:Landroid/content/ComponentName;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public synthetic lambda$resolveRotationLocked$0$RotationResolverManagerPerUserService()V
    .locals 3

    .line 146
    iget-object v0, p0, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 147
    :try_start_0
    iget-object v1, p0, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->mCurrentRequest:Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;

    if-eqz v1, :cond_0

    iget-boolean v1, v1, Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;->mIsFulfilled:Z

    if-nez v1, :cond_0

    .line 148
    sget-object v1, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->TAG:Ljava/lang/String;

    const-string v2, "Trying to cancel the remote request. Reason: Client cancelled."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iget-object v1, p0, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->mCurrentRequest:Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;

    invoke-virtual {v1}, Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;->cancelInternal()V

    .line 151
    :cond_0
    monitor-exit v0

    .line 152
    return-void

    .line 151
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected newServiceInfoLocked(Landroid/content/ComponentName;)Landroid/content/pm/ServiceInfo;
    .locals 8
    .param p1, "serviceComponent"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 191
    const-string v0, "android.permission.BIND_ROTATION_RESOLVER_SERVICE"

    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    const/16 v2, 0x80

    iget v3, p0, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->mUserId:I

    invoke-interface {v1, p1, v2, v3}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;

    move-result-object v1

    .line 193
    .local v1, "serviceInfo":Landroid/content/pm/ServiceInfo;
    if-eqz v1, :cond_1

    .line 194
    iget-object v2, v1, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    .line 195
    .local v2, "permission":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 196
    :cond_0
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Service %s requires %s permission. Found %s permission"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 198
    invoke-virtual {v1}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v0, v5, v6

    const/4 v0, 0x2

    iget-object v6, v1, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    aput-object v6, v5, v0

    .line 196
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;
    .end local p1    # "serviceComponent":Landroid/content/ComponentName;
    throw v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    .end local v2    # "permission":Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;
    .restart local p1    # "serviceComponent":Landroid/content/ComponentName;
    :cond_1
    :goto_0
    nop

    .line 207
    return-object v1

    .line 203
    .end local v1    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    :catch_0
    move-exception v0

    .line 204
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Landroid/content/pm/PackageManager$NameNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not get service for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method resolveRotationLocked(Landroid/rotationresolver/RotationResolverInternal$RotationResolverCallbackInternal;Landroid/service/rotationresolver/RotationResolutionRequest;Landroid/os/CancellationSignal;)V
    .locals 3
    .param p1, "callbackInternal"    # Landroid/rotationresolver/RotationResolverInternal$RotationResolverCallbackInternal;
    .param p2, "request"    # Landroid/service/rotationresolver/RotationResolutionRequest;
    .param p3, "cancellationSignalInternal"    # Landroid/os/CancellationSignal;

    .line 101
    invoke-virtual {p0}, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->isServiceAvailableLocked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 102
    sget-object v0, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->TAG:Ljava/lang/String;

    const-string v1, "Service is not available at this moment."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/rotationresolver/RotationResolverInternal$RotationResolverCallbackInternal;->onFailure(I)V

    .line 104
    invoke-virtual {p2}, Landroid/service/rotationresolver/RotationResolutionRequest;->getProposedRotation()I

    move-result v0

    invoke-virtual {p2}, Landroid/service/rotationresolver/RotationResolutionRequest;->getCurrentRotation()I

    move-result v1

    const/4 v2, 0x7

    invoke-static {v0, v1, v2}, Lcom/android/server/rotationresolver/RotationResolverManagerService;->logRotationStats(III)V

    .line 106
    return-void

    .line 109
    :cond_0
    invoke-direct {p0}, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->ensureRemoteServiceInitiated()V

    .line 112
    iget-object v0, p0, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->mCurrentRequest:Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;

    if-eqz v0, :cond_1

    iget-boolean v0, v0, Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;->mIsFulfilled:Z

    if-nez v0, :cond_1

    .line 113
    invoke-direct {p0}, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->cancelLocked()V

    .line 116
    :cond_1
    iget-object v0, p0, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 117
    :try_start_0
    iget-object v1, p0, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Lcom/android/internal/util/LatencyTracker;->onActionStart(I)V

    .line 118
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    new-instance v0, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService$1;

    invoke-direct {v0, p0, p1}, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService$1;-><init>(Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;Landroid/rotationresolver/RotationResolverInternal$RotationResolverCallbackInternal;)V

    .line 142
    .local v0, "wrapper":Landroid/rotationresolver/RotationResolverInternal$RotationResolverCallbackInternal;
    new-instance v1, Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;

    invoke-direct {v1, v0, p2, p3}, Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;-><init>(Landroid/rotationresolver/RotationResolverInternal$RotationResolverCallbackInternal;Landroid/service/rotationresolver/RotationResolutionRequest;Landroid/os/CancellationSignal;)V

    iput-object v1, p0, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->mCurrentRequest:Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;

    .line 145
    new-instance v1, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;)V

    invoke-virtual {p3, v1}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    .line 155
    iget-object v1, p0, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->mRemoteService:Lcom/android/server/rotationresolver/RemoteRotationResolverService;

    iget-object v2, p0, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->mCurrentRequest:Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;

    invoke-virtual {v1, v2}, Lcom/android/server/rotationresolver/RemoteRotationResolverService;->resolveRotationLocked(Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;)V

    .line 156
    iget-object v1, p0, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->mCurrentRequest:Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;->mIsDispatched:Z

    .line 157
    return-void

    .line 118
    .end local v0    # "wrapper":Landroid/rotationresolver/RotationResolverInternal$RotationResolverCallbackInternal;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
