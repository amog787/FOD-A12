.class public final synthetic Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/rollback/RollbackManagerServiceImpl;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda11;->f$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;

    iput-object p2, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda11;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda11;->f$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;

    iget-object v1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda11;->f$1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->lambda$expireRollbackForPackage$5$RollbackManagerServiceImpl(Ljava/lang/String;)V

    return-void
.end method
