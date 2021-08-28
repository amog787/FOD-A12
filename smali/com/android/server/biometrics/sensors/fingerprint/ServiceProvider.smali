.class public interface abstract Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;
.super Ljava/lang/Object;
.source "ServiceProvider.java"


# virtual methods
.method public abstract cancelAuthentication(ILandroid/os/IBinder;)V
.end method

.method public abstract cancelEnrollment(ILandroid/os/IBinder;)V
.end method

.method public abstract containsSensor(I)Z
.end method

.method public abstract createTestSession(ILandroid/hardware/biometrics/ITestSessionCallback;Lcom/android/server/biometrics/sensors/fingerprint/FingerprintStateCallback;Ljava/lang/String;)Landroid/hardware/biometrics/ITestSession;
.end method

.method public abstract dumpInternal(ILjava/io/PrintWriter;)V
.end method

.method public abstract dumpProtoMetrics(ILjava/io/FileDescriptor;)V
.end method

.method public abstract dumpProtoState(ILandroid/util/proto/ProtoOutputStream;Z)V
.end method

.method public abstract getAuthenticatorId(II)J
.end method

.method public abstract getEnrolledFingerprints(II)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Landroid/hardware/fingerprint/Fingerprint;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLockoutModeForUser(II)I
.end method

.method public abstract getSensorProperties(I)Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;
.end method

.method public abstract getSensorProperties()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isHardwareDetected(I)Z
.end method

.method public abstract onPointerDown(IIIFF)V
.end method

.method public abstract onPointerUp(I)V
.end method

.method public abstract onUiReady(I)V
.end method

.method public abstract rename(IIILjava/lang/String;)V
.end method

.method public abstract scheduleAuthenticate(ILandroid/os/IBinder;JIILcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Ljava/lang/String;ZIZLcom/android/server/biometrics/sensors/fingerprint/FingerprintStateCallback;)V
.end method

.method public abstract scheduleEnroll(ILandroid/os/IBinder;[BILandroid/hardware/fingerprint/IFingerprintServiceReceiver;Ljava/lang/String;ILcom/android/server/biometrics/sensors/fingerprint/FingerprintStateCallback;)V
.end method

.method public abstract scheduleFingerDetect(ILandroid/os/IBinder;ILcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Ljava/lang/String;ILcom/android/server/biometrics/sensors/fingerprint/FingerprintStateCallback;)V
.end method

.method public abstract scheduleGenerateChallenge(IILandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;Ljava/lang/String;)V
.end method

.method public abstract scheduleInternalCleanup(IILcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;)V
.end method

.method public abstract scheduleInvalidateAuthenticatorId(IILandroid/hardware/biometrics/IInvalidationCallback;)V
.end method

.method public abstract scheduleRemove(ILandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;IILjava/lang/String;)V
.end method

.method public abstract scheduleRemoveAll(ILandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;ILjava/lang/String;)V
.end method

.method public abstract scheduleResetLockout(II[B)V
.end method

.method public abstract scheduleRevokeChallenge(IILandroid/os/IBinder;Ljava/lang/String;J)V
.end method

.method public abstract setSidefpsController(Landroid/hardware/fingerprint/ISidefpsController;)V
.end method

.method public abstract setUdfpsOverlayController(Landroid/hardware/fingerprint/IUdfpsOverlayController;)V
.end method

.method public abstract startPreparedClient(II)V
.end method
