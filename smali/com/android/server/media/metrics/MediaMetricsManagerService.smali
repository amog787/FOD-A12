.class public final Lcom/android/server/media/metrics/MediaMetricsManagerService;
.super Lcom/android/server/SystemService;
.source "MediaMetricsManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;
    }
.end annotation


# static fields
.field private static final FAILED_TO_GET:Ljava/lang/String; = "failed_to_get"

.field private static final LOGGING_LEVEL_BLOCKED:I = 0x1869f

.field private static final LOGGING_LEVEL_EVERYTHING:I = 0x0

.field private static final LOGGING_LEVEL_NO_UID:I = 0x3e8

.field private static final MEDIA_METRICS_MODE:Ljava/lang/String; = "media_metrics_mode"

.field private static final MEDIA_METRICS_MODE_ALLOWLIST:I = 0x3

.field private static final MEDIA_METRICS_MODE_BLOCKLIST:I = 0x2

.field private static final MEDIA_METRICS_MODE_OFF:I = 0x0

.field private static final MEDIA_METRICS_MODE_ON:I = 0x1

.field private static final PLAYER_METRICS_APP_ALLOWLIST:Ljava/lang/String; = "player_metrics_app_allowlist"

.field private static final PLAYER_METRICS_APP_BLOCKLIST:Ljava/lang/String; = "player_metrics_app_blocklist"

.field private static final PLAYER_METRICS_PER_APP_ATTRIBUTION_ALLOWLIST:Ljava/lang/String; = "player_metrics_per_app_attribution_allowlist"

.field private static final PLAYER_METRICS_PER_APP_ATTRIBUTION_BLOCKLIST:Ljava/lang/String; = "player_metrics_per_app_attribution_blocklist"

.field private static final TAG:Ljava/lang/String; = "MediaMetricsManagerService"


# instance fields
.field private mAllowlist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBlockList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mLock:Ljava/lang/Object;

.field private mMode:Ljava/lang/Integer;

.field private mNoUidAllowlist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mNoUidBlocklist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mSecureRandom:Ljava/security/SecureRandom;


