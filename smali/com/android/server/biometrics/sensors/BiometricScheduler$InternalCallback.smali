.class public Lcom/android/server/biometrics/sensors/BiometricScheduler$InternalCallback;
.super Ljava/lang/Object;
.source "BiometricScheduler.java"

# interfaces
.implements Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/sensors/BiometricScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "InternalCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/biometrics/sensors/BiometricScheduler;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/BiometricScheduler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/biometrics/sensors/BiometricScheduler;

    .line 225
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler$InternalCallback;->this$0:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onClientFinished$0$BiometricScheduler$InternalCallback(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V
    .locals 3
    .param p1, "clientMonitor"    # Lcom/android/server/biometrics/sensors/BaseClientMonitor;
    .param p2, "success"    # Z

    .line 237
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler$InternalCallback;->this$0:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    iget-object v0, v0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;

    const-string v1, "[Finishing] "

    if-nez v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler$InternalCallback;->this$0:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " but current operation is null, success: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", possible lifecycle bug in clientMonitor implementation?"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    return-void

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler$InternalCallback;->this$0:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    iget-object v0, v0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;

    iget-object v0, v0, Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    if-eq p1, v0, :cond_1

    .line 245
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler$InternalCallback;->this$0:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Ignoring Finish] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " does not match current: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler$InternalCallback;->this$0:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    iget-object v2, v2, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;

    iget-object v2, v2, Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    return-void

    .line 250
    :cond_1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler$InternalCallback;->this$0:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", success: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler$InternalCallback;->this$0:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    iget-object v0, v0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;

    const/4 v1, 0x5

    iput v1, v0, Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;->mState:I

    .line 253
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler$InternalCallback;->this$0:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    iget-object v0, v0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;

    iget-object v0, v0, Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;->mClientCallback:Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;

    if-eqz v0, :cond_2

    .line 254
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler$InternalCallback;->this$0:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    iget-object v0, v0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;

    iget-object v0, v0, Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;->mClientCallback:Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;

    invoke-interface {v0, p1, p2}, Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    .line 257
    :cond_2
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler$InternalCallback;->this$0:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->access$000(Lcom/android/server/biometrics/sensors/BiometricScheduler;)Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 258
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler$InternalCallback;->this$0:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->access$000(Lcom/android/server/biometrics/sensors/BiometricScheduler;)Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler$InternalCallback;->this$0:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    iget-object v2, v2, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;

    iget-object v2, v2, Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    .line 259
    invoke-virtual {v2}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getSensorId()I

    move-result v2

    .line 258
    invoke-virtual {v0, v2, v1}, Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;->markSensorActive(IZ)V

    .line 262
    :cond_3
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler$InternalCallback;->this$0:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->access$100(Lcom/android/server/biometrics/sensors/BiometricScheduler;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler$InternalCallback;->this$0:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-static {v2}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->access$200(Lcom/android/server/biometrics/sensors/BiometricScheduler;)I

    move-result v2

    if-lt v0, v2, :cond_4

    .line 263
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler$InternalCallback;->this$0:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->access$100(Lcom/android/server/biometrics/sensors/BiometricScheduler;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 265
    :cond_4
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler$InternalCallback;->this$0:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->access$100(Lcom/android/server/biometrics/sensors/BiometricScheduler;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler$InternalCallback;->this$0:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    iget-object v1, v1, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;

    iget-object v1, v1, Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getProtoEnum()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 266
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler$InternalCallback;->this$0:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;

    .line 267
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler$InternalCallback;->this$0:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->access$308(Lcom/android/server/biometrics/sensors/BiometricScheduler;)I

    .line 268
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler$InternalCallback;->this$0:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->startNextOperationIfIdle()V

    .line 269
    return-void
.end method

.method public onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V
    .locals 2
    .param p1, "clientMonitor"    # Lcom/android/server/biometrics/sensors/BaseClientMonitor;
    .param p2, "success"    # Z

    .line 236
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler$InternalCallback;->this$0:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    iget-object v0, v0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/BiometricScheduler$InternalCallback$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/biometrics/sensors/BiometricScheduler$InternalCallback$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/BiometricScheduler$InternalCallback;Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 270
    return-void
.end method

.method public onClientStarted(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)V
    .locals 3
    .param p1, "clientMonitor"    # Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    .line 228
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler$InternalCallback;->this$0:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Started] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler$InternalCallback;->this$0:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    iget-object v0, v0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;

    iget-object v0, v0, Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;->mClientCallback:Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler$InternalCallback;->this$0:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    iget-object v0, v0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;

    iget-object v0, v0, Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;->mClientCallback:Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;

    invoke-interface {v0, p1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;->onClientStarted(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)V

    .line 232
    :cond_0
    return-void
.end method
