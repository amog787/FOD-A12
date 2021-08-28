.class Lcom/android/server/autofill/Session$2;
.super Ljava/lang/Object;
.source "Session.java"

# interfaces
.implements Lcom/android/server/autofill/ui/InlineFillUi$InlineSuggestionUiCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/autofill/Session;->requestShowInlineSuggestionsLocked(Landroid/service/autofill/FillResponse;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/autofill/Session;

.field final synthetic val$focusedId:Landroid/view/autofill/AutofillId;

.field final synthetic val$response:Landroid/service/autofill/FillResponse;


# direct methods
.method constructor <init>(Lcom/android/server/autofill/Session;Landroid/service/autofill/FillResponse;Landroid/view/autofill/AutofillId;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/autofill/Session;

    .line 3129
    iput-object p1, p0, Lcom/android/server/autofill/Session$2;->this$0:Lcom/android/server/autofill/Session;

    iput-object p2, p0, Lcom/android/server/autofill/Session$2;->val$response:Landroid/service/autofill/FillResponse;

    iput-object p3, p0, Lcom/android/server/autofill/Session$2;->val$focusedId:Landroid/view/autofill/AutofillId;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public authenticate(II)V
    .locals 6
    .param p1, "requestId"    # I
    .param p2, "datasetIndex"    # I

    .line 3137
    iget-object v0, p0, Lcom/android/server/autofill/Session$2;->this$0:Lcom/android/server/autofill/Session;

    iget-object v1, p0, Lcom/android/server/autofill/Session$2;->val$response:Landroid/service/autofill/FillResponse;

    invoke-virtual {v1}, Landroid/service/autofill/FillResponse;->getRequestId()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/autofill/Session$2;->val$response:Landroid/service/autofill/FillResponse;

    .line 3138
    invoke-virtual {v2}, Landroid/service/autofill/FillResponse;->getAuthentication()Landroid/content/IntentSender;

    move-result-object v3

    iget-object v2, p0, Lcom/android/server/autofill/Session$2;->val$response:Landroid/service/autofill/FillResponse;

    invoke-virtual {v2}, Landroid/service/autofill/FillResponse;->getClientState()Landroid/os/Bundle;

    move-result-object v4

    .line 3137
    const/4 v5, 0x1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/autofill/Session;->authenticate(IILandroid/content/IntentSender;Landroid/os/Bundle;Z)V

    .line 3140
    return-void
.end method

.method public autofill(Landroid/service/autofill/Dataset;I)V
    .locals 2
    .param p1, "dataset"    # Landroid/service/autofill/Dataset;
    .param p2, "datasetIndex"    # I

    .line 3132
    iget-object v0, p0, Lcom/android/server/autofill/Session$2;->this$0:Lcom/android/server/autofill/Session;

    iget-object v1, p0, Lcom/android/server/autofill/Session$2;->val$response:Landroid/service/autofill/FillResponse;

    invoke-virtual {v1}, Landroid/service/autofill/FillResponse;->getRequestId()I

    move-result v1

    invoke-virtual {v0, v1, p2, p1}, Lcom/android/server/autofill/Session;->fill(IILandroid/service/autofill/Dataset;)V

    .line 3133
    return-void
.end method

.method public onError()V
    .locals 3

    .line 3149
    iget-object v0, p0, Lcom/android/server/autofill/Session$2;->this$0:Lcom/android/server/autofill/Session;

    invoke-static {v0}, Lcom/android/server/autofill/Session;->access$800(Lcom/android/server/autofill/Session;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3150
    :try_start_0
    iget-object v1, p0, Lcom/android/server/autofill/Session$2;->this$0:Lcom/android/server/autofill/Session;

    invoke-static {v1}, Lcom/android/server/autofill/Session;->access$2500(Lcom/android/server/autofill/Session;)Lcom/android/server/autofill/AutofillInlineSessionController;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/autofill/Session$2;->val$focusedId:Landroid/view/autofill/AutofillId;

    .line 3151
    invoke-static {v2}, Lcom/android/server/autofill/ui/InlineFillUi;->emptyUi(Landroid/view/autofill/AutofillId;)Lcom/android/server/autofill/ui/InlineFillUi;

    move-result-object v2

    .line 3150
    invoke-virtual {v1, v2}, Lcom/android/server/autofill/AutofillInlineSessionController;->setInlineFillUiLocked(Lcom/android/server/autofill/ui/InlineFillUi;)Z

    .line 3152
    monitor-exit v0

    .line 3153
    return-void

    .line 3152
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public startIntentSender(Landroid/content/IntentSender;)V
    .locals 2
    .param p1, "intentSender"    # Landroid/content/IntentSender;

    .line 3144
    iget-object v0, p0, Lcom/android/server/autofill/Session$2;->this$0:Lcom/android/server/autofill/Session;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, p1, v1}, Lcom/android/server/autofill/Session;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;)V

    .line 3145
    return-void
.end method
