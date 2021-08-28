.class Lcom/android/server/net/NetworkStatsService$Dependencies$1;
.super Landroid/database/ContentObserver;
.source "NetworkStatsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/net/NetworkStatsService$Dependencies;->makeContentObserver(Landroid/os/Handler;Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;Lcom/android/server/net/NetworkStatsSubscriptionsMonitor;)Landroid/database/ContentObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/net/NetworkStatsService$Dependencies;

.field final synthetic val$monitor:Lcom/android/server/net/NetworkStatsSubscriptionsMonitor;

.field final synthetic val$settings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;


# direct methods
.method constructor <init>(Lcom/android/server/net/NetworkStatsService$Dependencies;Landroid/os/Handler;Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;Lcom/android/server/net/NetworkStatsSubscriptionsMonitor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/net/NetworkStatsService$Dependencies;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 490
    iput-object p1, p0, Lcom/android/server/net/NetworkStatsService$Dependencies$1;->this$0:Lcom/android/server/net/NetworkStatsService$Dependencies;

    iput-object p3, p0, Lcom/android/server/net/NetworkStatsService$Dependencies$1;->val$settings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    iput-object p4, p0, Lcom/android/server/net/NetworkStatsService$Dependencies$1;->val$monitor:Lcom/android/server/net/NetworkStatsSubscriptionsMonitor;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 493
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$Dependencies$1;->val$settings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    invoke-interface {v0}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;->getCombineSubtypeEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 494
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$Dependencies$1;->val$monitor:Lcom/android/server/net/NetworkStatsSubscriptionsMonitor;

    invoke-virtual {v0}, Lcom/android/server/net/NetworkStatsSubscriptionsMonitor;->start()V

    goto :goto_0

    .line 496
    :cond_0
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$Dependencies$1;->val$monitor:Lcom/android/server/net/NetworkStatsSubscriptionsMonitor;

    invoke-virtual {v0}, Lcom/android/server/net/NetworkStatsSubscriptionsMonitor;->stop()V

    .line 498
    :goto_0
    return-void
.end method
