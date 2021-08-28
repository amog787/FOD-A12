.class public final synthetic Lcom/android/server/biometrics/sensors/BiometricScheduler$InternalCallback$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/sensors/BiometricScheduler$InternalCallback;

.field public final synthetic f$1:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/sensors/BiometricScheduler$InternalCallback;Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler$InternalCallback$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/biometrics/sensors/BiometricScheduler$InternalCallback;

    iput-object p2, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler$InternalCallback$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    iput-boolean p3, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler$InternalCallback$$ExternalSyntheticLambda0;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler$InternalCallback$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/biometrics/sensors/BiometricScheduler$InternalCallback;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler$InternalCallback$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    iget-boolean v2, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler$InternalCallback$$ExternalSyntheticLambda0;->f$2:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/server/biometrics/sensors/BiometricScheduler$InternalCallback;->lambda$onClientFinished$0$BiometricScheduler$InternalCallback(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    return-void
.end method
