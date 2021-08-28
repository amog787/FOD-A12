.class Lcom/android/server/biometrics/sensors/face/aidl/TestHal$1$3;
.super Landroid/hardware/biometrics/common/ICancellationSignal$Stub;
.source "TestHal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/biometrics/sensors/face/aidl/TestHal$1;->detectInteraction()Landroid/hardware/biometrics/common/ICancellationSignal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/biometrics/sensors/face/aidl/TestHal$1;


# direct methods
.method constructor <init>(Lcom/android/server/biometrics/sensors/face/aidl/TestHal$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/biometrics/sensors/face/aidl/TestHal$1;

    .line 127
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/TestHal$1$3;->this$1:Lcom/android/server/biometrics/sensors/face/aidl/TestHal$1;

    invoke-direct {p0}, Landroid/hardware/biometrics/common/ICancellationSignal$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 130
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/TestHal$1$3;->this$1:Lcom/android/server/biometrics/sensors/face/aidl/TestHal$1;

    iget-object v0, v0, Lcom/android/server/biometrics/sensors/face/aidl/TestHal$1;->val$cb:Landroid/hardware/biometrics/face/ISessionCallback;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/hardware/biometrics/face/ISessionCallback;->onError(BI)V

    .line 131
    return-void
.end method

.method public getInterfaceHash()Ljava/lang/String;
    .locals 1

    .line 138
    const-string v0, "9ad0b938db247283c4a8c1bf7e4218a420019024"

    return-object v0
.end method

.method public getInterfaceVersion()I
    .locals 1

    .line 134
    const/4 v0, 0x1

    return v0
.end method
