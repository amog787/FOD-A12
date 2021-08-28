.class public Lcom/android/server/biometrics/sensors/BiometricScheduler;
.super Ljava/lang/Object;
.source "BiometricScheduler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/biometrics/sensors/BiometricScheduler$InternalCallback;,
        Lcom/android/server/biometrics/sensors/BiometricScheduler$CrashState;,
        Lcom/android/server/biometrics/sensors/BiometricScheduler$CancellationWatchdog;,
        Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;
    }
.end annotation


# static fields
.field private static final BASE_TAG:Ljava/lang/String; = "BiometricScheduler"

.field protected static final LOG_NUM_RECENT_OPERATIONS:I = 0x32


# instance fields
.field private final mBiometricService:Landroid/hardware/biometrics/IBiometricService;

.field protected final mBiometricTag:Ljava/lang/String;

.field private final mCrashStates:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/android/server/biometrics/sensors/BiometricScheduler$CrashState;",
            ">;"
        }
    .end annotation
.end field

.field mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;

.field private final mGestureAvailabilityDispatcher:Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;

.field protected final mHandler:Landroid/os/Handler;

.field private final mInternalCallback:Lcom/android/server/biometrics/sensors/BiometricScheduler$InternalCallback;

.field final mPendingOperations:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;",
            ">;"
        }
    .end annotation
.end field

.field private final mRecentOperations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mRecentOperationsLimit:I

.field private mTotalOperationsHandled:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "gestureAvailabilityDispatcher"    # Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;

    .line 295
    nop

    .line 296
    const-string v0, "biometric"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 295
    invoke-static {v0}, Landroid/hardware/biometrics/IBiometricService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/IBiometricService;

    move-result-object v0

    const/16 v1, 0x32

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/biometrics/sensors/BiometricScheduler;-><init>(Ljava/lang/String;Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;Landroid/hardware/biometrics/IBiometricService;I)V

    .line 297
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;Landroid/hardware/biometrics/IBiometricService;I)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "gestureAvailabilityDispatcher"    # Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;
    .param p3, "biometricService"    # Landroid/hardware/biometrics/IBiometricService;
    .param p4, "recentOperationsLimit"    # I

    .line 276
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 212
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mHandler:Landroid/os/Handler;

    .line 277
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mBiometricTag:Ljava/lang/String;

    .line 278
    new-instance v0, Lcom/android/server/biometrics/sensors/BiometricScheduler$InternalCallback;

    invoke-direct {v0, p0}, Lcom/android/server/biometrics/sensors/BiometricScheduler$InternalCallback;-><init>(Lcom/android/server/biometrics/sensors/BiometricScheduler;)V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mInternalCallback:Lcom/android/server/biometrics/sensors/BiometricScheduler$InternalCallback;

    .line 279
    iput-object p2, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mGestureAvailabilityDispatcher:Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;

    .line 280
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mPendingOperations:Ljava/util/Deque;

    .line 281
    iput-object p3, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mBiometricService:Landroid/hardware/biometrics/IBiometricService;

    .line 282
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCrashStates:Ljava/util/ArrayDeque;

    .line 283
    iput p4, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mRecentOperationsLimit:I

    .line 284
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mRecentOperations:Ljava/util/List;

    .line 285
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/biometrics/sensors/BiometricScheduler;)Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/biometrics/sensors/BiometricScheduler;

    .line 54
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mGestureAvailabilityDispatcher:Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/biometrics/sensors/BiometricScheduler;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/biometrics/sensors/BiometricScheduler;

    .line 54
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mRecentOperations:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/biometrics/sensors/BiometricScheduler;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/biometrics/sensors/BiometricScheduler;

    .line 54
    iget v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mRecentOperationsLimit:I

    return v0
.end method

