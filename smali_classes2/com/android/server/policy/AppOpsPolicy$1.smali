.class Lcom/android/server/policy/AppOpsPolicy$1;
.super Landroid/content/BroadcastReceiver;
.source "AppOpsPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/AppOpsPolicy;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/AppOpsPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/policy/AppOpsPolicy;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/AppOpsPolicy;

    .line 160
    iput-object p1, p0, Lcom/android/server/policy/AppOpsPolicy$1;->this$0:Lcom/android/server/policy/AppOpsPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 163
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 164
    .local v0, "uri":Landroid/net/Uri;
    if-nez v0, :cond_0

    .line 165
    return-void

    .line 167
    :cond_0
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    .line 168
    .local v1, "packageName":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 169
    return-void

    .line 171
    :cond_1
    iget-object v2, p0, Lcom/android/server/policy/AppOpsPolicy$1;->this$0:Lcom/android/server/policy/AppOpsPolicy;

    invoke-static {v2}, Lcom/android/server/policy/AppOpsPolicy;->access$000(Lcom/android/server/policy/AppOpsPolicy;)Landroid/app/role/RoleManager;

    move-result-object v2

    const-string v3, "android.app.role.SYSTEM_ACTIVITY_RECOGNIZER"

    invoke-virtual {v2, v3}, Landroid/app/role/RoleManager;->getRoleHolders(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 173
    .local v2, "activityRecognizers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 174
    iget-object v3, p0, Lcom/android/server/policy/AppOpsPolicy$1;->this$0:Lcom/android/server/policy/AppOpsPolicy;

    invoke-static {v3, v1}, Lcom/android/server/policy/AppOpsPolicy;->access$100(Lcom/android/server/policy/AppOpsPolicy;Ljava/lang/String;)V

    .line 176
    :cond_2
    return-void
.end method
