.class Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$1;
.super Ljava/lang/Object;
.source "FaceProvider.java"

# interfaces
.implements Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->lambda$scheduleEnroll$5$FaceProvider(ILandroid/os/IBinder;Landroid/hardware/face/IFaceServiceReceiver;I[BLjava/lang/String;[ILandroid/os/NativeHandle;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

.field final synthetic val$sensorId:I

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    .line 340
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$1;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    iput p2, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$1;->val$sensorId:I

    iput p3, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$1;->val$userId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V
    .locals 3
    .param p1, "clientMonitor"    # Lcom/android/server/biometrics/sensors/BaseClientMonitor;
    .param p2, "success"    # Z

    .line 344
    if-eqz p2, :cond_0

    .line 345
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$1;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    iget v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$1;->val$sensorId:I

    iget v2, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$1;->val$userId:I

    invoke-static {v0, v1, v2}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->access$500(Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;II)V

    .line 346
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$1;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    iget v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$1;->val$sensorId:I

    iget v2, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$1;->val$userId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->scheduleInvalidationRequest(II)V

    .line 348
    :cond_0
    return-void
.end method
