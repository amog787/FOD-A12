.class public final synthetic Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda45;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/BatteryStatsService;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:J

.field public final synthetic f$4:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/BatteryStatsService;ILjava/lang/String;JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda45;->f$0:Lcom/android/server/am/BatteryStatsService;

    iput p2, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda45;->f$1:I

    iput-object p3, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda45;->f$2:Ljava/lang/String;

    iput-wide p4, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda45;->f$3:J

    iput-wide p6, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda45;->f$4:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda45;->f$0:Lcom/android/server/am/BatteryStatsService;

    iget v1, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda45;->f$1:I

    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda45;->f$2:Ljava/lang/String;

    iget-wide v3, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda45;->f$3:J

    iget-wide v5, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda45;->f$4:J

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/BatteryStatsService;->lambda$reportExcessiveCpu$101$BatteryStatsService(ILjava/lang/String;JJ)V

    return-void
.end method
