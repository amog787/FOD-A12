.class abstract Lcom/android/server/vibrator/VibrationThread$Step;
.super Ljava/lang/Object;
.source "VibrationThread.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vibrator/VibrationThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "Step"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/android/server/vibrator/VibrationThread$Step;",
        ">;"
    }
.end annotation


# instance fields
.field public final startTime:J

.field final synthetic this$0:Lcom/android/server/vibrator/VibrationThread;


# direct methods
.method constructor <init>(Lcom/android/server/vibrator/VibrationThread;J)V
    .locals 0
    .param p2, "startTime"    # J

    .line 508
    iput-object p1, p0, Lcom/android/server/vibrator/VibrationThread$Step;->this$0:Lcom/android/server/vibrator/VibrationThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 509
    iput-wide p2, p0, Lcom/android/server/vibrator/VibrationThread$Step;->startTime:J

    .line 510
    return-void
.end method


# virtual methods
.method public calculateWaitTime()J
    .locals 7

    .line 555
    iget-wide v0, p0, Lcom/android/server/vibrator/VibrationThread$Step;->startTime:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v2, v0, v2

    const-wide/16 v3, 0x0

    if-nez v2, :cond_0

    .line 558
    return-wide v3

    .line 560
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    sub-long/2addr v0, v5

    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public abstract cancel()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/vibrator/VibrationThread$Step;",
            ">;"
        }
    .end annotation
.end method

.method public abstract cancelImmediately()V
.end method

.method public compareTo(Lcom/android/server/vibrator/VibrationThread$Step;)I
    .locals 4
    .param p1, "o"    # Lcom/android/server/vibrator/VibrationThread$Step;

    .line 565
    iget-wide v0, p0, Lcom/android/server/vibrator/VibrationThread$Step;->startTime:J

    iget-wide v2, p1, Lcom/android/server/vibrator/VibrationThread$Step;->startTime:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 505
    check-cast p1, Lcom/android/server/vibrator/VibrationThread$Step;

    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/VibrationThread$Step;->compareTo(Lcom/android/server/vibrator/VibrationThread$Step;)I

    move-result p1

    return p1
.end method

.method public getVibratorOnDuration()J
    .locals 2

    .line 542
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public isCleanUp()Z
    .locals 1

    .line 517
    const/4 v0, 0x0

    return v0
.end method

.method public abstract play()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/vibrator/VibrationThread$Step;",
            ">;"
        }
    .end annotation
.end method

.method public shouldPlayWhenVibratorComplete(I)Z
    .locals 1
    .param p1, "vibratorId"    # I

    .line 550
    const/4 v0, 0x0

    return v0
.end method
