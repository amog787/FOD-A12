.class Lcom/android/server/location/contexthub/ContextHubTransactionManager$2;
.super Lcom/android/server/location/contexthub/ContextHubServiceTransaction;
.source "ContextHubTransactionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/contexthub/ContextHubTransactionManager;->createUnloadTransaction(IJLandroid/hardware/location/IContextHubTransactionCallback;Ljava/lang/String;)Lcom/android/server/location/contexthub/ContextHubServiceTransaction;
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
.method constructor <init>(Lcom/android/server/location/contexthub/ContextHubTransactionManager;IIJLjava/lang/String;IJLandroid/hardware/location/IContextHubTransactionCallback;)V
    .locals 8
    .param p1, "this$0"    # Lcom/android/server/location/contexthub/ContextHubTransactionManager;
    .param p2, "id"    # I
    .param p3, "type"    # I
    .param p4, "nanoAppId"    # J
    .param p6, "packageName"    # Ljava/lang/String;

    .line 193
    move-object v6, p0

    move-object v7, p1

    iput-object v7, v6, Lcom/android/server/location/contexthub/ContextHubTransactionManager$2;->this$0:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    move v0, p7

    iput v0, v6, Lcom/android/server/location/contexthub/ContextHubTransactionManager$2;->val$contextHubId:I

    move-wide/from16 v0, p8

    iput-wide v0, v6, Lcom/android/server/location/contexthub/ContextHubTransactionManager$2;->val$nanoAppId:J

    move-object/from16 v0, p10

    iput-object v0, v6, Lcom/android/server/location/contexthub/ContextHubTransactionManager$2;->val$onCompleteCallback:Landroid/hardware/location/IContextHubTransactionCallback;

    move-object v0, p0

    move v1, p2

    move v2, p3

    move-wide v3, p4

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;-><init>(IIJLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method onTransact()I
    .locals 5

    .line 197
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$2;->this$0:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    invoke-static {v0}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->access$100(Lcom/android/server/location/contexthub/ContextHubTransactionManager;)Landroid/hardware/contexthub/V1_0/IContexthub;

    move-result-object v0

    iget v1, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$2;->val$contextHubId:I

    iget-wide v2, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$2;->val$nanoAppId:J

    .line 198
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubTransactionManager$2;->getTransactionId()I

    move-result v4

    .line 197
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/hardware/contexthub/V1_0/IContexthub;->unloadNanoApp(IJI)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 199
    :catch_0
    move-exception v0

    .line 200
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteException while trying to unload nanoapp with ID 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$2;->val$nanoAppId:J

    .line 201
    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 200
    const-string v2, "ContextHubTransactionManager"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 202
    const/4 v1, 0x1

    return v1
.end method

.method onTransactionComplete(I)V
    .locals 4
    .param p1, "result"    # I

    .line 208
    if-nez p1, :cond_0

    .line 209
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$2;->this$0:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    invoke-static {v0}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->access$200(Lcom/android/server/location/contexthub/ContextHubTransactionManager;)Lcom/android/server/location/contexthub/NanoAppStateManager;

    move-result-object v0

    iget v1, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$2;->val$contextHubId:I

    iget-wide v2, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$2;->val$nanoAppId:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/location/contexthub/NanoAppStateManager;->removeNanoAppInstance(IJ)V

    .line 212
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$2;->val$onCompleteCallback:Landroid/hardware/location/IContextHubTransactionCallback;

    invoke-interface {v0, p1}, Landroid/hardware/location/IContextHubTransactionCallback;->onTransactionComplete(I)V

    .line 213
    if-nez p1, :cond_1

    .line 214
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$2;->this$0:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    invoke-static {v0}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->access$300(Lcom/android/server/location/contexthub/ContextHubTransactionManager;)Lcom/android/server/location/contexthub/ContextHubClientManager;

    move-result-object v0

    iget v1, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$2;->val$contextHubId:I

    iget-wide v2, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$2;->val$nanoAppId:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/location/contexthub/ContextHubClientManager;->onNanoAppUnloaded(IJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    :cond_1
    goto :goto_0

    .line 216
    :catch_0
    move-exception v0

    .line 217
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ContextHubTransactionManager"

    const-string v2, "RemoteException while calling client onTransactionComplete"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 219
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method
