.class public final synthetic Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/ActivityManagerService;

.field public final synthetic f$1:Lcom/android/server/am/ProcessRecord;

.field public final synthetic f$2:J

.field public final synthetic f$3:J

.field public final synthetic f$4:J

.field public final synthetic f$5:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;JJJI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda10;->f$0:Lcom/android/server/am/ActivityManagerService;

    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda10;->f$1:Lcom/android/server/am/ProcessRecord;

    iput-wide p3, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda10;->f$2:J

    iput-wide p5, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda10;->f$3:J

    iput-wide p7, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda10;->f$4:J

    iput p9, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda10;->f$5:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda10;->f$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda10;->f$1:Lcom/android/server/am/ProcessRecord;

    iget-wide v2, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda10;->f$2:J

    iget-wide v4, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda10;->f$3:J

    iget-wide v6, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda10;->f$4:J

    iget v8, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda10;->f$5:I

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/am/ActivityManagerService;->lambda$updateAppProcessCpuTimeLPr$21$ActivityManagerService(Lcom/android/server/am/ProcessRecord;JJJI)V

    return-void
.end method
