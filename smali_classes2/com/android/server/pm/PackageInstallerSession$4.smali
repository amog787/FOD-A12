.class Lcom/android/server/pm/PackageInstallerSession$4;
.super Ljava/lang/Object;
.source "PackageInstallerSession.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageInstallerSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageInstallerSession;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageInstallerSession;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/pm/PackageInstallerSession;

    .line 838
    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerSession$4;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 17
    .param p1, "msg"    # Landroid/os/Message;

    .line 841
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 866
    :pswitch_0
    iget v2, v1, Landroid/os/Message;->arg1:I

    .line 867
    .local v2, "error":I
    iget-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 868
    .local v3, "detailMessage":Ljava/lang/String;
    iget-object v4, v0, Lcom/android/server/pm/PackageInstallerSession$4;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {v4, v2, v3}, Lcom/android/server/pm/PackageInstallerSession;->access$2500(Lcom/android/server/pm/PackageInstallerSession;ILjava/lang/String;)V

    goto :goto_0

    .line 852
    .end local v2    # "error":I
    .end local v3    # "detailMessage":Ljava/lang/String;
    :pswitch_1
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    .line 853
    .local v2, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v3, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 854
    .local v3, "packageName":Ljava/lang/String;
    iget-object v4, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    move-object v13, v4

    check-cast v13, Ljava/lang/String;

    .line 855
    .local v13, "message":Ljava/lang/String;
    iget-object v4, v2, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    move-object v14, v4

    check-cast v14, Landroid/os/Bundle;

    .line 856
    .local v14, "extras":Landroid/os/Bundle;
    iget-object v4, v2, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    move-object v15, v4

    check-cast v15, Landroid/content/IntentSender;

    .line 857
    .local v15, "statusReceiver":Landroid/content/IntentSender;
    iget v12, v2, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 858
    .local v12, "returnCode":I
    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 860
    iget-object v4, v0, Lcom/android/server/pm/PackageInstallerSession$4;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {v4}, Lcom/android/server/pm/PackageInstallerSession;->access$2200(Lcom/android/server/pm/PackageInstallerSession;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, v0, Lcom/android/server/pm/PackageInstallerSession$4;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    iget v6, v5, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    iget-object v5, v0, Lcom/android/server/pm/PackageInstallerSession$4;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    .line 861
    invoke-static {v5}, Lcom/android/server/pm/PackageInstallerSession;->access$2300(Lcom/android/server/pm/PackageInstallerSession;)Z

    move-result v7

    iget-object v5, v0, Lcom/android/server/pm/PackageInstallerSession$4;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    iget v8, v5, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    .line 860
    move-object v5, v15

    move-object v9, v3

    move v10, v12

    move-object v11, v13

    move/from16 v16, v12

    .end local v12    # "returnCode":I
    .local v16, "returnCode":I
    move-object v12, v14

    invoke-static/range {v4 .. v12}, Lcom/android/server/pm/PackageInstallerSession;->access$2400(Landroid/content/Context;Landroid/content/IntentSender;IZILjava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 864
    goto :goto_0

    .line 849
    .end local v2    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v13    # "message":Ljava/lang/String;
    .end local v14    # "extras":Landroid/os/Bundle;
    .end local v15    # "statusReceiver":Landroid/content/IntentSender;
    .end local v16    # "returnCode":I
    :pswitch_2
    iget-object v2, v0, Lcom/android/server/pm/PackageInstallerSession$4;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {v2}, Lcom/android/server/pm/PackageInstallerSession;->access$2100(Lcom/android/server/pm/PackageInstallerSession;)V

    .line 850
    goto :goto_0

    .line 846
    :pswitch_3
    iget-object v2, v0, Lcom/android/server/pm/PackageInstallerSession$4;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {v2}, Lcom/android/server/pm/PackageInstallerSession;->access$2000(Lcom/android/server/pm/PackageInstallerSession;)V

    .line 847
    goto :goto_0

    .line 843
    :pswitch_4
    iget-object v2, v0, Lcom/android/server/pm/PackageInstallerSession$4;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {v2}, Lcom/android/server/pm/PackageInstallerSession;->access$1900(Lcom/android/server/pm/PackageInstallerSession;)V

    .line 844
    nop

    .line 872
    :goto_0
    const/4 v2, 0x1

    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
