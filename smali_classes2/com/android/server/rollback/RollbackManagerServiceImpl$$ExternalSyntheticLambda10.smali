.class public final synthetic Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;

.field public final synthetic f$1:Lcom/android/internal/util/IndentingPrintWriter;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/rollback/RollbackManagerServiceImpl;Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda10;->f$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;

    iput-object p2, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda10;->f$1:Lcom/android/internal/util/IndentingPrintWriter;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda10;->f$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;

    iget-object v1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda10;->f$1:Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {v0, v1}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->lambda$dump$14$RollbackManagerServiceImpl(Lcom/android/internal/util/IndentingPrintWriter;)V

    return-void
.end method