.method static synthetic access$308(Lcom/android/server/biometrics/sensors/BiometricScheduler;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/server/biometrics/sensors/BiometricScheduler;

    .line 54
    iget v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mTotalOperationsHandled:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mTotalOperationsHandled:I

    return v0
.end method

.method private cancelInternal(Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;)V
    .locals 5
    .param p1, "operation"    # Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;

    .line 520
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;

    if-eq p1, v0, :cond_0

    .line 521
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancelInternal invoked on non-current operation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    return-void

    .line 524
    :cond_0
    iget-object v0, p1, Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    instance-of v0, v0, Lcom/android/server/biometrics/sensors/Interruptable;

    if-nez v0, :cond_1

    .line 525
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Operation not interruptable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    return-void

    .line 528
    :cond_1
    iget v0, p1, Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 529
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cancel already invoked for operation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    return-void

    .line 532
    :cond_2
    iget v0, p1, Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;->mState:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_3

    .line 533
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Skipping cancellation for non-started operation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;

    .line 536
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->startNextOperationIfIdle()V

    .line 537
    return-void

    .line 539
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[Cancelling] Current client: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    iget-object v0, p1, Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    check-cast v0, Lcom/android/server/biometrics/sensors/Interruptable;

    .line 541
    .local v0, "interruptable":Lcom/android/server/biometrics/sensors/Interruptable;
    invoke-interface {v0}, Lcom/android/server/biometrics/sensors/Interruptable;->cancel()V

    .line 542
    iput v1, p1, Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;->mState:I

    .line 546
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/biometrics/sensors/BiometricScheduler$CancellationWatchdog;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, p1}, Lcom/android/server/biometrics/sensors/BiometricScheduler$CancellationWatchdog;-><init>(Ljava/lang/String;Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;)V

    const-wide/16 v3, 0xbb8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 548
    return-void
.end method

.method private isAuthenticationOrDetectionOperation(Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;)Z
    .locals 3
    .param p1, "operation"    # Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;

    .line 607
    iget-object v0, p1, Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    instance-of v0, v0, Lcom/android/server/biometrics/sensors/AuthenticationConsumer;

    .line 609
    .local v0, "isAuthentication":Z
    iget-object v1, p1, Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    instance-of v1, v1, Lcom/android/server/biometrics/sensors/DetectionConsumer;

    .line 610
    .local v1, "isDetection":Z
    if-nez v0, :cond_1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    return v2
.end method


