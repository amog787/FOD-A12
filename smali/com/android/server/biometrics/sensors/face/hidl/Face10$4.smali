.class Lcom/android/server/biometrics/sensors/face/hidl/Face10$4;
.super Ljava/lang/Object;
.source "Face10.java"

# interfaces
.implements Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/biometrics/sensors/face/hidl/Face10;->lambda$scheduleEnroll$5$Face10(ILandroid/os/IBinder;Landroid/hardware/face/IFaceServiceReceiver;[BLjava/lang/String;[ILandroid/os/NativeHandle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/biometrics/sensors/face/hidl/Face10;

.field final synthetic val$client:Lcom/android/server/biometrics/sensors/face/hidl/FaceEnrollClient;


# direct methods
.method constructor <init>(Lcom/android/server/biometrics/sensors/face/hidl/Face10;Lcom/android/server/biometrics/sensors/face/hidl/FaceEnrollClient;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/biometrics/sensors/face/hidl/Face10;

    .line 584
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$4;->this$0:Lcom/android/server/biometrics/sensors/face/hidl/Face10;

    iput-object p2, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$4;->val$client:Lcom/android/server/biometrics/sensors/face/hidl/FaceEnrollClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V
    .locals 2
    .param p1, "clientMonitor"    # Lcom/android/server/biometrics/sensors/BaseClientMonitor;
    .param p2, "success"    # Z

    .line 588
    if-eqz p2, :cond_0

    .line 590
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$4;->this$0:Lcom/android/server/biometrics/sensors/face/hidl/Face10;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$4;->val$client:Lcom/android/server/biometrics/sensors/face/hidl/FaceEnrollClient;

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/face/hidl/FaceEnrollClient;->getTargetUserId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->access$400(Lcom/android/server/biometrics/sensors/face/hidl/Face10;I)V

    .line 592
    :cond_0
    return-void
.end method
