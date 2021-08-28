.class final Lcom/android/server/vibrator/StepToRampAdapter;
.super Ljava/lang/Object;
.source "StepToRampAdapter.java"

# interfaces
.implements Lcom/android/server/vibrator/VibrationEffectAdapters$SegmentsAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/server/vibrator/VibrationEffectAdapters$SegmentsAdapter<",
        "Landroid/os/VibratorInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static convertStepToRamp(Landroid/os/vibrator/StepSegment;)Landroid/os/vibrator/RampSegment;
    .locals 9
    .param p0, "segment"    # Landroid/os/vibrator/StepSegment;

    .line 108
    new-instance v6, Landroid/os/vibrator/RampSegment;

    invoke-virtual {p0}, Landroid/os/vibrator/StepSegment;->getAmplitude()F

    move-result v1

    invoke-virtual {p0}, Landroid/os/vibrator/StepSegment;->getAmplitude()F

    move-result v2

    .line 109
    invoke-virtual {p0}, Landroid/os/vibrator/StepSegment;->getFrequency()F

    move-result v3

    invoke-virtual {p0}, Landroid/os/vibrator/StepSegment;->getFrequency()F

    move-result v4

    invoke-virtual {p0}, Landroid/os/vibrator/StepSegment;->getDuration()J

    move-result-wide v7

    long-to-int v5, v7

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/os/vibrator/RampSegment;-><init>(FFFFI)V

    .line 108
    return-object v6
.end method

