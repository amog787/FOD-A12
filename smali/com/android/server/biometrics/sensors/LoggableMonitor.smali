.class public abstract Lcom/android/server/biometrics/sensors/LoggableMonitor;
.super Ljava/lang/Object;
.source "LoggableMonitor.java"


# static fields
.field public static final DEBUG:Z = false

.field public static final TAG:Ljava/lang/String; = "Biometrics/LoggableMonitor"


# instance fields
.field private mFirstAcquireTimeMs:J

.field private volatile mLastAmbientLux:F

.field private mLightSensorEnabled:Z

.field private final mLightSensorListener:Landroid/hardware/SensorEventListener;

.field private final mSensorManager:Landroid/hardware/SensorManager;

.field private mShouldLogMetrics:Z

.field private final mStatsAction:I

.field private final mStatsClient:I

.field final mStatsModality:I


# direct methods
.method public constructor <init>(Landroid/content/Context;III)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "statsModality"    # I
    .param p3, "statsAction"    # I
    .param p4, "statsClient"    # I

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/biometrics/sensors/LoggableMonitor;->mLightSensorEnabled:Z

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/biometrics/sensors/LoggableMonitor;->mShouldLogMetrics:Z

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/biometrics/sensors/LoggableMonitor;->mLastAmbientLux:F

    .line 55
    new-instance v0, Lcom/android/server/biometrics/sensors/LoggableMonitor$1;

    invoke-direct {v0, p0}, Lcom/android/server/biometrics/sensors/LoggableMonitor$1;-><init>(Lcom/android/server/biometrics/sensors/LoggableMonitor;)V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/LoggableMonitor;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    .line 75
    iput p2, p0, Lcom/android/server/biometrics/sensors/LoggableMonitor;->mStatsModality:I

    .line 76
    iput p3, p0, Lcom/android/server/biometrics/sensors/LoggableMonitor;->mStatsAction:I

    .line 77
    iput p4, p0, Lcom/android/server/biometrics/sensors/LoggableMonitor;->mStatsClient:I

    .line 78
    const-class v0, Landroid/hardware/SensorManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/LoggableMonitor;->mSensorManager:Landroid/hardware/SensorManager;

    .line 79
    return-void
.end method

.method static synthetic access$002(Lcom/android/server/biometrics/sensors/LoggableMonitor;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/server/biometrics/sensors/LoggableMonitor;
    .param p1, "x1"    # F

    .line 38
    iput p1, p0, Lcom/android/server/biometrics/sensors/LoggableMonitor;->mLastAmbientLux:F

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/biometrics/sensors/LoggableMonitor;)Landroid/hardware/SensorManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/biometrics/sensors/LoggableMonitor;

    .line 38
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/LoggableMonitor;->mSensorManager:Landroid/hardware/SensorManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/biometrics/sensors/LoggableMonitor;Landroid/hardware/Sensor;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/biometrics/sensors/LoggableMonitor;
    .param p1, "x1"    # Landroid/hardware/Sensor;

    .line 38
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/sensors/LoggableMonitor;->setLightSensorLoggingEnabled(Landroid/hardware/Sensor;)V

    return-void
.end method

.method private sanitizeLatency(J)J
    .locals 2
    .param p1, "latency"    # J

    .line 281
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 282
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "found a negative latency : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Biometrics/LoggableMonitor"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    const-wide/16 v0, -0x1

    return-wide v0

    .line 285
    :cond_0
    return-wide p1
.end method

.method private setLightSensorLoggingEnabled(Landroid/hardware/Sensor;)V
    .locals 3
    .param p1, "lightSensor"    # Landroid/hardware/Sensor;

    .line 317
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 318
    iget-boolean v1, p0, Lcom/android/server/biometrics/sensors/LoggableMonitor;->mLightSensorEnabled:Z

    if-nez v1, :cond_1

    .line 319
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/biometrics/sensors/LoggableMonitor;->mLightSensorEnabled:Z

    .line 320
    iput v0, p0, Lcom/android/server/biometrics/sensors/LoggableMonitor;->mLastAmbientLux:F

    .line 321
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/LoggableMonitor;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/LoggableMonitor;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, p1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    goto :goto_0

    .line 325
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/biometrics/sensors/LoggableMonitor;->mLightSensorEnabled:Z

    .line 326
    iput v0, p0, Lcom/android/server/biometrics/sensors/LoggableMonitor;->mLastAmbientLux:F

    .line 327
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/LoggableMonitor;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/LoggableMonitor;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 329
    :cond_1
    :goto_0
    return-void
