.class public final synthetic Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda57;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/BatteryStatsService;

.field public final synthetic f$1:J

.field public final synthetic f$2:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/BatteryStatsService;JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda57;->f$0:Lcom/android/server/am/BatteryStatsService;

    iput-wide p2, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda57;->f$1:J

    iput-wide p4, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda57;->f$2:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda57;->f$0:Lcom/android/server/am/BatteryStatsService;

    iget-wide v1, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda57;->f$1:J

    iget-wide v3, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda57;->f$2:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/am/BatteryStatsService;->lambda$noteResetCamera$61$BatteryStatsService(JJ)V

    return-void
.end method
