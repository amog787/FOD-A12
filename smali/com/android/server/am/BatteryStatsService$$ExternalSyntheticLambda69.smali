.class public final synthetic Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda69;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/BatteryStatsService;

.field public final synthetic f$1:Landroid/os/WorkSource;

.field public final synthetic f$2:I

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Ljava/lang/String;

.field public final synthetic f$5:I

.field public final synthetic f$6:Z

.field public final synthetic f$7:J

.field public final synthetic f$8:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda69;->f$0:Lcom/android/server/am/BatteryStatsService;

    iput-object p2, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda69;->f$1:Landroid/os/WorkSource;

    iput p3, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda69;->f$2:I

    iput-object p4, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda69;->f$3:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda69;->f$4:Ljava/lang/String;

    iput p6, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda69;->f$5:I

    iput-boolean p7, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda69;->f$6:Z

    iput-wide p8, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda69;->f$7:J

    iput-wide p10, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda69;->f$8:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda69;->f$0:Lcom/android/server/am/BatteryStatsService;

    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda69;->f$1:Landroid/os/WorkSource;

    iget v2, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda69;->f$2:I

    iget-object v3, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda69;->f$3:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda69;->f$4:Ljava/lang/String;

    iget v5, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda69;->f$5:I

    iget-boolean v6, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda69;->f$6:Z

    iget-wide v7, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda69;->f$7:J

    iget-wide v9, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda69;->f$8:J

    invoke-virtual/range {v0 .. v10}, Lcom/android/server/am/BatteryStatsService;->lambda$noteStartWakelockFromSource$24$BatteryStatsService(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZJJ)V

    return-void
.end method