.end method

.method private shouldSkipLogging()Z
    .locals 3

    .line 98
    iget v0, p0, Lcom/android/server/biometrics/sensors/LoggableMonitor;->mStatsModality:I

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/android/server/biometrics/sensors/LoggableMonitor;->mStatsAction:I

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 101
    .local v1, "shouldSkipLogging":Z
    :goto_1
    const-string v2, "Biometrics/LoggableMonitor"

    if-nez v0, :cond_2

    .line 102
    const-string v0, "Unknown field detected: MODALITY_UNKNOWN, will not report metric"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :cond_2
    iget v0, p0, Lcom/android/server/biometrics/sensors/LoggableMonitor;->mStatsAction:I

    if-nez v0, :cond_3

    .line 106
    const-string v0, "Unknown field detected: ACTION_UNKNOWN, will not report metric"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :cond_3
    iget v0, p0, Lcom/android/server/biometrics/sensors/LoggableMonitor;->mStatsClient:I

    if-nez v0, :cond_4

    .line 110
    const-string v0, "Unknown field detected: CLIENT_UNKNOWN"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :cond_4
    return v1
.end method


# virtual methods
.method protected createALSCallback()Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;
    .locals 1

    .line 291
    new-instance v0, Lcom/android/server/biometrics/sensors/LoggableMonitor$2;

    invoke-direct {v0, p0}, Lcom/android/server/biometrics/sensors/LoggableMonitor$2;-><init>(Lcom/android/server/biometrics/sensors/LoggableMonitor;)V

    return-object v0
.end method

.method protected getAmbientLightSensor(Landroid/hardware/SensorManager;)Landroid/hardware/Sensor;
    .locals 1
    .param p1, "sensorManager"    # Landroid/hardware/SensorManager;

    .line 308
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/LoggableMonitor;->mShouldLogMetrics:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getStatsClient()I
    .locals 1

    .line 94
    iget v0, p0, Lcom/android/server/biometrics/sensors/LoggableMonitor;->mStatsClient:I

    return v0
.end method

.method protected isCryptoOperation()Z
    .locals 1

    .line 86
    const/4 v0, 0x0

    return v0
.end method

.method protected final logOnAcquired(Landroid/content/Context;III)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "acquiredInfo"    # I
    .param p3, "vendorCode"    # I
    .param p4, "targetUserId"    # I

    .line 118
    move-object/from16 v0, p0

    move/from16 v11, p2

    iget-boolean v1, v0, Lcom/android/server/biometrics/sensors/LoggableMonitor;->mShouldLogMetrics:Z

    if-nez v1, :cond_0

    .line 119
    return-void

    .line 122
    :cond_0
    iget v1, v0, Lcom/android/server/biometrics/sensors/LoggableMonitor;->mStatsModality:I

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_1

    move v2, v4

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    move v12, v2

    .line 123
    .local v12, "isFace":Z
    if-ne v1, v4, :cond_2

    move v3, v4

    :cond_2
    move v13, v3

    .line 124
    .local v13, "isFingerprint":Z
    if-nez v12, :cond_4

    if-eqz v13, :cond_3

    goto :goto_1

    .line 129
    :cond_3
    if-nez v11, :cond_7

    .line 130
    iget-wide v1, v0, Lcom/android/server/biometrics/sensors/LoggableMonitor;->mFirstAcquireTimeMs:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_7

    .line 131
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/biometrics/sensors/LoggableMonitor;->mFirstAcquireTimeMs:J

    goto :goto_2

    .line 125
    :cond_4
    :goto_1
    if-eqz v13, :cond_5

    const/4 v1, 0x7

    if-eq v11, v1, :cond_6

    :cond_5
    if-eqz v12, :cond_7

    const/16 v1, 0x14

    if-ne v11, v1, :cond_7

    .line 127
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/biometrics/sensors/LoggableMonitor;->mFirstAcquireTimeMs:J

    .line 144
    :cond_7
    :goto_2
    invoke-direct/range {p0 .. p0}, Lcom/android/server/biometrics/sensors/LoggableMonitor;->shouldSkipLogging()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 145
    return-void

    .line 148
    :cond_8
    const/16 v1, 0x57

    iget v2, v0, Lcom/android/server/biometrics/sensors/LoggableMonitor;->mStatsModality:I

    .line 151
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/sensors/LoggableMonitor;->isCryptoOperation()Z

    move-result v4

    iget v5, v0, Lcom/android/server/biometrics/sensors/LoggableMonitor;->mStatsAction:I

    iget v6, v0, Lcom/android/server/biometrics/sensors/LoggableMonitor;->mStatsClient:I

    .line 156
    move-object/from16 v14, p1

    move/from16 v15, p4

    invoke-static {v14, v15}, Lcom/android/server/biometrics/Utils;->isDebugEnabled(Landroid/content/Context;I)Z

    move-result v9

    const/4 v10, -0x1

    .line 148
    move/from16 v3, p4

    move/from16 v7, p2

    move/from16 v8, p3

    invoke-static/range {v1 .. v10}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIZIIIIZI)V

    .line 158
    return-void
