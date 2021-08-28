.class Lcom/android/server/location/contexthub/ContextHubTransactionManager$3;
.super Lcom/android/server/location/contexthub/ContextHubServiceTransaction;
.source "ContextHubTransactionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/contexthub/ContextHubTransactionManager;->createEnableTransaction(IJLandroid/hardware/location/IContextHubTransactionCallback;Ljava/lang/String;)Lcom/android/server/location/contexthub/ContextHubServiceTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

.field final synthetic val$contextHubId:I

.field final synthetic val$nanoAppId:J

.field final synthetic val$onCompleteCallback:Landroid/hardware/location/IContextHubTransactionCallback;


# direct methods
.method constructor <init>(Lcom/android/server/location/contexthub/ContextHubTransactionManager;IILjava/lang/String;IJLandroid/hardware/location/IContextHubTransactionCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/location/contexthub/ContextHubTransactionManager;
    .param p2, "id"    # I
    .param p3, "type"    # I
    .param p4, "packageName"    # Ljava/lang/String;

    .line 236
    iput-object p1, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$3;->this$0:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    iput p5, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$3;->val$contextHubId:I

    iput-wide p6, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$3;->val$nanoAppId:J

    iput-object p8, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$3;->val$onCompleteCallback:Landroid/hardware/location/IContextHubTransactionCallback;

    invoke-direct {p0, p2, p3, p4}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;-><init>(IILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method onTransact()I
    .locals 5

    .line 240
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$3;->this$0:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    invoke-static {v0}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->access$100(Lcom/android/server/location/contexthub/ContextHubTransactionManager;)Landroid/hardware/contexthub/V1_0/IContexthub;

    move-result-object v0

    iget v1, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$3;->val$contextHubId:I

    iget-wide v2, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$3;->val$nanoAppId:J

    .line 241
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubTransactionManager$3;->getTransactionId()I

    move-result v4

    .line 240
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/hardware/contexthub/V1_0/IContexthub;->enableNanoApp(IJI)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 242
    :catch_0
    move-exception v0

    .line 243
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteException while trying to enable nanoapp with ID 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$3;->val$nanoAppId:J

    .line 244
    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 243
    const-string v2, "ContextHubTransactionManager"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 245
    const/4 v1, 0x1

    return v1
.end method

.method onTransactionComplete(I)V
    .locals 3
    .param p1, "result"    # I

    .line 252
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$3;->val$onCompleteCallback:Landroid/hardware/location/IContextHubTransactionCallback;

    invoke-interface {v0, p1}, Landroid/hardware/location/IContextHubTransactionCallback;->onTransactionComplete(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    goto :goto_0

    .line 253
    :catch_0
    move-exception v0

    .line 254
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ContextHubTransactionManager"

    const-string v2, "RemoteException while calling client onTransactionComplete"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 256
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method