.class public final synthetic Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda26;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/ActivityManagerService;

.field public final synthetic f$1:J

.field public final synthetic f$2:J

.field public final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/ActivityManagerService;JJZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda26;->f$0:Lcom/android/server/am/ActivityManagerService;

    iput-wide p2, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda26;->f$1:J

    iput-wide p4, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda26;->f$2:J

    iput-boolean p6, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda26;->f$3:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda26;->f$0:Lcom/android/server/am/ActivityManagerService;

    iget-wide v1, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda26;->f$1:J

    iget-wide v3, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda26;->f$2:J

    iget-boolean v5, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda26;->f$3:Z

    move-object v6, p1

    check-cast v6, Lcom/android/server/am/ProcessRecord;

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ActivityManagerService;->lambda$checkExcessivePowerUsage$20$ActivityManagerService(JJZLcom/android/server/am/ProcessRecord;)V

    return-void
.end method
