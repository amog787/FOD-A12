.class public final synthetic Lcom/android/server/location/contexthub/ContextHubTransactionManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

.field public final synthetic f$1:Lcom/android/server/location/contexthub/ContextHubServiceTransaction;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/contexthub/ContextHubTransactionManager;Lcom/android/server/location/contexthub/ContextHubServiceTransaction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    iput-object p2, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/location/contexthub/ContextHubServiceTransaction;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/location/contexthub/ContextHubServiceTransaction;

    invoke-virtual {v0, v1}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->lambda$startNextTransaction$0$ContextHubTransactionManager(Lcom/android/server/location/contexthub/ContextHubServiceTransaction;)V

    return-void
.end method
