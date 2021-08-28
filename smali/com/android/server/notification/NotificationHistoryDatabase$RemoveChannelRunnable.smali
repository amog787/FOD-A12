.class final Lcom/android/server/notification/NotificationHistoryDatabase$RemoveChannelRunnable;
.super Ljava/lang/Object;
.source "NotificationHistoryDatabase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationHistoryDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "RemoveChannelRunnable"
.end annotation


# instance fields
.field private mChannelId:Ljava/lang/String;

.field private mNotificationHistory:Landroid/app/NotificationHistory;

.field private mPkg:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/notification/NotificationHistoryDatabase;


# direct methods
.method constructor <init>(Lcom/android/server/notification/NotificationHistoryDatabase;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/notification/NotificationHistoryDatabase;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "channelId"    # Ljava/lang/String;

    .line 542
    iput-object p1, p0, Lcom/android/server/notification/NotificationHistoryDatabase$RemoveChannelRunnable;->this$0:Lcom/android/server/notification/NotificationHistoryDatabase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 543
    iput-object p2, p0, Lcom/android/server/notification/NotificationHistoryDatabase$RemoveChannelRunnable;->mPkg:Ljava/lang/String;

    .line 544
    iput-object p3, p0, Lcom/android/server/notification/NotificationHistoryDatabase$RemoveChannelRunnable;->mChannelId:Ljava/lang/String;

    .line 545
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 554
    invoke-static {}, Lcom/android/server/notification/NotificationHistoryDatabase;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "NotiHistoryDatabase"

    const-string v1, "RemoveChannelRunnable"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    :cond_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationHistoryDatabase$RemoveChannelRunnable;->this$0:Lcom/android/server/notification/NotificationHistoryDatabase;

    invoke-static {v0}, Lcom/android/server/notification/NotificationHistoryDatabase;->access$100(Lcom/android/server/notification/NotificationHistoryDatabase;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 557
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/NotificationHistoryDatabase$RemoveChannelRunnable;->this$0:Lcom/android/server/notification/NotificationHistoryDatabase;

    iget-object v1, v1, Lcom/android/server/notification/NotificationHistoryDatabase;->mBuffer:Landroid/app/NotificationHistory;

    iget-object v2, p0, Lcom/android/server/notification/NotificationHistoryDatabase$RemoveChannelRunnable;->mPkg:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/notification/NotificationHistoryDatabase$RemoveChannelRunnable;->mChannelId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/app/NotificationHistory;->removeChannelFromWrite(Ljava/lang/String;Ljava/lang/String;)Z

    .line 559
    iget-object v1, p0, Lcom/android/server/notification/NotificationHistoryDatabase$RemoveChannelRunnable;->this$0:Lcom/android/server/notification/NotificationHistoryDatabase;

    iget-object v1, v1, Lcom/android/server/notification/NotificationHistoryDatabase;->mHistoryFiles:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 560
    .local v1, "historyFileItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/util/AtomicFile;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 561
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/AtomicFile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 563
    .local v2, "af":Landroid/util/AtomicFile;
    :try_start_1
    iget-object v3, p0, Lcom/android/server/notification/NotificationHistoryDatabase$RemoveChannelRunnable;->mNotificationHistory:Landroid/app/NotificationHistory;

    if-eqz v3, :cond_1

    .line 564
    goto :goto_1

    .line 565
    :cond_1
    new-instance v3, Landroid/app/NotificationHistory;

    invoke-direct {v3}, Landroid/app/NotificationHistory;-><init>()V

    :goto_1
    nop

    .line 566
    .local v3, "notificationHistory":Landroid/app/NotificationHistory;
    new-instance v4, Lcom/android/server/notification/NotificationHistoryFilter$Builder;

    invoke-direct {v4}, Lcom/android/server/notification/NotificationHistoryFilter$Builder;-><init>()V

    .line 567
    invoke-virtual {v4}, Lcom/android/server/notification/NotificationHistoryFilter$Builder;->build()Lcom/android/server/notification/NotificationHistoryFilter;

    move-result-object v4

    .line 566
    invoke-static {v2, v3, v4}, Lcom/android/server/notification/NotificationHistoryDatabase;->access$600(Landroid/util/AtomicFile;Landroid/app/NotificationHistory;Lcom/android/server/notification/NotificationHistoryFilter;)V

    .line 568
    iget-object v4, p0, Lcom/android/server/notification/NotificationHistoryDatabase$RemoveChannelRunnable;->mPkg:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/notification/NotificationHistoryDatabase$RemoveChannelRunnable;->mChannelId:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/app/NotificationHistory;->removeChannelFromWrite(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 569
    iget-object v4, p0, Lcom/android/server/notification/NotificationHistoryDatabase$RemoveChannelRunnable;->this$0:Lcom/android/server/notification/NotificationHistoryDatabase;

    invoke-static {v4, v2, v3}, Lcom/android/server/notification/NotificationHistoryDatabase;->access$400(Lcom/android/server/notification/NotificationHistoryDatabase;Landroid/util/AtomicFile;Landroid/app/NotificationHistory;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 574
    .end local v3    # "notificationHistory":Landroid/app/NotificationHistory;
    :cond_2
    goto :goto_2

    .line 571
    :catch_0
    move-exception v3

    .line 572
    .local v3, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v4, "NotiHistoryDatabase"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot clean up file on channel removal "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 573
    invoke-virtual {v2}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 572
    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 575
    .end local v2    # "af":Landroid/util/AtomicFile;
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_2
    goto :goto_0

    .line 576
    .end local v1    # "historyFileItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/util/AtomicFile;>;"
    :cond_3
    monitor-exit v0

    .line 577
    return-void

    .line 576
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method setNotificationHistory(Landroid/app/NotificationHistory;)V
    .locals 0
    .param p1, "nh"    # Landroid/app/NotificationHistory;

    .line 549
    iput-object p1, p0, Lcom/android/server/notification/NotificationHistoryDatabase$RemoveChannelRunnable;->mNotificationHistory:Landroid/app/NotificationHistory;

    .line 550
    return-void
.end method
