.class final Lcom/android/server/biometrics/sensors/BiometricScheduler$CancellationWatchdog;
.super Ljava/lang/Object;
.source "BiometricScheduler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/sensors/BiometricScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CancellationWatchdog"
.end annotation


# static fields
.field static final DELAY_MS:I = 0xbb8


# instance fields
.field final operation:Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;

.field final tag:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "operation"    # Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler$CancellationWatchdog;->tag:Ljava/lang/String;

    .line 164
    iput-object p2, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler$CancellationWatchdog;->operation:Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;

    .line 165
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 169
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler$CancellationWatchdog;->operation:Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;

    iget v0, v0, Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;->mState:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 170
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler$CancellationWatchdog;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Watchdog Triggered]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler$CancellationWatchdog;->operation:Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler$CancellationWatchdog;->operation:Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;

    iget-object v0, v0, Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    iget-object v0, v0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler$CancellationWatchdog;->operation:Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;

    iget-object v1, v1, Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    const/4 v2, 0x0

    .line 172
    invoke-interface {v0, v1, v2}, Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    .line 174
    :cond_0
    return-void
.end method
