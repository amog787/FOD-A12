.class public final synthetic Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;

.field public final synthetic f$1:Landroid/hardware/biometrics/face/EnrollmentFrame;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;Landroid/hardware/biometrics/face/EnrollmentFrame;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback$$ExternalSyntheticLambda15;->f$0:Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;

    iput-object p2, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback$$ExternalSyntheticLambda15;->f$1:Landroid/hardware/biometrics/face/EnrollmentFrame;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback$$ExternalSyntheticLambda15;->f$0:Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback$$ExternalSyntheticLambda15;->f$1:Landroid/hardware/biometrics/face/EnrollmentFrame;

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->lambda$onEnrollmentFrame$3$Sensor$HalSessionCallback(Landroid/hardware/biometrics/face/EnrollmentFrame;)V

    return-void
.end method
