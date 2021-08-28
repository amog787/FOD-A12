.class Lcom/android/server/searchui/SearchUiPerUserService$SearchSessionInfo$1;
.super Landroid/os/RemoteCallbackList;
.source "SearchUiPerUserService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/searchui/SearchUiPerUserService$SearchSessionInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/RemoteCallbackList<",
        "Landroid/app/search/ISearchCallback;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/searchui/SearchUiPerUserService$SearchSessionInfo;


# direct methods
.method constructor <init>(Lcom/android/server/searchui/SearchUiPerUserService$SearchSessionInfo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/searchui/SearchUiPerUserService$SearchSessionInfo;

    .line 313
    iput-object p1, p0, Lcom/android/server/searchui/SearchUiPerUserService$SearchSessionInfo$1;->this$0:Lcom/android/server/searchui/SearchUiPerUserService$SearchSessionInfo;

    invoke-direct {p0}, Landroid/os/RemoteCallbackList;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallbackDied(Landroid/app/search/ISearchCallback;)V
    .locals 3
    .param p1, "callback"    # Landroid/app/search/ISearchCallback;

    .line 317
    invoke-static {}, Lcom/android/server/searchui/SearchUiPerUserService;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Binder died for session Id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/searchui/SearchUiPerUserService$SearchSessionInfo$1;->this$0:Lcom/android/server/searchui/SearchUiPerUserService$SearchSessionInfo;

    invoke-static {v2}, Lcom/android/server/searchui/SearchUiPerUserService$SearchSessionInfo;->access$100(Lcom/android/server/searchui/SearchUiPerUserService$SearchSessionInfo;)Landroid/app/search/SearchSessionId;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " and callback="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    invoke-interface {p1}, Landroid/app/search/ISearchCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 317
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    iget-object v0, p0, Lcom/android/server/searchui/SearchUiPerUserService$SearchSessionInfo$1;->this$0:Lcom/android/server/searchui/SearchUiPerUserService$SearchSessionInfo;

    invoke-static {v0}, Lcom/android/server/searchui/SearchUiPerUserService$SearchSessionInfo;->access$200(Lcom/android/server/searchui/SearchUiPerUserService$SearchSessionInfo;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/android/server/searchui/SearchUiPerUserService$SearchSessionInfo$1;->this$0:Lcom/android/server/searchui/SearchUiPerUserService$SearchSessionInfo;

    invoke-virtual {v0}, Lcom/android/server/searchui/SearchUiPerUserService$SearchSessionInfo;->destroy()V

    .line 323
    :cond_0
    return-void
.end method

.method public bridge synthetic onCallbackDied(Landroid/os/IInterface;)V
    .locals 0

    .line 313
    check-cast p1, Landroid/app/search/ISearchCallback;

    invoke-virtual {p0, p1}, Lcom/android/server/searchui/SearchUiPerUserService$SearchSessionInfo$1;->onCallbackDied(Landroid/app/search/ISearchCallback;)V

    return-void
.end method
