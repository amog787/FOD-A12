.class Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler$ClientFinishedCallback;
.super Ljava/lang/Object;
.source "UserAwareBiometricScheduler.java"

# interfaces
.implements Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClientFinishedCallback"
.end annotation


# instance fields
.field private final mOwner:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

.field final synthetic this$0:Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;


# direct methods
.method constructor <init>(Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;Lcom/android/server/biometrics/sensors/BaseClientMonitor;)V
    .locals 0
    .param p2, "owner"    # Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    .line 58
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler$ClientFinishedCallback;->this$0:Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p2, p0, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler$ClientFinishedCallback;->mOwner:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    .line 60
    return-void
.end method


# virtual methods
.method public synthetic lambda$onClientFinished$0$UserAwareBiometricScheduler$ClientFinishedCallback(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V
    .locals 3
    .param p1, "clientMonitor"    # Lcom/android/server/biometrics/sensors/BaseClientMonitor;
    .param p2, "success"    # Z

    .line 65
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler$ClientFinishedCallback;->mOwner:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    if-eq v0, p1, :cond_0

    .line 66
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler$ClientFinishedCallback;->this$0:Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Wrong client finished], actual: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", expected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler$ClientFinishedCallback;->mOwner:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    return-void

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler$ClientFinishedCallback;->this$0:Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Client finished] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", success: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler$ClientFinishedCallback;->this$0:Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;

    iget-object v0, v0, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler$ClientFinishedCallback;->this$0:Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;

    iget-object v0, v0, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;

    iget-object v0, v0, Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler$ClientFinishedCallback;->mOwner:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    if-ne v0, v1, :cond_1

    .line 74
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler$ClientFinishedCallback;->this$0:Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;

    .line 75
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler$ClientFinishedCallback;->this$0:Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;->startNextOperationIfIdle()V

    goto :goto_0

    .line 78
    :cond_1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler$ClientFinishedCallback;->this$0:Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "operation is already null or different (reset?): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler$ClientFinishedCallback;->this$0:Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;

    iget-object v2, v2, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :goto_0
    return-void
.end method

.method public onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V
    .locals 2
    .param p1, "clientMonitor"    # Lcom/android/server/biometrics/sensors/BaseClientMonitor;
    .param p2, "success"    # Z

    .line 64
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler$ClientFinishedCallback;->this$0:Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;

    iget-object v0, v0, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler$ClientFinishedCallback$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler$ClientFinishedCallback$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler$ClientFinishedCallback;Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 82
    return-void
.end method
