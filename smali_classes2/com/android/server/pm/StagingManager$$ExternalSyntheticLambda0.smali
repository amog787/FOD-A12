.class public final synthetic Lcom/android/server/pm/StagingManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/StagingManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/StagingManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/StagingManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/StagingManager;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/StagingManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/StagingManager;

    invoke-virtual {v0}, Lcom/android/server/pm/StagingManager;->lambda$onBootCompletedBroadcastReceived$1$StagingManager()V

    return-void
.end method
