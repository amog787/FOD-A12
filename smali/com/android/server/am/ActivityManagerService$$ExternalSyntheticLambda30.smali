.class public final synthetic Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda30;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/ProcessRecord;

.field public final synthetic f$1:J

.field public final synthetic f$2:J

.field public final synthetic f$3:J

.field public final synthetic f$4:I

.field public final synthetic f$5:J

.field public final synthetic f$6:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/ProcessRecord;JJJIJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda30;->f$0:Lcom/android/server/am/ProcessRecord;

    iput-wide p2, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda30;->f$1:J

    iput-wide p4, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda30;->f$2:J

    iput-wide p6, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda30;->f$3:J

    iput p8, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda30;->f$4:I

    iput-wide p9, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda30;->f$5:J

    iput-wide p11, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda30;->f$6:J

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 13

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda30;->f$0:Lcom/android/server/am/ProcessRecord;

    iget-wide v1, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda30;->f$1:J

    iget-wide v3, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda30;->f$2:J

    iget-wide v5, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda30;->f$3:J

    iget v7, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda30;->f$4:I

    iget-wide v8, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda30;->f$5:J

    iget-wide v10, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda30;->f$6:J

    move-object v12, p1

    check-cast v12, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    invoke-static/range {v0 .. v12}, Lcom/android/server/am/ActivityManagerService;->lambda$dumpApplicationMemoryUsage$18(Lcom/android/server/am/ProcessRecord;JJJIJJLcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;)V

    return-void
.end method
