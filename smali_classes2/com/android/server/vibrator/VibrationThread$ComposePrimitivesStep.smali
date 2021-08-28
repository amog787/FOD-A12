.class final Lcom/android/server/vibrator/VibrationThread$ComposePrimitivesStep;
.super Lcom/android/server/vibrator/VibrationThread$SingleVibratorStep;
.source "VibrationThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vibrator/VibrationThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ComposePrimitivesStep"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/vibrator/VibrationThread;


# direct methods
.method constructor <init>(Lcom/android/server/vibrator/VibrationThread;JLcom/android/server/vibrator/VibratorController;Landroid/os/VibrationEffect$Composed;IJ)V
    .locals 14
    .param p2, "startTime"    # J
    .param p4, "controller"    # Lcom/android/server/vibrator/VibratorController;
    .param p5, "effect"    # Landroid/os/VibrationEffect$Composed;
    .param p6, "index"    # I
    .param p7, "vibratorOffTimeout"    # J

    .line 1001
    move-object v9, p0

    move-object v1, p1

    iput-object v1, v9, Lcom/android/server/vibrator/VibrationThread$ComposePrimitivesStep;->this$0:Lcom/android/server/vibrator/VibrationThread;

    .line 1004
    move-wide/from16 v10, p2

    move-wide/from16 v12, p7

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    move-object v0, p0

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-wide/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/android/server/vibrator/VibrationThread$SingleVibratorStep;-><init>(Lcom/android/server/vibrator/VibrationThread;JLcom/android/server/vibrator/VibratorController;Landroid/os/VibrationEffect$Composed;IJ)V

    .line 1006
    return-void
.end method


# virtual methods
.method public play()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/vibrator/VibrationThread$Step;",
            ">;"
        }
    .end annotation

    .line 1010
    const-wide/32 v0, 0x800000

    const-string v2, "ComposePrimitivesStep"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1014
    :try_start_0
    iget-object v2, p0, Lcom/android/server/vibrator/VibrationThread$ComposePrimitivesStep;->controller:Lcom/android/server/vibrator/VibratorController;

    invoke-virtual {v2}, Lcom/android/server/vibrator/VibratorController;->getVibratorInfo()Landroid/os/VibratorInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/VibratorInfo;->getCompositionSizeMax()I

    move-result v2

    .line 1015
    .local v2, "limit":I
    if-lez v2, :cond_0

    .line 1016
    iget-object v3, p0, Lcom/android/server/vibrator/VibrationThread$ComposePrimitivesStep;->effect:Landroid/os/VibrationEffect$Composed;

    invoke-virtual {v3}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget v4, p0, Lcom/android/server/vibrator/VibrationThread$ComposePrimitivesStep;->segmentIndex:I

    add-int/2addr v4, v2

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    goto :goto_0

    .line 1017
    :cond_0
    iget-object v3, p0, Lcom/android/server/vibrator/VibrationThread$ComposePrimitivesStep;->effect:Landroid/os/VibrationEffect$Composed;

    invoke-virtual {v3}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    :goto_0
    nop

    .line 1018
    .local v3, "segmentCount":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1019
    .local v4, "primitives":Ljava/util/List;, "Ljava/util/List<Landroid/os/vibrator/PrimitiveSegment;>;"
    iget v5, p0, Lcom/android/server/vibrator/VibrationThread$ComposePrimitivesStep;->segmentIndex:I

    .local v5, "i":I
    :goto_1
    if-ge v5, v3, :cond_1

    .line 1020
    iget-object v6, p0, Lcom/android/server/vibrator/VibrationThread$ComposePrimitivesStep;->effect:Landroid/os/VibrationEffect$Composed;

    invoke-virtual {v6}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/vibrator/VibrationEffectSegment;

    .line 1021
    .local v6, "segment":Landroid/os/vibrator/VibrationEffectSegment;
    instance-of v7, v6, Landroid/os/vibrator/PrimitiveSegment;

    if-eqz v7, :cond_1

    .line 1022
    move-object v7, v6

    check-cast v7, Landroid/os/vibrator/PrimitiveSegment;

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1019
    nop

    .end local v6    # "segment":Landroid/os/vibrator/VibrationEffectSegment;
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1028
    .end local v5    # "i":I
    :cond_1
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1029
    const-string v5, "VibrationThread"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Ignoring wrong segment for a ComposePrimitivesStep: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/vibrator/VibrationThread$ComposePrimitivesStep;->effect:Landroid/os/VibrationEffect$Composed;

    .line 1030
    invoke-virtual {v7}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    move-result-object v7

    iget v8, p0, Lcom/android/server/vibrator/VibrationThread$ComposePrimitivesStep;->segmentIndex:I

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1029
    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1031
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/android/server/vibrator/VibrationThread$ComposePrimitivesStep;->skipToNextSteps(I)Ljava/util/List;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1044
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1031
    return-object v5

    .line 1038
    :cond_2
    :try_start_1
    iget-object v5, p0, Lcom/android/server/vibrator/VibrationThread$ComposePrimitivesStep;->controller:Lcom/android/server/vibrator/VibratorController;

    .line 1039
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Landroid/os/vibrator/PrimitiveSegment;

    invoke-interface {v4, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/os/vibrator/PrimitiveSegment;

    iget-object v7, p0, Lcom/android/server/vibrator/VibrationThread$ComposePrimitivesStep;->this$0:Lcom/android/server/vibrator/VibrationThread;

    .line 1040
    invoke-static {v7}, Lcom/android/server/vibrator/VibrationThread;->access$700(Lcom/android/server/vibrator/VibrationThread;)Lcom/android/server/vibrator/Vibration;

    move-result-object v7

    iget-wide v7, v7, Lcom/android/server/vibrator/Vibration;->id:J

    .line 1038
    invoke-virtual {v5, v6, v7, v8}, Lcom/android/server/vibrator/VibratorController;->on([Landroid/os/vibrator/PrimitiveSegment;J)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/server/vibrator/VibrationThread$ComposePrimitivesStep;->mVibratorOnResult:J

    .line 1042
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/server/vibrator/VibrationThread$ComposePrimitivesStep;->nextSteps(I)Ljava/util/List;

    move-result-object v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1044
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1042
    return-object v5

    .line 1044
    .end local v2    # "limit":I
    .end local v3    # "segmentCount":I
    .end local v4    # "primitives":Ljava/util/List;, "Ljava/util/List<Landroid/os/vibrator/PrimitiveSegment;>;"
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1045
    throw v2
.end method
