.class Lcom/android/server/biometrics/sensors/fingerprint/UdfpsHelper$1;
.super Landroid/hardware/fingerprint/IUdfpsOverlayControllerCallback$Stub;
.source "UdfpsHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/biometrics/sensors/fingerprint/UdfpsHelper;->showUdfpsOverlay(IILandroid/hardware/fingerprint/IUdfpsOverlayController;Lcom/android/server/biometrics/sensors/AcquisitionClient;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$client:Lcom/android/server/biometrics/sensors/AcquisitionClient;


# direct methods
.method constructor <init>(Lcom/android/server/biometrics/sensors/AcquisitionClient;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/UdfpsHelper$1;->val$client:Lcom/android/server/biometrics/sensors/AcquisitionClient;

    invoke-direct {p0}, Landroid/hardware/fingerprint/IUdfpsOverlayControllerCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onUserCanceled()V
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/UdfpsHelper$1;->val$client:Lcom/android/server/biometrics/sensors/AcquisitionClient;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/AcquisitionClient;->onUserCanceled()V

    .line 94
    return-void
.end method
