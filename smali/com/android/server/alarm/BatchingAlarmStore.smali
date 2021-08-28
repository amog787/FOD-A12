.class public Lcom/android/server/alarm/BatchingAlarmStore;
.super Ljava/lang/Object;
.source "BatchingAlarmStore.java"

# interfaces
.implements Lcom/android/server/alarm/AlarmStore;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/alarm/BatchingAlarmStore$Batch;,
        Lcom/android/server/alarm/BatchingAlarmStore$Stats;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String;

.field private static final sBatchOrder:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/server/alarm/BatchingAlarmStore$Batch;",
            ">;"
        }
    .end annotation
.end field

.field private static final sIncreasingTimeOrder:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/server/alarm/Alarm;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAlarmBatches:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/alarm/BatchingAlarmStore$Batch;",
            ">;"
        }
    .end annotation
.end field

.field private mOnAlarmClockRemoved:Ljava/lang/Runnable;

.field private mSize:I

.field final mStatLogger:Lcom/android/internal/util/jobs/StatLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    const-class v0, Lcom/android/server/alarm/BatchingAlarmStore;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/alarm/BatchingAlarmStore;->TAG:Ljava/lang/String;

    .line 60
    sget-object v0, Lcom/android/server/alarm/BatchingAlarmStore$$ExternalSyntheticLambda1;->INSTANCE:Lcom/android/server/alarm/BatchingAlarmStore$$ExternalSyntheticLambda1;

    invoke-static {v0}, Ljava/util/Comparator;->comparingLong(Ljava/util/function/ToLongFunction;)Ljava/util/Comparator;

    move-result-object v0

    sput-object v0, Lcom/android/server/alarm/BatchingAlarmStore;->sBatchOrder:Ljava/util/Comparator;

    .line 62
    sget-object v0, Lcom/android/server/alarm/BatchingAlarmStore$$ExternalSyntheticLambda0;->INSTANCE:Lcom/android/server/alarm/BatchingAlarmStore$$ExternalSyntheticLambda0;

    invoke-static {v0}, Ljava/util/Comparator;->comparingLong(Ljava/util/function/ToLongFunction;)Ljava/util/Comparator;

    move-result-object v0

    sput-object v0, Lcom/android/server/alarm/BatchingAlarmStore;->sIncreasingTimeOrder:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/alarm/BatchingAlarmStore;->mAlarmBatches:Ljava/util/ArrayList;

    .line 55
    new-instance v0, Lcom/android/internal/util/jobs/StatLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/server/alarm/BatchingAlarmStore;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " stats"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "REBATCH_ALL_ALARMS"

    const-string v3, "GET_COUNT"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/internal/util/jobs/StatLogger;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/alarm/BatchingAlarmStore;->mStatLogger:Lcom/android/internal/util/jobs/StatLogger;

    return-void
.end method

.method static synthetic access$000()Ljava/util/Comparator;
    .locals 1

    .line 42
    sget-object v0, Lcom/android/server/alarm/BatchingAlarmStore;->sIncreasingTimeOrder:Ljava/util/Comparator;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/alarm/BatchingAlarmStore;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/alarm/BatchingAlarmStore;

    .line 42
    iget-object v0, p0, Lcom/android/server/alarm/BatchingAlarmStore;->mOnAlarmClockRemoved:Ljava/lang/Runnable;

    return-object v0
.end method