# direct methods
.method public static synthetic $r8$lambda$BR72rjORkunkbzOdTqo-EQhjEJY(Lcom/android/server/media/metrics/MediaMetricsManagerService;Landroid/provider/DeviceConfig$Properties;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->updateConfigs(Landroid/provider/DeviceConfig$Properties;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 89
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mMode:Ljava/lang/Integer;

    .line 72
    iput-object v0, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mAllowlist:Ljava/util/List;

    .line 74
    iput-object v0, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mNoUidAllowlist:Ljava/util/List;

    .line 76
    iput-object v0, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mBlockList:Ljava/util/List;

    .line 78
    iput-object v0, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mNoUidBlocklist:Ljava/util/List;

    .line 80
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mLock:Ljava/lang/Object;

    .line 90
    iput-object p1, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mContext:Landroid/content/Context;

    .line 91
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mSecureRandom:Ljava/security/SecureRandom;

    .line 92
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/media/metrics/MediaMetricsManagerService;)Ljava/security/SecureRandom;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/media/metrics/MediaMetricsManagerService;

    .line 45
    iget-object v0, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mSecureRandom:Ljava/security/SecureRandom;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/media/metrics/MediaMetricsManagerService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/media/metrics/MediaMetricsManagerService;

    .line 45
    iget-object v0, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/media/metrics/MediaMetricsManagerService;)Ljava/lang/Integer;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/media/metrics/MediaMetricsManagerService;

    .line 45
    iget-object v0, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mMode:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/server/media/metrics/MediaMetricsManagerService;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/media/metrics/MediaMetricsManagerService;
    .param p1, "x1"    # Ljava/lang/Integer;

    .line 45
    iput-object p1, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mMode:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/server/media/metrics/MediaMetricsManagerService;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/media/metrics/MediaMetricsManagerService;

    .line 45
    iget-object v0, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mBlockList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/server/media/metrics/MediaMetricsManagerService;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/media/metrics/MediaMetricsManagerService;
    .param p1, "x1"    # Ljava/util/List;

    .line 45
    iput-object p1, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mBlockList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/server/media/metrics/MediaMetricsManagerService;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/media/metrics/MediaMetricsManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 45
    invoke-direct {p0, p1}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->getListLocked(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/media/metrics/MediaMetricsManagerService;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/media/metrics/MediaMetricsManagerService;

    .line 45
    iget-object v0, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mNoUidBlocklist:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/server/media/metrics/MediaMetricsManagerService;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/media/metrics/MediaMetricsManagerService;
    .param p1, "x1"    # Ljava/util/List;

    .line 45
    iput-object p1, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mNoUidBlocklist:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/server/media/metrics/MediaMetricsManagerService;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/media/metrics/MediaMetricsManagerService;

    .line 45
    iget-object v0, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mNoUidAllowlist:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/server/media/metrics/MediaMetricsManagerService;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/media/metrics/MediaMetricsManagerService;
    .param p1, "x1"    # Ljava/util/List;

    .line 45
    iput-object p1, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mNoUidAllowlist:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/server/media/metrics/MediaMetricsManagerService;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/media/metrics/MediaMetricsManagerService;

    .line 45
    iget-object v0, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mAllowlist:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/server/media/metrics/MediaMetricsManagerService;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/media/metrics/MediaMetricsManagerService;
    .param p1, "x1"    # Ljava/util/List;

    .line 45
    iput-object p1, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mAllowlist:Ljava/util/List;

    return-object p1
.end method

.method private getListLocked(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p1, "listName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 131
    const-string v0, "failed_to_get"

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 132
    .local v1, "identity":J
    const-string v3, "failed_to_get"

    .line 134
    .local v3, "listString":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v4, "media"

    invoke-static {v4, p1, v0}, Landroid/provider/DeviceConfig;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v4

    .line 137
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 138
    nop

    .line 139
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to get "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " from DeviceConfig"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "MediaMetricsManagerService"

    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    const/4 v0, 0x0

    return-object v0

    .line 143
    :cond_0
    const-string v0, ","

    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 144
    .local v0, "pkgArr":[Ljava/lang/String;
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    return-object v4

    .line 137
    .end local v0    # "pkgArr":[Ljava/lang/String;
    :catchall_0
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 138
    throw v0
.end method

.method private updateConfigs(Landroid/provider/DeviceConfig$Properties;)V
    .locals 5
    .param p1, "properties"    # Landroid/provider/DeviceConfig$Properties;

    .line 104
    iget-object v0, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 105
    :try_start_0
    const-string/jumbo v1, "media_metrics_mode"

    const/4 v2, 0x2

    invoke-virtual {p1, v1, v2}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mMode:Ljava/lang/Integer;

    .line 108
    const-string/jumbo v1, "player_metrics_app_allowlist"

    invoke-direct {p0, v1}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->getListLocked(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 109
    .local v1, "newList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x3

    if-nez v1, :cond_0

    iget-object v4, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mMode:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eq v4, v3, :cond_1

    .line 112
    :cond_0
    iput-object v1, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mAllowlist:Ljava/util/List;

    .line 114
    :cond_1
    const-string/jumbo v4, "player_metrics_per_app_attribution_allowlist"

    invoke-direct {p0, v4}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->getListLocked(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    move-object v1, v4

    .line 115
    if-nez v1, :cond_2

    iget-object v4, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mMode:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eq v4, v3, :cond_3

    .line 116
    :cond_2
    iput-object v1, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mNoUidAllowlist:Ljava/util/List;

    .line 118
    :cond_3
    const-string/jumbo v3, "player_metrics_app_blocklist"

    invoke-direct {p0, v3}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->getListLocked(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    move-object v1, v3

    .line 119
    if-nez v1, :cond_4

    iget-object v3, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mMode:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v3, v2, :cond_5

    .line 120
    :cond_4
    iput-object v1, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mBlockList:Ljava/util/List;

    .line 122
    :cond_5
    const-string/jumbo v3, "player_metrics_per_app_attribution_blocklist"

    invoke-direct {p0, v3}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->getListLocked(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    move-object v1, v3

    .line 123
    if-nez v1, :cond_6

    iget-object v3, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mMode:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v3, v2, :cond_7

    .line 124
    :cond_6
    iput-object v1, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mNoUidBlocklist:Ljava/util/List;

    .line 126
    .end local v1    # "newList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_7
    monitor-exit v0

    .line 127
    return-void

    .line 126
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public onStart()V
    .locals 3

    .line 96
    new-instance v0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;-><init>(Lcom/android/server/media/metrics/MediaMetricsManagerService;Lcom/android/server/media/metrics/MediaMetricsManagerService$1;)V

    const-string/jumbo v1, "media_metrics"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 97
    iget-object v0, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mContext:Landroid/content/Context;

    .line 99
    invoke-virtual {v0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/android/server/media/metrics/MediaMetricsManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/media/metrics/MediaMetricsManagerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/media/metrics/MediaMetricsManagerService;)V

    .line 97
    const-string/jumbo v2, "media"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 101
    return-void
.end method
