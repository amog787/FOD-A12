.class Lcom/android/server/biometrics/sensors/InvalidationRequesterClient$1;
.super Landroid/hardware/biometrics/IInvalidationCallback$Stub;
.source "InvalidationRequesterClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/sensors/InvalidationRequesterClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/biometrics/sensors/InvalidationRequesterClient;


# direct methods
.method constructor <init>(Lcom/android/server/biometrics/sensors/InvalidationRequesterClient;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/biometrics/sensors/InvalidationRequesterClient;

    .line 67
    .local p0, "this":Lcom/android/server/biometrics/sensors/InvalidationRequesterClient$1;, "Lcom/android/server/biometrics/sensors/InvalidationRequesterClient$1;"
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/InvalidationRequesterClient$1;->this$0:Lcom/android/server/biometrics/sensors/InvalidationRequesterClient;

    invoke-direct {p0}, Landroid/hardware/biometrics/IInvalidationCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 4

    .line 70
    .local p0, "this":Lcom/android/server/biometrics/sensors/InvalidationRequesterClient$1;, "Lcom/android/server/biometrics/sensors/InvalidationRequesterClient$1;"
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/InvalidationRequesterClient$1;->this$0:Lcom/android/server/biometrics/sensors/InvalidationRequesterClient;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/InvalidationRequesterClient;->access$000(Lcom/android/server/biometrics/sensors/InvalidationRequesterClient;)Lcom/android/server/biometrics/sensors/BiometricUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/InvalidationRequesterClient$1;->this$0:Lcom/android/server/biometrics/sensors/InvalidationRequesterClient;

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/InvalidationRequesterClient;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/InvalidationRequesterClient$1;->this$0:Lcom/android/server/biometrics/sensors/InvalidationRequesterClient;

    invoke-virtual {v2}, Lcom/android/server/biometrics/sensors/InvalidationRequesterClient;->getTargetUserId()I

    move-result v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/android/server/biometrics/sensors/BiometricUtils;->setInvalidationInProgress(Landroid/content/Context;IZ)V

    .line 72
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/InvalidationRequesterClient$1;->this$0:Lcom/android/server/biometrics/sensors/InvalidationRequesterClient;

    iget-object v0, v0, Lcom/android/server/biometrics/sensors/InvalidationRequesterClient;->mCallback:Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/InvalidationRequesterClient$1;->this$0:Lcom/android/server/biometrics/sensors/InvalidationRequesterClient;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    .line 73
    return-void
.end method
