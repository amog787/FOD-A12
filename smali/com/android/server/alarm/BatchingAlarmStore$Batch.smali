.class final Lcom/android/server/alarm/BatchingAlarmStore$Batch;
.super Ljava/lang/Object;
.source "BatchingAlarmStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/alarm/BatchingAlarmStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "Batch"
.end annotation


# instance fields
.field final mAlarms:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/alarm/Alarm;",
            ">;"
        }
    .end annotation
.end field

.field mEnd:J

.field mFlags:I

.field mStart:J

.field final synthetic this$0:Lcom/android/server/alarm/BatchingAlarmStore;


# direct methods
.method constructor <init>(Lcom/android/server/alarm/BatchingAlarmStore;Lcom/android/server/alarm/Alarm;)V
    .locals 3
    .param p1, "this$0"    # Lcom/android/server/alarm/BatchingAlarmStore;
    .param p2, "seed"    # Lcom/android/server/alarm/Alarm;

    .line 283
    iput-object p1, p0, Lcom/android/server/alarm/BatchingAlarmStore$Batch;->this$0:Lcom/android/server/alarm/BatchingAlarmStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 281
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/alarm/BatchingAlarmStore$Batch;->mAlarms:Ljava/util/ArrayList;

    .line 284
    invoke-virtual {p2}, Lcom/android/server/alarm/Alarm;->getWhenElapsed()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/alarm/BatchingAlarmStore$Batch;->mStart:J

    .line 285
    invoke-virtual {p2}, Lcom/android/server/alarm/Alarm;->getMaxWhenElapsed()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/android/server/alarm/AlarmManagerService;->clampPositive(J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/alarm/BatchingAlarmStore$Batch;->mEnd:J

    .line 286
    iget v1, p2, Lcom/android/server/alarm/Alarm;->flags:I

    iput v1, p0, Lcom/android/server/alarm/BatchingAlarmStore$Batch;->mFlags:I

    .line 287
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 288
    return-void
.end method


# virtual methods
.method add(Lcom/android/server/alarm/Alarm;)Z
    .locals 6
    .param p1, "alarm"    # Lcom/android/server/alarm/Alarm;

    .line 303
    const/4 v0, 0x0

    .line 305
    .local v0, "newStart":Z
    iget-object v1, p0, Lcom/android/server/alarm/BatchingAlarmStore$Batch;->mAlarms:Ljava/util/ArrayList;

    invoke-static {}, Lcom/android/server/alarm/BatchingAlarmStore;->access$000()Ljava/util/Comparator;

    move-result-object v2

    invoke-static {v1, p1, v2}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v1

    .line 306
    .local v1, "index":I
    if-gez v1, :cond_0

    .line 307
    rsub-int/lit8 v2, v1, 0x0

    add-int/lit8 v1, v2, -0x1

    .line 309
    :cond_0
    iget-object v2, p0, Lcom/android/server/alarm/BatchingAlarmStore$Batch;->mAlarms:Ljava/util/ArrayList;

    invoke-virtual {v2, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 313
    invoke-virtual {p1}, Lcom/android/server/alarm/Alarm;->getWhenElapsed()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/alarm/BatchingAlarmStore$Batch;->mStart:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 314
    invoke-virtual {p1}, Lcom/android/server/alarm/Alarm;->getWhenElapsed()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/alarm/BatchingAlarmStore$Batch;->mStart:J

    .line 315
    const/4 v0, 0x1

    .line 317
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/alarm/Alarm;->getMaxWhenElapsed()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/alarm/BatchingAlarmStore$Batch;->mEnd:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_2

    .line 318
    invoke-virtual {p1}, Lcom/android/server/alarm/Alarm;->getMaxWhenElapsed()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/alarm/BatchingAlarmStore$Batch;->mEnd:J

    .line 320
    :cond_2
    iget v2, p0, Lcom/android/server/alarm/BatchingAlarmStore$Batch;->mFlags:I

    iget v3, p1, Lcom/android/server/alarm/Alarm;->flags:I

    or-int/2addr v2, v3

    iput v2, p0, Lcom/android/server/alarm/BatchingAlarmStore$Batch;->mFlags:I

    .line 325
    return v0
.end method

.method canHold(JJ)Z
    .locals 2
    .param p1, "whenElapsed"    # J
    .param p3, "maxWhen"    # J

    .line 299
    iget-wide v0, p0, Lcom/android/server/alarm/BatchingAlarmStore$Batch;->mEnd:J

    cmp-long v0, v0, p1

    if-ltz v0, :cond_0

    iget-wide v0, p0, Lcom/android/server/alarm/BatchingAlarmStore$Batch;->mStart:J

    cmp-long v0, v0, p3

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;JJ)V
    .locals 10
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J
    .param p4, "nowElapsed"    # J

    .line 396
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 398
    .local v0, "token":J
    iget-wide v2, p0, Lcom/android/server/alarm/BatchingAlarmStore$Batch;->mStart:J

    const-wide v4, 0x10300000001L

    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 399
    iget-wide v2, p0, Lcom/android/server/alarm/BatchingAlarmStore$Batch;->mEnd:J

    const-wide v4, 0x10300000002L

    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 400
    iget v2, p0, Lcom/android/server/alarm/BatchingAlarmStore$Batch;->mFlags:I

    const-wide v3, 0x10500000003L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 401
    iget-object v2, p0, Lcom/android/server/alarm/BatchingAlarmStore$Batch;->mAlarms:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/alarm/Alarm;

    .line 402
    .local v3, "a":Lcom/android/server/alarm/Alarm;
    const-wide v6, 0x20b00000004L

    move-object v4, v3

    move-object v5, p1

    move-wide v8, p4

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/alarm/Alarm;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JJ)V

    .line 403
    .end local v3    # "a":Lcom/android/server/alarm/Alarm;
    goto :goto_0

    .line 405
    :cond_0
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 406
    return-void