.end method

.method protected final logOnAuthenticated(Landroid/content/Context;ZZIZ)V
    .locals 18
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "authenticated"    # Z
    .param p3, "requireConfirmation"    # Z
    .param p4, "targetUserId"    # I
    .param p5, "isBiometricPrompt"    # Z

    .line 200
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/biometrics/sensors/LoggableMonitor;->mShouldLogMetrics:Z

    if-nez v1, :cond_0

    .line 201
    return-void

    .line 204
    :cond_0
    const/4 v1, 0x0

    .line 205
    .local v1, "authState":I
    if-nez p2, :cond_1

    .line 206
    const/4 v1, 0x1

    goto :goto_0

    .line 209
    :cond_1
    if-eqz p5, :cond_2

    if-eqz p3, :cond_2

    .line 210
    const/4 v1, 0x2

    goto :goto_0

    .line 212
    :cond_2
    const/4 v1, 0x3

    .line 217
    :goto_0
    iget-wide v2, v0, Lcom/android/server/biometrics/sensors/LoggableMonitor;->mFirstAcquireTimeMs:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    .line 218
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, v0, Lcom/android/server/biometrics/sensors/LoggableMonitor;->mFirstAcquireTimeMs:J

    sub-long/2addr v2, v4

    goto :goto_1

    .line 219
    :cond_3
    const-wide/16 v2, -0x1

    :goto_1
    move-wide v14, v2

    .line 231
    .local v14, "latency":J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Authentication latency: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Biometrics/LoggableMonitor"

    invoke-static {v3, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    invoke-direct/range {p0 .. p0}, Lcom/android/server/biometrics/sensors/LoggableMonitor;->shouldSkipLogging()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 235
    return-void

    .line 238
    :cond_4
    const/16 v2, 0x58

    iget v3, v0, Lcom/android/server/biometrics/sensors/LoggableMonitor;->mStatsModality:I

    .line 241
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/sensors/LoggableMonitor;->isCryptoOperation()Z

    move-result v5

    iget v6, v0, Lcom/android/server/biometrics/sensors/LoggableMonitor;->mStatsClient:I

    .line 245
    invoke-direct {v0, v14, v15}, Lcom/android/server/biometrics/sensors/LoggableMonitor;->sanitizeLatency(J)J

    move-result-wide v9

    .line 246
    move-object/from16 v13, p1

    move/from16 v12, p4

    invoke-static {v13, v12}, Lcom/android/server/biometrics/Utils;->isDebugEnabled(Landroid/content/Context;I)Z

    move-result v11

    const/16 v16, -0x1

    iget v8, v0, Lcom/android/server/biometrics/sensors/LoggableMonitor;->mLastAmbientLux:F

    .line 238
    move/from16 v4, p4

    move/from16 v7, p3

    move/from16 v17, v8

    move v8, v1

    move/from16 v12, v16

    move/from16 v13, v17

    invoke-static/range {v2 .. v13}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIZIZIJZIF)V

    .line 249
    return-void
