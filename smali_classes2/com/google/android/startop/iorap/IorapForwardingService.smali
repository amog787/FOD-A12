.class public Lcom/google/android/startop/iorap/IorapForwardingService;
.super Lcom/android/server/SystemService;
.source "IorapForwardingService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/startop/iorap/IorapForwardingService$RemoteRunnable;,
        Lcom/google/android/startop/iorap/IorapForwardingService$RemoteTaskListener;,
        Lcom/google/android/startop/iorap/IorapForwardingService$IorapdJobService;,
        Lcom/google/android/startop/iorap/IorapForwardingService$IorapdJobServiceProxy;,
        Lcom/google/android/startop/iorap/IorapForwardingService$AppLaunchObserver;,
        Lcom/google/android/startop/iorap/IorapForwardingService$DexOptPackagesUpdated;,
        Lcom/google/android/startop/iorap/IorapForwardingService$BinderConnectionHandler;
    }
.end annotation


# static fields
.field public static final DEBUG:Z

.field private static IS_ENABLED:Z = false

.field public static final JOB_ID_IORAPD:I

.field public static final JOB_INTERVAL_MS:J

.field public static final TAG:Ljava/lang/String; = "IorapForwardingService"

.field private static final TIMEOUT:Ljava/time/Duration;

.field private static WTF_CRASH:Z

.field private static volatile sSelfService:Lcom/google/android/startop/iorap/IorapForwardingService;


# instance fields
.field private final mAbortIdleCompilation:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mAppLaunchObserver:Lcom/google/android/startop/iorap/IorapForwardingService$AppLaunchObserver;

.field private final mDexOptPackagesUpdated:Lcom/google/android/startop/iorap/IorapForwardingService$DexOptPackagesUpdated;

.field private final mEventSequenceValidator:Lcom/google/android/startop/iorap/EventSequenceValidator;

.field private final mHandler:Landroid/os/Handler;

.field private mIorapRemote:Lcom/google/android/startop/iorap/IIorap;

.field private volatile mJobService:Lcom/google/android/startop/iorap/IorapForwardingService$IorapdJobService;

.field private final mLock:Ljava/lang/Object;

