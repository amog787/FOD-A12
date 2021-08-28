.class final Lcom/android/server/vibrator/VibrationThread$StepQueue;
.super Ljava/lang/Object;
.source "VibrationThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vibrator/VibrationThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "StepQueue"
.end annotation


# instance fields
.field private mConsumedStartVibrateSteps:I

.field private final mNextSteps:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue<",
            "Lcom/android/server/vibrator/VibrationThread$Step;",
            ">;"
        }
    .end annotation
.end field

.field private final mPendingOnVibratorCompleteSteps:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/android/server/vibrator/VibrationThread$Step;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingVibrateSteps:I

.field private mSuccessfulVibratorOnSteps:I

.field final synthetic this$0:Lcom/android/server/vibrator/VibrationThread;


# direct methods
.method private constructor <init>(Lcom/android/server/vibrator/VibrationThread;)V
    .locals 0

    .line 339
    iput-object p1, p0, Lcom/android/server/vibrator/VibrationThread$StepQueue;->this$0:Lcom/android/server/vibrator/VibrationThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 340
    new-instance p1, Ljava/util/PriorityQueue;

    invoke-direct {p1}, Ljava/util/PriorityQueue;-><init>()V

    iput-object p1, p0, Lcom/android/server/vibrator/VibrationThread$StepQueue;->mNextSteps:Ljava/util/PriorityQueue;

    .line 342
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/android/server/vibrator/VibrationThread$StepQueue;->mPendingOnVibratorCompleteSteps:Ljava/util/Queue;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/vibrator/VibrationThread;Lcom/android/server/vibrator/VibrationThread$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/vibrator/VibrationThread;
    .param p2, "x1"    # Lcom/android/server/vibrator/VibrationThread$1;

    .line 339
    invoke-direct {p0, p1}, Lcom/android/server/vibrator/VibrationThread$StepQueue;-><init>(Lcom/android/server/vibrator/VibrationThread;)V

    return-void
.end method

