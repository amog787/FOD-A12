.class public final synthetic Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda73;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/BatteryStatsService;

.field public final synthetic f$1:Landroid/os/WorkSource;

.field public final synthetic f$2:J

.field public final synthetic f$3:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda73;->f$0:Lcom/android/server/am/BatteryStatsService;

    iput-object p2, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda73;->f$1:Landroid/os/WorkSource;

    iput-wide p3, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda73;->f$2:J

    iput-wide p5, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda73;->f$3:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda73;->f$0:Lcom/android/server/am/BatteryStatsService;

    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda73;->f$1:Landroid/os/WorkSource;

    iget-wide v2, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda73;->f$2:J

    iget-wide v4, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda73;->f$3:J

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/BatteryStatsService;->lambda$noteWifiRunning$64$BatteryStatsService(Landroid/os/WorkSource;JJ)V

    return-void
.end method
