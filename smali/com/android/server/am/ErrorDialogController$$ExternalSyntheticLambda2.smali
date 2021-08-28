.class public final synthetic Lcom/android/server/am/ErrorDialogController$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/ErrorDialogController;

.field public final synthetic f$1:Ljava/util/List;

.field public final synthetic f$2:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/ErrorDialogController;Ljava/util/List;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/ErrorDialogController$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/am/ErrorDialogController;

    iput-object p2, p0, Lcom/android/server/am/ErrorDialogController$$ExternalSyntheticLambda2;->f$1:Ljava/util/List;

    iput-object p3, p0, Lcom/android/server/am/ErrorDialogController$$ExternalSyntheticLambda2;->f$2:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/ErrorDialogController$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/am/ErrorDialogController;

    iget-object v1, p0, Lcom/android/server/am/ErrorDialogController$$ExternalSyntheticLambda2;->f$1:Ljava/util/List;

    iget-object v2, p0, Lcom/android/server/am/ErrorDialogController$$ExternalSyntheticLambda2;->f$2:Ljava/util/function/Consumer;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ErrorDialogController;->lambda$scheduleForAllDialogs$0$ErrorDialogController(Ljava/util/List;Ljava/util/function/Consumer;)V

    return-void
.end method
