.class public Lcom/android/server/biometrics/sensors/fingerprint/SidefpsHelper;
.super Ljava/lang/Object;
.source "SidefpsHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SidefpsHelper"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hideOverlay(Landroid/hardware/fingerprint/ISidefpsController;)V
    .locals 3
    .param p0, "sidefpsController"    # Landroid/hardware/fingerprint/ISidefpsController;

    .line 51
    if-nez p0, :cond_0

    .line 52
    return-void

    .line 55
    :cond_0
    :try_start_0
    invoke-interface {p0}, Landroid/hardware/fingerprint/ISidefpsController;->hide()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    goto :goto_0

    .line 56
    :catch_0
    move-exception v0

    .line 57
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SidefpsHelper"

    const-string v2, "Remote exception when hiding the side-fps overlay"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 59
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public static showOverlay(Landroid/hardware/fingerprint/ISidefpsController;)V
    .locals 3
    .param p0, "sidefpsController"    # Landroid/hardware/fingerprint/ISidefpsController;

    .line 35
    if-nez p0, :cond_0

    .line 36
    return-void

    .line 40
    :cond_0
    :try_start_0
    invoke-interface {p0}, Landroid/hardware/fingerprint/ISidefpsController;->show()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    goto :goto_0

    .line 41
    :catch_0
    move-exception v0

    .line 42
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SidefpsHelper"

    const-string v2, "Remote exception when showing the side-fps overlay"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 44
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method
