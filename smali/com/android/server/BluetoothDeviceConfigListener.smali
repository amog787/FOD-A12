.class Lcom/android/server/BluetoothDeviceConfigListener;
.super Ljava/lang/Object;
.source "BluetoothDeviceConfigListener.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BluetoothDeviceConfigListener"


# instance fields
.field private final mDeviceConfigChangedListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

.field private final mLogDebug:Z

.field private final mService:Lcom/android/server/BluetoothManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/BluetoothManagerService;Z)V
    .locals 3
    .param p1, "service"    # Lcom/android/server/BluetoothManagerService;
    .param p2, "logDebug"    # Z

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Lcom/android/server/BluetoothDeviceConfigListener$1;

    invoke-direct {v0, p0}, Lcom/android/server/BluetoothDeviceConfigListener$1;-><init>(Lcom/android/server/BluetoothDeviceConfigListener;)V

    iput-object v0, p0, Lcom/android/server/BluetoothDeviceConfigListener;->mDeviceConfigChangedListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    .line 40
    iput-object p1, p0, Lcom/android/server/BluetoothDeviceConfigListener;->mService:Lcom/android/server/BluetoothManagerService;

    .line 41
    iput-boolean p2, p0, Lcom/android/server/BluetoothDeviceConfigListener;->mLogDebug:Z

    .line 42
    sget-object v1, Lcom/android/server/BluetoothDeviceConfigListener$$ExternalSyntheticLambda0;->INSTANCE:Lcom/android/server/BluetoothDeviceConfigListener$$ExternalSyntheticLambda0;

    const-string v2, "bluetooth"

    invoke-static {v2, v1, v0}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 46
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/BluetoothDeviceConfigListener;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BluetoothDeviceConfigListener;

    .line 33
    iget-boolean v0, p0, Lcom/android/server/BluetoothDeviceConfigListener;->mLogDebug:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/BluetoothDeviceConfigListener;)Lcom/android/server/BluetoothManagerService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BluetoothDeviceConfigListener;

    .line 33
    iget-object v0, p0, Lcom/android/server/BluetoothDeviceConfigListener;->mService:Lcom/android/server/BluetoothManagerService;

    return-object v0
.end method

.method static synthetic lambda$new$0(Ljava/lang/Runnable;)V
    .locals 0
    .param p0, "r"    # Ljava/lang/Runnable;

    .line 44
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
