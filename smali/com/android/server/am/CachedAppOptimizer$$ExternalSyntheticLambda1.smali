.class public final synthetic Lcom/android/server/am/CachedAppOptimizer$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/CachedAppOptimizer;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/CachedAppOptimizer;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/CachedAppOptimizer$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/am/CachedAppOptimizer;

    iput-boolean p2, p0, Lcom/android/server/am/CachedAppOptimizer$$ExternalSyntheticLambda1;->f$1:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-boolean v1, p0, Lcom/android/server/am/CachedAppOptimizer$$ExternalSyntheticLambda1;->f$1:Z

    check-cast p1, Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/am/CachedAppOptimizer;->lambda$enableFreezer$0$CachedAppOptimizer(ZLcom/android/server/am/ProcessRecord;)V

    return-void
.end method