.field private mRegisteredListeners:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 68
    const-string v0, "IorapForwardingService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/startop/iorap/IorapForwardingService;->DEBUG:Z

    .line 70
    const-string v0, "ro.iorapd.enable"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/startop/iorap/IorapForwardingService;->IS_ENABLED:Z

    .line 72
    const-string v0, "iorapd.forwarding_service.wtf_crash"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/startop/iorap/IorapForwardingService;->WTF_CRASH:Z

    .line 74
    const-wide/16 v0, 0x258

    invoke-static {v0, v1}, Ljava/time/Duration;->ofSeconds(J)Ljava/time/Duration;

    move-result-object v0

    sput-object v0, Lcom/google/android/startop/iorap/IorapForwardingService;->TIMEOUT:Ljava/time/Duration;

    .line 77
    const-string v0, "iorapd"

    invoke-static {v0}, Lcom/google/android/startop/iorap/IorapForwardingService;->encodeEnglishAlphabetStringIntoInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/startop/iorap/IorapForwardingService;->JOB_ID_IORAPD:I

    .line 79
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x18

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/startop/iorap/IorapForwardingService;->JOB_INTERVAL_MS:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 106
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 82
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/startop/iorap/IorapForwardingService;->mLock:Ljava/lang/Object;

    .line 84
    new-instance v0, Lcom/google/android/startop/iorap/IorapForwardingService$BinderConnectionHandler;

    .line 85
    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/startop/iorap/IorapForwardingService$BinderConnectionHandler;-><init>(Lcom/google/android/startop/iorap/IorapForwardingService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/startop/iorap/IorapForwardingService;->mHandler:Landroid/os/Handler;

    .line 94
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/startop/iorap/IorapForwardingService;->mAbortIdleCompilation:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 325
    new-instance v0, Lcom/google/android/startop/iorap/IorapForwardingService$AppLaunchObserver;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/google/android/startop/iorap/IorapForwardingService$AppLaunchObserver;-><init>(Lcom/google/android/startop/iorap/IorapForwardingService;Lcom/google/android/startop/iorap/IorapForwardingService$1;)V

    iput-object v0, p0, Lcom/google/android/startop/iorap/IorapForwardingService;->mAppLaunchObserver:Lcom/google/android/startop/iorap/IorapForwardingService$AppLaunchObserver;

    .line 326
    new-instance v0, Lcom/google/android/startop/iorap/EventSequenceValidator;

    invoke-direct {v0}, Lcom/google/android/startop/iorap/EventSequenceValidator;-><init>()V

    iput-object v0, p0, Lcom/google/android/startop/iorap/IorapForwardingService;->mEventSequenceValidator:Lcom/google/android/startop/iorap/EventSequenceValidator;

    .line 327
    new-instance v0, Lcom/google/android/startop/iorap/IorapForwardingService$DexOptPackagesUpdated;

    invoke-direct {v0, p0, v2}, Lcom/google/android/startop/iorap/IorapForwardingService$DexOptPackagesUpdated;-><init>(Lcom/google/android/startop/iorap/IorapForwardingService;Lcom/google/android/startop/iorap/IorapForwardingService$1;)V

    iput-object v0, p0, Lcom/google/android/startop/iorap/IorapForwardingService;->mDexOptPackagesUpdated:Lcom/google/android/startop/iorap/IorapForwardingService$DexOptPackagesUpdated;

    .line 328
    iput-boolean v1, p0, Lcom/google/android/startop/iorap/IorapForwardingService;->mRegisteredListeners:Z

    .line 108
    sget-boolean v0, Lcom/google/android/startop/iorap/IorapForwardingService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IorapForwardingService (Context="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IorapForwardingService"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :cond_0
    sget-object v0, Lcom/google/android/startop/iorap/IorapForwardingService;->sSelfService:Lcom/google/android/startop/iorap/IorapForwardingService;

    if-nez v0, :cond_1

    .line 115
    sput-object p0, Lcom/google/android/startop/iorap/IorapForwardingService;->sSelfService:Lcom/google/android/startop/iorap/IorapForwardingService;

    .line 116
    return-void

    .line 113
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "only one service instance allowed"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method static synthetic access$000(Lcom/google/android/startop/iorap/IorapForwardingService;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/android/startop/iorap/IorapForwardingService;
    .param p1, "x1"    # I

    .line 64
    invoke-direct {p0, p1}, Lcom/google/android/startop/iorap/IorapForwardingService;->retryConnectToRemoteAndConfigure(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/google/android/startop/iorap/IorapForwardingService;)Lcom/google/android/startop/iorap/IorapForwardingService$IorapdJobService;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/startop/iorap/IorapForwardingService;

    .line 64
    iget-object v0, p0, Lcom/google/android/startop/iorap/IorapForwardingService;->mJobService:Lcom/google/android/startop/iorap/IorapForwardingService$IorapdJobService;

    return-object v0
.end method

.method static synthetic access$1000()Ljava/time/Duration;
    .locals 1

    .line 64
    sget-object v0, Lcom/google/android/startop/iorap/IorapForwardingService;->TIMEOUT:Ljava/time/Duration;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/startop/iorap/IorapForwardingService;)Lcom/google/android/startop/iorap/IIorap;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/startop/iorap/IorapForwardingService;

    .line 64
    iget-object v0, p0, Lcom/google/android/startop/iorap/IorapForwardingService;->mIorapRemote:Lcom/google/android/startop/iorap/IIorap;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/startop/iorap/IIorap;Lcom/google/android/startop/iorap/IorapForwardingService$RemoteRunnable;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/android/startop/iorap/IIorap;
    .param p1, "x1"    # Lcom/google/android/startop/iorap/IorapForwardingService$RemoteRunnable;

    .line 64
    invoke-static {p0, p1}, Lcom/google/android/startop/iorap/IorapForwardingService;->invokeRemote(Lcom/google/android/startop/iorap/IIorap;Lcom/google/android/startop/iorap/IorapForwardingService$RemoteRunnable;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600()Lcom/google/android/startop/iorap/IorapForwardingService;
    .locals 1

    .line 64
    sget-object v0, Lcom/google/android/startop/iorap/IorapForwardingService;->sSelfService:Lcom/google/android/startop/iorap/IorapForwardingService;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/startop/iorap/IorapForwardingService;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/startop/iorap/IorapForwardingService;

    .line 64
    iget-object v0, p0, Lcom/google/android/startop/iorap/IorapForwardingService;->mAbortIdleCompilation:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private connectToRemoteAndConfigure()Z
    .locals 2

    .line 289
    iget-object v0, p0, Lcom/google/android/startop/iorap/IorapForwardingService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 291
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/startop/iorap/IorapForwardingService;->connectToRemoteAndConfigureLocked()Z

    move-result v1

    monitor-exit v0

    return v1

    .line 292
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private connectToRemoteAndConfigureLocked()Z
    .locals 4

    .line 296
    invoke-virtual {p0}, Lcom/google/android/startop/iorap/IorapForwardingService;->isIorapEnabled()Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "IorapForwardingService"

    if-nez v0, :cond_1

    .line 297
    sget-boolean v0, Lcom/google/android/startop/iorap/IorapForwardingService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 298
    const-string v0, "connectToRemoteAndConfigure - iorapd is disabled, skip rest of work"

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    :cond_0
    return v1

    .line 309
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/startop/iorap/IorapForwardingService;->provideIorapRemote()Lcom/google/android/startop/iorap/IIorap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/startop/iorap/IorapForwardingService;->mIorapRemote:Lcom/google/android/startop/iorap/IIorap;

    .line 310
    if-nez v0, :cond_3

    .line 311
    sget-boolean v0, Lcom/google/android/startop/iorap/IorapForwardingService;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 312
    const-string v0, "connectToRemoteAndConfigure - null iorap remote. check for Log.wtf?"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    :cond_2
    const/4 v0, 0x0

    return v0

    .line 316
    :cond_3
    new-instance v3, Lcom/google/android/startop/iorap/IorapForwardingService$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/google/android/startop/iorap/IorapForwardingService$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/startop/iorap/IorapForwardingService;)V

    invoke-static {v0, v3}, Lcom/google/android/startop/iorap/IorapForwardingService;->invokeRemote(Lcom/google/android/startop/iorap/IIorap;Lcom/google/android/startop/iorap/IorapForwardingService$RemoteRunnable;)Z

    .line 318
    invoke-direct {p0}, Lcom/google/android/startop/iorap/IorapForwardingService;->registerInProcessListenersLocked()V

    .line 320
    const-string v0, "Connected to iorapd native service."

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    return v1
.end method

.method private static encodeEnglishAlphabetStringIntoInt(Ljava/lang/String;)I
    .locals 11
    .param p0, "name"    # Ljava/lang/String;

    .line 780
    const/4 v0, 0x0

    .line 782
    .local v0, "value":I
    const/4 v1, 0x6

    .line 783
    .local v1, "CHARS_PER_INT":I
    const/4 v2, 0x5

    .line 785
    .local v2, "BITS_PER_CHAR":I
    const/16 v3, 0x61

    .line 786
    .local v3, "CHAR_LOWER":C
    const/16 v4, 0x7a

    .line 788
    .local v4, "CHAR_UPPER":C
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x6

    if-gt v5, v6, :cond_3

    .line 793
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 794
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 796
    .local v6, "c":C
    const/16 v7, 0x61

    if-lt v6, v7, :cond_1

    const/16 v8, 0x7a

    if-gt v6, v8, :cond_1

    .line 801
    const v8, 0xffff

    and-int/2addr v8, v6

    sub-int/2addr v8, v7

    .line 802
    .local v8, "cur_value":I
    const/16 v7, 0x20

    if-ge v8, v7, :cond_0

    .line 806
    shl-int/lit8 v0, v0, 0x5

    .line 807
    or-int/2addr v0, v8

    .line 793
    .end local v6    # "c":C
    .end local v8    # "cur_value":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 803
    .restart local v6    # "c":C
    .restart local v8    # "cur_value":I
    :cond_0
    new-instance v7, Ljava/lang/AssertionError;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "wtf? i="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", name="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v7

    .line 797
    .end local v8    # "cur_value":I
    :cond_1
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "String has out-of-range [a-z] chars: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 810
    .end local v5    # "i":I
    .end local v6    # "c":C
    :cond_2
    return v0

    .line 789
    :cond_3
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "String too long. Cannot encode more than 6 chars: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method private getMendelFlag(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 2
    .param p1, "mendelFlag"    # Ljava/lang/String;
    .param p2, "sysProperty"    # Ljava/lang/String;
    .param p3, "defaultValue"    # Z

    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "persist.device_config.runtime_native_boot."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 189
    .local v0, "mendelProperty":Ljava/lang/String;
    nop

    .line 190
    invoke-static {p2, p3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 189
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method private static handleRemoteError(Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "t"    # Ljava/lang/Throwable;

    .line 765
    sget-boolean v0, Lcom/google/android/startop/iorap/IorapForwardingService;->WTF_CRASH:Z

    if-nez v0, :cond_0

    .line 770
    const-string v0, "IorapForwardingService"

    invoke-static {v0, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 772
    return-void

    .line 767
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "unexpected remote error"

    invoke-direct {v0, v1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static invokeRemote(Lcom/google/android/startop/iorap/IIorap;Lcom/google/android/startop/iorap/IorapForwardingService$RemoteRunnable;)Z
    .locals 3
    .param p0, "iorap"    # Lcom/google/android/startop/iorap/IIorap;
    .param p1, "r"    # Lcom/google/android/startop/iorap/IorapForwardingService$RemoteRunnable;

    .line 742
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 743
    const-string v1, "IorapForwardingService"

    const-string v2, "IIorap went to null in this thread, drop invokeRemote."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    return v0

    .line 747
    :cond_0
    :try_start_0
    invoke-interface {p1, p0}, Lcom/google/android/startop/iorap/IorapForwardingService$RemoteRunnable;->run(Lcom/google/android/startop/iorap/IIorap;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 748
    const/4 v0, 0x1

    return v0

    .line 749
    :catch_0
    move-exception v1

    .line 759
    .local v1, "e":Landroid/os/RemoteException;
    invoke-static {v1}, Lcom/google/android/startop/iorap/IorapForwardingService;->handleRemoteError(Ljava/lang/Throwable;)V

    .line 760
    return v0
.end method

.method private registerInProcessListenersLocked()V
    .locals 2

    .line 331
    iget-boolean v0, p0, Lcom/google/android/startop/iorap/IorapForwardingService;->mRegisteredListeners:Z

    if-eqz v0, :cond_0

    .line 340
    return-void

    .line 345
    :cond_0
    nop

    .line 346
    invoke-virtual {p0}, Lcom/google/android/startop/iorap/IorapForwardingService;->provideLaunchObserverRegistry()Lcom/android/server/wm/ActivityMetricsLaunchObserverRegistry;

    move-result-object v0

    .line 347
    .local v0, "launchObserverRegistry":Lcom/android/server/wm/ActivityMetricsLaunchObserverRegistry;
    iget-object v1, p0, Lcom/google/android/startop/iorap/IorapForwardingService;->mAppLaunchObserver:Lcom/google/android/startop/iorap/IorapForwardingService$AppLaunchObserver;

    invoke-interface {v0, v1}, Lcom/android/server/wm/ActivityMetricsLaunchObserverRegistry;->registerLaunchObserver(Lcom/android/server/wm/ActivityMetricsLaunchObserver;)V

    .line 348
    iget-object v1, p0, Lcom/google/android/startop/iorap/IorapForwardingService;->mEventSequenceValidator:Lcom/google/android/startop/iorap/EventSequenceValidator;

    invoke-interface {v0, v1}, Lcom/android/server/wm/ActivityMetricsLaunchObserverRegistry;->registerLaunchObserver(Lcom/android/server/wm/ActivityMetricsLaunchObserver;)V

    .line 350
    iget-object v1, p0, Lcom/google/android/startop/iorap/IorapForwardingService;->mDexOptPackagesUpdated:Lcom/google/android/startop/iorap/IorapForwardingService$DexOptPackagesUpdated;

    invoke-static {v1}, Lcom/android/server/pm/BackgroundDexOptService;->addPackagesUpdatedListener(Lcom/android/server/pm/BackgroundDexOptService$PackagesUpdatedListener;)V

    .line 353
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/startop/iorap/IorapForwardingService;->mRegisteredListeners:Z

    .line 354
    return-void
.end method

.method private retryConnectToRemoteAndConfigure(I)Z
    .locals 6
    .param p1, "attempts"    # I

    .line 257
    const/16 v0, 0x3e8

    .line 259
    .local v0, "sleepTime":I
    sget-boolean v1, Lcom/google/android/startop/iorap/IorapForwardingService;->DEBUG:Z

    const-string v2, "IorapForwardingService"

    if-eqz v1, :cond_0

    .line 260
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "retryConnectToRemoteAndConfigure - attempt #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    :cond_0
    invoke-direct {p0}, Lcom/google/android/startop/iorap/IorapForwardingService;->connectToRemoteAndConfigure()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 264
    const/4 v1, 0x1

    return v1

    .line 273
    :cond_1
    if-eqz v1, :cond_2

    .line 274
    const-string v1, "Failed to connect to iorapd, is it down? Delay for 1000"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    :cond_2
    iget-object v1, p0, Lcom/google/android/startop/iorap/IorapForwardingService;->mHandler:Landroid/os/Handler;

    .line 280
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0x3e8

    .line 279
    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 283
    return v2
.end method


# virtual methods
.method protected isIorapEnabled()Z
    .locals 4

    .line 172
    nop

    .line 173
    const-string v0, "iorap_perfetto_enable"

    const-string v1, "iorapd.perfetto.enable"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/startop/iorap/IorapForwardingService;->getMendelFlag(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    .line 174
    .local v0, "isTracingEnabled":Z
    nop

    .line 175
    const-string v1, "iorap_readahead_enable"

    const-string v3, "iorapd.readahead.enable"

    invoke-direct {p0, v1, v3, v2}, Lcom/google/android/startop/iorap/IorapForwardingService;->getMendelFlag(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    .line 178
    .local v1, "isReadAheadEnabled":Z
    sget-boolean v3, Lcom/google/android/startop/iorap/IorapForwardingService;->IS_ENABLED:Z

    if-eqz v3, :cond_1

    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method public synthetic lambda$connectToRemoteAndConfigureLocked$0$IorapForwardingService(Lcom/google/android/startop/iorap/IIorap;)V
    .locals 2
    .param p1, "remote"    # Lcom/google/android/startop/iorap/IIorap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 317
    new-instance v0, Lcom/google/android/startop/iorap/IorapForwardingService$RemoteTaskListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/startop/iorap/IorapForwardingService$RemoteTaskListener;-><init>(Lcom/google/android/startop/iorap/IorapForwardingService;Lcom/google/android/startop/iorap/IorapForwardingService$1;)V

    invoke-interface {p1, v0}, Lcom/google/android/startop/iorap/IIorap;->setTaskListener(Lcom/google/android/startop/iorap/ITaskListener;)V

    return-void
.end method

.method public onBootPhase(I)V
    .locals 2
    .param p1, "phase"    # I

    .line 206
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_1

    .line 207
    sget-boolean v0, Lcom/google/android/startop/iorap/IorapForwardingService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 208
    const-string v0, "IorapForwardingService"

    const-string v1, "onBootPhase(PHASE_BOOT_COMPLETED)"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/startop/iorap/IorapForwardingService;->isIorapEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 217
    new-instance v0, Lcom/google/android/startop/iorap/IorapForwardingService$IorapdJobService;

    invoke-virtual {p0}, Lcom/google/android/startop/iorap/IorapForwardingService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/startop/iorap/IorapForwardingService$IorapdJobService;-><init>(Lcom/google/android/startop/iorap/IorapForwardingService;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/startop/iorap/IorapForwardingService;->mJobService:Lcom/google/android/startop/iorap/IorapForwardingService$IorapdJobService;

    .line 220
    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 197
    sget-boolean v0, Lcom/google/android/startop/iorap/IorapForwardingService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 198
    const-string v0, "IorapForwardingService"

    const-string v1, "onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/startop/iorap/IorapForwardingService;->retryConnectToRemoteAndConfigure(I)Z

    .line 202
    return-void
.end method

.method protected provideDeathRecipient()Landroid/os/IBinder$DeathRecipient;
    .locals 1

    .line 155
    new-instance v0, Lcom/google/android/startop/iorap/IorapForwardingService$1;

    invoke-direct {v0, p0}, Lcom/google/android/startop/iorap/IorapForwardingService$1;-><init>(Lcom/google/android/startop/iorap/IorapForwardingService;)V

    return-object v0
.end method

.method protected provideIorapRemote()Lcom/google/android/startop/iorap/IIorap;
    .locals 5

    .line 137
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "iorapd"

    invoke-static {v1}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/startop/iorap/IIorap$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/startop/iorap/IIorap;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/ServiceManager$ServiceNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 141
    .local v1, "iorap":Lcom/google/android/startop/iorap/IIorap;
    nop

    .line 144
    :try_start_1
    invoke-interface {v1}, Lcom/google/android/startop/iorap/IIorap;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/startop/iorap/IorapForwardingService;->provideDeathRecipient()Landroid/os/IBinder$DeathRecipient;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 148
    nop

    .line 150
    return-object v1

    .line 145
    :catch_0
    move-exception v2

    .line 146
    .local v2, "e":Landroid/os/RemoteException;
    invoke-static {v2}, Lcom/google/android/startop/iorap/IorapForwardingService;->handleRemoteError(Ljava/lang/Throwable;)V

    .line 147
    return-object v0

    .line 138
    .end local v1    # "iorap":Lcom/google/android/startop/iorap/IIorap;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 139
    .local v1, "e":Landroid/os/ServiceManager$ServiceNotFoundException;
    invoke-virtual {v1}, Landroid/os/ServiceManager$ServiceNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "IorapForwardingService"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    return-object v0
.end method

.method protected provideLaunchObserverRegistry()Lcom/android/server/wm/ActivityMetricsLaunchObserverRegistry;
    .locals 2

    .line 126
    const-class v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 127
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 128
    .local v0, "amtInternal":Lcom/android/server/wm/ActivityTaskManagerInternal;
    nop

    .line 129
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->getLaunchObserverRegistry()Lcom/android/server/wm/ActivityMetricsLaunchObserverRegistry;

    move-result-object v1

    .line 130
    .local v1, "launchObserverRegistry":Lcom/android/server/wm/ActivityMetricsLaunchObserverRegistry;
    return-object v1
.end method
