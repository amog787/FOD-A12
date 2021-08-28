.class public final Lcom/android/server/pm/IncrementalStates;
.super Ljava/lang/Object;
.source "IncrementalStates.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/IncrementalStates$LoadingState;,
        Lcom/android/server/pm/IncrementalStates$Callback;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "IncrementalStates"


# instance fields
.field private mCallback:Lcom/android/server/pm/IncrementalStates$Callback;

.field private final mHandler:Landroid/os/Handler;

.field private final mLoadingState:Lcom/android/server/pm/IncrementalStates$LoadingState;

.field private final mLock:Ljava/lang/Object;


# direct methods
.method public static synthetic $r8$lambda$wDW3JFnyigbto83d_f-gW68sQNk(Lcom/android/server/pm/IncrementalStates;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/pm/IncrementalStates;->reportFullyLoaded()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 49
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/pm/IncrementalStates;-><init>(ZF)V

    .line 50
    return-void
.end method

.method public constructor <init>(ZF)V
    .locals 1
    .param p1, "isLoading"    # Z
    .param p2, "loadingProgress"    # F

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/IncrementalStates;->mHandler:Landroid/os/Handler;

    .line 41
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/IncrementalStates;->mLock:Ljava/lang/Object;

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pm/IncrementalStates;->mCallback:Lcom/android/server/pm/IncrementalStates$Callback;

    .line 53
    new-instance v0, Lcom/android/server/pm/IncrementalStates$LoadingState;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/pm/IncrementalStates$LoadingState;-><init>(Lcom/android/server/pm/IncrementalStates;ZF)V

    iput-object v0, p0, Lcom/android/server/pm/IncrementalStates;->mLoadingState:Lcom/android/server/pm/IncrementalStates$LoadingState;

    .line 54
    return-void
.end method

.method private onLoadingStateChanged()V
    .locals 2

    .line 86
    iget-object v0, p0, Lcom/android/server/pm/IncrementalStates;->mHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/server/pm/IncrementalStates$$ExternalSyntheticLambda0;->INSTANCE:Lcom/android/server/pm/IncrementalStates$$ExternalSyntheticLambda0;

    invoke-static {v1, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainRunnable(Ljava/util/function/Consumer;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v1

    .line 88
    invoke-interface {v1}, Lcom/android/internal/util/function/pooled/PooledRunnable;->recycleOnUse()Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v1

    .line 86
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 89
    return-void
.end method

.method private reportFullyLoaded()V
    .locals 2

    .line 93
    iget-object v0, p0, Lcom/android/server/pm/IncrementalStates;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 94
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/IncrementalStates;->mCallback:Lcom/android/server/pm/IncrementalStates$Callback;

    .line 95
    .local v1, "callback":Lcom/android/server/pm/IncrementalStates$Callback;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    if-eqz v1, :cond_0

    .line 97
    invoke-interface {v1}, Lcom/android/server/pm/IncrementalStates$Callback;->onPackageFullyLoaded()V

    .line 99
    :cond_0
    return-void

    .line 95
    .end local v1    # "callback":Lcom/android/server/pm/IncrementalStates$Callback;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private updateProgressLocked(F)V
    .locals 3
    .param p1, "progress"    # F

    .line 146
    iget-object v0, p0, Lcom/android/server/pm/IncrementalStates;->mLoadingState:Lcom/android/server/pm/IncrementalStates$LoadingState;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/IncrementalStates$LoadingState;->setProgress(F)V

    .line 147
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float v1, v0, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v2, 0x322bcc77    # 1.0E-8f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 151
    iget-object v1, p0, Lcom/android/server/pm/IncrementalStates;->mLoadingState:Lcom/android/server/pm/IncrementalStates$LoadingState;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/IncrementalStates$LoadingState;->setProgress(F)V

    .line 152
    iget-object v0, p0, Lcom/android/server/pm/IncrementalStates;->mLoadingState:Lcom/android/server/pm/IncrementalStates$LoadingState;

    invoke-virtual {v0}, Lcom/android/server/pm/IncrementalStates$LoadingState;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/android/server/pm/IncrementalStates;->mLoadingState:Lcom/android/server/pm/IncrementalStates$LoadingState;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/pm/IncrementalStates$LoadingState;->adoptNewLoadingStateLocked(Z)V

    .line 156
    :cond_0
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 211
    if-ne p1, p0, :cond_0

    .line 212
    const/4 v0, 0x1

    return v0

    .line 214
    :cond_0
    instance-of v0, p1, Lcom/android/server/pm/IncrementalStates;

    if-nez v0, :cond_1

    .line 215
    const/4 v0, 0x0

    return v0

    .line 217
    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/android/server/pm/IncrementalStates;

    .line 218
    .local v0, "l":Lcom/android/server/pm/IncrementalStates;
    iget-object v1, v0, Lcom/android/server/pm/IncrementalStates;->mLoadingState:Lcom/android/server/pm/IncrementalStates$LoadingState;

    iget-object v2, p0, Lcom/android/server/pm/IncrementalStates;->mLoadingState:Lcom/android/server/pm/IncrementalStates$LoadingState;

    invoke-virtual {v1, v2}, Lcom/android/server/pm/IncrementalStates$LoadingState;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public getIncrementalStatesInfo()Landroid/content/pm/IncrementalStatesInfo;
    .locals 4

    .line 135
    iget-object v0, p0, Lcom/android/server/pm/IncrementalStates;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 136
    :try_start_0
    new-instance v1, Landroid/content/pm/IncrementalStatesInfo;

    iget-object v2, p0, Lcom/android/server/pm/IncrementalStates;->mLoadingState:Lcom/android/server/pm/IncrementalStates$LoadingState;

    .line 137
    invoke-virtual {v2}, Lcom/android/server/pm/IncrementalStates$LoadingState;->isLoading()Z

    move-result v2

    iget-object v3, p0, Lcom/android/server/pm/IncrementalStates;->mLoadingState:Lcom/android/server/pm/IncrementalStates$LoadingState;

    .line 138
    invoke-virtual {v3}, Lcom/android/server/pm/IncrementalStates$LoadingState;->getProgress()F

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/content/pm/IncrementalStatesInfo;-><init>(ZF)V

    monitor-exit v0

    .line 136
    return-object v1

    .line 139
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public hashCode()I
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/android/server/pm/IncrementalStates;->mLoadingState:Lcom/android/server/pm/IncrementalStates$LoadingState;

    invoke-virtual {v0}, Lcom/android/server/pm/IncrementalStates$LoadingState;->hashCode()I

    move-result v0

    return v0
.end method

.method public onCommit(Z)V
    .locals 2
    .param p1, "isIncremental"    # Z

    .line 77
    if-nez p1, :cond_0

    .line 78
    iget-object v0, p0, Lcom/android/server/pm/IncrementalStates;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 79
    const/high16 v1, 0x3f800000    # 1.0f

    :try_start_0
    invoke-direct {p0, v1}, Lcom/android/server/pm/IncrementalStates;->updateProgressLocked(F)V

    .line 80
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    invoke-direct {p0}, Lcom/android/server/pm/IncrementalStates;->onLoadingStateChanged()V

    goto :goto_0

    .line 80
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 83
    :cond_0
    :goto_0
    return-void
.end method

.method public setCallback(Lcom/android/server/pm/IncrementalStates$Callback;)V
    .locals 2
    .param p1, "callback"    # Lcom/android/server/pm/IncrementalStates$Callback;

    .line 110
    iget-object v0, p0, Lcom/android/server/pm/IncrementalStates;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 111
    :try_start_0
    iput-object p1, p0, Lcom/android/server/pm/IncrementalStates;->mCallback:Lcom/android/server/pm/IncrementalStates$Callback;

    .line 112
    monitor-exit v0

    .line 113
    return-void

    .line 112
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setProgress(F)V
    .locals 2
    .param p1, "progress"    # F

    .line 122
    iget-object v0, p0, Lcom/android/server/pm/IncrementalStates;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 123
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/IncrementalStates;->updateProgressLocked(F)V

    .line 124
    iget-object v1, p0, Lcom/android/server/pm/IncrementalStates;->mLoadingState:Lcom/android/server/pm/IncrementalStates$LoadingState;

    invoke-virtual {v1}, Lcom/android/server/pm/IncrementalStates$LoadingState;->isLoading()Z

    move-result v1

    .line 125
    .local v1, "newLoadingState":Z
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    if-nez v1, :cond_0

    .line 127
    invoke-direct {p0}, Lcom/android/server/pm/IncrementalStates;->onLoadingStateChanged()V

    .line 129
    :cond_0
    return-void

    .line 125
    .end local v1    # "newLoadingState":Z
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
