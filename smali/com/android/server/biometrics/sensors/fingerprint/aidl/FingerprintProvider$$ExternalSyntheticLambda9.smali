.class public final synthetic Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/os/IBinder;

.field public final synthetic f$3:I

.field public final synthetic f$4:Ljava/lang/String;

.field public final synthetic f$5:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;ILandroid/os/IBinder;ILjava/lang/String;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda9;->f$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    iput p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda9;->f$1:I

    iput-object p3, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda9;->f$2:Landroid/os/IBinder;

    iput p4, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda9;->f$3:I

    iput-object p5, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda9;->f$4:Ljava/lang/String;

    iput-wide p6, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda9;->f$5:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda9;->f$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    iget v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda9;->f$1:I

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda9;->f$2:Landroid/os/IBinder;

    iget v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda9;->f$3:I

    iget-object v4, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda9;->f$4:Ljava/lang/String;

    iget-wide v5, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda9;->f$5:J

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->lambda$scheduleRevokeChallenge$4$FingerprintProvider(ILandroid/os/IBinder;ILjava/lang/String;J)V

    return-void
.end method
