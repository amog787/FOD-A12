.class Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl$2;
.super Ljava/lang/Object;
.source "BiometricTestSessionImpl.java"

# interfaces
.implements Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl;->cleanupInternalState(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl;


# direct methods
.method constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl;

    .line 208
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl$2;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V
    .locals 3
    .param p1, "clientMonitor"    # Lcom/android/server/biometrics/sensors/BaseClientMonitor;
    .param p2, "success"    # Z

    .line 223
    const-string v0, "fp/aidl/BiometricTestSessionImpl"

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onClientFinished: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl$2;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl;

    invoke-static {v1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl;->access$000(Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl;)Landroid/hardware/biometrics/ITestSessionCallback;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getTargetUserId()I

    move-result v2

    invoke-interface {v1, v2}, Landroid/hardware/biometrics/ITestSessionCallback;->onCleanupFinished(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    goto :goto_0

    .line 225
    :catch_0
    move-exception v1

    .line 226
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "Remote exception"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 228
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public onClientStarted(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)V
    .locals 3
    .param p1, "clientMonitor"    # Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    .line 212
    const-string v0, "fp/aidl/BiometricTestSessionImpl"

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onClientStarted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl$2;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl;

    invoke-static {v1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl;->access$000(Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl;)Landroid/hardware/biometrics/ITestSessionCallback;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getTargetUserId()I

    move-result v2

    invoke-interface {v1, v2}, Landroid/hardware/biometrics/ITestSessionCallback;->onCleanupStarted(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    goto :goto_0

    .line 214
    :catch_0
    move-exception v1

    .line 215
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "Remote exception"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 217
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method
