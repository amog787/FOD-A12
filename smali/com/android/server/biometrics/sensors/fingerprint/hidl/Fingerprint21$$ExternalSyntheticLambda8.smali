.class public final synthetic Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/os/IBinder;

.field public final synthetic f$3:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

.field public final synthetic f$4:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;ILandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;

    iput p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$$ExternalSyntheticLambda8;->f$1:I

    iput-object p3, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$$ExternalSyntheticLambda8;->f$2:Landroid/os/IBinder;

    iput-object p4, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$$ExternalSyntheticLambda8;->f$3:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    iput-object p5, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$$ExternalSyntheticLambda8;->f$4:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;

    iget v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$$ExternalSyntheticLambda8;->f$1:I

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$$ExternalSyntheticLambda8;->f$2:Landroid/os/IBinder;

    iget-object v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$$ExternalSyntheticLambda8;->f$3:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    iget-object v4, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$$ExternalSyntheticLambda8;->f$4:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->lambda$scheduleRemoveAll$13$Fingerprint21(ILandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;Ljava/lang/String;)V

    return-void
.end method