.method private convertStepsToRamps(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/vibrator/VibrationEffectSegment;",
            ">;)V"
        }
    .end annotation

    .line 50
    .local p1, "segments":Ljava/util/List;, "Ljava/util/List<Landroid/os/vibrator/VibrationEffectSegment;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 52
    .local v0, "segmentCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 53
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/vibrator/VibrationEffectSegment;

    .line 54
    .local v2, "segment":Landroid/os/vibrator/VibrationEffectSegment;
    invoke-static {v2}, Lcom/android/server/vibrator/StepToRampAdapter;->isStep(Landroid/os/vibrator/VibrationEffectSegment;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Landroid/os/vibrator/StepSegment;

    invoke-virtual {v3}, Landroid/os/vibrator/StepSegment;->getFrequency()F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_0

    .line 55
    move-object v3, v2

    check-cast v3, Landroid/os/vibrator/StepSegment;

    invoke-static {v3}, Lcom/android/server/vibrator/StepToRampAdapter;->convertStepToRamp(Landroid/os/vibrator/StepSegment;)Landroid/os/vibrator/RampSegment;

    move-result-object v3

    invoke-interface {p1, v1, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 52
    .end local v2    # "segment":Landroid/os/vibrator/VibrationEffectSegment;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 60
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    if-ge v1, v0, :cond_4

    .line 61
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Landroid/os/vibrator/RampSegment;

    if-eqz v2, :cond_3

    .line 62
    add-int/lit8 v2, v1, -0x1

    .local v2, "j":I
    :goto_2
    if-ltz v2, :cond_2

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/vibrator/VibrationEffectSegment;

    invoke-static {v3}, Lcom/android/server/vibrator/StepToRampAdapter;->isStep(Landroid/os/vibrator/VibrationEffectSegment;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 63
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/vibrator/StepSegment;

    invoke-static {v3}, Lcom/android/server/vibrator/StepToRampAdapter;->convertStepToRamp(Landroid/os/vibrator/StepSegment;)Landroid/os/vibrator/RampSegment;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 62
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 65
    .end local v2    # "j":I
    :cond_2
    add-int/lit8 v2, v1, 0x1

    .restart local v2    # "j":I
    :goto_3
    if-ge v2, v0, :cond_3

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/vibrator/VibrationEffectSegment;

    invoke-static {v3}, Lcom/android/server/vibrator/StepToRampAdapter;->isStep(Landroid/os/vibrator/VibrationEffectSegment;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 66
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/vibrator/StepSegment;

    invoke-static {v3}, Lcom/android/server/vibrator/StepToRampAdapter;->convertStepToRamp(Landroid/os/vibrator/StepSegment;)Landroid/os/vibrator/RampSegment;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 65
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 60
    .end local v2    # "j":I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 70
    .end local v1    # "i":I
    :cond_4
    return-void
.end method

.method private static interpolate(FFJJ)F
    .locals 2
    .param p0, "start"    # F
    .param p1, "end"    # F
    .param p2, "duration"    # J
    .param p4, "totalDuration"    # J

    .line 151
    long-to-float v0, p2

    long-to-float v1, p4

    div-float/2addr v0, v1

    .line 152
    .local v0, "position":F
    sub-float v1, p1, p0

    mul-float/2addr v1, v0

    add-float/2addr v1, p0

    return v1
.end method

.method private static interpolateAmplitude(Landroid/os/vibrator/RampSegment;J)F
    .locals 6
    .param p0, "ramp"    # Landroid/os/vibrator/RampSegment;
    .param p1, "duration"    # J

    .line 141
    invoke-virtual {p0}, Landroid/os/vibrator/RampSegment;->getStartAmplitude()F

    move-result v0

    invoke-virtual {p0}, Landroid/os/vibrator/RampSegment;->getEndAmplitude()F

    move-result v1

    .line 142
    invoke-virtual {p0}, Landroid/os/vibrator/RampSegment;->getDuration()J

    move-result-wide v4

    .line 141
    move-wide v2, p1

    invoke-static/range {v0 .. v5}, Lcom/android/server/vibrator/StepToRampAdapter;->interpolate(FFJJ)F

    move-result v0

    return v0
.end method

.method private static interpolateFrequency(Landroid/os/vibrator/RampSegment;J)F
    .locals 6
    .param p0, "ramp"    # Landroid/os/vibrator/RampSegment;
    .param p1, "duration"    # J

    .line 146
    invoke-virtual {p0}, Landroid/os/vibrator/RampSegment;->getStartFrequency()F

    move-result v0

    invoke-virtual {p0}, Landroid/os/vibrator/RampSegment;->getEndFrequency()F

    move-result v1

    .line 147
    invoke-virtual {p0}, Landroid/os/vibrator/RampSegment;->getDuration()J

    move-result-wide v4

    .line 146
    move-wide v2, p1

    invoke-static/range {v0 .. v5}, Lcom/android/server/vibrator/StepToRampAdapter;->interpolate(FFJJ)F

    move-result v0

    return v0
.end method

.method private static isStep(Landroid/os/vibrator/VibrationEffectSegment;)Z
    .locals 1
    .param p0, "segment"    # Landroid/os/vibrator/VibrationEffectSegment;

    .line 137
    instance-of v0, p0, Landroid/os/vibrator/StepSegment;

    return v0
.end method

.method private splitLongRampSegments(Landroid/os/VibratorInfo;Ljava/util/List;I)I
    .locals 7
    .param p1, "info"    # Landroid/os/VibratorInfo;
    .param p3, "repeatIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/VibratorInfo;",
            "Ljava/util/List<",
            "Landroid/os/vibrator/VibrationEffectSegment;",
            ">;I)I"
        }
    .end annotation

    .line 78
    .local p2, "segments":Ljava/util/List;, "Ljava/util/List<Landroid/os/vibrator/VibrationEffectSegment;>;"
    invoke-virtual {p1}, Landroid/os/VibratorInfo;->getPwlePrimitiveDurationMax()I

    move-result v0

    .line 79
    .local v0, "maxDuration":I
    if-gtz v0, :cond_0

    .line 81
    return p3

    .line 84
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    .line 85
    .local v1, "segmentCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_4

    .line 86
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Landroid/os/vibrator/RampSegment;

    const/4 v4, 0x1

    if-nez v3, :cond_1

    .line 87
    goto :goto_1

    .line 89
    :cond_1
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/vibrator/RampSegment;

    .line 90
    .local v3, "ramp":Landroid/os/vibrator/RampSegment;
    invoke-virtual {v3}, Landroid/os/vibrator/RampSegment;->getDuration()J

    move-result-wide v5

    long-to-int v5, v5

    add-int/2addr v5, v0

    sub-int/2addr v5, v4

    div-int/2addr v5, v0

    .line 91
    .local v5, "splits":I
    if-gt v5, v4, :cond_2

    .line 92
    goto :goto_1

    .line 94
    :cond_2
    invoke-interface {p2, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 95
    invoke-static {v3, v5}, Lcom/android/server/vibrator/StepToRampAdapter;->splitRampSegment(Landroid/os/vibrator/RampSegment;I)Ljava/util/List;

    move-result-object v6

    invoke-interface {p2, v2, v6}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 96
    add-int/lit8 v6, v5, -0x1

    .line 97
    .local v6, "addedSegments":I
    if-le p3, v2, :cond_3

    .line 98
    add-int/2addr p3, v6

    .line 100
    :cond_3
    add-int/2addr v2, v6

    .line 101
    add-int/2addr v1, v6

    .line 85
    .end local v3    # "ramp":Landroid/os/vibrator/RampSegment;
    .end local v5    # "splits":I
    .end local v6    # "addedSegments":I
    :goto_1
    add-int/2addr v2, v4

    goto :goto_0

    .line 104
    .end local v2    # "i":I
    :cond_4
    return p3
.end method

.method private static splitRampSegment(Landroid/os/vibrator/RampSegment;I)Ljava/util/List;
    .locals 17
    .param p0, "ramp"    # Landroid/os/vibrator/RampSegment;
    .param p1, "splits"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/vibrator/RampSegment;",
            "I)",
            "Ljava/util/List<",
            "Landroid/os/vibrator/RampSegment;",
            ">;"
        }
    .end annotation

    .line 113
    move-object/from16 v0, p0

    move/from16 v1, p1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 114
    .local v2, "ramps":Ljava/util/List;, "Ljava/util/List<Landroid/os/vibrator/RampSegment;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/os/vibrator/RampSegment;->getDuration()J

    move-result-wide v3

    int-to-long v5, v1

    div-long/2addr v3, v5

    .line 115
    .local v3, "splitDuration":J
    invoke-virtual/range {p0 .. p0}, Landroid/os/vibrator/RampSegment;->getStartAmplitude()F

    move-result v5

    .line 116
    .local v5, "previousAmplitude":F
    invoke-virtual/range {p0 .. p0}, Landroid/os/vibrator/RampSegment;->getStartFrequency()F

    move-result v6

    .line 117
    .local v6, "previousFrequency":F
    const-wide/16 v7, 0x0

    .line 119
    .local v7, "accumulatedDuration":J
    const/4 v9, 0x1

    .local v9, "i":I
    :goto_0
    if-ge v9, v1, :cond_0

    .line 120
    add-long/2addr v7, v3

    .line 121
    new-instance v16, Landroid/os/vibrator/RampSegment;

    .line 122
    invoke-static {v0, v7, v8}, Lcom/android/server/vibrator/StepToRampAdapter;->interpolateAmplitude(Landroid/os/vibrator/RampSegment;J)F

    move-result v12

    .line 123
    invoke-static {v0, v7, v8}, Lcom/android/server/vibrator/StepToRampAdapter;->interpolateFrequency(Landroid/os/vibrator/RampSegment;J)F

    move-result v14

    long-to-int v15, v3

    move-object/from16 v10, v16

    move v11, v5

    move v13, v6

    invoke-direct/range {v10 .. v15}, Landroid/os/vibrator/RampSegment;-><init>(FFFFI)V

    .line 125
    .local v10, "rampSplit":Landroid/os/vibrator/RampSegment;
    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    invoke-virtual {v10}, Landroid/os/vibrator/RampSegment;->getEndAmplitude()F

    move-result v5

    .line 127
    invoke-virtual {v10}, Landroid/os/vibrator/RampSegment;->getEndFrequency()F

    move-result v6

    .line 119
    .end local v10    # "rampSplit":Landroid/os/vibrator/RampSegment;
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 130
    .end local v9    # "i":I
    :cond_0
    new-instance v9, Landroid/os/vibrator/RampSegment;

    invoke-virtual/range {p0 .. p0}, Landroid/os/vibrator/RampSegment;->getEndAmplitude()F

    move-result v12

    .line 131
    invoke-virtual/range {p0 .. p0}, Landroid/os/vibrator/RampSegment;->getEndFrequency()F

    move-result v14

    invoke-virtual/range {p0 .. p0}, Landroid/os/vibrator/RampSegment;->getDuration()J

    move-result-wide v10

    sub-long/2addr v10, v7

    long-to-int v15, v10

    move-object v10, v9

    move v11, v5

    move v13, v6

    invoke-direct/range {v10 .. v15}, Landroid/os/vibrator/RampSegment;-><init>(FFFFI)V

    .line 130
    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    return-object v2
.end method


# virtual methods
.method public apply(Ljava/util/List;ILandroid/os/VibratorInfo;)I
    .locals 2
    .param p2, "repeatIndex"    # I
    .param p3, "info"    # Landroid/os/VibratorInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/vibrator/VibrationEffectSegment;",
            ">;I",
            "Landroid/os/VibratorInfo;",
            ")I"
        }
    .end annotation

    .line 40
    .local p1, "segments":Ljava/util/List;, "Ljava/util/List<Landroid/os/vibrator/VibrationEffectSegment;>;"
    const-wide/16 v0, 0x400

    invoke-virtual {p3, v0, v1}, Landroid/os/VibratorInfo;->hasCapability(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 42
    return p2

    .line 44
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/vibrator/StepToRampAdapter;->convertStepsToRamps(Ljava/util/List;)V

    .line 45
    invoke-direct {p0, p3, p1, p2}, Lcom/android/server/vibrator/StepToRampAdapter;->splitLongRampSegments(Landroid/os/VibratorInfo;Ljava/util/List;I)I

    move-result p2

    .line 46
    return p2
.end method

.method public bridge synthetic apply(Ljava/util/List;ILjava/lang/Object;)I
    .locals 0

    .line 35
    check-cast p3, Landroid/os/VibratorInfo;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/vibrator/StepToRampAdapter;->apply(Ljava/util/List;ILandroid/os/VibratorInfo;)I

    move-result p1

    return p1
.end method
