.class public final synthetic Lcom/android/server/am/ProcessProfileRecord$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/ProcessProfileRecord;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/ProcessProfileRecord;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/ProcessProfileRecord$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/am/ProcessProfileRecord;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/ProcessProfileRecord$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/am/ProcessProfileRecord;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/ProcessProfileRecord;->lambda$onProcessInactive$2$ProcessProfileRecord(Ljava/lang/String;Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;)V

    return-void
.end method
