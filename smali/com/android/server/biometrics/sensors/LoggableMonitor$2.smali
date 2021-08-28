.class Lcom/android/server/biometrics/sensors/LoggableMonitor$2;
.super Ljava/lang/Object;
.source "LoggableMonitor.java"

# interfaces
.implements Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/biometrics/sensors/LoggableMonitor;->createALSCallback()Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/biometrics/sensors/LoggableMonitor;


# direct methods
.method constructor <init>(Lcom/android/server/biometrics/sensors/LoggableMonitor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/biometrics/sensors/LoggableMonitor;

    .line 291
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/LoggableMonitor$2;->this$0:Lcom/android/server/biometrics/sensors/LoggableMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V
    .locals 2
    .param p1, "clientMonitor"    # Lcom/android/server/biometrics/sensors/BaseClientMonitor;
    .param p2, "success"    # Z

    .line 300
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/LoggableMonitor$2;->this$0:Lcom/android/server/biometrics/sensors/LoggableMonitor;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/biometrics/sensors/LoggableMonitor;->access$200(Lcom/android/server/biometrics/sensors/LoggableMonitor;Landroid/hardware/Sensor;)V

    .line 301
    return-void
.end method

.method public onClientStarted(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)V
    .locals 2
    .param p1, "clientMonitor"    # Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    .line 294
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/LoggableMonitor$2;->this$0:Lcom/android/server/biometrics/sensors/LoggableMonitor;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/LoggableMonitor;->access$100(Lcom/android/server/biometrics/sensors/LoggableMonitor;)Landroid/hardware/SensorManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/sensors/LoggableMonitor;->getAmbientLightSensor(Landroid/hardware/SensorManager;)Landroid/hardware/Sensor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/biometrics/sensors/LoggableMonitor;->access$200(Lcom/android/server/biometrics/sensors/LoggableMonitor;Landroid/hardware/Sensor;)V

    .line 295
    return-void
.end method
