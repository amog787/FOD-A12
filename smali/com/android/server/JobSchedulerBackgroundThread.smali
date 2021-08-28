.class public final Lcom/android/server/JobSchedulerBackgroundThread;
.super Landroid/os/HandlerThread;
.source "JobSchedulerBackgroundThread.java"


# static fields
.field private static final SLOW_DELIVERY_THRESHOLD_MS:J = 0x7530L

.field private static final SLOW_DISPATCH_THRESHOLD_MS:J = 0x2710L

.field private static sHandler:Landroid/os/Handler;

.field private static sHandlerExecutor:Ljava/util/concurrent/Executor;

.field private static sInstance:Lcom/android/server/JobSchedulerBackgroundThread;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 40
    const-string/jumbo v0, "jobscheduler.bg"

    const/16 v1, 0xa

    invoke-direct {p0, v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 41
    return-void
.end method

.method private static ensureThreadLocked()V
    .locals 5

    .line 44
    sget-object v0, Lcom/android/server/JobSchedulerBackgroundThread;->sInstance:Lcom/android/server/JobSchedulerBackgroundThread;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Lcom/android/server/JobSchedulerBackgroundThread;

    invoke-direct {v0}, Lcom/android/server/JobSchedulerBackgroundThread;-><init>()V

    sput-object v0, Lcom/android/server/JobSchedulerBackgroundThread;->sInstance:Lcom/android/server/JobSchedulerBackgroundThread;

    .line 46
    invoke-virtual {v0}, Lcom/android/server/JobSchedulerBackgroundThread;->start()V

    .line 47
    sget-object v0, Lcom/android/server/JobSchedulerBackgroundThread;->sInstance:Lcom/android/server/JobSchedulerBackgroundThread;

    invoke-virtual {v0}, Lcom/android/server/JobSchedulerBackgroundThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 48
    .local v0, "looper":Landroid/os/Looper;
    const-wide/32 v1, 0x80000

    invoke-virtual {v0, v1, v2}, Landroid/os/Looper;->setTraceTag(J)V

    .line 49
    const-wide/16 v1, 0x2710

    const-wide/16 v3, 0x7530

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/Looper;->setSlowLogThresholdMs(JJ)V

    .line 51
    new-instance v1, Landroid/os/Handler;

    sget-object v2, Lcom/android/server/JobSchedulerBackgroundThread;->sInstance:Lcom/android/server/JobSchedulerBackgroundThread;

    invoke-virtual {v2}, Lcom/android/server/JobSchedulerBackgroundThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/android/server/JobSchedulerBackgroundThread;->sHandler:Landroid/os/Handler;

    .line 52
    new-instance v1, Landroid/os/HandlerExecutor;

    sget-object v2, Lcom/android/server/JobSchedulerBackgroundThread;->sHandler:Landroid/os/Handler;

    invoke-direct {v1, v2}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    sput-object v1, Lcom/android/server/JobSchedulerBackgroundThread;->sHandlerExecutor:Ljava/util/concurrent/Executor;

    .line 54
    .end local v0    # "looper":Landroid/os/Looper;
    :cond_0
    return-void
.end method

.method public static get()Lcom/android/server/JobSchedulerBackgroundThread;
    .locals 2

    .line 58
    const-class v0, Lcom/android/server/JobSchedulerBackgroundThread;

    monitor-enter v0

    .line 59
    :try_start_0
    invoke-static {}, Lcom/android/server/JobSchedulerBackgroundThread;->ensureThreadLocked()V

    .line 60
    sget-object v1, Lcom/android/server/JobSchedulerBackgroundThread;->sInstance:Lcom/android/server/JobSchedulerBackgroundThread;

    monitor-exit v0

    return-object v1

    .line 61
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getExecutor()Ljava/util/concurrent/Executor;
    .locals 2

    .line 74
    const-class v0, Lcom/android/server/JobSchedulerBackgroundThread;

    monitor-enter v0

    .line 75
    :try_start_0
    invoke-static {}, Lcom/android/server/JobSchedulerBackgroundThread;->ensureThreadLocked()V

    .line 76
    sget-object v1, Lcom/android/server/JobSchedulerBackgroundThread;->sHandlerExecutor:Ljava/util/concurrent/Executor;

    monitor-exit v0

    return-object v1

    .line 77
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getHandler()Landroid/os/Handler;
    .locals 2

    .line 66
    const-class v0, Lcom/android/server/JobSchedulerBackgroundThread;

    monitor-enter v0

    .line 67
    :try_start_0
    invoke-static {}, Lcom/android/server/JobSchedulerBackgroundThread;->ensureThreadLocked()V

    .line 68
    sget-object v1, Lcom/android/server/JobSchedulerBackgroundThread;->sHandler:Landroid/os/Handler;

    monitor-exit v0

    return-object v1

    .line 69
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