.method static addBatch(Ljava/util/ArrayList;Lcom/android/server/alarm/BatchingAlarmStore$Batch;)V
    .locals 2
    .param p1, "newBatch"    # Lcom/android/server/alarm/BatchingAlarmStore$Batch;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/alarm/BatchingAlarmStore$Batch;",
            ">;",
            "Lcom/android/server/alarm/BatchingAlarmStore$Batch;",
            ")V"
        }
    .end annotation

    .line 257
    .local p0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/alarm/BatchingAlarmStore$Batch;>;"
    sget-object v0, Lcom/android/server/alarm/BatchingAlarmStore;->sBatchOrder:Ljava/util/Comparator;

    invoke-static {p0, p1, v0}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    .line 258
    .local v0, "index":I
    if-gez v0, :cond_0

    .line 259
    rsub-int/lit8 v1, v0, 0x0

    add-int/lit8 v0, v1, -0x1

    .line 261
    :cond_0
    invoke-virtual {p0, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 262
    return-void
.end method

.method private attemptCoalesce(JJ)I
    .locals 4
    .param p1, "whenElapsed"    # J
    .param p3, "maxWhen"    # J

    .line 266
    iget-object v0, p0, Lcom/android/server/alarm/BatchingAlarmStore;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 267
    .local v0, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 268
    iget-object v2, p0, Lcom/android/server/alarm/BatchingAlarmStore;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/alarm/BatchingAlarmStore$Batch;

    .line 269
    .local v2, "b":Lcom/android/server/alarm/BatchingAlarmStore$Batch;
    iget v3, v2, Lcom/android/server/alarm/BatchingAlarmStore$Batch;->mFlags:I

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_0

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/android/server/alarm/BatchingAlarmStore$Batch;->canHold(JJ)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 270
    return v1

    .line 267
    .end local v2    # "b":Lcom/android/server/alarm/BatchingAlarmStore$Batch;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 273
    .end local v1    # "i":I
    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method private insertAndBatchAlarm(Lcom/android/server/alarm/Alarm;)V
    .locals 4
    .param p1, "alarm"    # Lcom/android/server/alarm/Alarm;

    .line 240
    iget v0, p1, Lcom/android/server/alarm/Alarm;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    .line 241
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/alarm/Alarm;->getWhenElapsed()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/android/server/alarm/Alarm;->getMaxWhenElapsed()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/alarm/BatchingAlarmStore;->attemptCoalesce(JJ)I

    move-result v0

    :goto_0
    nop

    .line 243
    .local v0, "whichBatch":I
    if-gez v0, :cond_1

    .line 244
    iget-object v1, p0, Lcom/android/server/alarm/BatchingAlarmStore;->mAlarmBatches:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/server/alarm/BatchingAlarmStore$Batch;

    invoke-direct {v2, p0, p1}, Lcom/android/server/alarm/BatchingAlarmStore$Batch;-><init>(Lcom/android/server/alarm/BatchingAlarmStore;Lcom/android/server/alarm/Alarm;)V

    invoke-static {v1, v2}, Lcom/android/server/alarm/BatchingAlarmStore;->addBatch(Ljava/util/ArrayList;Lcom/android/server/alarm/BatchingAlarmStore$Batch;)V

    goto :goto_1

    .line 246
    :cond_1
    iget-object v1, p0, Lcom/android/server/alarm/BatchingAlarmStore;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/alarm/BatchingAlarmStore$Batch;

    .line 247
    .local v1, "batch":Lcom/android/server/alarm/BatchingAlarmStore$Batch;
    invoke-virtual {v1, p1}, Lcom/android/server/alarm/BatchingAlarmStore$Batch;->add(Lcom/android/server/alarm/Alarm;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 250
    iget-object v2, p0, Lcom/android/server/alarm/BatchingAlarmStore;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 251
    iget-object v2, p0, Lcom/android/server/alarm/BatchingAlarmStore;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-static {v2, v1}, Lcom/android/server/alarm/BatchingAlarmStore;->addBatch(Ljava/util/ArrayList;Lcom/android/server/alarm/BatchingAlarmStore$Batch;)V

    .line 254
    .end local v1    # "batch":Lcom/android/server/alarm/BatchingAlarmStore$Batch;
    :cond_2
    :goto_1
    return-void
.end method

.method static synthetic lambda$static$0(Lcom/android/server/alarm/BatchingAlarmStore$Batch;)J
    .locals 2
    .param p0, "b"    # Lcom/android/server/alarm/BatchingAlarmStore$Batch;

    .line 60
    iget-wide v0, p0, Lcom/android/server/alarm/BatchingAlarmStore$Batch;->mStart:J

    return-wide v0
.end method

.method private rebatchAllAlarms()V
    .locals 7

    .line 121
    iget-object v0, p0, Lcom/android/server/alarm/BatchingAlarmStore;->mStatLogger:Lcom/android/internal/util/jobs/StatLogger;

    invoke-virtual {v0}, Lcom/android/internal/util/jobs/StatLogger;->getTime()J

    move-result-wide v0

    .line 122
    .local v0, "start":J
    iget-object v2, p0, Lcom/android/server/alarm/BatchingAlarmStore;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 123
    .local v2, "oldBatches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/alarm/BatchingAlarmStore$Batch;>;"
    iget-object v3, p0, Lcom/android/server/alarm/BatchingAlarmStore;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 124
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/alarm/BatchingAlarmStore$Batch;

    .line 125
    .local v4, "batch":Lcom/android/server/alarm/BatchingAlarmStore$Batch;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    invoke-virtual {v4}, Lcom/android/server/alarm/BatchingAlarmStore$Batch;->size()I

    move-result v6

    if-ge v5, v6, :cond_0

    .line 126
    invoke-virtual {v4, v5}, Lcom/android/server/alarm/BatchingAlarmStore$Batch;->get(I)Lcom/android/server/alarm/Alarm;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/alarm/BatchingAlarmStore;->insertAndBatchAlarm(Lcom/android/server/alarm/Alarm;)V

    .line 125
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 128
    .end local v4    # "batch":Lcom/android/server/alarm/BatchingAlarmStore$Batch;
    .end local v5    # "i":I
    :cond_0
    goto :goto_0

    .line 129
    :cond_1
    iget-object v3, p0, Lcom/android/server/alarm/BatchingAlarmStore;->mStatLogger:Lcom/android/internal/util/jobs/StatLogger;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v0, v1}, Lcom/android/internal/util/jobs/StatLogger;->logDurationStat(IJ)J

    .line 130
    return-void
.end method


# virtual methods
.method public add(Lcom/android/server/alarm/Alarm;)V
    .locals 1
    .param p1, "a"    # Lcom/android/server/alarm/Alarm;

    .line 67
    invoke-direct {p0, p1}, Lcom/android/server/alarm/BatchingAlarmStore;->insertAndBatchAlarm(Lcom/android/server/alarm/Alarm;)V

    .line 68
    iget v0, p0, Lcom/android/server/alarm/BatchingAlarmStore;->mSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/alarm/BatchingAlarmStore;->mSize:I

    .line 69
    return-void
.end method

.method public addAll(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/alarm/Alarm;",
            ">;)V"
        }
    .end annotation

    .line 73
    .local p1, "alarms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/alarm/Alarm;>;"
    if-nez p1, :cond_0

    .line 74
    return-void

    .line 76
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/alarm/Alarm;

    .line 77
    .local v1, "a":Lcom/android/server/alarm/Alarm;
    invoke-virtual {p0, v1}, Lcom/android/server/alarm/BatchingAlarmStore;->add(Lcom/android/server/alarm/Alarm;)V

    .line 78
    .end local v1    # "a":Lcom/android/server/alarm/Alarm;
    goto :goto_0

    .line 79
    :cond_1
    return-void
.end method

.method public asList()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/alarm/Alarm;",
            ">;"
        }
    .end annotation

    .line 188
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 189
    .local v0, "allAlarms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/alarm/Alarm;>;"
    iget-object v1, p0, Lcom/android/server/alarm/BatchingAlarmStore;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/alarm/BatchingAlarmStore$Batch;

    .line 190
    .local v2, "batch":Lcom/android/server/alarm/BatchingAlarmStore$Batch;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-virtual {v2}, Lcom/android/server/alarm/BatchingAlarmStore$Batch;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 191
    invoke-virtual {v2, v3}, Lcom/android/server/alarm/BatchingAlarmStore$Batch;->get(I)Lcom/android/server/alarm/Alarm;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 193
    .end local v2    # "batch":Lcom/android/server/alarm/BatchingAlarmStore$Batch;
    .end local v3    # "i":I
    :cond_0
    goto :goto_0

    .line 194
    :cond_1
    return-object v0
