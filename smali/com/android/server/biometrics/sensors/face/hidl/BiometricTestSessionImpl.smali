.class public Lcom/android/server/biometrics/sensors/face/hidl/BiometricTestSessionImpl;
.super Landroid/hardware/biometrics/ITestSession$Stub;
.source "BiometricTestSessionImpl.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BiometricTestSessionImpl"


# instance fields
.field private final mCallback:Landroid/hardware/biometrics/ITestSessionCallback;

.field private final mContext:Landroid/content/Context;

.field private final mEnrollmentIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mFace10:Lcom/android/server/biometrics/sensors/face/hidl/Face10;

.field private final mHalResultController:Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;

.field private final mRandom:Ljava/util/Random;

.field private final mReceiver:Landroid/hardware/face/IFaceServiceReceiver;

.field private final mSensorId:I


# direct methods
.method constructor <init>(Landroid/content/Context;ILandroid/hardware/biometrics/ITestSessionCallback;Lcom/android/server/biometrics/sensors/face/hidl/Face10;Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sensorId"    # I
    .param p3, "callback"    # Landroid/hardware/biometrics/ITestSessionCallback;
    .param p4, "face10"    # Lcom/android/server/biometrics/sensors/face/hidl/Face10;
    .param p5, "halResultController"    # Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;

    .line 119
    invoke-direct {p0}, Landroid/hardware/biometrics/ITestSession$Stub;-><init>()V

    .line 55
    new-instance v0, Lcom/android/server/biometrics/sensors/face/hidl/BiometricTestSessionImpl$1;

    invoke-direct {v0, p0}, Lcom/android/server/biometrics/sensors/face/hidl/BiometricTestSessionImpl$1;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/BiometricTestSessionImpl;)V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/BiometricTestSessionImpl;->mReceiver:Landroid/hardware/face/IFaceServiceReceiver;

    .line 120
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/BiometricTestSessionImpl;->mContext:Landroid/content/Context;

    .line 121
    iput p2, p0, Lcom/android/server/biometrics/sensors/face/hidl/BiometricTestSessionImpl;->mSensorId:I

    .line 122
    iput-object p3, p0, Lcom/android/server/biometrics/sensors/face/hidl/BiometricTestSessionImpl;->mCallback:Landroid/hardware/biometrics/ITestSessionCallback;

    .line 123
    iput-object p4, p0, Lcom/android/server/biometrics/sensors/face/hidl/BiometricTestSessionImpl;->mFace10:Lcom/android/server/biometrics/sensors/face/hidl/Face10;

    .line 124
    iput-object p5, p0, Lcom/android/server/biometrics/sensors/face/hidl/BiometricTestSessionImpl;->mHalResultController:Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;

    .line 125
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/BiometricTestSessionImpl;->mEnrollmentIds:Ljava/util/Set;

    .line 126
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/BiometricTestSessionImpl;->mRandom:Ljava/util/Random;

    .line 127
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/biometrics/sensors/face/hidl/BiometricTestSessionImpl;)Landroid/hardware/biometrics/ITestSessionCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/biometrics/sensors/face/hidl/BiometricTestSessionImpl;

    .line 44
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/BiometricTestSessionImpl;->mCallback:Landroid/hardware/biometrics/ITestSessionCallback;

    return-object v0
.end method


# virtual methods
.method public acceptAuthentication(I)V
    .locals 9
    .param p1, "userId"    # I

    .line 161
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/BiometricTestSessionImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.TEST_BIOMETRIC"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 164
    iget v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/BiometricTestSessionImpl;->mSensorId:I

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getLegacyInstance(I)Lcom/android/server/biometrics/sensors/face/FaceUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/BiometricTestSessionImpl;->mContext:Landroid/content/Context;

    .line 165
    invoke-virtual {v0, v1, p1}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    .line 166
    .local v0, "faces":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/face/Face;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 167
    const-string v1, "BiometricTestSessionImpl"

    const-string v2, "No faces, returning"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    return-void

    .line 170
    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/face/Face;

    invoke-virtual {v2}, Landroid/hardware/face/Face;->getBiometricId()I

    move-result v2

    .line 171
    .local v2, "fid":I
    new-instance v8, Ljava/util/ArrayList;

    const/16 v3, 0x45

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v3, v1}, Ljava/util/Collections;->nCopies(ILjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v8, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 172
    .local v8, "hat":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/face/hidl/BiometricTestSessionImpl;->mHalResultController:Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;

    const-wide/16 v4, 0x0

    move v6, v2

    move v7, p1

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;->onAuthenticated(JIILjava/util/ArrayList;)V

    .line 173
    return-void
.end method

.method public cleanupInternalState(I)V
    .locals 3
    .param p1, "userId"    # I

    .line 198
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/BiometricTestSessionImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.TEST_BIOMETRIC"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 200
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/BiometricTestSessionImpl;->mFace10:Lcom/android/server/biometrics/sensors/face/hidl/Face10;

    iget v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/BiometricTestSessionImpl;->mSensorId:I

    new-instance v2, Lcom/android/server/biometrics/sensors/face/hidl/BiometricTestSessionImpl$2;

    invoke-direct {v2, p0}, Lcom/android/server/biometrics/sensors/face/hidl/BiometricTestSessionImpl$2;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/BiometricTestSessionImpl;)V

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->scheduleInternalCleanup(IILcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;)V

    .line 220
    return-void
