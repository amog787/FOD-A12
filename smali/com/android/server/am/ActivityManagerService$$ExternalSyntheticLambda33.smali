.class public final synthetic Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda33;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/ProcessRecord;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda33;->f$0:Lcom/android/server/am/ProcessRecord;

    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda33;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda33;->f$0:Lcom/android/server/am/ProcessRecord;

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda33;->f$1:Ljava/lang/String;

    check-cast p1, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    invoke-static {v0, v1, p1}, Lcom/android/server/am/ActivityManagerService;->lambda$checkExcessivePowerUsageLPr$24(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;)V

    return-void
.end method
