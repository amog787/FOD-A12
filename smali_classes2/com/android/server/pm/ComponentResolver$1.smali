.class Lcom/android/server/pm/ComponentResolver$1;
.super Lcom/android/server/utils/SnapshotCache;
.source "ComponentResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/ComponentResolver;-><init>(Lcom/android/server/pm/UserManagerService;Landroid/content/pm/PackageManagerInternal;Lcom/android/server/pm/PackageManagerTracedLock;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/utils/SnapshotCache<",
        "Lcom/android/server/pm/ComponentResolver;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/ComponentResolver;


# direct methods
.method constructor <init>(Lcom/android/server/pm/ComponentResolver;Lcom/android/server/pm/ComponentResolver;Lcom/android/server/utils/Watchable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/pm/ComponentResolver;
    .param p2, "source"    # Lcom/android/server/pm/ComponentResolver;
    .param p3, "watchable"    # Lcom/android/server/utils/Watchable;

    .line 225
    iput-object p1, p0, Lcom/android/server/pm/ComponentResolver$1;->this$0:Lcom/android/server/pm/ComponentResolver;

    invoke-direct {p0, p2, p3}, Lcom/android/server/utils/SnapshotCache;-><init>(Ljava/lang/Object;Lcom/android/server/utils/Watchable;)V

    return-void
.end method


# virtual methods
.method public createSnapshot()Lcom/android/server/pm/ComponentResolver;
    .locals 3

    .line 228
    new-instance v0, Lcom/android/server/pm/ComponentResolver;

    iget-object v1, p0, Lcom/android/server/pm/ComponentResolver$1;->mSource:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/pm/ComponentResolver;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/ComponentResolver;-><init>(Lcom/android/server/pm/ComponentResolver;Lcom/android/server/pm/ComponentResolver$1;)V

    return-object v0
.end method

.method public bridge synthetic createSnapshot()Ljava/lang/Object;
    .locals 1

    .line 225
    invoke-virtual {p0}, Lcom/android/server/pm/ComponentResolver$1;->createSnapshot()Lcom/android/server/pm/ComponentResolver;

    move-result-object v0

    return-object v0
.end method
