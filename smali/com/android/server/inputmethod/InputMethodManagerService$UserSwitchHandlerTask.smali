.class final Lcom/android/server/inputmethod/InputMethodManagerService$UserSwitchHandlerTask;
.super Ljava/lang/Object;
.source "InputMethodManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/inputmethod/InputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "UserSwitchHandlerTask"
.end annotation


# instance fields
.field mClientToBeReset:Lcom/android/internal/view/IInputMethodClient;

.field final mService:Lcom/android/server/inputmethod/InputMethodManagerService;

.field final mToUserId:I


# direct methods
.method constructor <init>(Lcom/android/server/inputmethod/InputMethodManagerService;ILcom/android/internal/view/IInputMethodClient;)V
    .locals 0
    .param p1, "service"    # Lcom/android/server/inputmethod/InputMethodManagerService;
    .param p2, "toUserId"    # I
    .param p3, "clientToBeReset"    # Lcom/android/internal/view/IInputMethodClient;

    .line 1482
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1483
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$UserSwitchHandlerTask;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 1484
    iput p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$UserSwitchHandlerTask;->mToUserId:I

    .line 1485
    iput-object p3, p0, Lcom/android/server/inputmethod/InputMethodManagerService$UserSwitchHandlerTask;->mClientToBeReset:Lcom/android/internal/view/IInputMethodClient;

    .line 1486
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1490
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$UserSwitchHandlerTask;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v0, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1491
    :try_start_0
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$UserSwitchHandlerTask;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$1100(Lcom/android/server/inputmethod/InputMethodManagerService;)Lcom/android/server/inputmethod/InputMethodManagerService$UserSwitchHandlerTask;

    move-result-object v1

    if-eq v1, p0, :cond_0

    .line 1493
    monitor-exit v0

    return-void

    .line 1495
    :cond_0
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$UserSwitchHandlerTask;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$1100(Lcom/android/server/inputmethod/InputMethodManagerService;)Lcom/android/server/inputmethod/InputMethodManagerService$UserSwitchHandlerTask;

    move-result-object v2

    iget v2, v2, Lcom/android/server/inputmethod/InputMethodManagerService$UserSwitchHandlerTask;->mToUserId:I

    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService$UserSwitchHandlerTask;->mClientToBeReset:Lcom/android/internal/view/IInputMethodClient;

    invoke-static {v1, v2, v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$1200(Lcom/android/server/inputmethod/InputMethodManagerService;ILcom/android/internal/view/IInputMethodClient;)V

    .line 1497
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$UserSwitchHandlerTask;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$1102(Lcom/android/server/inputmethod/InputMethodManagerService;Lcom/android/server/inputmethod/InputMethodManagerService$UserSwitchHandlerTask;)Lcom/android/server/inputmethod/InputMethodManagerService$UserSwitchHandlerTask;

    .line 1498
    monitor-exit v0

    .line 1499
    return-void

    .line 1498
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
