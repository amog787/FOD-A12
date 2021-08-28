.class Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$Session;
.super Ljava/lang/Object;
.source "Sensor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Session"
.end annotation


# instance fields
.field final mHalSessionCallback:Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;

.field private final mSession:Landroid/hardware/biometrics/fingerprint/ISession;

.field private final mTag:Ljava/lang/String;

.field private final mUserId:I


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/hardware/biometrics/fingerprint/ISession;ILcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "session"    # Landroid/hardware/biometrics/fingerprint/ISession;
    .param p3, "userId"    # I
    .param p4, "halSessionCallback"    # Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$Session;->mTag:Ljava/lang/String;

    .line 101
    iput-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$Session;->mSession:Landroid/hardware/biometrics/fingerprint/ISession;

    .line 102
    iput p3, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$Session;->mUserId:I

    .line 103
    iput-object p4, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$Session;->mHalSessionCallback:Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "New session created for user: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$Session;)Landroid/hardware/biometrics/fingerprint/ISession;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$Session;

    .line 92
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$Session;->mSession:Landroid/hardware/biometrics/fingerprint/ISession;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$Session;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$Session;

    .line 92
    iget v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$Session;->mUserId:I

    return v0
.end method
