.class Lcom/android/server/display/HighBrightnessModeController;
.super Ljava/lang/Object;
.source "HighBrightnessModeController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/HighBrightnessModeController$Injector;,
        Lcom/android/server/display/HighBrightnessModeController$SettingsObserver;,
        Lcom/android/server/display/HighBrightnessModeController$SkinThermalStatusObserver;,
        Lcom/android/server/display/HighBrightnessModeController$HdrListener;,
        Lcom/android/server/display/HighBrightnessModeController$HbmEvent;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final HDR_PERCENT_OF_SCREEN_REQUIRED:F = 0.5f

.field private static final TAG:Ljava/lang/String; = "HighBrightnessModeController"


# instance fields
.field private mAmbientLux:F

.field private mBrightness:F

.field private final mBrightnessMax:F

.field private final mBrightnessMin:F

.field private mBrightnessSetting:Lcom/android/server/display/BrightnessSetting;

.field private final mBrightnessSettingListener:Lcom/android/server/display/BrightnessSetting$BrightnessSettingListener;

.field private final mClock:Lcom/android/server/display/DisplayManagerService$Clock;

.field private final mContext:Landroid/content/Context;

.field private mEvents:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/android/server/display/HighBrightnessModeController$HbmEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private final mHbmChangeCallback:Ljava/lang/Runnable;

.field private mHbmData:Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

.field private mHbmMode:I

.field private mHdrListener:Landroid/view/SurfaceControlHdrLayerInfoListener;

.field private mHeight:I

.field private final mInjector:Lcom/android/server/display/HighBrightnessModeController$Injector;

.field private mIsAutoBrightnessEnabled:Z

.field private mIsBlockedByLowPowerMode:Z

.field private mIsHdrLayerPresent:Z

.field private mIsInAllowedAmbientRange:Z

.field private mIsThermalStatusWithinLimit:Z

.field private mIsTimeAvailable:Z

.field private final mRecalcRunnable:Ljava/lang/Runnable;

.field private mRegisteredDisplayToken:Landroid/os/IBinder;

.field private mRunningStartTimeMillis:J

.field private final mSettingsObserver:Lcom/android/server/display/HighBrightnessModeController$SettingsObserver;

.field private final mSkinThermalStatusObserver:Lcom/android/server/display/HighBrightnessModeController$SkinThermalStatusObserver;

.field private mWidth:I


