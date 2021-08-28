.class public final synthetic Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/AppProfiler;

.field public final synthetic f$1:Z

.field public final synthetic f$2:I

.field public final synthetic f$3:J

.field public final synthetic f$4:[I

.field public final synthetic f$5:[I

.field public final synthetic f$6:I

.field public final synthetic f$7:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/AppProfiler;ZIJ[I[III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/am/AppProfiler;

    iput-boolean p2, p0, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda4;->f$1:Z

    iput p3, p0, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda4;->f$2:I

    iput-wide p4, p0, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda4;->f$3:J

    iput-object p6, p0, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda4;->f$4:[I

    iput-object p7, p0, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda4;->f$5:[I

    iput p8, p0, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda4;->f$6:I

    iput p9, p0, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda4;->f$7:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 10

    iget-object v0, p0, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/am/AppProfiler;

    iget-boolean v1, p0, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda4;->f$1:Z

    iget v2, p0, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda4;->f$2:I

    iget-wide v3, p0, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda4;->f$3:J

    iget-object v5, p0, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda4;->f$4:[I

    iget-object v6, p0, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda4;->f$5:[I

    iget v7, p0, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda4;->f$6:I

    iget v8, p0, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda4;->f$7:I

    move-object v9, p1

    check-cast v9, Lcom/android/server/am/ProcessRecord;

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/am/AppProfiler;->lambda$updateLowMemStateLSP$3$AppProfiler(ZIJ[I[IIILcom/android/server/am/ProcessRecord;)V

    return-void
.end method
