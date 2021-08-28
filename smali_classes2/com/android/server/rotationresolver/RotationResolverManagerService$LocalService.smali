.class final Lcom/android/server/rotationresolver/RotationResolverManagerService$LocalService;
.super Landroid/rotationresolver/RotationResolverInternal;
.source "RotationResolverManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/rotationresolver/RotationResolverManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LocalService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/rotationresolver/RotationResolverManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/rotationresolver/RotationResolverManagerService;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/android/server/rotationresolver/RotationResolverManagerService$LocalService;->this$0:Lcom/android/server/rotationresolver/RotationResolverManagerService;

    invoke-direct {p0}, Landroid/rotationresolver/RotationResolverInternal;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/rotationresolver/RotationResolverManagerService;Lcom/android/server/rotationresolver/RotationResolverManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/rotationresolver/RotationResolverManagerService;
    .param p2, "x1"    # Lcom/android/server/rotationresolver/RotationResolverManagerService$1;

    .line 150
    invoke-direct {p0, p1}, Lcom/android/server/rotationresolver/RotationResolverManagerService$LocalService;-><init>(Lcom/android/server/rotationresolver/RotationResolverManagerService;)V

    return-void
.end method


# virtual methods
.method public isRotationResolverSupported()Z
    .locals 2

    .line 153
    iget-object v0, p0, Lcom/android/server/rotationresolver/RotationResolverManagerService$LocalService;->this$0:Lcom/android/server/rotationresolver/RotationResolverManagerService;

    invoke-static {v0}, Lcom/android/server/rotationresolver/RotationResolverManagerService;->access$200(Lcom/android/server/rotationresolver/RotationResolverManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 154
    :try_start_0
    iget-object v1, p0, Lcom/android/server/rotationresolver/RotationResolverManagerService$LocalService;->this$0:Lcom/android/server/rotationresolver/RotationResolverManagerService;

    iget-boolean v1, v1, Lcom/android/server/rotationresolver/RotationResolverManagerService;->mIsServiceEnabled:Z

    monitor-exit v0

    return v1

    .line 155
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public resolveRotation(Landroid/rotationresolver/RotationResolverInternal$RotationResolverCallbackInternal;Ljava/lang/String;IIJLandroid/os/CancellationSignal;)V
    .locals 13
    .param p1, "callbackInternal"    # Landroid/rotationresolver/RotationResolverInternal$RotationResolverCallbackInternal;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "proposedRotation"    # I
    .param p4, "currentRotation"    # I
    .param p5, "timeout"    # J
    .param p7, "cancellationSignalInternal"    # Landroid/os/CancellationSignal;

    .line 163
    move-object v1, p0

    move-object v2, p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    invoke-static/range {p7 .. p7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    iget-object v0, v1, Lcom/android/server/rotationresolver/RotationResolverManagerService$LocalService;->this$0:Lcom/android/server/rotationresolver/RotationResolverManagerService;

    invoke-static {v0}, Lcom/android/server/rotationresolver/RotationResolverManagerService;->access$300(Lcom/android/server/rotationresolver/RotationResolverManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 166
    :try_start_0
    iget-object v0, v1, Lcom/android/server/rotationresolver/RotationResolverManagerService$LocalService;->this$0:Lcom/android/server/rotationresolver/RotationResolverManagerService;

    invoke-static {v0}, Lcom/android/server/rotationresolver/RotationResolverManagerService;->access$400(Lcom/android/server/rotationresolver/RotationResolverManagerService;)Landroid/hardware/SensorPrivacyManager;

    move-result-object v0

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Landroid/hardware/SensorPrivacyManager;->isSensorPrivacyEnabled(I)Z

    move-result v0

    const/4 v4, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v4

    .line 168
    .local v0, "isCameraAvailable":Z
    :goto_0
    iget-object v5, v1, Lcom/android/server/rotationresolver/RotationResolverManagerService$LocalService;->this$0:Lcom/android/server/rotationresolver/RotationResolverManagerService;

    iget-boolean v5, v5, Lcom/android/server/rotationresolver/RotationResolverManagerService;->mIsServiceEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v5, :cond_2

    if-eqz v0, :cond_2

    .line 169
    :try_start_1
    iget-object v4, v1, Lcom/android/server/rotationresolver/RotationResolverManagerService$LocalService;->this$0:Lcom/android/server/rotationresolver/RotationResolverManagerService;

    .line 171
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    .line 170
    invoke-static {v4, v5}, Lcom/android/server/rotationresolver/RotationResolverManagerService;->access$500(Lcom/android/server/rotationresolver/RotationResolverManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v4

    check-cast v4, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 173
    .local v4, "service":Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;
    if-nez p2, :cond_1

    .line 174
    :try_start_2
    new-instance v12, Landroid/service/rotationresolver/RotationResolutionRequest;

    const-string v6, ""

    const/4 v9, 0x1

    move-object v5, v12

    move/from16 v7, p4

    move/from16 v8, p3

    move-wide/from16 v10, p5

    invoke-direct/range {v5 .. v11}, Landroid/service/rotationresolver/RotationResolutionRequest;-><init>(Ljava/lang/String;IIZJ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v5, v12

    .local v5, "request":Landroid/service/rotationresolver/RotationResolutionRequest;
    goto :goto_1

    .line 178
    .end local v5    # "request":Landroid/service/rotationresolver/RotationResolutionRequest;
    :cond_1
    :try_start_3
    new-instance v12, Landroid/service/rotationresolver/RotationResolutionRequest;

    const/4 v9, 0x1

    move-object v5, v12

    move-object v6, p2

    move/from16 v7, p4

    move/from16 v8, p3

    move-wide/from16 v10, p5

    invoke-direct/range {v5 .. v11}, Landroid/service/rotationresolver/RotationResolutionRequest;-><init>(Ljava/lang/String;IIZJ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v5, v12

    .line 182
    .restart local v5    # "request":Landroid/service/rotationresolver/RotationResolutionRequest;
    :goto_1
    move-object/from16 v6, p7

    :try_start_4
    invoke-virtual {v4, p1, v5, v6}, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->resolveRotationLocked(Landroid/rotationresolver/RotationResolverInternal$RotationResolverCallbackInternal;Landroid/service/rotationresolver/RotationResolutionRequest;Landroid/os/CancellationSignal;)V

    .line 184
    .end local v4    # "service":Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;
    .end local v5    # "request":Landroid/service/rotationresolver/RotationResolutionRequest;
    move/from16 v5, p3

    move/from16 v7, p4

    goto :goto_3

    .line 193
    .end local v0    # "isCameraAvailable":Z
    :catchall_0
    move-exception v0

    move-object/from16 v6, p7

    goto :goto_4

    .line 168
    .restart local v0    # "isCameraAvailable":Z
    :cond_2
    move-object/from16 v6, p7

    .line 185
    if-eqz v0, :cond_3

    .line 186
    invoke-static {}, Lcom/android/server/rotationresolver/RotationResolverManagerService;->access$600()Ljava/lang/String;

    move-result-object v5

    const-string v7, "Rotation Resolver service is disabled."

    invoke-static {v5, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 188
    :cond_3
    invoke-static {}, Lcom/android/server/rotationresolver/RotationResolverManagerService;->access$600()Ljava/lang/String;

    move-result-object v5

    const-string v7, "Camera is locked by a toggle."

    invoke-static {v5, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :goto_2
    invoke-interface {p1, v4}, Landroid/rotationresolver/RotationResolverInternal$RotationResolverCallbackInternal;->onFailure(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 191
    const/4 v4, 0x6

    move/from16 v5, p3

    move/from16 v7, p4

    :try_start_5
    invoke-static {v5, v7, v4}, Lcom/android/server/rotationresolver/RotationResolverManagerService;->logRotationStats(III)V

    .line 193
    .end local v0    # "isCameraAvailable":Z
    :goto_3
    monitor-exit v3

    .line 194
    return-void

    .line 193
    :catchall_1
    move-exception v0

    :goto_4
    move/from16 v5, p3

    move/from16 v7, p4

    goto :goto_5

    :catchall_2
    move-exception v0

    move/from16 v5, p3

    move/from16 v7, p4

    move-object/from16 v6, p7

    :goto_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v0

    :catchall_3
    move-exception v0

    goto :goto_5
.end method
