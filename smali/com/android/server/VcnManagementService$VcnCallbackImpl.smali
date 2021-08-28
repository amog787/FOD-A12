.class Lcom/android/server/VcnManagementService$VcnCallbackImpl;
.super Ljava/lang/Object;
.source "VcnManagementService.java"

# interfaces
.implements Lcom/android/server/VcnManagementService$VcnCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/VcnManagementService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VcnCallbackImpl"
.end annotation


# instance fields
.field private final mSubGroup:Landroid/os/ParcelUuid;

.field final synthetic this$0:Lcom/android/server/VcnManagementService;


# direct methods
.method private constructor <init>(Lcom/android/server/VcnManagementService;Landroid/os/ParcelUuid;)V
    .locals 0
    .param p2, "subGroup"    # Landroid/os/ParcelUuid;

    .line 1175
    iput-object p1, p0, Lcom/android/server/VcnManagementService$VcnCallbackImpl;->this$0:Lcom/android/server/VcnManagementService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1176
    const-string p1, "Missing subGroup"

    invoke-static {p2, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object p1, p2

    check-cast p1, Landroid/os/ParcelUuid;

    iput-object p1, p0, Lcom/android/server/VcnManagementService$VcnCallbackImpl;->mSubGroup:Landroid/os/ParcelUuid;

    .line 1177
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/VcnManagementService;Landroid/os/ParcelUuid;Lcom/android/server/VcnManagementService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/VcnManagementService;
    .param p2, "x1"    # Landroid/os/ParcelUuid;
    .param p3, "x2"    # Lcom/android/server/VcnManagementService$1;

    .line 1172
    invoke-direct {p0, p1, p2}, Lcom/android/server/VcnManagementService$VcnCallbackImpl;-><init>(Lcom/android/server/VcnManagementService;Landroid/os/ParcelUuid;)V

    return-void
.end method

.method static synthetic lambda$onGatewayConnectionError$0(Lcom/android/server/VcnManagementService$VcnStatusCallbackInfo;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "cbInfo"    # Lcom/android/server/VcnManagementService$VcnStatusCallbackInfo;
    .param p1, "gatewayConnectionName"    # Ljava/lang/String;
    .param p2, "errorCode"    # I
    .param p3, "exceptionClass"    # Ljava/lang/String;
    .param p4, "exceptionMessage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1212
    iget-object v0, p0, Lcom/android/server/VcnManagementService$VcnStatusCallbackInfo;->mCallback:Landroid/net/vcn/IVcnStatusCallback;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/net/vcn/IVcnStatusCallback;->onGatewayConnectionError(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onGatewayConnectionError(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "gatewayConnectionName"    # Ljava/lang/String;
    .param p2, "errorCode"    # I
    .param p3, "exceptionClass"    # Ljava/lang/String;
    .param p4, "exceptionMessage"    # Ljava/lang/String;

    .line 1201
    iget-object v0, p0, Lcom/android/server/VcnManagementService$VcnCallbackImpl;->this$0:Lcom/android/server/VcnManagementService;

    invoke-static {v0}, Lcom/android/server/VcnManagementService;->access$400(Lcom/android/server/VcnManagementService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1203
    :try_start_0
    iget-object v1, p0, Lcom/android/server/VcnManagementService$VcnCallbackImpl;->this$0:Lcom/android/server/VcnManagementService;

    invoke-static {v1}, Lcom/android/server/VcnManagementService;->access$800(Lcom/android/server/VcnManagementService;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/VcnManagementService$VcnCallbackImpl;->mSubGroup:Landroid/os/ParcelUuid;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1204
    monitor-exit v0

    return-void

    .line 1208
    :cond_0
    iget-object v1, p0, Lcom/android/server/VcnManagementService$VcnCallbackImpl;->this$0:Lcom/android/server/VcnManagementService;

    invoke-static {v1}, Lcom/android/server/VcnManagementService;->access$1700(Lcom/android/server/VcnManagementService;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/VcnManagementService$VcnStatusCallbackInfo;

    .line 1209
    .local v2, "cbInfo":Lcom/android/server/VcnManagementService$VcnStatusCallbackInfo;
    iget-object v3, p0, Lcom/android/server/VcnManagementService$VcnCallbackImpl;->this$0:Lcom/android/server/VcnManagementService;

    iget-object v4, p0, Lcom/android/server/VcnManagementService$VcnCallbackImpl;->mSubGroup:Landroid/os/ParcelUuid;

    invoke-static {v3, v2, v4}, Lcom/android/server/VcnManagementService;->access$1800(Lcom/android/server/VcnManagementService;Lcom/android/server/VcnManagementService$VcnStatusCallbackInfo;Landroid/os/ParcelUuid;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1210
    new-instance v9, Lcom/android/server/VcnManagementService$VcnCallbackImpl$$ExternalSyntheticLambda0;

    move-object v3, v9

    move-object v4, v2

    move-object v5, p1

    move v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-direct/range {v3 .. v8}, Lcom/android/server/VcnManagementService$VcnCallbackImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/VcnManagementService$VcnStatusCallbackInfo;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {v9}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 1218
    .end local v2    # "cbInfo":Lcom/android/server/VcnManagementService$VcnStatusCallbackInfo;
    :cond_1
    goto :goto_0

    .line 1219
    :cond_2
    monitor-exit v0

    .line 1220
    return-void

    .line 1219
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onSafeModeStatusChanged(Z)V
    .locals 4
    .param p1, "isInSafeMode"    # Z

    .line 1181
    iget-object v0, p0, Lcom/android/server/VcnManagementService$VcnCallbackImpl;->this$0:Lcom/android/server/VcnManagementService;

    invoke-static {v0}, Lcom/android/server/VcnManagementService;->access$400(Lcom/android/server/VcnManagementService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1183
    :try_start_0
    iget-object v1, p0, Lcom/android/server/VcnManagementService$VcnCallbackImpl;->this$0:Lcom/android/server/VcnManagementService;

    invoke-static {v1}, Lcom/android/server/VcnManagementService;->access$800(Lcom/android/server/VcnManagementService;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/VcnManagementService$VcnCallbackImpl;->mSubGroup:Landroid/os/ParcelUuid;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1184
    monitor-exit v0

    return-void

    .line 1188
    :cond_0
    if-eqz p1, :cond_1

    const/4 v1, 0x3

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    .line 1190
    .local v1, "status":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/VcnManagementService$VcnCallbackImpl;->this$0:Lcom/android/server/VcnManagementService;

    invoke-static {v2}, Lcom/android/server/VcnManagementService;->access$1200(Lcom/android/server/VcnManagementService;)V

    .line 1191
    iget-object v2, p0, Lcom/android/server/VcnManagementService$VcnCallbackImpl;->this$0:Lcom/android/server/VcnManagementService;

    iget-object v3, p0, Lcom/android/server/VcnManagementService$VcnCallbackImpl;->mSubGroup:Landroid/os/ParcelUuid;

    invoke-static {v2, v3, v1}, Lcom/android/server/VcnManagementService;->access$1400(Lcom/android/server/VcnManagementService;Landroid/os/ParcelUuid;I)V

    .line 1192
    .end local v1    # "status":I
    monitor-exit v0

    .line 1193
    return-void

    .line 1192
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