# direct methods
.method public static synthetic $r8$lambda$yl94PRiW-f7m4RO5bHtT-VWcNds(Lcom/android/server/display/HighBrightnessModeController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/display/HighBrightnessModeController;->recalculateTimeAllowance()V

    return-void
.end method

.method constructor <init>(Landroid/os/Handler;IILandroid/os/IBinder;FFLcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;Ljava/lang/Runnable;Landroid/content/Context;Lcom/android/server/display/BrightnessSetting;)V
    .locals 12
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "displayToken"    # Landroid/os/IBinder;
    .param p5, "brightnessMin"    # F
    .param p6, "brightnessMax"    # F
    .param p7, "hbmData"    # Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;
    .param p8, "hbmChangeCallback"    # Ljava/lang/Runnable;
    .param p9, "context"    # Landroid/content/Context;
    .param p10, "brightnessSetting"    # Lcom/android/server/display/BrightnessSetting;

    .line 107
    new-instance v1, Lcom/android/server/display/HighBrightnessModeController$Injector;

    invoke-direct {v1}, Lcom/android/server/display/HighBrightnessModeController$Injector;-><init>()V

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    invoke-direct/range {v0 .. v11}, Lcom/android/server/display/HighBrightnessModeController;-><init>(Lcom/android/server/display/HighBrightnessModeController$Injector;Landroid/os/Handler;IILandroid/os/IBinder;FFLcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;Ljava/lang/Runnable;Landroid/content/Context;Lcom/android/server/display/BrightnessSetting;)V

    .line 109
    return-void
.end method

.method constructor <init>(Lcom/android/server/display/HighBrightnessModeController$Injector;Landroid/os/Handler;IILandroid/os/IBinder;FFLcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;Ljava/lang/Runnable;Landroid/content/Context;Lcom/android/server/display/BrightnessSetting;)V
    .locals 13
    .param p1, "injector"    # Lcom/android/server/display/HighBrightnessModeController$Injector;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "displayToken"    # Landroid/os/IBinder;
    .param p6, "brightnessMin"    # F
    .param p7, "brightnessMax"    # F
    .param p8, "hbmData"    # Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;
    .param p9, "hbmChangeCallback"    # Ljava/lang/Runnable;
    .param p10, "context"    # Landroid/content/Context;
    .param p11, "brightnessSetting"    # Lcom/android/server/display/BrightnessSetting;

    .line 115
    move-object v6, p0

    move-object v7, p1

    move-object v8, p2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Lcom/android/server/display/HighBrightnessModeController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/display/HighBrightnessModeController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/HighBrightnessModeController;)V

    iput-object v0, v6, Lcom/android/server/display/HighBrightnessModeController;->mBrightnessSettingListener:Lcom/android/server/display/BrightnessSetting$BrightnessSettingListener;

    .line 79
    const/4 v0, 0x0

    iput-boolean v0, v6, Lcom/android/server/display/HighBrightnessModeController;->mIsInAllowedAmbientRange:Z

    .line 80
    iput-boolean v0, v6, Lcom/android/server/display/HighBrightnessModeController;->mIsTimeAvailable:Z

    .line 81
    iput-boolean v0, v6, Lcom/android/server/display/HighBrightnessModeController;->mIsAutoBrightnessEnabled:Z

    .line 83
    iput v0, v6, Lcom/android/server/display/HighBrightnessModeController;->mHbmMode:I

    .line 84
    iput-boolean v0, v6, Lcom/android/server/display/HighBrightnessModeController;->mIsHdrLayerPresent:Z

    .line 85
    const/4 v1, 0x1

    iput-boolean v1, v6, Lcom/android/server/display/HighBrightnessModeController;->mIsThermalStatusWithinLimit:Z

    .line 86
    iput-boolean v0, v6, Lcom/android/server/display/HighBrightnessModeController;->mIsBlockedByLowPowerMode:Z

    .line 95
    const-wide/16 v0, -0x1

    iput-wide v0, v6, Lcom/android/server/display/HighBrightnessModeController;->mRunningStartTimeMillis:J

    .line 102
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, v6, Lcom/android/server/display/HighBrightnessModeController;->mEvents:Ljava/util/LinkedList;

    .line 116
    iput-object v7, v6, Lcom/android/server/display/HighBrightnessModeController;->mInjector:Lcom/android/server/display/HighBrightnessModeController$Injector;

    .line 117
    move-object/from16 v9, p10

    iput-object v9, v6, Lcom/android/server/display/HighBrightnessModeController;->mContext:Landroid/content/Context;

    .line 118
    invoke-virtual {p1}, Lcom/android/server/display/HighBrightnessModeController$Injector;->getClock()Lcom/android/server/display/DisplayManagerService$Clock;

    move-result-object v0

    iput-object v0, v6, Lcom/android/server/display/HighBrightnessModeController;->mClock:Lcom/android/server/display/DisplayManagerService$Clock;

    .line 119
    iput-object v8, v6, Lcom/android/server/display/HighBrightnessModeController;->mHandler:Landroid/os/Handler;

    .line 120
    move/from16 v10, p6

    iput v10, v6, Lcom/android/server/display/HighBrightnessModeController;->mBrightnessMin:F

    .line 121
    move/from16 v11, p7

    iput v11, v6, Lcom/android/server/display/HighBrightnessModeController;->mBrightnessMax:F

    .line 122
    invoke-virtual/range {p11 .. p11}, Lcom/android/server/display/BrightnessSetting;->getBrightness()F

    move-result v0

    iput v0, v6, Lcom/android/server/display/HighBrightnessModeController;->mBrightness:F

    .line 123
    move-object/from16 v12, p9

    iput-object v12, v6, Lcom/android/server/display/HighBrightnessModeController;->mHbmChangeCallback:Ljava/lang/Runnable;

    .line 124
    new-instance v0, Lcom/android/server/display/HighBrightnessModeController$SkinThermalStatusObserver;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/display/HighBrightnessModeController$SkinThermalStatusObserver;-><init>(Lcom/android/server/display/HighBrightnessModeController;Lcom/android/server/display/HighBrightnessModeController$Injector;Landroid/os/Handler;)V

    iput-object v0, v6, Lcom/android/server/display/HighBrightnessModeController;->mSkinThermalStatusObserver:Lcom/android/server/display/HighBrightnessModeController$SkinThermalStatusObserver;

    .line 125
    new-instance v0, Lcom/android/server/display/HighBrightnessModeController$SettingsObserver;

    invoke-direct {v0, p0, p2}, Lcom/android/server/display/HighBrightnessModeController$SettingsObserver;-><init>(Lcom/android/server/display/HighBrightnessModeController;Landroid/os/Handler;)V

    iput-object v0, v6, Lcom/android/server/display/HighBrightnessModeController;->mSettingsObserver:Lcom/android/server/display/HighBrightnessModeController$SettingsObserver;

    .line 126
    new-instance v0, Lcom/android/server/display/HighBrightnessModeController$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/server/display/HighBrightnessModeController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/display/HighBrightnessModeController;)V

    iput-object v0, v6, Lcom/android/server/display/HighBrightnessModeController;->mRecalcRunnable:Ljava/lang/Runnable;

    .line 127
    new-instance v0, Lcom/android/server/display/HighBrightnessModeController$HdrListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/display/HighBrightnessModeController$HdrListener;-><init>(Lcom/android/server/display/HighBrightnessModeController;Lcom/android/server/display/HighBrightnessModeController$1;)V

    iput-object v0, v6, Lcom/android/server/display/HighBrightnessModeController;->mHdrListener:Landroid/view/SurfaceControlHdrLayerInfoListener;

    .line 129
    move-object v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p8

    move-object/from16 v5, p11

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/display/HighBrightnessModeController;->resetHbmData(IILandroid/os/IBinder;Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;Lcom/android/server/display/BrightnessSetting;)V

    .line 130
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/display/HighBrightnessModeController;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/HighBrightnessModeController;

    .line 56
    iget-object v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/display/HighBrightnessModeController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/HighBrightnessModeController;

    .line 56
    iget-boolean v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsBlockedByLowPowerMode:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/android/server/display/HighBrightnessModeController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/HighBrightnessModeController;
    .param p1, "x1"    # Z

    .line 56
    iput-boolean p1, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsBlockedByLowPowerMode:Z

    return p1