.end method

.method public dump(Landroid/util/IndentingPrintWriter;JLjava/text/SimpleDateFormat;)V
    .locals 3
    .param p1, "ipw"    # Landroid/util/IndentingPrintWriter;
    .param p2, "nowElapsed"    # J
    .param p4, "sdf"    # Ljava/text/SimpleDateFormat;

    .line 199
    const-string v0, "Pending alarm batches: "

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 200
    iget-object v0, p0, Lcom/android/server/alarm/BatchingAlarmStore;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 201
    iget-object v0, p0, Lcom/android/server/alarm/BatchingAlarmStore;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/alarm/BatchingAlarmStore$Batch;

    .line 202
    .local v1, "b":Lcom/android/server/alarm/BatchingAlarmStore$Batch;
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/Object;)V

    .line 203
    const/16 v2, 0x3a

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(C)V

    .line 204
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 205
    iget-object v2, v1, Lcom/android/server/alarm/BatchingAlarmStore$Batch;->mAlarms:Ljava/util/ArrayList;

    invoke-static {p1, v2, p2, p3, p4}, Lcom/android/server/alarm/AlarmManagerService;->dumpAlarmList(Landroid/util/IndentingPrintWriter;Ljava/util/ArrayList;JLjava/text/SimpleDateFormat;)V

    .line 206
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 207
    .end local v1    # "b":Lcom/android/server/alarm/BatchingAlarmStore$Batch;
    goto :goto_0

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/android/server/alarm/BatchingAlarmStore;->mStatLogger:Lcom/android/internal/util/jobs/StatLogger;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/jobs/StatLogger;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 209
    return-void