.end method

.method get(I)Lcom/android/server/alarm/Alarm;
    .locals 1
    .param p1, "index"    # I

    .line 295
    iget-object v0, p0, Lcom/android/server/alarm/BatchingAlarmStore$Batch;->mAlarms:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/alarm/Alarm;

    return-object v0
.end method

.method hasWakeups()Z
    .locals 4

    .line 366
    iget-object v0, p0, Lcom/android/server/alarm/BatchingAlarmStore$Batch;->mAlarms:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 367
    .local v0, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 368
    iget-object v2, p0, Lcom/android/server/alarm/BatchingAlarmStore$Batch;->mAlarms:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/alarm/Alarm;

    .line 369
    .local v2, "a":Lcom/android/server/alarm/Alarm;
    iget-boolean v3, v2, Lcom/android/server/alarm/Alarm;->wakeup:Z

    if-eqz v3, :cond_0

    .line 370
    const/4 v3, 0x1

    return v3

    .line 367
    .end local v2    # "a":Lcom/android/server/alarm/Alarm;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 373
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method remove(Ljava/util/function/Predicate;)Ljava/util/ArrayList;
    .locals 10
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

    .line 329
    .local p1, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/alarm/Alarm;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 330
    .local v0, "removed":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/alarm/Alarm;>;"
    const-wide/16 v1, 0x0

    .line 331
    .local v1, "newStart":J
    const-wide v3, 0x7fffffffffffffffL

    .line 332
    .local v3, "newEnd":J
    const/4 v5, 0x0

    .line 333
    .local v5, "newFlags":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    iget-object v7, p0, Lcom/android/server/alarm/BatchingAlarmStore$Batch;->mAlarms:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_5

    .line 334
    iget-object v7, p0, Lcom/android/server/alarm/BatchingAlarmStore$Batch;->mAlarms:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/alarm/Alarm;

    .line 335
    .local v7, "alarm":Lcom/android/server/alarm/Alarm;
    invoke-interface {p1, v7}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 336
    iget-object v8, p0, Lcom/android/server/alarm/BatchingAlarmStore$Batch;->mAlarms:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/alarm/Alarm;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 337
    iget-object v8, v7, Lcom/android/server/alarm/Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/server/alarm/BatchingAlarmStore$Batch;->this$0:Lcom/android/server/alarm/BatchingAlarmStore;

    invoke-static {v8}, Lcom/android/server/alarm/BatchingAlarmStore;->access$100(Lcom/android/server/alarm/BatchingAlarmStore;)Ljava/lang/Runnable;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 338
    iget-object v8, p0, Lcom/android/server/alarm/BatchingAlarmStore$Batch;->this$0:Lcom/android/server/alarm/BatchingAlarmStore;

    invoke-static {v8}, Lcom/android/server/alarm/BatchingAlarmStore;->access$100(Lcom/android/server/alarm/BatchingAlarmStore;)Ljava/lang/Runnable;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Runnable;->run()V

    .line 340
    :cond_0
    invoke-static {v7}, Lcom/android/server/alarm/AlarmManagerService;->isTimeTickAlarm(Lcom/android/server/alarm/Alarm;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 343
    sget-object v8, Lcom/android/server/alarm/BatchingAlarmStore;->TAG:Ljava/lang/String;

    const-string v9, "Removed TIME_TICK alarm"

    invoke-static {v8, v9}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 346
    :cond_1
    invoke-virtual {v7}, Lcom/android/server/alarm/Alarm;->getWhenElapsed()J

    move-result-wide v8

    cmp-long v8, v8, v1

    if-lez v8, :cond_2

    .line 347
    invoke-virtual {v7}, Lcom/android/server/alarm/Alarm;->getWhenElapsed()J

    move-result-wide v1

    .line 349
    :cond_2
    invoke-virtual {v7}, Lcom/android/server/alarm/Alarm;->getMaxWhenElapsed()J

    move-result-wide v8

    cmp-long v8, v8, v3

    if-gez v8, :cond_3

    .line 350
    invoke-virtual {v7}, Lcom/android/server/alarm/Alarm;->getMaxWhenElapsed()J

    move-result-wide v3

    .line 352
    :cond_3
    iget v8, v7, Lcom/android/server/alarm/Alarm;->flags:I

    or-int/2addr v5, v8

    .line 353
    add-int/lit8 v6, v6, 0x1

    .line 355
    .end local v7    # "alarm":Lcom/android/server/alarm/Alarm;
    :cond_4
    :goto_1
    goto :goto_0

    .line 356
    .end local v6    # "i":I
    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_6

    .line 358
    iput-wide v1, p0, Lcom/android/server/alarm/BatchingAlarmStore$Batch;->mStart:J

    .line 359
    iput-wide v3, p0, Lcom/android/server/alarm/BatchingAlarmStore$Batch;->mEnd:J

    .line 360
    iput v5, p0, Lcom/android/server/alarm/BatchingAlarmStore$Batch;->mFlags:I

    .line 362
    :cond_6
    return-object v0
.end method

.method size()I
    .locals 1

    .line 291
    iget-object v0, p0, Lcom/android/server/alarm/BatchingAlarmStore$Batch;->mAlarms:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 378
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 379
    .local v0, "b":Ljava/lang/StringBuilder;
    const-string v1, "Batch{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    const-string v1, " num="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    invoke-virtual {p0}, Lcom/android/server/alarm/BatchingAlarmStore$Batch;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 383
    const-string v1, " start="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    iget-wide v1, p0, Lcom/android/server/alarm/BatchingAlarmStore$Batch;->mStart:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 385
    const-string v1, " end="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    iget-wide v1, p0, Lcom/android/server/alarm/BatchingAlarmStore$Batch;->mEnd:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 387
    iget v1, p0, Lcom/android/server/alarm/BatchingAlarmStore$Batch;->mFlags:I

    if-eqz v1, :cond_0

    .line 388
    const-string v1, " flgs=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    iget v1, p0, Lcom/android/server/alarm/BatchingAlarmStore$Batch;->mFlags:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    :cond_0
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 392
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
