.class Lcom/android/server/biometrics/sensors/LoggableMonitor$1;
.super Ljava/lang/Object;
.source "LoggableMonitor.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/sensors/LoggableMonitor;
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

    .line 55
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/LoggableMonitor$1;->this$0:Lcom/android/server/biometrics/sensors/LoggableMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .line 64
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .line 58
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/LoggableMonitor$1;->this$0:Lcom/android/server/biometrics/sensors/LoggableMonitor;

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-static {v0, v1}, Lcom/android/server/biometrics/sensors/LoggableMonitor;->access$002(Lcom/android/server/biometrics/sensors/LoggableMonitor;F)F

    .line 59
    return-void
.end method
