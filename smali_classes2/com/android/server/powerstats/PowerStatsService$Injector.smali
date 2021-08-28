.class Lcom/android/server/powerstats/PowerStatsService$Injector;
.super Ljava/lang/Object;
.source "PowerStatsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/powerstats/PowerStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Injector"
.end annotation


# instance fields
.field private mPowerStatsHALWrapper:Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method createBatteryTrigger(Landroid/content/Context;Lcom/android/server/powerstats/PowerStatsLogger;)Lcom/android/server/powerstats/BatteryTrigger;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "powerStatsLogger"    # Lcom/android/server/powerstats/PowerStatsLogger;

    .line 143
    new-instance v0, Lcom/android/server/powerstats/BatteryTrigger;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p2, v1}, Lcom/android/server/powerstats/BatteryTrigger;-><init>(Landroid/content/Context;Lcom/android/server/powerstats/PowerStatsLogger;Z)V

    return-object v0
.end method

.method createDataStoragePath()Ljava/io/File;
    .locals 3

    .line 89
    new-instance v0, Ljava/io/File;

    const/4 v1, 0x0

    invoke-static {v1}, Landroid/os/Environment;->getDataSystemDeDirectory(I)Ljava/io/File;

    move-result-object v1

    const-string v2, "powerstats"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method createMeterCacheFilename()Ljava/lang/String;
    .locals 1

    .line 106
    const-string v0, "meterCache"

    return-object v0
.end method

.method createMeterFilename()Ljava/lang/String;
    .locals 1

    .line 94
    const-string v0, "log.powerstats.meter.0"

    return-object v0
.end method

.method createModelCacheFilename()Ljava/lang/String;
    .locals 1

    .line 110
    const-string v0, "modelCache"

    return-object v0
.end method

.method createModelFilename()Ljava/lang/String;
    .locals 1

    .line 98
    const-string v0, "log.powerstats.model.0"

    return-object v0
.end method

.method createPowerStatsHALWrapperImpl()Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;
    .locals 1

    .line 118
    invoke-static {}, Lcom/android/server/powerstats/PowerStatsHALWrapper;->getPowerStatsHalImpl()Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;

    move-result-object v0

    return-object v0
.end method

.method createPowerStatsLogger(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;)Lcom/android/server/powerstats/PowerStatsLogger;
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dataStoragePath"    # Ljava/io/File;
    .param p3, "meterFilename"    # Ljava/lang/String;
    .param p4, "meterCacheFilename"    # Ljava/lang/String;
    .param p5, "modelFilename"    # Ljava/lang/String;
    .param p6, "modelCacheFilename"    # Ljava/lang/String;
    .param p7, "residencyFilename"    # Ljava/lang/String;
    .param p8, "residencyCacheFilename"    # Ljava/lang/String;
    .param p9, "powerStatsHALWrapper"    # Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;

    .line 135
    new-instance v10, Lcom/android/server/powerstats/PowerStatsLogger;

    move-object v0, v10

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Lcom/android/server/powerstats/PowerStatsLogger;-><init>(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;)V

    return-object v10
.end method

.method createResidencyCacheFilename()Ljava/lang/String;
    .locals 1

    .line 114
    const-string v0, "residencyCache"

    return-object v0
.end method

.method createResidencyFilename()Ljava/lang/String;
    .locals 1

    .line 102
    const-string v0, "log.powerstats.residency.0"

    return-object v0
.end method

.method createStatsPullerImpl(Landroid/content/Context;Landroid/power/PowerStatsInternal;)Lcom/android/server/powerstats/StatsPullAtomCallbackImpl;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "powerStatsInternal"    # Landroid/power/PowerStatsInternal;

    .line 152
    new-instance v0, Lcom/android/server/powerstats/StatsPullAtomCallbackImpl;

    invoke-direct {v0, p1, p2}, Lcom/android/server/powerstats/StatsPullAtomCallbackImpl;-><init>(Landroid/content/Context;Landroid/power/PowerStatsInternal;)V

    return-object v0
.end method

.method createTimerTrigger(Landroid/content/Context;Lcom/android/server/powerstats/PowerStatsLogger;)Lcom/android/server/powerstats/TimerTrigger;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "powerStatsLogger"    # Lcom/android/server/powerstats/PowerStatsLogger;

    .line 147
    new-instance v0, Lcom/android/server/powerstats/TimerTrigger;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p2, v1}, Lcom/android/server/powerstats/TimerTrigger;-><init>(Landroid/content/Context;Lcom/android/server/powerstats/PowerStatsLogger;Z)V

    return-object v0
.end method

.method getPowerStatsHALWrapperImpl()Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;
    .locals 1

    .line 122
    monitor-enter p0

    .line 123
    :try_start_0
    iget-object v0, p0, Lcom/android/server/powerstats/PowerStatsService$Injector;->mPowerStatsHALWrapper:Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;

    if-nez v0, :cond_0

    .line 124
    invoke-static {}, Lcom/android/server/powerstats/PowerStatsHALWrapper;->getPowerStatsHalImpl()Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/powerstats/PowerStatsService$Injector;->mPowerStatsHALWrapper:Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/android/server/powerstats/PowerStatsService$Injector;->mPowerStatsHALWrapper:Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;

    monitor-exit p0

    return-object v0

    .line 127
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
