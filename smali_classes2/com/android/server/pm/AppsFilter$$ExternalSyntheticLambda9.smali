.class public final synthetic Lcom/android/server/pm/AppsFilter$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/AppsFilter;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/AppsFilter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/AppsFilter$$ExternalSyntheticLambda9;->f$0:Lcom/android/server/pm/AppsFilter;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/AppsFilter$$ExternalSyntheticLambda9;->f$0:Lcom/android/server/pm/AppsFilter;

    invoke-virtual {v0}, Lcom/android/server/pm/AppsFilter;->lambda$updateEntireShouldFilterCacheAsync$5$AppsFilter()V

    return-void
.end method
