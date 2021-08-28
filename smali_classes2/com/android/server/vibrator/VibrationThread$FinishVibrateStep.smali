.class final Lcom/android/server/vibrator/VibrationThread$FinishVibrateStep;
.super Lcom/android/server/vibrator/VibrationThread$Step;
.source "VibrationThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vibrator/VibrationThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FinishVibrateStep"
.end annotation


# instance fields
.field public final startedStep:Lcom/android/server/vibrator/VibrationThread$StartVibrateStep;

.field final synthetic this$0:Lcom/android/server/vibrator/VibrationThread;


# direct methods
.method constructor <init>(Lcom/android/server/vibrator/VibrationThread;Lcom/android/server/vibrator/VibrationThread$StartVibrateStep;)V
    .locals 2
    .param p2, "startedStep"    # Lcom/android/server/vibrator/VibrationThread$StartVibrateStep;

    .line 767
    iput-object p1, p0, Lcom/android/server/vibrator/VibrationThread$FinishVibrateStep;->this$0:Lcom/android/server/vibrator/VibrationThread;

    .line 768
    const-wide v0, 0x7fffffffffffffffL

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/vibrator/VibrationThread$Step;-><init>(Lcom/android/server/vibrator/VibrationThread;J)V

    .line 769
    iput-object p2, p0, Lcom/android/server/vibrator/VibrationThread$FinishVibrateStep;->startedStep:Lcom/android/server/vibrator/VibrationThread$StartVibrateStep;

    .line 770
    return-void
.end method


# virtual methods
.method public cancel()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/vibrator/VibrationThread$Step;",
            ">;"
        }
    .end annotation

    .line 795
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibrationThread$FinishVibrateStep;->cancelImmediately()V

    .line 796
    invoke-static {}, Lcom/android/server/vibrator/VibrationThread;->access$300()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public cancelImmediately()V
    .locals 1

    .line 801
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationThread$FinishVibrateStep;->this$0:Lcom/android/server/vibrator/VibrationThread;

    invoke-static {v0}, Lcom/android/server/vibrator/VibrationThread;->access$800(Lcom/android/server/vibrator/VibrationThread;)V

    .line 802
    return-void
.end method

.method public isCleanUp()Z
    .locals 1

    .line 775
    const/4 v0, 0x1

    return v0
.end method

.method public play()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/vibrator/VibrationThread$Step;",
            ">;"
        }
    .end annotation

    .line 780
    const-wide/32 v0, 0x800000

    const-string v2, "FinishVibrateStep"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 785
    :try_start_0
    iget-object v2, p0, Lcom/android/server/vibrator/VibrationThread$FinishVibrateStep;->this$0:Lcom/android/server/vibrator/VibrationThread;

    invoke-static {v2}, Lcom/android/server/vibrator/VibrationThread;->access$800(Lcom/android/server/vibrator/VibrationThread;)V

    .line 786
    iget-object v2, p0, Lcom/android/server/vibrator/VibrationThread$FinishVibrateStep;->startedStep:Lcom/android/server/vibrator/VibrationThread$StartVibrateStep;

    invoke-static {v2}, Lcom/android/server/vibrator/VibrationThread$StartVibrateStep;->access$900(Lcom/android/server/vibrator/VibrationThread$StartVibrateStep;)Lcom/android/server/vibrator/VibrationThread$Step;

    move-result-object v2

    .line 787
    .local v2, "nextStep":Lcom/android/server/vibrator/VibrationThread$Step;
    if-nez v2, :cond_0

    invoke-static {}, Lcom/android/server/vibrator/VibrationThread;->access$300()Ljava/util/List;

    move-result-object v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    new-array v3, v3, [Lcom/android/server/vibrator/VibrationThread$Step;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 789
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 787
    return-object v3

    .line 789
    .end local v2    # "nextStep":Lcom/android/server/vibrator/VibrationThread$Step;
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 790
    throw v2
.end method
