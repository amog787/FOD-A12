.class Lcom/android/server/am/AppWaitingForDebuggerDialog$1;
.super Landroid/os/Handler;
.source "AppWaitingForDebuggerDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AppWaitingForDebuggerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/AppWaitingForDebuggerDialog;


# direct methods
.method constructor <init>(Lcom/android/server/am/AppWaitingForDebuggerDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/AppWaitingForDebuggerDialog;

    .line 69
    iput-object p1, p0, Lcom/android/server/am/AppWaitingForDebuggerDialog$1;->this$0:Lcom/android/server/am/AppWaitingForDebuggerDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 71
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 74
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/am/AppWaitingForDebuggerDialog$1;->this$0:Lcom/android/server/am/AppWaitingForDebuggerDialog;

    iget-object v0, v0, Lcom/android/server/am/AppWaitingForDebuggerDialog;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p0, Lcom/android/server/am/AppWaitingForDebuggerDialog$1;->this$0:Lcom/android/server/am/AppWaitingForDebuggerDialog;

    iget-object v1, v1, Lcom/android/server/am/AppWaitingForDebuggerDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->killAppAtUsersRequest(Lcom/android/server/am/ProcessRecord;)V

    .line 77
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
