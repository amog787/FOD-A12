.class Lcom/android/server/pm/PackageManagerService$VerificationParams$3;
.super Landroid/content/BroadcastReceiver;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService$VerificationParams;->sendPackageVerificationRequest(ILandroid/content/pm/PackageInfoLite;Lcom/android/server/pm/PackageVerificationState;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/pm/PackageManagerService$VerificationParams;

.field final synthetic val$verificationId:I


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService$VerificationParams;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/pm/PackageManagerService$VerificationParams;

    .line 18411
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$VerificationParams$3;->this$1:Lcom/android/server/pm/PackageManagerService$VerificationParams;

    iput p2, p0, Lcom/android/server/pm/PackageManagerService$VerificationParams$3;->val$verificationId:I

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 18414
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$VerificationParams$3;->this$1:Lcom/android/server/pm/PackageManagerService$VerificationParams;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$VerificationParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    .line 18415
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 18416
    .local v0, "msg":Landroid/os/Message;
    iget v1, p0, Lcom/android/server/pm/PackageManagerService$VerificationParams$3;->val$verificationId:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 18417
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$VerificationParams$3;->this$1:Lcom/android/server/pm/PackageManagerService$VerificationParams;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService$VerificationParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$VerificationParams$3;->this$1:Lcom/android/server/pm/PackageManagerService$VerificationParams;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService$VerificationParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v2}, Lcom/android/server/pm/PackageManagerService;->access$200(Lcom/android/server/pm/PackageManagerService;)J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 18418
    return-void
.end method
