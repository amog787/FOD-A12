.class final Lcom/android/server/timezonedetector/EnvironmentImpl;
.super Ljava/lang/Object;
.source "EnvironmentImpl.java"

# interfaces
.implements Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$Environment;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "time_zone_detector"

.field private static final TIMEZONE_PROPERTY:Ljava/lang/String; = "persist.sys.timezone"


# instance fields
.field private mConfigChangeListener:Lcom/android/server/timezonedetector/ConfigurationChangeListener;

.field private final mContext:Landroid/content/Context;

.field private final mCr:Landroid/content/ContentResolver;

.field private final mHandler:Landroid/os/Handler;

.field private final mLocationManager:Landroid/location/LocationManager;

.field private final mServiceConfigAccessor:Lcom/android/server/timezonedetector/ServiceConfigAccessor;

.field private final mUserManager:Landroid/os/UserManager;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/timezonedetector/ServiceConfigAccessor;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "serviceConfigAccessor"    # Lcom/android/server/timezonedetector/ServiceConfigAccessor;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/timezonedetector/EnvironmentImpl;->mContext:Landroid/content/Context;

    .line 69
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, p2

    check-cast v1, Landroid/os/Handler;

    iput-object v1, p0, Lcom/android/server/timezonedetector/EnvironmentImpl;->mHandler:Landroid/os/Handler;

    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/timezonedetector/EnvironmentImpl;->mCr:Landroid/content/ContentResolver;

    .line 71
    const-class v2, Landroid/os/UserManager;

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    iput-object v2, p0, Lcom/android/server/timezonedetector/EnvironmentImpl;->mUserManager:Landroid/os/UserManager;

    .line 72
    const-class v2, Landroid/location/LocationManager;

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/LocationManager;

    iput-object v2, p0, Lcom/android/server/timezonedetector/EnvironmentImpl;->mLocationManager:Landroid/location/LocationManager;

    .line 73
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, p3

    check-cast v2, Lcom/android/server/timezonedetector/ServiceConfigAccessor;

    iput-object v2, p0, Lcom/android/server/timezonedetector/EnvironmentImpl;->mServiceConfigAccessor:Lcom/android/server/timezonedetector/ServiceConfigAccessor;

    .line 79
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 80
    .local v2, "filter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 81
    const-string v3, "android.location.MODE_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 82
    new-instance v3, Lcom/android/server/timezonedetector/EnvironmentImpl$1;

    invoke-direct {v3, p0}, Lcom/android/server/timezonedetector/EnvironmentImpl$1;-><init>(Lcom/android/server/timezonedetector/EnvironmentImpl;)V

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v2, v4, v1}, Landroid/content/Context;->registerReceiverForAllUsers(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 90
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 91
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    nop

    .line 92
    const-string v3, "auto_time_zone"

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    new-instance v4, Lcom/android/server/timezonedetector/EnvironmentImpl$2;

    invoke-direct {v4, p0, v1}, Lcom/android/server/timezonedetector/EnvironmentImpl$2;-><init>(Lcom/android/server/timezonedetector/EnvironmentImpl;Landroid/os/Handler;)V

    .line 91
    const/4 v5, 0x1

    invoke-virtual {v0, v3, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 101
    nop

    .line 102
    const-string v3, "location_time_zone_detection_enabled"

    invoke-static {v3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    new-instance v4, Lcom/android/server/timezonedetector/EnvironmentImpl$3;

    invoke-direct {v4, p0, v1}, Lcom/android/server/timezonedetector/EnvironmentImpl$3;-><init>(Lcom/android/server/timezonedetector/EnvironmentImpl;Landroid/os/Handler;)V

    .line 101
    const/4 v1, -0x1

    invoke-virtual {v0, v3, v5, v4, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 110
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/timezonedetector/EnvironmentImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/timezonedetector/EnvironmentImpl;

    .line 50
    invoke-direct {p0}, Lcom/android/server/timezonedetector/EnvironmentImpl;->handleConfigChangeOnHandlerThread()V

    return-void
.end method

.method private handleConfigChangeOnHandlerThread()V
    .locals 2

    .line 113
    monitor-enter p0

    .line 114
    :try_start_0
    iget-object v0, p0, Lcom/android/server/timezonedetector/EnvironmentImpl;->mConfigChangeListener:Lcom/android/server/timezonedetector/ConfigurationChangeListener;

    if-nez v0, :cond_0

    .line 115
    const-string v0, "time_zone_detector"

    const-string v1, "mConfigChangeListener is unexpectedly null"

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/android/server/timezonedetector/EnvironmentImpl;->mConfigChangeListener:Lcom/android/server/timezonedetector/ConfigurationChangeListener;

    invoke-interface {v0}, Lcom/android/server/timezonedetector/ConfigurationChangeListener;->onChange()V

    .line 118
    monitor-exit p0

    .line 119
    return-void

    .line 118
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private isAutoDetectionEnabled()Z
    .locals 3

    .line 204
    iget-object v0, p0, Lcom/android/server/timezonedetector/EnvironmentImpl;->mCr:Landroid/content/ContentResolver;

    const-string v1, "auto_time_zone"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method private isGeoDetectionEnabled(I)Z
    .locals 4
    .param p1, "userId"    # I

    .line 225
    iget-object v0, p0, Lcom/android/server/timezonedetector/EnvironmentImpl;->mServiceConfigAccessor:Lcom/android/server/timezonedetector/ServiceConfigAccessor;

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/ServiceConfigAccessor;->getGeoDetectionSettingEnabledOverride()Ljava/util/Optional;

    move-result-object v0

    .line 226
    .local v0, "override":Ljava/util/Optional;, "Ljava/util/Optional<Ljava/lang/Boolean;>;"
    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 227
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 230
    :cond_0
    iget-object v1, p0, Lcom/android/server/timezonedetector/EnvironmentImpl;->mServiceConfigAccessor:Lcom/android/server/timezonedetector/ServiceConfigAccessor;

    .line 231
    invoke-virtual {v1}, Lcom/android/server/timezonedetector/ServiceConfigAccessor;->isGeoDetectionEnabledForUsersByDefault()Z

    move-result v1

    .line 232
    .local v1, "geoDetectionEnabledByDefault":Z
    iget-object v2, p0, Lcom/android/server/timezonedetector/EnvironmentImpl;->mCr:Landroid/content/ContentResolver;

    .line 234
    nop

    .line 232
    const-string v3, "location_time_zone_detection_enabled"

    invoke-static {v2, v3, v1, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method private isLocationEnabled(I)Z
    .locals 2
    .param p1, "userId"    # I

    .line 218
    iget-object v0, p0, Lcom/android/server/timezonedetector/EnvironmentImpl;->mLocationManager:Landroid/location/LocationManager;

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isLocationEnabledForUser(Landroid/os/UserHandle;)Z

    move-result v0

    return v0
.end method

.method private isUserConfigAllowed(I)Z
    .locals 3
    .param p1, "userId"    # I

    .line 199
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    .line 200
    .local v0, "userHandle":Landroid/os/UserHandle;
    iget-object v1, p0, Lcom/android/server/timezonedetector/EnvironmentImpl;->mUserManager:Landroid/os/UserManager;

    const-string v2, "no_config_date_time"

    invoke-virtual {v1, v2, v0}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    return v1
.end method

.method private setAutoDetectionEnabledIfRequired(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .line 212
    invoke-direct {p0}, Lcom/android/server/timezonedetector/EnvironmentImpl;->isAutoDetectionEnabled()Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 213
    iget-object v0, p0, Lcom/android/server/timezonedetector/EnvironmentImpl;->mCr:Landroid/content/ContentResolver;

    const-string v1, "auto_time_zone"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 215
    :cond_0
    return-void
.end method

.method private setGeoDetectionEnabledIfRequired(IZ)V
    .locals 2
    .param p1, "userId"    # I
    .param p2, "enabled"    # Z

    .line 239
    invoke-direct {p0, p1}, Lcom/android/server/timezonedetector/EnvironmentImpl;->isGeoDetectionEnabled(I)Z

    move-result v0

    if-eq v0, p2, :cond_0

    .line 240
    iget-object v0, p0, Lcom/android/server/timezonedetector/EnvironmentImpl;->mCr:Landroid/content/ContentResolver;

    .line 241
    nop

    .line 240
    const-string v1, "location_time_zone_detection_enabled"

    invoke-static {v0, v1, p2, p1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 243
    :cond_0
    return-void
.end method


# virtual methods
.method public getConfigurationInternal(I)Lcom/android/server/timezonedetector/ConfigurationInternal;
    .locals 2
    .param p1, "userId"    # I

    .line 130
    new-instance v0, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;

    invoke-direct {v0, p1}, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;-><init>(I)V

    iget-object v1, p0, Lcom/android/server/timezonedetector/EnvironmentImpl;->mServiceConfigAccessor:Lcom/android/server/timezonedetector/ServiceConfigAccessor;

    .line 132
    invoke-virtual {v1}, Lcom/android/server/timezonedetector/ServiceConfigAccessor;->isTelephonyTimeZoneDetectionFeatureSupported()Z

    move-result v1

    .line 131
    invoke-virtual {v0, v1}, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->setTelephonyDetectionFeatureSupported(Z)Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/timezonedetector/EnvironmentImpl;->mServiceConfigAccessor:Lcom/android/server/timezonedetector/ServiceConfigAccessor;

    .line 134
    invoke-virtual {v1}, Lcom/android/server/timezonedetector/ServiceConfigAccessor;->isGeoTimeZoneDetectionFeatureSupported()Z

    move-result v1

    .line 133
    invoke-virtual {v0, v1}, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->setGeoDetectionFeatureSupported(Z)Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;

    move-result-object v0

    .line 135
    invoke-direct {p0}, Lcom/android/server/timezonedetector/EnvironmentImpl;->isAutoDetectionEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->setAutoDetectionEnabled(Z)Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;

    move-result-object v0

    .line 136
    invoke-direct {p0, p1}, Lcom/android/server/timezonedetector/EnvironmentImpl;->isUserConfigAllowed(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->setUserConfigAllowed(Z)Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;

    move-result-object v0

    .line 137
    invoke-direct {p0, p1}, Lcom/android/server/timezonedetector/EnvironmentImpl;->isLocationEnabled(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->setLocationEnabled(Z)Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;

    move-result-object v0

    .line 138
    invoke-direct {p0, p1}, Lcom/android/server/timezonedetector/EnvironmentImpl;->isGeoDetectionEnabled(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->setGeoDetectionEnabled(Z)Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;

    move-result-object v0

    .line 139
    invoke-virtual {v0}, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->build()Lcom/android/server/timezonedetector/ConfigurationInternal;

    move-result-object v0

    .line 130
    return-object v0
.end method

.method public getCurrentUserId()I
    .locals 1

    .line 144
    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->getCurrentUserId()I

    move-result v0

    return v0
.end method

.method public getDeviceTimeZone()Ljava/lang/String;
    .locals 1

    .line 162
    const-string v0, "persist.sys.timezone"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isDeviceTimeZoneInitialized()Z
    .locals 2

    .line 155
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/EnvironmentImpl;->getDeviceTimeZone()Ljava/lang/String;

    move-result-object v0

    .line 156
    .local v0, "timeZoneId":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const-string v1, "GMT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public setConfigChangeListener(Lcom/android/server/timezonedetector/ConfigurationChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/server/timezonedetector/ConfigurationChangeListener;

    .line 123
    monitor-enter p0

    .line 124
    :try_start_0
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Lcom/android/server/timezonedetector/ConfigurationChangeListener;

    iput-object v0, p0, Lcom/android/server/timezonedetector/EnvironmentImpl;->mConfigChangeListener:Lcom/android/server/timezonedetector/ConfigurationChangeListener;

    .line 125
    monitor-exit p0

    .line 126
    return-void

    .line 125
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setDeviceTimeZone(Ljava/lang/String;)V
    .locals 2
    .param p1, "zoneId"    # Ljava/lang/String;

    .line 167
    iget-object v0, p0, Lcom/android/server/timezonedetector/EnvironmentImpl;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/AlarmManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 168
    .local v0, "alarmManager":Landroid/app/AlarmManager;
    invoke-virtual {v0, p1}, Landroid/app/AlarmManager;->setTimeZone(Ljava/lang/String;)V

    .line 169
    return-void
.end method

.method public storeConfiguration(ILandroid/app/time/TimeZoneConfiguration;)V
    .locals 2
    .param p1, "userId"    # I
    .param p2, "configuration"    # Landroid/app/time/TimeZoneConfiguration;

    .line 173
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    iget-object v0, p0, Lcom/android/server/timezonedetector/EnvironmentImpl;->mServiceConfigAccessor:Lcom/android/server/timezonedetector/ServiceConfigAccessor;

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/ServiceConfigAccessor;->isAutoDetectionFeatureSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    invoke-virtual {p2}, Landroid/app/time/TimeZoneConfiguration;->isAutoDetectionEnabled()Z

    move-result v0

    .line 181
    .local v0, "autoDetectionEnabled":Z
    invoke-direct {p0, v0}, Lcom/android/server/timezonedetector/EnvironmentImpl;->setAutoDetectionEnabledIfRequired(Z)V

    .line 190
    iget-object v1, p0, Lcom/android/server/timezonedetector/EnvironmentImpl;->mServiceConfigAccessor:Lcom/android/server/timezonedetector/ServiceConfigAccessor;

    invoke-virtual {v1}, Lcom/android/server/timezonedetector/ServiceConfigAccessor;->getGeoDetectionSettingEnabledOverride()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/timezonedetector/EnvironmentImpl;->mServiceConfigAccessor:Lcom/android/server/timezonedetector/ServiceConfigAccessor;

    .line 191
    invoke-virtual {v1}, Lcom/android/server/timezonedetector/ServiceConfigAccessor;->isGeoTimeZoneDetectionFeatureSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 192
    invoke-virtual {p2}, Landroid/app/time/TimeZoneConfiguration;->isGeoDetectionEnabled()Z

    move-result v1

    .line 193
    .local v1, "geoTzDetectionEnabled":Z
    invoke-direct {p0, p1, v1}, Lcom/android/server/timezonedetector/EnvironmentImpl;->setGeoDetectionEnabledIfRequired(IZ)V

    .line 196
    .end local v0    # "autoDetectionEnabled":Z
    .end local v1    # "geoTzDetectionEnabled":Z
    :cond_0
    return-void
.end method
