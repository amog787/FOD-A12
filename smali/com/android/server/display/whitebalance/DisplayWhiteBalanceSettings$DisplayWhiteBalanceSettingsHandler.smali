.class final Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings$DisplayWhiteBalanceSettingsHandler;
.super Landroid/os/Handler;
.source "DisplayWhiteBalanceSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DisplayWhiteBalanceSettingsHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;


# direct methods
.method constructor <init>(Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;Landroid/os/Looper;)V
    .locals 1
    .param p2, "looper"    # Landroid/os/Looper;

    .line 179
    iput-object p1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings$DisplayWhiteBalanceSettingsHandler;->this$0:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;

    .line 180
    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 181
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 185
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 187
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings$DisplayWhiteBalanceSettingsHandler;->this$0:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, v1}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;->access$000(Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;Z)V

    .line 188
    iget-object v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings$DisplayWhiteBalanceSettingsHandler;->this$0:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;

    invoke-static {v0}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;->access$100(Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;)Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;->isDisplayWhiteBalanceEnabled()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;->access$200(Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;Z)V

    .line 191
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
