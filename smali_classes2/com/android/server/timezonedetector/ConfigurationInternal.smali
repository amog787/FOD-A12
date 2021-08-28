.class public final Lcom/android/server/timezonedetector/ConfigurationInternal;
.super Ljava/lang/Object;
.source "ConfigurationInternal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;
    }
.end annotation


# instance fields
.field private final mAutoDetectionEnabled:Z

.field private final mGeoDetectionEnabled:Z

.field private final mGeoDetectionSupported:Z

.field private final mLocationEnabled:Z

.field private final mTelephonyDetectionSupported:Z

.field private final mUserConfigAllowed:Z

.field private final mUserId:I


# direct methods
.method private constructor <init>(Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-static {p1}, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->access$000(Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mTelephonyDetectionSupported:Z

    .line 50
    invoke-static {p1}, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->access$100(Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mGeoDetectionSupported:Z

    .line 51
    invoke-static {p1}, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->access$200(Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mAutoDetectionEnabled:Z

    .line 53
    invoke-static {p1}, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->access$300(Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mUserId:I

    .line 54
    invoke-static {p1}, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->access$400(Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mUserConfigAllowed:Z

    .line 55
    invoke-static {p1}, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->access$500(Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mLocationEnabled:Z

    .line 56
    invoke-static {p1}, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->access$600(Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mGeoDetectionEnabled:Z

    .line 57
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;Lcom/android/server/timezonedetector/ConfigurationInternal$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;
    .param p2, "x1"    # Lcom/android/server/timezonedetector/ConfigurationInternal$1;

    .line 38
    invoke-direct {p0, p1}, Lcom/android/server/timezonedetector/ConfigurationInternal;-><init>(Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/timezonedetector/ConfigurationInternal;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/timezonedetector/ConfigurationInternal;

    .line 38
    iget-boolean v0, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mGeoDetectionSupported:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/timezonedetector/ConfigurationInternal;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/timezonedetector/ConfigurationInternal;

    .line 38
    iget-boolean v0, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mAutoDetectionEnabled:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/android/server/timezonedetector/ConfigurationInternal;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/timezonedetector/ConfigurationInternal;

    .line 38
    iget-boolean v0, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mLocationEnabled:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/android/server/timezonedetector/ConfigurationInternal;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/timezonedetector/ConfigurationInternal;

    .line 38
    iget-boolean v0, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mGeoDetectionEnabled:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/timezonedetector/ConfigurationInternal;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/timezonedetector/ConfigurationInternal;

    .line 38
    iget v0, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mUserId:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/timezonedetector/ConfigurationInternal;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/timezonedetector/ConfigurationInternal;

    .line 38
    iget-boolean v0, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mUserConfigAllowed:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/timezonedetector/ConfigurationInternal;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/timezonedetector/ConfigurationInternal;

    .line 38
    iget-boolean v0, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mTelephonyDetectionSupported:Z

    return v0
.end method

.method private asCapabilities()Landroid/app/time/TimeZoneCapabilities;
    .locals 9

    .line 131
    iget v0, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mUserId:I

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    .line 132
    .local v0, "userHandle":Landroid/os/UserHandle;
    new-instance v1, Landroid/app/time/TimeZoneCapabilities$Builder;

    invoke-direct {v1, v0}, Landroid/app/time/TimeZoneCapabilities$Builder;-><init>(Landroid/os/UserHandle;)V

    .line 134
    .local v1, "builder":Landroid/app/time/TimeZoneCapabilities$Builder;
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/ConfigurationInternal;->isUserConfigAllowed()Z

    move-result v2

    .line 138
    .local v2, "allowConfigDateTime":Z
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/ConfigurationInternal;->isAutoDetectionSupported()Z

    move-result v3

    .line 141
    .local v3, "deviceHasAutoTimeZoneDetection":Z
    if-nez v3, :cond_0

    .line 142
    const/16 v4, 0xa

    .local v4, "configureAutoDetectionEnabledCapability":I
    goto :goto_0

    .line 143
    .end local v4    # "configureAutoDetectionEnabledCapability":I
    :cond_0
    if-nez v2, :cond_1

    .line 144
    const/16 v4, 0x14

    .restart local v4    # "configureAutoDetectionEnabledCapability":I
    goto :goto_0

    .line 146
    .end local v4    # "configureAutoDetectionEnabledCapability":I
    :cond_1
    const/16 v4, 0x28

    .line 148
    .restart local v4    # "configureAutoDetectionEnabledCapability":I
    :goto_0
    invoke-virtual {v1, v4}, Landroid/app/time/TimeZoneCapabilities$Builder;->setConfigureAutoDetectionEnabledCapability(I)Landroid/app/time/TimeZoneCapabilities$Builder;

    .line 150
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/ConfigurationInternal;->isGeoDetectionSupported()Z

    move-result v5

    .line 155
    .local v5, "deviceHasLocationTimeZoneDetection":Z
    if-nez v5, :cond_2

    .line 156
    const/16 v6, 0xa

    .local v6, "configureGeolocationDetectionEnabledCapability":I
    goto :goto_2

    .line 157
    .end local v6    # "configureGeolocationDetectionEnabledCapability":I
    :cond_2
    iget-boolean v6, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mAutoDetectionEnabled:Z

    if-eqz v6, :cond_4

    invoke-virtual {p0}, Lcom/android/server/timezonedetector/ConfigurationInternal;->isLocationEnabled()Z

    move-result v6

    if-nez v6, :cond_3

    goto :goto_1

    .line 160
    :cond_3
    const/16 v6, 0x28

    .restart local v6    # "configureGeolocationDetectionEnabledCapability":I
    goto :goto_2

    .line 158
    .end local v6    # "configureGeolocationDetectionEnabledCapability":I
    :cond_4
    :goto_1
    const/16 v6, 0x1e

    .line 162
    .restart local v6    # "configureGeolocationDetectionEnabledCapability":I
    :goto_2
    invoke-virtual {v1, v6}, Landroid/app/time/TimeZoneCapabilities$Builder;->setConfigureGeoDetectionEnabledCapability(I)Landroid/app/time/TimeZoneCapabilities$Builder;

    .line 170
    if-nez v2, :cond_5

    .line 171
    const/16 v7, 0x14

    .local v7, "suggestManualTimeZoneCapability":I
    goto :goto_3

    .line 172
    .end local v7    # "suggestManualTimeZoneCapability":I
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/ConfigurationInternal;->getAutoDetectionEnabledBehavior()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 173
    const/16 v7, 0x1e

    .restart local v7    # "suggestManualTimeZoneCapability":I
    goto :goto_3

    .line 175
    .end local v7    # "suggestManualTimeZoneCapability":I
    :cond_6
    const/16 v7, 0x28

    .line 177
    .restart local v7    # "suggestManualTimeZoneCapability":I
    :goto_3
    invoke-virtual {v1, v7}, Landroid/app/time/TimeZoneCapabilities$Builder;->setSuggestManualTimeZoneCapability(I)Landroid/app/time/TimeZoneCapabilities$Builder;

    .line 179
    invoke-virtual {v1}, Landroid/app/time/TimeZoneCapabilities$Builder;->build()Landroid/app/time/TimeZoneCapabilities;

    move-result-object v8

    return-object v8
.end method

.method private asConfiguration()Landroid/app/time/TimeZoneConfiguration;
    .locals 2

    .line 184
    new-instance v0, Landroid/app/time/TimeZoneConfiguration$Builder;

    invoke-direct {v0}, Landroid/app/time/TimeZoneConfiguration$Builder;-><init>()V

    .line 185
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/ConfigurationInternal;->getAutoDetectionEnabledSetting()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/time/TimeZoneConfiguration$Builder;->setAutoDetectionEnabled(Z)Landroid/app/time/TimeZoneConfiguration$Builder;

    move-result-object v0

    .line 186
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/ConfigurationInternal;->getGeoDetectionEnabledSetting()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/time/TimeZoneConfiguration$Builder;->setGeoDetectionEnabled(Z)Landroid/app/time/TimeZoneConfiguration$Builder;

    move-result-object v0

    .line 187
    invoke-virtual {v0}, Landroid/app/time/TimeZoneConfiguration$Builder;->build()Landroid/app/time/TimeZoneConfiguration;

    move-result-object v0

    .line 184
    return-object v0
.end method


# virtual methods
.method public createCapabilitiesAndConfig()Landroid/app/time/TimeZoneCapabilitiesAndConfig;
    .locals 3

    .line 126
    new-instance v0, Landroid/app/time/TimeZoneCapabilitiesAndConfig;

    invoke-direct {p0}, Lcom/android/server/timezonedetector/ConfigurationInternal;->asCapabilities()Landroid/app/time/TimeZoneCapabilities;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/server/timezonedetector/ConfigurationInternal;->asConfiguration()Landroid/app/time/TimeZoneConfiguration;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/app/time/TimeZoneCapabilitiesAndConfig;-><init>(Landroid/app/time/TimeZoneCapabilities;Landroid/app/time/TimeZoneConfiguration;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 208
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 209
    return v0

    .line 211
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 214
    :cond_1
    move-object v2, p1

    check-cast v2, Lcom/android/server/timezonedetector/ConfigurationInternal;

    .line 215
    .local v2, "that":Lcom/android/server/timezonedetector/ConfigurationInternal;
    iget v3, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mUserId:I

    iget v4, v2, Lcom/android/server/timezonedetector/ConfigurationInternal;->mUserId:I

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mUserConfigAllowed:Z

    iget-boolean v4, v2, Lcom/android/server/timezonedetector/ConfigurationInternal;->mUserConfigAllowed:Z

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mTelephonyDetectionSupported:Z

    iget-boolean v4, v2, Lcom/android/server/timezonedetector/ConfigurationInternal;->mTelephonyDetectionSupported:Z

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mGeoDetectionSupported:Z

    iget-boolean v4, v2, Lcom/android/server/timezonedetector/ConfigurationInternal;->mGeoDetectionSupported:Z

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mAutoDetectionEnabled:Z

    iget-boolean v4, v2, Lcom/android/server/timezonedetector/ConfigurationInternal;->mAutoDetectionEnabled:Z

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mLocationEnabled:Z

    iget-boolean v4, v2, Lcom/android/server/timezonedetector/ConfigurationInternal;->mLocationEnabled:Z

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mGeoDetectionEnabled:Z

    iget-boolean v4, v2, Lcom/android/server/timezonedetector/ConfigurationInternal;->mGeoDetectionEnabled:Z

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    .line 212
    .end local v2    # "that":Lcom/android/server/timezonedetector/ConfigurationInternal;
    :cond_3
    :goto_1
    return v1
.end method

.method public getAutoDetectionEnabledBehavior()Z
    .locals 1

    .line 84
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/ConfigurationInternal;->isAutoDetectionSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mAutoDetectionEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getAutoDetectionEnabledSetting()Z
    .locals 1

    .line 76
    iget-boolean v0, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mAutoDetectionEnabled:Z

    return v0
.end method

.method public getGeoDetectionEnabledBehavior()Z
    .locals 1

    .line 118
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/ConfigurationInternal;->getAutoDetectionEnabledBehavior()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/ConfigurationInternal;->isGeoDetectionSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/ConfigurationInternal;->isLocationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/ConfigurationInternal;->getGeoDetectionEnabledSetting()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 118
    :goto_0
    return v0
.end method

.method public getGeoDetectionEnabledSetting()Z
    .locals 1

    .line 110
    iget-boolean v0, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mGeoDetectionEnabled:Z

    return v0
.end method

.method public getUserHandle()Landroid/os/UserHandle;
    .locals 1

    .line 95
    iget v0, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mUserId:I

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    return-object v0
.end method

.method public getUserId()I
    .locals 1

    .line 89
    iget v0, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mUserId:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 226
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mUserId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mUserConfigAllowed:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mTelephonyDetectionSupported:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mGeoDetectionSupported:Z

    .line 227
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mAutoDetectionEnabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mLocationEnabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mGeoDetectionEnabled:Z

    .line 228
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 226
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isAutoDetectionSupported()Z
    .locals 1

    .line 61
    iget-boolean v0, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mTelephonyDetectionSupported:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mGeoDetectionSupported:Z

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

.method public isGeoDetectionSupported()Z
    .locals 1

    .line 71
    iget-boolean v0, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mGeoDetectionSupported:Z

    return v0
.end method

.method public isLocationEnabled()Z
    .locals 1

    .line 105
    iget-boolean v0, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mLocationEnabled:Z

    return v0
.end method

.method public isTelephonyDetectionSupported()Z
    .locals 1

    .line 66
    iget-boolean v0, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mTelephonyDetectionSupported:Z

    return v0
.end method

.method public isUserConfigAllowed()Z
    .locals 1

    .line 100
    iget-boolean v0, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mUserConfigAllowed:Z

    return v0
.end method

.method public merge(Landroid/app/time/TimeZoneConfiguration;)Lcom/android/server/timezonedetector/ConfigurationInternal;
    .locals 2
    .param p1, "newConfiguration"    # Landroid/app/time/TimeZoneConfiguration;

    .line 196
    new-instance v0, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;

    invoke-direct {v0, p0}, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;-><init>(Lcom/android/server/timezonedetector/ConfigurationInternal;)V

    .line 197
    .local v0, "builder":Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;
    invoke-virtual {p1}, Landroid/app/time/TimeZoneConfiguration;->hasIsAutoDetectionEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 198
    invoke-virtual {p1}, Landroid/app/time/TimeZoneConfiguration;->isAutoDetectionEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->setAutoDetectionEnabled(Z)Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;

    .line 200
    :cond_0
    invoke-virtual {p1}, Landroid/app/time/TimeZoneConfiguration;->hasIsGeoDetectionEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 201
    invoke-virtual {p1}, Landroid/app/time/TimeZoneConfiguration;->isGeoDetectionEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->setGeoDetectionEnabled(Z)Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;

    .line 203
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->build()Lcom/android/server/timezonedetector/ConfigurationInternal;

    move-result-object v1

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ConfigurationInternal{mUserId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mUserConfigAllowed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mUserConfigAllowed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mTelephonyDetectionSupported="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mTelephonyDetectionSupported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mGeoDetectionSupported="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mGeoDetectionSupported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mAutoDetectionEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mAutoDetectionEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mLocationEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mLocationEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mGeoDetectionEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mGeoDetectionEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