.end method

.method protected final logOnEnrolled(IJZ)V
    .locals 9
    .param p1, "targetUserId"    # I
    .param p2, "latency"    # J
    .param p4, "enrollSuccessful"    # Z

    .line 252
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/LoggableMonitor;->mShouldLogMetrics:Z

    if-nez v0, :cond_0

    .line 253
    return-void

    .line 264
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Enroll latency: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Biometrics/LoggableMonitor"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    invoke-direct {p0}, Lcom/android/server/biometrics/sensors/LoggableMonitor;->shouldSkipLogging()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 268
    return-void

    .line 271
    :cond_1
    const/16 v1, 0xb8

    iget v2, p0, Lcom/android/server/biometrics/sensors/LoggableMonitor;->mStatsModality:I

    .line 274
    invoke-direct {p0, p2, p3}, Lcom/android/server/biometrics/sensors/LoggableMonitor;->sanitizeLatency(J)J

    move-result-wide v4

    const/4 v7, -0x1

    iget v8, p0, Lcom/android/server/biometrics/sensors/LoggableMonitor;->mLastAmbientLux:F

    .line 271
    move v3, p1

    move v6, p4

    invoke-static/range {v1 .. v8}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIJZIF)V

    .line 278
    return-void
.end method

.method protected final logOnError(Landroid/content/Context;III)V
    .locals 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "error"    # I
    .param p3, "vendorCode"    # I
    .param p4, "targetUserId"    # I

    .line 161
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/biometrics/sensors/LoggableMonitor;->mShouldLogMetrics:Z

    if-nez v1, :cond_0

    .line 162
    return-void

    .line 165
    :cond_0
    iget-wide v1, v0, Lcom/android/server/biometrics/sensors/LoggableMonitor;->mFirstAcquireTimeMs:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    .line 166
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, v0, Lcom/android/server/biometrics/sensors/LoggableMonitor;->mFirstAcquireTimeMs:J

    sub-long/2addr v1, v3

    goto :goto_0

    :cond_1
    const-wide/16 v1, -0x1

    .line 178
    .local v1, "latency":J
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error latency: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Biometrics/LoggableMonitor"

    invoke-static {v4, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    invoke-direct/range {p0 .. p0}, Lcom/android/server/biometrics/sensors/LoggableMonitor;->shouldSkipLogging()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 182
    return-void

    .line 185
    :cond_2
    const/16 v4, 0x59

    iget v5, v0, Lcom/android/server/biometrics/sensors/LoggableMonitor;->mStatsModality:I

    .line 188
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/sensors/LoggableMonitor;->isCryptoOperation()Z

    move-result v7

    iget v8, v0, Lcom/android/server/biometrics/sensors/LoggableMonitor;->mStatsAction:I

    iget v9, v0, Lcom/android/server/biometrics/sensors/LoggableMonitor;->mStatsClient:I

    .line 193
    move-object/from16 v3, p1

    move/from16 v15, p4

    invoke-static {v3, v15}, Lcom/android/server/biometrics/Utils;->isDebugEnabled(Landroid/content/Context;I)Z

    move-result v12

    .line 194
    invoke-direct {v0, v1, v2}, Lcom/android/server/biometrics/sensors/LoggableMonitor;->sanitizeLatency(J)J

    move-result-wide v13

    const/16 v16, -0x1

    .line 185
    move/from16 v6, p4

    move/from16 v10, p2

    move/from16 v11, p3

    move/from16 v15, v16

    invoke-static/range {v4 .. v15}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIZIIIIZJI)V

    .line 196
    return-void
.end method

.method protected setShouldLog(Z)V
    .locals 0
    .param p1, "shouldLog"    # Z

    .line 90
    iput-boolean p1, p0, Lcom/android/server/biometrics/sensors/LoggableMonitor;->mShouldLogMetrics:Z

    .line 91
    return-void
.end method
