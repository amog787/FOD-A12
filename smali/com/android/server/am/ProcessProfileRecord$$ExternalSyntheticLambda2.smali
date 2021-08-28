.class public final synthetic Lcom/android/server/am/ProcessProfileRecord$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/ProcessProfileRecord;

.field public final synthetic f$1:Lcom/android/internal/app/procstats/ProcessState;

.field public final synthetic f$2:Lcom/android/server/am/ProcessStatsService;

.field public final synthetic f$3:Lcom/android/internal/app/procstats/ProcessState;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/ProcessProfileRecord;Lcom/android/internal/app/procstats/ProcessState;Lcom/android/server/am/ProcessStatsService;Lcom/android/internal/app/procstats/ProcessState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/ProcessProfileRecord$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/am/ProcessProfileRecord;

    iput-object p2, p0, Lcom/android/server/am/ProcessProfileRecord$$ExternalSyntheticLambda2;->f$1:Lcom/android/internal/app/procstats/ProcessState;

    iput-object p3, p0, Lcom/android/server/am/ProcessProfileRecord$$ExternalSyntheticLambda2;->f$2:Lcom/android/server/am/ProcessStatsService;

    iput-object p4, p0, Lcom/android/server/am/ProcessProfileRecord$$ExternalSyntheticLambda2;->f$3:Lcom/android/internal/app/procstats/ProcessState;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/am/ProcessProfileRecord$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/am/ProcessProfileRecord;

    iget-object v1, p0, Lcom/android/server/am/ProcessProfileRecord$$ExternalSyntheticLambda2;->f$1:Lcom/android/internal/app/procstats/ProcessState;

    iget-object v2, p0, Lcom/android/server/am/ProcessProfileRecord$$ExternalSyntheticLambda2;->f$2:Lcom/android/server/am/ProcessStatsService;

    iget-object v3, p0, Lcom/android/server/am/ProcessProfileRecord$$ExternalSyntheticLambda2;->f$3:Lcom/android/internal/app/procstats/ProcessState;

    move-object v4, p1

    check-cast v4, Ljava/lang/String;

    move-object v5, p2

    check-cast v5, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ProcessProfileRecord;->lambda$onProcessActive$1$ProcessProfileRecord(Lcom/android/internal/app/procstats/ProcessState;Lcom/android/server/am/ProcessStatsService;Lcom/android/internal/app/procstats/ProcessState;Ljava/lang/String;Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;)V

    return-void
.end method
