.class public abstract Lcom/android/server/location/eventlog/LocalEventLog;
.super Ljava/lang/Object;
.source "LocalEventLog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/eventlog/LocalEventLog$LogIterator;,
        Lcom/android/server/location/eventlog/LocalEventLog$LogEvent;,
        Lcom/android/server/location/eventlog/LocalEventLog$FillerEvent;,
        Lcom/android/server/location/eventlog/LocalEventLog$Log;
    }
.end annotation


# instance fields
.field private mLastLogRealtimeMs:J

.field private final mLog:[Lcom/android/server/location/eventlog/LocalEventLog$Log;

.field private mLogEndIndex:I

.field private mLogSize:I

.field private mStartRealtimeMs:J


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "size"    # I

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    const/4 v0, 0x0

    if-lez p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 115
    new-array v1, p1, [Lcom/android/server/location/eventlog/LocalEventLog$Log;

    iput-object v1, p0, Lcom/android/server/location/eventlog/LocalEventLog;->mLog:[Lcom/android/server/location/eventlog/LocalEventLog$Log;

    .line 116
    iput v0, p0, Lcom/android/server/location/eventlog/LocalEventLog;->mLogSize:I

    .line 117
    iput v0, p0, Lcom/android/server/location/eventlog/LocalEventLog;->mLogEndIndex:I

    .line 119
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/location/eventlog/LocalEventLog;->mStartRealtimeMs:J

    .line 120
    iput-wide v0, p0, Lcom/android/server/location/eventlog/LocalEventLog;->mLastLogRealtimeMs:J

    .line 121
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/location/eventlog/LocalEventLog;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/location/eventlog/LocalEventLog;

    .line 32
    iget-wide v0, p0, Lcom/android/server/location/eventlog/LocalEventLog;->mStartRealtimeMs:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/android/server/location/eventlog/LocalEventLog;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/eventlog/LocalEventLog;

    .line 32
    iget v0, p0, Lcom/android/server/location/eventlog/LocalEventLog;->mLogSize:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/location/eventlog/LocalEventLog;)[Lcom/android/server/location/eventlog/LocalEventLog$Log;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/eventlog/LocalEventLog;

    .line 32
    iget-object v0, p0, Lcom/android/server/location/eventlog/LocalEventLog;->mLog:[Lcom/android/server/location/eventlog/LocalEventLog$Log;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/location/eventlog/LocalEventLog;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/eventlog/LocalEventLog;
    .param p1, "x1"    # I

    .line 32
    invoke-direct {p0, p1}, Lcom/android/server/location/eventlog/LocalEventLog;->incrementIndex(I)I

    move-result v0

    return v0
.end method

.method private addLogEventInternal(Lcom/android/server/location/eventlog/LocalEventLog$Log;)V
    .locals 6
    .param p1, "event"    # Lcom/android/server/location/eventlog/LocalEventLog$Log;

    .line 175
    iget-wide v0, p0, Lcom/android/server/location/eventlog/LocalEventLog;->mStartRealtimeMs:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-wide v4, p0, Lcom/android/server/location/eventlog/LocalEventLog;->mLastLogRealtimeMs:J

    cmp-long v0, v4, v2

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 177
    iget v0, p0, Lcom/android/server/location/eventlog/LocalEventLog;->mLogSize:I

    iget-object v2, p0, Lcom/android/server/location/eventlog/LocalEventLog;->mLog:[Lcom/android/server/location/eventlog/LocalEventLog$Log;

    array-length v3, v2

    if-ne v0, v3, :cond_1

    .line 179
    iget-wide v0, p0, Lcom/android/server/location/eventlog/LocalEventLog;->mStartRealtimeMs:J

    invoke-direct {p0}, Lcom/android/server/location/eventlog/LocalEventLog;->startIndex()I

    move-result v3

    aget-object v2, v2, v3

    invoke-interface {v2}, Lcom/android/server/location/eventlog/LocalEventLog$Log;->getTimeDeltaMs()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/location/eventlog/LocalEventLog;->mStartRealtimeMs:J

    goto :goto_1

    .line 182
    :cond_1
    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/location/eventlog/LocalEventLog;->mLogSize:I

    .line 186
    :goto_1
    iget-object v0, p0, Lcom/android/server/location/eventlog/LocalEventLog;->mLog:[Lcom/android/server/location/eventlog/LocalEventLog$Log;

    iget v1, p0, Lcom/android/server/location/eventlog/LocalEventLog;->mLogEndIndex:I

    aput-object p1, v0, v1

    .line 187
    invoke-direct {p0, v1}, Lcom/android/server/location/eventlog/LocalEventLog;->incrementIndex(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/location/eventlog/LocalEventLog;->mLogEndIndex:I

    .line 188
    iget-wide v0, p0, Lcom/android/server/location/eventlog/LocalEventLog;->mLastLogRealtimeMs:J

    invoke-interface {p1}, Lcom/android/server/location/eventlog/LocalEventLog$Log;->getTimeDeltaMs()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/location/eventlog/LocalEventLog;->mLastLogRealtimeMs:J

    .line 189
    return-void
.end method

.method private incrementIndex(I)I
    .locals 1
    .param p1, "index"    # I

    .line 231
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 232
    invoke-direct {p0}, Lcom/android/server/location/eventlog/LocalEventLog;->startIndex()I

    move-result v0

    return v0

    .line 233
    :cond_0
    if-ltz p1, :cond_1

    .line 234
    add-int/lit8 v0, p1, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/location/eventlog/LocalEventLog;->wrapIndex(I)I

    move-result v0

    return v0

    .line 236
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method private declared-synchronized isEmpty()Z
    .locals 1

    monitor-enter p0

    .line 202
    :try_start_0
    iget v0, p0, Lcom/android/server/location/eventlog/LocalEventLog;->mLogSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    .line 202
    .end local p0    # "this":Lcom/android/server/location/eventlog/LocalEventLog;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private startIndex()I
    .locals 2

    .line 226
    iget v0, p0, Lcom/android/server/location/eventlog/LocalEventLog;->mLogEndIndex:I

    iget v1, p0, Lcom/android/server/location/eventlog/LocalEventLog;->mLogSize:I

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/android/server/location/eventlog/LocalEventLog;->wrapIndex(I)I

    move-result v0

    return v0
.end method

.method private wrapIndex(I)I
    .locals 3
    .param p1, "index"    # I

    .line 243
    iget-object v0, p0, Lcom/android/server/location/eventlog/LocalEventLog;->mLog:[Lcom/android/server/location/eventlog/LocalEventLog$Log;

    array-length v1, v0

    rem-int v1, p1, v1

    array-length v2, v0

    add-int/2addr v1, v2

    array-length v0, v0

    rem-int/2addr v1, v0

    return v1
.end method


# virtual methods
.method public varargs declared-synchronized addLogEvent(I[Ljava/lang/Object;)V
    .locals 10
    .param p1, "event"    # I
    .param p2, "args"    # [Ljava/lang/Object;

    monitor-enter p0

    .line 143
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 146
    .local v0, "timeMs":J
    const-wide/16 v2, 0x0

    .line 147
    .local v2, "delta":J
    invoke-direct {p0}, Lcom/android/server/location/eventlog/LocalEventLog;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 148
    iget-wide v4, p0, Lcom/android/server/location/eventlog/LocalEventLog;->mLastLogRealtimeMs:J

    sub-long v2, v0, v4

    .line 153
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-ltz v4, :cond_1

    const-wide v4, 0xffffffffL

    div-long v6, v2, v4

    iget-object v8, p0, Lcom/android/server/location/eventlog/LocalEventLog;->mLog:[Lcom/android/server/location/eventlog/LocalEventLog$Log;

    array-length v8, v8

    add-int/lit8 v8, v8, -0x1

    int-to-long v8, v8

    cmp-long v6, v6, v8

    if-ltz v6, :cond_0

    goto :goto_1

    .line 157
    :cond_0
    :goto_0
    cmp-long v6, v2, v4

    if-ltz v6, :cond_2

    .line 158
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    .line 159
    .local v6, "timeDelta":J
    new-instance v8, Lcom/android/server/location/eventlog/LocalEventLog$FillerEvent;

    invoke-direct {v8, v6, v7}, Lcom/android/server/location/eventlog/LocalEventLog$FillerEvent;-><init>(J)V

    invoke-direct {p0, v8}, Lcom/android/server/location/eventlog/LocalEventLog;->addLogEventInternal(Lcom/android/server/location/eventlog/LocalEventLog$Log;)V

    .line 160
    sub-long/2addr v2, v6

    .line 161
    .end local v6    # "timeDelta":J
    goto :goto_0

    .line 154
    .end local p0    # "this":Lcom/android/server/location/eventlog/LocalEventLog;
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/location/eventlog/LocalEventLog;->clear()V

    .line 155
    const-wide/16 v2, 0x0

    .line 166
    :cond_2
    invoke-direct {p0}, Lcom/android/server/location/eventlog/LocalEventLog;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 167
    iput-wide v0, p0, Lcom/android/server/location/eventlog/LocalEventLog;->mStartRealtimeMs:J

    .line 168
    iput-wide v0, p0, Lcom/android/server/location/eventlog/LocalEventLog;->mLastLogRealtimeMs:J

    .line 171
    :cond_3
    invoke-virtual {p0, v2, v3, p1, p2}, Lcom/android/server/location/eventlog/LocalEventLog;->createLogEvent(JI[Ljava/lang/Object;)Lcom/android/server/location/eventlog/LocalEventLog$LogEvent;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/location/eventlog/LocalEventLog;->addLogEventInternal(Lcom/android/server/location/eventlog/LocalEventLog$Log;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    monitor-exit p0

    return-void

    .line 142
    .end local v0    # "timeMs":J
    .end local v2    # "delta":J
    .end local p1    # "event":I
    .end local p2    # "args":[Ljava/lang/Object;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized clear()V
    .locals 2

    monitor-enter p0

    .line 193
    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/android/server/location/eventlog/LocalEventLog;->mLogEndIndex:I

    .line 194
    iput v0, p0, Lcom/android/server/location/eventlog/LocalEventLog;->mLogSize:I

    .line 196
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/location/eventlog/LocalEventLog;->mStartRealtimeMs:J

    .line 197
    iput-wide v0, p0, Lcom/android/server/location/eventlog/LocalEventLog;->mLastLogRealtimeMs:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    monitor-exit p0

    return-void

    .line 192
    .end local p0    # "this":Lcom/android/server/location/eventlog/LocalEventLog;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected varargs abstract createLogEvent(JI[Ljava/lang/Object;)Lcom/android/server/location/eventlog/LocalEventLog$LogEvent;
.end method

.method protected getTimePrefix(J)Ljava/lang/String;
    .locals 2
    .param p1, "timeMs"    # J

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1, p2}, Landroid/util/TimeUtils;->logTimeOfDay(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized iterate(Ljava/lang/String;Ljava/util/function/Consumer;)V
    .locals 2
    .param p1, "filter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .local p2, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/String;>;"
    monitor-enter p0

    .line 218
    :try_start_0
    new-instance v0, Lcom/android/server/location/eventlog/LocalEventLog$LogIterator;

    invoke-direct {v0, p0, p1}, Lcom/android/server/location/eventlog/LocalEventLog$LogIterator;-><init>(Lcom/android/server/location/eventlog/LocalEventLog;Ljava/lang/String;)V

    .line 219
    .local v0, "it":Lcom/android/server/location/eventlog/LocalEventLog$LogIterator;
    :goto_0
    invoke-virtual {v0}, Lcom/android/server/location/eventlog/LocalEventLog$LogIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 220
    invoke-virtual {v0}, Lcom/android/server/location/eventlog/LocalEventLog$LogIterator;->next()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 222
    .end local p0    # "this":Lcom/android/server/location/eventlog/LocalEventLog;
    :cond_0
    monitor-exit p0

    return-void

    .line 217
    .end local v0    # "it":Lcom/android/server/location/eventlog/LocalEventLog$LogIterator;
    .end local p1    # "filter":Ljava/lang/String;
    .end local p2    # "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/String;>;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized iterate(Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/String;>;"
    monitor-enter p0

    .line 207
    :try_start_0
    new-instance v0, Lcom/android/server/location/eventlog/LocalEventLog$LogIterator;

    invoke-direct {v0, p0}, Lcom/android/server/location/eventlog/LocalEventLog$LogIterator;-><init>(Lcom/android/server/location/eventlog/LocalEventLog;)V

    .line 208
    .local v0, "it":Lcom/android/server/location/eventlog/LocalEventLog$LogIterator;
    :goto_0
    invoke-virtual {v0}, Lcom/android/server/location/eventlog/LocalEventLog$LogIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 209
    invoke-virtual {v0}, Lcom/android/server/location/eventlog/LocalEventLog$LogIterator;->next()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 211
    .end local p0    # "this":Lcom/android/server/location/eventlog/LocalEventLog;
    :cond_0
    monitor-exit p0

    return-void

    .line 206
    .end local v0    # "it":Lcom/android/server/location/eventlog/LocalEventLog$LogIterator;
    .end local p1    # "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/String;>;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
