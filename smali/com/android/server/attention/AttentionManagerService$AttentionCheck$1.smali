.class Lcom/android/server/attention/AttentionManagerService$AttentionCheck$1;
.super Landroid/service/attention/IAttentionCallback$Stub;
.source "AttentionManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/attention/AttentionManagerService$AttentionCheck;-><init>(Landroid/attention/AttentionManagerInternal$AttentionCallbackInternal;Lcom/android/server/attention/AttentionManagerService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/attention/AttentionManagerService$AttentionCheck;

.field final synthetic val$callbackInternal:Landroid/attention/AttentionManagerInternal$AttentionCallbackInternal;

.field final synthetic val$service:Lcom/android/server/attention/AttentionManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/attention/AttentionManagerService$AttentionCheck;Landroid/attention/AttentionManagerInternal$AttentionCallbackInternal;Lcom/android/server/attention/AttentionManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/attention/AttentionManagerService$AttentionCheck;

    .line 494
    iput-object p1, p0, Lcom/android/server/attention/AttentionManagerService$AttentionCheck$1;->this$0:Lcom/android/server/attention/AttentionManagerService$AttentionCheck;

    iput-object p2, p0, Lcom/android/server/attention/AttentionManagerService$AttentionCheck$1;->val$callbackInternal:Landroid/attention/AttentionManagerInternal$AttentionCallbackInternal;

    iput-object p3, p0, Lcom/android/server/attention/AttentionManagerService$AttentionCheck$1;->val$service:Lcom/android/server/attention/AttentionManagerService;

    invoke-direct {p0}, Landroid/service/attention/IAttentionCallback$Stub;-><init>()V

    return-void
.end method

.method private logStats(I)V
    .locals 1
    .param p1, "result"    # I

    .line 519
    const/16 v0, 0x8f

    invoke-static {v0, p1}, Lcom/android/internal/util/FrameworkStatsLog;->write(II)V

    .line 522
    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 2
    .param p1, "error"    # I

    .line 510
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService$AttentionCheck$1;->this$0:Lcom/android/server/attention/AttentionManagerService$AttentionCheck;

    invoke-static {v0}, Lcom/android/server/attention/AttentionManagerService$AttentionCheck;->access$800(Lcom/android/server/attention/AttentionManagerService$AttentionCheck;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 511
    return-void

    .line 513
    :cond_0
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService$AttentionCheck$1;->this$0:Lcom/android/server/attention/AttentionManagerService$AttentionCheck;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/attention/AttentionManagerService$AttentionCheck;->access$802(Lcom/android/server/attention/AttentionManagerService$AttentionCheck;Z)Z

    .line 514
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService$AttentionCheck$1;->val$callbackInternal:Landroid/attention/AttentionManagerInternal$AttentionCallbackInternal;

    invoke-virtual {v0, p1}, Landroid/attention/AttentionManagerInternal$AttentionCallbackInternal;->onFailure(I)V

    .line 515
    invoke-direct {p0, p1}, Lcom/android/server/attention/AttentionManagerService$AttentionCheck$1;->logStats(I)V

    .line 516
    return-void
.end method

.method public onSuccess(IJ)V
    .locals 8
    .param p1, "result"    # I
    .param p2, "timestamp"    # J

    .line 497
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService$AttentionCheck$1;->this$0:Lcom/android/server/attention/AttentionManagerService$AttentionCheck;

    invoke-static {v0}, Lcom/android/server/attention/AttentionManagerService$AttentionCheck;->access$800(Lcom/android/server/attention/AttentionManagerService$AttentionCheck;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 498
    return-void

    .line 500
    :cond_0
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService$AttentionCheck$1;->this$0:Lcom/android/server/attention/AttentionManagerService$AttentionCheck;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/attention/AttentionManagerService$AttentionCheck;->access$802(Lcom/android/server/attention/AttentionManagerService$AttentionCheck;Z)Z

    .line 501
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService$AttentionCheck$1;->val$callbackInternal:Landroid/attention/AttentionManagerInternal$AttentionCallbackInternal;

    invoke-virtual {v0, p1, p2, p3}, Landroid/attention/AttentionManagerInternal$AttentionCallbackInternal;->onSuccess(IJ)V

    .line 502
    invoke-direct {p0, p1}, Lcom/android/server/attention/AttentionManagerService$AttentionCheck$1;->logStats(I)V

    .line 503
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService$AttentionCheck$1;->val$service:Lcom/android/server/attention/AttentionManagerService;

    new-instance v7, Lcom/android/server/attention/AttentionManagerService$AttentionCheckCache;

    .line 504
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    move-object v1, v7

    move v4, p1

    move-wide v5, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/server/attention/AttentionManagerService$AttentionCheckCache;-><init>(JIJ)V

    .line 503
    invoke-static {v0, v7}, Lcom/android/server/attention/AttentionManagerService;->access$1200(Lcom/android/server/attention/AttentionManagerService;Lcom/android/server/attention/AttentionManagerService$AttentionCheckCache;)V

    .line 506
    return-void
.end method
