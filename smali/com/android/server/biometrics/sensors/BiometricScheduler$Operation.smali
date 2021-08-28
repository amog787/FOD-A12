.class final Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;
.super Ljava/lang/Object;
.source "BiometricScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/sensors/BiometricScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Operation"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation$OperationState;
    }
.end annotation


# static fields
.field static final STATE_FINISHED:I = 0x5

.field static final STATE_STARTED:I = 0x2

.field static final STATE_STARTED_CANCELING:I = 0x3

.field static final STATE_WAITING_FOR_COOKIE:I = 0x4

.field static final STATE_WAITING_IN_QUEUE:I = 0x0

.field static final STATE_WAITING_IN_QUEUE_CANCELING:I = 0x1


# instance fields
.field final mClientCallback:Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;

.field final mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

.field mState:I


# direct methods
.method constructor <init>(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;)V
    .locals 1
    .param p1, "clientMonitor"    # Lcom/android/server/biometrics/sensors/BaseClientMonitor;
    .param p2, "callback"    # Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;

    .line 117
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;-><init>(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;I)V

    .line 118
    return-void
.end method

.method protected constructor <init>(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;I)V
    .locals 0
    .param p1, "clientMonitor"    # Lcom/android/server/biometrics/sensors/BaseClientMonitor;
    .param p2, "callback"    # Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;
    .param p3, "state"    # I

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    .line 126
    iput-object p2, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;->mClientCallback:Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;

    .line 127
    iput p3, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;->mState:I

    .line 128
    return-void
.end method


# virtual methods
.method public isHalOperation()Z
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    instance-of v0, v0, Lcom/android/server/biometrics/sensors/HalClientMonitor;

    return v0
.end method

.method public isUnstartableHalOperation()Z
    .locals 2

    .line 138
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;->isHalOperation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    check-cast v0, Lcom/android/server/biometrics/sensors/HalClientMonitor;

    .line 140
    .local v0, "client":Lcom/android/server/biometrics/sensors/HalClientMonitor;, "Lcom/android/server/biometrics/sensors/HalClientMonitor<*>;"
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/HalClientMonitor;->getFreshDaemon()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 141
    const/4 v1, 0x1

    return v1

    .line 144
    .end local v0    # "client":Lcom/android/server/biometrics/sensors/HalClientMonitor;, "Lcom/android/server/biometrics/sensors/HalClientMonitor<*>;"
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", State: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