.end method

.method public finishEnroll(I)V
    .locals 7
    .param p1, "userId"    # I

    .line 147
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/BiometricTestSessionImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.TEST_BIOMETRIC"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/BiometricTestSessionImpl;->mRandom:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    .line 150
    .local v0, "nextRandomId":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/BiometricTestSessionImpl;->mEnrollmentIds:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 151
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/BiometricTestSessionImpl;->mRandom:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    move-result v0

    goto :goto_0

    .line 154
    :cond_0
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/BiometricTestSessionImpl;->mEnrollmentIds:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 155
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/BiometricTestSessionImpl;->mHalResultController:Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;

    const-wide/16 v2, 0x0

    const/4 v6, 0x0

    move v4, v0

    move v5, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;->onEnrollResult(JIII)V

    .line 157
    return-void
.end method

.method public notifyAcquired(II)V
    .locals 8
    .param p1, "userId"    # I
    .param p2, "acquireInfo"    # I

    .line 184
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/BiometricTestSessionImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.TEST_BIOMETRIC"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 186
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/face/hidl/BiometricTestSessionImpl;->mHalResultController:Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;

    const-wide/16 v3, 0x0

    const/4 v7, 0x0

    move v5, p1

    move v6, p2

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;->onAcquired(JIII)V

    .line 187
    return-void
.end method

.method public notifyError(II)V
    .locals 8
    .param p1, "userId"    # I
    .param p2, "errorCode"    # I

    .line 191
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/BiometricTestSessionImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.TEST_BIOMETRIC"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 193
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/face/hidl/BiometricTestSessionImpl;->mHalResultController:Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;

    const-wide/16 v3, 0x0

    const/4 v7, 0x0

    move v5, p1

    move v6, p2

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;->onError(JIII)V

    .line 194
    return-void
.end method

.method public rejectAuthentication(I)V
    .locals 8
    .param p1, "userId"    # I

    .line 177
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/BiometricTestSessionImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.TEST_BIOMETRIC"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 179
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/face/hidl/BiometricTestSessionImpl;->mHalResultController:Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move v6, p1

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;->onAuthenticated(JIILjava/util/ArrayList;)V

    .line 180
    return-void
.end method

.method public setTestHalEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .line 131
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/BiometricTestSessionImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.TEST_BIOMETRIC"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/BiometricTestSessionImpl;->mFace10:Lcom/android/server/biometrics/sensors/face/hidl/Face10;

    invoke-virtual {v0, p1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->setTestHalEnabled(Z)V

    .line 134
    return-void
.end method

.method public startEnroll(I)V
    .locals 12
    .param p1, "userId"    # I

    .line 138
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/BiometricTestSessionImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.TEST_BIOMETRIC"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 140
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/face/hidl/BiometricTestSessionImpl;->mFace10:Lcom/android/server/biometrics/sensors/face/hidl/Face10;

    iget v3, p0, Lcom/android/server/biometrics/sensors/face/hidl/BiometricTestSessionImpl;->mSensorId:I

    new-instance v4, Landroid/os/Binder;

    invoke-direct {v4}, Landroid/os/Binder;-><init>()V

    const/16 v0, 0x45

    new-array v5, v0, [B

    iget-object v7, p0, Lcom/android/server/biometrics/sensors/face/hidl/BiometricTestSessionImpl;->mReceiver:Landroid/hardware/face/IFaceServiceReceiver;

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/BiometricTestSessionImpl;->mContext:Landroid/content/Context;

    .line 141
    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v8

    const/4 v0, 0x0

    new-array v9, v0, [I

    .line 140
    const/4 v10, 0x0

    const/4 v11, 0x0

    move v6, p1

    invoke-virtual/range {v2 .. v11}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->scheduleEnroll(ILandroid/os/IBinder;[BILandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;[ILandroid/os/NativeHandle;Z)V

    .line 143
    return-void
.end method
