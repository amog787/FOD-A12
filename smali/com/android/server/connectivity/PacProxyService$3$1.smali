.class Lcom/android/server/connectivity/PacProxyService$3$1;
.super Lcom/android/net/IProxyPortListener$Stub;
.source "PacProxyService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/connectivity/PacProxyService$3;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/connectivity/PacProxyService$3;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/PacProxyService$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/connectivity/PacProxyService$3;

    .line 375
    iput-object p1, p0, Lcom/android/server/connectivity/PacProxyService$3$1;->this$1:Lcom/android/server/connectivity/PacProxyService$3;

    invoke-direct {p0}, Lcom/android/net/IProxyPortListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public setProxyPort(I)V
    .locals 3
    .param p1, "port"    # I

    .line 378
    iget-object v0, p0, Lcom/android/server/connectivity/PacProxyService$3$1;->this$1:Lcom/android/server/connectivity/PacProxyService$3;

    iget-object v0, v0, Lcom/android/server/connectivity/PacProxyService$3;->this$0:Lcom/android/server/connectivity/PacProxyService;

    invoke-static {v0}, Lcom/android/server/connectivity/PacProxyService;->access$1200(Lcom/android/server/connectivity/PacProxyService;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 383
    iget-object v0, p0, Lcom/android/server/connectivity/PacProxyService$3$1;->this$1:Lcom/android/server/connectivity/PacProxyService$3;

    iget-object v0, v0, Lcom/android/server/connectivity/PacProxyService$3;->this$0:Lcom/android/server/connectivity/PacProxyService;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/server/connectivity/PacProxyService;->access$1302(Lcom/android/server/connectivity/PacProxyService;Z)Z

    .line 385
    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/PacProxyService$3$1;->this$1:Lcom/android/server/connectivity/PacProxyService$3;

    iget-object v0, v0, Lcom/android/server/connectivity/PacProxyService$3;->this$0:Lcom/android/server/connectivity/PacProxyService;

    invoke-static {v0, p1}, Lcom/android/server/connectivity/PacProxyService;->access$1202(Lcom/android/server/connectivity/PacProxyService;I)I

    .line 386
    const-string v0, "PacProxyService"

    if-eq p1, v1, :cond_1

    .line 387
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Local proxy is bound on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    iget-object v0, p0, Lcom/android/server/connectivity/PacProxyService$3$1;->this$1:Lcom/android/server/connectivity/PacProxyService$3;

    iget-object v0, v0, Lcom/android/server/connectivity/PacProxyService$3;->this$0:Lcom/android/server/connectivity/PacProxyService;

    invoke-static {v0}, Lcom/android/server/connectivity/PacProxyService;->access$600(Lcom/android/server/connectivity/PacProxyService;)V

    goto :goto_0

    .line 390
    :cond_1
    const-string v1, "Received invalid port from Local Proxy, PAC will not be operational"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    :goto_0
    return-void
.end method
