.class Lcom/android/server/job/JobSchedulerService$ConstantsObserver;
.super Ljava/lang/Object;
.source "JobSchedulerService.java"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/JobSchedulerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConstantsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/job/JobSchedulerService;


# direct methods
.method private constructor <init>(Lcom/android/server/job/JobSchedulerService;)V
    .locals 0

    .line 341
    iput-object p1, p0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/job/JobSchedulerService;Lcom/android/server/job/JobSchedulerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/job/JobSchedulerService;
    .param p2, "x1"    # Lcom/android/server/job/JobSchedulerService$1;

    .line 341
    invoke-direct {p0, p1}, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    return-void
.end method


# virtual methods
.method public onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .locals 8
    .param p1, "properties"    # Landroid/provider/DeviceConfig$Properties;

    .line 351
    const/4 v0, 0x0

    .line 352
    .local v0, "apiQuotaScheduleUpdated":Z
    const/4 v1, 0x0

    .line 353
    .local v1, "concurrencyUpdated":Z
    const/4 v2, 0x0

    .line 354
    .local v2, "runtimeUpdated":Z
    const/4 v3, 0x0

    .local v3, "controller":I
    :goto_0
    iget-object v4, p0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v4, v4, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 355
    iget-object v4, p0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v4, v4, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/job/controllers/StateController;

    .line 356
    .local v4, "sc":Lcom/android/server/job/controllers/StateController;
    invoke-virtual {v4}, Lcom/android/server/job/controllers/StateController;->prepareForUpdatedConstantsLocked()V

    .line 354
    .end local v4    # "sc":Lcom/android/server/job/controllers/StateController;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 359
    .end local v3    # "controller":I
    :cond_0
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v3, v3, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 360
    :try_start_0
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 361
    .local v5, "name":Ljava/lang/String;
    if-nez v5, :cond_1

    .line 362
    goto :goto_1

    .line 364
    :cond_1
    const/4 v6, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    :cond_2
    goto/16 :goto_2

    :sswitch_0
    const-string v7, "conn_prefetch_relax_frac"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/16 v6, 0xc

    goto/16 :goto_2

    :sswitch_1
    const-string/jumbo v7, "runtime_free_quota_max_limit_ms"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/16 v6, 0xd

    goto/16 :goto_2

    :sswitch_2
    const-string v7, "aq_schedule_throw_exception"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v6, 0x4

    goto/16 :goto_2

    :sswitch_3
    const-string/jumbo v7, "min_ready_non_active_jobs_count"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v6, 0x5

    goto/16 :goto_2

    :sswitch_4
    const-string/jumbo v7, "min_linear_backoff_time_ms"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/16 v6, 0x9

    goto/16 :goto_2

    :sswitch_5
    const-string v7, "heavy_use_factor"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v6, 0x7

    goto/16 :goto_2

    :sswitch_6
    const-string/jumbo v7, "min_exp_backoff_time_ms"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/16 v6, 0xa

    goto :goto_2

    :sswitch_7
    const-string/jumbo v7, "max_non_active_job_batch_delay_ms"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v6, 0x6

    goto :goto_2

    :sswitch_8
    const-string v7, "conn_congestion_delay_frac"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/16 v6, 0xb

    goto :goto_2

    :sswitch_9
    const-string v7, "aq_schedule_return_failure"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v6, 0x3

    goto :goto_2

    :sswitch_a
    const-string/jumbo v7, "moderate_use_factor"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/16 v6, 0x8

    goto :goto_2

    :sswitch_b
    const-string/jumbo v7, "runtime_min_guarantee_ms"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/16 v6, 0xe

    goto :goto_2

    :sswitch_c
    const-string v7, "aq_schedule_window_ms"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v6, 0x2

    goto :goto_2

    :sswitch_d
    const-string/jumbo v7, "runtime_min_ej_guarantee_ms"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/16 v6, 0xf

    goto :goto_2

    :sswitch_e
    const-string v7, "enable_api_quotas"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v6, 0x0

    goto :goto_2

    :sswitch_f
    const-string v7, "aq_schedule_count"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v6, 0x1

    :goto_2
    packed-switch v6, :pswitch_data_0

    .line 401
    const-string v6, "concurrency_"

    goto :goto_3

    .line 395
    :pswitch_0
    if-nez v2, :cond_4

    .line 396
    iget-object v6, p0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v6, v6, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    invoke-static {v6}, Lcom/android/server/job/JobSchedulerService$Constants;->access$500(Lcom/android/server/job/JobSchedulerService$Constants;)V

    .line 397
    const/4 v2, 0x1

    goto :goto_5

    .line 390
    :pswitch_1
    iget-object v6, p0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v6, v6, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    invoke-static {v6}, Lcom/android/server/job/JobSchedulerService$Constants;->access$400(Lcom/android/server/job/JobSchedulerService$Constants;)V

    .line 391
    goto :goto_5

    .line 386
    :pswitch_2
    iget-object v6, p0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v6, v6, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    invoke-static {v6}, Lcom/android/server/job/JobSchedulerService$Constants;->access$300(Lcom/android/server/job/JobSchedulerService$Constants;)V

    .line 387
    goto :goto_5

    .line 382
    :pswitch_3
    iget-object v6, p0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v6, v6, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    invoke-static {v6}, Lcom/android/server/job/JobSchedulerService$Constants;->access$200(Lcom/android/server/job/JobSchedulerService$Constants;)V

    .line 383
    goto :goto_5

    .line 378
    :pswitch_4
    iget-object v6, p0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v6, v6, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    invoke-static {v6}, Lcom/android/server/job/JobSchedulerService$Constants;->access$100(Lcom/android/server/job/JobSchedulerService$Constants;)V

    .line 379
    goto :goto_5

    .line 370
    :pswitch_5
    if-nez v0, :cond_4

    .line 371
    iget-object v6, p0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v6, v6, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    invoke-static {v6}, Lcom/android/server/job/JobSchedulerService$Constants;->access$000(Lcom/android/server/job/JobSchedulerService$Constants;)V

    .line 372
    iget-object v6, p0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v6}, Lcom/android/server/job/JobSchedulerService;->updateQuotaTracker()V

    .line 373
    const/4 v0, 0x1

    goto :goto_5

    .line 401
    :goto_3
    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    if-nez v1, :cond_3

    .line 403
    iget-object v6, p0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v6, v6, Lcom/android/server/job/JobSchedulerService;->mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    invoke-virtual {v6}, Lcom/android/server/job/JobConcurrencyManager;->updateConfigLocked()V

    .line 404
    const/4 v1, 0x1

    goto :goto_5

    .line 406
    :cond_3
    const/4 v6, 0x0

    .local v6, "ctrlr":I
    :goto_4
    iget-object v7, p0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v7, v7, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_4

    .line 407
    iget-object v7, p0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v7, v7, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/job/controllers/StateController;

    .line 408
    .local v7, "sc":Lcom/android/server/job/controllers/StateController;
    invoke-virtual {v7, p1, v5}, Lcom/android/server/job/controllers/StateController;->processConstantLocked(Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;)V

    .line 406
    .end local v7    # "sc":Lcom/android/server/job/controllers/StateController;
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 413
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "ctrlr":I
    :cond_4
    :goto_5
    goto/16 :goto_1

    .line 414
    :cond_5
    const/4 v4, 0x0

    .local v4, "controller":I
    :goto_6
    iget-object v5, p0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v5, v5, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_6

    .line 415
    iget-object v5, p0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v5, v5, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/job/controllers/StateController;

    .line 416
    .local v5, "sc":Lcom/android/server/job/controllers/StateController;
    invoke-virtual {v5}, Lcom/android/server/job/controllers/StateController;->onConstantsUpdatedLocked()V

    .line 414
    .end local v5    # "sc":Lcom/android/server/job/controllers/StateController;
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 418
    .end local v4    # "controller":I
    :cond_6
    monitor-exit v3

    .line 419
    return-void

    .line 418
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    :sswitch_data_0
    .sparse-switch
        -0x6a91caaa -> :sswitch_f
        -0x61ffed04 -> :sswitch_e
        -0x57ab4ebd -> :sswitch_d
        -0x3f51c6e4 -> :sswitch_c
        -0x3816e2ef -> :sswitch_b
        -0x2b109c3d -> :sswitch_a
        -0x6861eec -> :sswitch_9
        -0x36a3a91 -> :sswitch_8
        -0x2ba94ab -> :sswitch_7
        0xfb016b2 -> :sswitch_6
        0x11402d7f -> :sswitch_5
        0x2a4571b4 -> :sswitch_4
        0x3be1abc4 -> :sswitch_3
        0x46ad01bd -> :sswitch_2
        0x57aac0d8 -> :sswitch_1
        0x64e397f2 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public start()V
    .locals 2

    .line 343
    nop

    .line 344
    invoke-static {}, Lcom/android/server/JobSchedulerBackgroundThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    .line 343
    const-string/jumbo v1, "jobscheduler"

    invoke-static {v1, v0, p0}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 346
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/provider/DeviceConfig;->getProperties(Ljava/lang/String;[Ljava/lang/String;)Landroid/provider/DeviceConfig$Properties;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V

    .line 347
    return-void
.end method