# virtual methods
.method public cancelAuthenticationOrDetection(Landroid/os/IBinder;)V
    .locals 8
    .param p1, "token"    # Landroid/os/IBinder;

    .line 575
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;

    if-nez v0, :cond_0

    .line 576
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Unable to cancel authentication, null operation"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    return-void

    .line 579
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->isAuthenticationOrDetectionOperation(Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;)Z

    move-result v0

    .line 580
    .local v0, "isCorrectClient":Z
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;

    iget-object v1, v1, Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x1

    if-ne v1, p1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 582
    .local v1, "tokenMatches":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getTag()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cancelAuthenticationOrDetection, isCorrectClient: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", tokenMatches: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 586
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getTag()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cancelling: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;

    invoke-direct {p0, v2}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->cancelInternal(Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;)V

    goto :goto_2

    .line 588
    :cond_2
    if-nez v0, :cond_4

    .line 595
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mPendingOperations:Ljava/util/Deque;

    invoke-interface {v3}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;

    .line 596
    .local v4, "operation":Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;
    invoke-direct {p0, v4}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->isAuthenticationOrDetectionOperation(Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, v4, Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    .line 597
    invoke-virtual {v5}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getToken()Landroid/os/IBinder;

    move-result-object v5

    if-ne v5, p1, :cond_3

    .line 598
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getTag()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Marking "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " as STATE_WAITING_IN_QUEUE_CANCELING"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    iput v2, v4, Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;->mState:I

    .line 602
    .end local v4    # "operation":Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;
    :cond_3
    goto :goto_1

    .line 604
    :cond_4
    :goto_2
    return-void
.end method

.method public cancelEnrollment(Landroid/os/IBinder;)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;

    .line 555
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;

    if-nez v0, :cond_0

    .line 556
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Unable to cancel enrollment, null operation"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    return-void

    .line 559
    :cond_0
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    instance-of v0, v0, Lcom/android/server/biometrics/sensors/EnrollClient;

    .line 560
    .local v0, "isEnrolling":Z
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;

    iget-object v1, v1, Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getToken()Landroid/os/IBinder;

    move-result-object v1

    if-ne v1, p1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 561
    .local v1, "tokenMatches":Z
    :goto_0
    if-eqz v0, :cond_3

    if-nez v1, :cond_2

    goto :goto_1

    .line 567
    :cond_2
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;

    invoke-direct {p0, v2}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->cancelInternal(Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;)V

    .line 568
    return-void

    .line 562
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getTag()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not cancelling enrollment, isEnrolling: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " tokenMatches: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 647
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Dump of BiometricScheduler "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 648
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current operation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 649
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Pending operations: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mPendingOperations:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 650
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mPendingOperations:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;

    .line 651
    .local v1, "operation":Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Pending operation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 652
    .end local v1    # "operation":Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;
    goto :goto_0

    .line 653
    :cond_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCrashStates:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/sensors/BiometricScheduler$CrashState;

    .line 654
    .local v1, "crashState":Lcom/android/server/biometrics/sensors/BiometricScheduler$CrashState;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Crash State "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 655
    .end local v1    # "crashState":Lcom/android/server/biometrics/sensors/BiometricScheduler$CrashState;
    goto :goto_1

    .line 656
    :cond_1
    return-void
.end method

.method public dumpProtoState(Z)[B
    .locals 5
    .param p1, "clearSchedulerBuffer"    # Z

    .line 659
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    .line 660
    .local v0, "proto":Landroid/util/proto/ProtoOutputStream;
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 661
    iget-object v1, v1, Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getProtoEnum()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    .line 660
    :goto_0
    const-wide v3, 0x10e00000001L

    invoke-virtual {v0, v3, v4, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 662
    const-wide v3, 0x10500000002L

    iget v1, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mTotalOperationsHandled:I

    invoke-virtual {v0, v3, v4, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 664
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mRecentOperations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const-wide v3, 0x20e00000003L

    if-nez v1, :cond_2

    .line 665
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mRecentOperations:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 666
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mRecentOperations:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 665
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v1    # "i":I
    :cond_1
    goto :goto_2

    .line 671
    :cond_2
    invoke-virtual {v0, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 673
    :goto_2
    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 675
    if-eqz p1, :cond_3

    .line 676
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mRecentOperations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 678
    :cond_3
    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    move-result-object v1

    return-object v1
.end method

.method public getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;
    .locals 1

    .line 617
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;

    if-nez v0, :cond_0

    .line 618
    const/4 v0, 0x0

    return-object v0

    .line 620
    :cond_0
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    return-object v0
.end method

.method public getCurrentPendingCount()I
    .locals 1

    .line 624
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mPendingOperations:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    return v0
.end method

.method protected getInternalCallback()Lcom/android/server/biometrics/sensors/BiometricScheduler$InternalCallback;
    .locals 1

    .line 304
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mInternalCallback:Lcom/android/server/biometrics/sensors/BiometricScheduler$InternalCallback;

    return-object v0
.end method

.method protected getTag()Ljava/lang/String;
    .locals 2

    .line 308
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BiometricScheduler/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mBiometricTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public recordCrashState()V
    .locals 7

    .line 628
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCrashStates:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    .line 629
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCrashStates:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    .line 631
    :cond_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v2, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 633
    .local v0, "dateFormat":Ljava/text/SimpleDateFormat;
    new-instance v1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 634
    .local v1, "timestamp":Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 635
    .local v2, "pendingOperations":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mPendingOperations:Ljava/util/Deque;

    invoke-interface {v3}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;

    .line 636
    .local v4, "operation":Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;
    invoke-virtual {v4}, Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 637
    .end local v4    # "operation":Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;
    goto :goto_0

    .line 639
    :cond_1
    new-instance v3, Lcom/android/server/biometrics/sensors/BiometricScheduler$CrashState;

    .line 640
    iget-object v4, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    invoke-direct {v3, v1, v4, v2}, Lcom/android/server/biometrics/sensors/BiometricScheduler$CrashState;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 642
    .local v3, "crashState":Lcom/android/server/biometrics/sensors/BiometricScheduler$CrashState;
    iget-object v4, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCrashStates:Ljava/util/ArrayDeque;

    invoke-virtual {v4, v3}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 643
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getTag()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Recorded crash state: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/biometrics/sensors/BiometricScheduler$CrashState;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    return-void
.end method

.method public reset()V
    .locals 1

    .line 686
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mPendingOperations:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->clear()V

    .line 687
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;

    .line 688
    return-void
.end method

.method public scheduleClientMonitor(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)V
    .locals 1
    .param p1, "clientMonitor"    # Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    .line 477
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->scheduleClientMonitor(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;)V

    .line 478
    return-void
.end method

.method public scheduleClientMonitor(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;)V
    .locals 6
    .param p1, "clientMonitor"    # Lcom/android/server/biometrics/sensors/BaseClientMonitor;
    .param p2, "clientCallback"    # Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;

    .line 491
    invoke-virtual {p1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->interruptsPrecedingClients()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 492
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mPendingOperations:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;

    .line 493
    .local v1, "operation":Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;
    iget-object v2, v1, Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    instance-of v2, v2, Lcom/android/server/biometrics/sensors/Interruptable;

    if-eqz v2, :cond_0

    iget v2, v1, Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;->mState:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 495
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getTag()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "New client incoming, marking pending client as canceling: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    iput v3, v1, Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;->mState:I

    .line 499
    .end local v1    # "operation":Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;
    :cond_0
    goto :goto_0

    .line 502
    :cond_1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mPendingOperations:Ljava/util/Deque;

    new-instance v1, Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;

    invoke-direct {v1, p1, p2}, Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;-><init>(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;)V

    invoke-interface {v0, v1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 503
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Added] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", new queue size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mPendingOperations:Ljava/util/Deque;

    .line 504
    invoke-interface {v2}, Ljava/util/Deque;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 503
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    invoke-virtual {p1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->interruptsPrecedingClients()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    instance-of v0, v0, Lcom/android/server/biometrics/sensors/Interruptable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;

    iget v0, v0, Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 512
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Cancelling Interruptable]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;

    invoke-direct {p0, v0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->cancelInternal(Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;)V

    .line 516
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->startNextOperationIfIdle()V

    .line 517
    return-void
.end method

.method protected startNextOperationIfIdle()V
    .locals 11

    .line 312
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;

    if-eqz v0, :cond_0

    .line 313
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not idle, current operation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    return-void

    .line 316
    :cond_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mPendingOperations:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 317
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "No operations, returning to idle"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    return-void

    .line 321
    :cond_1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mPendingOperations:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;

    .line 322
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    .line 323
    .local v0, "currentClient":Lcom/android/server/biometrics/sensors/BaseClientMonitor;
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[Polled] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;

    iget v1, v1, Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;->mState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 328
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[Now Cancelling] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    instance-of v1, v0, Lcom/android/server/biometrics/sensors/Interruptable;

    if-eqz v1, :cond_2

    .line 334
    move-object v1, v0

    check-cast v1, Lcom/android/server/biometrics/sensors/Interruptable;

    .line 335
    .local v1, "interruptable":Lcom/android/server/biometrics/sensors/Interruptable;
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getInternalCallback()Lcom/android/server/biometrics/sensors/BiometricScheduler$InternalCallback;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/server/biometrics/sensors/Interruptable;->cancelWithoutStarting(Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;)V

    .line 338
    return-void

    .line 330
    .end local v1    # "interruptable":Lcom/android/server/biometrics/sensors/Interruptable;
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Mis-implemented client or scheduler, trying to cancel non-interruptable operation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 341
    :cond_3
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mGestureAvailabilityDispatcher:Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;

    iget-object v1, v1, Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    instance-of v1, v1, Lcom/android/server/biometrics/sensors/AcquisitionClient;

    if-eqz v1, :cond_4

    .line 343
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mGestureAvailabilityDispatcher:Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;

    iget-object v3, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;

    iget-object v3, v3, Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    .line 344
    invoke-virtual {v3}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getSensorId()I

    move-result v3

    .line 343
    invoke-virtual {v1, v3, v2}, Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;->markSensorActive(IZ)V

    .line 350
    :cond_4
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getCookie()I

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_5

    goto :goto_0

    :cond_5
    move v2, v3

    :goto_0
    move v1, v2

    .line 351
    .local v1, "shouldStartNow":Z
    if-eqz v1, :cond_c

    .line 352
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;

    invoke-virtual {v2}, Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;->isUnstartableHalOperation()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 353
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;

    iget-object v2, v2, Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    check-cast v2, Lcom/android/server/biometrics/sensors/HalClientMonitor;

    .line 356
    .local v2, "halClientMonitor":Lcom/android/server/biometrics/sensors/HalClientMonitor;, "Lcom/android/server/biometrics/sensors/HalClientMonitor<*>;"
    iget-object v4, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mPendingOperations:Ljava/util/Deque;

    invoke-interface {v4}, Ljava/util/Deque;->size()I

    move-result v4

    .line 357
    .local v4, "pendingOperationsLength":I
    iget-object v5, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mPendingOperations:Ljava/util/Deque;

    invoke-interface {v5}, Ljava/util/Deque;->peekLast()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;

    .line 358
    .local v5, "lastOperation":Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getTag()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[Unable To Start] "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ". Last pending operation: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    invoke-virtual {v2}, Lcom/android/server/biometrics/sensors/HalClientMonitor;->unableToStart()V

    .line 365
    iget-object v6, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;

    iget-object v6, v6, Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;->mClientCallback:Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;

    if-eqz v6, :cond_6

    .line 366
    iget-object v6, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;

    iget-object v6, v6, Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;->mClientCallback:Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;

    iget-object v7, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;

    iget-object v7, v7, Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    invoke-interface {v6, v7, v3}, Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    .line 373
    :cond_6
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v6, v4, :cond_a

    .line 374
    iget-object v7, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mPendingOperations:Ljava/util/Deque;

    invoke-interface {v7}, Ljava/util/Deque;->pollFirst()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;

    .line 375
    .local v7, "operation":Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;
    if-nez v7, :cond_7

    .line 376
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getTag()Ljava/lang/String;

    move-result-object v3

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Null operation, index: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", expected length: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    goto :goto_2

    .line 380
    :cond_7
    invoke-virtual {v7}, Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;->isHalOperation()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 381
    iget-object v8, v7, Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    check-cast v8, Lcom/android/server/biometrics/sensors/HalClientMonitor;

    invoke-virtual {v8}, Lcom/android/server/biometrics/sensors/HalClientMonitor;->unableToStart()V

    .line 383
    :cond_8
    iget-object v8, v7, Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;->mClientCallback:Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;

    if-eqz v8, :cond_9

    .line 384
    iget-object v8, v7, Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;->mClientCallback:Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;

    iget-object v9, v7, Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    invoke-interface {v8, v9, v3}, Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    .line 387
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getTag()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[Aborted Operation] "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    .end local v7    # "operation":Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 393
    .end local v6    # "i":I
    :cond_a
    :goto_2
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;

    .line 394
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->startNextOperationIfIdle()V

    .line 395
    .end local v2    # "halClientMonitor":Lcom/android/server/biometrics/sensors/HalClientMonitor;, "Lcom/android/server/biometrics/sensors/HalClientMonitor<*>;"
    .end local v4    # "pendingOperationsLength":I
    .end local v5    # "lastOperation":Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;
    goto :goto_4

    .line 396
    :cond_b
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getTag()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Starting] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getInternalCallback()Lcom/android/server/biometrics/sensors/BiometricScheduler$InternalCallback;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->start(Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;)V

    .line 398
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;

    const/4 v3, 0x2

    iput v3, v2, Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;->mState:I

    goto :goto_4

    .line 402
    :cond_c
    :try_start_0
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mBiometricService:Landroid/hardware/biometrics/IBiometricService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getCookie()I

    move-result v3

    invoke-interface {v2, v3}, Landroid/hardware/biometrics/IBiometricService;->onReadyForAuthentication(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 405
    goto :goto_3

    .line 403
    :catch_0
    move-exception v2

    .line 404
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getTag()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Remote exception when contacting BiometricService"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 406
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_3
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getTag()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Waiting for cookie before starting: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;

    const/4 v3, 0x4

    iput v3, v2, Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;->mState:I

    .line 409
    :goto_4
    return-void
.end method

.method public startPreparedClient(I)V
    .locals 4
    .param p1, "cookie"    # I

    .line 425
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;

    if-nez v0, :cond_0

    .line 426
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Current operation is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    return-void

    .line 429
    :cond_0
    iget v0, v0, Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;->mState:I

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    .line 430
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;

    iget v0, v0, Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 431
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Operation was marked for cancellation, cancelling now: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;

    iget-object v0, v0, Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    check-cast v0, Lcom/android/server/biometrics/sensors/ErrorConsumer;

    .line 437
    .local v0, "errorConsumer":Lcom/android/server/biometrics/sensors/ErrorConsumer;
    const/4 v1, 0x5

    invoke-interface {v0, v1, v2}, Lcom/android/server/biometrics/sensors/ErrorConsumer;->onError(II)V

    .line 439
    return-void

    .line 441
    .end local v0    # "errorConsumer":Lcom/android/server/biometrics/sensors/ErrorConsumer;
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Operation is in the wrong state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", expected STATE_WAITING_FOR_COOKIE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    return-void

    .line 446
    :cond_2
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;

    iget-object v0, v0, Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getCookie()I

    move-result v0

    if-eq v0, p1, :cond_3

    .line 447
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Mismatched cookie for operation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", received: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    return-void

    .line 452
    :cond_3
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;->isUnstartableHalOperation()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 453
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[Unable To Start] Prepared client: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;

    iget-object v0, v0, Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    check-cast v0, Lcom/android/server/biometrics/sensors/HalClientMonitor;

    .line 457
    .local v0, "halClientMonitor":Lcom/android/server/biometrics/sensors/HalClientMonitor;, "Lcom/android/server/biometrics/sensors/HalClientMonitor<*>;"
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/HalClientMonitor;->unableToStart()V

    .line 458
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;

    iget-object v1, v1, Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;->mClientCallback:Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;

    if-eqz v1, :cond_4

    .line 459
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;

    iget-object v1, v1, Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;->mClientCallback:Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;

    iget-object v3, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;

    iget-object v3, v3, Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    invoke-interface {v1, v3, v2}, Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    .line 462
    :cond_4
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;

    .line 463
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->startNextOperationIfIdle()V

    .line 464
    .end local v0    # "halClientMonitor":Lcom/android/server/biometrics/sensors/HalClientMonitor;, "Lcom/android/server/biometrics/sensors/HalClientMonitor<*>;"
    goto :goto_0

    .line 465
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Starting] Prepared client: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;

    const/4 v1, 0x2

    iput v1, v0, Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;->mState:I

    .line 467
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;

    iget-object v0, v0, Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getInternalCallback()Lcom/android/server/biometrics/sensors/BiometricScheduler$InternalCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->start(Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;)V

    .line 469
    :goto_0
    return-void
.end method
