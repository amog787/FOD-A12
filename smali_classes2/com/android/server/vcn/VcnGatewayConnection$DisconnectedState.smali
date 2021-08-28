.class Lcom/android/server/vcn/VcnGatewayConnection$DisconnectedState;
.super Lcom/android/server/vcn/VcnGatewayConnection$BaseState;
.source "VcnGatewayConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vcn/VcnGatewayConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DisconnectedState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/vcn/VcnGatewayConnection;


# direct methods
.method private constructor <init>(Lcom/android/server/vcn/VcnGatewayConnection;)V
    .locals 1

    .line 1341
    iput-object p1, p0, Lcom/android/server/vcn/VcnGatewayConnection$DisconnectedState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/vcn/VcnGatewayConnection$BaseState;-><init>(Lcom/android/server/vcn/VcnGatewayConnection;Lcom/android/server/vcn/VcnGatewayConnection$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/vcn/VcnGatewayConnection;Lcom/android/server/vcn/VcnGatewayConnection$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/vcn/VcnGatewayConnection;
    .param p2, "x1"    # Lcom/android/server/vcn/VcnGatewayConnection$1;

    .line 1341
    invoke-direct {p0, p1}, Lcom/android/server/vcn/VcnGatewayConnection$DisconnectedState;-><init>(Lcom/android/server/vcn/VcnGatewayConnection;)V

    return-void
.end method


# virtual methods
.method protected enterState()V
    .locals 2

    .line 1344
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$DisconnectedState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {v0}, Lcom/android/server/vcn/VcnGatewayConnection;->access$1200(Lcom/android/server/vcn/VcnGatewayConnection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1345
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$DisconnectedState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-virtual {v0}, Lcom/android/server/vcn/VcnGatewayConnection;->quitNow()V

    .line 1348
    :cond_0
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$DisconnectedState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {v0}, Lcom/android/server/vcn/VcnGatewayConnection;->access$1300(Lcom/android/server/vcn/VcnGatewayConnection;)Lcom/android/server/vcn/VcnGatewayConnection$VcnIkeSession;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$DisconnectedState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {v0}, Lcom/android/server/vcn/VcnGatewayConnection;->access$1100(Lcom/android/server/vcn/VcnGatewayConnection;)Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1349
    :cond_1
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$DisconnectedState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    const-string v1, "Active IKE Session or NetworkAgent in DisconnectedState"

    invoke-static {v0, v1}, Lcom/android/server/vcn/VcnGatewayConnection;->access$1700(Lcom/android/server/vcn/VcnGatewayConnection;Ljava/lang/String;)V

    .line 1352
    :cond_2
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$DisconnectedState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {v0}, Lcom/android/server/vcn/VcnGatewayConnection;->access$1900(Lcom/android/server/vcn/VcnGatewayConnection;)V

    .line 1353
    return-void
.end method

.method protected exitState()V
    .locals 1

    .line 1382
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$DisconnectedState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-virtual {v0}, Lcom/android/server/vcn/VcnGatewayConnection;->setSafeModeAlarm()V

    .line 1383
    return-void
.end method

.method protected processStateMsg(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 1357
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 1374
    invoke-virtual {p0, p1}, Lcom/android/server/vcn/VcnGatewayConnection$DisconnectedState;->logUnhandledMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 1367
    :sswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/vcn/VcnGatewayConnection$EventDisconnectRequestedInfo;

    iget-boolean v0, v0, Lcom/android/server/vcn/VcnGatewayConnection$EventDisconnectRequestedInfo;->shouldQuit:Z

    if-eqz v0, :cond_0

    .line 1368
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$DisconnectedState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/vcn/VcnGatewayConnection;->access$1202(Lcom/android/server/vcn/VcnGatewayConnection;Z)Z

    .line 1370
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$DisconnectedState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-virtual {v0}, Lcom/android/server/vcn/VcnGatewayConnection;->quitNow()V

    goto :goto_0

    .line 1360
    :sswitch_1
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$DisconnectedState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/vcn/VcnGatewayConnection$EventUnderlyingNetworkChangedInfo;

    iget-object v1, v1, Lcom/android/server/vcn/VcnGatewayConnection$EventUnderlyingNetworkChangedInfo;->newUnderlying:Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;

    invoke-static {v0, v1}, Lcom/android/server/vcn/VcnGatewayConnection;->access$2002(Lcom/android/server/vcn/VcnGatewayConnection;Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;)Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;

    .line 1362
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$DisconnectedState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {v0}, Lcom/android/server/vcn/VcnGatewayConnection;->access$2000(Lcom/android/server/vcn/VcnGatewayConnection;)Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1363
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$DisconnectedState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    iget-object v1, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mConnectingState:Lcom/android/server/vcn/VcnGatewayConnection$ConnectingState;

    invoke-virtual {v0, v1}, Lcom/android/server/vcn/VcnGatewayConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 1377
    :cond_0
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x7 -> :sswitch_0
    .end sparse-switch
.end method
