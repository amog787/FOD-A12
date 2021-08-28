.class public Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;
.super Ljava/lang/Object;
.source "ConfigurationInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/timezonedetector/ConfigurationInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mAutoDetectionEnabled:Z

.field private mGeoDetectionEnabled:Z

.field private mGeoDetectionSupported:Z

.field private mLocationEnabled:Z

.field private mTelephonyDetectionSupported:Z

.field private mUserConfigAllowed:Z

.field private final mUserId:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "userId"    # I

    .line 261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 262
    iput p1, p0, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->mUserId:I

    .line 263
    return-void
.end method

.method public constructor <init>(Lcom/android/server/timezonedetector/ConfigurationInternal;)V
    .locals 1
    .param p1, "toCopy"    # Lcom/android/server/timezonedetector/ConfigurationInternal;

    .line 268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 269
    invoke-static {p1}, Lcom/android/server/timezonedetector/ConfigurationInternal;->access$700(Lcom/android/server/timezonedetector/ConfigurationInternal;)I

    move-result v0

    iput v0, p0, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->mUserId:I

    .line 270
    invoke-static {p1}, Lcom/android/server/timezonedetector/ConfigurationInternal;->access$800(Lcom/android/server/timezonedetector/ConfigurationInternal;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->mUserConfigAllowed:Z

    .line 271
    invoke-static {p1}, Lcom/android/server/timezonedetector/ConfigurationInternal;->access$900(Lcom/android/server/timezonedetector/ConfigurationInternal;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->mTelephonyDetectionSupported:Z

    .line 272
    invoke-static {p1}, Lcom/android/server/timezonedetector/ConfigurationInternal;->access$1000(Lcom/android/server/timezonedetector/ConfigurationInternal;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->mGeoDetectionSupported:Z

    .line 273
    invoke-static {p1}, Lcom/android/server/timezonedetector/ConfigurationInternal;->access$1100(Lcom/android/server/timezonedetector/ConfigurationInternal;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->mAutoDetectionEnabled:Z

    .line 274
    invoke-static {p1}, Lcom/android/server/timezonedetector/ConfigurationInternal;->access$1200(Lcom/android/server/timezonedetector/ConfigurationInternal;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->mLocationEnabled:Z

    .line 275
    invoke-static {p1}, Lcom/android/server/timezonedetector/ConfigurationInternal;->access$1300(Lcom/android/server/timezonedetector/ConfigurationInternal;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->mGeoDetectionEnabled:Z

    .line 276
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;

    .line 247
    iget-boolean v0, p0, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->mTelephonyDetectionSupported:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;

    .line 247
    iget-boolean v0, p0, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->mGeoDetectionSupported:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;

    .line 247
    iget-boolean v0, p0, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->mAutoDetectionEnabled:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;

    .line 247
    iget v0, p0, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->mUserId:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;

    .line 247
    iget-boolean v0, p0, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->mUserConfigAllowed:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;

    .line 247
    iget-boolean v0, p0, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->mLocationEnabled:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;

    .line 247
    iget-boolean v0, p0, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->mGeoDetectionEnabled:Z

    return v0
.end method


# virtual methods
.method public build()Lcom/android/server/timezonedetector/ConfigurationInternal;
    .locals 2

    .line 329
    new-instance v0, Lcom/android/server/timezonedetector/ConfigurationInternal;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/timezonedetector/ConfigurationInternal;-><init>(Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;Lcom/android/server/timezonedetector/ConfigurationInternal$1;)V

    return-object v0
.end method

.method public setAutoDetectionEnabled(Z)Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;
    .locals 0
    .param p1, "enabled"    # Z

    .line 306
    iput-boolean p1, p0, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->mAutoDetectionEnabled:Z

    .line 307
    return-object p0
.end method

.method public setGeoDetectionEnabled(Z)Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;
    .locals 0
    .param p1, "enabled"    # Z

    .line 322
    iput-boolean p1, p0, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->mGeoDetectionEnabled:Z

    .line 323
    return-object p0
.end method

.method public setGeoDetectionFeatureSupported(Z)Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;
    .locals 0
    .param p1, "supported"    # Z

    .line 298
    iput-boolean p1, p0, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->mGeoDetectionSupported:Z

    .line 299
    return-object p0
.end method

.method public setLocationEnabled(Z)Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;
    .locals 0
    .param p1, "enabled"    # Z

    .line 314
    iput-boolean p1, p0, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->mLocationEnabled:Z

    .line 315
    return-object p0
.end method

.method public setTelephonyDetectionFeatureSupported(Z)Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;
    .locals 0
    .param p1, "supported"    # Z

    .line 290
    iput-boolean p1, p0, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->mTelephonyDetectionSupported:Z

    .line 291
    return-object p0
.end method

.method public setUserConfigAllowed(Z)Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;
    .locals 0
    .param p1, "configAllowed"    # Z

    .line 282
    iput-boolean p1, p0, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->mUserConfigAllowed:Z

    .line 283
    return-object p0
.end method
