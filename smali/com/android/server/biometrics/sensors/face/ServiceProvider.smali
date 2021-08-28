.class public interface abstract Lcom/android/server/biometrics/sensors/face/ServiceProvider;
.super Ljava/lang/Object;
.source "ServiceProvider.java"


# virtual methods
.method public abstract cancelAuthentication(ILandroid/os/IBinder;)V
.end method

.method public abstract cancelEnrollment(ILandroid/os/IBinder;)V
.end method

.method public abstract cancelFaceDetect(ILandroid/os/IBinder;)V
.end method

.method public abstract containsSensor(I)Z
.end method

.method public abstract createTestSession(ILandroid/hardware/biometrics/ITestSessionCallback;Ljava/lang/String;)Landroid/hardware/biometrics/ITestSession;
.end method

.method public abstract dumpHal(ILjava/io/FileDescriptor;[Ljava/lang/String;)V
.end method

.method public abstract dumpInternal(ILjava/io/PrintWriter;)V
.end method

.method public abstract dumpProtoMetrics(ILjava/io/FileDescriptor;)V
.end method

.method public abstract dumpProtoState(ILandroid/util/proto/ProtoOutputStream;Z)V
.end method

.method public abstract getAuthenticatorId(II)J
.end method

.method public abstract getEnrolledFaces(II)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Landroid/hardware/face/Face;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLockoutModeForUser(II)I
.end method

.method public abstract getSensorProperties(I)Landroid/hardware/face/FaceSensorPropertiesInternal;
.end method

.method public abstract getSensorProperties()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/face/FaceSensorPropertiesInternal;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isHardwareDetected(I)Z
.end method

.method public abstract scheduleAuthenticate(ILandroid/os/IBinder;JIILcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Ljava/lang/String;ZIZ)V
.end method

.method public abstract scheduleEnroll(ILandroid/os/IBinder;[BILandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;[ILandroid/os/NativeHandle;Z)V
.end method

.method public abstract scheduleFaceDetect(ILandroid/os/IBinder;ILcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Ljava/lang/String;I)V
.end method

.method public abstract scheduleGenerateChallenge(IILandroid/os/IBinder;Landroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;)V
.end method

.method public abstract scheduleGetFeature(ILandroid/os/IBinder;IILcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Ljava/lang/String;)V
.end method

.method public abstract scheduleInternalCleanup(IILcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;)V
.end method

.method public scheduleInvalidateAuthenticatorId(IILandroid/hardware/biometrics/IInvalidationCallback;)V
    .locals 2
    .param p1, "sensorId"    # I
    .param p2, "userId"    # I
    .param p3, "callback"    # Landroid/hardware/biometrics/IInvalidationCallback;

    .line 83
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Providers that support invalidation must override this method"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract scheduleRemove(ILandroid/os/IBinder;IILandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;)V
.end method

.method public abstract scheduleRemoveAll(ILandroid/os/IBinder;ILandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;)V
.end method

.method public abstract scheduleResetLockout(II[B)V
.end method

.method public abstract scheduleRevokeChallenge(IILandroid/os/IBinder;Ljava/lang/String;J)V
.end method

.method public abstract scheduleSetFeature(ILandroid/os/IBinder;IIZ[BLandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;)V
.end method

.method public abstract startPreparedClient(II)V
.end method
