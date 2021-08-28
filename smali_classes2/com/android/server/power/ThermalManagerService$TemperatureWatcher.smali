.class Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;
.super Ljava/lang/Object;
.source "ThermalManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/ThermalManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TemperatureWatcher"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/ThermalManagerService$TemperatureWatcher$Sample;
    }
.end annotation


# static fields
.field private static final DEGREES_BETWEEN_ZERO_AND_ONE:F = 30.0f

.field private static final INACTIVITY_THRESHOLD_MILLIS:I = 0x2710

.field private static final MINIMUM_SAMPLE_COUNT:I = 0x3

.field private static final RING_BUFFER_SIZE:I = 0x1e


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mLastForecastCallTimeMillis:J

.field final mSamples:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/power/ThermalManagerService$TemperatureWatcher$Sample;",
            ">;>;"
        }
    .end annotation
.end field

.field mSevereThresholds:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/power/ThermalManagerService;


# direct methods
.method public static synthetic $r8$lambda$YkIIdol_gv-0HgY3geOYld_CxYU(Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->updateTemperature()V

    return-void
.end method

.method constructor <init>(Lcom/android/server/power/ThermalManagerService;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/power/ThermalManagerService;

    .line 1075
    iput-object p1, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->this$0:Lcom/android/server/power/ThermalManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1076
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mHandler:Landroid/os/Handler;

    .line 1079
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mSamples:Landroid/util/ArrayMap;

    .line 1084
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mSevereThresholds:Landroid/util/ArrayMap;

    .line 1088
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mLastForecastCallTimeMillis:J

    return-void
.end method

.method static synthetic lambda$updateTemperature$0(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 2
    .param p0, "k"    # Ljava/lang/String;

    .line 1141
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    return-object v0
.end method

.method private updateTemperature()V
    .locals 9

    .line 1114
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mSamples:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1115
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mLastForecastCallTimeMillis:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x2710

    cmp-long v1, v1, v3

    if-gez v1, :cond_3

    .line 1119
    iget-object v1, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;)V

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1127
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 1128
    .local v1, "now":J
    iget-object v3, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->this$0:Lcom/android/server/power/ThermalManagerService;

    invoke-static {v3}, Lcom/android/server/power/ThermalManagerService;->access$400(Lcom/android/server/power/ThermalManagerService;)Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;

    move-result-object v3

    const/4 v4, 0x3

    const/4 v5, 0x1

    invoke-virtual {v3, v5, v4}, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->getCurrentTemperatures(ZI)Ljava/util/List;

    move-result-object v3

    .line 1131
    .local v3, "temperatures":Ljava/util/List;, "Ljava/util/List<Landroid/os/Temperature;>;"
    const/4 v4, 0x0

    .local v4, "t":I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 1132
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Temperature;

    .line 1136
    .local v5, "temperature":Landroid/os/Temperature;
    invoke-virtual {v5}, Landroid/os/Temperature;->getValue()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1137
    goto :goto_1

    .line 1140
    :cond_0
    iget-object v6, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mSamples:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/os/Temperature;->getName()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher$$ExternalSyntheticLambda1;->INSTANCE:Lcom/android/server/power/ThermalManagerService$TemperatureWatcher$$ExternalSyntheticLambda1;

    invoke-virtual {v6, v7, v8}, Landroid/util/ArrayMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 1142
    .local v6, "samples":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/power/ThermalManagerService$TemperatureWatcher$Sample;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/16 v8, 0x1e

    if-ne v7, v8, :cond_1

    .line 1143
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1145
    :cond_1
    new-instance v7, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher$Sample;

    invoke-virtual {v5}, Landroid/os/Temperature;->getValue()F

    move-result v8

    invoke-direct {v7, p0, v1, v2, v8}, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher$Sample;-><init>(Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;JF)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1131
    .end local v5    # "temperature":Landroid/os/Temperature;
    .end local v6    # "samples":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/power/ThermalManagerService$TemperatureWatcher$Sample;>;"
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1147
    .end local v1    # "now":J
    .end local v3    # "temperatures":Ljava/util/List;, "Ljava/util/List<Landroid/os/Temperature;>;"
    .end local v4    # "t":I
    :cond_2
    monitor-exit v0

    .line 1148
    return-void

    .line 1123
    :cond_3
    iget-object v1, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mSamples:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 1124
    monitor-exit v0

    return-void

    .line 1147
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method createSampleForTesting(JF)Lcom/android/server/power/ThermalManagerService$TemperatureWatcher$Sample;
    .locals 1
    .param p1, "time"    # J
    .param p3, "temperature"    # F

    .line 1259
    new-instance v0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher$Sample;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher$Sample;-><init>(Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;JF)V

    return-object v0
.end method

.method getForecast(I)F
    .locals 11
    .param p1, "forecastSeconds"    # I

    .line 1201
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mSamples:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1202
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mLastForecastCallTimeMillis:J

    .line 1203
    iget-object v1, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mSamples:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1204
    invoke-direct {p0}, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->updateTemperature()V

    .line 1209
    :cond_0
    iget-object v1, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mSamples:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    const/high16 v2, 0x7fc00000    # Float.NaN

    if-eqz v1, :cond_1

    .line 1210
    invoke-static {}, Lcom/android/server/power/ThermalManagerService;->access$800()Ljava/lang/String;

    move-result-object v1

    const-string v3, "No temperature samples found"

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1211
    monitor-exit v0

    return v2

    .line 1216
    :cond_1
    iget-object v1, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mSevereThresholds:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1217
    invoke-static {}, Lcom/android/server/power/ThermalManagerService;->access$800()Ljava/lang/String;

    move-result-object v1

    const-string v3, "No temperature thresholds found"

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1218
    monitor-exit v0

    return v2

    .line 1221
    :cond_2
    const/high16 v1, 0x7fc00000    # Float.NaN

    .line 1222
    .local v1, "maxNormalized":F
    iget-object v2, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mSamples:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 1223
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/server/power/ThermalManagerService$TemperatureWatcher$Sample;>;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1224
    .local v4, "name":Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 1226
    .local v5, "samples":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/power/ThermalManagerService$TemperatureWatcher$Sample;>;"
    iget-object v6, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mSevereThresholds:Landroid/util/ArrayMap;

    invoke-virtual {v6, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    .line 1227
    .local v6, "threshold":Ljava/lang/Float;
    if-nez v6, :cond_4

    .line 1228
    invoke-static {}, Lcom/android/server/power/ThermalManagerService;->access$800()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "No threshold found for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1229
    goto :goto_0

    .line 1232
    :cond_4
    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher$Sample;

    iget v7, v7, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher$Sample;->temperature:F

    .line 1234
    .local v7, "currentTemperature":F
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x3

    if-ge v8, v9, :cond_6

    .line 1236
    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v8

    invoke-virtual {p0, v7, v8}, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->normalizeTemperature(FF)F

    move-result v8

    .line 1237
    .local v8, "normalized":F
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v9

    if-nez v9, :cond_5

    cmpl-float v9, v8, v1

    if-lez v9, :cond_3

    .line 1238
    :cond_5
    move v1, v8

    goto :goto_0

    .line 1243
    .end local v8    # "normalized":F
    :cond_6
    invoke-virtual {p0, v5}, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->getSlopeOf(Ljava/util/List;)F

    move-result v8

    .line 1244
    .local v8, "slope":F
    int-to-float v9, p1

    mul-float/2addr v9, v8

    const/high16 v10, 0x447a0000    # 1000.0f

    mul-float/2addr v9, v10

    add-float/2addr v9, v7

    .line 1245
    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v10

    .line 1244
    invoke-virtual {p0, v9, v10}, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->normalizeTemperature(FF)F

    move-result v9

    .line 1246
    .local v9, "normalized":F
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v10

    if-nez v10, :cond_7

    cmpl-float v10, v9, v1

    if-lez v10, :cond_8

    .line 1247
    :cond_7
    move v1, v9

    .line 1249
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/server/power/ThermalManagerService$TemperatureWatcher$Sample;>;>;"
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "samples":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/power/ThermalManagerService$TemperatureWatcher$Sample;>;"
    .end local v6    # "threshold":Ljava/lang/Float;
    .end local v7    # "currentTemperature":F
    .end local v8    # "slope":F
    .end local v9    # "normalized":F
    :cond_8
    goto :goto_0

    .line 1251
    :cond_9
    monitor-exit v0

    return v1

    .line 1252
    .end local v1    # "maxNormalized":F
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getSlopeOf(Ljava/util/List;)F
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/power/ThermalManagerService$TemperatureWatcher$Sample;",
            ">;)F"
        }
    .end annotation

    .line 1156
    .local p1, "samples":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/power/ThermalManagerService$TemperatureWatcher$Sample;>;"
    move-object/from16 v0, p1

    const-wide/16 v1, 0x0

    .line 1157
    .local v1, "sumTimes":J
    const/4 v3, 0x0

    .line 1158
    .local v3, "sumTemperatures":F
    const/4 v4, 0x0

    .local v4, "s":I
    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 1159
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher$Sample;

    .line 1160
    .local v5, "sample":Lcom/android/server/power/ThermalManagerService$TemperatureWatcher$Sample;
    iget-wide v6, v5, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher$Sample;->time:J

    add-long/2addr v1, v6

    .line 1161
    iget v6, v5, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher$Sample;->temperature:F

    add-float/2addr v3, v6

    .line 1158
    .end local v5    # "sample":Lcom/android/server/power/ThermalManagerService$TemperatureWatcher$Sample;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1163
    .end local v4    # "s":I
    :cond_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v4

    int-to-long v4, v4

    div-long v4, v1, v4

    .line 1164
    .local v4, "meanTime":J
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v6

    int-to-float v6, v6

    div-float v6, v3, v6

    .line 1166
    .local v6, "meanTemperature":F
    const-wide/16 v7, 0x0

    .line 1167
    .local v7, "sampleVariance":J
    const/4 v9, 0x0

    .line 1168
    .local v9, "sampleCovariance":F
    const/4 v10, 0x0

    .local v10, "s":I
    :goto_1
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v11

    if-ge v10, v11, :cond_1

    .line 1169
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher$Sample;

    .line 1170
    .local v11, "sample":Lcom/android/server/power/ThermalManagerService$TemperatureWatcher$Sample;
    iget-wide v12, v11, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher$Sample;->time:J

    sub-long/2addr v12, v4

    .line 1171
    .local v12, "timeDelta":J
    iget v14, v11, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher$Sample;->temperature:F

    sub-float/2addr v14, v6

    .line 1172
    .local v14, "temperatureDelta":F
    mul-long v15, v12, v12

    add-long/2addr v7, v15

    .line 1173
    long-to-float v15, v12

    mul-float/2addr v15, v14

    add-float/2addr v9, v15

    .line 1168
    .end local v11    # "sample":Lcom/android/server/power/ThermalManagerService$TemperatureWatcher$Sample;
    .end local v12    # "timeDelta":J
    .end local v14    # "temperatureDelta":F
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 1176
    .end local v10    # "s":I
    :cond_1
    long-to-float v10, v7

    div-float v10, v9, v10

    return v10
.end method

.method normalizeTemperature(FF)F
    .locals 4
    .param p1, "temperature"    # F
    .param p2, "severeThreshold"    # F

    .line 1188
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mSamples:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1189
    const/high16 v1, 0x41f00000    # 30.0f

    sub-float v2, p2, v1

    .line 1190
    .local v2, "zeroNormalized":F
    cmpg-float v3, p1, v2

    if-gtz v3, :cond_0

    .line 1191
    const/4 v1, 0x0

    :try_start_0
    monitor-exit v0

    return v1

    .line 1193
    :cond_0
    sub-float v3, p1, v2

    .line 1194
    .local v3, "delta":F
    div-float v1, v3, v1

    monitor-exit v0

    return v1

    .line 1195
    .end local v2    # "zeroNormalized":F
    .end local v3    # "delta":F
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method updateSevereThresholds()V
    .locals 9

    .line 1092
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mSamples:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1093
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->this$0:Lcom/android/server/power/ThermalManagerService;

    .line 1094
    invoke-static {v1}, Lcom/android/server/power/ThermalManagerService;->access$400(Lcom/android/server/power/ThermalManagerService;)Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->getTemperatureThresholds(ZI)Ljava/util/List;

    move-result-object v1

    .line 1095
    .local v1, "thresholds":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/thermal/V2_0/TemperatureThreshold;>;"
    const/4 v2, 0x0

    .local v2, "t":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 1096
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/thermal/V2_0/TemperatureThreshold;

    .line 1097
    .local v4, "threshold":Landroid/hardware/thermal/V2_0/TemperatureThreshold;
    iget-object v5, v4, Landroid/hardware/thermal/V2_0/TemperatureThreshold;->hotThrottlingThresholds:[F

    array-length v5, v5

    if-gt v5, v3, :cond_0

    .line 1098
    goto :goto_1

    .line 1100
    :cond_0
    iget-object v5, v4, Landroid/hardware/thermal/V2_0/TemperatureThreshold;->hotThrottlingThresholds:[F

    aget v5, v5, v3

    .line 1102
    .local v5, "temperature":F
    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1103
    iget-object v6, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mSevereThresholds:Landroid/util/ArrayMap;

    iget-object v7, v4, Landroid/hardware/thermal/V2_0/TemperatureThreshold;->name:Ljava/lang/String;

    iget-object v8, v4, Landroid/hardware/thermal/V2_0/TemperatureThreshold;->hotThrottlingThresholds:[F

    aget v8, v8, v3

    .line 1104
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    .line 1103
    invoke-virtual {v6, v7, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1095
    .end local v4    # "threshold":Landroid/hardware/thermal/V2_0/TemperatureThreshold;
    .end local v5    # "temperature":F
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1107
    .end local v1    # "thresholds":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/thermal/V2_0/TemperatureThreshold;>;"
    .end local v2    # "t":I
    :cond_2
    monitor-exit v0

    .line 1108
    return-void

    .line 1107
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
