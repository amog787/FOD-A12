.class Lcom/android/server/connectivity/PacProxyService$1;
.super Ljava/lang/Object;
.source "PacProxyService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/PacProxyService;
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

    .line 119
    iput-object p1, p0, Lcom/android/server/connectivity/PacProxyService$1;->this$0:Lcom/android/server/connectivity/PacProxyService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 124
    iget-object v0, p0, Lcom/android/server/connectivity/PacProxyService$1;->this$0:Lcom/android/server/connectivity/PacProxyService;

    invoke-static {v0}, Lcom/android/server/connectivity/PacProxyService;->access$000(Lcom/android/server/connectivity/PacProxyService;)Landroid/net/Uri;

    move-result-object v0

    .line 125
    .local v0, "pacUrl":Landroid/net/Uri;
    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {v1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 126
    :cond_0
    const/16 v1, -0xbb

    invoke-static {v1}, Landroid/net/TrafficStats;->getAndSetThreadStatsTag(I)I

    move-result v1

    .line 129
    .local v1, "oldTag":I
    :try_start_0
    invoke-static {v0}, Lcom/android/server/connectivity/PacProxyService;->access$100(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    .local v2, "file":Ljava/lang/String;
    invoke-static {v1}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 135
    goto :goto_0

    .line 134
    .end local v2    # "file":Ljava/lang/String;
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 130
    :catch_0
    move-exception v2

    .line 131
    .local v2, "ioe":Ljava/io/IOException;
    const/4 v3, 0x0

    .line 132
    .local v3, "file":Ljava/lang/String;
    :try_start_1
    const-string v4, "PacProxyService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to load PAC file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 134
    nop

    .end local v2    # "ioe":Ljava/io/IOException;
    invoke-static {v1}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 135
    move-object v2, v3

    .line 136
    .end local v3    # "file":Ljava/lang/String;
    .local v2, "file":Ljava/lang/String;
    :goto_0
    if-eqz v2, :cond_2

    .line 137
    iget-object v3, p0, Lcom/android/server/connectivity/PacProxyService$1;->this$0:Lcom/android/server/connectivity/PacProxyService;

    invoke-static {v3}, Lcom/android/server/connectivity/PacProxyService;->access$200(Lcom/android/server/connectivity/PacProxyService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 138
    :try_start_2
    iget-object v4, p0, Lcom/android/server/connectivity/PacProxyService$1;->this$0:Lcom/android/server/connectivity/PacProxyService;

    invoke-static {v4}, Lcom/android/server/connectivity/PacProxyService;->access$300(Lcom/android/server/connectivity/PacProxyService;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 139
    iget-object v4, p0, Lcom/android/server/connectivity/PacProxyService$1;->this$0:Lcom/android/server/connectivity/PacProxyService;

    invoke-static {v4, v2}, Lcom/android/server/connectivity/PacProxyService;->access$400(Lcom/android/server/connectivity/PacProxyService;Ljava/lang/String;)V

    .line 141
    :cond_1
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 142
    iget-object v3, p0, Lcom/android/server/connectivity/PacProxyService$1;->this$0:Lcom/android/server/connectivity/PacProxyService;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/android/server/connectivity/PacProxyService;->access$502(Lcom/android/server/connectivity/PacProxyService;Z)Z

    .line 143
    iget-object v3, p0, Lcom/android/server/connectivity/PacProxyService$1;->this$0:Lcom/android/server/connectivity/PacProxyService;

    invoke-static {v3}, Lcom/android/server/connectivity/PacProxyService;->access$600(Lcom/android/server/connectivity/PacProxyService;)V

    .line 144
    iget-object v3, p0, Lcom/android/server/connectivity/PacProxyService$1;->this$0:Lcom/android/server/connectivity/PacProxyService;

    invoke-static {v3}, Lcom/android/server/connectivity/PacProxyService;->access$700(Lcom/android/server/connectivity/PacProxyService;)V

    goto :goto_1

    .line 141
    :catchall_1
    move-exception v4

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v4

    .line 146
    :cond_2
    iget-object v3, p0, Lcom/android/server/connectivity/PacProxyService$1;->this$0:Lcom/android/server/connectivity/PacProxyService;

    invoke-static {v3}, Lcom/android/server/connectivity/PacProxyService;->access$800(Lcom/android/server/connectivity/PacProxyService;)V

    .line 148
    :goto_1
    return-void

    .line 134
    .end local v2    # "file":Ljava/lang/String;
    :goto_2
    invoke-static {v1}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 135
    throw v2
.end method
