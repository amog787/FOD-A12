.class public abstract Lcom/android/server/pm/WatchedIntentResolver;
.super Lcom/android/server/IntentResolver;
.source "WatchedIntentResolver.java"

# interfaces
.implements Lcom/android/server/utils/Watchable;
.implements Lcom/android/server/utils/Snappable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<F:",
        "Lcom/android/server/pm/WatchedIntentFilter;",
        "R:",
        "Lcom/android/server/pm/WatchedIntentFilter;",
        ">",
        "Lcom/android/server/IntentResolver<",
        "TF;TR;>;",
        "Lcom/android/server/utils/Watchable;",
        "Lcom/android/server/utils/Snappable;"
    }
.end annotation


# static fields
.field private static final sResolvePrioritySorter:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/server/pm/WatchedIntentFilter;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mWatchable:Lcom/android/server/utils/Watchable;

.field private final mWatcher:Lcom/android/server/utils/Watcher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 124
    new-instance v0, Lcom/android/server/pm/WatchedIntentResolver$2;

    invoke-direct {v0}, Lcom/android/server/pm/WatchedIntentResolver$2;-><init>()V

    sput-object v0, Lcom/android/server/pm/WatchedIntentResolver;->sResolvePrioritySorter:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 39
    .local p0, "this":Lcom/android/server/pm/WatchedIntentResolver;, "Lcom/android/server/pm/WatchedIntentResolver<TF;TR;>;"
    invoke-direct {p0}, Lcom/android/server/IntentResolver;-><init>()V

    .line 47
    new-instance v0, Lcom/android/server/utils/WatchableImpl;

    invoke-direct {v0}, Lcom/android/server/utils/WatchableImpl;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/WatchedIntentResolver;->mWatchable:Lcom/android/server/utils/Watchable;

    .line 87
    new-instance v0, Lcom/android/server/pm/WatchedIntentResolver$1;

    invoke-direct {v0, p0}, Lcom/android/server/pm/WatchedIntentResolver$1;-><init>(Lcom/android/server/pm/WatchedIntentResolver;)V

    iput-object v0, p0, Lcom/android/server/pm/WatchedIntentResolver;->mWatcher:Lcom/android/server/utils/Watcher;

    return-void
.end method


# virtual methods
.method public addFilter(Lcom/android/server/pm/WatchedIntentFilter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)V"
        }
    .end annotation

    .line 103
    .local p0, "this":Lcom/android/server/pm/WatchedIntentResolver;, "Lcom/android/server/pm/WatchedIntentResolver<TF;TR;>;"
    .local p1, "f":Lcom/android/server/pm/WatchedIntentFilter;, "TF;"
    invoke-super {p0, p1}, Lcom/android/server/IntentResolver;->addFilter(Ljava/lang/Object;)V

    .line 104
    iget-object v0, p0, Lcom/android/server/pm/WatchedIntentResolver;->mWatcher:Lcom/android/server/utils/Watcher;

    invoke-virtual {p1, v0}, Lcom/android/server/pm/WatchedIntentFilter;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 105
    invoke-virtual {p0}, Lcom/android/server/pm/WatchedIntentResolver;->onChanged()V

    .line 106
    return-void
.end method

.method public bridge synthetic addFilter(Ljava/lang/Object;)V
    .locals 0

    .line 39
    .local p0, "this":Lcom/android/server/pm/WatchedIntentResolver;, "Lcom/android/server/pm/WatchedIntentResolver<TF;TR;>;"
    check-cast p1, Lcom/android/server/pm/WatchedIntentFilter;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/WatchedIntentResolver;->addFilter(Lcom/android/server/pm/WatchedIntentFilter;)V

    return-void
.end method

.method protected copyFrom(Lcom/android/server/pm/WatchedIntentResolver;)V
    .locals 0
    .param p1, "orig"    # Lcom/android/server/pm/WatchedIntentResolver;

    .line 149
    .local p0, "this":Lcom/android/server/pm/WatchedIntentResolver;, "Lcom/android/server/pm/WatchedIntentResolver<TF;TR;>;"
    invoke-super {p0, p1}, Lcom/android/server/IntentResolver;->copyFrom(Lcom/android/server/IntentResolver;)V

    .line 150
    return-void
.end method

.method public dispatchChange(Lcom/android/server/utils/Watchable;)V
    .locals 1
    .param p1, "what"    # Lcom/android/server/utils/Watchable;

    .line 84
    .local p0, "this":Lcom/android/server/pm/WatchedIntentResolver;, "Lcom/android/server/pm/WatchedIntentResolver<TF;TR;>;"
    iget-object v0, p0, Lcom/android/server/pm/WatchedIntentResolver;->mWatchable:Lcom/android/server/utils/Watchable;

    invoke-interface {v0, p1}, Lcom/android/server/utils/Watchable;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    .line 85
    return-void
.end method

