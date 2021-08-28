.class public Lcom/android/server/biometrics/sensors/fingerprint/FingerprintStateCallback;
.super Ljava/lang/Object;
.source "FingerprintStateCallback.java"

# interfaces
.implements Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;


# instance fields
.field private mFingerprintState:I

.field private final mFingerprintStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroid/hardware/fingerprint/IFingerprintStateListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintStateCallback;->mFingerprintStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintStateCallback;->mFingerprintState:I

    .line 48
    return-void
.end method

.method private notifyFingerprintStateListeners(I)V
    .locals 5
    .param p1, "newState"    # I

    .line 88
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintStateCallback;->mFingerprintStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/fingerprint/IFingerprintStateListener;

    .line 90
    .local v1, "listener":Landroid/hardware/fingerprint/IFingerprintStateListener;
    :try_start_0
    invoke-interface {v1, p1}, Landroid/hardware/fingerprint/IFingerprintStateListener;->onStateChanged(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    goto :goto_1

    .line 91
    :catch_0
    move-exception v2

    .line 92
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "FingerprintService"

    const-string v4, "Remote exception in fingerprint state change"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 94
    .end local v1    # "listener":Landroid/hardware/fingerprint/IFingerprintStateListener;
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 95
    :cond_0
    return-void
.end method


# virtual methods
.method public getFingerprintState()I
    .locals 1

    .line 51
    iget v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintStateCallback;->mFingerprintState:I

    return v0
.end method

.method public onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V
    .locals 2
    .param p1, "client"    # Lcom/android/server/biometrics/sensors/BaseClientMonitor;
    .param p2, "success"    # Z

    .line 80
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintStateCallback;->mFingerprintState:I

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Client finished, fps state updated to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintStateCallback;->mFingerprintState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", client "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FingerprintService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintStateCallback;->mFingerprintState:I

    invoke-direct {p0, v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintStateCallback;->notifyFingerprintStateListeners(I)V

    .line 85
    return-void
.end method

.method public onClientStarted(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)V
    .locals 4
    .param p1, "client"    # Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    .line 56
    iget v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintStateCallback;->mFingerprintState:I

    .line 57
    .local v0, "previousFingerprintState":I
    instance-of v1, p1, Lcom/android/server/biometrics/sensors/AuthenticationClient;

    const-string v2, "FingerprintService"

    if-eqz v1, :cond_2

    .line 58
    move-object v1, p1

    check-cast v1, Lcom/android/server/biometrics/sensors/AuthenticationClient;

    .line 59
    .local v1, "authClient":Lcom/android/server/biometrics/sensors/AuthenticationClient;
    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->isKeyguard()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 60
    const/4 v3, 0x2

    iput v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintStateCallback;->mFingerprintState:I

    goto :goto_0

    .line 61
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->isBiometricPrompt()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 62
    const/4 v3, 0x3

    iput v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintStateCallback;->mFingerprintState:I

    goto :goto_0

    .line 64
    :cond_1
    const/4 v3, 0x4

    iput v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintStateCallback;->mFingerprintState:I

    .line 66
    .end local v1    # "authClient":Lcom/android/server/biometrics/sensors/AuthenticationClient;
    :goto_0
    goto :goto_1

    :cond_2
    instance-of v1, p1, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintEnrollClient;

    if-eqz v1, :cond_3

    .line 67
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintStateCallback;->mFingerprintState:I

    goto :goto_1

    .line 69
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Other authentication client: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    invoke-static {p1}, Lcom/android/server/biometrics/Utils;->getClientName(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 69
    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintStateCallback;->mFingerprintState:I

    .line 73
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fps state updated from "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintStateCallback;->mFingerprintState:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", client "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintStateCallback;->mFingerprintState:I

    invoke-direct {p0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintStateCallback;->notifyFingerprintStateListeners(I)V

    .line 76
    return-void
.end method

.method public registerFingerprintStateListener(Landroid/hardware/fingerprint/IFingerprintStateListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/hardware/fingerprint/IFingerprintStateListener;

    .line 103
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintStateCallback;->mFingerprintStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    return-void
.end method
