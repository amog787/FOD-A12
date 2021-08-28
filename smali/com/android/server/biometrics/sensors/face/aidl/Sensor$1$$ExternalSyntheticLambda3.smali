.class public final synthetic Lcom/android/server/biometrics/sensors/face/aidl/Sensor$1$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback$Callback;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/sensors/face/aidl/Sensor$1;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/sensors/face/aidl/Sensor$1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$1$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/biometrics/sensors/face/aidl/Sensor$1;

    return-void
.end method


# virtual methods
.method public final onHardwareUnavailable()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$1$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/biometrics/sensors/face/aidl/Sensor$1;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$1;->lambda$getStartUserClient$1$Sensor$1()V

    return-void
.end method