.method private pollNext()Lcom/android/server/vibrator/VibrationThread$Step;
    .locals 2

    .line 489
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationThread$StepQueue;->this$0:Lcom/android/server/vibrator/VibrationThread;

    invoke-static {v0}, Lcom/android/server/vibrator/VibrationThread;->access$100(Lcom/android/server/vibrator/VibrationThread;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 491
    :try_start_0
    iget-object v1, p0, Lcom/android/server/vibrator/VibrationThread$StepQueue;->mPendingOnVibratorCompleteSteps:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 492
    iget-object v1, p0, Lcom/android/server/vibrator/VibrationThread$StepQueue;->mPendingOnVibratorCompleteSteps:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/vibrator/VibrationThread$Step;

    monitor-exit v0

    return-object v1

    .line 494
    :cond_0
    iget-object v1, p0, Lcom/android/server/vibrator/VibrationThread$StepQueue;->mNextSteps:Ljava/util/PriorityQueue;

    invoke-virtual {v1}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/vibrator/VibrationThread$Step;

    monitor-exit v0

    return-object v1

    .line 495
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public calculateVibrationStatus(I)Lcom/android/server/vibrator/Vibration$Status;
    .locals 2
    .param p1, "expectedStartVibrateSteps"    # I

    .line 372
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationThread$StepQueue;->this$0:Lcom/android/server/vibrator/VibrationThread;

    invoke-static {v0}, Lcom/android/server/vibrator/VibrationThread;->access$100(Lcom/android/server/vibrator/VibrationThread;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 373
    :try_start_0
    iget v1, p0, Lcom/android/server/vibrator/VibrationThread$StepQueue;->mPendingVibrateSteps:I

    if-gtz v1, :cond_2

    iget v1, p0, Lcom/android/server/vibrator/VibrationThread$StepQueue;->mConsumedStartVibrateSteps:I

    if-ge v1, p1, :cond_0

    goto :goto_0

    .line 377
    :cond_0
    iget v1, p0, Lcom/android/server/vibrator/VibrationThread$StepQueue;->mSuccessfulVibratorOnSteps:I

    if-lez v1, :cond_1

    .line 378
    sget-object v1, Lcom/android/server/vibrator/Vibration$Status;->FINISHED:Lcom/android/server/vibrator/Vibration$Status;

    monitor-exit v0

    return-object v1

    .line 381
    :cond_1
    sget-object v1, Lcom/android/server/vibrator/Vibration$Status;->IGNORED_UNSUPPORTED:Lcom/android/server/vibrator/Vibration$Status;

    monitor-exit v0

    return-object v1

    .line 375
    :cond_2
    :goto_0
    sget-object v1, Lcom/android/server/vibrator/Vibration$Status;->RUNNING:Lcom/android/server/vibrator/Vibration$Status;

    monitor-exit v0

    return-object v1

    .line 382
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public calculateWaitTime()J
    .locals 4

    .line 388
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationThread$StepQueue;->this$0:Lcom/android/server/vibrator/VibrationThread;

    invoke-static {v0}, Lcom/android/server/vibrator/VibrationThread;->access$100(Lcom/android/server/vibrator/VibrationThread;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 389
    :try_start_0
    iget-object v1, p0, Lcom/android/server/vibrator/VibrationThread$StepQueue;->mPendingOnVibratorCompleteSteps:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    const-wide/16 v2, 0x0

    if-nez v1, :cond_0

    .line 391
    monitor-exit v0

    return-wide v2

    .line 393
    :cond_0
    iget-object v1, p0, Lcom/android/server/vibrator/VibrationThread$StepQueue;->mNextSteps:Ljava/util/PriorityQueue;

    invoke-virtual {v1}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/vibrator/VibrationThread$Step;

    .line 394
    .local v1, "nextStep":Lcom/android/server/vibrator/VibrationThread$Step;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 395
    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/android/server/vibrator/VibrationThread$Step;->calculateWaitTime()J

    move-result-wide v2

    :goto_0
    return-wide v2

    .line 394
    .end local v1    # "nextStep":Lcom/android/server/vibrator/VibrationThread$Step;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public cancel()V
    .locals 4

    .line 458
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 460
    .local v0, "cleanUpSteps":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/vibrator/VibrationThread$Step;>;"
    :goto_0
    invoke-direct {p0}, Lcom/android/server/vibrator/VibrationThread$StepQueue;->pollNext()Lcom/android/server/vibrator/VibrationThread$Step;

    move-result-object v1

    move-object v2, v1

    .local v2, "step":Lcom/android/server/vibrator/VibrationThread$Step;
    if-eqz v1, :cond_0

    .line 461
    invoke-virtual {v2}, Lcom/android/server/vibrator/VibrationThread$Step;->cancel()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 463
    :cond_0
    iget-object v1, p0, Lcom/android/server/vibrator/VibrationThread$StepQueue;->this$0:Lcom/android/server/vibrator/VibrationThread;

    invoke-static {v1}, Lcom/android/server/vibrator/VibrationThread;->access$100(Lcom/android/server/vibrator/VibrationThread;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 465
    const/4 v3, 0x0

    :try_start_0
    iput v3, p0, Lcom/android/server/vibrator/VibrationThread$StepQueue;->mPendingVibrateSteps:I

    .line 466
    iget-object v3, p0, Lcom/android/server/vibrator/VibrationThread$StepQueue;->mNextSteps:Ljava/util/PriorityQueue;

    invoke-virtual {v3, v0}, Ljava/util/PriorityQueue;->addAll(Ljava/util/Collection;)Z

    .line 467
    monitor-exit v1

    .line 468
    return-void

    .line 467
    :catchall_0
    move-exception v3

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public cancelImmediately()V
    .locals 3

    .line 477
    :goto_0
    invoke-direct {p0}, Lcom/android/server/vibrator/VibrationThread$StepQueue;->pollNext()Lcom/android/server/vibrator/VibrationThread$Step;

    move-result-object v0

    move-object v1, v0

    .local v1, "step":Lcom/android/server/vibrator/VibrationThread$Step;
    if-eqz v0, :cond_0

    .line 480
    invoke-virtual {v1}, Lcom/android/server/vibrator/VibrationThread$Step;->cancelImmediately()V

    goto :goto_0

    .line 482
    :cond_0
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationThread$StepQueue;->this$0:Lcom/android/server/vibrator/VibrationThread;

    invoke-static {v0}, Lcom/android/server/vibrator/VibrationThread;->access$100(Lcom/android/server/vibrator/VibrationThread;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 483
    const/4 v2, 0x0

    :try_start_0
    iput v2, p0, Lcom/android/server/vibrator/VibrationThread$StepQueue;->mPendingVibrateSteps:I

    .line 484
    monitor-exit v0

    .line 485
    return-void

    .line 484
    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public consumeNext()V
    .locals 7

    .line 405
    invoke-direct {p0}, Lcom/android/server/vibrator/VibrationThread$StepQueue;->pollNext()Lcom/android/server/vibrator/VibrationThread$Step;

    move-result-object v0

    .line 406
    .local v0, "nextStep":Lcom/android/server/vibrator/VibrationThread$Step;
    if-eqz v0, :cond_5

    .line 409
    invoke-virtual {v0}, Lcom/android/server/vibrator/VibrationThread$Step;->play()Ljava/util/List;

    move-result-object v1

    .line 410
    .local v1, "nextSteps":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/vibrator/VibrationThread$Step;>;"
    iget-object v2, p0, Lcom/android/server/vibrator/VibrationThread$StepQueue;->this$0:Lcom/android/server/vibrator/VibrationThread;

    invoke-static {v2}, Lcom/android/server/vibrator/VibrationThread;->access$100(Lcom/android/server/vibrator/VibrationThread;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 411
    :try_start_0
    invoke-virtual {v0}, Lcom/android/server/vibrator/VibrationThread$Step;->getVibratorOnDuration()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    const/4 v4, 0x1

    if-lez v3, :cond_0

    .line 412
    iget v3, p0, Lcom/android/server/vibrator/VibrationThread$StepQueue;->mSuccessfulVibratorOnSteps:I

    add-int/2addr v3, v4

    iput v3, p0, Lcom/android/server/vibrator/VibrationThread$StepQueue;->mSuccessfulVibratorOnSteps:I

    .line 414
    :cond_0
    instance-of v3, v0, Lcom/android/server/vibrator/VibrationThread$StartVibrateStep;

    if-eqz v3, :cond_1

    .line 415
    iget v3, p0, Lcom/android/server/vibrator/VibrationThread$StepQueue;->mConsumedStartVibrateSteps:I

    add-int/2addr v3, v4

    iput v3, p0, Lcom/android/server/vibrator/VibrationThread$StepQueue;->mConsumedStartVibrateSteps:I

    .line 417
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/vibrator/VibrationThread$Step;->isCleanUp()Z

    move-result v3

    if-nez v3, :cond_2

    .line 418
    iget v3, p0, Lcom/android/server/vibrator/VibrationThread$StepQueue;->mPendingVibrateSteps:I

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/android/server/vibrator/VibrationThread$StepQueue;->mPendingVibrateSteps:I

    .line 420
    :cond_2
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_4

    .line 421
    iget v5, p0, Lcom/android/server/vibrator/VibrationThread$StepQueue;->mPendingVibrateSteps:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/vibrator/VibrationThread$Step;

    invoke-virtual {v6}, Lcom/android/server/vibrator/VibrationThread$Step;->isCleanUp()Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v6, 0x0

    goto :goto_1

    :cond_3
    move v6, v4

    :goto_1
    add-int/2addr v5, v6

    iput v5, p0, Lcom/android/server/vibrator/VibrationThread$StepQueue;->mPendingVibrateSteps:I

    .line 420
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 423
    .end local v3    # "i":I
    :cond_4
    iget-object v3, p0, Lcom/android/server/vibrator/VibrationThread$StepQueue;->mNextSteps:Ljava/util/PriorityQueue;

    invoke-virtual {v3, v1}, Ljava/util/PriorityQueue;->addAll(Ljava/util/Collection;)Z

    .line 424
    monitor-exit v2

    goto :goto_2

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 426
    .end local v1    # "nextSteps":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/vibrator/VibrationThread$Step;>;"
    :cond_5
    :goto_2
    return-void
.end method

.method public isEmpty()Z
    .locals 2

    .line 362
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationThread$StepQueue;->this$0:Lcom/android/server/vibrator/VibrationThread;

    invoke-static {v0}, Lcom/android/server/vibrator/VibrationThread;->access$100(Lcom/android/server/vibrator/VibrationThread;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 363
    :try_start_0
    iget-object v1, p0, Lcom/android/server/vibrator/VibrationThread$StepQueue;->mPendingOnVibratorCompleteSteps:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/vibrator/VibrationThread$StepQueue;->mNextSteps:Ljava/util/PriorityQueue;

    invoke-virtual {v1}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    .line 364
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public notifyVibratorComplete(I)V
    .locals 3
    .param p1, "vibratorId"    # I

    .line 440
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationThread$StepQueue;->mNextSteps:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 441
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/vibrator/VibrationThread$Step;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 442
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/vibrator/VibrationThread$Step;

    .line 443
    .local v1, "step":Lcom/android/server/vibrator/VibrationThread$Step;
    invoke-virtual {v1, p1}, Lcom/android/server/vibrator/VibrationThread$Step;->shouldPlayWhenVibratorComplete(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 444
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 445
    iget-object v2, p0, Lcom/android/server/vibrator/VibrationThread$StepQueue;->mPendingOnVibratorCompleteSteps:Ljava/util/Queue;

    invoke-interface {v2, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 446
    goto :goto_1

    .line 448
    .end local v1    # "step":Lcom/android/server/vibrator/VibrationThread$Step;
    :cond_0
    goto :goto_0

    .line 449
    :cond_1
    :goto_1
    return-void
.end method

.method public offer(Lcom/android/server/vibrator/VibrationThread$Step;)V
    .locals 2
    .param p1, "step"    # Lcom/android/server/vibrator/VibrationThread$Step;

    .line 353
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationThread$StepQueue;->this$0:Lcom/android/server/vibrator/VibrationThread;

    invoke-static {v0}, Lcom/android/server/vibrator/VibrationThread;->access$100(Lcom/android/server/vibrator/VibrationThread;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 354
    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/vibrator/VibrationThread$Step;->isCleanUp()Z

    move-result v1

    if-nez v1, :cond_0

    .line 355
    iget v1, p0, Lcom/android/server/vibrator/VibrationThread$StepQueue;->mPendingVibrateSteps:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/vibrator/VibrationThread$StepQueue;->mPendingVibrateSteps:I

    .line 357
    :cond_0
    iget-object v1, p0, Lcom/android/server/vibrator/VibrationThread$StepQueue;->mNextSteps:Ljava/util/PriorityQueue;

    invoke-virtual {v1, p1}, Ljava/util/PriorityQueue;->offer(Ljava/lang/Object;)Z

    .line 358
    monitor-exit v0

    .line 359
    return-void

    .line 358
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
