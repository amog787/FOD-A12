.class public final Lcom/android/server/timezonedetector/ServiceConfigAccessor;
.super Ljava/lang/Object;
.source "ServiceConfigAccessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/timezonedetector/ServiceConfigAccessor$ProviderMode;
    }
.end annotation


# static fields
.field private static final DEFAULT_PROVIDER_INITIALIZATION_TIMEOUT:Ljava/time/Duration;

.field private static final DEFAULT_PROVIDER_INITIALIZATION_TIMEOUT_FUZZ:Ljava/time/Duration;

.field private static final DEFAULT_PROVIDER_UNCERTAINTY_DELAY:Ljava/time/Duration;

.field public static final PROVIDER_MODE_DISABLED:Ljava/lang/String; = "disabled"

.field public static final PROVIDER_MODE_ENABLED:Ljava/lang/String; = "enabled"

.field public static final PROVIDER_MODE_SIMULATED:Ljava/lang/String; = "simulated"

.field private static final SERVER_FLAGS_KEYS_TO_WATCH:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final SLOCK:Ljava/lang/Object;

.field private static sInstance:Lcom/android/server/timezonedetector/ServiceConfigAccessor;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mGeoDetectionFeatureSupportedInConfig:Z

.field private final mServerFlags:Lcom/android/server/timedetector/ServerFlags;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 77
    new-instance v0, Landroid/util/ArraySet;

    const-string v1, "location_time_zone_detection_feature_supported"

    const-string v2, "location_time_zone_detection_setting_enabled_default"

    const-string v3, "location_time_zone_detection_setting_enabled_override"

    const-string v4, "primary_location_time_zone_provider_mode_override"

    const-string v5, "secondary_location_time_zone_provider_mode_override"

    const-string v6, "ltpz_init_timeout_millis"

    const-string v7, "ltpz_init_timeout_fuzz_millis"

    const-string v8, "location_time_zone_detection_uncertainty_delay_millis"

    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>([Ljava/lang/Object;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/android/server/timezonedetector/ServiceConfigAccessor;->SERVER_FLAGS_KEYS_TO_WATCH:Ljava/util/Set;

    .line 90
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/time/Duration;->ofMinutes(J)Ljava/time/Duration;

    move-result-object v0

    sput-object v0, Lcom/android/server/timezonedetector/ServiceConfigAccessor;->DEFAULT_PROVIDER_INITIALIZATION_TIMEOUT:Ljava/time/Duration;

    .line 92
    nop

    .line 93
    const-wide/16 v0, 0x14

    invoke-static {v0, v1}, Ljava/time/Duration;->ofSeconds(J)Ljava/time/Duration;

    move-result-object v0

    sput-object v0, Lcom/android/server/timezonedetector/ServiceConfigAccessor;->DEFAULT_PROVIDER_INITIALIZATION_TIMEOUT_FUZZ:Ljava/time/Duration;

    .line 94
    const-wide/16 v0, 0x5

    invoke-static {v0, v1}, Ljava/time/Duration;->ofMinutes(J)Ljava/time/Duration;

    move-result-object v0

    sput-object v0, Lcom/android/server/timezonedetector/ServiceConfigAccessor;->DEFAULT_PROVIDER_UNCERTAINTY_DELAY:Ljava/time/Duration;

    .line 96
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/timezonedetector/ServiceConfigAccessor;->SLOCK:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessor;->mContext:Landroid/content/Context;

    .line 121
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x11100d0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 123
    const-string v1, "persist.sys.location_time_zone_detection_feature_supported"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v2, 0x1

    :cond_1
    iput-boolean v2, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessor;->mGeoDetectionFeatureSupportedInConfig:Z

    .line 126
    invoke-static {v0}, Lcom/android/server/timedetector/ServerFlags;->getInstance(Landroid/content/Context;)Lcom/android/server/timedetector/ServerFlags;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessor;->mServerFlags:Lcom/android/server/timedetector/ServerFlags;

    .line 127
    return-void
.end method

.method private atLeastOneProviderIsEnabled()Z
    .locals 2

    .line 189
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/ServiceConfigAccessor;->getPrimaryLocationTimeZoneProviderMode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "disabled"

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 190
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/ServiceConfigAccessor;->getSecondaryLocationTimeZoneProviderMode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 189
    :goto_1
    return v0
.end method

.method private getConfigBoolean(I)Z
    .locals 2
    .param p1, "providerEnabledConfigId"    # I

    .line 304
    iget-object v0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 305
    .local v0, "resources":Landroid/content/res/Resources;
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    return v1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/timezonedetector/ServiceConfigAccessor;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 131
    sget-object v0, Lcom/android/server/timezonedetector/ServiceConfigAccessor;->SLOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 132
    :try_start_0
    sget-object v1, Lcom/android/server/timezonedetector/ServiceConfigAccessor;->sInstance:Lcom/android/server/timezonedetector/ServiceConfigAccessor;

    if-nez v1, :cond_0

    .line 133
    new-instance v1, Lcom/android/server/timezonedetector/ServiceConfigAccessor;

    invoke-direct {v1, p0}, Lcom/android/server/timezonedetector/ServiceConfigAccessor;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/server/timezonedetector/ServiceConfigAccessor;->sInstance:Lcom/android/server/timezonedetector/ServiceConfigAccessor;

    .line 135
    :cond_0
    sget-object v1, Lcom/android/server/timezonedetector/ServiceConfigAccessor;->sInstance:Lcom/android/server/timezonedetector/ServiceConfigAccessor;

    monitor-exit v0

    return-object v1

    .line 136
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getPrimaryLocationTimeZoneProviderModeFromConfig()Ljava/lang/String;
    .locals 2

    .line 229
    const v0, 0x11100d9

    .line 230
    .local v0, "providerEnabledConfigId":I
    invoke-direct {p0, v0}, Lcom/android/server/timezonedetector/ServiceConfigAccessor;->getConfigBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 231
    const-string v1, "enabled"

    goto :goto_0

    :cond_0
    const-string v1, "disabled"

    .line 230
    :goto_0
    return-object v1
.end method

.method private getSecondaryLocationTimeZoneProviderModeFromConfig()Ljava/lang/String;
    .locals 2

    .line 245
    const v0, 0x11100db

    .line 246
    .local v0, "providerEnabledConfigId":I
    invoke-direct {p0, v0}, Lcom/android/server/timezonedetector/ServiceConfigAccessor;->getConfigBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 247
    const-string v1, "enabled"

    goto :goto_0

    :cond_0
    const-string v1, "disabled"

    .line 246
    :goto_0
    return-object v1
.end method

.method private isGeoTimeZoneDetectionFeatureSupportedInternal()Z
    .locals 4

    .line 199
    const/4 v0, 0x1

    .line 200
    .local v0, "defaultEnabled":Z
    iget-object v1, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessor;->mServerFlags:Lcom/android/server/timedetector/ServerFlags;

    const-string v2, "location_time_zone_detection_feature_supported"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/server/timedetector/ServerFlags;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method


# virtual methods
.method public addListener(Lcom/android/server/timezonedetector/ConfigurationChangeListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/android/server/timezonedetector/ConfigurationChangeListener;

    .line 147
    iget-object v0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessor;->mServerFlags:Lcom/android/server/timedetector/ServerFlags;

    sget-object v1, Lcom/android/server/timezonedetector/ServiceConfigAccessor;->SERVER_FLAGS_KEYS_TO_WATCH:Ljava/util/Set;

    invoke-virtual {v0, p1, v1}, Lcom/android/server/timedetector/ServerFlags;->addListener(Lcom/android/server/timezonedetector/ConfigurationChangeListener;Ljava/util/Set;)V

    .line 148
    return-void
.end method

.method public getGeoDetectionSettingEnabledOverride()Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 266
    iget-object v0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessor;->mServerFlags:Lcom/android/server/timedetector/ServerFlags;

    const-string v1, "location_time_zone_detection_setting_enabled_override"

    invoke-virtual {v0, v1}, Lcom/android/server/timedetector/ServerFlags;->getOptionalBoolean(Ljava/lang/String;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public getLocationTimeZoneProviderInitializationTimeout()Ljava/time/Duration;
    .locals 3

    .line 276
    iget-object v0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessor;->mServerFlags:Lcom/android/server/timedetector/ServerFlags;

    sget-object v1, Lcom/android/server/timezonedetector/ServiceConfigAccessor;->DEFAULT_PROVIDER_INITIALIZATION_TIMEOUT:Ljava/time/Duration;

    const-string v2, "ltpz_init_timeout_millis"

    invoke-virtual {v0, v2, v1}, Lcom/android/server/timedetector/ServerFlags;->getDurationFromMillis(Ljava/lang/String;Ljava/time/Duration;)Ljava/time/Duration;

    move-result-object v0

    return-object v0
.end method

.method public getLocationTimeZoneProviderInitializationTimeoutFuzz()Ljava/time/Duration;
    .locals 3

    .line 287
    iget-object v0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessor;->mServerFlags:Lcom/android/server/timedetector/ServerFlags;

    sget-object v1, Lcom/android/server/timezonedetector/ServiceConfigAccessor;->DEFAULT_PROVIDER_INITIALIZATION_TIMEOUT_FUZZ:Ljava/time/Duration;

    const-string v2, "ltpz_init_timeout_fuzz_millis"

    invoke-virtual {v0, v2, v1}, Lcom/android/server/timedetector/ServerFlags;->getDurationFromMillis(Ljava/lang/String;Ljava/time/Duration;)Ljava/time/Duration;

    move-result-object v0

    return-object v0
.end method

.method public getLocationTimeZoneUncertaintyDelay()Ljava/time/Duration;
    .locals 3

    .line 298
    iget-object v0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessor;->mServerFlags:Lcom/android/server/timedetector/ServerFlags;

    sget-object v1, Lcom/android/server/timezonedetector/ServiceConfigAccessor;->DEFAULT_PROVIDER_UNCERTAINTY_DELAY:Ljava/time/Duration;

    const-string v2, "location_time_zone_detection_uncertainty_delay_millis"

    invoke-virtual {v0, v2, v1}, Lcom/android/server/timedetector/ServerFlags;->getDurationFromMillis(Ljava/lang/String;Ljava/time/Duration;)Ljava/time/Duration;

    move-result-object v0

    return-object v0
.end method

.method public getPrimaryLocationTimeZoneProviderMode()Ljava/lang/String;
    .locals 2

    .line 222
    iget-object v0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessor;->mServerFlags:Lcom/android/server/timedetector/ServerFlags;

    const-string v1, "primary_location_time_zone_provider_mode_override"

    invoke-virtual {v0, v1}, Lcom/android/server/timedetector/ServerFlags;->getOptionalString(Ljava/lang/String;)Ljava/util/Optional;

    move-result-object v0

    .line 224
    invoke-direct {p0}, Lcom/android/server/timezonedetector/ServiceConfigAccessor;->getPrimaryLocationTimeZoneProviderModeFromConfig()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 222
    return-object v0
.end method

.method public getPrimaryLocationTimeZoneProviderPackageName()Ljava/lang/String;
    .locals 2

    .line 207
    iget-object v0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x104026a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSecondaryLocationTimeZoneProviderMode()Ljava/lang/String;
    .locals 2

    .line 238
    iget-object v0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessor;->mServerFlags:Lcom/android/server/timedetector/ServerFlags;

    const-string v1, "secondary_location_time_zone_provider_mode_override"

    invoke-virtual {v0, v1}, Lcom/android/server/timedetector/ServerFlags;->getOptionalString(Ljava/lang/String;)Ljava/util/Optional;

    move-result-object v0

    .line 240
    invoke-direct {p0}, Lcom/android/server/timezonedetector/ServiceConfigAccessor;->getSecondaryLocationTimeZoneProviderModeFromConfig()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 238
    return-object v0
.end method

.method public getSecondaryLocationTimeZoneProviderPackageName()Ljava/lang/String;
    .locals 2

    .line 213
    iget-object v0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040278

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isAutoDetectionFeatureSupported()Z
    .locals 1

    .line 152
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/ServiceConfigAccessor;->isTelephonyTimeZoneDetectionFeatureSupported()Z

    move-result v0

    if-nez v0, :cond_1

    .line 153
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/ServiceConfigAccessor;->isGeoTimeZoneDetectionFeatureSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 152
    :goto_1
    return v0
.end method

.method public isGeoDetectionEnabledForUsersByDefault()Z
    .locals 3

    .line 256
    iget-object v0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessor;->mServerFlags:Lcom/android/server/timedetector/ServerFlags;

    const-string v1, "location_time_zone_detection_setting_enabled_default"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/timedetector/ServerFlags;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isGeoTimeZoneDetectionFeatureSupported()Z
    .locals 1

    .line 183
    iget-boolean v0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessor;->mGeoDetectionFeatureSupportedInConfig:Z

    if-eqz v0, :cond_0

    .line 184
    invoke-direct {p0}, Lcom/android/server/timezonedetector/ServiceConfigAccessor;->isGeoTimeZoneDetectionFeatureSupportedInternal()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    invoke-direct {p0}, Lcom/android/server/timezonedetector/ServiceConfigAccessor;->atLeastOneProviderIsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 183
    :goto_0
    return v0
.end method

.method public isGeoTimeZoneDetectionFeatureSupportedInConfig()Z
    .locals 1

    .line 171
    iget-boolean v0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessor;->mGeoDetectionFeatureSupportedInConfig:Z

    return v0
.end method

.method public isTelephonyTimeZoneDetectionFeatureSupported()Z
    .locals 2

    .line 161
    iget-object v0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.telephony"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
