.class public final synthetic Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/AppProfiler;

.field public final synthetic f$1:Lcom/android/server/am/ProcessRecord;

.field public final synthetic f$2:Ljava/util/ArrayList;

.field public final synthetic f$3:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/AppProfiler;Lcom/android/server/am/ProcessRecord;Ljava/util/ArrayList;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/am/AppProfiler;

    iput-object p2, p0, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda2;->f$1:Lcom/android/server/am/ProcessRecord;

    iput-object p3, p0, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda2;->f$2:Ljava/util/ArrayList;

    iput-wide p4, p0, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda2;->f$3:J

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/am/AppProfiler;

    iget-object v1, p0, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda2;->f$1:Lcom/android/server/am/ProcessRecord;

    iget-object v2, p0, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda2;->f$2:Ljava/util/ArrayList;

    iget-wide v3, p0, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda2;->f$3:J

    move-object v5, p1

    check-cast v5, Lcom/android/server/am/ProcessRecord;

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/AppProfiler;->lambda$doLowMemReportIfNeededLocked$5$AppProfiler(Lcom/android/server/am/ProcessRecord;Ljava/util/ArrayList;JLcom/android/server/am/ProcessRecord;)V

    return-void
.end method
