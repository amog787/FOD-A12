.class public final synthetic Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda19;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/BatteryStatsService;

.field public final synthetic f$1:I

.field public final synthetic f$2:J

.field public final synthetic f$3:I

.field public final synthetic f$4:J

.field public final synthetic f$5:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/BatteryStatsService;IJIJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda19;->f$0:Lcom/android/server/am/BatteryStatsService;

    iput p2, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda19;->f$1:I

    iput-wide p3, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda19;->f$2:J

    iput p5, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda19;->f$3:I

    iput-wide p6, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda19;->f$4:J

    iput-wide p8, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda19;->f$5:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda19;->f$0:Lcom/android/server/am/BatteryStatsService;

    iget v1, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda19;->f$1:I

    iget-wide v2, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda19;->f$2:J

    iget v4, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda19;->f$3:I

    iget-wide v5, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda19;->f$4:J

    iget-wide v7, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda19;->f$5:J

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/am/BatteryStatsService;->lambda$noteWifiRadioPowerState$63$BatteryStatsService(IJIJJ)V

    return-void
.end method
