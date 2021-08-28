.class Lcom/google/android/startop/iorap/IorapForwardingService$IorapdJobService$1;
.super Ljava/lang/Thread;
.source "IorapForwardingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/startop/iorap/IorapForwardingService$IorapdJobService;->runIdleCompilationAsync(Landroid/app/job/JobParameters;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/startop/iorap/IorapForwardingService$IorapdJobService;

.field final synthetic val$params:Landroid/app/job/JobParameters;

.field final synthetic val$pkgs:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/google/android/startop/iorap/IorapForwardingService$IorapdJobService;Ljava/lang/String;Ljava/util/List;Landroid/app/job/JobParameters;)V
    .locals 0
    .param p1, "this$1"    # Lcom/google/android/startop/iorap/IorapForwardingService$IorapdJobService;
    .param p2, "arg0"    # Ljava/lang/String;

    .line 589
    iput-object p1, p0, Lcom/google/android/startop/iorap/IorapForwardingService$IorapdJobService$1;->this$1:Lcom/google/android/startop/iorap/IorapForwardingService$IorapdJobService;

    iput-object p3, p0, Lcom/google/android/startop/iorap/IorapForwardingService$IorapdJobService$1;->val$pkgs:Ljava/util/List;

    iput-object p4, p0, Lcom/google/android/startop/iorap/IorapForwardingService$IorapdJobService$1;->val$params:Landroid/app/job/JobParameters;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$run$0(Lcom/google/android/startop/iorap/RequestId;Landroid/app/job/JobParameters;Ljava/lang/String;ZLcom/google/android/startop/iorap/IIorap;)V
    .locals 1
    .param p0, "request"    # Lcom/google/android/startop/iorap/RequestId;
    .param p1, "params"    # Landroid/app/job/JobParameters;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "shouldUpdateVersions"    # Z
    .param p4, "remote"    # Lcom/google/android/startop/iorap/IIorap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 613
    nop

    .line 614
    const/4 v0, 0x0

    invoke-static {v0, p1, p2, p3}, Lcom/google/android/startop/iorap/JobScheduledEvent;->createIdleMaintenance(ILandroid/app/job/JobParameters;Ljava/lang/String;Z)Lcom/google/android/startop/iorap/JobScheduledEvent;

    move-result-object v0

    .line 613
    invoke-interface {p4, p0, v0}, Lcom/google/android/startop/iorap/IIorap;->onJobScheduledEvent(Lcom/google/android/startop/iorap/RequestId;Lcom/google/android/startop/iorap/JobScheduledEvent;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$run$1$IorapForwardingService$IorapdJobService$1(Lcom/google/android/startop/iorap/RequestId;)Z
    .locals 2
    .param p1, "request"    # Lcom/google/android/startop/iorap/RequestId;

    .line 626
    iget-object v0, p0, Lcom/google/android/startop/iorap/IorapForwardingService$IorapdJobService$1;->this$1:Lcom/google/android/startop/iorap/IorapForwardingService$IorapdJobService;

    invoke-static {v0}, Lcom/google/android/startop/iorap/IorapForwardingService$IorapdJobService;->access$800(Lcom/google/android/startop/iorap/IorapForwardingService$IorapdJobService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 627
    :try_start_0
    iget-object v1, p0, Lcom/google/android/startop/iorap/IorapForwardingService$IorapdJobService$1;->this$1:Lcom/google/android/startop/iorap/IorapForwardingService$IorapdJobService;

    invoke-static {v1}, Lcom/google/android/startop/iorap/IorapForwardingService$IorapdJobService;->access$900(Lcom/google/android/startop/iorap/IorapForwardingService$IorapdJobService;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    .line 628
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public run()V
    .locals 10

    .line 592
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/google/android/startop/iorap/IorapForwardingService$IorapdJobService$1;->val$pkgs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_3

    .line 593
    iget-object v1, p0, Lcom/google/android/startop/iorap/IorapForwardingService$IorapdJobService$1;->val$pkgs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 594
    .local v1, "pkg":Ljava/lang/String;
    iget-object v3, p0, Lcom/google/android/startop/iorap/IorapForwardingService$IorapdJobService$1;->this$1:Lcom/google/android/startop/iorap/IorapForwardingService$IorapdJobService;

    iget-object v3, v3, Lcom/google/android/startop/iorap/IorapForwardingService$IorapdJobService;->this$0:Lcom/google/android/startop/iorap/IorapForwardingService;

    invoke-static {v3}, Lcom/google/android/startop/iorap/IorapForwardingService;->access$700(Lcom/google/android/startop/iorap/IorapForwardingService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 595
    const-string v2, "IorapForwardingService"

    const-string v3, "The idle compilation is aborted"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    return-void

    .line 601
    :cond_0
    iget-object v3, p0, Lcom/google/android/startop/iorap/IorapForwardingService$IorapdJobService$1;->this$1:Lcom/google/android/startop/iorap/IorapForwardingService$IorapdJobService;

    invoke-static {v3}, Lcom/google/android/startop/iorap/IorapForwardingService$IorapdJobService;->access$800(Lcom/google/android/startop/iorap/IorapForwardingService$IorapdJobService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 605
    :try_start_0
    invoke-static {}, Lcom/google/android/startop/iorap/RequestId;->nextValueForSequence()Lcom/google/android/startop/iorap/RequestId;

    move-result-object v4

    .line 606
    .local v4, "request":Lcom/google/android/startop/iorap/RequestId;
    iget-object v5, p0, Lcom/google/android/startop/iorap/IorapForwardingService$IorapdJobService$1;->this$1:Lcom/google/android/startop/iorap/IorapForwardingService$IorapdJobService;

    invoke-static {v5}, Lcom/google/android/startop/iorap/IorapForwardingService$IorapdJobService;->access$900(Lcom/google/android/startop/iorap/IorapForwardingService$IorapdJobService;)Ljava/util/HashMap;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/startop/iorap/IorapForwardingService$IorapdJobService$1;->val$params:Landroid/app/job/JobParameters;

    invoke-virtual {v5, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 607
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 609
    const-string v3, "IorapForwardingService"

    const-string v5, "IORap compile package: %s, [%d/%d]"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v1, v6, v2

    add-int/lit8 v7, v0, 0x1

    .line 610
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v6, v8

    const/4 v7, 0x2

    iget-object v9, p0, Lcom/google/android/startop/iorap/IorapForwardingService$IorapdJobService$1;->val$pkgs:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v7

    .line 609
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    if-nez v0, :cond_1

    move v2, v8

    .line 612
    .local v2, "shouldUpdateVersions":Z
    :cond_1
    iget-object v3, p0, Lcom/google/android/startop/iorap/IorapForwardingService$IorapdJobService$1;->this$1:Lcom/google/android/startop/iorap/IorapForwardingService$IorapdJobService;

    iget-object v3, v3, Lcom/google/android/startop/iorap/IorapForwardingService$IorapdJobService;->this$0:Lcom/google/android/startop/iorap/IorapForwardingService;

    invoke-static {v3}, Lcom/google/android/startop/iorap/IorapForwardingService;->access$400(Lcom/google/android/startop/iorap/IorapForwardingService;)Lcom/google/android/startop/iorap/IIorap;

    move-result-object v3

    iget-object v5, p0, Lcom/google/android/startop/iorap/IorapForwardingService$IorapdJobService$1;->val$params:Landroid/app/job/JobParameters;

    new-instance v6, Lcom/google/android/startop/iorap/IorapForwardingService$IorapdJobService$1$$ExternalSyntheticLambda0;

    invoke-direct {v6, v4, v5, v1, v2}, Lcom/google/android/startop/iorap/IorapForwardingService$IorapdJobService$1$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/startop/iorap/RequestId;Landroid/app/job/JobParameters;Ljava/lang/String;Z)V

    invoke-static {v3, v6}, Lcom/google/android/startop/iorap/IorapForwardingService;->access$500(Lcom/google/android/startop/iorap/IIorap;Lcom/google/android/startop/iorap/IorapForwardingService$RemoteRunnable;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 619
    iget-object v3, p0, Lcom/google/android/startop/iorap/IorapForwardingService$IorapdJobService$1;->this$1:Lcom/google/android/startop/iorap/IorapForwardingService$IorapdJobService;

    invoke-static {v3}, Lcom/google/android/startop/iorap/IorapForwardingService$IorapdJobService;->access$800(Lcom/google/android/startop/iorap/IorapForwardingService$IorapdJobService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 620
    :try_start_1
    iget-object v5, p0, Lcom/google/android/startop/iorap/IorapForwardingService$IorapdJobService$1;->this$1:Lcom/google/android/startop/iorap/IorapForwardingService$IorapdJobService;

    invoke-static {v5}, Lcom/google/android/startop/iorap/IorapForwardingService$IorapdJobService;->access$900(Lcom/google/android/startop/iorap/IorapForwardingService$IorapdJobService;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 621
    monitor-exit v3

    goto :goto_1

    :catchall_0
    move-exception v5

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 625
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/google/android/startop/iorap/IorapForwardingService$IorapdJobService$1;->this$1:Lcom/google/android/startop/iorap/IorapForwardingService$IorapdJobService;

    invoke-static {}, Lcom/google/android/startop/iorap/IorapForwardingService;->access$1000()Ljava/time/Duration;

    move-result-object v5

    new-instance v6, Lcom/google/android/startop/iorap/IorapForwardingService$IorapdJobService$1$$ExternalSyntheticLambda1;

    invoke-direct {v6, p0, v4}, Lcom/google/android/startop/iorap/IorapForwardingService$IorapdJobService$1$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/startop/iorap/IorapForwardingService$IorapdJobService$1;Lcom/google/android/startop/iorap/RequestId;)V

    invoke-static {v3, v5, v6}, Lcom/google/android/startop/iorap/IorapForwardingService$IorapdJobService;->access$1100(Lcom/google/android/startop/iorap/IorapForwardingService$IorapdJobService;Ljava/time/Duration;Ljava/util/function/BooleanSupplier;)Z

    .line 592
    .end local v1    # "pkg":Ljava/lang/String;
    .end local v2    # "shouldUpdateVersions":Z
    .end local v4    # "request":Lcom/google/android/startop/iorap/RequestId;
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 607
    .restart local v1    # "pkg":Ljava/lang/String;
    :catchall_1
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2

    .line 633
    .end local v0    # "i":I
    .end local v1    # "pkg":Ljava/lang/String;
    :cond_3
    iget-object v0, p0, Lcom/google/android/startop/iorap/IorapForwardingService$IorapdJobService$1;->this$1:Lcom/google/android/startop/iorap/IorapForwardingService$IorapdJobService;

    invoke-static {v0}, Lcom/google/android/startop/iorap/IorapForwardingService$IorapdJobService;->access$1200(Lcom/google/android/startop/iorap/IorapForwardingService$IorapdJobService;)Lcom/google/android/startop/iorap/IorapForwardingService$IorapdJobServiceProxy;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 634
    iget-object v0, p0, Lcom/google/android/startop/iorap/IorapForwardingService$IorapdJobService$1;->this$1:Lcom/google/android/startop/iorap/IorapForwardingService$IorapdJobService;

    invoke-static {v0}, Lcom/google/android/startop/iorap/IorapForwardingService$IorapdJobService;->access$1200(Lcom/google/android/startop/iorap/IorapForwardingService$IorapdJobService;)Lcom/google/android/startop/iorap/IorapForwardingService$IorapdJobServiceProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/startop/iorap/IorapForwardingService$IorapdJobService$1;->val$params:Landroid/app/job/JobParameters;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/startop/iorap/IorapForwardingService$IorapdJobServiceProxy;->jobFinished(Landroid/app/job/JobParameters;Z)V

    .line 636
    :cond_4
    return-void
.end method
