.class Lcom/android/server/pm/Settings$2;
.super Lcom/android/server/utils/SnapshotCache;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/Settings;->makeCache()Lcom/android/server/utils/SnapshotCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/utils/SnapshotCache<",
        "Lcom/android/server/pm/Settings;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/Settings;


# direct methods
.method constructor <init>(Lcom/android/server/pm/Settings;Lcom/android/server/pm/Settings;Lcom/android/server/utils/Watchable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/pm/Settings;
    .param p2, "source"    # Lcom/android/server/pm/Settings;
    .param p3, "watchable"    # Lcom/android/server/utils/Watchable;

    .line 535
    iput-object p1, p0, Lcom/android/server/pm/Settings$2;->this$0:Lcom/android/server/pm/Settings;

    invoke-direct {p0, p2, p3}, Lcom/android/server/utils/SnapshotCache;-><init>(Ljava/lang/Object;Lcom/android/server/utils/Watchable;)V

    return-void
.end method


# virtual methods
.method public createSnapshot()Lcom/android/server/pm/Settings;
    .locals 3

    .line 538
    new-instance v0, Lcom/android/server/pm/Settings;

    iget-object v1, p0, Lcom/android/server/pm/Settings$2;->mSource:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/pm/Settings;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/Settings;-><init>(Lcom/android/server/pm/Settings;Lcom/android/server/pm/Settings$1;)V

    .line 539
    .local v0, "s":Lcom/android/server/pm/Settings;
    invoke-static {v0}, Lcom/android/server/pm/Settings;->access$100(Lcom/android/server/pm/Settings;)Lcom/android/server/utils/WatchableImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/utils/WatchableImpl;->seal()V

    .line 540
    return-object v0
.end method

.method public bridge synthetic createSnapshot()Ljava/lang/Object;
    .locals 1

    .line 535
    invoke-virtual {p0}, Lcom/android/server/pm/Settings$2;->createSnapshot()Lcom/android/server/pm/Settings;

    move-result-object v0

    return-object v0
.end method
