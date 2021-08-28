.class public Lcom/android/server/vibrator/VibratorManagerService;
.super Landroid/os/IVibratorManagerService$Stub;
.source "VibratorManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;,
        Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;,
        Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;,
        Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;,
        Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;,
        Lcom/android/server/vibrator/VibratorManagerService$AlwaysOnVibration;,
        Lcom/android/server/vibrator/VibratorManagerService$VibrationCompleteListener;,
        Lcom/android/server/vibrator/VibratorManagerService$OnSyncedVibrationCompleteListener;,
        Lcom/android/server/vibrator/VibratorManagerService$VibrationCallbacks;,
        Lcom/android/server/vibrator/VibratorManagerService$Injector;,
        Lcom/android/server/vibrator/VibratorManagerService$Lifecycle;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEFAULT_ATTRIBUTES:Landroid/os/VibrationAttributes;

.field private static final EXTERNAL_VIBRATOR_SERVICE:Ljava/lang/String; = "external_vibrator_service"

.field private static final TAG:Ljava/lang/String; = "VibratorManagerService"


# instance fields
.field private final mAlwaysOnEffects:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/vibrator/VibratorManagerService$AlwaysOnVibration;",
            ">;"
        }
    .end annotation
.end field

.field private final mAppOps:Landroid/app/AppOpsManager;

.field private final mBatteryStatsService:Lcom/android/internal/app/IBatteryStats;

.field private final mCapabilities:J

.field private final mContext:Landroid/content/Context;

.field private mCurrentExternalVibration:Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;

.field private mCurrentVibration:Lcom/android/server/vibrator/VibrationThread;

.field private final mDeviceVibrationEffectAdapter:Lcom/android/server/vibrator/DeviceVibrationEffectAdapter;

.field private final mHandler:Landroid/os/Handler;

.field private final mInputDeviceDelegate:Lcom/android/server/vibrator/InputDeviceDelegate;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private final mLock:Ljava/lang/Object;

.field private final mNativeWrapper:Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;

.field private mNextVibration:Lcom/android/server/vibrator/VibrationThread;

.field private final mNextVibrationId:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mSystemUiPackage:Ljava/lang/String;

.field private final mVibrationCallbacks:Lcom/android/server/vibrator/VibratorManagerService$VibrationCallbacks;

.field private final mVibrationScaler:Lcom/android/server/vibrator/VibrationScaler;

.field private final mVibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

.field private final mVibratorIds:[I

.field private final mVibratorManagerRecords:Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;

.field private final mVibrators:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/vibrator/VibratorController;",
            ">;"
        }
    .end annotation
