.class public Lcom/android/server/biometrics/sensors/fingerprint/aidl/TestHal;
.super Landroid/hardware/biometrics/fingerprint/IFingerprint$Stub;
.source "TestHal.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "fingerprint.aidl.TestHal"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Landroid/hardware/biometrics/fingerprint/IFingerprint$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public createSession(IILandroid/hardware/biometrics/fingerprint/ISessionCallback;)Landroid/hardware/biometrics/fingerprint/ISession;
    .locals 2
    .param p1, "sensorId"    # I
    .param p2, "userId"    # I
    .param p3, "cb"    # Landroid/hardware/biometrics/fingerprint/ISessionCallback;

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createSession, sensorId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " userId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fingerprint.aidl.TestHal"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/TestHal$1;

    invoke-direct {v0, p0, p3}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/TestHal$1;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/TestHal;Landroid/hardware/biometrics/fingerprint/ISessionCallback;)V

    return-object v0
.end method

.method public getInterfaceHash()Ljava/lang/String;
    .locals 1

    .line 42
    const-string v0, "3621eefdbae063097dad0037cd1f111792ff12ec"

    return-object v0
.end method

.method public getInterfaceVersion()I
    .locals 1

    .line 37
    const/4 v0, 0x1

    return v0
.end method

.method public getSensorProps()[Landroid/hardware/biometrics/fingerprint/SensorProps;
    .locals 2

    .line 47
    const-string v0, "fingerprint.aidl.TestHal"

    const-string v1, "getSensorProps"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/hardware/biometrics/fingerprint/SensorProps;

    return-object v0
.end method
