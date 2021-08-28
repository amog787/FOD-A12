.class public final synthetic Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/AppProfiler;

.field public final synthetic f$1:Z

.field public final synthetic f$2:I

.field public final synthetic f$3:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/AppProfiler;ZIJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/am/AppProfiler;

    iput-boolean p2, p0, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda3;->f$1:Z

    iput p3, p0, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda3;->f$2:I

    iput-wide p4, p0, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda3;->f$3:J

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/am/AppProfiler;

    iget-boolean v1, p0, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda3;->f$1:Z

    iget v2, p0, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda3;->f$2:I

    iget-wide v3, p0, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda3;->f$3:J

    move-object v5, p1

    check-cast v5, Lcom/android/server/am/ProcessRecord;

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/AppProfiler;->lambda$updateLowMemStateLSP$4$AppProfiler(ZIJLcom/android/server/am/ProcessRecord;)V

    return-void
.end method
