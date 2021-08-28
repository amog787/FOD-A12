.class final Lcom/android/server/vibrator/VibrationThread$CompleteStep;
.super Lcom/android/server/vibrator/VibrationThread$SingleVibratorStep;
.source "VibrationThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vibrator/VibrationThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CompleteStep"
.end annotation


# instance fields
.field private final mCancelled:Z

.field final synthetic this$0:Lcom/android/server/vibrator/VibrationThread;


# direct methods
.method constructor <init>(Lcom/android/server/vibrator/VibrationThread;JZLcom/android/server/vibrator/VibratorController;J)V
    .locals 10
    .param p2, "startTime"    # J
    .param p4, "cancelled"    # Z
    .param p5, "controller"    # Lcom/android/server/vibrator/VibratorController;
    .param p6, "vibratorOffTimeout"    # J

    .line 1115
    move-object v9, p0

    move-object v1, p1

    iput-object v1, v9, Lcom/android/server/vibrator/VibrationThread$CompleteStep;->this$0:Lcom/android/server/vibrator/VibrationThread;

    .line 1116
    const/4 v5, 0x0

    const/4 v6, -0x1

    move-object v0, p0

    move-wide v2, p2

    move-object v4, p5

    move-wide/from16 v7, p6

    invoke-direct/range {v0 .. v8}, Lcom/android/server/vibrator/VibrationThread$SingleVibratorStep;-><init>(Lcom/android/server/vibrator/VibrationThread;JLcom/android/server/vibrator/VibratorController;Landroid/os/VibrationEffect$Composed;IJ)V

    .line 1117
    move v0, p4

    iput-boolean v0, v9, Lcom/android/server/vibrator/VibrationThread$CompleteStep;->mCancelled:Z

    .line 1118
    return-void
.end method


# virtual methods
.method public cancel()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/vibrator/VibrationThread$Step;",
            ">;"
        }
    .end annotation

    .line 1129
    iget-boolean v0, p0, Lcom/android/server/vibrator/VibrationThread$CompleteStep;->mCancelled:Z

    if-eqz v0, :cond_0

    .line 1131
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/server/vibrator/VibrationThread$Step;

    const/4 v1, 0x0

    new-instance v2, Lcom/android/server/vibrator/VibrationThread$OffStep;

    iget-object v3, p0, Lcom/android/server/vibrator/VibrationThread$CompleteStep;->this$0:Lcom/android/server/vibrator/VibrationThread;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-object v6, p0, Lcom/android/server/vibrator/VibrationThread$CompleteStep;->controller:Lcom/android/server/vibrator/VibratorController;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/server/vibrator/VibrationThread$OffStep;-><init>(Lcom/android/server/vibrator/VibrationThread;JLcom/android/server/vibrator/VibratorController;)V

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1133
    :cond_0
    invoke-super {p0}, Lcom/android/server/vibrator/VibrationThread$SingleVibratorStep;->cancel()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public isCleanUp()Z
    .locals 1

    .line 1124
    iget-boolean v0, p0, Lcom/android/server/vibrator/VibrationThread$CompleteStep;->mCancelled:Z

    return v0
.end method

