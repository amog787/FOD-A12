.class Lcom/android/server/biometrics/sensors/LockoutResetDispatcher$ClientCallback;
.super Ljava/lang/Object;
.source "LockoutResetDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ClientCallback"
.end annotation


# static fields
.field private static final WAKELOCK_TIMEOUT_MS:J = 0x7d0L


# instance fields
.field private final mCallback:Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback;

.field private final mOpPackageName:Ljava/lang/String;

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback;
    .param p3, "opPackageName"    # Ljava/lang/String;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const-class v0, Landroid/os/PowerManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 52
    .local v0, "pm":Landroid/os/PowerManager;
    iput-object p3, p0, Lcom/android/server/biometrics/sensors/LockoutResetDispatcher$ClientCallback;->mOpPackageName:Ljava/lang/String;

    .line 53
    iput-object p2, p0, Lcom/android/server/biometrics/sensors/LockoutResetDispatcher$ClientCallback;->mCallback:Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback;

    .line 54
    const/4 v1, 0x1

    const-string v2, "LockoutResetMonitor:SendLockoutReset"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/biometrics/sensors/LockoutResetDispatcher$ClientCallback;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 56
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/biometrics/sensors/LockoutResetDispatcher$ClientCallback;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/biometrics/sensors/LockoutResetDispatcher$ClientCallback;

    .line 42
    invoke-direct {p0}, Lcom/android/server/biometrics/sensors/LockoutResetDispatcher$ClientCallback;->releaseWakelock()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/biometrics/sensors/LockoutResetDispatcher$ClientCallback;)Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/biometrics/sensors/LockoutResetDispatcher$ClientCallback;

    .line 42
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/LockoutResetDispatcher$ClientCallback;->mCallback:Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/biometrics/sensors/LockoutResetDispatcher$ClientCallback;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/biometrics/sensors/LockoutResetDispatcher$ClientCallback;

    .line 42
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/LockoutResetDispatcher$ClientCallback;->mOpPackageName:Ljava/lang/String;

    return-object v0
.end method

.method private releaseWakelock()V
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/LockoutResetDispatcher$ClientCallback;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/LockoutResetDispatcher$ClientCallback;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 79
    :cond_0
    return-void
.end method


# virtual methods
.method sendLockoutReset(I)V
    .locals 3
    .param p1, "sensorId"    # I

    .line 59
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/LockoutResetDispatcher$ClientCallback;->mCallback:Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback;

    if-eqz v0, :cond_0

    .line 61
    :try_start_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/LockoutResetDispatcher$ClientCallback;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 62
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/LockoutResetDispatcher$ClientCallback;->mCallback:Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback;

    new-instance v1, Lcom/android/server/biometrics/sensors/LockoutResetDispatcher$ClientCallback$1;

    invoke-direct {v1, p0}, Lcom/android/server/biometrics/sensors/LockoutResetDispatcher$ClientCallback$1;-><init>(Lcom/android/server/biometrics/sensors/LockoutResetDispatcher$ClientCallback;)V

    invoke-interface {v0, p1, v1}, Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback;->onLockoutReset(ILandroid/os/IRemoteCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    goto :goto_0

    .line 68
    :catch_0
    move-exception v0

    .line 69
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "LockoutResetTracker"

    const-string v2, "Failed to invoke onLockoutReset: "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 70
    invoke-direct {p0}, Lcom/android/server/biometrics/sensors/LockoutResetDispatcher$ClientCallback;->releaseWakelock()V

    .line 73
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method
