.class final Lcom/android/server/vibrator/VibrationThread$RampOffStep;
.super Lcom/android/server/vibrator/VibrationThread$SingleVibratorStep;
.source "VibrationThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vibrator/VibrationThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RampOffStep"
.end annotation


# instance fields
.field private final mAmplitudeDelta:F

.field private final mAmplitudeTarget:F

.field final synthetic this$0:Lcom/android/server/vibrator/VibrationThread;


# direct methods
.method constructor <init>(Lcom/android/server/vibrator/VibrationThread;JFFLcom/android/server/vibrator/VibratorController;J)V
    .locals 10
    .param p2, "startTime"    # J
    .param p4, "amplitudeTarget"    # F
    .param p5, "amplitudeDelta"    # F
    .param p6, "controller"    # Lcom/android/server/vibrator/VibratorController;
    .param p7, "vibratorOffTimeout"    # J

    .line 1191
    move-object v9, p0

    move-object v1, p1

    iput-object v1, v9, Lcom/android/server/vibrator/VibrationThread$RampOffStep;->this$0:Lcom/android/server/vibrator/VibrationThread;

    .line 1192
    const/4 v5, 0x0

    const/4 v6, -0x1

    move-object v0, p0

    move-wide v2, p2

    move-object/from16 v4, p6

    move-wide/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/android/server/vibrator/VibrationThread$SingleVibratorStep;-><init>(Lcom/android/server/vibrator/VibrationThread;JLcom/android/server/vibrator/VibratorController;Landroid/os/VibrationEffect$Composed;IJ)V

    .line 1193
    move v0, p4

    iput v0, v9, Lcom/android/server/vibrator/VibrationThread$RampOffStep;->mAmplitudeTarget:F

    .line 1194
    move v1, p5

    iput v1, v9, Lcom/android/server/vibrator/VibrationThread$RampOffStep;->mAmplitudeDelta:F

    .line 1195
    return-void
.end method


# virtual methods
.method public cancel()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/vibrator/VibrationThread$Step;",
            ">;"
        }
    .end annotation

    .line 1204
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/server/vibrator/VibrationThread$Step;

    new-instance v1, Lcom/android/server/vibrator/VibrationThread$OffStep;

    iget-object v2, p0, Lcom/android/server/vibrator/VibrationThread$RampOffStep;->this$0:Lcom/android/server/vibrator/VibrationThread;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-object v5, p0, Lcom/android/server/vibrator/VibrationThread$RampOffStep;->controller:Lcom/android/server/vibrator/VibratorController;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/server/vibrator/VibrationThread$OffStep;-><init>(Lcom/android/server/vibrator/VibrationThread;JLcom/android/server/vibrator/VibratorController;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public isCleanUp()Z
    .locals 1

    .line 1199
    const/4 v0, 0x1

    return v0
.end method

.method public play()Ljava/util/List;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/vibrator/VibrationThread$Step;",
            ">;"
        }
    .end annotation

    .line 1209
    const-wide/32 v0, 0x800000

    const-string v2, "RampOffStep"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1216
    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/vibrator/VibrationThread$RampOffStep;->mVibratorCallbackReceived:Z

    if-eqz v2, :cond_0

    .line 1219
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibrationThread$RampOffStep;->stopVibrating()V

    .line 1220
    invoke-static {}, Lcom/android/server/vibrator/VibrationThread;->access$300()Ljava/util/List;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1234
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1220
    return-object v2

    .line 1223
    :cond_0
    :try_start_1
    iget v2, p0, Lcom/android/server/vibrator/VibrationThread$RampOffStep;->mAmplitudeTarget:F

    invoke-virtual {p0, v2}, Lcom/android/server/vibrator/VibrationThread$RampOffStep;->changeAmplitude(F)V

    .line 1225
    iget v2, p0, Lcom/android/server/vibrator/VibrationThread$RampOffStep;->mAmplitudeTarget:F

    iget v3, p0, Lcom/android/server/vibrator/VibrationThread$RampOffStep;->mAmplitudeDelta:F

    sub-float/2addr v2, v3

    .line 1226
    .local v2, "newAmplitudeTarget":F
    const v3, 0x3a83126f    # 0.001f

    cmpg-float v3, v2, v3

    const/4 v13, 0x0

    const/4 v4, 0x1

    if-gez v3, :cond_1

    .line 1228
    new-array v3, v4, [Lcom/android/server/vibrator/VibrationThread$Step;

    new-instance v4, Lcom/android/server/vibrator/VibrationThread$OffStep;

    iget-object v5, p0, Lcom/android/server/vibrator/VibrationThread$RampOffStep;->this$0:Lcom/android/server/vibrator/VibrationThread;

    iget-wide v6, p0, Lcom/android/server/vibrator/VibrationThread$RampOffStep;->vibratorOffTimeout:J

    iget-object v8, p0, Lcom/android/server/vibrator/VibrationThread$RampOffStep;->controller:Lcom/android/server/vibrator/VibratorController;

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/android/server/vibrator/VibrationThread$OffStep;-><init>(Lcom/android/server/vibrator/VibrationThread;JLcom/android/server/vibrator/VibratorController;)V

    aput-object v4, v3, v13

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1234
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1228
    return-object v3

    .line 1230
    :cond_1
    :try_start_2
    new-array v3, v4, [Lcom/android/server/vibrator/VibrationThread$Step;

    new-instance v14, Lcom/android/server/vibrator/VibrationThread$RampOffStep;

    iget-object v5, p0, Lcom/android/server/vibrator/VibrationThread$RampOffStep;->this$0:Lcom/android/server/vibrator/VibrationThread;

    iget-wide v6, p0, Lcom/android/server/vibrator/VibrationThread$RampOffStep;->startTime:J

    iget-object v4, p0, Lcom/android/server/vibrator/VibrationThread$RampOffStep;->this$0:Lcom/android/server/vibrator/VibrationThread;

    .line 1231
    invoke-static {v4}, Lcom/android/server/vibrator/VibrationThread;->access$1000(Lcom/android/server/vibrator/VibrationThread;)Lcom/android/server/vibrator/VibrationSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/vibrator/VibrationSettings;->getRampStepDuration()I

    move-result v4

    int-to-long v8, v4

    add-long/2addr v6, v8

    iget v9, p0, Lcom/android/server/vibrator/VibrationThread$RampOffStep;->mAmplitudeDelta:F

    iget-object v10, p0, Lcom/android/server/vibrator/VibrationThread$RampOffStep;->controller:Lcom/android/server/vibrator/VibratorController;

    iget-wide v11, p0, Lcom/android/server/vibrator/VibrationThread$RampOffStep;->vibratorOffTimeout:J

    move-object v4, v14

    move v8, v2

    invoke-direct/range {v4 .. v12}, Lcom/android/server/vibrator/VibrationThread$RampOffStep;-><init>(Lcom/android/server/vibrator/VibrationThread;JFFLcom/android/server/vibrator/VibratorController;J)V

    aput-object v14, v3, v13

    .line 1230
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1234
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1230
    return-object v3

    .line 1234
    .end local v2    # "newAmplitudeTarget":F
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1235
    throw v2
.end method
