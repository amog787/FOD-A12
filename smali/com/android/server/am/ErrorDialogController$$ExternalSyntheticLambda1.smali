.class public final synthetic Lcom/android/server/am/ErrorDialogController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/ErrorDialogController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/ErrorDialogController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/ErrorDialogController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/am/ErrorDialogController;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/ErrorDialogController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/am/ErrorDialogController;

    invoke-virtual {v0}, Lcom/android/server/am/ErrorDialogController;->lambda$showDebugWaitingDialogs$2$ErrorDialogController()V

    return-void
.end method
