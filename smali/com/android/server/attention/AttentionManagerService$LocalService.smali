.class final Lcom/android/server/attention/AttentionManagerService$LocalService;
.super Landroid/attention/AttentionManagerInternal;
.source "AttentionManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/attention/AttentionManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LocalService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/attention/AttentionManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/attention/AttentionManagerService;)V
    .locals 0

    .line 405
    iput-object p1, p0, Lcom/android/server/attention/AttentionManagerService$LocalService;->this$0:Lcom/android/server/attention/AttentionManagerService;

    invoke-direct {p0}, Landroid/attention/AttentionManagerInternal;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/attention/AttentionManagerService;Lcom/android/server/attention/AttentionManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/attention/AttentionManagerService;
    .param p2, "x1"    # Lcom/android/server/attention/AttentionManagerService$1;

    .line 405
    invoke-direct {p0, p1}, Lcom/android/server/attention/AttentionManagerService$LocalService;-><init>(Lcom/android/server/attention/AttentionManagerService;)V

    return-void
.end method


# virtual methods
.method public cancelAttentionCheck(Landroid/attention/AttentionManagerInternal$AttentionCallbackInternal;)V
    .locals 1
    .param p1, "callbackInternal"    # Landroid/attention/AttentionManagerInternal$AttentionCallbackInternal;

    .line 418
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService$LocalService;->this$0:Lcom/android/server/attention/AttentionManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/attention/AttentionManagerService;->cancelAttentionCheck(Landroid/attention/AttentionManagerInternal$AttentionCallbackInternal;)V

    .line 419
    return-void
.end method

.method public checkAttention(JLandroid/attention/AttentionManagerInternal$AttentionCallbackInternal;)Z
    .locals 1
    .param p1, "timeout"    # J
    .param p3, "callbackInternal"    # Landroid/attention/AttentionManagerInternal$AttentionCallbackInternal;

    .line 413
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService$LocalService;->this$0:Lcom/android/server/attention/AttentionManagerService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/attention/AttentionManagerService;->checkAttention(JLandroid/attention/AttentionManagerInternal$AttentionCallbackInternal;)Z

    move-result v0

    return v0
.end method

.method public isAttentionServiceSupported()Z
    .locals 1

    .line 408
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService$LocalService;->this$0:Lcom/android/server/attention/AttentionManagerService;

    iget-boolean v0, v0, Lcom/android/server/attention/AttentionManagerService;->mIsServiceEnabled:Z

    return v0
.end method