.method public play()Ljava/util/List;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/vibrator/VibrationThread$Step;",
            ">;"
        }
    .end annotation

    .line 1138
    move-object/from16 v1, p0

    const-wide/32 v2, 0x800000

    const-string v0, "CompleteStep"

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1144
    :try_start_0
    iget-boolean v0, v1, Lcom/android/server/vibrator/VibrationThread$CompleteStep;->mVibratorCallbackReceived:Z

    if-eqz v0, :cond_0

    .line 1147
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/vibrator/VibrationThread$CompleteStep;->stopVibrating()V

    .line 1148
    invoke-static {}, Lcom/android/server/vibrator/VibrationThread;->access$300()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1180
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 1148
    return-object v0

    .line 1151
    :cond_0
    :try_start_1
    iget-object v0, v1, Lcom/android/server/vibrator/VibrationThread$CompleteStep;->controller:Lcom/android/server/vibrator/VibratorController;

    invoke-virtual {v0}, Lcom/android/server/vibrator/VibratorController;->getCurrentAmplitude()F

    move-result v0

    .line 1152
    .local v0, "currentAmplitude":F
    iget-wide v4, v1, Lcom/android/server/vibrator/VibrationThread$CompleteStep;->vibratorOffTimeout:J

    const-wide/16 v6, 0x64

    sub-long/2addr v4, v6

    .line 1153
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long/2addr v4, v6

    .line 1154
    .local v4, "remainingOnDuration":J
    iget-object v6, v1, Lcom/android/server/vibrator/VibrationThread$CompleteStep;->this$0:Lcom/android/server/vibrator/VibrationThread;

    .line 1155
    invoke-static {v6}, Lcom/android/server/vibrator/VibrationThread;->access$1000(Lcom/android/server/vibrator/VibrationThread;)Lcom/android/server/vibrator/VibrationSettings;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/vibrator/VibrationSettings;->getRampDownDuration()I

    move-result v6

    int-to-long v6, v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    .line 1156
    .local v6, "rampDownDuration":J
    iget-object v8, v1, Lcom/android/server/vibrator/VibrationThread$CompleteStep;->this$0:Lcom/android/server/vibrator/VibrationThread;

    invoke-static {v8}, Lcom/android/server/vibrator/VibrationThread;->access$1000(Lcom/android/server/vibrator/VibrationThread;)Lcom/android/server/vibrator/VibrationSettings;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/vibrator/VibrationSettings;->getRampStepDuration()I

    move-result v8

    int-to-long v8, v8

    .line 1157
    .local v8, "stepDownDuration":J
    const v10, 0x3a83126f    # 0.001f

    cmpg-float v10, v0, v10

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-ltz v10, :cond_3

    cmp-long v10, v6, v8

    if-gtz v10, :cond_1

    goto :goto_1

    .line 1174
    :cond_1
    div-long v13, v6, v8

    long-to-float v10, v13

    div-float v10, v0, v10

    .line 1175
    .local v10, "amplitudeDelta":F
    sub-float v22, v0, v10

    .line 1176
    .local v22, "amplitudeTarget":F
    iget-boolean v13, v1, Lcom/android/server/vibrator/VibrationThread$CompleteStep;->mCancelled:Z

    if-eqz v13, :cond_2

    move-wide/from16 v20, v6

    goto :goto_0

    :cond_2
    iget-wide v13, v1, Lcom/android/server/vibrator/VibrationThread$CompleteStep;->vibratorOffTimeout:J

    move-wide/from16 v20, v13

    .line 1177
    .local v20, "newVibratorOffTimeout":J
    :goto_0
    new-array v12, v12, [Lcom/android/server/vibrator/VibrationThread$Step;

    new-instance v23, Lcom/android/server/vibrator/VibrationThread$RampOffStep;

    iget-object v14, v1, Lcom/android/server/vibrator/VibrationThread$CompleteStep;->this$0:Lcom/android/server/vibrator/VibrationThread;

    iget-wide v2, v1, Lcom/android/server/vibrator/VibrationThread$CompleteStep;->startTime:J

    iget-object v15, v1, Lcom/android/server/vibrator/VibrationThread$CompleteStep;->controller:Lcom/android/server/vibrator/VibratorController;

    move-object/from16 v13, v23

    move-object/from16 v19, v15

    move-wide v15, v2

    move/from16 v17, v22

    move/from16 v18, v10

    invoke-direct/range {v13 .. v21}, Lcom/android/server/vibrator/VibrationThread$RampOffStep;-><init>(Lcom/android/server/vibrator/VibrationThread;JFFLcom/android/server/vibrator/VibratorController;J)V

    aput-object v23, v12, v11

    invoke-static {v12}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1180
    const-wide/32 v11, 0x800000

    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    .line 1177
    return-object v2

    .line 1160
    .end local v10    # "amplitudeDelta":F
    .end local v20    # "newVibratorOffTimeout":J
    .end local v22    # "amplitudeTarget":F
    :cond_3
    :goto_1
    :try_start_2
    iget-boolean v2, v1, Lcom/android/server/vibrator/VibrationThread$CompleteStep;->mCancelled:Z

    if-eqz v2, :cond_4

    .line 1162
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/vibrator/VibrationThread$CompleteStep;->stopVibrating()V

    .line 1163
    invoke-static {}, Lcom/android/server/vibrator/VibrationThread;->access$300()Ljava/util/List;

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1180
    const-wide/32 v10, 0x800000

    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    .line 1163
    return-object v2

    .line 1165
    :cond_4
    :try_start_3
    new-array v2, v12, [Lcom/android/server/vibrator/VibrationThread$Step;

    new-instance v3, Lcom/android/server/vibrator/VibrationThread$OffStep;

    iget-object v10, v1, Lcom/android/server/vibrator/VibrationThread$CompleteStep;->this$0:Lcom/android/server/vibrator/VibrationThread;

    iget-wide v12, v1, Lcom/android/server/vibrator/VibrationThread$CompleteStep;->vibratorOffTimeout:J

    iget-object v14, v1, Lcom/android/server/vibrator/VibrationThread$CompleteStep;->controller:Lcom/android/server/vibrator/VibratorController;

    invoke-direct {v3, v10, v12, v13, v14}, Lcom/android/server/vibrator/VibrationThread$OffStep;-><init>(Lcom/android/server/vibrator/VibrationThread;JLcom/android/server/vibrator/VibratorController;)V

    aput-object v3, v2, v11

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1180
    const-wide/32 v10, 0x800000

    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    .line 1165
    return-object v2

    .line 1180
    .end local v0    # "currentAmplitude":F
    .end local v4    # "remainingOnDuration":J
    .end local v6    # "rampDownDuration":J
    .end local v8    # "stepDownDuration":J
    :catchall_0
    move-exception v0

    const-wide/32 v2, 0x800000

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 1181
    throw v0
.end method
