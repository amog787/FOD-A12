.class Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController$NotificationActionReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WindowMagnificationPromptController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotificationActionReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;


# direct methods
.method private constructor <init>(Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;)V
    .locals 0

    .line 191
    iput-object p1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController$NotificationActionReceiver;->this$0:Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;
    .param p2, "x1"    # Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController$1;

    .line 191
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController$NotificationActionReceiver;-><init>(Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 194
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 195
    .local v0, "action":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 197
    :cond_0
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController$NotificationActionReceiver;->this$0:Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;->access$102(Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;Z)Z

    .line 198
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController$NotificationActionReceiver;->this$0:Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;

    invoke-static {v1}, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;->access$200(Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController$NotificationActionReceiver;->this$0:Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;

    .line 199
    invoke-static {v3}, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;->access$300(Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;)I

    move-result v3

    .line 198
    const-string v4, "accessibility_show_window_magnification_prompt"

    invoke-static {v1, v4, v2, v3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 201
    const-string v1, "com.android.server.accessibility.magnification.action.TURN_ON_IN_SETTINGS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 202
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController$NotificationActionReceiver;->this$0:Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;

    invoke-static {v1}, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;->access$400(Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;)V

    .line 203
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController$NotificationActionReceiver;->this$0:Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;

    invoke-static {v1}, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;->access$500(Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;)V

    goto :goto_0

    .line 204
    :cond_1
    const-string v1, "com.android.server.accessibility.magnification.action.DISMISS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 205
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController$NotificationActionReceiver;->this$0:Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;

    invoke-static {v1}, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;->access$500(Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;)V

    .line 207
    :cond_2
    :goto_0
    return-void
.end method
