.class Lcom/android/server/biometrics/sensors/face/hidl/Face10$1;
.super Landroid/app/SynchronousUserSwitchObserver;
.source "Face10.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/sensors/face/hidl/Face10;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/biometrics/sensors/face/hidl/Face10;


# direct methods
.method constructor <init>(Lcom/android/server/biometrics/sensors/face/hidl/Face10;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/biometrics/sensors/face/hidl/Face10;

    .line 122
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$1;->this$0:Lcom/android/server/biometrics/sensors/face/hidl/Face10;

    invoke-direct {p0}, Landroid/app/SynchronousUserSwitchObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onUserSwitching(I)V
    .locals 9
    .param p1, "newUserId"    # I

    .line 125
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$1;->this$0:Lcom/android/server/biometrics/sensors/face/hidl/Face10;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->access$000(Lcom/android/server/biometrics/sensors/face/hidl/Face10;ILcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;)V

    .line 126
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$1;->this$0:Lcom/android/server/biometrics/sensors/face/hidl/Face10;

    invoke-static {v2}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->access$100(Lcom/android/server/biometrics/sensors/face/hidl/Face10;)I

    move-result v3

    new-instance v4, Landroid/os/Binder;

    invoke-direct {v4}, Landroid/os/Binder;-><init>()V

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$1;->this$0:Lcom/android/server/biometrics/sensors/face/hidl/Face10;

    .line 128
    invoke-static {v0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->access$200(Lcom/android/server/biometrics/sensors/face/hidl/Face10;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v8

    .line 126
    const/4 v6, 0x1

    const/4 v7, 0x0

    move v5, p1

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->scheduleGetFeature(ILandroid/os/IBinder;IILcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Ljava/lang/String;)V

    .line 129
    return-void
.end method
