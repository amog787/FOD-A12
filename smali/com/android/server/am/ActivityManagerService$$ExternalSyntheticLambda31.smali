.class public final synthetic Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda31;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/ProcessRecord;

.field public final synthetic f$1:J

.field public final synthetic f$2:[J

.field public final synthetic f$3:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/ProcessRecord;J[JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda31;->f$0:Lcom/android/server/am/ProcessRecord;

    iput-wide p2, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda31;->f$1:J

    iput-object p4, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda31;->f$2:[J

    iput-wide p5, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda31;->f$3:J

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda31;->f$0:Lcom/android/server/am/ProcessRecord;

    iget-wide v1, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda31;->f$1:J

    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda31;->f$2:[J

    iget-wide v4, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda31;->f$3:J

    move-object v6, p1

    check-cast v6, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    invoke-static/range {v0 .. v6}, Lcom/android/server/am/ActivityManagerService;->lambda$getProcessPss$3(Lcom/android/server/am/ProcessRecord;J[JJLcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;)V

    return-void
.end method