.method public findFilters(Lcom/android/server/pm/WatchedIntentFilter;)Ljava/util/ArrayList;
    .locals 1
    .param p1, "matching"    # Lcom/android/server/pm/WatchedIntentFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/WatchedIntentFilter;",
            ")",
            "Ljava/util/ArrayList<",
            "TF;>;"
        }
    .end annotation

    .line 143
    .local p0, "this":Lcom/android/server/pm/WatchedIntentResolver;, "Lcom/android/server/pm/WatchedIntentResolver<TF;TR;>;"
    invoke-virtual {p1}, Lcom/android/server/pm/WatchedIntentFilter;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/android/server/IntentResolver;->findFilters(Landroid/content/IntentFilter;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public isRegisteredObserver(Lcom/android/server/utils/Watcher;)Z
    .locals 1
    .param p1, "observer"    # Lcom/android/server/utils/Watcher;

    .line 74
    .local p0, "this":Lcom/android/server/pm/WatchedIntentResolver;, "Lcom/android/server/pm/WatchedIntentResolver<TF;TR;>;"
    iget-object v0, p0, Lcom/android/server/pm/WatchedIntentResolver;->mWatchable:Lcom/android/server/utils/Watchable;

    invoke-interface {v0, p1}, Lcom/android/server/utils/Watchable;->isRegisteredObserver(Lcom/android/server/utils/Watcher;)Z

    move-result v0

    return v0
.end method

.method protected onChanged()V
    .locals 0

    .line 98
    .local p0, "this":Lcom/android/server/pm/WatchedIntentResolver;, "Lcom/android/server/pm/WatchedIntentResolver<TF;TR;>;"
    invoke-virtual {p0, p0}, Lcom/android/server/pm/WatchedIntentResolver;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    .line 99
    return-void
.end method

.method public registerObserver(Lcom/android/server/utils/Watcher;)V
    .locals 1
    .param p1, "observer"    # Lcom/android/server/utils/Watcher;

    .line 55
    .local p0, "this":Lcom/android/server/pm/WatchedIntentResolver;, "Lcom/android/server/pm/WatchedIntentResolver<TF;TR;>;"
    iget-object v0, p0, Lcom/android/server/pm/WatchedIntentResolver;->mWatchable:Lcom/android/server/utils/Watchable;

    invoke-interface {v0, p1}, Lcom/android/server/utils/Watchable;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 56
    return-void
.end method

.method public removeFilter(Lcom/android/server/pm/WatchedIntentFilter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)V"
        }
    .end annotation

    .line 110
    .local p0, "this":Lcom/android/server/pm/WatchedIntentResolver;, "Lcom/android/server/pm/WatchedIntentResolver<TF;TR;>;"
    .local p1, "f":Lcom/android/server/pm/WatchedIntentFilter;, "TF;"
    iget-object v0, p0, Lcom/android/server/pm/WatchedIntentResolver;->mWatcher:Lcom/android/server/utils/Watcher;

    invoke-virtual {p1, v0}, Lcom/android/server/pm/WatchedIntentFilter;->unregisterObserver(Lcom/android/server/utils/Watcher;)V

    .line 111
    invoke-super {p0, p1}, Lcom/android/server/IntentResolver;->removeFilter(Ljava/lang/Object;)V

    .line 112
    invoke-virtual {p0}, Lcom/android/server/pm/WatchedIntentResolver;->onChanged()V

    .line 113
    return-void
.end method

.method public bridge synthetic removeFilter(Ljava/lang/Object;)V
    .locals 0

    .line 39
    .local p0, "this":Lcom/android/server/pm/WatchedIntentResolver;, "Lcom/android/server/pm/WatchedIntentResolver<TF;TR;>;"
    check-cast p1, Lcom/android/server/pm/WatchedIntentFilter;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/WatchedIntentResolver;->removeFilter(Lcom/android/server/pm/WatchedIntentFilter;)V

    return-void
.end method

.method protected removeFilterInternal(Lcom/android/server/pm/WatchedIntentFilter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)V"
        }
    .end annotation

    .line 117
    .local p0, "this":Lcom/android/server/pm/WatchedIntentResolver;, "Lcom/android/server/pm/WatchedIntentResolver<TF;TR;>;"
    .local p1, "f":Lcom/android/server/pm/WatchedIntentFilter;, "TF;"
    iget-object v0, p0, Lcom/android/server/pm/WatchedIntentResolver;->mWatcher:Lcom/android/server/utils/Watcher;

    invoke-virtual {p1, v0}, Lcom/android/server/pm/WatchedIntentFilter;->unregisterObserver(Lcom/android/server/utils/Watcher;)V

    .line 118
    invoke-super {p0, p1}, Lcom/android/server/IntentResolver;->removeFilterInternal(Ljava/lang/Object;)V

    .line 119
    invoke-virtual {p0}, Lcom/android/server/pm/WatchedIntentResolver;->onChanged()V

    .line 120
    return-void
.end method

.method protected bridge synthetic removeFilterInternal(Ljava/lang/Object;)V
    .locals 0

    .line 39
    .local p0, "this":Lcom/android/server/pm/WatchedIntentResolver;, "Lcom/android/server/pm/WatchedIntentResolver<TF;TR;>;"
    check-cast p1, Lcom/android/server/pm/WatchedIntentFilter;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/WatchedIntentResolver;->removeFilterInternal(Lcom/android/server/pm/WatchedIntentFilter;)V

    return-void
.end method

.method protected sortResults(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TR;>;)V"
        }
    .end annotation

    .line 136
    .local p0, "this":Lcom/android/server/pm/WatchedIntentResolver;, "Lcom/android/server/pm/WatchedIntentResolver<TF;TR;>;"
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<TR;>;"
    sget-object v0, Lcom/android/server/pm/WatchedIntentResolver;->sResolvePrioritySorter:Ljava/util/Comparator;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 137
    return-void
.end method

.method public unregisterObserver(Lcom/android/server/utils/Watcher;)V
    .locals 1
    .param p1, "observer"    # Lcom/android/server/utils/Watcher;

    .line 64
    .local p0, "this":Lcom/android/server/pm/WatchedIntentResolver;, "Lcom/android/server/pm/WatchedIntentResolver<TF;TR;>;"
    iget-object v0, p0, Lcom/android/server/pm/WatchedIntentResolver;->mWatchable:Lcom/android/server/utils/Watchable;

    invoke-interface {v0, p1}, Lcom/android/server/utils/Watchable;->unregisterObserver(Lcom/android/server/utils/Watcher;)V

    .line 65
    return-void
.end method
