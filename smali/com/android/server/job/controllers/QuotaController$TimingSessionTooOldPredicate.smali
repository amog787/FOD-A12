.class final Lcom/android/server/job/controllers/QuotaController$TimingSessionTooOldPredicate;
.super Ljava/lang/Object;
.source "QuotaController.java"

# interfaces
.implements Ljava/util/function/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/controllers/QuotaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TimingSessionTooOldPredicate"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Predicate<",
        "Lcom/android/server/job/controllers/QuotaController$TimingSession;",
        ">;"
    }
.end annotation


# instance fields
.field private mNowElapsed:J


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2482
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/job/controllers/QuotaController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/job/controllers/QuotaController$1;

    .line 2482
    invoke-direct {p0}, Lcom/android/server/job/controllers/QuotaController$TimingSessionTooOldPredicate;-><init>()V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/server/job/controllers/QuotaController$TimingSessionTooOldPredicate;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/job/controllers/QuotaController$TimingSessionTooOldPredicate;

    .line 2482
    invoke-direct {p0}, Lcom/android/server/job/controllers/QuotaController$TimingSessionTooOldPredicate;->updateNow()V

    return-void
.end method

.method private updateNow()V
    .locals 2

    .line 2486
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$TimingSessionTooOldPredicate;->mNowElapsed:J

    .line 2487
    return-void
.end method


# virtual methods
.method public test(Lcom/android/server/job/controllers/QuotaController$TimingSession;)Z
    .locals 6
    .param p1, "ts"    # Lcom/android/server/job/controllers/QuotaController$TimingSession;

    .line 2491
    iget-wide v0, p1, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    iget-wide v2, p0, Lcom/android/server/job/controllers/QuotaController$TimingSessionTooOldPredicate;->mNowElapsed:J

    const-wide/32 v4, 0x5265c00

    sub-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic test(Ljava/lang/Object;)Z
    .locals 0

    .line 2482
    check-cast p1, Lcom/android/server/job/controllers/QuotaController$TimingSession;

    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/QuotaController$TimingSessionTooOldPredicate;->test(Lcom/android/server/job/controllers/QuotaController$TimingSession;)Z

    move-result p1

    return p1
.end method
