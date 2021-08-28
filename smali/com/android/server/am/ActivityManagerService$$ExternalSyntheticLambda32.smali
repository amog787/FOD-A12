.class public final synthetic Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda32;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/ProcessRecord;

.field public final synthetic f$1:Landroid/os/Debug$MemoryInfo;

.field public final synthetic f$2:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/ProcessRecord;Landroid/os/Debug$MemoryInfo;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda32;->f$0:Lcom/android/server/am/ProcessRecord;

    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda32;->f$1:Landroid/os/Debug$MemoryInfo;

    iput-wide p3, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda32;->f$2:J

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda32;->f$0:Lcom/android/server/am/ProcessRecord;

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda32;->f$1:Landroid/os/Debug$MemoryInfo;

    iget-wide v2, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda32;->f$2:J

    check-cast p1, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/android/server/am/ActivityManagerService;->lambda$getProcessMemoryInfo$2(Lcom/android/server/am/ProcessRecord;Landroid/os/Debug$MemoryInfo;JLcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;)V

    return-void
.end method
