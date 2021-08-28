.class public final synthetic Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/ActivityManagerService;

.field public final synthetic f$1:Lcom/android/server/am/ProcessRecord;

.field public final synthetic f$2:Lcom/android/server/am/PhantomProcessRecord;

.field public final synthetic f$3:J

.field public final synthetic f$4:J

.field public final synthetic f$5:J

.field public final synthetic f$6:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/PhantomProcessRecord;JJJI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda11;->f$0:Lcom/android/server/am/ActivityManagerService;

    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda11;->f$1:Lcom/android/server/am/ProcessRecord;

    iput-object p3, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda11;->f$2:Lcom/android/server/am/PhantomProcessRecord;

    iput-wide p4, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda11;->f$3:J

    iput-wide p6, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda11;->f$4:J

    iput-wide p8, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda11;->f$5:J

    iput p10, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda11;->f$6:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda11;->f$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda11;->f$1:Lcom/android/server/am/ProcessRecord;

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda11;->f$2:Lcom/android/server/am/PhantomProcessRecord;

    iget-wide v3, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda11;->f$3:J

    iget-wide v5, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda11;->f$4:J

    iget-wide v7, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda11;->f$5:J

    iget v9, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda11;->f$6:I

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/am/ActivityManagerService;->lambda$updatePhantomProcessCpuTimeLPr$22$ActivityManagerService(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/PhantomProcessRecord;JJJI)V

    return-void
.end method
