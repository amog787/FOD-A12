.class final Lcom/android/server/vibrator/VibrationSettings;
.super Ljava/lang/Object;
.source "VibrationSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/vibrator/VibrationSettings$UidObserver;,
        Lcom/android/server/vibrator/VibrationSettings$UserObserver;,
        Lcom/android/server/vibrator/VibrationSettings$SettingsObserver;,
        Lcom/android/server/vibrator/VibrationSettings$OnVibratorSettingsChanged;
    }
.end annotation


# static fields
.field private static final DOUBLE_CLICK_EFFECT_FALLBACK_TIMINGS:[J

.field private static final TAG:Ljava/lang/String; = "VibrationSettings"


# instance fields
.field private mApplyRampingRinger:Z

.field private mAudioManager:Landroid/media/AudioManager;

.field private final mContext:Landroid/content/Context;

.field private final mFallbackEffects:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/VibrationEffect;",
            ">;"
        }
    .end annotation
.end field

.field private mHapticFeedbackIntensity:I

.field private final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/vibrator/VibrationSettings$OnVibratorSettingsChanged;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private mLowPowerMode:Z

.field private mNotificationIntensity:I

.field private final mRampDownDuration:I

.field private final mRampStepDuration:I

.field private mRingIntensity:I

.field private final mSettingObserver:Lcom/android/server/vibrator/VibrationSettings$SettingsObserver;

.field final mUidObserver:Lcom/android/server/vibrator/VibrationSettings$UidObserver;

.field final mUserReceiver:Lcom/android/server/vibrator/VibrationSettings$UserObserver;

.field private mVibrateInputDevices:Z

.field private mVibrateWhenRinging:Z

.field private mVibrator:Landroid/os/Vibrator;