.end field

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 82
    new-instance v0, Landroid/os/VibrationAttributes$Builder;

    invoke-direct {v0}, Landroid/os/VibrationAttributes$Builder;-><init>()V

    .line 83
    invoke-virtual {v0}, Landroid/os/VibrationAttributes$Builder;->build()Landroid/os/VibrationAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/server/vibrator/VibratorManagerService;->DEFAULT_ATTRIBUTES:Landroid/os/VibrationAttributes;

    .line 82
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/vibrator/VibratorManagerService$Injector;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "injector"    # Lcom/android/server/vibrator/VibratorManagerService$Injector;

    .line 172
    invoke-direct {p0}, Landroid/os/IVibratorManagerService$Stub;-><init>()V

    .line 108
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mNextVibrationId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 110
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mLock:Ljava/lang/Object;

    .line 122
    new-instance v0, Lcom/android/server/vibrator/VibratorManagerService$VibrationCallbacks;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/android/server/vibrator/VibratorManagerService$VibrationCallbacks;-><init>(Lcom/android/server/vibrator/VibratorManagerService;Lcom/android/server/vibrator/VibratorManagerService$1;)V

    iput-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationCallbacks:Lcom/android/server/vibrator/VibratorManagerService$VibrationCallbacks;

    .line 123
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mAlwaysOnEffects:Landroid/util/SparseArray;

    .line 137
    new-instance v0, Lcom/android/server/vibrator/VibratorManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/vibrator/VibratorManagerService$1;-><init>(Lcom/android/server/vibrator/VibratorManagerService;)V

    iput-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 173
    iput-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mContext:Landroid/content/Context;

    .line 174
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/server/vibrator/VibratorManagerService$Injector;->createHandler(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mHandler:Landroid/os/Handler;

    .line 176
    new-instance v3, Lcom/android/server/vibrator/VibrationSettings;

    invoke-direct {v3, p1, v0}, Lcom/android/server/vibrator/VibrationSettings;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    .line 177
    new-instance v4, Lcom/android/server/vibrator/VibrationScaler;

    invoke-direct {v4, p1, v3}, Lcom/android/server/vibrator/VibrationScaler;-><init>(Landroid/content/Context;Lcom/android/server/vibrator/VibrationSettings;)V

    iput-object v4, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationScaler:Lcom/android/server/vibrator/VibrationScaler;

    .line 178
    new-instance v4, Lcom/android/server/vibrator/InputDeviceDelegate;

    invoke-direct {v4, p1, v0}, Lcom/android/server/vibrator/InputDeviceDelegate;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v4, p0, Lcom/android/server/vibrator/VibratorManagerService;->mInputDeviceDelegate:Lcom/android/server/vibrator/InputDeviceDelegate;

    .line 179
    new-instance v0, Lcom/android/server/vibrator/DeviceVibrationEffectAdapter;

    invoke-direct {v0, v3}, Lcom/android/server/vibrator/DeviceVibrationEffectAdapter;-><init>(Lcom/android/server/vibrator/VibrationSettings;)V

    iput-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mDeviceVibrationEffectAdapter:Lcom/android/server/vibrator/DeviceVibrationEffectAdapter;

    .line 181
    new-instance v0, Lcom/android/server/vibrator/VibratorManagerService$VibrationCompleteListener;

    invoke-direct {v0, p0}, Lcom/android/server/vibrator/VibratorManagerService$VibrationCompleteListener;-><init>(Lcom/android/server/vibrator/VibratorManagerService;)V

    .line 182
    .local v0, "listener":Lcom/android/server/vibrator/VibratorManagerService$VibrationCompleteListener;
    invoke-virtual {p2}, Lcom/android/server/vibrator/VibratorManagerService$Injector;->getNativeWrapper()Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/vibrator/VibratorManagerService;->mNativeWrapper:Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;

    .line 183
    invoke-virtual {v3, v0}, Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;->init(Lcom/android/server/vibrator/VibratorManagerService$OnSyncedVibrationCompleteListener;)V

    .line 185
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10e00ab

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    .line 187
    .local v4, "dumpLimit":I
    new-instance v5, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;

    invoke-direct {v5, p0, v4, v2}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;-><init>(Lcom/android/server/vibrator/VibratorManagerService;ILcom/android/server/vibrator/VibratorManagerService$1;)V

    iput-object v5, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibratorManagerRecords:Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;

    .line 189
    const-class v2, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageManagerInternal;

    .line 190
    invoke-virtual {v2}, Landroid/content/pm/PackageManagerInternal;->getSystemUiServiceComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/vibrator/VibratorManagerService;->mSystemUiPackage:Ljava/lang/String;

    .line 192
    const-string v2, "batterystats"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/vibrator/VibratorManagerService;->mBatteryStatsService:Lcom/android/internal/app/IBatteryStats;

    .line 195
    const-class v2, Landroid/app/AppOpsManager;

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AppOpsManager;

    iput-object v2, p0, Lcom/android/server/vibrator/VibratorManagerService;->mAppOps:Landroid/app/AppOpsManager;

    .line 197
    const-class v2, Landroid/os/PowerManager;

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 198
    .local v2, "pm":Landroid/os/PowerManager;
    const-string v5, "*vibrator*"

    invoke-virtual {v2, v1, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/vibrator/VibratorManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 199
    invoke-virtual {v5, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 201
    invoke-virtual {v3}, Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;->getCapabilities()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCapabilities:J

    .line 202
    invoke-virtual {v3}, Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;->getVibratorIds()[I

    move-result-object v1

    .line 203
    .local v1, "vibratorIds":[I
    const/4 v3, 0x0

    if-nez v1, :cond_0

    .line 204
    new-array v5, v3, [I

    iput-object v5, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibratorIds:[I

    .line 205
    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5, v3}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v5, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    goto :goto_1

    .line 208
    :cond_0
    iput-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibratorIds:[I

    .line 209
    new-instance v5, Landroid/util/SparseArray;

    array-length v6, v1

    invoke-direct {v5, v6}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v5, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    .line 210
    array-length v5, v1

    :goto_0
    if-ge v3, v5, :cond_1

    aget v6, v1, v3

    .line 211
    .local v6, "vibratorId":I
    iget-object v7, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {p2, v6, v0}, Lcom/android/server/vibrator/VibratorManagerService$Injector;->createVibratorController(ILcom/android/server/vibrator/VibratorController$OnVibrationCompleteListener;)Lcom/android/server/vibrator/VibratorController;

    move-result-object v8

    invoke-virtual {v7, v6, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 210
    .end local v6    # "vibratorId":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 217
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/android/server/vibrator/VibratorManagerService;->mNativeWrapper:Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;

    invoke-virtual {v3}, Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;->cancelSynced()V

    .line 218
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    iget-object v5, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v3, v5, :cond_2

    .line 219
    iget-object v5, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/vibrator/VibratorController;

    invoke-virtual {v5}, Lcom/android/server/vibrator/VibratorController;->off()V

    .line 218
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 222
    .end local v3    # "i":I
    :cond_2
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 223
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string v5, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 224
    iget-object v5, p0, Lcom/android/server/vibrator/VibratorManagerService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v5, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 226
    new-instance v5, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;

    invoke-direct {v5, p0}, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;-><init>(Lcom/android/server/vibrator/VibratorManagerService;)V

    const-string v6, "external_vibrator_service"

    invoke-virtual {p2, v6, v5}, Lcom/android/server/vibrator/VibratorManagerService$Injector;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 227
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/vibrator/VibratorManagerService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/vibrator/VibratorManagerService;

    .line 78
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/vibrator/VibratorManagerService;Lcom/android/server/vibrator/VibrationThread;)Lcom/android/server/vibrator/Vibration$Status;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/vibrator/VibratorManagerService;
    .param p1, "x1"    # Lcom/android/server/vibrator/VibrationThread;

    .line 78
    invoke-direct {p0, p1}, Lcom/android/server/vibrator/VibratorManagerService;->startVibrationThreadLocked(Lcom/android/server/vibrator/VibrationThread;)Lcom/android/server/vibrator/Vibration$Status;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/vibrator/VibratorManagerService;J)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/vibrator/VibratorManagerService;
    .param p1, "x1"    # J

    .line 78
    invoke-direct {p0, p1, p2}, Lcom/android/server/vibrator/VibratorManagerService;->onSyncedVibrationComplete(J)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/vibrator/VibratorManagerService;IJ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/vibrator/VibratorManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # J

    .line 78
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/vibrator/VibratorManagerService;->onVibrationComplete(IJ)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibrationSettings;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/vibrator/VibratorManagerService;

    .line 78
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/vibrator/VibratorManagerService;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/vibrator/VibratorManagerService;

    .line 78
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/vibrator/VibratorManagerService;

    .line 78
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentExternalVibration:Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/server/vibrator/VibratorManagerService;Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;)Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/vibrator/VibratorManagerService;
    .param p1, "x1"    # Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;

    .line 78
    iput-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentExternalVibration:Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/android/server/vibrator/VibratorManagerService;ILjava/lang/String;Landroid/os/VibrationAttributes;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/vibrator/VibratorManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Landroid/os/VibrationAttributes;

    .line 78
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/vibrator/VibratorManagerService;->checkAppOpModeLocked(ILjava/lang/String;Landroid/os/VibrationAttributes;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/android/server/vibrator/VibratorManagerService;Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;Lcom/android/server/vibrator/Vibration$Status;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/vibrator/VibratorManagerService;
    .param p1, "x1"    # Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;
    .param p2, "x2"    # Lcom/android/server/vibrator/Vibration$Status;

    .line 78
    invoke-direct {p0, p1, p2}, Lcom/android/server/vibrator/VibratorManagerService;->endVibrationLocked(Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;Lcom/android/server/vibrator/Vibration$Status;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibrationThread;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/vibrator/VibratorManagerService;

    .line 78
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentVibration:Lcom/android/server/vibrator/VibrationThread;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibrationScaler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/vibrator/VibratorManagerService;

    .line 78
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationScaler:Lcom/android/server/vibrator/VibrationScaler;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/server/vibrator/VibratorManagerService;Lcom/android/server/vibrator/VibrationThread;)Lcom/android/server/vibrator/VibrationThread;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/vibrator/VibratorManagerService;
    .param p1, "x1"    # Lcom/android/server/vibrator/VibrationThread;

    .line 78
    iput-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentVibration:Lcom/android/server/vibrator/VibrationThread;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/android/server/vibrator/VibratorManagerService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/vibrator/VibratorManagerService;
    .param p1, "x1"    # Z

    .line 78
    invoke-direct {p0, p1}, Lcom/android/server/vibrator/VibratorManagerService;->setExternalControl(Z)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/vibrator/VibratorManagerService;)[I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/vibrator/VibratorManagerService;

    .line 78
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibratorIds:[I

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/vibrator/VibratorManagerService;Lcom/android/server/vibrator/Vibration;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/vibrator/VibratorManagerService;
    .param p1, "x1"    # Lcom/android/server/vibrator/Vibration;

    .line 78
    invoke-direct {p0, p1}, Lcom/android/server/vibrator/VibratorManagerService;->isSystemHapticFeedback(Lcom/android/server/vibrator/Vibration;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibrationThread;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/vibrator/VibratorManagerService;

    .line 78
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mNextVibration:Lcom/android/server/vibrator/VibrationThread;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/server/vibrator/VibratorManagerService;Lcom/android/server/vibrator/VibrationThread;)Lcom/android/server/vibrator/VibrationThread;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/vibrator/VibratorManagerService;
    .param p1, "x1"    # Lcom/android/server/vibrator/VibrationThread;

    .line 78
    iput-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mNextVibration:Lcom/android/server/vibrator/VibrationThread;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/server/vibrator/VibratorManagerService;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/vibrator/VibratorManagerService;

    .line 78
    iget-wide v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCapabilities:J

    return-wide v0
.end method

.method static synthetic access$800(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/vibrator/VibratorManagerService;

    .line 78
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mNativeWrapper:Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/vibrator/VibratorManagerService;Lcom/android/server/vibrator/Vibration$Status;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/vibrator/VibratorManagerService;
    .param p1, "x1"    # Lcom/android/server/vibrator/Vibration$Status;

    .line 78
    invoke-direct {p0, p1}, Lcom/android/server/vibrator/VibratorManagerService;->reportFinishedVibrationLocked(Lcom/android/server/vibrator/Vibration$Status;)V

    return-void
.end method

.method private checkAppOpModeLocked(ILjava/lang/String;Landroid/os/VibrationAttributes;)I
    .locals 4
    .param p1, "uid"    # I
    .param p2, "opPkg"    # Ljava/lang/String;
    .param p3, "attrs"    # Landroid/os/VibrationAttributes;

    .line 741
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mAppOps:Landroid/app/AppOpsManager;

    .line 742
    invoke-virtual {p3}, Landroid/os/VibrationAttributes;->getAudioUsage()I

    move-result v1

    .line 741
    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1, p1, p2}, Landroid/app/AppOpsManager;->checkAudioOpNoThrow(IIILjava/lang/String;)I

    move-result v0

    .line 743
    .local v0, "mode":I
    invoke-direct {p0, v0, p3}, Lcom/android/server/vibrator/VibratorManagerService;->fixupAppOpModeLocked(ILandroid/os/VibrationAttributes;)I

    move-result v1

    .line 744
    .local v1, "fixedMode":I
    if-eq v0, v1, :cond_0

    if-nez v1, :cond_0

    .line 748
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bypassing DND for vibrate from uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "VibratorManagerService"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    :cond_0
    return v1
.end method

.method private endVibrationLocked(Lcom/android/server/vibrator/Vibration;Lcom/android/server/vibrator/Vibration$Status;)V
    .locals 1
    .param p1, "vib"    # Lcom/android/server/vibrator/Vibration;
    .param p2, "status"    # Lcom/android/server/vibrator/Vibration$Status;

    .line 557
    invoke-virtual {p1, p2}, Lcom/android/server/vibrator/Vibration;->end(Lcom/android/server/vibrator/Vibration$Status;)V

    .line 558
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibratorManagerRecords:Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;

    invoke-virtual {v0, p1}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;->record(Lcom/android/server/vibrator/Vibration;)V

    .line 559
    return-void
.end method

.method private endVibrationLocked(Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;Lcom/android/server/vibrator/Vibration$Status;)V
    .locals 1
    .param p1, "vib"    # Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;
    .param p2, "status"    # Lcom/android/server/vibrator/Vibration$Status;

    .line 563
    invoke-virtual {p1, p2}, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->end(Lcom/android/server/vibrator/Vibration$Status;)V

    .line 564
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibratorManagerRecords:Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;

    invoke-virtual {v0, p1}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;->record(Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;)V

    .line 565
    return-void
.end method

.method private enforceUpdateAppOpsStatsPermission(I)V
    .locals 5
    .param p1, "uid"    # I

    .line 774
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 775
    return-void

    .line 777
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 778
    return-void

    .line 780
    :cond_1
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mContext:Landroid/content/Context;

    .line 781
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/4 v3, 0x0

    .line 780
    const-string v4, "android.permission.UPDATE_APP_OPS_STATS"

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 782
    return-void
.end method

.method private static extractPrebakedSegment(Landroid/os/VibrationEffect;)Landroid/os/vibrator/PrebakedSegment;
    .locals 3
    .param p0, "effect"    # Landroid/os/VibrationEffect;

    .line 905
    instance-of v0, p0, Landroid/os/VibrationEffect$Composed;

    if-eqz v0, :cond_0

    .line 906
    move-object v0, p0

    check-cast v0, Landroid/os/VibrationEffect$Composed;

    .line 907
    .local v0, "composed":Landroid/os/VibrationEffect$Composed;
    invoke-virtual {v0}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 908
    invoke-virtual {v0}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/vibrator/VibrationEffectSegment;

    .line 909
    .local v1, "segment":Landroid/os/vibrator/VibrationEffectSegment;
    instance-of v2, v1, Landroid/os/vibrator/PrebakedSegment;

    if-eqz v2, :cond_0

    .line 910
    move-object v2, v1

    check-cast v2, Landroid/os/vibrator/PrebakedSegment;

    return-object v2

    .line 914
    .end local v0    # "composed":Landroid/os/VibrationEffect$Composed;
    .end local v1    # "segment":Landroid/os/vibrator/VibrationEffectSegment;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private fillVibrationFallbacks(Lcom/android/server/vibrator/Vibration;Landroid/os/CombinedVibration;)V
    .locals 3
    .param p1, "vib"    # Lcom/android/server/vibrator/Vibration;
    .param p2, "effect"    # Landroid/os/CombinedVibration;

    .line 811
    instance-of v0, p2, Landroid/os/CombinedVibration$Mono;

    if-eqz v0, :cond_0

    .line 812
    move-object v0, p2

    check-cast v0, Landroid/os/CombinedVibration$Mono;

    invoke-virtual {v0}, Landroid/os/CombinedVibration$Mono;->getEffect()Landroid/os/VibrationEffect;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/vibrator/VibratorManagerService;->fillVibrationFallbacks(Lcom/android/server/vibrator/Vibration;Landroid/os/VibrationEffect;)V

    goto :goto_3

    .line 813
    :cond_0
    instance-of v0, p2, Landroid/os/CombinedVibration$Stereo;

    if-eqz v0, :cond_2

    .line 814
    move-object v0, p2

    check-cast v0, Landroid/os/CombinedVibration$Stereo;

    .line 815
    invoke-virtual {v0}, Landroid/os/CombinedVibration$Stereo;->getEffects()Landroid/util/SparseArray;

    move-result-object v0

    .line 816
    .local v0, "effects":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/VibrationEffect;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 817
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/VibrationEffect;

    invoke-direct {p0, p1, v2}, Lcom/android/server/vibrator/VibratorManagerService;->fillVibrationFallbacks(Lcom/android/server/vibrator/Vibration;Landroid/os/VibrationEffect;)V

    .line 816
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0    # "effects":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/VibrationEffect;>;"
    .end local v1    # "i":I
    :cond_1
    goto :goto_2

    .line 819
    :cond_2
    instance-of v0, p2, Landroid/os/CombinedVibration$Sequential;

    if-eqz v0, :cond_3

    .line 820
    move-object v0, p2

    check-cast v0, Landroid/os/CombinedVibration$Sequential;

    .line 821
    invoke-virtual {v0}, Landroid/os/CombinedVibration$Sequential;->getEffects()Ljava/util/List;

    move-result-object v0

    .line 822
    .local v0, "effects":Ljava/util/List;, "Ljava/util/List<Landroid/os/CombinedVibration;>;"
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 823
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/CombinedVibration;

    invoke-direct {p0, p1, v2}, Lcom/android/server/vibrator/VibratorManagerService;->fillVibrationFallbacks(Lcom/android/server/vibrator/Vibration;Landroid/os/CombinedVibration;)V

    .line 822
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 819
    .end local v0    # "effects":Ljava/util/List;, "Ljava/util/List<Landroid/os/CombinedVibration;>;"
    .end local v1    # "i":I
    :cond_3
    :goto_2
    nop

    .line 826
    :cond_4
    :goto_3
    return-void
.end method

.method private fillVibrationFallbacks(Lcom/android/server/vibrator/Vibration;Landroid/os/VibrationEffect;)V
    .locals 7
    .param p1, "vib"    # Lcom/android/server/vibrator/Vibration;
    .param p2, "effect"    # Landroid/os/VibrationEffect;

    .line 829
    move-object v0, p2

    check-cast v0, Landroid/os/VibrationEffect$Composed;

    .line 830
    .local v0, "composed":Landroid/os/VibrationEffect$Composed;
    invoke-virtual {v0}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 831
    .local v1, "segmentCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 832
    invoke-virtual {v0}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/vibrator/VibrationEffectSegment;

    .line 833
    .local v3, "segment":Landroid/os/vibrator/VibrationEffectSegment;
    instance-of v4, v3, Landroid/os/vibrator/PrebakedSegment;

    if-eqz v4, :cond_0

    .line 834
    move-object v4, v3

    check-cast v4, Landroid/os/vibrator/PrebakedSegment;

    .line 835
    .local v4, "prebaked":Landroid/os/vibrator/PrebakedSegment;
    iget-object v5, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    .line 836
    invoke-virtual {v4}, Landroid/os/vibrator/PrebakedSegment;->getEffectId()I

    move-result v6

    .line 835
    invoke-virtual {v5, v6}, Lcom/android/server/vibrator/VibrationSettings;->getFallbackEffect(I)Landroid/os/VibrationEffect;

    move-result-object v5

    .line 837
    .local v5, "fallback":Landroid/os/VibrationEffect;
    invoke-virtual {v4}, Landroid/os/vibrator/PrebakedSegment;->shouldFallback()Z

    move-result v6

    if-eqz v6, :cond_0

    if-eqz v5, :cond_0

    .line 838
    invoke-virtual {v4}, Landroid/os/vibrator/PrebakedSegment;->getEffectId()I

    move-result v6

    invoke-virtual {p1, v6, v5}, Lcom/android/server/vibrator/Vibration;->addFallback(ILandroid/os/VibrationEffect;)V

    .line 831
    .end local v3    # "segment":Landroid/os/vibrator/VibrationEffectSegment;
    .end local v4    # "prebaked":Landroid/os/vibrator/PrebakedSegment;
    .end local v5    # "fallback":Landroid/os/VibrationEffect;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 842
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method private finishAppOpModeLocked(ILjava/lang/String;)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "opPkg"    # Ljava/lang/String;

    .line 766
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mAppOps:Landroid/app/AppOpsManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1, p2}, Landroid/app/AppOpsManager;->finishOp(IILjava/lang/String;)V

    .line 767
    return-void
.end method

.method private fixupAlwaysOnEffectsLocked(Landroid/os/CombinedVibration;)Landroid/util/SparseArray;
    .locals 11
    .param p1, "effect"    # Landroid/os/CombinedVibration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/CombinedVibration;",
            ")",
            "Landroid/util/SparseArray<",
            "Landroid/os/vibrator/PrebakedSegment;",
            ">;"
        }
    .end annotation

    .line 869
    const-wide/32 v0, 0x800000

    const-string v2, "fixupAlwaysOnEffectsLocked"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 872
    :try_start_0
    instance-of v2, p1, Landroid/os/CombinedVibration$Mono;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 873
    move-object v2, p1

    check-cast v2, Landroid/os/CombinedVibration$Mono;

    invoke-virtual {v2}, Landroid/os/CombinedVibration$Mono;->getEffect()Landroid/os/VibrationEffect;

    move-result-object v2

    .line 874
    .local v2, "syncedEffect":Landroid/os/VibrationEffect;
    new-instance v4, Lcom/android/server/vibrator/VibratorManagerService$$ExternalSyntheticLambda2;

    invoke-direct {v4, v2}, Lcom/android/server/vibrator/VibratorManagerService$$ExternalSyntheticLambda2;-><init>(Landroid/os/VibrationEffect;)V

    invoke-direct {p0, v4}, Lcom/android/server/vibrator/VibratorManagerService;->transformAllVibratorsLocked(Ljava/util/function/Function;)Landroid/util/SparseArray;

    move-result-object v4

    move-object v2, v4

    .line 875
    .local v2, "effects":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/VibrationEffect;>;"
    goto :goto_0

    .end local v2    # "effects":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/VibrationEffect;>;"
    :cond_0
    instance-of v2, p1, Landroid/os/CombinedVibration$Stereo;

    if-eqz v2, :cond_5

    .line 876
    move-object v2, p1

    check-cast v2, Landroid/os/CombinedVibration$Stereo;

    invoke-virtual {v2}, Landroid/os/CombinedVibration$Stereo;->getEffects()Landroid/util/SparseArray;

    move-result-object v2

    .line 881
    .restart local v2    # "effects":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/VibrationEffect;>;"
    :goto_0
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    .line 882
    .local v4, "result":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/vibrator/PrebakedSegment;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 883
    invoke-virtual {v2, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/VibrationEffect;

    invoke-static {v6}, Lcom/android/server/vibrator/VibratorManagerService;->extractPrebakedSegment(Landroid/os/VibrationEffect;)Landroid/os/vibrator/PrebakedSegment;

    move-result-object v6

    .line 884
    .local v6, "prebaked":Landroid/os/vibrator/PrebakedSegment;
    if-nez v6, :cond_1

    .line 885
    const-string v7, "VibratorManagerService"

    const-string v8, "Only prebaked effects supported for always-on."

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 886
    nop

    .line 899
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 886
    return-object v3

    .line 888
    :cond_1
    :try_start_1
    invoke-virtual {v2, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    .line 889
    .local v7, "vibratorId":I
    iget-object v8, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/vibrator/VibratorController;

    .line 890
    .local v8, "vibrator":Lcom/android/server/vibrator/VibratorController;
    if-eqz v8, :cond_2

    const-wide/16 v9, 0x40

    invoke-virtual {v8, v9, v10}, Lcom/android/server/vibrator/VibratorController;->hasCapability(J)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 891
    invoke-virtual {v4, v7, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 882
    .end local v6    # "prebaked":Landroid/os/vibrator/PrebakedSegment;
    .end local v7    # "vibratorId":I
    .end local v8    # "vibrator":Lcom/android/server/vibrator/VibratorController;
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 894
    .end local v5    # "i":I
    :cond_3
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v5, :cond_4

    .line 895
    nop

    .line 899
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 895
    return-object v3

    .line 897
    :cond_4
    nop

    .line 899
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 897
    return-object v4

    .line 879
    .end local v2    # "effects":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/VibrationEffect;>;"
    .end local v4    # "result":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/vibrator/PrebakedSegment;>;"
    :cond_5
    nop

    .line 899
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 879
    return-object v3

    .line 899
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 900
    throw v2
.end method

.method private fixupAppOpModeLocked(ILandroid/os/VibrationAttributes;)I
    .locals 1
    .param p1, "mode"    # I
    .param p2, "attrs"    # Landroid/os/VibrationAttributes;

    .line 923
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 924
    invoke-virtual {p2, v0}, Landroid/os/VibrationAttributes;->isFlagSet(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 925
    const/4 v0, 0x0

    return v0

    .line 927
    :cond_0
    return p1
.end method

.method private fixupVibrationAttributes(Landroid/os/VibrationAttributes;)Landroid/os/VibrationAttributes;
    .locals 3
    .param p1, "attrs"    # Landroid/os/VibrationAttributes;

    .line 849
    if-nez p1, :cond_0

    .line 850
    sget-object p1, Lcom/android/server/vibrator/VibratorManagerService;->DEFAULT_ATTRIBUTES:Landroid/os/VibrationAttributes;

    .line 852
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/VibrationAttributes;->isFlagSet(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 853
    const-string v0, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-direct {p0, v0}, Lcom/android/server/vibrator/VibratorManagerService;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 854
    const-string v0, "android.permission.MODIFY_PHONE_STATE"

    invoke-direct {p0, v0}, Lcom/android/server/vibrator/VibratorManagerService;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 855
    const-string v0, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-direct {p0, v0}, Lcom/android/server/vibrator/VibratorManagerService;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 856
    invoke-virtual {p1}, Landroid/os/VibrationAttributes;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, -0x2

    .line 858
    .local v0, "flags":I
    new-instance v1, Landroid/os/VibrationAttributes$Builder;

    invoke-direct {v1, p1}, Landroid/os/VibrationAttributes$Builder;-><init>(Landroid/os/VibrationAttributes;)V

    .line 859
    invoke-virtual {p1}, Landroid/os/VibrationAttributes;->getFlags()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/os/VibrationAttributes$Builder;->setFlags(II)Landroid/os/VibrationAttributes$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/VibrationAttributes$Builder;->build()Landroid/os/VibrationAttributes;

    move-result-object p1

    .line 862
    .end local v0    # "flags":I
    :cond_1
    return-object p1
.end method

.method private hasPermission(Ljava/lang/String;)Z
    .locals 1
    .param p1, "permission"    # Ljava/lang/String;

    .line 931
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isEffectValid(Landroid/os/CombinedVibration;)Z
    .locals 4
    .param p0, "effect"    # Landroid/os/CombinedVibration;

    .line 793
    const/4 v0, 0x0

    const-string v1, "VibratorManagerService"

    if-nez p0, :cond_0

    .line 794
    const-string v2, "effect must not be null"

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    return v0

    .line 798
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/os/CombinedVibration;->validate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 802
    nop

    .line 803
    const/4 v0, 0x1

    return v0

    .line 799
    :catch_0
    move-exception v2

    .line 800
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "Encountered issue when verifying CombinedVibrationEffect."

    invoke-static {v1, v3, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 801
    return v0
.end method

.method private isSystemHapticFeedback(Lcom/android/server/vibrator/Vibration;)Z
    .locals 3
    .param p1, "vib"    # Lcom/android/server/vibrator/Vibration;

    .line 936
    iget-object v0, p1, Lcom/android/server/vibrator/Vibration;->attrs:Landroid/os/VibrationAttributes;

    invoke-virtual {v0}, Landroid/os/VibrationAttributes;->getUsage()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x12

    if-eq v0, v2, :cond_0

    .line 937
    return v1

    .line 939
    :cond_0
    iget v0, p1, Lcom/android/server/vibrator/Vibration;->uid:I

    const/16 v2, 0x3e8

    if-eq v0, v2, :cond_1

    iget v0, p1, Lcom/android/server/vibrator/Vibration;->uid:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mSystemUiPackage:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/vibrator/Vibration;->opPkg:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method static synthetic lambda$fixupAlwaysOnEffectsLocked$2(Landroid/os/VibrationEffect;Lcom/android/server/vibrator/VibratorController;)Landroid/os/VibrationEffect;
    .locals 0
    .param p0, "syncedEffect"    # Landroid/os/VibrationEffect;
    .param p1, "unused"    # Lcom/android/server/vibrator/VibratorController;

    .line 874
    return-object p0
.end method

.method static synthetic lambda$setAlwaysOnEffect$0(ILcom/android/server/vibrator/VibratorController;)V
    .locals 2
    .param p0, "alwaysOnId"    # I
    .param p1, "v"    # Lcom/android/server/vibrator/VibratorController;

    .line 307
    const-wide/16 v0, 0x40

    invoke-virtual {p1, v0, v1}, Lcom/android/server/vibrator/VibratorController;->hasCapability(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 308
    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Lcom/android/server/vibrator/VibratorController;->updateAlwaysOn(ILandroid/os/vibrator/PrebakedSegment;)V

    .line 310
    :cond_0
    return-void
.end method

.method static native nativeCancelSynced(J)V
.end method

.method static native nativeGetCapabilities(J)J
.end method

.method static native nativeGetFinalizer()J
.end method

.method static native nativeGetVibratorIds(J)[I
.end method

.method static native nativeInit(Lcom/android/server/vibrator/VibratorManagerService$OnSyncedVibrationCompleteListener;)J
.end method

.method static native nativePrepareSynced(J[I)Z
.end method

.method static native nativeTriggerSynced(JJ)Z
.end method

.method private onAllVibratorsLocked(Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/vibrator/VibratorController;",
            ">;)V"
        }
    .end annotation

    .line 944
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/vibrator/VibratorController;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 945
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/vibrator/VibratorController;

    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 944
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 947
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private onSyncedVibrationComplete(J)V
    .locals 3
    .param p1, "vibrationId"    # J

    .line 581
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 582
    :try_start_0
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentVibration:Lcom/android/server/vibrator/VibrationThread;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/vibrator/VibrationThread;->getVibration()Lcom/android/server/vibrator/Vibration;

    move-result-object v1

    iget-wide v1, v1, Lcom/android/server/vibrator/Vibration;->id:J

    cmp-long v1, v1, p1

    if-nez v1, :cond_0

    .line 586
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentVibration:Lcom/android/server/vibrator/VibrationThread;

    invoke-virtual {v1}, Lcom/android/server/vibrator/VibrationThread;->syncedVibrationComplete()V

    .line 588
    :cond_0
    monitor-exit v0

    .line 589
    return-void

    .line 588
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private onVibrationComplete(IJ)V
    .locals 3
    .param p1, "vibratorId"    # I
    .param p2, "vibrationId"    # J

    .line 592
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 593
    :try_start_0
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentVibration:Lcom/android/server/vibrator/VibrationThread;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/vibrator/VibrationThread;->getVibration()Lcom/android/server/vibrator/Vibration;

    move-result-object v1

    iget-wide v1, v1, Lcom/android/server/vibrator/Vibration;->id:J

    cmp-long v1, v1, p2

    if-nez v1, :cond_0

    .line 598
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentVibration:Lcom/android/server/vibrator/VibrationThread;

    invoke-virtual {v1, p1}, Lcom/android/server/vibrator/VibrationThread;->vibratorComplete(I)V

    .line 600
    :cond_0
    monitor-exit v0

    .line 601
    return-void

    .line 600
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private reportFinishedVibrationLocked(Lcom/android/server/vibrator/Vibration$Status;)V
    .locals 5
    .param p1, "status"    # Lcom/android/server/vibrator/Vibration$Status;

    .line 569
    const-wide/32 v0, 0x800000

    const-string v2, "reportFinishVibrationLocked"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 570
    const-string v2, "vibration"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 572
    :try_start_0
    iget-object v2, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentVibration:Lcom/android/server/vibrator/VibrationThread;

    invoke-virtual {v2}, Lcom/android/server/vibrator/VibrationThread;->getVibration()Lcom/android/server/vibrator/Vibration;

    move-result-object v2

    .line 573
    .local v2, "vib":Lcom/android/server/vibrator/Vibration;
    invoke-direct {p0, v2, p1}, Lcom/android/server/vibrator/VibratorManagerService;->endVibrationLocked(Lcom/android/server/vibrator/Vibration;Lcom/android/server/vibrator/Vibration$Status;)V

    .line 574
    iget v3, v2, Lcom/android/server/vibrator/Vibration;->uid:I

    iget-object v4, v2, Lcom/android/server/vibrator/Vibration;->opPkg:Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Lcom/android/server/vibrator/VibratorManagerService;->finishAppOpModeLocked(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 576
    .end local v2    # "vib":Lcom/android/server/vibrator/Vibration;
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 577
    nop

    .line 578
    return-void

    .line 576
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 577
    throw v2
.end method

.method private setExternalControl(Z)V
    .locals 2
    .param p1, "externalControl"    # Z

    .line 481
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 482
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/vibrator/VibratorController;

    invoke-virtual {v1, p1}, Lcom/android/server/vibrator/VibratorController;->setExternalControl(Z)V

    .line 481
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 484
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private shouldCancelVibration(Landroid/os/VibrationAttributes;I)Z
    .locals 4
    .param p1, "attrs"    # Landroid/os/VibrationAttributes;
    .param p2, "usageFilter"    # I

    .line 726
    invoke-virtual {p1}, Landroid/os/VibrationAttributes;->getUsage()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 729
    if-eqz p2, :cond_1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :cond_1
    :goto_0
    return v1

    .line 732
    :cond_2
    invoke-virtual {p1}, Landroid/os/VibrationAttributes;->getUsage()I

    move-result v0

    and-int/2addr v0, p2

    invoke-virtual {p1}, Landroid/os/VibrationAttributes;->getUsage()I

    move-result v3

    if-ne v0, v3, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_1
    return v1
.end method

.method private shouldCancelVibration(Lcom/android/server/vibrator/Vibration;ILandroid/os/IBinder;)Z
    .locals 1
    .param p1, "vib"    # Lcom/android/server/vibrator/Vibration;
    .param p2, "usageFilter"    # I
    .param p3, "token"    # Landroid/os/IBinder;

    .line 715
    iget-object v0, p1, Lcom/android/server/vibrator/Vibration;->token:Landroid/os/IBinder;

    if-ne v0, p3, :cond_0

    iget-object v0, p1, Lcom/android/server/vibrator/Vibration;->attrs:Landroid/os/VibrationAttributes;

    invoke-direct {p0, v0, p2}, Lcom/android/server/vibrator/VibratorManagerService;->shouldCancelVibration(Landroid/os/VibrationAttributes;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private shouldIgnoreVibrationForCurrentLocked(Lcom/android/server/vibrator/Vibration;)Lcom/android/server/vibrator/Vibration$Status;
    .locals 3
    .param p1, "vibration"    # Lcom/android/server/vibrator/Vibration;

    .line 612
    invoke-virtual {p1}, Lcom/android/server/vibrator/Vibration;->isRepeating()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 614
    return-object v1

    .line 616
    :cond_0
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentVibration:Lcom/android/server/vibrator/VibrationThread;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/server/vibrator/VibrationThread;->getVibration()Lcom/android/server/vibrator/Vibration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/vibrator/Vibration;->hasEnded()Z

    move-result v0

    if-nez v0, :cond_2

    .line 617
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentVibration:Lcom/android/server/vibrator/VibrationThread;

    invoke-virtual {v0}, Lcom/android/server/vibrator/VibrationThread;->getVibration()Lcom/android/server/vibrator/Vibration;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/vibrator/Vibration;->attrs:Landroid/os/VibrationAttributes;

    invoke-virtual {v0}, Landroid/os/VibrationAttributes;->getUsage()I

    move-result v0

    const/16 v2, 0x11

    if-ne v0, v2, :cond_1

    .line 622
    sget-object v0, Lcom/android/server/vibrator/Vibration$Status;->IGNORED_FOR_ALARM:Lcom/android/server/vibrator/Vibration$Status;

    return-object v0

    .line 624
    :cond_1
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentVibration:Lcom/android/server/vibrator/VibrationThread;

    invoke-virtual {v0}, Lcom/android/server/vibrator/VibrationThread;->getVibration()Lcom/android/server/vibrator/Vibration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/vibrator/Vibration;->isRepeating()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 628
    sget-object v0, Lcom/android/server/vibrator/Vibration$Status;->IGNORED_FOR_ONGOING:Lcom/android/server/vibrator/Vibration$Status;

    return-object v0

    .line 631
    :cond_2
    return-object v1
.end method

.method private shouldIgnoreVibrationLocked(ILjava/lang/String;Landroid/os/VibrationAttributes;)Lcom/android/server/vibrator/Vibration$Status;
    .locals 4
    .param p1, "uid"    # I
    .param p2, "opPkg"    # Ljava/lang/String;
    .param p3, "attrs"    # Landroid/os/VibrationAttributes;

    .line 674
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    invoke-virtual {p3}, Landroid/os/VibrationAttributes;->getUsage()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/vibrator/VibrationSettings;->shouldVibrateForPowerMode(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 675
    sget-object v0, Lcom/android/server/vibrator/Vibration$Status;->IGNORED_FOR_POWER:Lcom/android/server/vibrator/Vibration$Status;

    return-object v0

    .line 678
    :cond_0
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    invoke-virtual {p3}, Landroid/os/VibrationAttributes;->getUsage()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/vibrator/VibrationSettings;->getCurrentIntensity(I)I

    move-result v0

    .line 679
    .local v0, "intensity":I
    if-nez v0, :cond_1

    .line 680
    sget-object v1, Lcom/android/server/vibrator/Vibration$Status;->IGNORED_FOR_SETTINGS:Lcom/android/server/vibrator/Vibration$Status;

    return-object v1

    .line 683
    :cond_1
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    invoke-virtual {p3}, Landroid/os/VibrationAttributes;->getUsage()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/vibrator/VibrationSettings;->shouldVibrateForRingerMode(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 687
    sget-object v1, Lcom/android/server/vibrator/Vibration$Status;->IGNORED_RINGTONE:Lcom/android/server/vibrator/Vibration$Status;

    return-object v1

    .line 690
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/vibrator/VibratorManagerService;->checkAppOpModeLocked(ILjava/lang/String;Landroid/os/VibrationAttributes;)I

    move-result v1

    .line 691
    .local v1, "mode":I
    if-eqz v1, :cond_4

    .line 692
    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 695
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Would be an error: vibrate from uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "VibratorManagerService"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    sget-object v2, Lcom/android/server/vibrator/Vibration$Status;->IGNORED_ERROR_APP_OPS:Lcom/android/server/vibrator/Vibration$Status;

    return-object v2

    .line 698
    :cond_3
    sget-object v2, Lcom/android/server/vibrator/Vibration$Status;->IGNORED_APP_OPS:Lcom/android/server/vibrator/Vibration$Status;

    return-object v2

    .line 702
    :cond_4
    const/4 v2, 0x0

    return-object v2
.end method

.method private shouldIgnoreVibrationLocked(Lcom/android/server/vibrator/Vibration;)Lcom/android/server/vibrator/Vibration$Status;
    .locals 3
    .param p1, "vib"    # Lcom/android/server/vibrator/Vibration;

    .line 644
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentExternalVibration:Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;

    if-eqz v0, :cond_0

    .line 648
    sget-object v0, Lcom/android/server/vibrator/Vibration$Status;->IGNORED_FOR_EXTERNAL:Lcom/android/server/vibrator/Vibration$Status;

    return-object v0

    .line 651
    :cond_0
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    iget v1, p1, Lcom/android/server/vibrator/Vibration;->uid:I

    iget-object v2, p1, Lcom/android/server/vibrator/Vibration;->attrs:Landroid/os/VibrationAttributes;

    invoke-virtual {v2}, Landroid/os/VibrationAttributes;->getUsage()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/vibrator/VibrationSettings;->shouldVibrateForUid(II)Z

    move-result v0

    if-nez v0, :cond_1

    .line 652
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignoring incoming vibration as process with uid= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/android/server/vibrator/Vibration;->uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " is background, attrs= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/server/vibrator/Vibration;->attrs:Landroid/os/VibrationAttributes;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VibratorManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    sget-object v0, Lcom/android/server/vibrator/Vibration$Status;->IGNORED_BACKGROUND:Lcom/android/server/vibrator/Vibration$Status;

    return-object v0

    .line 658
    :cond_1
    iget v0, p1, Lcom/android/server/vibrator/Vibration;->uid:I

    iget-object v1, p1, Lcom/android/server/vibrator/Vibration;->opPkg:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/vibrator/Vibration;->attrs:Landroid/os/VibrationAttributes;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/vibrator/VibratorManagerService;->shouldIgnoreVibrationLocked(ILjava/lang/String;Landroid/os/VibrationAttributes;)Lcom/android/server/vibrator/Vibration$Status;

    move-result-object v0

    return-object v0
.end method

.method private startAppOpModeLocked(ILjava/lang/String;Landroid/os/VibrationAttributes;)I
    .locals 2
    .param p1, "uid"    # I
    .param p2, "opPkg"    # Ljava/lang/String;
    .param p3, "attrs"    # Landroid/os/VibrationAttributes;

    .line 756
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mAppOps:Landroid/app/AppOpsManager;

    .line 757
    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1, p2}, Landroid/app/AppOpsManager;->startOpNoThrow(IILjava/lang/String;)I

    move-result v0

    .line 756
    invoke-direct {p0, v0, p3}, Lcom/android/server/vibrator/VibratorManagerService;->fixupAppOpModeLocked(ILandroid/os/VibrationAttributes;)I

    move-result v0

    return v0
.end method

.method private startVibrationLocked(Lcom/android/server/vibrator/Vibration;)Lcom/android/server/vibrator/Vibration$Status;
    .locals 12
    .param p1, "vib"    # Lcom/android/server/vibrator/Vibration;

    .line 508
    const-wide/32 v0, 0x800000

    const-string v2, "startVibrationLocked"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 510
    :try_start_0
    new-instance v2, Lcom/android/server/vibrator/VibratorManagerService$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, p1}, Lcom/android/server/vibrator/VibratorManagerService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/vibrator/VibratorManagerService;Lcom/android/server/vibrator/Vibration;)V

    invoke-virtual {p1, v2}, Lcom/android/server/vibrator/Vibration;->updateEffects(Ljava/util/function/Function;)V

    .line 511
    iget-object v3, p0, Lcom/android/server/vibrator/VibratorManagerService;->mInputDeviceDelegate:Lcom/android/server/vibrator/InputDeviceDelegate;

    iget v4, p1, Lcom/android/server/vibrator/Vibration;->uid:I

    iget-object v5, p1, Lcom/android/server/vibrator/Vibration;->opPkg:Ljava/lang/String;

    .line 512
    invoke-virtual {p1}, Lcom/android/server/vibrator/Vibration;->getEffect()Landroid/os/CombinedVibration;

    move-result-object v6

    iget-object v7, p1, Lcom/android/server/vibrator/Vibration;->reason:Ljava/lang/String;

    iget-object v8, p1, Lcom/android/server/vibrator/Vibration;->attrs:Landroid/os/VibrationAttributes;

    .line 511
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/vibrator/InputDeviceDelegate;->vibrateIfAvailable(ILjava/lang/String;Landroid/os/CombinedVibration;Ljava/lang/String;Landroid/os/VibrationAttributes;)Z

    move-result v2

    .line 513
    .local v2, "inputDevicesAvailable":Z
    if-eqz v2, :cond_0

    .line 514
    sget-object v3, Lcom/android/server/vibrator/Vibration$Status;->FORWARDED_TO_INPUT_DEVICES:Lcom/android/server/vibrator/Vibration$Status;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 528
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 514
    return-object v3

    .line 517
    :cond_0
    :try_start_1
    new-instance v11, Lcom/android/server/vibrator/VibrationThread;

    iget-object v5, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    iget-object v6, p0, Lcom/android/server/vibrator/VibratorManagerService;->mDeviceVibrationEffectAdapter:Lcom/android/server/vibrator/DeviceVibrationEffectAdapter;

    iget-object v7, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    iget-object v8, p0, Lcom/android/server/vibrator/VibratorManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v9, p0, Lcom/android/server/vibrator/VibratorManagerService;->mBatteryStatsService:Lcom/android/internal/app/IBatteryStats;

    iget-object v10, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationCallbacks:Lcom/android/server/vibrator/VibratorManagerService$VibrationCallbacks;

    move-object v3, v11

    move-object v4, p1

    invoke-direct/range {v3 .. v10}, Lcom/android/server/vibrator/VibrationThread;-><init>(Lcom/android/server/vibrator/Vibration;Lcom/android/server/vibrator/VibrationSettings;Lcom/android/server/vibrator/DeviceVibrationEffectAdapter;Landroid/util/SparseArray;Landroid/os/PowerManager$WakeLock;Lcom/android/internal/app/IBatteryStats;Lcom/android/server/vibrator/VibrationThread$VibrationCallbacks;)V

    move-object v3, v11

    .line 521
    .local v3, "vibThread":Lcom/android/server/vibrator/VibrationThread;
    iget-object v4, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentVibration:Lcom/android/server/vibrator/VibrationThread;

    if-nez v4, :cond_1

    .line 522
    invoke-direct {p0, v3}, Lcom/android/server/vibrator/VibratorManagerService;->startVibrationThreadLocked(Lcom/android/server/vibrator/VibrationThread;)Lcom/android/server/vibrator/Vibration$Status;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 528
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 522
    return-object v4

    .line 525
    :cond_1
    :try_start_2
    iput-object v3, p0, Lcom/android/server/vibrator/VibratorManagerService;->mNextVibration:Lcom/android/server/vibrator/VibrationThread;

    .line 526
    sget-object v4, Lcom/android/server/vibrator/Vibration$Status;->RUNNING:Lcom/android/server/vibrator/Vibration$Status;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 528
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 526
    return-object v4

    .line 528
    .end local v2    # "inputDevicesAvailable":Z
    .end local v3    # "vibThread":Lcom/android/server/vibrator/VibrationThread;
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 529
    throw v2
.end method

.method private startVibrationThreadLocked(Lcom/android/server/vibrator/VibrationThread;)Lcom/android/server/vibrator/Vibration$Status;
    .locals 7
    .param p1, "vibThread"    # Lcom/android/server/vibrator/VibrationThread;

    .line 534
    const-wide/32 v0, 0x800000

    const-string v2, "startVibrationThreadLocked"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 536
    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/vibrator/VibrationThread;->getVibration()Lcom/android/server/vibrator/Vibration;

    move-result-object v2

    .line 537
    .local v2, "vib":Lcom/android/server/vibrator/Vibration;
    iget v3, v2, Lcom/android/server/vibrator/Vibration;->uid:I

    iget-object v4, v2, Lcom/android/server/vibrator/Vibration;->opPkg:Ljava/lang/String;

    iget-object v5, v2, Lcom/android/server/vibrator/Vibration;->attrs:Landroid/os/VibrationAttributes;

    invoke-direct {p0, v3, v4, v5}, Lcom/android/server/vibrator/VibratorManagerService;->startAppOpModeLocked(ILjava/lang/String;Landroid/os/VibrationAttributes;)I

    move-result v3

    .line 538
    .local v3, "mode":I
    packed-switch v3, :pswitch_data_0

    .line 548
    :pswitch_0
    sget-object v4, Lcom/android/server/vibrator/Vibration$Status;->IGNORED_APP_OPS:Lcom/android/server/vibrator/Vibration$Status;

    goto :goto_0

    .line 545
    :pswitch_1
    const-string v4, "VibratorManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Start AppOpsManager operation errored for uid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v2, Lcom/android/server/vibrator/Vibration;->uid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    sget-object v4, Lcom/android/server/vibrator/Vibration$Status;->IGNORED_ERROR_APP_OPS:Lcom/android/server/vibrator/Vibration$Status;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 551
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 546
    return-object v4

    .line 540
    :pswitch_2
    :try_start_1
    const-string v4, "vibration"

    const/4 v5, 0x0

    invoke-static {v0, v1, v4, v5}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 541
    iput-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentVibration:Lcom/android/server/vibrator/VibrationThread;

    .line 542
    invoke-virtual {p1}, Lcom/android/server/vibrator/VibrationThread;->start()V

    .line 543
    sget-object v4, Lcom/android/server/vibrator/Vibration$Status;->RUNNING:Lcom/android/server/vibrator/Vibration$Status;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 551
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 543
    return-object v4

    .line 551
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 548
    return-object v4

    .line 551
    .end local v2    # "vib":Lcom/android/server/vibrator/Vibration;
    .end local v3    # "mode":I
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 552
    throw v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private transformAllVibratorsLocked(Ljava/util/function/Function;)Landroid/util/SparseArray;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "Lcom/android/server/vibrator/VibratorController;",
            "TT;>;)",
            "Landroid/util/SparseArray<",
            "TT;>;"
        }
    .end annotation

    .line 951
    .local p1, "fn":Ljava/util/function/Function;, "Ljava/util/function/Function<Lcom/android/server/vibrator/VibratorController;TT;>;"
    new-instance v0, Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    .line 952
    .local v0, "ret":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TT;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 953
    iget-object v2, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/vibrator/VibratorController;

    invoke-interface {p1, v3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 952
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 955
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method private updateAlwaysOnLocked(Lcom/android/server/vibrator/VibratorManagerService$AlwaysOnVibration;)V
    .locals 6
    .param p1, "vib"    # Lcom/android/server/vibrator/VibratorManagerService$AlwaysOnVibration;

    .line 488
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p1, Lcom/android/server/vibrator/VibratorManagerService$AlwaysOnVibration;->effects:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 489
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    iget-object v2, p1, Lcom/android/server/vibrator/VibratorManagerService$AlwaysOnVibration;->effects:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/vibrator/VibratorController;

    .line 490
    .local v1, "vibrator":Lcom/android/server/vibrator/VibratorController;
    iget-object v2, p1, Lcom/android/server/vibrator/VibratorManagerService$AlwaysOnVibration;->effects:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/vibrator/PrebakedSegment;

    .line 491
    .local v2, "effect":Landroid/os/vibrator/PrebakedSegment;
    if-nez v1, :cond_0

    .line 492
    goto :goto_2

    .line 494
    :cond_0
    iget v3, p1, Lcom/android/server/vibrator/VibratorManagerService$AlwaysOnVibration;->uid:I

    iget-object v4, p1, Lcom/android/server/vibrator/VibratorManagerService$AlwaysOnVibration;->opPkg:Ljava/lang/String;

    iget-object v5, p1, Lcom/android/server/vibrator/VibratorManagerService$AlwaysOnVibration;->attrs:Landroid/os/VibrationAttributes;

    invoke-direct {p0, v3, v4, v5}, Lcom/android/server/vibrator/VibratorManagerService;->shouldIgnoreVibrationLocked(ILjava/lang/String;Landroid/os/VibrationAttributes;)Lcom/android/server/vibrator/Vibration$Status;

    move-result-object v3

    .line 496
    .local v3, "ignoreStatus":Lcom/android/server/vibrator/Vibration$Status;
    if-nez v3, :cond_1

    .line 497
    iget-object v4, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationScaler:Lcom/android/server/vibrator/VibrationScaler;

    iget-object v5, p1, Lcom/android/server/vibrator/VibratorManagerService$AlwaysOnVibration;->attrs:Landroid/os/VibrationAttributes;

    invoke-virtual {v5}, Landroid/os/VibrationAttributes;->getUsage()I

    move-result v5

    invoke-virtual {v4, v2, v5}, Lcom/android/server/vibrator/VibrationScaler;->scale(Landroid/os/vibrator/PrebakedSegment;I)Landroid/os/vibrator/PrebakedSegment;

    move-result-object v2

    goto :goto_1

    .line 500
    :cond_1
    const/4 v2, 0x0

    .line 502
    :goto_1
    iget v4, p1, Lcom/android/server/vibrator/VibratorManagerService$AlwaysOnVibration;->alwaysOnId:I

    invoke-virtual {v1, v4, v2}, Lcom/android/server/vibrator/VibratorController;->updateAlwaysOn(ILandroid/os/vibrator/PrebakedSegment;)V

    .line 488
    .end local v1    # "vibrator":Lcom/android/server/vibrator/VibratorController;
    .end local v2    # "effect":Landroid/os/vibrator/PrebakedSegment;
    .end local v3    # "ignoreStatus":Lcom/android/server/vibrator/Vibration$Status;
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 504
    .end local v0    # "i":I
    :cond_2
    return-void
.end method


# virtual methods
.method public cancelVibrate(ILandroid/os/IBinder;)V
    .locals 8
    .param p1, "usageFilter"    # I
    .param p2, "token"    # Landroid/os/IBinder;

    .line 389
    const-string v0, "cancelVibrate"

    const-wide/32 v1, 0x800000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 391
    :try_start_0
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.VIBRATE"

    const-string v4, "cancelVibrate"

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 399
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 401
    .local v3, "ident":J
    :try_start_2
    iget-object v5, p0, Lcom/android/server/vibrator/VibratorManagerService;->mNextVibration:Lcom/android/server/vibrator/VibrationThread;

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    .line 402
    invoke-virtual {v5}, Lcom/android/server/vibrator/VibrationThread;->getVibration()Lcom/android/server/vibrator/Vibration;

    move-result-object v5

    invoke-direct {p0, v5, p1, p2}, Lcom/android/server/vibrator/VibratorManagerService;->shouldCancelVibration(Lcom/android/server/vibrator/Vibration;ILandroid/os/IBinder;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 404
    iput-object v6, p0, Lcom/android/server/vibrator/VibratorManagerService;->mNextVibration:Lcom/android/server/vibrator/VibrationThread;

    .line 406
    :cond_0
    iget-object v5, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentVibration:Lcom/android/server/vibrator/VibrationThread;

    if-eqz v5, :cond_1

    .line 407
    invoke-virtual {v5}, Lcom/android/server/vibrator/VibrationThread;->getVibration()Lcom/android/server/vibrator/Vibration;

    move-result-object v5

    invoke-direct {p0, v5, p1, p2}, Lcom/android/server/vibrator/VibratorManagerService;->shouldCancelVibration(Lcom/android/server/vibrator/Vibration;ILandroid/os/IBinder;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 409
    iget-object v5, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentVibration:Lcom/android/server/vibrator/VibrationThread;

    invoke-virtual {v5}, Lcom/android/server/vibrator/VibrationThread;->cancel()V

    .line 411
    :cond_1
    iget-object v5, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentExternalVibration:Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;

    if-eqz v5, :cond_2

    iget-object v5, v5, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->externalVibration:Landroid/os/ExternalVibration;

    .line 413
    invoke-virtual {v5}, Landroid/os/ExternalVibration;->getVibrationAttributes()Landroid/os/VibrationAttributes;

    move-result-object v5

    .line 412
    invoke-direct {p0, v5, p1}, Lcom/android/server/vibrator/VibratorManagerService;->shouldCancelVibration(Landroid/os/VibrationAttributes;I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 415
    iget-object v5, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentExternalVibration:Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;

    sget-object v7, Lcom/android/server/vibrator/Vibration$Status;->CANCELLED:Lcom/android/server/vibrator/Vibration$Status;

    invoke-virtual {v5, v7}, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->end(Lcom/android/server/vibrator/Vibration$Status;)V

    .line 416
    iget-object v5, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibratorManagerRecords:Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;

    iget-object v7, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentExternalVibration:Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;

    invoke-virtual {v5, v7}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;->record(Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;)V

    .line 417
    iget-object v5, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentExternalVibration:Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;

    iget-object v5, v5, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->externalVibration:Landroid/os/ExternalVibration;

    invoke-virtual {v5}, Landroid/os/ExternalVibration;->mute()Z

    .line 418
    iput-object v6, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentExternalVibration:Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;

    .line 419
    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lcom/android/server/vibrator/VibratorManagerService;->setExternalControl(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 422
    :cond_2
    :try_start_3
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 423
    nop

    .line 424
    .end local v3    # "ident":J
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 426
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 427
    nop

    .line 428
    return-void

    .line 422
    .restart local v3    # "ident":J
    :catchall_0
    move-exception v5

    :try_start_4
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 423
    nop

    .end local p0    # "this":Lcom/android/server/vibrator/VibratorManagerService;
    .end local p1    # "usageFilter":I
    .end local p2    # "token":Landroid/os/IBinder;
    throw v5

    .line 424
    .end local v3    # "ident":J
    .restart local p0    # "this":Lcom/android/server/vibrator/VibratorManagerService;
    .restart local p1    # "usageFilter":I
    .restart local p2    # "token":Landroid/os/IBinder;
    :catchall_1
    move-exception v3

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .end local p0    # "this":Lcom/android/server/vibrator/VibratorManagerService;
    .end local p1    # "usageFilter":I
    .end local p2    # "token":Landroid/os/IBinder;
    :try_start_5
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 426
    .restart local p0    # "this":Lcom/android/server/vibrator/VibratorManagerService;
    .restart local p1    # "usageFilter":I
    .restart local p2    # "token":Landroid/os/IBinder;
    :catchall_2
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 427
    throw v0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 432
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mContext:Landroid/content/Context;

    const-string v1, "VibratorManagerService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 434
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 436
    .local v0, "ident":J
    const/4 v2, 0x0

    .line 437
    .local v2, "isDumpProto":Z
    array-length v3, p3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, p3, v4

    .line 438
    .local v5, "arg":Ljava/lang/String;
    const-string v6, "--proto"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 439
    const/4 v2, 0x1

    .line 437
    .end local v5    # "arg":Ljava/lang/String;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 443
    :cond_2
    if-eqz v2, :cond_3

    .line 444
    :try_start_0
    iget-object v3, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibratorManagerRecords:Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;

    invoke-virtual {v3, p1}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;->dumpProto(Ljava/io/FileDescriptor;)V

    goto :goto_1

    .line 446
    :cond_3
    iget-object v3, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibratorManagerRecords:Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;

    invoke-virtual {v3, p2}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;->dumpText(Ljava/io/PrintWriter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 449
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 450
    nop

    .line 451
    return-void

    .line 449
    :catchall_0
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 450
    throw v3
.end method

.method public getVibratorIds()[I
    .locals 2

    .line 250
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibratorIds:[I

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    return-object v0
.end method

.method public getVibratorInfo(I)Landroid/os/VibratorInfo;
    .locals 2
    .param p1, "vibratorId"    # I

    .line 256
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/vibrator/VibratorController;

    .line 257
    .local v0, "controller":Lcom/android/server/vibrator/VibratorController;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/android/server/vibrator/VibratorController;->getVibratorInfo()Landroid/os/VibratorInfo;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public isVibrating(I)Z
    .locals 3
    .param p1, "vibratorId"    # I

    .line 262
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_VIBRATOR_STATE"

    const-string v2, "isVibrating"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/vibrator/VibratorController;

    .line 266
    .local v0, "controller":Lcom/android/server/vibrator/VibratorController;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/vibrator/VibratorController;->isVibrating()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public synthetic lambda$startVibrationLocked$1$VibratorManagerService(Lcom/android/server/vibrator/Vibration;Landroid/os/VibrationEffect;)Landroid/os/VibrationEffect;
    .locals 2
    .param p1, "vib"    # Lcom/android/server/vibrator/Vibration;
    .param p2, "effect"    # Landroid/os/VibrationEffect;

    .line 510
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationScaler:Lcom/android/server/vibrator/VibrationScaler;

    iget-object v1, p1, Lcom/android/server/vibrator/Vibration;->attrs:Landroid/os/VibrationAttributes;

    invoke-virtual {v1}, Landroid/os/VibrationAttributes;->getUsage()I

    move-result v1

    invoke-virtual {v0, p2, v1}, Lcom/android/server/vibrator/VibrationScaler;->scale(Landroid/os/VibrationEffect;I)Landroid/os/VibrationEffect;

    move-result-object v0

    return-object v0
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 8
    .param p1, "in"    # Ljava/io/FileDescriptor;
    .param p2, "out"    # Ljava/io/FileDescriptor;
    .param p3, "err"    # Ljava/io/FileDescriptor;
    .param p4, "args"    # [Ljava/lang/String;
    .param p5, "cb"    # Landroid/os/ShellCallback;
    .param p6, "resultReceiver"    # Landroid/os/ResultReceiver;

    .line 456
    new-instance v0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p0, v1}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;-><init>(Lcom/android/server/vibrator/VibratorManagerService;Landroid/os/IBinder;Lcom/android/server/vibrator/VibratorManagerService$1;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 457
    return-void
.end method

.method public registerVibratorStateListener(ILandroid/os/IVibratorStateListener;)Z
    .locals 3
    .param p1, "vibratorId"    # I
    .param p2, "listener"    # Landroid/os/IVibratorStateListener;

    .line 271
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_VIBRATOR_STATE"

    const-string v2, "registerVibratorStateListener"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/vibrator/VibratorController;

    .line 275
    .local v0, "controller":Lcom/android/server/vibrator/VibratorController;
    if-nez v0, :cond_0

    .line 276
    const/4 v1, 0x0

    return v1

    .line 278
    :cond_0
    invoke-virtual {v0, p2}, Lcom/android/server/vibrator/VibratorController;->registerVibratorStateListener(Landroid/os/IVibratorStateListener;)Z

    move-result v1

    return v1
.end method

.method public setAlwaysOnEffect(ILjava/lang/String;ILandroid/os/CombinedVibration;Landroid/os/VibrationAttributes;)Z
    .locals 15
    .param p1, "uid"    # I
    .param p2, "opPkg"    # Ljava/lang/String;
    .param p3, "alwaysOnId"    # I
    .param p4, "effect"    # Landroid/os/CombinedVibration;
    .param p5, "attrs"    # Landroid/os/VibrationAttributes;

    .line 297
    move-object v1, p0

    move/from16 v8, p3

    move-object/from16 v9, p4

    const-string v0, "setAlwaysOnEffect"

    const-wide/32 v10, 0x800000

    invoke-static {v10, v11, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 299
    :try_start_0
    iget-object v0, v1, Lcom/android/server/vibrator/VibratorManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.VIBRATE_ALWAYS_ON"

    const-string v3, "setAlwaysOnEffect"

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    const/4 v0, 0x1

    if-nez v9, :cond_0

    .line 304
    iget-object v2, v1, Lcom/android/server/vibrator/VibratorManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 305
    :try_start_1
    iget-object v3, v1, Lcom/android/server/vibrator/VibratorManagerService;->mAlwaysOnEffects:Landroid/util/SparseArray;

    invoke-virtual {v3, v8}, Landroid/util/SparseArray;->delete(I)V

    .line 306
    new-instance v3, Lcom/android/server/vibrator/VibratorManagerService$$ExternalSyntheticLambda1;

    invoke-direct {v3, v8}, Lcom/android/server/vibrator/VibratorManagerService$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-direct {p0, v3}, Lcom/android/server/vibrator/VibratorManagerService;->onAllVibratorsLocked(Ljava/util/function/Consumer;)V

    .line 311
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 312
    nop

    .line 332
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    .line 312
    return v0

    .line 311
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local p0    # "this":Lcom/android/server/vibrator/VibratorManagerService;
    .end local p1    # "uid":I
    .end local p2    # "opPkg":Ljava/lang/String;
    .end local p3    # "alwaysOnId":I
    .end local p4    # "effect":Landroid/os/CombinedVibration;
    .end local p5    # "attrs":Landroid/os/VibrationAttributes;
    :try_start_3
    throw v0

    .line 314
    .restart local p0    # "this":Lcom/android/server/vibrator/VibratorManagerService;
    .restart local p1    # "uid":I
    .restart local p2    # "opPkg":Ljava/lang/String;
    .restart local p3    # "alwaysOnId":I
    .restart local p4    # "effect":Landroid/os/CombinedVibration;
    .restart local p5    # "attrs":Landroid/os/VibrationAttributes;
    :cond_0
    invoke-static/range {p4 .. p4}, Lcom/android/server/vibrator/VibratorManagerService;->isEffectValid(Landroid/os/CombinedVibration;)Z

    move-result v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 315
    nop

    .line 332
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    .line 315
    return v3

    .line 317
    :cond_1
    move-object/from16 v2, p5

    :try_start_4
    invoke-direct {p0, v2}, Lcom/android/server/vibrator/VibratorManagerService;->fixupVibrationAttributes(Landroid/os/VibrationAttributes;)Landroid/os/VibrationAttributes;

    move-result-object v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 318
    .end local p5    # "attrs":Landroid/os/VibrationAttributes;
    .local v6, "attrs":Landroid/os/VibrationAttributes;
    :try_start_5
    iget-object v12, v1, Lcom/android/server/vibrator/VibratorManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v12
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 319
    :try_start_6
    invoke-direct {p0, v9}, Lcom/android/server/vibrator/VibratorManagerService;->fixupAlwaysOnEffectsLocked(Landroid/os/CombinedVibration;)Landroid/util/SparseArray;

    move-result-object v2

    move-object v13, v2

    .line 320
    .local v13, "effects":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/vibrator/PrebakedSegment;>;"
    if-nez v13, :cond_2

    .line 323
    monitor-exit v12
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 332
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    .line 323
    return v3

    .line 325
    :cond_2
    :try_start_7
    new-instance v14, Lcom/android/server/vibrator/VibratorManagerService$AlwaysOnVibration;

    move-object v2, v14

    move/from16 v3, p3

    move/from16 v4, p1

    move-object/from16 v5, p2

    move-object v7, v13

    invoke-direct/range {v2 .. v7}, Lcom/android/server/vibrator/VibratorManagerService$AlwaysOnVibration;-><init>(IILjava/lang/String;Landroid/os/VibrationAttributes;Landroid/util/SparseArray;)V

    move-object v2, v14

    .line 327
    .local v2, "alwaysOnVibration":Lcom/android/server/vibrator/VibratorManagerService$AlwaysOnVibration;
    iget-object v3, v1, Lcom/android/server/vibrator/VibratorManagerService;->mAlwaysOnEffects:Landroid/util/SparseArray;

    invoke-virtual {v3, v8, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 328
    invoke-direct {p0, v2}, Lcom/android/server/vibrator/VibratorManagerService;->updateAlwaysOnLocked(Lcom/android/server/vibrator/VibratorManagerService$AlwaysOnVibration;)V

    .line 329
    .end local v2    # "alwaysOnVibration":Lcom/android/server/vibrator/VibratorManagerService$AlwaysOnVibration;
    .end local v13    # "effects":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/vibrator/PrebakedSegment;>;"
    monitor-exit v12
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 330
    nop

    .line 332
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    .line 330
    return v0

    .line 329
    :catchall_1
    move-exception v0

    :try_start_8
    monitor-exit v12
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .end local v6    # "attrs":Landroid/os/VibrationAttributes;
    .end local p0    # "this":Lcom/android/server/vibrator/VibratorManagerService;
    .end local p1    # "uid":I
    .end local p2    # "opPkg":Ljava/lang/String;
    .end local p3    # "alwaysOnId":I
    .end local p4    # "effect":Landroid/os/CombinedVibration;
    :try_start_9
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 332
    .restart local v6    # "attrs":Landroid/os/VibrationAttributes;
    .restart local p0    # "this":Lcom/android/server/vibrator/VibratorManagerService;
    .restart local p1    # "uid":I
    .restart local p2    # "opPkg":Ljava/lang/String;
    .restart local p3    # "alwaysOnId":I
    .restart local p4    # "effect":Landroid/os/CombinedVibration;
    :catchall_2
    move-exception v0

    move-object v2, v6

    goto :goto_0

    .end local v6    # "attrs":Landroid/os/VibrationAttributes;
    .restart local p5    # "attrs":Landroid/os/VibrationAttributes;
    :catchall_3
    move-exception v0

    goto :goto_0

    :catchall_4
    move-exception v0

    move-object/from16 v2, p5

    .end local p5    # "attrs":Landroid/os/VibrationAttributes;
    .local v2, "attrs":Landroid/os/VibrationAttributes;
    :goto_0
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    .line 333
    throw v0
.end method

.method systemReady()V
    .locals 6

    .line 232
    const-string v0, "VibratorManager service initialized"

    const-string v1, "VibratorManagerService"

    const-string v2, "Initializing VibratorManager service..."

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    const-wide/32 v2, 0x800000

    const-string v4, "systemReady"

    invoke-static {v2, v3, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 235
    :try_start_0
    iget-object v4, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    invoke-virtual {v4}, Lcom/android/server/vibrator/VibrationSettings;->onSystemReady()V

    .line 236
    iget-object v4, p0, Lcom/android/server/vibrator/VibratorManagerService;->mInputDeviceDelegate:Lcom/android/server/vibrator/InputDeviceDelegate;

    invoke-virtual {v4}, Lcom/android/server/vibrator/InputDeviceDelegate;->onSystemReady()V

    .line 238
    iget-object v4, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    new-instance v5, Lcom/android/server/vibrator/VibratorManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0}, Lcom/android/server/vibrator/VibratorManagerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/vibrator/VibratorManagerService;)V

    invoke-virtual {v4, v5}, Lcom/android/server/vibrator/VibrationSettings;->addListener(Lcom/android/server/vibrator/VibrationSettings$OnVibratorSettingsChanged;)V

    .line 241
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorManagerService;->updateServiceState()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 243
    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 245
    nop

    .line 246
    return-void

    .line 243
    :catchall_0
    move-exception v4

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 245
    throw v4
.end method

.method public unregisterVibratorStateListener(ILandroid/os/IVibratorStateListener;)Z
    .locals 3
    .param p1, "vibratorId"    # I
    .param p2, "listener"    # Landroid/os/IVibratorStateListener;

    .line 284
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_VIBRATOR_STATE"

    const-string v2, "unregisterVibratorStateListener"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/vibrator/VibratorController;

    .line 288
    .local v0, "controller":Lcom/android/server/vibrator/VibratorController;
    if-nez v0, :cond_0

    .line 289
    const/4 v1, 0x0

    return v1

    .line 291
    :cond_0
    invoke-virtual {v0, p2}, Lcom/android/server/vibrator/VibratorController;->unregisterVibratorStateListener(Landroid/os/IVibratorStateListener;)Z

    move-result v1

    return v1
.end method

.method updateServiceState()V
    .locals 4

    .line 461
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 462
    :try_start_0
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mInputDeviceDelegate:Lcom/android/server/vibrator/InputDeviceDelegate;

    iget-object v2, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    .line 463
    invoke-virtual {v2}, Lcom/android/server/vibrator/VibrationSettings;->shouldVibrateInputDevices()Z

    move-result v2

    .line 462
    invoke-virtual {v1, v2}, Lcom/android/server/vibrator/InputDeviceDelegate;->updateInputDeviceVibrators(Z)Z

    move-result v1

    .line 465
    .local v1, "inputDevicesChanged":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/vibrator/VibratorManagerService;->mAlwaysOnEffects:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 466
    iget-object v3, p0, Lcom/android/server/vibrator/VibratorManagerService;->mAlwaysOnEffects:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/vibrator/VibratorManagerService$AlwaysOnVibration;

    invoke-direct {p0, v3}, Lcom/android/server/vibrator/VibratorManagerService;->updateAlwaysOnLocked(Lcom/android/server/vibrator/VibratorManagerService$AlwaysOnVibration;)V

    .line 465
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 469
    .end local v2    # "i":I
    :cond_0
    iget-object v2, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentVibration:Lcom/android/server/vibrator/VibrationThread;

    if-nez v2, :cond_1

    .line 470
    monitor-exit v0

    return-void

    .line 473
    :cond_1
    if-nez v1, :cond_2

    iget-object v3, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    .line 474
    invoke-virtual {v2}, Lcom/android/server/vibrator/VibrationThread;->getVibration()Lcom/android/server/vibrator/Vibration;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/vibrator/Vibration;->attrs:Landroid/os/VibrationAttributes;

    invoke-virtual {v2}, Landroid/os/VibrationAttributes;->getUsage()I

    move-result v2

    .line 473
    invoke-virtual {v3, v2}, Lcom/android/server/vibrator/VibrationSettings;->shouldVibrateForPowerMode(I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 475
    :cond_2
    iget-object v2, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentVibration:Lcom/android/server/vibrator/VibrationThread;

    invoke-virtual {v2}, Lcom/android/server/vibrator/VibrationThread;->cancel()V

    .line 477
    .end local v1    # "inputDevicesChanged":Z
    :cond_3
    monitor-exit v0

    .line 478
    return-void

    .line 477
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public vibrate(ILjava/lang/String;Landroid/os/CombinedVibration;Landroid/os/VibrationAttributes;Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 13
    .param p1, "uid"    # I
    .param p2, "opPkg"    # Ljava/lang/String;
    .param p3, "effect"    # Landroid/os/CombinedVibration;
    .param p4, "attrs"    # Landroid/os/VibrationAttributes;
    .param p5, "reason"    # Ljava/lang/String;
    .param p6, "token"    # Landroid/os/IBinder;

    .line 339
    move-object v1, p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "vibrate, reason = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, p5

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/32 v11, 0x800000

    invoke-static {v11, v12, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 341
    :try_start_0
    iget-object v0, v1, Lcom/android/server/vibrator/VibratorManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.VIBRATE"

    const-string v4, "vibrate"

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    .line 343
    if-nez p6, :cond_0

    .line 344
    :try_start_1
    const-string v0, "VibratorManagerService"

    const-string v3, "token must not be null"

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 383
    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    .line 345
    return-void

    .line 383
    :catchall_0
    move-exception v0

    move-object/from16 v4, p3

    move-object/from16 v7, p4

    goto/16 :goto_1

    .line 347
    :cond_0
    :try_start_2
    invoke-direct {p0, p1}, Lcom/android/server/vibrator/VibratorManagerService;->enforceUpdateAppOpsStatsPermission(I)V

    .line 348
    invoke-static/range {p3 .. p3}, Lcom/android/server/vibrator/VibratorManagerService;->isEffectValid(Landroid/os/CombinedVibration;)Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    if-nez v0, :cond_1

    .line 383
    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    .line 349
    return-void

    .line 351
    :cond_1
    move-object/from16 v3, p4

    :try_start_3
    invoke-direct {p0, v3}, Lcom/android/server/vibrator/VibratorManagerService;->fixupVibrationAttributes(Landroid/os/VibrationAttributes;)Landroid/os/VibrationAttributes;

    move-result-object v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    .line 352
    .end local p4    # "attrs":Landroid/os/VibrationAttributes;
    .local v7, "attrs":Landroid/os/VibrationAttributes;
    :try_start_4
    new-instance v0, Lcom/android/server/vibrator/Vibration;

    iget-object v3, v1, Lcom/android/server/vibrator/VibratorManagerService;->mNextVibrationId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v5

    move-object v3, v0

    move-object/from16 v4, p6

    move-object/from16 v6, p3

    move v8, p1

    move-object v9, p2

    move-object/from16 v10, p5

    invoke-direct/range {v3 .. v10}, Lcom/android/server/vibrator/Vibration;-><init>(Landroid/os/IBinder;ILandroid/os/CombinedVibration;Landroid/os/VibrationAttributes;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    move-object v3, v0

    .line 354
    .local v3, "vib":Lcom/android/server/vibrator/Vibration;
    move-object/from16 v4, p3

    :try_start_5
    invoke-direct {p0, v3, v4}, Lcom/android/server/vibrator/VibratorManagerService;->fillVibrationFallbacks(Lcom/android/server/vibrator/Vibration;Landroid/os/CombinedVibration;)V

    .line 356
    iget-object v5, v1, Lcom/android/server/vibrator/VibratorManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 357
    :try_start_6
    invoke-direct {p0, v3}, Lcom/android/server/vibrator/VibratorManagerService;->shouldIgnoreVibrationLocked(Lcom/android/server/vibrator/Vibration;)Lcom/android/server/vibrator/Vibration$Status;

    move-result-object v0

    .line 358
    .local v0, "ignoreStatus":Lcom/android/server/vibrator/Vibration$Status;
    if-eqz v0, :cond_2

    .line 359
    invoke-direct {p0, v3, v0}, Lcom/android/server/vibrator/VibratorManagerService;->endVibrationLocked(Lcom/android/server/vibrator/Vibration;Lcom/android/server/vibrator/Vibration$Status;)V

    .line 360
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 383
    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    .line 360
    return-void

    .line 363
    :cond_2
    :try_start_7
    invoke-direct {p0, v3}, Lcom/android/server/vibrator/VibratorManagerService;->shouldIgnoreVibrationForCurrentLocked(Lcom/android/server/vibrator/Vibration;)Lcom/android/server/vibrator/Vibration$Status;

    move-result-object v6

    .line 364
    .end local v0    # "ignoreStatus":Lcom/android/server/vibrator/Vibration$Status;
    .local v6, "ignoreStatus":Lcom/android/server/vibrator/Vibration$Status;
    if-eqz v6, :cond_3

    .line 365
    invoke-direct {p0, v3, v6}, Lcom/android/server/vibrator/VibratorManagerService;->endVibrationLocked(Lcom/android/server/vibrator/Vibration;Lcom/android/server/vibrator/Vibration$Status;)V

    .line 366
    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 383
    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    .line 366
    return-void

    .line 369
    :cond_3
    :try_start_8
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 371
    .local v8, "ident":J
    :try_start_9
    iget-object v0, v1, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentVibration:Lcom/android/server/vibrator/VibrationThread;

    if-eqz v0, :cond_4

    .line 372
    invoke-virtual {v0}, Lcom/android/server/vibrator/VibrationThread;->cancel()V

    .line 374
    :cond_4
    invoke-direct {p0, v3}, Lcom/android/server/vibrator/VibratorManagerService;->startVibrationLocked(Lcom/android/server/vibrator/Vibration;)Lcom/android/server/vibrator/Vibration$Status;

    move-result-object v0

    .line 375
    .local v0, "status":Lcom/android/server/vibrator/Vibration$Status;
    sget-object v10, Lcom/android/server/vibrator/Vibration$Status;->RUNNING:Lcom/android/server/vibrator/Vibration$Status;

    if-eq v0, v10, :cond_5

    .line 376
    invoke-direct {p0, v3, v0}, Lcom/android/server/vibrator/VibratorManagerService;->endVibrationLocked(Lcom/android/server/vibrator/Vibration;Lcom/android/server/vibrator/Vibration$Status;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 379
    .end local v0    # "status":Lcom/android/server/vibrator/Vibration$Status;
    :cond_5
    :try_start_a
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 380
    nop

    .line 381
    .end local v6    # "ignoreStatus":Lcom/android/server/vibrator/Vibration$Status;
    .end local v8    # "ident":J
    monitor-exit v5
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 383
    .end local v3    # "vib":Lcom/android/server/vibrator/Vibration;
    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    .line 384
    nop

    .line 385
    return-void

    .line 379
    .restart local v3    # "vib":Lcom/android/server/vibrator/Vibration;
    .restart local v6    # "ignoreStatus":Lcom/android/server/vibrator/Vibration$Status;
    .restart local v8    # "ident":J
    :catchall_1
    move-exception v0

    :try_start_b
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 380
    nop

    .end local v3    # "vib":Lcom/android/server/vibrator/Vibration;
    .end local v7    # "attrs":Landroid/os/VibrationAttributes;
    .end local p0    # "this":Lcom/android/server/vibrator/VibratorManagerService;
    .end local p1    # "uid":I
    .end local p2    # "opPkg":Ljava/lang/String;
    .end local p3    # "effect":Landroid/os/CombinedVibration;
    .end local p5    # "reason":Ljava/lang/String;
    .end local p6    # "token":Landroid/os/IBinder;
    throw v0

    .line 381
    .end local v6    # "ignoreStatus":Lcom/android/server/vibrator/Vibration$Status;
    .end local v8    # "ident":J
    .restart local v3    # "vib":Lcom/android/server/vibrator/Vibration;
    .restart local v7    # "attrs":Landroid/os/VibrationAttributes;
    .restart local p0    # "this":Lcom/android/server/vibrator/VibratorManagerService;
    .restart local p1    # "uid":I
    .restart local p2    # "opPkg":Ljava/lang/String;
    .restart local p3    # "effect":Landroid/os/CombinedVibration;
    .restart local p5    # "reason":Ljava/lang/String;
    .restart local p6    # "token":Landroid/os/IBinder;
    :catchall_2
    move-exception v0

    monitor-exit v5
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .end local v7    # "attrs":Landroid/os/VibrationAttributes;
    .end local p0    # "this":Lcom/android/server/vibrator/VibratorManagerService;
    .end local p1    # "uid":I
    .end local p2    # "opPkg":Ljava/lang/String;
    .end local p3    # "effect":Landroid/os/CombinedVibration;
    .end local p5    # "reason":Ljava/lang/String;
    .end local p6    # "token":Landroid/os/IBinder;
    :try_start_c
    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 383
    .end local v3    # "vib":Lcom/android/server/vibrator/Vibration;
    .restart local v7    # "attrs":Landroid/os/VibrationAttributes;
    .restart local p0    # "this":Lcom/android/server/vibrator/VibratorManagerService;
    .restart local p1    # "uid":I
    .restart local p2    # "opPkg":Ljava/lang/String;
    .restart local p3    # "effect":Landroid/os/CombinedVibration;
    .restart local p5    # "reason":Ljava/lang/String;
    .restart local p6    # "token":Landroid/os/IBinder;
    :catchall_3
    move-exception v0

    goto :goto_1

    :catchall_4
    move-exception v0

    move-object/from16 v4, p3

    goto :goto_1

    .end local v7    # "attrs":Landroid/os/VibrationAttributes;
    .restart local p4    # "attrs":Landroid/os/VibrationAttributes;
    :catchall_5
    move-exception v0

    move-object/from16 v4, p3

    goto :goto_0

    :catchall_6
    move-exception v0

    move-object/from16 v4, p3

    move-object/from16 v3, p4

    :goto_0
    move-object v7, v3

    .end local p4    # "attrs":Landroid/os/VibrationAttributes;
    .restart local v7    # "attrs":Landroid/os/VibrationAttributes;
    :goto_1
    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    .line 384
    throw v0
.end method
