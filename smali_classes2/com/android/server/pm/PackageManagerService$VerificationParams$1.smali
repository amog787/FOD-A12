.class Lcom/android/server/pm/PackageManagerService$VerificationParams$1;
.super Landroid/content/BroadcastReceiver;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService$VerificationParams;->sendEnableRollbackRequest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/pm/PackageManagerService$VerificationParams;

.field final synthetic val$enableRollbackToken:I


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService$VerificationParams;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/pm/PackageManagerService$VerificationParams;

    .line 18202
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$VerificationParams$1;->this$1:Lcom/android/server/pm/PackageManagerService$VerificationParams;

    iput p2, p0, Lcom/android/server/pm/PackageManagerService$VerificationParams$1;->val$enableRollbackToken:I

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 18206
    const-string v0, "rollback"

    const-string v1, "enable_rollback_timeout"

    const-wide/16 v2, 0x2710

    invoke-static {v0, v1, v2, v3}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    .line 18210
    .local v0, "rollbackTimeout":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 18211
    const-wide/16 v0, 0x2710

    .line 18213
    :cond_0
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$VerificationParams$1;->this$1:Lcom/android/server/pm/PackageManagerService$VerificationParams;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService$VerificationParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x16

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 18215
    .local v2, "msg":Landroid/os/Message;
    iget v3, p0, Lcom/android/server/pm/PackageManagerService$VerificationParams$1;->val$enableRollbackToken:I

    iput v3, v2, Landroid/os/Message;->arg1:I

    .line 18216
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$VerificationParams$1;->this$1:Lcom/android/server/pm/PackageManagerService$VerificationParams;

    iget v3, v3, Lcom/android/server/pm/PackageManagerService$VerificationParams;->mSessionId:I

    iput v3, v2, Landroid/os/Message;->arg2:I

    .line 18217
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$VerificationParams$1;->this$1:Lcom/android/server/pm/PackageManagerService$VerificationParams;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService$VerificationParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 18218
    return-void
.end method