.end method

.method public dumpProto(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 8
    .param p1, "pos"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "nowElapsed"    # J

    .line 213
    iget-object v0, p0, Lcom/android/server/alarm/BatchingAlarmStore;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/alarm/BatchingAlarmStore$Batch;

    .line 214
    .local v1, "b":Lcom/android/server/alarm/BatchingAlarmStore$Batch;
    const-wide v4, 0x20b00000013L

    move-object v2, v1

    move-object v3, p1

    move-wide v6, p2

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/alarm/BatchingAlarmStore$Batch;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JJ)V

    .line 215
    .end local v1    # "b":Lcom/android/server/alarm/BatchingAlarmStore$Batch;
    goto :goto_0

    .line 216
    :cond_0
    return-void
.end method

.method public getCount(Ljava/util/function/Predicate;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/alarm/Alarm;",
            ">;)I"
        }
    .end annotation

    .line 225
    .local p1, "condition":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/alarm/Alarm;>;"
    iget-object v0, p0, Lcom/android/server/alarm/BatchingAlarmStore;->mStatLogger:Lcom/android/internal/util/jobs/StatLogger;

    invoke-virtual {v0}, Lcom/android/internal/util/jobs/StatLogger;->getTime()J

    move-result-wide v0

    .line 227
    .local v0, "start":J
    const/4 v2, 0x0

    .line 228
    .local v2, "count":I
    iget-object v3, p0, Lcom/android/server/alarm/BatchingAlarmStore;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/alarm/BatchingAlarmStore$Batch;

    .line 229
    .local v4, "b":Lcom/android/server/alarm/BatchingAlarmStore$Batch;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    invoke-virtual {v4}, Lcom/android/server/alarm/BatchingAlarmStore$Batch;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 230
    invoke-virtual {v4, v5}, Lcom/android/server/alarm/BatchingAlarmStore$Batch;->get(I)Lcom/android/server/alarm/Alarm;

    move-result-object v6

    invoke-interface {p1, v6}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 231
    add-int/lit8 v2, v2, 0x1

    .line 229
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 234
    .end local v4    # "b":Lcom/android/server/alarm/BatchingAlarmStore$Batch;
    .end local v5    # "i":I
    :cond_1
    goto :goto_0

    .line 235
    :cond_2
    iget-object v3, p0, Lcom/android/server/alarm/BatchingAlarmStore;->mStatLogger:Lcom/android/internal/util/jobs/StatLogger;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v0, v1}, Lcom/android/internal/util/jobs/StatLogger;->logDurationStat(IJ)J

    .line 236
    return v2
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 220
    sget-object v0, Lcom/android/server/alarm/BatchingAlarmStore;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public getNextDeliveryTime()J
    .locals 2

    .line 149
    iget-object v0, p0, Lcom/android/server/alarm/BatchingAlarmStore;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/android/server/alarm/BatchingAlarmStore;->mAlarmBatches:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/alarm/BatchingAlarmStore$Batch;

    iget-wide v0, v0, Lcom/android/server/alarm/BatchingAlarmStore$Batch;->mStart:J

    return-wide v0

    .line 152
    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getNextWakeFromIdleAlarm()Lcom/android/server/alarm/Alarm;
    .locals 5

    .line 106
    iget-object v0, p0, Lcom/android/server/alarm/BatchingAlarmStore;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/alarm/BatchingAlarmStore$Batch;

    .line 107
    .local v1, "batch":Lcom/android/server/alarm/BatchingAlarmStore$Batch;
    iget v2, v1, Lcom/android/server/alarm/BatchingAlarmStore$Batch;->mFlags:I

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_0

    .line 108
    goto :goto_0

    .line 110
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {v1}, Lcom/android/server/alarm/BatchingAlarmStore$Batch;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 111
    invoke-virtual {v1, v2}, Lcom/android/server/alarm/BatchingAlarmStore$Batch;->get(I)Lcom/android/server/alarm/Alarm;

    move-result-object v3

    .line 112
    .local v3, "a":Lcom/android/server/alarm/Alarm;
    iget v4, v3, Lcom/android/server/alarm/Alarm;->flags:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_1

    .line 113
    return-object v3

    .line 110
    .end local v3    # "a":Lcom/android/server/alarm/Alarm;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 116
    .end local v1    # "batch":Lcom/android/server/alarm/BatchingAlarmStore$Batch;
    .end local v2    # "i":I
    :cond_2
    goto :goto_0

    .line 117
    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNextWakeupDeliveryTime()J
    .locals 4

    .line 139
    iget-object v0, p0, Lcom/android/server/alarm/BatchingAlarmStore;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/alarm/BatchingAlarmStore$Batch;

    .line 140
    .local v1, "b":Lcom/android/server/alarm/BatchingAlarmStore$Batch;
    invoke-virtual {v1}, Lcom/android/server/alarm/BatchingAlarmStore$Batch;->hasWakeups()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 141
    iget-wide v2, v1, Lcom/android/server/alarm/BatchingAlarmStore$Batch;->mStart:J

    return-wide v2

    .line 143
    .end local v1    # "b":Lcom/android/server/alarm/BatchingAlarmStore$Batch;
    :cond_0
    goto :goto_0

    .line 144
    :cond_1
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public remove(Ljava/util/function/Predicate;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/alarm/Alarm;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/alarm/Alarm;",
            ">;"
        }
    .end annotation

    .line 83
    .local p1, "whichAlarms":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/alarm/Alarm;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 84
    .local v0, "removed":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/alarm/Alarm;>;"
    iget-object v1, p0, Lcom/android/server/alarm/BatchingAlarmStore;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 85
    iget-object v2, p0, Lcom/android/server/alarm/BatchingAlarmStore;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/alarm/BatchingAlarmStore$Batch;

    .line 86
    .local v2, "b":Lcom/android/server/alarm/BatchingAlarmStore$Batch;
    invoke-virtual {v2, p1}, Lcom/android/server/alarm/BatchingAlarmStore$Batch;->remove(Ljava/util/function/Predicate;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 87
    invoke-virtual {v2}, Lcom/android/server/alarm/BatchingAlarmStore$Batch;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 88
    iget-object v3, p0, Lcom/android/server/alarm/BatchingAlarmStore;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 84
    .end local v2    # "b":Lcom/android/server/alarm/BatchingAlarmStore$Batch;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 91
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 92
    iget v1, p0, Lcom/android/server/alarm/BatchingAlarmStore;->mSize:I

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/alarm/BatchingAlarmStore;->mSize:I

    .line 94
    invoke-direct {p0}, Lcom/android/server/alarm/BatchingAlarmStore;->rebatchAllAlarms()V

    .line 96
    :cond_2
    return-object v0
.end method

.method public removePendingAlarms(J)Ljava/util/ArrayList;
    .locals 5
    .param p1, "nowElapsed"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/alarm/Alarm;",
            ">;"
        }
    .end annotation

    .line 157
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 158
    .local v0, "removedAlarms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/alarm/Alarm;>;"
    :goto_0
    iget-object v1, p0, Lcom/android/server/alarm/BatchingAlarmStore;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 159
    iget-object v1, p0, Lcom/android/server/alarm/BatchingAlarmStore;->mAlarmBatches:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/alarm/BatchingAlarmStore$Batch;

    .line 160
    .local v1, "batch":Lcom/android/server/alarm/BatchingAlarmStore$Batch;
    iget-wide v3, v1, Lcom/android/server/alarm/BatchingAlarmStore$Batch;->mStart:J

    cmp-long v3, v3, p1

    if-lez v3, :cond_0

    .line 161
    goto :goto_2

    .line 163
    :cond_0
    iget-object v3, p0, Lcom/android/server/alarm/BatchingAlarmStore;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 164
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {v1}, Lcom/android/server/alarm/BatchingAlarmStore$Batch;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 165
    invoke-virtual {v1, v2}, Lcom/android/server/alarm/BatchingAlarmStore$Batch;->get(I)Lcom/android/server/alarm/Alarm;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 167
    .end local v1    # "batch":Lcom/android/server/alarm/BatchingAlarmStore$Batch;
    .end local v2    # "i":I
    :cond_1
    goto :goto_0

    .line 168
    :cond_2
    :goto_2
    iget v1, p0, Lcom/android/server/alarm/BatchingAlarmStore;->mSize:I

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/alarm/BatchingAlarmStore;->mSize:I

    .line 169
    return-object v0
