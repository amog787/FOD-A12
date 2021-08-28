.class Lcom/android/server/devicepolicy/RemoteBugreportManager$2;
.super Landroid/content/BroadcastReceiver;
.source "RemoteBugreportManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/devicepolicy/RemoteBugreportManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/devicepolicy/RemoteBugreportManager;


# direct methods
.method constructor <init>(Lcom/android/server/devicepolicy/RemoteBugreportManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/devicepolicy/RemoteBugreportManager;

    .line 103
    iput-object p1, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager$2;->this$0:Lcom/android/server/devicepolicy/RemoteBugreportManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 107
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, "action":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager$2;->this$0:Lcom/android/server/devicepolicy/RemoteBugreportManager;

    invoke-static {v1}, Lcom/android/server/devicepolicy/RemoteBugreportManager;->access$200(Lcom/android/server/devicepolicy/RemoteBugreportManager;)Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->getNotificationManager()Landroid/app/NotificationManager;

    move-result-object v1

    const-string v2, "DevicePolicyManager"

    const v3, 0x28700e57

    invoke-virtual {v1, v2, v3}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 109
    const-string v1, "com.android.server.action.REMOTE_BUGREPORT_SHARING_ACCEPTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 110
    iget-object v1, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager$2;->this$0:Lcom/android/server/devicepolicy/RemoteBugreportManager;

    invoke-static {v1}, Lcom/android/server/devicepolicy/RemoteBugreportManager;->access$300(Lcom/android/server/devicepolicy/RemoteBugreportManager;)V

    goto :goto_0

    .line 111
    :cond_0
    const-string v1, "com.android.server.action.REMOTE_BUGREPORT_SHARING_DECLINED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 112
    iget-object v1, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager$2;->this$0:Lcom/android/server/devicepolicy/RemoteBugreportManager;

    invoke-static {v1}, Lcom/android/server/devicepolicy/RemoteBugreportManager;->access$400(Lcom/android/server/devicepolicy/RemoteBugreportManager;)V

    .line 114
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager$2;->this$0:Lcom/android/server/devicepolicy/RemoteBugreportManager;

    invoke-static {v1}, Lcom/android/server/devicepolicy/RemoteBugreportManager;->access$600(Lcom/android/server/devicepolicy/RemoteBugreportManager;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager$2;->this$0:Lcom/android/server/devicepolicy/RemoteBugreportManager;

    invoke-static {v2}, Lcom/android/server/devicepolicy/RemoteBugreportManager;->access$500(Lcom/android/server/devicepolicy/RemoteBugreportManager;)Landroid/content/BroadcastReceiver;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 115
    return-void
.end method
