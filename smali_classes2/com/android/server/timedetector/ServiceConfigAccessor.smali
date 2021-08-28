.class final Lcom/android/server/timedetector/ServiceConfigAccessor;
.super Ljava/lang/Object;
.source "ServiceConfigAccessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/timedetector/ServiceConfigAccessor$ServerFlagsOriginPrioritiesSupplier;,
        Lcom/android/server/timedetector/ServiceConfigAccessor$ConfigOriginPrioritiesSupplier;,
        Lcom/android/server/timedetector/ServiceConfigAccessor$BaseOriginPrioritiesSupplier;
    }
.end annotation


# static fields
.field private static final DEFAULT_AUTOMATIC_TIME_ORIGIN_PRIORITIES:[I

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

.field private static final SYSTEM_CLOCK_UPDATE_THRESHOLD_MILLIS_DEFAULT:I = 0x7d0

.field private static final TIME_LOWER_BOUND_DEFAULT:Ljava/time/Instant;

.field private static sInstance:Lcom/android/server/timedetector/ServiceConfigAccessor;


# instance fields
.field private final mConfigOriginPrioritiesSupplier:Lcom/android/server/timedetector/ServiceConfigAccessor$ConfigOriginPrioritiesSupplier;

.field private final mContext:Landroid/content/Context;

.field private final mServerFlags:Lcom/android/server/timedetector/ServerFlags;

.field private final mServerFlagsOriginPrioritiesSupplier:Lcom/android/server/timedetector/ServiceConfigAccessor$ServerFlagsOriginPrioritiesSupplier;

.field private final mSystemClockUpdateThresholdMillis:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 58
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/timedetector/ServiceConfigAccessor;->DEFAULT_AUTOMATIC_TIME_ORIGIN_PRIORITIES:[I

    .line 65
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    sget-wide v2, Landroid/os/Build;->TIME:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->max(JJ)J

    move-result-wide v0

    .line 64
    invoke-static {v0, v1}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v0

    sput-object v0, Lcom/android/server/timedetector/ServiceConfigAccessor;->TIME_LOWER_BOUND_DEFAULT:Ljava/time/Instant;

    .line 68
    new-instance v0, Landroid/util/ArraySet;

    const-string v1, "time_detector_lower_bound_millis_override"

    const-string v2, "time_detector_origin_priorities_override"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>([Ljava/lang/Object;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/android/server/timedetector/ServiceConfigAccessor;->SERVER_FLAGS_KEYS_TO_WATCH:Ljava/util/Set;

    .line 74
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/timedetector/ServiceConfigAccessor;->SLOCK:Ljava/lang/Object;

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x3
    .end array-data
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/timedetector/ServiceConfigAccessor;->mContext:Landroid/content/Context;

    .line 95
    invoke-static {v0}, Lcom/android/server/timedetector/ServerFlags;->getInstance(Landroid/content/Context;)Lcom/android/server/timedetector/ServerFlags;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/timedetector/ServiceConfigAccessor;->mServerFlags:Lcom/android/server/timedetector/ServerFlags;

    .line 96
    new-instance v1, Lcom/android/server/timedetector/ServiceConfigAccessor$ConfigOriginPrioritiesSupplier;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/android/server/timedetector/ServiceConfigAccessor$ConfigOriginPrioritiesSupplier;-><init>(Landroid/content/Context;Lcom/android/server/timedetector/ServiceConfigAccessor$1;)V

    iput-object v1, p0, Lcom/android/server/timedetector/ServiceConfigAccessor;->mConfigOriginPrioritiesSupplier:Lcom/android/server/timedetector/ServiceConfigAccessor$ConfigOriginPrioritiesSupplier;

    .line 97
    new-instance v1, Lcom/android/server/timedetector/ServiceConfigAccessor$ServerFlagsOriginPrioritiesSupplier;

    invoke-direct {v1, v0, v2}, Lcom/android/server/timedetector/ServiceConfigAccessor$ServerFlagsOriginPrioritiesSupplier;-><init>(Lcom/android/server/timedetector/ServerFlags;Lcom/android/server/timedetector/ServiceConfigAccessor$1;)V

    iput-object v1, p0, Lcom/android/server/timedetector/ServiceConfigAccessor;->mServerFlagsOriginPrioritiesSupplier:Lcom/android/server/timedetector/ServiceConfigAccessor$ServerFlagsOriginPrioritiesSupplier;

    .line 99
    nop

    .line 100
    const-string v0, "ro.sys.time_detector_update_diff"

    const/16 v1, 0x7d0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/timedetector/ServiceConfigAccessor;->mSystemClockUpdateThresholdMillis:I

    .line 102
    return-void
.end method

.method static getInstance(Landroid/content/Context;)Lcom/android/server/timedetector/ServiceConfigAccessor;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 106
    sget-object v0, Lcom/android/server/timedetector/ServiceConfigAccessor;->SLOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 107
    :try_start_0
    sget-object v1, Lcom/android/server/timedetector/ServiceConfigAccessor;->sInstance:Lcom/android/server/timedetector/ServiceConfigAccessor;

    if-nez v1, :cond_0

    .line 108
    new-instance v1, Lcom/android/server/timedetector/ServiceConfigAccessor;

    invoke-direct {v1, p0}, Lcom/android/server/timedetector/ServiceConfigAccessor;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/server/timedetector/ServiceConfigAccessor;->sInstance:Lcom/android/server/timedetector/ServiceConfigAccessor;

    .line 110
    :cond_0
    sget-object v1, Lcom/android/server/timedetector/ServiceConfigAccessor;->sInstance:Lcom/android/server/timedetector/ServiceConfigAccessor;

    monitor-exit v0

    return-object v1

    .line 111
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method addListener(Lcom/android/server/timezonedetector/ConfigurationChangeListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/android/server/timezonedetector/ConfigurationChangeListener;

    .line 122
    iget-object v0, p0, Lcom/android/server/timedetector/ServiceConfigAccessor;->mServerFlags:Lcom/android/server/timedetector/ServerFlags;

    sget-object v1, Lcom/android/server/timedetector/ServiceConfigAccessor;->SERVER_FLAGS_KEYS_TO_WATCH:Ljava/util/Set;

    invoke-virtual {v0, p1, v1}, Lcom/android/server/timedetector/ServerFlags;->addListener(Lcom/android/server/timezonedetector/ConfigurationChangeListener;Ljava/util/Set;)V

    .line 123
    return-void
.end method

.method autoTimeLowerBound()Ljava/time/Instant;
    .locals 2

    .line 145
    iget-object v0, p0, Lcom/android/server/timedetector/ServiceConfigAccessor;->mServerFlags:Lcom/android/server/timedetector/ServerFlags;

    const-string v1, "time_detector_lower_bound_millis_override"

    invoke-virtual {v0, v1}, Lcom/android/server/timedetector/ServerFlags;->getOptionalInstant(Ljava/lang/String;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Lcom/android/server/timedetector/ServiceConfigAccessor;->TIME_LOWER_BOUND_DEFAULT:Ljava/time/Instant;

    .line 146
    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/Instant;

    .line 145
    return-object v0
.end method

.method getOriginPriorities()[I
    .locals 3

    .line 127
    iget-object v0, p0, Lcom/android/server/timedetector/ServiceConfigAccessor;->mServerFlagsOriginPrioritiesSupplier:Lcom/android/server/timedetector/ServiceConfigAccessor$ServerFlagsOriginPrioritiesSupplier;

    invoke-virtual {v0}, Lcom/android/server/timedetector/ServiceConfigAccessor$ServerFlagsOriginPrioritiesSupplier;->get()[I

    move-result-object v0

    .line 128
    .local v0, "serverFlagsValue":[I
    if-eqz v0, :cond_0

    .line 129
    return-object v0

    .line 132
    :cond_0
    iget-object v1, p0, Lcom/android/server/timedetector/ServiceConfigAccessor;->mConfigOriginPrioritiesSupplier:Lcom/android/server/timedetector/ServiceConfigAccessor$ConfigOriginPrioritiesSupplier;

    invoke-virtual {v1}, Lcom/android/server/timedetector/ServiceConfigAccessor$ConfigOriginPrioritiesSupplier;->get()[I

    move-result-object v1

    .line 133
    .local v1, "configValue":[I
    if-eqz v1, :cond_1

    .line 134
    return-object v1

    .line 136
    :cond_1
    sget-object v2, Lcom/android/server/timedetector/ServiceConfigAccessor;->DEFAULT_AUTOMATIC_TIME_ORIGIN_PRIORITIES:[I

    return-object v2
.end method

.method systemClockUpdateThresholdMillis()I
    .locals 1

    .line 140
    iget v0, p0, Lcom/android/server/timedetector/ServiceConfigAccessor;->mSystemClockUpdateThresholdMillis:I

    return v0
.end method
