.class public final synthetic Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda21;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:[Ljava/lang/String;

.field public final synthetic f$2:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(I[Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda21;->f$0:I

    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda21;->f$1:[Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda21;->f$2:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget v0, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda21;->f$0:I

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda21;->f$1:[Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda21;->f$2:Ljava/util/ArrayList;

    check-cast p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    invoke-static {v0, v1, v2, p1}, Lcom/android/server/am/ActivityManagerService;->lambda$dumpApplicationMemoryUsage$17(I[Ljava/lang/String;Ljava/util/ArrayList;Lcom/android/internal/os/ProcessCpuTracker$Stats;)V

    return-void
.end method
