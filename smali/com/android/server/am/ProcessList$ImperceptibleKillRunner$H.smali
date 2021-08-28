.class final Lcom/android/server/am/ProcessList$ImperceptibleKillRunner$H;
.super Landroid/os/Handler;
.source "ProcessList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# static fields
.field static final MSG_DEVICE_IDLE:I = 0x0

.field static final MSG_UID_GONE:I = 0x1

.field static final MSG_UID_STATE_CHANGED:I = 0x2


# instance fields
.field final synthetic this$1:Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;


# direct methods
.method constructor <init>(Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .line 5123
    iput-object p1, p0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner$H;->this$1:Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;

    .line 5124
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 5125
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 5129
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 5137
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner$H;->this$1:Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1, v2}, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->access$300(Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;II)V

    goto :goto_0

    .line 5134
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner$H;->this$1:Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->access$200(Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;I)V

    .line 5135
    goto :goto_0

    .line 5131
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner$H;->this$1:Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;

    invoke-static {v0}, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->access$100(Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;)V

    .line 5132
    nop

    .line 5140
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
