.class public final synthetic Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/internal/os/KernelCpuUidTimeReader$Callback;


# instance fields
.field public final synthetic f$0:Ljava/util/List;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda9;->f$0:Ljava/util/List;

    iput p2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda9;->f$1:I

    return-void
.end method


# virtual methods
.method public final onUidCpuTime(ILjava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda9;->f$0:Ljava/util/List;

    iget v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda9;->f$1:I

    check-cast p2, Ljava/lang/Long;

    invoke-static {v0, v1, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->lambda$pullCpuActiveTimeLocked$14(Ljava/util/List;IILjava/lang/Long;)V

    return-void
.end method