.field private mZenMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 54
    const/4 v0, 0x4

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/vibrator/VibrationSettings;->DOUBLE_CLICK_EFFECT_FALLBACK_TIMINGS:[J

    return-void

    nop

    :array_0
    .array-data 8
        0x0
        0x1e
        0x64
        0x1e
    .end array-data
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 102
    nop

    .line 103
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e00da

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 105
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e00db

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 102
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/vibrator/VibrationSettings;-><init>(Landroid/content/Context;Landroid/os/Handler;II)V

    .line 107
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;II)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "rampDownDuration"    # I
    .param p4, "rampStepDuration"    # I

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/vibrator/VibrationSettings;->mLock:Ljava/lang/Object;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/vibrator/VibrationSettings;->mListeners:Ljava/util/List;

    .line 112
    iput-object p1, p0, Lcom/android/server/vibrator/VibrationSettings;->mContext:Landroid/content/Context;

    .line 113
    new-instance v0, Lcom/android/server/vibrator/VibrationSettings$SettingsObserver;

    invoke-direct {v0, p0, p2}, Lcom/android/server/vibrator/VibrationSettings$SettingsObserver;-><init>(Lcom/android/server/vibrator/VibrationSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/vibrator/VibrationSettings;->mSettingObserver:Lcom/android/server/vibrator/VibrationSettings$SettingsObserver;

    .line 114
    new-instance v0, Lcom/android/server/vibrator/VibrationSettings$UidObserver;

    invoke-direct {v0, p0}, Lcom/android/server/vibrator/VibrationSettings$UidObserver;-><init>(Lcom/android/server/vibrator/VibrationSettings;)V

    iput-object v0, p0, Lcom/android/server/vibrator/VibrationSettings;->mUidObserver:Lcom/android/server/vibrator/VibrationSettings$UidObserver;

    .line 115
    new-instance v0, Lcom/android/server/vibrator/VibrationSettings$UserObserver;

    invoke-direct {v0, p0}, Lcom/android/server/vibrator/VibrationSettings$UserObserver;-><init>(Lcom/android/server/vibrator/VibrationSettings;)V

    iput-object v0, p0, Lcom/android/server/vibrator/VibrationSettings;->mUserReceiver:Lcom/android/server/vibrator/VibrationSettings$UserObserver;

    .line 118
    iput p3, p0, Lcom/android/server/vibrator/VibrationSettings;->mRampDownDuration:I

    .line 119
    iput p4, p0, Lcom/android/server/vibrator/VibrationSettings;->mRampStepDuration:I

    .line 121
    const v0, 0x107008a

    invoke-direct {p0, v0}, Lcom/android/server/vibrator/VibrationSettings;->createEffectFromResource(I)Landroid/os/VibrationEffect;

    move-result-object v0

    .line 123
    .local v0, "clickEffect":Landroid/os/VibrationEffect;
    sget-object v1, Lcom/android/server/vibrator/VibrationSettings;->DOUBLE_CLICK_EFFECT_FALLBACK_TIMINGS:[J

    const/4 v2, -0x1

    invoke-static {v1, v2}, Landroid/os/VibrationEffect;->createWaveform([JI)Landroid/os/VibrationEffect;

    move-result-object v1

    .line 125
    .local v1, "doubleClickEffect":Landroid/os/VibrationEffect;
    const v2, 0x107005a

    invoke-direct {p0, v2}, Lcom/android/server/vibrator/VibrationSettings;->createEffectFromResource(I)Landroid/os/VibrationEffect;

    move-result-object v2

    .line 127
    .local v2, "heavyClickEffect":Landroid/os/VibrationEffect;
    const v3, 0x1070025

    invoke-direct {p0, v3}, Lcom/android/server/vibrator/VibrationSettings;->createEffectFromResource(I)Landroid/os/VibrationEffect;

    move-result-object v3

    .line 130
    .local v3, "tickEffect":Landroid/os/VibrationEffect;
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    iput-object v4, p0, Lcom/android/server/vibrator/VibrationSettings;->mFallbackEffects:Landroid/util/SparseArray;

    .line 131
    const/4 v5, 0x0

    invoke-virtual {v4, v5, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 132
    const/4 v6, 0x1

    invoke-virtual {v4, v6, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 133
    const/4 v6, 0x2

    invoke-virtual {v4, v6, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 134
    const/4 v7, 0x5

    invoke-virtual {v4, v7, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 135
    nop

    .line 136
    invoke-static {v6, v5}, Landroid/os/VibrationEffect;->get(IZ)Landroid/os/VibrationEffect;

    move-result-object v5

    .line 135
    const/16 v6, 0x15

    invoke-virtual {v4, v6, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 139
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibrationSettings;->updateSettings()V

    .line 140
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/vibrator/VibrationSettings;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/vibrator/VibrationSettings;

    .line 51
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationSettings;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/vibrator/VibrationSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/vibrator/VibrationSettings;

    .line 51
    iget-boolean v0, p0, Lcom/android/server/vibrator/VibrationSettings;->mLowPowerMode:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/server/vibrator/VibrationSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/vibrator/VibrationSettings;
    .param p1, "x1"    # Z

    .line 51
    iput-boolean p1, p0, Lcom/android/server/vibrator/VibrationSettings;->mLowPowerMode:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/vibrator/VibrationSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/vibrator/VibrationSettings;

    .line 51
    invoke-direct {p0}, Lcom/android/server/vibrator/VibrationSettings;->notifyListeners()V

    return-void
.end method

.method private createEffectFromResource(I)Landroid/os/VibrationEffect;
    .locals 2
    .param p1, "resId"    # I

    .line 472
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/server/vibrator/VibrationSettings;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v0

    .line 473
    .local v0, "timings":[J
    invoke-static {v0}, Lcom/android/server/vibrator/VibrationSettings;->createEffectFromTimings([J)Landroid/os/VibrationEffect;

    move-result-object v1

    return-object v1
.end method

.method private static createEffectFromTimings([J)Landroid/os/VibrationEffect;
    .locals 3
    .param p0, "timings"    # [J

    .line 477
    if-eqz p0, :cond_2

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_0

    .line 479
    :cond_0
    array-length v0, p0

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-ne v0, v1, :cond_1

    .line 480
    const/4 v0, 0x0

    aget-wide v0, p0, v0

    invoke-static {v0, v1, v2}, Landroid/os/VibrationEffect;->createOneShot(JI)Landroid/os/VibrationEffect;

    move-result-object v0

    return-object v0

    .line 482
    :cond_1
    invoke-static {p0, v2}, Landroid/os/VibrationEffect;->createWaveform([JI)Landroid/os/VibrationEffect;

    move-result-object v0

    return-object v0

    .line 478
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private getGlobalSetting(Ljava/lang/String;I)I
    .locals 1
    .param p1, "settingName"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .line 462
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getHapticChannelMaxVibrationAmplitude()F
    .locals 2

    .line 451
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationSettings;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 452
    :try_start_0
    iget-object v1, p0, Lcom/android/server/vibrator/VibrationSettings;->mVibrator:Landroid/os/Vibrator;

    if-nez v1, :cond_0

    const/high16 v1, 0x7fc00000    # Float.NaN

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/os/Vibrator;->getHapticChannelMaximumAmplitude()F

    move-result v1

    :goto_0
    monitor-exit v0

    return v1

    .line 453
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static getLongIntArray(Landroid/content/res/Resources;I)[J
    .locals 5
    .param p0, "r"    # Landroid/content/res/Resources;
    .param p1, "resid"    # I

    .line 487
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    .line 488
    .local v0, "ar":[I
    if-nez v0, :cond_0

    .line 489
    const/4 v1, 0x0

    return-object v1

    .line 491
    :cond_0
    array-length v1, v0

    new-array v1, v1, [J

    .line 492
    .local v1, "out":[J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 493
    aget v3, v0, v2

    int-to-long v3, v3

    aput-wide v3, v1, v2

    .line 492
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 495
    .end local v2    # "i":I
    :cond_1
    return-object v1
.end method

.method private getSystemSetting(Ljava/lang/String;I)I
    .locals 2
    .param p1, "settingName"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .line 457
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x2

    invoke-static {v0, p1, p2, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method private static intensityToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "intensity"    # I

    .line 436
    packed-switch p0, :pswitch_data_0

    .line 446
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN INTENSITY "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 444
    :pswitch_0
    const-string v0, "HIGH"

    return-object v0

    .line 442
    :pswitch_1
    const-string v0, "MEDIUM"

    return-object v0

    .line 440
    :pswitch_2
    const-string v0, "LOW"

    return-object v0

    .line 438
    :pswitch_3
    const-string v0, "OFF"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static isAlarm(I)Z
    .locals 1
    .param p0, "usageHint"    # I

    .line 354
    const/16 v0, 0x11

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isClassAlarm(I)Z
    .locals 2
    .param p0, "usageHint"    # I

    .line 358
    and-int/lit8 v0, p0, 0xf

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private static isHapticFeedback(I)Z
    .locals 1
    .param p0, "usageHint"    # I

    .line 350
    const/16 v0, 0x12

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isNotification(I)Z
    .locals 1
    .param p0, "usageHint"    # I

    .line 342
    const/16 v0, 0x31

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isRingtone(I)Z
    .locals 1
    .param p0, "usageHint"    # I

    .line 346
    const/16 v0, 0x21

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private notifyListeners()V
    .locals 3

    .line 427
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationSettings;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 428
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/vibrator/VibrationSettings;->mListeners:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 429
    .local v1, "currentListeners":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/vibrator/VibrationSettings$OnVibratorSettingsChanged;>;"
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 430
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/vibrator/VibrationSettings$OnVibratorSettingsChanged;

    .line 431
    .local v2, "listener":Lcom/android/server/vibrator/VibrationSettings$OnVibratorSettingsChanged;
    invoke-interface {v2}, Lcom/android/server/vibrator/VibrationSettings$OnVibratorSettingsChanged;->onChange()V

    .line 432
    .end local v2    # "listener":Lcom/android/server/vibrator/VibrationSettings$OnVibratorSettingsChanged;
    goto :goto_0

    .line 433
    :cond_0
    return-void

    .line 429
    .end local v1    # "currentListeners":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/vibrator/VibrationSettings$OnVibratorSettingsChanged;>;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private registerSettingsObserver(Landroid/net/Uri;)V
    .locals 4
    .param p1, "settingUri"    # Landroid/net/Uri;

    .line 466
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/vibrator/VibrationSettings;->mSettingObserver:Lcom/android/server/vibrator/VibrationSettings$SettingsObserver;

    const/4 v2, 0x1

    const/4 v3, -0x1

    invoke-virtual {v0, p1, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 469
    return-void
.end method


# virtual methods
.method public addListener(Lcom/android/server/vibrator/VibrationSettings$OnVibratorSettingsChanged;)V
    .locals 2
    .param p1, "listener"    # Lcom/android/server/vibrator/VibrationSettings$OnVibratorSettingsChanged;

    .line 197
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationSettings;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 198
    :try_start_0
    iget-object v1, p0, Lcom/android/server/vibrator/VibrationSettings;->mListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 199
    iget-object v1, p0, Lcom/android/server/vibrator/VibrationSettings;->mListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    :cond_0
    monitor-exit v0

    .line 202
    return-void

    .line 201
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public dumpProto(Landroid/util/proto/ProtoOutputStream;)V
    .locals 4
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;

    .line 409
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationSettings;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 410
    const-wide v1, 0x10500000007L

    :try_start_0
    iget v3, p0, Lcom/android/server/vibrator/VibrationSettings;->mHapticFeedbackIntensity:I

    invoke-virtual {p1, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 412
    const-wide v1, 0x10500000008L

    const/16 v3, 0x12

    .line 413
    invoke-virtual {p0, v3}, Lcom/android/server/vibrator/VibrationSettings;->getDefaultIntensity(I)I

    move-result v3

    .line 412
    invoke-virtual {p1, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 414
    const-wide v1, 0x10500000009L

    iget v3, p0, Lcom/android/server/vibrator/VibrationSettings;->mNotificationIntensity:I

    invoke-virtual {p1, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 416
    const-wide v1, 0x1050000000aL

    const/16 v3, 0x31

    .line 417
    invoke-virtual {p0, v3}, Lcom/android/server/vibrator/VibrationSettings;->getDefaultIntensity(I)I

    move-result v3

    .line 416
    invoke-virtual {p1, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 418
    const-wide v1, 0x1050000000bL

    iget v3, p0, Lcom/android/server/vibrator/VibrationSettings;->mRingIntensity:I

    invoke-virtual {p1, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 420
    const-wide v1, 0x1050000000cL

    const/16 v3, 0x21

    .line 421
    invoke-virtual {p0, v3}, Lcom/android/server/vibrator/VibrationSettings;->getDefaultIntensity(I)I

    move-result v3

    .line 420
    invoke-virtual {p1, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 422
    monitor-exit v0

    .line 423
    return-void

    .line 422
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getCurrentIntensity(I)I
    .locals 2
    .param p1, "usageHint"    # I

    .line 259
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationSettings;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 260
    :try_start_0
    invoke-static {p1}, Lcom/android/server/vibrator/VibrationSettings;->isRingtone(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 261
    iget v1, p0, Lcom/android/server/vibrator/VibrationSettings;->mRingIntensity:I

    monitor-exit v0

    return v1

    .line 262
    :cond_0
    invoke-static {p1}, Lcom/android/server/vibrator/VibrationSettings;->isNotification(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 263
    iget v1, p0, Lcom/android/server/vibrator/VibrationSettings;->mNotificationIntensity:I

    monitor-exit v0

    return v1

    .line 264
    :cond_1
    invoke-static {p1}, Lcom/android/server/vibrator/VibrationSettings;->isHapticFeedback(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 265
    iget v1, p0, Lcom/android/server/vibrator/VibrationSettings;->mHapticFeedbackIntensity:I

    monitor-exit v0

    return v1

    .line 266
    :cond_2
    invoke-static {p1}, Lcom/android/server/vibrator/VibrationSettings;->isAlarm(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 267
    const/4 v1, 0x3

    monitor-exit v0

    return v1

    .line 269
    :cond_3
    const/4 v1, 0x2

    monitor-exit v0

    return v1

    .line 271
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getDefaultIntensity(I)I
    .locals 2
    .param p1, "usageHint"    # I

    .line 235
    invoke-static {p1}, Lcom/android/server/vibrator/VibrationSettings;->isAlarm(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    const/4 v0, 0x3

    return v0

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationSettings;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 239
    :try_start_0
    iget-object v1, p0, Lcom/android/server/vibrator/VibrationSettings;->mVibrator:Landroid/os/Vibrator;

    if-eqz v1, :cond_3

    .line 240
    invoke-static {p1}, Lcom/android/server/vibrator/VibrationSettings;->isRingtone(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 241
    iget-object v1, p0, Lcom/android/server/vibrator/VibrationSettings;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v1}, Landroid/os/Vibrator;->getDefaultRingVibrationIntensity()I

    move-result v1

    monitor-exit v0

    return v1

    .line 242
    :cond_1
    invoke-static {p1}, Lcom/android/server/vibrator/VibrationSettings;->isNotification(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 243
    iget-object v1, p0, Lcom/android/server/vibrator/VibrationSettings;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v1}, Landroid/os/Vibrator;->getDefaultNotificationVibrationIntensity()I

    move-result v1

    monitor-exit v0

    return v1

    .line 244
    :cond_2
    invoke-static {p1}, Lcom/android/server/vibrator/VibrationSettings;->isHapticFeedback(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 245
    iget-object v1, p0, Lcom/android/server/vibrator/VibrationSettings;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v1}, Landroid/os/Vibrator;->getDefaultHapticFeedbackIntensity()I

    move-result v1

    monitor-exit v0

    return v1

    .line 248
    :cond_3
    monitor-exit v0

    .line 249
    const/4 v0, 0x2

    return v0

    .line 248
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getFallbackEffect(I)Landroid/os/VibrationEffect;
    .locals 1
    .param p1, "effectId"    # I

    .line 282
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationSettings;->mFallbackEffects:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/VibrationEffect;

    return-object v0
.end method

.method public getRampDownDuration()I
    .locals 1

    .line 225
    iget v0, p0, Lcom/android/server/vibrator/VibrationSettings;->mRampDownDuration:I

    return v0
.end method

.method public getRampStepDuration()I
    .locals 1

    .line 217
    iget v0, p0, Lcom/android/server/vibrator/VibrationSettings;->mRampStepDuration:I

    return v0
.end method

.method public isInZenMode()Z
    .locals 1

    .line 338
    iget v0, p0, Lcom/android/server/vibrator/VibrationSettings;->mZenMode:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onSystemReady()V
    .locals 5

    .line 143
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationSettings;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 144
    :try_start_0
    iget-object v1, p0, Lcom/android/server/vibrator/VibrationSettings;->mContext:Landroid/content/Context;

    const-class v2, Landroid/os/Vibrator;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    iput-object v1, p0, Lcom/android/server/vibrator/VibrationSettings;->mVibrator:Landroid/os/Vibrator;

    .line 145
    iget-object v1, p0, Lcom/android/server/vibrator/VibrationSettings;->mContext:Landroid/content/Context;

    const-class v2, Landroid/media/AudioManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/server/vibrator/VibrationSettings;->mAudioManager:Landroid/media/AudioManager;

    .line 146
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/vibrator/VibrationSettings;->mUidObserver:Lcom/android/server/vibrator/VibrationSettings$UidObserver;

    const/4 v2, 0x3

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/app/IActivityManager;->registerUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 153
    goto :goto_0

    .line 151
    :catch_0
    move-exception v0

    .line 155
    :goto_0
    const-class v0, Landroid/os/PowerManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManagerInternal;

    .line 156
    .local v0, "pm":Landroid/os/PowerManagerInternal;
    new-instance v1, Lcom/android/server/vibrator/VibrationSettings$1;

    invoke-direct {v1, p0}, Lcom/android/server/vibrator/VibrationSettings$1;-><init>(Lcom/android/server/vibrator/VibrationSettings;)V

    invoke-virtual {v0, v1}, Landroid/os/PowerManagerInternal;->registerLowPowerModeObserver(Landroid/os/PowerManagerInternal$LowPowerModeListener;)V

    .line 176
    iget-object v1, p0, Lcom/android/server/vibrator/VibrationSettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/vibrator/VibrationSettings;->mUserReceiver:Lcom/android/server/vibrator/VibrationSettings$UserObserver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.USER_SWITCHED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 177
    const-string v1, "vibrate_input_devices"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/vibrator/VibrationSettings;->registerSettingsObserver(Landroid/net/Uri;)V

    .line 178
    const-string v1, "vibrate_when_ringing"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/vibrator/VibrationSettings;->registerSettingsObserver(Landroid/net/Uri;)V

    .line 179
    const-string v1, "apply_ramping_ringer"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/vibrator/VibrationSettings;->registerSettingsObserver(Landroid/net/Uri;)V

    .line 180
    const-string v1, "zen_mode"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/vibrator/VibrationSettings;->registerSettingsObserver(Landroid/net/Uri;)V

    .line 181
    const-string v1, "haptic_feedback_intensity"

    .line 182
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 181
    invoke-direct {p0, v1}, Lcom/android/server/vibrator/VibrationSettings;->registerSettingsObserver(Landroid/net/Uri;)V

    .line 183
    const-string v1, "notification_vibration_intensity"

    .line 184
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 183
    invoke-direct {p0, v1}, Lcom/android/server/vibrator/VibrationSettings;->registerSettingsObserver(Landroid/net/Uri;)V

    .line 185
    const-string v1, "ring_vibration_intensity"

    .line 186
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 185
    invoke-direct {p0, v1}, Lcom/android/server/vibrator/VibrationSettings;->registerSettingsObserver(Landroid/net/Uri;)V

    .line 189
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibrationSettings;->updateSettings()V

    .line 190
    return-void

    .line 146
    .end local v0    # "pm":Landroid/os/PowerManagerInternal;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public removeListener(Lcom/android/server/vibrator/VibrationSettings$OnVibratorSettingsChanged;)V
    .locals 2
    .param p1, "listener"    # Lcom/android/server/vibrator/VibrationSettings$OnVibratorSettingsChanged;

    .line 206
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationSettings;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 207
    :try_start_0
    iget-object v1, p0, Lcom/android/server/vibrator/VibrationSettings;->mListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 208
    monitor-exit v0

    .line 209
    return-void

    .line 208
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public shouldVibrateForPowerMode(I)Z
    .locals 1
    .param p1, "usageHint"    # I

    .line 327
    iget-boolean v0, p0, Lcom/android/server/vibrator/VibrationSettings;->mLowPowerMode:Z

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/android/server/vibrator/VibrationSettings;->isRingtone(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/android/server/vibrator/VibrationSettings;->isAlarm(I)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x41

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public shouldVibrateForRingerMode(I)Z
    .locals 5
    .param p1, "usageHint"    # I

    .line 292
    invoke-static {p1}, Lcom/android/server/vibrator/VibrationSettings;->isRingtone(I)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 293
    return v1

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationSettings;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 296
    :try_start_0
    iget-object v2, p0, Lcom/android/server/vibrator/VibrationSettings;->mAudioManager:Landroid/media/AudioManager;

    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 297
    monitor-exit v0

    return v3

    .line 299
    :cond_1
    invoke-virtual {v2}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v2

    .line 300
    .local v2, "ringerMode":I
    iget-boolean v4, p0, Lcom/android/server/vibrator/VibrationSettings;->mVibrateWhenRinging:Z

    if-eqz v4, :cond_3

    .line 301
    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    move v1, v3

    :goto_0
    monitor-exit v0

    return v1

    .line 302
    :cond_3
    iget-boolean v4, p0, Lcom/android/server/vibrator/VibrationSettings;->mApplyRampingRinger:Z

    if-eqz v4, :cond_5

    .line 303
    if-eqz v2, :cond_4

    goto :goto_1

    :cond_4
    move v1, v3

    :goto_1
    monitor-exit v0

    return v1

    .line 305
    :cond_5
    if-ne v2, v1, :cond_6

    goto :goto_2

    :cond_6
    move v1, v3

    :goto_2
    monitor-exit v0

    return v1

    .line 307
    .end local v2    # "ringerMode":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public shouldVibrateForUid(II)Z
    .locals 1
    .param p1, "uid"    # I
    .param p2, "usageHint"    # I

    .line 317
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationSettings;->mUidObserver:Lcom/android/server/vibrator/VibrationSettings$UidObserver;

    invoke-virtual {v0, p1}, Lcom/android/server/vibrator/VibrationSettings$UidObserver;->isUidForeground(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Lcom/android/server/vibrator/VibrationSettings;->isClassAlarm(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public shouldVibrateInputDevices()Z
    .locals 1

    .line 333
    iget-boolean v0, p0, Lcom/android/server/vibrator/VibrationSettings;->mVibrateInputDevices:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 382
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VibrationSettings{mVibrateInputDevices="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/vibrator/VibrationSettings;->mVibrateInputDevices:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mVibrateWhenRinging="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/vibrator/VibrationSettings;->mVibrateWhenRinging:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mApplyRampingRinger="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/vibrator/VibrationSettings;->mApplyRampingRinger:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mLowPowerMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/vibrator/VibrationSettings;->mLowPowerMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mZenMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/vibrator/VibrationSettings;->mZenMode:I

    .line 387
    invoke-static {v1}, Landroid/provider/Settings$Global;->zenModeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mProcStatesCache="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/vibrator/VibrationSettings;->mUidObserver:Lcom/android/server/vibrator/VibrationSettings$UidObserver;

    .line 388
    invoke-static {v1}, Lcom/android/server/vibrator/VibrationSettings$UidObserver;->access$300(Lcom/android/server/vibrator/VibrationSettings$UidObserver;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mHapticChannelMaxVibrationAmplitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    invoke-direct {p0}, Lcom/android/server/vibrator/VibrationSettings;->getHapticChannelMaxVibrationAmplitude()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mRampStepDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/vibrator/VibrationSettings;->mRampStepDuration:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mRampDownDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/vibrator/VibrationSettings;->mRampDownDuration:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mHapticFeedbackIntensity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    const/16 v1, 0x12

    invoke-virtual {p0, v1}, Lcom/android/server/vibrator/VibrationSettings;->getCurrentIntensity(I)I

    move-result v2

    invoke-static {v2}, Lcom/android/server/vibrator/VibrationSettings;->intensityToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mHapticFeedbackDefaultIntensity="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    invoke-virtual {p0, v1}, Lcom/android/server/vibrator/VibrationSettings;->getDefaultIntensity(I)I

    move-result v1

    invoke-static {v1}, Lcom/android/server/vibrator/VibrationSettings;->intensityToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mNotificationIntensity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    const/16 v1, 0x31

    invoke-virtual {p0, v1}, Lcom/android/server/vibrator/VibrationSettings;->getCurrentIntensity(I)I

    move-result v2

    invoke-static {v2}, Lcom/android/server/vibrator/VibrationSettings;->intensityToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mNotificationDefaultIntensity="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    invoke-virtual {p0, v1}, Lcom/android/server/vibrator/VibrationSettings;->getDefaultIntensity(I)I

    move-result v1

    invoke-static {v1}, Lcom/android/server/vibrator/VibrationSettings;->intensityToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mRingIntensity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 401
    const/16 v1, 0x21

    invoke-virtual {p0, v1}, Lcom/android/server/vibrator/VibrationSettings;->getCurrentIntensity(I)I

    move-result v2

    invoke-static {v2}, Lcom/android/server/vibrator/VibrationSettings;->intensityToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mRingDefaultIntensity="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    invoke-virtual {p0, v1}, Lcom/android/server/vibrator/VibrationSettings;->getDefaultIntensity(I)I

    move-result v1

    invoke-static {v1}, Lcom/android/server/vibrator/VibrationSettings;->intensityToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 382
    return-object v0
.end method

.method public updateSettings()V
    .locals 5

    .line 364
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationSettings;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 365
    :try_start_0
    const-string v1, "vibrate_when_ringing"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/server/vibrator/VibrationSettings;->getSystemSetting(Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/server/vibrator/VibrationSettings;->mVibrateWhenRinging:Z

    .line 366
    const-string v1, "apply_ramping_ringer"

    invoke-direct {p0, v1, v2}, Lcom/android/server/vibrator/VibrationSettings;->getGlobalSetting(Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/android/server/vibrator/VibrationSettings;->mApplyRampingRinger:Z

    .line 367
    const-string v1, "haptic_feedback_intensity"

    const/16 v4, 0x12

    .line 368
    invoke-virtual {p0, v4}, Lcom/android/server/vibrator/VibrationSettings;->getDefaultIntensity(I)I

    move-result v4

    .line 367
    invoke-direct {p0, v1, v4}, Lcom/android/server/vibrator/VibrationSettings;->getSystemSetting(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/vibrator/VibrationSettings;->mHapticFeedbackIntensity:I

    .line 369
    const-string v1, "notification_vibration_intensity"

    const/16 v4, 0x31

    .line 371
    invoke-virtual {p0, v4}, Lcom/android/server/vibrator/VibrationSettings;->getDefaultIntensity(I)I

    move-result v4

    .line 369
    invoke-direct {p0, v1, v4}, Lcom/android/server/vibrator/VibrationSettings;->getSystemSetting(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/vibrator/VibrationSettings;->mNotificationIntensity:I

    .line 372
    const-string v1, "ring_vibration_intensity"

    const/16 v4, 0x21

    .line 373
    invoke-virtual {p0, v4}, Lcom/android/server/vibrator/VibrationSettings;->getDefaultIntensity(I)I

    move-result v4

    .line 372
    invoke-direct {p0, v1, v4}, Lcom/android/server/vibrator/VibrationSettings;->getSystemSetting(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/vibrator/VibrationSettings;->mRingIntensity:I

    .line 374
    const-string v1, "vibrate_input_devices"

    invoke-direct {p0, v1, v2}, Lcom/android/server/vibrator/VibrationSettings;->getSystemSetting(Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_2

    goto :goto_2

    :cond_2
    move v3, v2

    :goto_2
    iput-boolean v3, p0, Lcom/android/server/vibrator/VibrationSettings;->mVibrateInputDevices:Z

    .line 375
    const-string v1, "zen_mode"

    invoke-direct {p0, v1, v2}, Lcom/android/server/vibrator/VibrationSettings;->getGlobalSetting(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/vibrator/VibrationSettings;->mZenMode:I

    .line 376
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 377
    invoke-direct {p0}, Lcom/android/server/vibrator/VibrationSettings;->notifyListeners()V

    .line 378
    return-void

    .line 376
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
