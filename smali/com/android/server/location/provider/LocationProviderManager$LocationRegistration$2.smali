.class Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$2;
.super Ljava/lang/Object;
.source "LocationProviderManager.java"

# interfaces
.implements Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->acceptLocationChange(Landroid/location/LocationResult;)Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation<",
        "Lcom/android/server/location/provider/LocationProviderManager$LocationTransport;",
        ">;"
    }
.end annotation


# instance fields
.field private mUseWakeLock:Z

.field final synthetic this$1:Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;

.field final synthetic val$locationResult:Landroid/location/LocationResult;


# direct methods
.method constructor <init>(Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;Landroid/location/LocationResult;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;

    .line 894
    iput-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$2;->this$1:Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;

    iput-object p2, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$2;->val$locationResult:Landroid/location/LocationResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPostExecute(Z)V
    .locals 4
    .param p1, "success"    # Z

    .line 937
    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$2;->mUseWakeLock:Z

    if-eqz v0, :cond_0

    .line 938
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$2;->this$1:Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;

    iget-object v0, v0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 941
    :cond_0
    if-eqz p1, :cond_3

    .line 944
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$2;->this$1:Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;

    invoke-static {v0}, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->access$104(Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$2;->this$1:Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;

    invoke-virtual {v1}, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->getRequest()Landroid/location/LocationRequest;

    move-result-object v1

    invoke-virtual {v1}, Landroid/location/LocationRequest;->getMaxUpdates()I

    move-result v1

    if-lt v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 945
    .local v0, "remove":Z
    :goto_0
    if-eqz v0, :cond_3

    .line 946
    sget-boolean v1, Lcom/android/server/location/LocationManagerService;->D:Z

    if-eqz v1, :cond_2

    .line 947
    const-string v1, "LocationManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$2;->this$1:Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;

    iget-object v3, v3, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    iget-object v3, v3, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " provider registration "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$2;->this$1:Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;

    invoke-virtual {v3}, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " finished after "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$2;->this$1:Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;

    .line 948
    invoke-static {v3}, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->access$100(Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " updates"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 947
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    :cond_2
    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$2;->this$1:Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;

    iget-object v1, v1, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    iget-object v1, v1, Lcom/android/server/location/provider/LocationProviderManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 952
    :try_start_0
    iget-object v2, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$2;->this$1:Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;

    invoke-virtual {v2}, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->remove()V

    .line 953
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 956
    .end local v0    # "remove":Z
    :cond_3
    :goto_1
    return-void
.end method

.method public onPreExecute()V
    .locals 4

    .line 900
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$2;->mUseWakeLock:Z

    .line 901
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$2;->val$locationResult:Landroid/location/LocationResult;

    invoke-virtual {v0}, Landroid/location/LocationResult;->size()I

    move-result v0

    .line 902
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 903
    iget-object v2, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$2;->val$locationResult:Landroid/location/LocationResult;

    invoke-virtual {v2, v1}, Landroid/location/LocationResult;->get(I)Landroid/location/Location;

    move-result-object v2

    invoke-virtual {v2}, Landroid/location/Location;->isMock()Z

    move-result v2

    if-nez v2, :cond_0

    .line 904
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$2;->mUseWakeLock:Z

    .line 905
    goto :goto_1

    .line 902
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 910
    .end local v1    # "i":I
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$2;->this$1:Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;

    iget-object v2, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$2;->val$locationResult:Landroid/location/LocationResult;

    invoke-virtual {v2}, Landroid/location/LocationResult;->getLastLocation()Landroid/location/Location;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->setLastDeliveredLocation(Landroid/location/Location;)V

    .line 913
    iget-boolean v1, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$2;->mUseWakeLock:Z

    if-eqz v1, :cond_2

    .line 914
    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$2;->this$1:Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;

    iget-object v1, v1, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v2, 0x7530

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 916
    :cond_2
    return-void
.end method

.method public operate(Lcom/android/server/location/provider/LocationProviderManager$LocationTransport;)V
    .locals 5
    .param p1, "listener"    # Lcom/android/server/location/provider/LocationProviderManager$LocationTransport;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 923
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$2;->this$1:Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;

    invoke-virtual {v0}, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/util/identity/CallerIdentity;->getPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 924
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$2;->val$locationResult:Landroid/location/LocationResult;

    invoke-virtual {v0}, Landroid/location/LocationResult;->deepCopy()Landroid/location/LocationResult;

    move-result-object v0

    .local v0, "deliverLocationResult":Landroid/location/LocationResult;
    goto :goto_0

    .line 926
    .end local v0    # "deliverLocationResult":Landroid/location/LocationResult;
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$2;->val$locationResult:Landroid/location/LocationResult;

    .line 929
    .restart local v0    # "deliverLocationResult":Landroid/location/LocationResult;
    :goto_0
    nop

    .line 930
    iget-boolean v1, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$2;->mUseWakeLock:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$2;->this$1:Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;

    iget-object v1, v1, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$2$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$2$$ExternalSyntheticLambda0;-><init>(Landroid/os/PowerManager$WakeLock;)V

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 929
    :goto_1
    invoke-interface {p1, v0, v2}, Lcom/android/server/location/provider/LocationProviderManager$LocationTransport;->deliverOnLocationChanged(Landroid/location/LocationResult;Ljava/lang/Runnable;)V

    .line 931
    sget-object v1, Lcom/android/server/location/eventlog/LocationEventLog;->EVENT_LOG:Lcom/android/server/location/eventlog/LocationEventLog;

    iget-object v2, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$2;->this$1:Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;

    iget-object v2, v2, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    iget-object v2, v2, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$2;->val$locationResult:Landroid/location/LocationResult;

    invoke-virtual {v3}, Landroid/location/LocationResult;->size()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$2;->this$1:Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;

    .line 932
    invoke-virtual {v4}, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v4

    .line 931
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/location/eventlog/LocationEventLog;->logProviderDeliveredLocations(Ljava/lang/String;ILandroid/location/util/identity/CallerIdentity;)V

    .line 933
    return-void
.end method

.method public bridge synthetic operate(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 894
    check-cast p1, Lcom/android/server/location/provider/LocationProviderManager$LocationTransport;

    invoke-virtual {p0, p1}, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$2;->operate(Lcom/android/server/location/provider/LocationProviderManager$LocationTransport;)V

    return-void
.end method
