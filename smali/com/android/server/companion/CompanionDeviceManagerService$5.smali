.class Lcom/android/server/companion/CompanionDeviceManagerService$5;
.super Landroid/bluetooth/BluetoothAdapter$ServiceLifecycleCallback;
.source "CompanionDeviceManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/companion/CompanionDeviceManagerService;->initBleScanning()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/companion/CompanionDeviceManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/companion/CompanionDeviceManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/companion/CompanionDeviceManagerService;

    .line 1408
    iput-object p1, p0, Lcom/android/server/companion/CompanionDeviceManagerService$5;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-direct {p0}, Landroid/bluetooth/BluetoothAdapter$ServiceLifecycleCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onBluetoothServiceDown()V
    .locals 2

    .line 1417
    const-string v0, "CompanionDeviceManagerService"

    const-string v1, "Bluetooth stack is down"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1418
    return-void
.end method

.method public onBluetoothServiceUp()V
    .locals 2

    .line 1411
    const-string v0, "CompanionDeviceManagerService"

    const-string v1, "Bluetooth stack is up"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1412
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$5;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-virtual {v0}, Lcom/android/server/companion/CompanionDeviceManagerService;->startBleScan()V

    .line 1413
    return-void
.end method
