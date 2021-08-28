.class Lcom/android/server/connectivity/PacProxyService$2;
.super Ljava/lang/Object;
.source "PacProxyService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/connectivity/PacProxyService;->bind()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/PacProxyService;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/PacProxyService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/connectivity/PacProxyService;

    .line 326
    iput-object p1, p0, Lcom/android/server/connectivity/PacProxyService$2;->this$0:Lcom/android/server/connectivity/PacProxyService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "binder"    # Landroid/os/IBinder;

    .line 336
    iget-object v0, p0, Lcom/android/server/connectivity/PacProxyService$2;->this$0:Lcom/android/server/connectivity/PacProxyService;

    invoke-static {v0}, Lcom/android/server/connectivity/PacProxyService;->access$200(Lcom/android/server/connectivity/PacProxyService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 338
    :try_start_0
    const-string v1, "PacProxyService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding service com.android.net.IProxyService "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    invoke-interface {p2}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 338
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 342
    goto :goto_0

    .line 357
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 340
    :catch_0
    move-exception v1

    .line 341
    .local v1, "e1":Landroid/os/RemoteException;
    :try_start_1
    const-string v2, "PacProxyService"

    const-string v3, "Remote Exception"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 343
    .end local v1    # "e1":Landroid/os/RemoteException;
    :goto_0
    const-string v1, "com.android.net.IProxyService"

    invoke-static {v1, p2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 344
    iget-object v1, p0, Lcom/android/server/connectivity/PacProxyService$2;->this$0:Lcom/android/server/connectivity/PacProxyService;

    invoke-static {p2}, Lcom/android/net/IProxyService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/net/IProxyService;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/connectivity/PacProxyService;->access$1102(Lcom/android/server/connectivity/PacProxyService;Lcom/android/net/IProxyService;)Lcom/android/net/IProxyService;

    .line 345
    iget-object v1, p0, Lcom/android/server/connectivity/PacProxyService$2;->this$0:Lcom/android/server/connectivity/PacProxyService;

    invoke-static {v1}, Lcom/android/server/connectivity/PacProxyService;->access$1100(Lcom/android/server/connectivity/PacProxyService;)Lcom/android/net/IProxyService;

    move-result-object v1

    if-nez v1, :cond_0

    .line 346
    const-string v1, "PacProxyService"

    const-string v2, "No proxy service"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 351
    :cond_0
    iget-object v1, p0, Lcom/android/server/connectivity/PacProxyService$2;->this$0:Lcom/android/server/connectivity/PacProxyService;

    invoke-static {v1}, Lcom/android/server/connectivity/PacProxyService;->access$300(Lcom/android/server/connectivity/PacProxyService;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 352
    iget-object v1, p0, Lcom/android/server/connectivity/PacProxyService$2;->this$0:Lcom/android/server/connectivity/PacProxyService;

    invoke-static {v1}, Lcom/android/server/connectivity/PacProxyService;->access$300(Lcom/android/server/connectivity/PacProxyService;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/connectivity/PacProxyService;->access$400(Lcom/android/server/connectivity/PacProxyService;Ljava/lang/String;)V

    goto :goto_1

    .line 354
    :cond_1
    iget-object v1, p0, Lcom/android/server/connectivity/PacProxyService$2;->this$0:Lcom/android/server/connectivity/PacProxyService;

    invoke-static {v1}, Lcom/android/server/connectivity/PacProxyService;->access$1000(Lcom/android/server/connectivity/PacProxyService;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/connectivity/PacProxyService$2;->this$0:Lcom/android/server/connectivity/PacProxyService;

    invoke-static {v2}, Lcom/android/server/connectivity/PacProxyService;->access$900(Lcom/android/server/connectivity/PacProxyService;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 357
    :goto_1
    monitor-exit v0

    .line 358
    return-void

    .line 357
    :goto_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "component"    # Landroid/content/ComponentName;

    .line 329
    iget-object v0, p0, Lcom/android/server/connectivity/PacProxyService$2;->this$0:Lcom/android/server/connectivity/PacProxyService;

    invoke-static {v0}, Lcom/android/server/connectivity/PacProxyService;->access$200(Lcom/android/server/connectivity/PacProxyService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 330
    :try_start_0
    iget-object v1, p0, Lcom/android/server/connectivity/PacProxyService$2;->this$0:Lcom/android/server/connectivity/PacProxyService;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/connectivity/PacProxyService;->access$1102(Lcom/android/server/connectivity/PacProxyService;Lcom/android/net/IProxyService;)Lcom/android/net/IProxyService;

    .line 331
    monitor-exit v0

    .line 332
    return-void

    .line 331
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