.end method

.method public setAlarmClockRemovalListener(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "listener"    # Ljava/lang/Runnable;

    .line 101
    iput-object p1, p0, Lcom/android/server/alarm/BatchingAlarmStore;->mOnAlarmClockRemoved:Ljava/lang/Runnable;

    .line 102
    return-void
.end method

.method public size()I
    .locals 1

    .line 134
    iget v0, p0, Lcom/android/server/alarm/BatchingAlarmStore;->mSize:I

    return v0
.end method

.method public updateAlarmDeliveries(Lcom/android/server/alarm/AlarmStore$AlarmDeliveryCalculator;)Z
    .locals 5
    .param p1, "deliveryCalculator"    # Lcom/android/server/alarm/AlarmStore$AlarmDeliveryCalculator;

    .line 174
    const/4 v0, 0x0

    .line 175
    .local v0, "changed":Z
    iget-object v1, p0, Lcom/android/server/alarm/BatchingAlarmStore;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/alarm/BatchingAlarmStore$Batch;

    .line 176
    .local v2, "b":Lcom/android/server/alarm/BatchingAlarmStore$Batch;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-virtual {v2}, Lcom/android/server/alarm/BatchingAlarmStore$Batch;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 177
    invoke-virtual {v2, v3}, Lcom/android/server/alarm/BatchingAlarmStore$Batch;->get(I)Lcom/android/server/alarm/Alarm;

    move-result-object v4

    invoke-interface {p1, v4}, Lcom/android/server/alarm/AlarmStore$AlarmDeliveryCalculator;->updateAlarmDelivery(Lcom/android/server/alarm/Alarm;)Z

    move-result v4

    or-int/2addr v0, v4

    .line 176
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 179
    .end local v2    # "b":Lcom/android/server/alarm/BatchingAlarmStore$Batch;
    .end local v3    # "i":I
    :cond_0
    goto :goto_0

    .line 180
    :cond_1
    if-eqz v0, :cond_2

    .line 181
    invoke-direct {p0}, Lcom/android/server/alarm/BatchingAlarmStore;->rebatchAllAlarms()V

    .line 183
    :cond_2
    return v0
.end method
