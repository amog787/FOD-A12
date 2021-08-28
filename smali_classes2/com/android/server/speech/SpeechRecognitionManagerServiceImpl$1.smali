.class Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl$1;
.super Landroid/speech/IRecognitionService$Stub;
.source "SpeechRecognitionManagerServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->lambda$createSessionLocked$1$SpeechRecognitionManagerServiceImpl(Landroid/speech/IRecognitionServiceManagerCallback;Lcom/android/server/speech/RemoteSpeechRecognitionService;ILandroid/os/IBinder;Landroid/os/IBinder$DeathRecipient;Landroid/speech/IRecognitionService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;

.field final synthetic val$clientToken:Landroid/os/IBinder;

.field final synthetic val$creatorCallingUid:I

.field final synthetic val$deathRecipient:Landroid/os/IBinder$DeathRecipient;

.field final synthetic val$service:Lcom/android/server/speech/RemoteSpeechRecognitionService;


# direct methods
.method constructor <init>(Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;Lcom/android/server/speech/RemoteSpeechRecognitionService;ILandroid/os/IBinder;Landroid/os/IBinder$DeathRecipient;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;

    .line 135
    iput-object p1, p0, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl$1;->this$0:Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;

    iput-object p2, p0, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl$1;->val$service:Lcom/android/server/speech/RemoteSpeechRecognitionService;

    iput p3, p0, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl$1;->val$creatorCallingUid:I

    iput-object p4, p0, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl$1;->val$clientToken:Landroid/os/IBinder;

    iput-object p5, p0, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl$1;->val$deathRecipient:Landroid/os/IBinder$DeathRecipient;

    invoke-direct {p0}, Landroid/speech/IRecognitionService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel(Landroid/speech/IRecognitionListener;Z)V
    .locals 4
    .param p1, "listener"    # Landroid/speech/IRecognitionListener;
    .param p2, "isShutdown"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 162
    iget-object v0, p0, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl$1;->val$service:Lcom/android/server/speech/RemoteSpeechRecognitionService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/speech/RemoteSpeechRecognitionService;->cancel(Landroid/speech/IRecognitionListener;Z)V

    .line 164
    if-eqz p2, :cond_0

    .line 165
    iget-object v0, p0, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl$1;->this$0:Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;

    iget v1, p0, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl$1;->val$creatorCallingUid:I

    iget-object v2, p0, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl$1;->val$service:Lcom/android/server/speech/RemoteSpeechRecognitionService;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->access$200(Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;ILcom/android/server/speech/RemoteSpeechRecognitionService;Z)V

    .line 169
    iget-object v0, p0, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl$1;->val$clientToken:Landroid/os/IBinder;

    iget-object v1, p0, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl$1;->val$deathRecipient:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v0, v1, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 171
    :cond_0
    return-void
.end method

.method public startListening(Landroid/content/Intent;Landroid/speech/IRecognitionListener;Landroid/content/AttributionSource;)V
    .locals 2
    .param p1, "recognizerIntent"    # Landroid/content/Intent;
    .param p2, "listener"    # Landroid/speech/IRecognitionListener;
    .param p3, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 142
    invoke-virtual {p3}, Landroid/content/AttributionSource;->enforceCallingUid()V

    .line 143
    iget-object v0, p0, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl$1;->this$0:Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;

    invoke-static {v0}, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->access$000(Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;)Lcom/android/server/infra/AbstractMasterSystemService;

    move-result-object v0

    check-cast v0, Lcom/android/server/speech/SpeechRecognitionManagerService;

    invoke-virtual {v0}, Lcom/android/server/speech/SpeechRecognitionManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/content/AttributionSource;->isTrusted(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl$1;->this$0:Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;

    invoke-static {v0}, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->access$100(Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;)Lcom/android/server/infra/AbstractMasterSystemService;

    move-result-object v0

    check-cast v0, Lcom/android/server/speech/SpeechRecognitionManagerService;

    invoke-virtual {v0}, Lcom/android/server/speech/SpeechRecognitionManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/permission/PermissionManager;

    .line 145
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/permission/PermissionManager;

    .line 146
    invoke-virtual {v0, p3}, Landroid/permission/PermissionManager;->registerAttributionSource(Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    move-result-object p3

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl$1;->val$service:Lcom/android/server/speech/RemoteSpeechRecognitionService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/speech/RemoteSpeechRecognitionService;->startListening(Landroid/content/Intent;Landroid/speech/IRecognitionListener;Landroid/content/AttributionSource;)V

    .line 149
    return-void
.end method

.method public stopListening(Landroid/speech/IRecognitionListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/speech/IRecognitionListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 154
    iget-object v0, p0, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl$1;->val$service:Lcom/android/server/speech/RemoteSpeechRecognitionService;

    invoke-virtual {v0, p1}, Lcom/android/server/speech/RemoteSpeechRecognitionService;->stopListening(Landroid/speech/IRecognitionListener;)V

    .line 155
    return-void
.end method