.end method

.method static synthetic access$202(Lcom/android/server/display/HighBrightnessModeController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/HighBrightnessModeController;
    .param p1, "x1"    # Z

    .line 56
    iput-boolean p1, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsHdrLayerPresent:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/display/HighBrightnessModeController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/HighBrightnessModeController;

    .line 56
    iget v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mWidth:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/display/HighBrightnessModeController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/HighBrightnessModeController;

    .line 56
    iget v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mHeight:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/display/HighBrightnessModeController;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/HighBrightnessModeController;

    .line 56
    iget v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mBrightness:F

    return v0
.end method

.method static synthetic access$602(Lcom/android/server/display/HighBrightnessModeController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/HighBrightnessModeController;
    .param p1, "x1"    # Z

    .line 56
    iput-boolean p1, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsThermalStatusWithinLimit:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/server/display/HighBrightnessModeController;)Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/HighBrightnessModeController;

    .line 56
    iget-object v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mHbmData:Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/display/HighBrightnessModeController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/HighBrightnessModeController;

    .line 56
    invoke-direct {p0}, Lcom/android/server/display/HighBrightnessModeController;->updateHbmMode()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/display/HighBrightnessModeController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/HighBrightnessModeController;

    .line 56
    iget-object v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private calculateHighBrightnessMode()I
    .locals 2

    .line 441
    invoke-direct {p0}, Lcom/android/server/display/HighBrightnessModeController;->deviceSupportsHbm()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 442
    return v1

    .line 443
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsHdrLayerPresent:Z

    if-eqz v0, :cond_1

    .line 444
    const/4 v0, 0x2

    return v0

    .line 445
    :cond_1
    invoke-direct {p0}, Lcom/android/server/display/HighBrightnessModeController;->isCurrentlyAllowed()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 446
    const/4 v0, 0x1

    return v0

    .line 449
    :cond_2
    return v1
.end method

.method private calculateRemainingTime(J)J
    .locals 12
    .param p1, "currentTime"    # J

    .line 327
    invoke-direct {p0}, Lcom/android/server/display/HighBrightnessModeController;->deviceSupportsHbm()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    .line 328
    return-wide v1

    .line 331
    :cond_0
    const-wide/16 v3, 0x0

    .line 335
    .local v3, "timeAlreadyUsed":J
    iget-wide v5, p0, Lcom/android/server/display/HighBrightnessModeController;->mRunningStartTimeMillis:J

    cmp-long v0, v5, v1

    if-lez v0, :cond_2

    .line 336
    cmp-long v0, v5, p1

    if-lez v0, :cond_1

    .line 337
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Start time set to the future. curr: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ", start: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/android/server/display/HighBrightnessModeController;->mRunningStartTimeMillis:J

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "HighBrightnessModeController"

    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    iput-wide p1, p0, Lcom/android/server/display/HighBrightnessModeController;->mRunningStartTimeMillis:J

    .line 341
    :cond_1
    iget-wide v5, p0, Lcom/android/server/display/HighBrightnessModeController;->mRunningStartTimeMillis:J

    sub-long v3, p1, v5

    .line 349
    :cond_2
    iget-object v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mHbmData:Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    iget-wide v5, v0, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->timeWindowMillis:J

    sub-long v5, p1, v5

    .line 350
    .local v5, "windowstartTimeMillis":J
    iget-object v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mEvents:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 351
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/display/HighBrightnessModeController$HbmEvent;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 352
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/display/HighBrightnessModeController$HbmEvent;

    .line 355
    .local v7, "event":Lcom/android/server/display/HighBrightnessModeController$HbmEvent;
    iget-wide v8, v7, Lcom/android/server/display/HighBrightnessModeController$HbmEvent;->endTimeMillis:J

    cmp-long v8, v8, v5

    if-gez v8, :cond_3

    .line 356
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 357
    goto :goto_0

    .line 360
    :cond_3
    iget-wide v8, v7, Lcom/android/server/display/HighBrightnessModeController$HbmEvent;->startTimeMillis:J

    invoke-static {v8, v9, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    .line 361
    .local v8, "startTimeMillis":J
    iget-wide v10, v7, Lcom/android/server/display/HighBrightnessModeController$HbmEvent;->endTimeMillis:J

    sub-long/2addr v10, v8

    add-long/2addr v3, v10

    .line 362
    .end local v7    # "event":Lcom/android/server/display/HighBrightnessModeController$HbmEvent;
    .end local v8    # "startTimeMillis":J
    goto :goto_0

    .line 368
    :cond_4
    iget-object v7, p0, Lcom/android/server/display/HighBrightnessModeController;->mHbmData:Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    iget-wide v7, v7, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->timeMaxMillis:J

    sub-long/2addr v7, v3

    invoke-static {v1, v2, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    return-wide v1
.end method

.method private deviceSupportsHbm()Z
    .locals 1

    .line 323
    iget-object v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mHbmData:Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private dumpHbmEvent(Ljava/io/PrintWriter;Lcom/android/server/display/HighBrightnessModeController$HbmEvent;)J
    .locals 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "event"    # Lcom/android/server/display/HighBrightnessModeController$HbmEvent;

    .line 291
    iget-wide v0, p2, Lcom/android/server/display/HighBrightnessModeController$HbmEvent;->endTimeMillis:J

    iget-wide v2, p2, Lcom/android/server/display/HighBrightnessModeController$HbmEvent;->startTimeMillis:J

    sub-long/2addr v0, v2

    .line 292
    .local v0, "duration":J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    event: ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p2, Lcom/android/server/display/HighBrightnessModeController$HbmEvent;->startTimeMillis:J

    .line 293
    invoke-static {v3, v4}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p2, Lcom/android/server/display/HighBrightnessModeController$HbmEvent;->endTimeMillis:J

    .line 294
    invoke-static {v3, v4}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    invoke-static {v0, v1}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 292
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 296
    iget-wide v2, p2, Lcom/android/server/display/HighBrightnessModeController$HbmEvent;->startTimeMillis:J

    return-wide v2
.end method

.method private dumpLocal(Ljava/io/PrintWriter;)V
    .locals 9
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 255
    const-string v0, "HighBrightnessModeController:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/HighBrightnessModeController;->mBrightness:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mCurrentMin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/display/HighBrightnessModeController;->getCurrentBrightnessMin()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 258
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mCurrentMax="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/display/HighBrightnessModeController;->getCurrentBrightnessMax()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 259
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mHbmMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/HighBrightnessModeController;->mHbmMode:I

    invoke-static {v1}, Landroid/hardware/display/BrightnessInfo;->hbmToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mHbmData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/HighBrightnessModeController;->mHbmData:Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAmbientLux="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/HighBrightnessModeController;->mAmbientLux:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mIsInAllowedAmbientRange="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsInAllowedAmbientRange:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mIsAutoBrightnessEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsAutoBrightnessEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mIsHdrLayerPresent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsHdrLayerPresent:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 265
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mBrightnessMin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/HighBrightnessModeController;->mBrightnessMin:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mBrightnessMax="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/HighBrightnessModeController;->mBrightnessMax:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 267
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  remainingTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/HighBrightnessModeController;->mClock:Lcom/android/server/display/DisplayManagerService$Clock;

    invoke-interface {v1}, Lcom/android/server/display/DisplayManagerService$Clock;->uptimeMillis()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lcom/android/server/display/HighBrightnessModeController;->calculateRemainingTime(J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 268
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mIsTimeAvailable= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsTimeAvailable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mRunningStartTimeMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/display/HighBrightnessModeController;->mRunningStartTimeMillis:J

    invoke-static {v1, v2}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 270
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mIsThermalStatusWithinLimit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsThermalStatusWithinLimit:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 271
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mIsBlockedByLowPowerMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsBlockedByLowPowerMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  width*height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/HighBrightnessModeController;->mWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/HighBrightnessModeController;->mHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 273
    const-string v0, "  mEvents="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 274
    iget-object v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mClock:Lcom/android/server/display/DisplayManagerService$Clock;

    invoke-interface {v0}, Lcom/android/server/display/DisplayManagerService$Clock;->uptimeMillis()J

    move-result-wide v0

    .line 275
    .local v0, "currentTime":J
    move-wide v2, v0

    .line 276
    .local v2, "lastStartTime":J
    iget-wide v4, p0, Lcom/android/server/display/HighBrightnessModeController;->mRunningStartTimeMillis:J

    const-wide/16 v6, -0x1

    cmp-long v6, v4, v6

    if-eqz v6, :cond_0

    .line 277
    new-instance v6, Lcom/android/server/display/HighBrightnessModeController$HbmEvent;

    invoke-direct {v6, v4, v5, v0, v1}, Lcom/android/server/display/HighBrightnessModeController$HbmEvent;-><init>(JJ)V

    invoke-direct {p0, p1, v6}, Lcom/android/server/display/HighBrightnessModeController;->dumpHbmEvent(Ljava/io/PrintWriter;Lcom/android/server/display/HighBrightnessModeController$HbmEvent;)J

    move-result-wide v2

    .line 279
    :cond_0
    iget-object v4, p0, Lcom/android/server/display/HighBrightnessModeController;->mEvents:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/display/HighBrightnessModeController$HbmEvent;

    .line 280
    .local v5, "event":Lcom/android/server/display/HighBrightnessModeController$HbmEvent;
    iget-wide v6, v5, Lcom/android/server/display/HighBrightnessModeController$HbmEvent;->endTimeMillis:J

    cmp-long v6, v2, v6

    if-lez v6, :cond_1

    .line 281
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "    event: [normal brightness]: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v5, Lcom/android/server/display/HighBrightnessModeController$HbmEvent;->endTimeMillis:J

    sub-long v7, v2, v7

    .line 282
    invoke-static {v7, v8}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 281
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 284
    :cond_1
    invoke-direct {p0, p1, v5}, Lcom/android/server/display/HighBrightnessModeController;->dumpHbmEvent(Ljava/io/PrintWriter;Lcom/android/server/display/HighBrightnessModeController$HbmEvent;)J

    move-result-wide v2

    .line 285
    .end local v5    # "event":Lcom/android/server/display/HighBrightnessModeController$HbmEvent;
    goto :goto_0

    .line 287
    :cond_2
    iget-object v4, p0, Lcom/android/server/display/HighBrightnessModeController;->mSkinThermalStatusObserver:Lcom/android/server/display/HighBrightnessModeController$SkinThermalStatusObserver;

    invoke-virtual {v4, p1}, Lcom/android/server/display/HighBrightnessModeController$SkinThermalStatusObserver;->dump(Ljava/io/PrintWriter;)V

    .line 288
    return-void
.end method

.method private isCurrentlyAllowed()Z
    .locals 1

    .line 317
    iget-boolean v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsHdrLayerPresent:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsAutoBrightnessEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsTimeAvailable:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsInAllowedAmbientRange:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsThermalStatusWithinLimit:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsBlockedByLowPowerMode:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private recalculateTimeAllowance()V
    .locals 15

    .line 375
    iget-object v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mClock:Lcom/android/server/display/DisplayManagerService$Clock;

    invoke-interface {v0}, Lcom/android/server/display/DisplayManagerService$Clock;->uptimeMillis()J

    move-result-wide v0

    .line 376
    .local v0, "currentTime":J
    invoke-direct {p0, v0, v1}, Lcom/android/server/display/HighBrightnessModeController;->calculateRemainingTime(J)J

    move-result-wide v2

    .line 380
    .local v2, "remainingTime":J
    iget-object v4, p0, Lcom/android/server/display/HighBrightnessModeController;->mHbmData:Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    iget-wide v4, v4, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->timeMinMillis:J

    cmp-long v4, v2, v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ltz v4, :cond_0

    move v4, v5

    goto :goto_0

    :cond_0
    move v4, v6

    .line 381
    .local v4, "isAllowedWithoutRestrictions":Z
    :goto_0
    if-nez v4, :cond_1

    const-wide/16 v7, 0x0

    cmp-long v7, v2, v7

    if-lez v7, :cond_1

    iget v7, p0, Lcom/android/server/display/HighBrightnessModeController;->mBrightness:F

    iget-object v8, p0, Lcom/android/server/display/HighBrightnessModeController;->mHbmData:Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    iget v8, v8, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->transitionPoint:F

    cmpl-float v7, v7, v8

    if-lez v7, :cond_1

    move v7, v5

    goto :goto_1

    :cond_1
    move v7, v6

    .line 383
    .local v7, "isOnlyAllowedToStayOn":Z
    :goto_1
    if-nez v4, :cond_3

    if-eqz v7, :cond_2

    goto :goto_2

    :cond_2
    move v5, v6

    :cond_3
    :goto_2
    iput-boolean v5, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsTimeAvailable:Z

    .line 387
    const-wide/16 v5, -0x1

    .line 388
    .local v5, "nextTimeout":J
    iget v8, p0, Lcom/android/server/display/HighBrightnessModeController;->mBrightness:F

    iget-object v9, p0, Lcom/android/server/display/HighBrightnessModeController;->mHbmData:Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    iget v9, v9, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->transitionPoint:F

    cmpl-float v8, v8, v9

    if-lez v8, :cond_4

    .line 390
    add-long v5, v0, v2

    goto :goto_3

    .line 391
    :cond_4
    iget-boolean v8, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsTimeAvailable:Z

    if-nez v8, :cond_5

    iget-object v8, p0, Lcom/android/server/display/HighBrightnessModeController;->mEvents:Ljava/util/LinkedList;

    invoke-virtual {v8}, Ljava/util/LinkedList;->size()I

    move-result v8

    if-lez v8, :cond_5

    .line 395
    iget-object v8, p0, Lcom/android/server/display/HighBrightnessModeController;->mHbmData:Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    iget-wide v8, v8, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->timeWindowMillis:J

    sub-long v8, v0, v8

    .line 396
    .local v8, "windowstartTimeMillis":J
    iget-object v10, p0, Lcom/android/server/display/HighBrightnessModeController;->mEvents:Ljava/util/LinkedList;

    invoke-virtual {v10}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/display/HighBrightnessModeController$HbmEvent;

    .line 397
    .local v10, "lastEvent":Lcom/android/server/display/HighBrightnessModeController$HbmEvent;
    iget-wide v11, v10, Lcom/android/server/display/HighBrightnessModeController$HbmEvent;->startTimeMillis:J

    .line 398
    invoke-static {v8, v9, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11

    iget-object v13, p0, Lcom/android/server/display/HighBrightnessModeController;->mHbmData:Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    iget-wide v13, v13, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->timeMinMillis:J

    add-long/2addr v11, v13

    .line 400
    .local v11, "startTimePlusMinMillis":J
    sub-long v13, v11, v8

    add-long/2addr v13, v0

    sub-long/2addr v13, v2

    .line 402
    .local v13, "timeWhenMinIsGainedBack":J
    move-wide v5, v13

    .line 424
    .end local v8    # "windowstartTimeMillis":J
    .end local v10    # "lastEvent":Lcom/android/server/display/HighBrightnessModeController$HbmEvent;
    .end local v11    # "startTimePlusMinMillis":J
    .end local v13    # "timeWhenMinIsGainedBack":J
    :cond_5
    :goto_3
    const-wide/16 v8, -0x1

    cmp-long v8, v5, v8

    if-eqz v8, :cond_6

    .line 425
    iget-object v8, p0, Lcom/android/server/display/HighBrightnessModeController;->mHandler:Landroid/os/Handler;

    iget-object v9, p0, Lcom/android/server/display/HighBrightnessModeController;->mRecalcRunnable:Ljava/lang/Runnable;

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 426
    iget-object v8, p0, Lcom/android/server/display/HighBrightnessModeController;->mHandler:Landroid/os/Handler;

    iget-object v9, p0, Lcom/android/server/display/HighBrightnessModeController;->mRecalcRunnable:Ljava/lang/Runnable;

    const-wide/16 v10, 0x1

    add-long/2addr v10, v5

    invoke-virtual {v8, v9, v10, v11}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 429
    :cond_6
    invoke-direct {p0}, Lcom/android/server/display/HighBrightnessModeController;->updateHbmMode()V

    .line 430
    return-void
.end method

.method private registerHdrListener(Landroid/os/IBinder;)V
    .locals 1
    .param p1, "displayToken"    # Landroid/os/IBinder;

    .line 453
    iget-object v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mRegisteredDisplayToken:Landroid/os/IBinder;

    if-ne v0, p1, :cond_0

    .line 454
    return-void

    .line 457
    :cond_0
    invoke-direct {p0}, Lcom/android/server/display/HighBrightnessModeController;->unregisterHdrListener()V

    .line 458
    iput-object p1, p0, Lcom/android/server/display/HighBrightnessModeController;->mRegisteredDisplayToken:Landroid/os/IBinder;

    .line 459
    if-eqz p1, :cond_1

    .line 460
    iget-object v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mHdrListener:Landroid/view/SurfaceControlHdrLayerInfoListener;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceControlHdrLayerInfoListener;->register(Landroid/os/IBinder;)V

    .line 462
    :cond_1
    return-void
.end method

.method private resetBrightnessSetting(Lcom/android/server/display/BrightnessSetting;)V
    .locals 2
    .param p1, "brightnessSetting"    # Lcom/android/server/display/BrightnessSetting;

    .line 300
    iget-object v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mBrightnessSetting:Lcom/android/server/display/BrightnessSetting;

    if-eqz v0, :cond_0

    .line 301
    iget-object v1, p0, Lcom/android/server/display/HighBrightnessModeController;->mBrightnessSettingListener:Lcom/android/server/display/BrightnessSetting$BrightnessSettingListener;

    invoke-virtual {v0, v1}, Lcom/android/server/display/BrightnessSetting;->unregisterListener(Lcom/android/server/display/BrightnessSetting$BrightnessSettingListener;)V

    .line 303
    :cond_0
    iput-object p1, p0, Lcom/android/server/display/HighBrightnessModeController;->mBrightnessSetting:Lcom/android/server/display/BrightnessSetting;

    .line 304
    if-eqz p1, :cond_1

    .line 305
    iget-object v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mBrightnessSettingListener:Lcom/android/server/display/BrightnessSetting$BrightnessSettingListener;

    invoke-virtual {p1, v0}, Lcom/android/server/display/BrightnessSetting;->registerListener(Lcom/android/server/display/BrightnessSetting$BrightnessSettingListener;)V

    .line 307
    :cond_1
    return-void
.end method

.method private unregisterHdrListener()V
    .locals 2

    .line 465
    iget-object v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mRegisteredDisplayToken:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    .line 466
    iget-object v1, p0, Lcom/android/server/display/HighBrightnessModeController;->mHdrListener:Landroid/view/SurfaceControlHdrLayerInfoListener;

    invoke-virtual {v1, v0}, Landroid/view/SurfaceControlHdrLayerInfoListener;->unregister(Landroid/os/IBinder;)V

    .line 467
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsHdrLayerPresent:Z

    .line 469
    :cond_0
    return-void
.end method

.method private updateHbmMode()V
    .locals 2

    .line 433
    invoke-direct {p0}, Lcom/android/server/display/HighBrightnessModeController;->calculateHighBrightnessMode()I

    move-result v0

    .line 434
    .local v0, "newHbmMode":I
    iget v1, p0, Lcom/android/server/display/HighBrightnessModeController;->mHbmMode:I

    if-eq v1, v0, :cond_0

    .line 435
    iput v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mHbmMode:I

    .line 436
    iget-object v1, p0, Lcom/android/server/display/HighBrightnessModeController;->mHbmChangeCallback:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 438
    :cond_0
    return-void
.end method


# virtual methods
.method dump(Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 251
    iget-object v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/HighBrightnessModeController$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/android/server/display/HighBrightnessModeController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/display/HighBrightnessModeController;Ljava/io/PrintWriter;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->runWithScissors(Ljava/lang/Runnable;J)Z

    .line 252
    return-void
.end method

.method getCurrentBrightnessMax()F
    .locals 1

    .line 149
    invoke-direct {p0}, Lcom/android/server/display/HighBrightnessModeController;->deviceSupportsHbm()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/server/display/HighBrightnessModeController;->isCurrentlyAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mHbmData:Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    iget v0, v0, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->transitionPoint:F

    return v0

    .line 153
    :cond_1
    :goto_0
    iget v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mBrightnessMax:F

    return v0
.end method

.method getCurrentBrightnessMin()F
    .locals 1

    .line 145
    iget v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mBrightnessMin:F

    return v0
.end method

.method getHdrBrightnessValue()F
    .locals 5

    .line 171
    invoke-virtual {p0}, Lcom/android/server/display/HighBrightnessModeController;->getCurrentBrightnessMin()F

    move-result v0

    invoke-virtual {p0}, Lcom/android/server/display/HighBrightnessModeController;->getCurrentBrightnessMax()F

    move-result v1

    iget v2, p0, Lcom/android/server/display/HighBrightnessModeController;->mBrightnessMin:F

    iget v3, p0, Lcom/android/server/display/HighBrightnessModeController;->mBrightnessMax:F

    iget v4, p0, Lcom/android/server/display/HighBrightnessModeController;->mBrightness:F

    invoke-static {v0, v1, v2, v3, v4}, Landroid/util/MathUtils;->map(FFFFF)F

    move-result v0

    return v0
.end method

.method getHighBrightnessMode()I
    .locals 1

    .line 218
    iget v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mHbmMode:I

    return v0
.end method

.method getNormalBrightnessMax()F
    .locals 1

    .line 162
    invoke-direct {p0}, Lcom/android/server/display/HighBrightnessModeController;->deviceSupportsHbm()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mHbmData:Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    iget v0, v0, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->transitionPoint:F

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mBrightnessMax:F

    :goto_0
    return v0
.end method

.method public synthetic lambda$dump$0$HighBrightnessModeController(Ljava/io/PrintWriter;)V
    .locals 0
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 251
    invoke-direct {p0, p1}, Lcom/android/server/display/HighBrightnessModeController;->dumpLocal(Ljava/io/PrintWriter;)V

    return-void
.end method

.method onAmbientLuxChange(F)V
    .locals 2
    .param p1, "ambientLux"    # F

    .line 176
    iput p1, p0, Lcom/android/server/display/HighBrightnessModeController;->mAmbientLux:F

    .line 177
    invoke-direct {p0}, Lcom/android/server/display/HighBrightnessModeController;->deviceSupportsHbm()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsAutoBrightnessEnabled:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mHbmData:Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    iget v0, v0, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->minimumLux:F

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 182
    .local v0, "isHighLux":Z
    :goto_0
    iget-boolean v1, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsInAllowedAmbientRange:Z

    if-eq v0, v1, :cond_2

    .line 183
    iput-boolean v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsInAllowedAmbientRange:Z

    .line 184
    invoke-direct {p0}, Lcom/android/server/display/HighBrightnessModeController;->recalculateTimeAllowance()V

    .line 186
    :cond_2
    return-void

    .line 178
    .end local v0    # "isHighLux":Z
    :cond_3
    :goto_1
    return-void
.end method

.method onBrightnessChanged(F)V
    .locals 10
    .param p1, "brightness"    # F

    .line 190
    invoke-direct {p0}, Lcom/android/server/display/HighBrightnessModeController;->deviceSupportsHbm()Z

    move-result v0

    if-nez v0, :cond_0

    .line 191
    return-void

    .line 193
    :cond_0
    iput p1, p0, Lcom/android/server/display/HighBrightnessModeController;->mBrightness:F

    .line 197
    iget-wide v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mRunningStartTimeMillis:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v4

    .line 198
    .local v0, "wasHbmDrainingAvailableTime":Z
    :goto_0
    iget-object v5, p0, Lcom/android/server/display/HighBrightnessModeController;->mHbmData:Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    iget v5, v5, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->transitionPoint:F

    cmpl-float v5, p1, v5

    if-lez v5, :cond_2

    iget-boolean v5, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsHdrLayerPresent:Z

    if-nez v5, :cond_2

    goto :goto_1

    :cond_2
    move v1, v4

    .line 200
    .local v1, "shouldHbmDrainAvailableTime":Z
    :goto_1
    if-eq v0, v1, :cond_4

    .line 201
    iget-object v4, p0, Lcom/android/server/display/HighBrightnessModeController;->mClock:Lcom/android/server/display/DisplayManagerService$Clock;

    invoke-interface {v4}, Lcom/android/server/display/DisplayManagerService$Clock;->uptimeMillis()J

    move-result-wide v4

    .line 202
    .local v4, "currentTime":J
    if-eqz v1, :cond_3

    .line 203
    iput-wide v4, p0, Lcom/android/server/display/HighBrightnessModeController;->mRunningStartTimeMillis:J

    goto :goto_2

    .line 205
    :cond_3
    iget-object v6, p0, Lcom/android/server/display/HighBrightnessModeController;->mEvents:Ljava/util/LinkedList;

    new-instance v7, Lcom/android/server/display/HighBrightnessModeController$HbmEvent;

    iget-wide v8, p0, Lcom/android/server/display/HighBrightnessModeController;->mRunningStartTimeMillis:J

    invoke-direct {v7, v8, v9, v4, v5}, Lcom/android/server/display/HighBrightnessModeController$HbmEvent;-><init>(JJ)V

    invoke-virtual {v6, v7}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 206
    iput-wide v2, p0, Lcom/android/server/display/HighBrightnessModeController;->mRunningStartTimeMillis:J

    .line 214
    .end local v4    # "currentTime":J
    :cond_4
    :goto_2
    invoke-direct {p0}, Lcom/android/server/display/HighBrightnessModeController;->recalculateTimeAllowance()V

    .line 215
    return-void
.end method

.method resetHbmData(IILandroid/os/IBinder;Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;Lcom/android/server/display/BrightnessSetting;)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "displayToken"    # Landroid/os/IBinder;
    .param p4, "hbmData"    # Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;
    .param p5, "brightnessSetting"    # Lcom/android/server/display/BrightnessSetting;

    .line 229
    iput p1, p0, Lcom/android/server/display/HighBrightnessModeController;->mWidth:I

    .line 230
    iput p2, p0, Lcom/android/server/display/HighBrightnessModeController;->mHeight:I

    .line 231
    iput-object p4, p0, Lcom/android/server/display/HighBrightnessModeController;->mHbmData:Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    .line 232
    invoke-direct {p0, p5}, Lcom/android/server/display/HighBrightnessModeController;->resetBrightnessSetting(Lcom/android/server/display/BrightnessSetting;)V

    .line 233
    invoke-direct {p0}, Lcom/android/server/display/HighBrightnessModeController;->unregisterHdrListener()V

    .line 234
    iget-object v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mSkinThermalStatusObserver:Lcom/android/server/display/HighBrightnessModeController$SkinThermalStatusObserver;

    invoke-virtual {v0}, Lcom/android/server/display/HighBrightnessModeController$SkinThermalStatusObserver;->stopObserving()V

    .line 235
    iget-object v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mSettingsObserver:Lcom/android/server/display/HighBrightnessModeController$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/server/display/HighBrightnessModeController$SettingsObserver;->stopObserving()V

    .line 236
    invoke-direct {p0}, Lcom/android/server/display/HighBrightnessModeController;->deviceSupportsHbm()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 237
    invoke-direct {p0, p3}, Lcom/android/server/display/HighBrightnessModeController;->registerHdrListener(Landroid/os/IBinder;)V

    .line 238
    invoke-direct {p0}, Lcom/android/server/display/HighBrightnessModeController;->recalculateTimeAllowance()V

    .line 239
    iget-object v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mHbmData:Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    iget v0, v0, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->thermalStatusLimit:I

    if-lez v0, :cond_0

    .line 240
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsThermalStatusWithinLimit:Z

    .line 241
    iget-object v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mSkinThermalStatusObserver:Lcom/android/server/display/HighBrightnessModeController$SkinThermalStatusObserver;

    invoke-virtual {v0}, Lcom/android/server/display/HighBrightnessModeController$SkinThermalStatusObserver;->startObserving()V

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mHbmData:Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    iget-boolean v0, v0, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->allowInLowPowerMode:Z

    if-nez v0, :cond_1

    .line 244
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsBlockedByLowPowerMode:Z

    .line 245
    iget-object v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mSettingsObserver:Lcom/android/server/display/HighBrightnessModeController$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/server/display/HighBrightnessModeController$SettingsObserver;->startObserving()V

    .line 248
    :cond_1
    return-void
.end method

.method setAutoBrightnessEnabled(Z)V
    .locals 1
    .param p1, "isEnabled"    # Z

    .line 133
    invoke-direct {p0}, Lcom/android/server/display/HighBrightnessModeController;->deviceSupportsHbm()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsAutoBrightnessEnabled:Z

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 139
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsAutoBrightnessEnabled:Z

    .line 140
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsInAllowedAmbientRange:Z

    .line 141
    invoke-direct {p0}, Lcom/android/server/display/HighBrightnessModeController;->recalculateTimeAllowance()V

    .line 142
    return-void

    .line 134
    :cond_1
    :goto_0
    return-void
.end method

.method stop()V
    .locals 1

    .line 222
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/display/HighBrightnessModeController;->registerHdrListener(Landroid/os/IBinder;)V

    .line 223
    iget-object v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mSkinThermalStatusObserver:Lcom/android/server/display/HighBrightnessModeController$SkinThermalStatusObserver;

    invoke-virtual {v0}, Lcom/android/server/display/HighBrightnessModeController$SkinThermalStatusObserver;->stopObserving()V

    .line 224
    iget-object v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mSettingsObserver:Lcom/android/server/display/HighBrightnessModeController$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/server/display/HighBrightnessModeController$SettingsObserver;->stopObserving()V

    .line 225
    return-void
.end method
