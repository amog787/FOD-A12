.class Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo$1;
.super Landroid/os/RemoteCallbackList;
.source "SmartspacePerUserService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/RemoteCallbackList<",
        "Landroid/app/smartspace/ISmartspaceCallback;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo;


# direct methods
.method constructor <init>(Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo;

    .line 337
    iput-object p1, p0, Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo$1;->this$0:Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo;

    invoke-direct {p0}, Landroid/os/RemoteCallbackList;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallbackDied(Landroid/app/smartspace/ISmartspaceCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/app/smartspace/ISmartspaceCallback;

    .line 344
    iget-object v0, p0, Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo$1;->this$0:Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo;

    invoke-static {v0}, Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo;->access$000(Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo$1;->this$0:Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo;

    invoke-virtual {v0}, Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo;->destroy()V

    .line 347
    :cond_0
    return-void
.end method

.method public bridge synthetic onCallbackDied(Landroid/os/IInterface;)V
    .locals 0

    .line 337
    check-cast p1, Landroid/app/smartspace/ISmartspaceCallback;

    invoke-virtual {p0, p1}, Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo$1;->onCallbackDied(Landroid/app/smartspace/ISmartspaceCallback;)V

    return-void
.end method
