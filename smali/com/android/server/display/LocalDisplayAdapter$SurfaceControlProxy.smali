.class Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;
.super Ljava/lang/Object;
.source "LocalDisplayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/LocalDisplayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SurfaceControlProxy"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDesiredDisplayModeSpecs(Landroid/os/IBinder;)Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;
    .locals 1
    .param p1, "displayToken"    # Landroid/os/IBinder;

    .line 1236
    invoke-static {p1}, Landroid/view/SurfaceControl;->getDesiredDisplayModeSpecs(Landroid/os/IBinder;)Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayBrightnessSupport(Landroid/os/IBinder;)Z
    .locals 1
    .param p1, "displayToken"    # Landroid/os/IBinder;

    .line 1262
    invoke-static {p1}, Landroid/view/SurfaceControl;->getDisplayBrightnessSupport(Landroid/os/IBinder;)Z

    move-result v0

    return v0
.end method

.method public getDynamicDisplayInfo(Landroid/os/IBinder;)Landroid/view/SurfaceControl$DynamicDisplayInfo;
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;

    .line 1219
    invoke-static {p1}, Landroid/view/SurfaceControl;->getDynamicDisplayInfo(Landroid/os/IBinder;)Landroid/view/SurfaceControl$DynamicDisplayInfo;

    move-result-object v0

    return-object v0
.end method

.method public getPhysicalDisplayIds()[J
    .locals 1

    .line 1223
    invoke-static {}, Landroid/view/SurfaceControl;->getPhysicalDisplayIds()[J

    move-result-object v0

    return-object v0
.end method

.method public getPhysicalDisplayToken(J)Landroid/os/IBinder;
    .locals 1
    .param p1, "physicalDisplayId"    # J

    .line 1227
    invoke-static {p1, p2}, Landroid/view/SurfaceControl;->getPhysicalDisplayToken(J)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public getStaticDisplayInfo(Landroid/os/IBinder;)Landroid/view/SurfaceControl$StaticDisplayInfo;
    .locals 1
    .param p1, "displayToken"    # Landroid/os/IBinder;

    .line 1231
    invoke-static {p1}, Landroid/view/SurfaceControl;->getStaticDisplayInfo(Landroid/os/IBinder;)Landroid/view/SurfaceControl$StaticDisplayInfo;

    move-result-object v0

    return-object v0
.end method

.method public setActiveColorMode(Landroid/os/IBinder;I)Z
    .locals 1
    .param p1, "displayToken"    # Landroid/os/IBinder;
    .param p2, "colorMode"    # I

    .line 1249
    invoke-static {p1, p2}, Landroid/view/SurfaceControl;->setActiveColorMode(Landroid/os/IBinder;I)Z

    move-result v0

    return v0
.end method

.method public setAutoLowLatencyMode(Landroid/os/IBinder;Z)V
    .locals 0
    .param p1, "displayToken"    # Landroid/os/IBinder;
    .param p2, "on"    # Z

    .line 1253
    invoke-static {p1, p2}, Landroid/view/SurfaceControl;->setAutoLowLatencyMode(Landroid/os/IBinder;Z)V

    .line 1255
    return-void
.end method

.method public setDesiredDisplayModeSpecs(Landroid/os/IBinder;Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;)Z
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "specs"    # Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;

    .line 1241
    invoke-static {p1, p2}, Landroid/view/SurfaceControl;->setDesiredDisplayModeSpecs(Landroid/os/IBinder;Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;)Z

    move-result v0

    return v0
.end method

.method public setDisplayBrightness(Landroid/os/IBinder;F)Z
    .locals 1
    .param p1, "displayToken"    # Landroid/os/IBinder;
    .param p2, "brightness"    # F

    .line 1266
    invoke-static {p1, p2}, Landroid/view/SurfaceControl;->setDisplayBrightness(Landroid/os/IBinder;F)Z

    move-result v0

    return v0
.end method

.method public setDisplayBrightness(Landroid/os/IBinder;FFFF)Z
    .locals 1
    .param p1, "displayToken"    # Landroid/os/IBinder;
    .param p2, "sdrBacklight"    # F
    .param p3, "sdrNits"    # F
    .param p4, "displayBacklight"    # F
    .param p5, "displayNits"    # F

    .line 1271
    invoke-static {p1, p2, p3, p4, p5}, Landroid/view/SurfaceControl;->setDisplayBrightness(Landroid/os/IBinder;FFFF)Z

    move-result v0

    return v0
.end method

.method public setDisplayPowerMode(Landroid/os/IBinder;I)V
    .locals 0
    .param p1, "displayToken"    # Landroid/os/IBinder;
    .param p2, "mode"    # I

    .line 1245
    invoke-static {p1, p2}, Landroid/view/SurfaceControl;->setDisplayPowerMode(Landroid/os/IBinder;I)V

    .line 1246
    return-void
.end method

.method public setGameContentType(Landroid/os/IBinder;Z)V
    .locals 0
    .param p1, "displayToken"    # Landroid/os/IBinder;
    .param p2, "on"    # Z

    .line 1258
    invoke-static {p1, p2}, Landroid/view/SurfaceControl;->setGameContentType(Landroid/os/IBinder;Z)V

    .line 1259
    return-void
.end method
