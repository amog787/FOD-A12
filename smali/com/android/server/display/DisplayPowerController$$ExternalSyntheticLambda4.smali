.class public final synthetic Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/display/DisplayPowerController;

.field public final synthetic f$1:Lcom/android/server/display/DisplayDevice;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Lcom/android/server/display/DisplayDeviceConfig;

.field public final synthetic f$4:Landroid/os/IBinder;

.field public final synthetic f$5:Lcom/android/server/display/DisplayDeviceInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/display/DisplayPowerController;Lcom/android/server/display/DisplayDevice;Ljava/lang/String;Lcom/android/server/display/DisplayDeviceConfig;Landroid/os/IBinder;Lcom/android/server/display/DisplayDeviceInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/display/DisplayPowerController;

    iput-object p2, p0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda4;->f$1:Lcom/android/server/display/DisplayDevice;

    iput-object p3, p0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda4;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda4;->f$3:Lcom/android/server/display/DisplayDeviceConfig;

    iput-object p5, p0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda4;->f$4:Landroid/os/IBinder;

    iput-object p6, p0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda4;->f$5:Lcom/android/server/display/DisplayDeviceInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/display/DisplayPowerController;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda4;->f$1:Lcom/android/server/display/DisplayDevice;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda4;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda4;->f$3:Lcom/android/server/display/DisplayDeviceConfig;

    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda4;->f$4:Landroid/os/IBinder;

    iget-object v5, p0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda4;->f$5:Lcom/android/server/display/DisplayDeviceInfo;

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/display/DisplayPowerController;->lambda$onDisplayChanged$0$DisplayPowerController(Lcom/android/server/display/DisplayDevice;Ljava/lang/String;Lcom/android/server/display/DisplayDeviceConfig;Landroid/os/IBinder;Lcom/android/server/display/DisplayDeviceInfo;)V

    return-void
.end method
