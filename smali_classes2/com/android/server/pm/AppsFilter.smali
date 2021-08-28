.class public Lcom/android/server/pm/AppsFilter;
.super Ljava/lang/Object;
.source "AppsFilter.java"

# interfaces
.implements Lcom/android/server/utils/Watchable;
.implements Lcom/android/server/utils/Snappable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/AppsFilter$ToString;,
        Lcom/android/server/pm/AppsFilter$FeatureConfigImpl;,
        Lcom/android/server/pm/AppsFilter$FeatureConfig;,
        Lcom/android/server/pm/AppsFilter$StateProvider;
    }
.end annotation


# static fields
.field private static final DEBUG_ALLOW_ALL:Z = false

.field private static final DEBUG_LOGGING:Z = false

.field private static final DEBUG_TRACING:Z = false

.field private static final TAG:Ljava/lang/String; = "AppsFilter"


# instance fields
.field private final mBackgroundExecutor:Ljava/util/concurrent/Executor;

.field private final mCacheLock:Ljava/lang/Object;

.field private final mFeatureConfig:Lcom/android/server/pm/AppsFilter$FeatureConfig;

.field private final mForceQueryable:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mForceQueryableByDevicePackageNames:[Ljava/lang/String;

.field private final mImplicitlyQueryable:Landroid/util/SparseSetArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseSetArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mOverlayReferenceMapper:Lcom/android/server/om/OverlayReferenceMapper;

.field private mProtectedBroadcasts:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mQueriesViaComponent:Landroid/util/SparseSetArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseSetArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mQueriesViaComponentRequireRecompute:Z

.field private final mQueriesViaPackage:Landroid/util/SparseSetArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseSetArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mQueryableViaUsesLibrary:Landroid/util/SparseSetArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseSetArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mShouldFilterCache:Lcom/android/server/utils/WatchedSparseBooleanMatrix;

.field private final mSnapshot:Lcom/android/server/utils/SnapshotCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/SnapshotCache<",
            "Lcom/android/server/pm/AppsFilter;",
            ">;"
        }
    .end annotation
.end field

.field private final mStateProvider:Lcom/android/server/pm/AppsFilter$StateProvider;

.field private final mSystemAppsQueryable:Z

.field private mSystemSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

.field private final mWatchable:Lcom/android/server/utils/WatchableImpl;


# direct methods
.method constructor <init>(Lcom/android/server/pm/AppsFilter$StateProvider;Lcom/android/server/pm/AppsFilter$FeatureConfig;[Ljava/lang/String;ZLcom/android/server/om/OverlayReferenceMapper$Provider;Ljava/util/concurrent/Executor;)V
    .locals 2
    .param p1, "stateProvider"    # Lcom/android/server/pm/AppsFilter$StateProvider;
    .param p2, "featureConfig"    # Lcom/android/server/pm/AppsFilter$FeatureConfig;
    .param p3, "forceQueryableList"    # [Ljava/lang/String;
    .param p4, "systemAppsQueryable"    # Z
    .param p5, "overlayProvider"    # Lcom/android/server/om/OverlayReferenceMapper$Provider;
    .param p6, "backgroundExecutor"    # Ljava/util/concurrent/Executor;

    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    new-instance v0, Landroid/util/SparseSetArray;

    invoke-direct {v0}, Landroid/util/SparseSetArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/AppsFilter;->mImplicitlyQueryable:Landroid/util/SparseSetArray;

    .line 103
    new-instance v0, Landroid/util/SparseSetArray;

    invoke-direct {v0}, Landroid/util/SparseSetArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/AppsFilter;->mQueriesViaPackage:Landroid/util/SparseSetArray;

    .line 109
    new-instance v0, Landroid/util/SparseSetArray;

    invoke-direct {v0}, Landroid/util/SparseSetArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/AppsFilter;->mQueriesViaComponent:Landroid/util/SparseSetArray;

    .line 115
    new-instance v0, Landroid/util/SparseSetArray;

    invoke-direct {v0}, Landroid/util/SparseSetArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/AppsFilter;->mQueryableViaUsesLibrary:Landroid/util/SparseSetArray;

    .line 129
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/pm/AppsFilter;->mQueriesViaComponentRequireRecompute:Z

    .line 135
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/AppsFilter;->mForceQueryable:Landroid/util/ArraySet;

    .line 151
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/AppsFilter;->mProtectedBroadcasts:Ljava/util/Set;

    .line 153
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/AppsFilter;->mCacheLock:Ljava/lang/Object;

    .line 182
    new-instance v0, Lcom/android/server/utils/WatchableImpl;

    invoke-direct {v0}, Lcom/android/server/utils/WatchableImpl;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/AppsFilter;->mWatchable:Lcom/android/server/utils/WatchableImpl;

    .line 242
    iput-object p2, p0, Lcom/android/server/pm/AppsFilter;->mFeatureConfig:Lcom/android/server/pm/AppsFilter$FeatureConfig;

    .line 243
    iput-object p3, p0, Lcom/android/server/pm/AppsFilter;->mForceQueryableByDevicePackageNames:[Ljava/lang/String;

    .line 244
    iput-boolean p4, p0, Lcom/android/server/pm/AppsFilter;->mSystemAppsQueryable:Z

    .line 245
    new-instance v0, Lcom/android/server/om/OverlayReferenceMapper;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p5}, Lcom/android/server/om/OverlayReferenceMapper;-><init>(ZLcom/android/server/om/OverlayReferenceMapper$Provider;)V

    iput-object v0, p0, Lcom/android/server/pm/AppsFilter;->mOverlayReferenceMapper:Lcom/android/server/om/OverlayReferenceMapper;

    .line 247
    iput-object p1, p0, Lcom/android/server/pm/AppsFilter;->mStateProvider:Lcom/android/server/pm/AppsFilter$StateProvider;

    .line 248
    iput-object p6, p0, Lcom/android/server/pm/AppsFilter;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    .line 249
    invoke-direct {p0}, Lcom/android/server/pm/AppsFilter;->makeCache()Lcom/android/server/utils/SnapshotCache;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/AppsFilter;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 250
    return-void
.end method

.method private constructor <init>(Lcom/android/server/pm/AppsFilter;)V
    .locals 6
    .param p1, "orig"    # Lcom/android/server/pm/AppsFilter;

    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    new-instance v0, Landroid/util/SparseSetArray;

    invoke-direct {v0}, Landroid/util/SparseSetArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/AppsFilter;->mImplicitlyQueryable:Landroid/util/SparseSetArray;

    .line 103
    new-instance v1, Landroid/util/SparseSetArray;

    invoke-direct {v1}, Landroid/util/SparseSetArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/AppsFilter;->mQueriesViaPackage:Landroid/util/SparseSetArray;

    .line 109
    new-instance v2, Landroid/util/SparseSetArray;

    invoke-direct {v2}, Landroid/util/SparseSetArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/AppsFilter;->mQueriesViaComponent:Landroid/util/SparseSetArray;

    .line 115
    new-instance v3, Landroid/util/SparseSetArray;

    invoke-direct {v3}, Landroid/util/SparseSetArray;-><init>()V

    iput-object v3, p0, Lcom/android/server/pm/AppsFilter;->mQueryableViaUsesLibrary:Landroid/util/SparseSetArray;

    .line 129
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/pm/AppsFilter;->mQueriesViaComponentRequireRecompute:Z

    .line 135
    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    iput-object v4, p0, Lcom/android/server/pm/AppsFilter;->mForceQueryable:Landroid/util/ArraySet;

    .line 151
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    iput-object v5, p0, Lcom/android/server/pm/AppsFilter;->mProtectedBroadcasts:Ljava/util/Set;

    .line 153
    new-instance v5, Ljava/lang/Object;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput-object v5, p0, Lcom/android/server/pm/AppsFilter;->mCacheLock:Ljava/lang/Object;

    .line 182
    new-instance v5, Lcom/android/server/utils/WatchableImpl;

    invoke-direct {v5}, Lcom/android/server/utils/WatchableImpl;-><init>()V

    iput-object v5, p0, Lcom/android/server/pm/AppsFilter;->mWatchable:Lcom/android/server/utils/WatchableImpl;

    .line 258
    iget-object v5, p1, Lcom/android/server/pm/AppsFilter;->mImplicitlyQueryable:Landroid/util/SparseSetArray;

    invoke-static {v0, v5}, Lcom/android/server/utils/Snapshots;->copy(Landroid/util/SparseSetArray;Landroid/util/SparseSetArray;)V

    .line 259
    iget-object v0, p1, Lcom/android/server/pm/AppsFilter;->mQueriesViaPackage:Landroid/util/SparseSetArray;

    invoke-static {v1, v0}, Lcom/android/server/utils/Snapshots;->copy(Landroid/util/SparseSetArray;Landroid/util/SparseSetArray;)V

    .line 260
    iget-object v0, p1, Lcom/android/server/pm/AppsFilter;->mQueriesViaComponent:Landroid/util/SparseSetArray;

    invoke-static {v2, v0}, Lcom/android/server/utils/Snapshots;->copy(Landroid/util/SparseSetArray;Landroid/util/SparseSetArray;)V

    .line 261
    iget-object v0, p1, Lcom/android/server/pm/AppsFilter;->mQueryableViaUsesLibrary:Landroid/util/SparseSetArray;

    invoke-static {v3, v0}, Lcom/android/server/utils/Snapshots;->copy(Landroid/util/SparseSetArray;Landroid/util/SparseSetArray;)V

    .line 262
    iget-boolean v0, p1, Lcom/android/server/pm/AppsFilter;->mQueriesViaComponentRequireRecompute:Z

    iput-boolean v0, p0, Lcom/android/server/pm/AppsFilter;->mQueriesViaComponentRequireRecompute:Z

    .line 263
    iget-object v0, p1, Lcom/android/server/pm/AppsFilter;->mForceQueryable:Landroid/util/ArraySet;

    invoke-virtual {v4, v0}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 264
    iget-object v0, p1, Lcom/android/server/pm/AppsFilter;->mForceQueryableByDevicePackageNames:[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/AppsFilter;->mForceQueryableByDevicePackageNames:[Ljava/lang/String;

    .line 265
    iget-boolean v0, p1, Lcom/android/server/pm/AppsFilter;->mSystemAppsQueryable:Z

    iput-boolean v0, p0, Lcom/android/server/pm/AppsFilter;->mSystemAppsQueryable:Z

    .line 266
    iget-object v0, p1, Lcom/android/server/pm/AppsFilter;->mFeatureConfig:Lcom/android/server/pm/AppsFilter$FeatureConfig;

    iput-object v0, p0, Lcom/android/server/pm/AppsFilter;->mFeatureConfig:Lcom/android/server/pm/AppsFilter$FeatureConfig;

    .line 267
    iget-object v0, p1, Lcom/android/server/pm/AppsFilter;->mOverlayReferenceMapper:Lcom/android/server/om/OverlayReferenceMapper;

    iput-object v0, p0, Lcom/android/server/pm/AppsFilter;->mOverlayReferenceMapper:Lcom/android/server/om/OverlayReferenceMapper;

    .line 268
    iget-object v0, p1, Lcom/android/server/pm/AppsFilter;->mStateProvider:Lcom/android/server/pm/AppsFilter$StateProvider;

    iput-object v0, p0, Lcom/android/server/pm/AppsFilter;->mStateProvider:Lcom/android/server/pm/AppsFilter$StateProvider;

    .line 269
    iget-object v0, p1, Lcom/android/server/pm/AppsFilter;->mSystemSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iput-object v0, p0, Lcom/android/server/pm/AppsFilter;->mSystemSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    .line 270
    iget-object v0, p1, Lcom/android/server/pm/AppsFilter;->mProtectedBroadcasts:Ljava/util/Set;

    iput-object v0, p0, Lcom/android/server/pm/AppsFilter;->mProtectedBroadcasts:Ljava/util/Set;

    .line 271
    iget-object v0, p1, Lcom/android/server/pm/AppsFilter;->mShouldFilterCache:Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    iput-object v0, p0, Lcom/android/server/pm/AppsFilter;->mShouldFilterCache:Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    .line 272
    iget-object v0, p0, Lcom/android/server/pm/AppsFilter;->mShouldFilterCache:Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p1, Lcom/android/server/pm/AppsFilter;->mCacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 274
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/AppsFilter;->mShouldFilterCache:Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    invoke-virtual {v1}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->snapshot()Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/AppsFilter;->mShouldFilterCache:Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    .line 275
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 278
    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pm/AppsFilter;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    .line 279
    new-instance v0, Lcom/android/server/utils/SnapshotCache$Sealed;

    invoke-direct {v0}, Lcom/android/server/utils/SnapshotCache$Sealed;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/AppsFilter;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 280
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/AppsFilter;Lcom/android/server/pm/AppsFilter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/pm/AppsFilter;
    .param p2, "x1"    # Lcom/android/server/pm/AppsFilter$1;

    .line 82
    invoke-direct {p0, p1}, Lcom/android/server/pm/AppsFilter;-><init>(Lcom/android/server/pm/AppsFilter;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/pm/AppsFilter;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/AppsFilter;
    .param p1, "x1"    # Ljava/lang/String;

    .line 82
    invoke-direct {p0, p1}, Lcom/android/server/pm/AppsFilter;->updateShouldFilterCacheForPackage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/pm/AppsFilter;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/AppsFilter;

    .line 82
    invoke-direct {p0}, Lcom/android/server/pm/AppsFilter;->onChanged()V

    return-void
.end method

.method private addPackageInternal(Lcom/android/server/pm/PackageSetting;Landroid/util/ArrayMap;)Landroid/util/ArraySet;
    .locals 9
    .param p1, "newPkgSetting"    # Lcom/android/server/pm/PackageSetting;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageSetting;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageSetting;",
            ">;)",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 722
    .local p2, "existingSettings":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    const-string v1, "android"

    invoke-static {v1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 724
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v0, v0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iput-object v0, p0, Lcom/android/server/pm/AppsFilter;->mSystemSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    .line 727
    invoke-virtual {p2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageSetting;

    .line 728
    .local v1, "setting":Lcom/android/server/pm/PackageSetting;
    iget-object v2, p0, Lcom/android/server/pm/AppsFilter;->mSystemSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    invoke-static {v2, v1}, Lcom/android/server/pm/AppsFilter;->isSystemSigned(Landroid/content/pm/PackageParser$SigningDetails;Lcom/android/server/pm/PackageSetting;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 729
    iget-object v2, p0, Lcom/android/server/pm/AppsFilter;->mForceQueryable:Landroid/util/ArraySet;

    iget v3, v1, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 731
    .end local v1    # "setting":Lcom/android/server/pm/PackageSetting;
    :cond_0
    goto :goto_0

    .line 734
    :cond_1
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 735
    .local v0, "newPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-nez v0, :cond_2

    .line 736
    const/4 v1, 0x0

    return-object v1

    .line 739
    :cond_2
    iget-object v1, p0, Lcom/android/server/pm/AppsFilter;->mProtectedBroadcasts:Ljava/util/Set;

    invoke-interface {v0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getProtectedBroadcasts()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    .line 740
    iput-boolean v2, p0, Lcom/android/server/pm/AppsFilter;->mQueriesViaComponentRequireRecompute:Z

    .line 743
    :cond_3
    iget-object v1, p0, Lcom/android/server/pm/AppsFilter;->mForceQueryable:Landroid/util/ArraySet;

    iget v3, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    .line 744
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_5

    iget-boolean v1, p1, Lcom/android/server/pm/PackageSetting;->forceQueryableOverride:Z

    if-nez v1, :cond_5

    .line 747
    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/android/server/pm/AppsFilter;->mSystemAppsQueryable:Z

    if-nez v1, :cond_5

    .line 748
    invoke-interface {v0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isForceQueryable()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/server/pm/AppsFilter;->mForceQueryableByDevicePackageNames:[Ljava/lang/String;

    .line 750
    invoke-interface {v0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 749
    invoke-static {v1, v4}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_1

    :cond_4
    move v1, v3

    goto :goto_2

    :cond_5
    :goto_1
    move v1, v2

    .line 751
    .local v1, "newIsForceQueryable":Z
    :goto_2
    if-nez v1, :cond_6

    iget-object v4, p0, Lcom/android/server/pm/AppsFilter;->mSystemSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    if-eqz v4, :cond_7

    .line 753
    invoke-static {v4, p1}, Lcom/android/server/pm/AppsFilter;->isSystemSigned(Landroid/content/pm/PackageParser$SigningDetails;Lcom/android/server/pm/PackageSetting;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 754
    :cond_6
    iget-object v4, p0, Lcom/android/server/pm/AppsFilter;->mForceQueryable:Landroid/util/ArraySet;

    iget v5, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 757
    :cond_7
    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result v4

    sub-int/2addr v4, v2

    .local v4, "i":I
    :goto_3
    if-ltz v4, :cond_13

    .line 758
    invoke-virtual {p2, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    .line 759
    .local v2, "existingSetting":Lcom/android/server/pm/PackageSetting;
    iget v5, v2, Lcom/android/server/pm/PackageSetting;->appId:I

    iget v6, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    if-eq v5, v6, :cond_12

    iget-object v5, v2, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    if-nez v5, :cond_8

    .line 760
    goto/16 :goto_4

    .line 762
    :cond_8
    iget-object v5, v2, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 764
    .local v5, "existingPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-nez v1, :cond_c

    .line 765
    iget-boolean v6, p0, Lcom/android/server/pm/AppsFilter;->mQueriesViaComponentRequireRecompute:Z

    if-nez v6, :cond_9

    iget-object v6, p0, Lcom/android/server/pm/AppsFilter;->mProtectedBroadcasts:Ljava/util/Set;

    invoke-static {v5, v0, v6}, Lcom/android/server/pm/AppsFilter;->canQueryViaComponents(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/util/Set;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 767
    iget-object v6, p0, Lcom/android/server/pm/AppsFilter;->mQueriesViaComponent:Landroid/util/SparseSetArray;

    iget v7, v2, Lcom/android/server/pm/PackageSetting;->appId:I

    iget v8, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/util/SparseSetArray;->add(ILjava/lang/Object;)Z

    .line 769
    :cond_9
    invoke-static {v5, v0}, Lcom/android/server/pm/AppsFilter;->canQueryViaPackage(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v6

    if-nez v6, :cond_a

    .line 770
    invoke-static {v2, v0}, Lcom/android/server/pm/AppsFilter;->canQueryAsInstaller(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 771
    :cond_a
    iget-object v6, p0, Lcom/android/server/pm/AppsFilter;->mQueriesViaPackage:Landroid/util/SparseSetArray;

    iget v7, v2, Lcom/android/server/pm/PackageSetting;->appId:I

    iget v8, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/util/SparseSetArray;->add(ILjava/lang/Object;)Z

    .line 773
    :cond_b
    invoke-static {v5, v0}, Lcom/android/server/pm/AppsFilter;->canQueryViaUsesLibrary(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 774
    iget-object v6, p0, Lcom/android/server/pm/AppsFilter;->mQueryableViaUsesLibrary:Landroid/util/SparseSetArray;

    iget v7, v2, Lcom/android/server/pm/PackageSetting;->appId:I

    iget v8, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/util/SparseSetArray;->add(ILjava/lang/Object;)Z

    .line 778
    :cond_c
    iget-object v6, p0, Lcom/android/server/pm/AppsFilter;->mForceQueryable:Landroid/util/ArraySet;

    iget v7, v2, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_10

    .line 779
    iget-boolean v6, p0, Lcom/android/server/pm/AppsFilter;->mQueriesViaComponentRequireRecompute:Z

    if-nez v6, :cond_d

    iget-object v6, p0, Lcom/android/server/pm/AppsFilter;->mProtectedBroadcasts:Ljava/util/Set;

    invoke-static {v0, v5, v6}, Lcom/android/server/pm/AppsFilter;->canQueryViaComponents(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/util/Set;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 781
    iget-object v6, p0, Lcom/android/server/pm/AppsFilter;->mQueriesViaComponent:Landroid/util/SparseSetArray;

    iget v7, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    iget v8, v2, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/util/SparseSetArray;->add(ILjava/lang/Object;)Z

    .line 783
    :cond_d
    invoke-static {v0, v5}, Lcom/android/server/pm/AppsFilter;->canQueryViaPackage(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v6

    if-nez v6, :cond_e

    .line 784
    invoke-static {p1, v5}, Lcom/android/server/pm/AppsFilter;->canQueryAsInstaller(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 785
    :cond_e
    iget-object v6, p0, Lcom/android/server/pm/AppsFilter;->mQueriesViaPackage:Landroid/util/SparseSetArray;

    iget v7, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    iget v8, v2, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/util/SparseSetArray;->add(ILjava/lang/Object;)Z

    .line 787
    :cond_f
    invoke-static {v0, v5}, Lcom/android/server/pm/AppsFilter;->canQueryViaUsesLibrary(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 788
    iget-object v6, p0, Lcom/android/server/pm/AppsFilter;->mQueryableViaUsesLibrary:Landroid/util/SparseSetArray;

    iget v7, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    iget v8, v2, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/util/SparseSetArray;->add(ILjava/lang/Object;)Z

    .line 792
    :cond_10
    iget-object v6, p1, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    if-eqz v6, :cond_12

    iget-object v6, v2, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    if-eqz v6, :cond_12

    iget-object v6, p1, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    iget-object v7, v2, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 793
    invoke-static {v6, v7}, Lcom/android/server/pm/AppsFilter;->pkgInstruments(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v6

    if-nez v6, :cond_11

    iget-object v6, v2, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    iget-object v7, p1, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 794
    invoke-static {v6, v7}, Lcom/android/server/pm/AppsFilter;->pkgInstruments(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 795
    :cond_11
    iget-object v6, p0, Lcom/android/server/pm/AppsFilter;->mQueriesViaPackage:Landroid/util/SparseSetArray;

    iget v7, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    iget v8, v2, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/util/SparseSetArray;->add(ILjava/lang/Object;)Z

    .line 796
    iget-object v6, p0, Lcom/android/server/pm/AppsFilter;->mQueriesViaPackage:Landroid/util/SparseSetArray;

    iget v7, v2, Lcom/android/server/pm/PackageSetting;->appId:I

    iget v8, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/util/SparseSetArray;->add(ILjava/lang/Object;)Z

    .line 757
    .end local v2    # "existingSetting":Lcom/android/server/pm/PackageSetting;
    .end local v5    # "existingPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :cond_12
    :goto_4
    add-int/lit8 v4, v4, -0x1

    goto/16 :goto_3

    .line 800
    .end local v4    # "i":I
    :cond_13
    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 801
    .local v2, "existingSize":I
    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4, v2}, Landroid/util/ArrayMap;-><init>(I)V

    .line 802
    .local v4, "existingPkgs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    const/4 v5, 0x0

    .local v5, "index":I
    :goto_5
    if-ge v5, v2, :cond_15

    .line 803
    invoke-virtual {p2, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/PackageSetting;

    .line 804
    .local v6, "pkgSetting":Lcom/android/server/pm/PackageSetting;
    iget-object v7, v6, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    if-eqz v7, :cond_14

    .line 805
    iget-object v7, v6, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    iget-object v8, v6, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    invoke-virtual {v4, v7, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 802
    .end local v6    # "pkgSetting":Lcom/android/server/pm/PackageSetting;
    :cond_14
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 809
    .end local v5    # "index":I
    :cond_15
    iget-object v5, p0, Lcom/android/server/pm/AppsFilter;->mOverlayReferenceMapper:Lcom/android/server/om/OverlayReferenceMapper;

    iget-object v6, p1, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 810
    invoke-virtual {v5, v6, v4}, Lcom/android/server/om/OverlayReferenceMapper;->addPkg(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/util/Map;)Landroid/util/ArraySet;

    move-result-object v5

    .line 812
    .local v5, "changedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/android/server/pm/AppsFilter;->mFeatureConfig:Lcom/android/server/pm/AppsFilter$FeatureConfig;

    invoke-interface {v6, p1, v3}, Lcom/android/server/pm/AppsFilter$FeatureConfig;->updatePackageState(Lcom/android/server/pm/PackageSetting;Z)V

    .line 814
    return-object v5
.end method

.method private static canQueryAsInstaller(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z
    .locals 4
    .param p0, "querying"    # Lcom/android/server/pm/PackageSetting;
    .param p1, "potentialTarget"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 528
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    .line 529
    .local v0, "installSource":Lcom/android/server/pm/InstallSource;
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/pm/InstallSource;->installerPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 530
    return v2

    .line 532
    :cond_0
    iget-boolean v1, v0, Lcom/android/server/pm/InstallSource;->isInitiatingPackageUninstalled:Z

    if-nez v1, :cond_1

    .line 533
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v3, v0, Lcom/android/server/pm/InstallSource;->initiatingPackageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 534
    return v2

    .line 536
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private static canQueryViaComponents(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/util/Set;)Z
    .locals 4
    .param p0, "querying"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p1, "potentialTarget"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 506
    .local p2, "protectedBroadcasts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getQueriesIntents()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 507
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getQueriesIntents()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 508
    .local v2, "intent":Landroid/content/Intent;
    invoke-static {v2, p1, p2}, Lcom/android/server/pm/AppsFilter;->matchesPackage(Landroid/content/Intent;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/util/Set;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 509
    return v1

    .line 511
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_0
    goto :goto_0

    .line 513
    :cond_1
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getQueriesProviders()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 514
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getQueriesProviders()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/server/pm/AppsFilter;->matchesProviders(Ljava/util/Set;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 515
    return v1

    .line 517
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private static canQueryViaPackage(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z
    .locals 2
    .param p0, "querying"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p1, "potentialTarget"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 522
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getQueriesPackages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 523
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getQueriesPackages()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 522
    :goto_0
    return v0
.end method

.method private static canQueryViaUsesLibrary(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z
    .locals 6
    .param p0, "querying"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p1, "potentialTarget"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 541
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getLibraryNames()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 542
    return v1

    .line 544
    :cond_0
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getLibraryNames()Ljava/util/List;

    move-result-object v0

    .line 545
    .local v0, "libNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "size":I
    :goto_0
    if-ge v2, v3, :cond_3

    .line 546
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 547
    .local v4, "libName":Ljava/lang/String;
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUsesLibraries()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 548
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUsesOptionalLibraries()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    .line 545
    .end local v4    # "libName":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 549
    .restart local v4    # "libName":Ljava/lang/String;
    :cond_2
    :goto_1
    const/4 v1, 0x1

    return v1

    .line 552
    .end local v2    # "i":I
    .end local v3    # "size":I
    .end local v4    # "libName":Ljava/lang/String;
    :cond_3
    return v1
.end method

.method private collectProtectedBroadcasts(Landroid/util/ArrayMap;Ljava/lang/String;)Landroid/util/ArraySet;
    .locals 5
    .param p2, "excludePackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageSetting;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 962
    .local p1, "existingSettings":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 963
    .local v0, "ret":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 964
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    .line 965
    .local v2, "setting":Lcom/android/server/pm/PackageSetting;
    iget-object v3, v2, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    if-eqz v3, :cond_1

    iget-object v3, v2, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    invoke-interface {v3}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 966
    goto :goto_1

    .line 968
    :cond_0
    iget-object v3, v2, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    invoke-interface {v3}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getProtectedBroadcasts()Ljava/util/List;

    move-result-object v3

    .line 969
    .local v3, "protectedBroadcasts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 970
    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 963
    .end local v2    # "setting":Lcom/android/server/pm/PackageSetting;
    .end local v3    # "protectedBroadcasts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 973
    .end local v1    # "i":I
    :cond_2
    return-object v0
.end method

.method public static create(Landroid/content/pm/PackageManagerInternal;Lcom/android/server/pm/PackageManagerService$Injector;)Lcom/android/server/pm/AppsFilter;
    .locals 11
    .param p0, "pms"    # Landroid/content/pm/PackageManagerInternal;
    .param p1, "injector"    # Lcom/android/server/pm/PackageManagerService$Injector;

    .line 470
    nop

    .line 471
    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerService$Injector;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 472
    const v1, 0x11100eb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 473
    .local v0, "forceSystemAppsQueryable":Z
    new-instance v1, Lcom/android/server/pm/AppsFilter$FeatureConfigImpl;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/android/server/pm/AppsFilter$FeatureConfigImpl;-><init>(Landroid/content/pm/PackageManagerInternal;Lcom/android/server/pm/PackageManagerService$Injector;Lcom/android/server/pm/AppsFilter$1;)V

    .line 475
    .local v1, "featureConfig":Lcom/android/server/pm/AppsFilter$FeatureConfigImpl;
    if-eqz v0, :cond_0

    .line 477
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    move-object v9, v2

    .local v2, "forcedQueryablePackageNames":[Ljava/lang/String;
    goto :goto_1

    .line 479
    .end local v2    # "forcedQueryablePackageNames":[Ljava/lang/String;
    :cond_0
    nop

    .line 480
    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerService$Injector;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x107004d

    .line 481
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 482
    .restart local v2    # "forcedQueryablePackageNames":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_1

    .line 483
    aget-object v4, v2, v3

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 482
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move-object v9, v2

    .line 486
    .end local v2    # "forcedQueryablePackageNames":[Ljava/lang/String;
    .end local v3    # "i":I
    .local v9, "forcedQueryablePackageNames":[Ljava/lang/String;
    :goto_1
    new-instance v3, Lcom/android/server/pm/AppsFilter$$ExternalSyntheticLambda7;

    invoke-direct {v3, p1}, Lcom/android/server/pm/AppsFilter$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/pm/PackageManagerService$Injector;)V

    .line 492
    .local v3, "stateProvider":Lcom/android/server/pm/AppsFilter$StateProvider;
    new-instance v10, Lcom/android/server/pm/AppsFilter;

    const/4 v7, 0x0

    .line 494
    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerService$Injector;->getBackgroundExecutor()Ljava/util/concurrent/Executor;

    move-result-object v8

    move-object v2, v10

    move-object v4, v1

    move-object v5, v9

    move v6, v0

    invoke-direct/range {v2 .. v8}, Lcom/android/server/pm/AppsFilter;-><init>(Lcom/android/server/pm/AppsFilter$StateProvider;Lcom/android/server/pm/AppsFilter$FeatureConfig;[Ljava/lang/String;ZLcom/android/server/om/OverlayReferenceMapper$Provider;Ljava/util/concurrent/Executor;)V

    .line 495
    .local v2, "appsFilter":Lcom/android/server/pm/AppsFilter;
    invoke-virtual {v1, v2}, Lcom/android/server/pm/AppsFilter$FeatureConfigImpl;->setAppsFilter(Lcom/android/server/pm/AppsFilter;)V

    .line 496
    return-object v2
.end method

.method private static dumpPackageSet(Ljava/io/PrintWriter;Ljava/lang/Object;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/pm/AppsFilter$ToString;)V
    .locals 4
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p3, "subTitle"    # Ljava/lang/String;
    .param p4, "spacing"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/PrintWriter;",
            "TT;",
            "Ljava/util/Set<",
            "TT;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/AppsFilter$ToString<",
            "TT;>;)V"
        }
    .end annotation

    .line 1587
    .local p1, "filteringId":Ljava/lang/Object;, "TT;"
    .local p2, "targetPkgSet":Ljava/util/Set;, "Ljava/util/Set<TT;>;"
    .local p5, "toString":Lcom/android/server/pm/AppsFilter$ToString;, "Lcom/android/server/pm/AppsFilter$ToString<TT;>;"
    if-eqz p2, :cond_4

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_4

    if-eqz p1, :cond_0

    .line 1588
    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1589
    :cond_0
    invoke-virtual {p0, p4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1590
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1591
    .local v1, "item":Ljava/lang/Object;, "TT;"
    if-eqz p1, :cond_1

    invoke-static {p1, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1592
    :cond_1
    invoke-virtual {p0, p4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v2

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v2

    .line 1593
    if-nez p5, :cond_2

    move-object v3, v1

    goto :goto_1

    :cond_2
    invoke-interface {p5, v1}, Lcom/android/server/pm/AppsFilter$ToString;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1595
    .end local v1    # "item":Ljava/lang/Object;, "TT;"
    :cond_3
    goto :goto_0

    .line 1597
    :cond_4
    return-void
.end method

.method private static dumpQueriesMap(Ljava/io/PrintWriter;Ljava/lang/Integer;Landroid/util/SparseSetArray;Ljava/lang/String;Lcom/android/server/pm/AppsFilter$ToString;)V
    .locals 9
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "filteringId"    # Ljava/lang/Integer;
    .param p3, "spacing"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/Integer;",
            "Landroid/util/SparseSetArray<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/AppsFilter$ToString<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1559
    .local p2, "queriesMap":Landroid/util/SparseSetArray;, "Landroid/util/SparseSetArray<Ljava/lang/Integer;>;"
    .local p4, "toString":Lcom/android/server/pm/AppsFilter$ToString;, "Lcom/android/server/pm/AppsFilter$ToString<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p2}, Landroid/util/SparseSetArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 1560
    invoke-virtual {p2, v0}, Landroid/util/SparseSetArray;->keyAt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1561
    .local v1, "callingId":Ljava/lang/Integer;
    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1563
    const/4 v4, 0x0

    .line 1564
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/util/SparseSetArray;->get(I)Landroid/util/ArraySet;

    move-result-object v5

    .line 1565
    if-nez p4, :cond_0

    .line 1566
    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v6, v2

    goto :goto_1

    .line 1567
    :cond_0
    invoke-interface {p4, v1}, Lcom/android/server/pm/AppsFilter$ToString;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object v6, v2

    .line 1563
    :goto_1
    move-object v3, p0

    move-object v7, p3

    move-object v8, p4

    invoke-static/range {v3 .. v8}, Lcom/android/server/pm/AppsFilter;->dumpPackageSet(Ljava/io/PrintWriter;Ljava/lang/Object;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/pm/AppsFilter$ToString;)V

    goto :goto_3

    .line 1570
    :cond_1
    nop

    .line 1571
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/util/SparseSetArray;->get(I)Landroid/util/ArraySet;

    move-result-object v5

    .line 1572
    if-nez p4, :cond_2

    .line 1573
    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v6, v2

    goto :goto_2

    .line 1574
    :cond_2
    invoke-interface {p4, v1}, Lcom/android/server/pm/AppsFilter$ToString;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object v6, v2

    .line 1570
    :goto_2
    move-object v3, p0

    move-object v4, p1

    move-object v7, p3

    move-object v8, p4

    invoke-static/range {v3 .. v8}, Lcom/android/server/pm/AppsFilter;->dumpPackageSet(Ljava/io/PrintWriter;Ljava/lang/Object;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/pm/AppsFilter$ToString;)V

    .line 1559
    .end local v1    # "callingId":Ljava/lang/Integer;
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1578
    .end local v0    # "i":I
    :cond_3
    return-void
.end method

.method private static isSystemSigned(Landroid/content/pm/PackageParser$SigningDetails;Lcom/android/server/pm/PackageSetting;)Z
    .locals 1
    .param p0, "sysSigningDetails"    # Landroid/content/pm/PackageParser$SigningDetails;
    .param p1, "pkgSetting"    # Lcom/android/server/pm/PackageSetting;

    .line 956
    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v0, v0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    .line 957
    invoke-virtual {v0, p0}, Landroid/content/pm/PackageParser$SigningDetails;->signaturesMatchExactly(Landroid/content/pm/PackageParser$SigningDetails;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 956
    :goto_0
    return v0
.end method

.method static synthetic lambda$create$0(Lcom/android/server/pm/PackageManagerService$Injector;Lcom/android/server/pm/AppsFilter$StateProvider$CurrentStateCallback;)V
    .locals 3
    .param p0, "injector"    # Lcom/android/server/pm/PackageManagerService$Injector;
    .param p1, "command"    # Lcom/android/server/pm/AppsFilter$StateProvider$CurrentStateCallback;

    .line 487
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$Injector;->getLock()Lcom/android/server/pm/PackageManagerTracedLock;

    move-result-object v0

    monitor-enter v0

    .line 488
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$Injector;->getSettings()Lcom/android/server/pm/Settings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/pm/Settings;->getPackagesLocked()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/utils/WatchedArrayMap;->untrackedStorage()Landroid/util/ArrayMap;

    move-result-object v1

    .line 489
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$Injector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/pm/UserManagerInternal;->getUserInfos()[Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 488
    invoke-interface {p1, v1, v2}, Lcom/android/server/pm/AppsFilter$StateProvider$CurrentStateCallback;->currentState(Landroid/util/ArrayMap;[Landroid/content/pm/UserInfo;)V

    .line 490
    monitor-exit v0

    .line 491
    return-void

    .line 490
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static synthetic lambda$dumpQueries$9(Landroid/util/SparseArray;[ILcom/android/internal/util/function/QuadFunction;Ljava/lang/Integer;)Ljava/lang/String;
    .locals 10
    .param p0, "cache"    # Landroid/util/SparseArray;
    .param p1, "users"    # [I
    .param p2, "getPackagesForUid"    # Lcom/android/internal/util/function/QuadFunction;
    .param p3, "input"    # Ljava/lang/Integer;

    .line 1511
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1512
    .local v0, "cachedValue":Ljava/lang/String;
    if-nez v0, :cond_3

    .line 1513
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1514
    .local v1, "callingUid":I
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    .line 1515
    .local v2, "appId":I
    const/4 v3, 0x0

    .line 1516
    .local v3, "packagesForUid":[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    array-length v5, p1

    .local v5, "size":I
    :goto_0
    const/4 v6, 0x0

    if-nez v3, :cond_0

    if-ge v4, v5, :cond_0

    .line 1517
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aget v8, p1, v4

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 1518
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 1517
    invoke-interface {p2, v7, v8, v9, v6}, Lcom/android/internal/util/function/QuadFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v3, v6

    check-cast v3, [Ljava/lang/String;

    .line 1516
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1520
    .end local v4    # "i":I
    .end local v5    # "size":I
    :cond_0
    if-nez v3, :cond_1

    .line 1521
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[app id "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " not installed]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 1523
    :cond_1
    array-length v4, v3

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    aget-object v4, v3, v6

    goto :goto_1

    .line 1524
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-static {v5, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_1
    move-object v0, v4

    .line 1526
    :goto_2
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, v4, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1528
    .end local v1    # "callingUid":I
    .end local v2    # "appId":I
    .end local v3    # "packagesForUid":[Ljava/lang/String;
    :cond_3
    return-object v0
.end method

.method static synthetic lambda$updateEntireShouldFilterCacheAsync$3(Landroid/util/ArrayMap;Landroid/util/ArrayMap;[[Landroid/content/pm/UserInfo;Landroid/util/ArrayMap;[Landroid/content/pm/UserInfo;)V
    .locals 4
    .param p0, "packagesCache"    # Landroid/util/ArrayMap;
    .param p1, "settingsCopy"    # Landroid/util/ArrayMap;
    .param p2, "usersRef"    # [[Landroid/content/pm/UserInfo;
    .param p3, "settings"    # Landroid/util/ArrayMap;
    .param p4, "users"    # [Landroid/content/pm/UserInfo;

    .line 861
    invoke-virtual {p3}, Landroid/util/ArrayMap;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->ensureCapacity(I)V

    .line 862
    invoke-virtual {p1, p3}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    .line 863
    const/4 v0, 0x0

    aput-object p4, p2, v0

    .line 866
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p3}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .local v1, "max":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 867
    invoke-virtual {p3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    iget-object v2, v2, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 868
    .local v2, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    invoke-virtual {p3, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 866
    .end local v2    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 870
    .end local v0    # "i":I
    .end local v1    # "max":I
    :cond_0
    return-void
.end method

.method static synthetic lambda$updateEntireShouldFilterCacheAsync$4(Landroid/util/ArrayMap;[ZLandroid/util/ArrayMap;Landroid/util/ArrayMap;[Landroid/content/pm/UserInfo;)V
    .locals 6
    .param p0, "settingsCopy"    # Landroid/util/ArrayMap;
    .param p1, "changed"    # [Z
    .param p2, "packagesCache"    # Landroid/util/ArrayMap;
    .param p3, "settings"    # Landroid/util/ArrayMap;
    .param p4, "users"    # [Landroid/content/pm/UserInfo;

    .line 876
    invoke-virtual {p3}, Landroid/util/ArrayMap;->size()I

    move-result v0

    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_0

    .line 877
    aput-boolean v3, p1, v2

    .line 878
    return-void

    .line 880
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p3}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .local v1, "max":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 881
    invoke-virtual {p3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/PackageSetting;

    iget-object v4, v4, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 882
    .local v4, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    invoke-virtual {p3, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p2, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 883
    aput-boolean v3, p1, v2

    .line 884
    return-void

    .line 880
    .end local v4    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 887
    .end local v0    # "i":I
    .end local v1    # "max":I
    :cond_2
    return-void
.end method

.method private static log(Lcom/android/server/pm/SettingBase;Lcom/android/server/pm/PackageSetting;Ljava/lang/String;)V
    .locals 2
    .param p0, "callingSetting"    # Lcom/android/server/pm/SettingBase;
    .param p1, "targetPkgSetting"    # Lcom/android/server/pm/PackageSetting;
    .param p2, "description"    # Ljava/lang/String;

    .line 1501
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "interaction: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1502
    if-nez p0, :cond_0

    const-string v1, "system"

    goto :goto_0

    :cond_0
    move-object v1, p0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1501
    const-string v1, "AppsFilter"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1504
    return-void
.end method

.method private makeCache()Lcom/android/server/utils/SnapshotCache;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/server/utils/SnapshotCache<",
            "Lcom/android/server/pm/AppsFilter;",
            ">;"
        }
    .end annotation

    .line 171
    new-instance v0, Lcom/android/server/pm/AppsFilter$1;

    invoke-direct {v0, p0, p0, p0}, Lcom/android/server/pm/AppsFilter$1;-><init>(Lcom/android/server/pm/AppsFilter;Lcom/android/server/pm/AppsFilter;Lcom/android/server/utils/Watchable;)V

    return-object v0
.end method

.method private static matchesAnyComponents(Landroid/content/Intent;Ljava/util/List;Ljava/util/Set;)Z
    .locals 4
    .param p0, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/util/List<",
            "+",
            "Landroid/content/pm/parsing/component/ParsedMainComponent;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 599
    .local p1, "components":Ljava/util/List;, "Ljava/util/List<+Landroid/content/pm/parsing/component/ParsedMainComponent;>;"
    .local p2, "protectedBroadcasts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 600
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/parsing/component/ParsedMainComponent;

    .line 601
    .local v2, "component":Landroid/content/pm/parsing/component/ParsedMainComponent;
    invoke-virtual {v2}, Landroid/content/pm/parsing/component/ParsedMainComponent;->isExported()Z

    move-result v3

    if-nez v3, :cond_0

    .line 602
    goto :goto_1

    .line 604
    :cond_0
    invoke-static {p0, v2, p2}, Lcom/android/server/pm/AppsFilter;->matchesAnyFilter(Landroid/content/Intent;Landroid/content/pm/parsing/component/ParsedComponent;Ljava/util/Set;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 605
    return v1

    .line 599
    .end local v2    # "component":Landroid/content/pm/parsing/component/ParsedMainComponent;
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 608
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private static matchesAnyFilter(Landroid/content/Intent;Landroid/content/pm/parsing/component/ParsedComponent;Ljava/util/Set;)Z
    .locals 5
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "component"    # Landroid/content/pm/parsing/component/ParsedComponent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Landroid/content/pm/parsing/component/ParsedComponent;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 613
    .local p2, "protectedBroadcasts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/content/pm/parsing/component/ParsedComponent;->getIntents()Ljava/util/List;

    move-result-object v0

    .line 614
    .local v0, "intents":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/parsing/component/ParsedIntentInfo;>;"
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 615
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/IntentFilter;

    .line 616
    .local v3, "intentFilter":Landroid/content/IntentFilter;
    invoke-static {p0, v3, p2}, Lcom/android/server/pm/AppsFilter;->matchesIntentFilter(Landroid/content/Intent;Landroid/content/IntentFilter;Ljava/util/Set;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 617
    return v2

    .line 614
    .end local v3    # "intentFilter":Landroid/content/IntentFilter;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 620
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private static matchesIntentFilter(Landroid/content/Intent;Landroid/content/IntentFilter;Ljava/util/Set;)Z
    .locals 9
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "intentFilter"    # Landroid/content/IntentFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Landroid/content/IntentFilter;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 625
    .local p2, "protectedBroadcasts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v3

    .line 626
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {p0}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v5

    .line 625
    const-string v6, "AppsFilter"

    const/4 v7, 0x1

    move-object v0, p1

    move-object v8, p2

    invoke-virtual/range {v0 .. v8}, Landroid/content/IntentFilter;->match(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Set;Ljava/lang/String;ZLjava/util/Collection;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static matchesPackage(Landroid/content/Intent;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/util/Set;)Z
    .locals 3
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "potentialTarget"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 578
    .local p2, "protectedBroadcasts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    nop

    .line 579
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getServices()Ljava/util/List;

    move-result-object v0

    .line 578
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/server/pm/AppsFilter;->matchesAnyComponents(Landroid/content/Intent;Ljava/util/List;Ljava/util/Set;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 580
    return v2

    .line 582
    :cond_0
    nop

    .line 583
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getActivities()Ljava/util/List;

    move-result-object v0

    .line 582
    invoke-static {p0, v0, v1}, Lcom/android/server/pm/AppsFilter;->matchesAnyComponents(Landroid/content/Intent;Ljava/util/List;Ljava/util/Set;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 584
    return v2

    .line 586
    :cond_1
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getReceivers()Ljava/util/List;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/android/server/pm/AppsFilter;->matchesAnyComponents(Landroid/content/Intent;Ljava/util/List;Ljava/util/Set;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 587
    return v2

    .line 589
    :cond_2
    nop

    .line 590
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getProviders()Ljava/util/List;

    move-result-object v0

    .line 589
    invoke-static {p0, v0, v1}, Lcom/android/server/pm/AppsFilter;->matchesAnyComponents(Landroid/content/Intent;Ljava/util/List;Ljava/util/Set;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 591
    return v2

    .line 593
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method private static matchesProviders(Ljava/util/Set;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z
    .locals 7
    .param p1, "potentialTarget"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            ")Z"
        }
    .end annotation

    .line 557
    .local p0, "queriesAuthorities":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getProviders()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "p":I
    :goto_0
    const/4 v2, 0x0

    if-ltz v0, :cond_4

    .line 558
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getProviders()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/parsing/component/ParsedProvider;

    .line 559
    .local v3, "provider":Landroid/content/pm/parsing/component/ParsedProvider;
    invoke-virtual {v3}, Landroid/content/pm/parsing/component/ParsedProvider;->isExported()Z

    move-result v4

    if-nez v4, :cond_0

    .line 560
    goto :goto_1

    .line 562
    :cond_0
    invoke-virtual {v3}, Landroid/content/pm/parsing/component/ParsedProvider;->getAuthority()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    .line 563
    goto :goto_1

    .line 565
    :cond_1
    new-instance v4, Ljava/util/StringTokenizer;

    invoke-virtual {v3}, Landroid/content/pm/parsing/component/ParsedProvider;->getAuthority()Ljava/lang/String;

    move-result-object v5

    const-string v6, ";"

    invoke-direct {v4, v5, v6, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    move-object v2, v4

    .line 567
    .local v2, "authorities":Ljava/util/StringTokenizer;
    :cond_2
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 568
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 569
    return v1

    .line 557
    .end local v2    # "authorities":Ljava/util/StringTokenizer;
    .end local v3    # "provider":Landroid/content/pm/parsing/component/ParsedProvider;
    :cond_3
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 573
    .end local v0    # "p":I
    :cond_4
    return v2
.end method

.method private onChanged()V
    .locals 0

    .line 232
    invoke-virtual {p0, p0}, Lcom/android/server/pm/AppsFilter;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    .line 233
    return-void
.end method

.method private static pkgInstruments(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z
    .locals 5
    .param p0, "source"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p1, "target"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 1484
    :try_start_0
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1485
    .local v0, "packageName":Ljava/lang/String;
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getInstrumentations()Ljava/util/List;

    move-result-object v1

    .line 1486
    .local v1, "inst":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/parsing/component/ParsedInstrumentation;>;"
    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 1487
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/parsing/component/ParsedInstrumentation;

    invoke-virtual {v4}, Landroid/content/pm/parsing/component/ParsedInstrumentation;->getTargetPackage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_0

    .line 1488
    return v3

    .line 1486
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1491
    .end local v2    # "i":I
    :cond_1
    const/4 v2, 0x0

    return v2

    .line 1493
    .end local v0    # "packageName":Ljava/lang/String;
    .end local v1    # "inst":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/parsing/component/ParsedInstrumentation;>;"
    :catchall_0
    move-exception v0

    .line 1496
    throw v0
.end method

.method private recomputeComponentVisibility(Landroid/util/ArrayMap;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageSetting;",
            ">;)V"
        }
    .end annotation

    .line 982
    .local p1, "existingSettings":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    iget-object v0, p0, Lcom/android/server/pm/AppsFilter;->mQueriesViaComponent:Landroid/util/SparseSetArray;

    invoke-virtual {v0}, Landroid/util/SparseSetArray;->clear()V

    .line 983
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_5

    .line 984
    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageSetting;

    .line 985
    .local v1, "setting":Lcom/android/server/pm/PackageSetting;
    iget-object v2, v1, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    if-eqz v2, :cond_4

    iget-object v2, v1, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    invoke-static {v2}, Lcom/android/server/pm/AppsFilter;->requestsQueryAllPackages(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 986
    goto :goto_3

    .line 988
    :cond_0
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "j":I
    :goto_1
    if-ltz v2, :cond_4

    .line 989
    if-ne v0, v2, :cond_1

    .line 990
    goto :goto_2

    .line 992
    :cond_1
    invoke-virtual {p1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    .line 993
    .local v3, "otherSetting":Lcom/android/server/pm/PackageSetting;
    iget-object v4, v3, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/server/pm/AppsFilter;->mForceQueryable:Landroid/util/ArraySet;

    iget v5, v3, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 994
    goto :goto_2

    .line 996
    :cond_2
    iget-object v4, v1, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    iget-object v5, v3, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    iget-object v6, p0, Lcom/android/server/pm/AppsFilter;->mProtectedBroadcasts:Ljava/util/Set;

    invoke-static {v4, v5, v6}, Lcom/android/server/pm/AppsFilter;->canQueryViaComponents(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/util/Set;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 997
    iget-object v4, p0, Lcom/android/server/pm/AppsFilter;->mQueriesViaComponent:Landroid/util/SparseSetArray;

    iget v5, v1, Lcom/android/server/pm/PackageSetting;->appId:I

    iget v6, v3, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseSetArray;->add(ILjava/lang/Object;)Z

    .line 988
    .end local v3    # "otherSetting":Lcom/android/server/pm/PackageSetting;
    :cond_3
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 983
    .end local v1    # "setting":Lcom/android/server/pm/PackageSetting;
    .end local v2    # "j":I
    :cond_4
    :goto_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1001
    .end local v0    # "i":I
    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/pm/AppsFilter;->mQueriesViaComponentRequireRecompute:Z

    .line 1002
    return-void
.end method

.method private removeAppIdFromVisibilityCache(I)V
    .locals 2
    .param p1, "appId"    # I

    .line 819
    iget-object v0, p0, Lcom/android/server/pm/AppsFilter;->mShouldFilterCache:Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    if-nez v0, :cond_0

    .line 820
    return-void

    .line 822
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/pm/AppsFilter;->mShouldFilterCache:Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    invoke-virtual {v1}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 823
    iget-object v1, p0, Lcom/android/server/pm/AppsFilter;->mShouldFilterCache:Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    invoke-virtual {v1, v0}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->keyAt(I)I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    if-ne v1, p1, :cond_1

    .line 824
    iget-object v1, p0, Lcom/android/server/pm/AppsFilter;->mShouldFilterCache:Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    invoke-virtual {v1, v0}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->removeAt(I)V

    .line 829
    add-int/lit8 v0, v0, -0x1

    .line 822
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 832
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method private static requestsQueryAllPackages(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z
    .locals 2
    .param p0, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 1473
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v0

    const-string v1, "android.permission.QUERY_ALL_PACKAGES"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private shouldFilterApplicationInternal(ILcom/android/server/pm/SettingBase;Lcom/android/server/pm/PackageSetting;I)Z
    .locals 16
    .param p1, "callingUid"    # I
    .param p2, "callingSetting"    # Lcom/android/server/pm/SettingBase;
    .param p3, "targetPkgSetting"    # Lcom/android/server/pm/PackageSetting;
    .param p4, "targetUserId"    # I

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    .line 1237
    :try_start_0
    iget-object v0, v1, Lcom/android/server/pm/AppsFilter;->mFeatureConfig:Lcom/android/server/pm/AppsFilter$FeatureConfig;

    invoke-interface {v0}, Lcom/android/server/pm/AppsFilter$FeatureConfig;->isGloballyEnabled()Z

    move-result v0

    move v5, v0

    .line 1238
    .local v5, "featureEnabled":Z
    const/4 v0, 0x0

    if-nez v5, :cond_0

    .line 1242
    return v0

    .line 1244
    :cond_0
    const/4 v6, 0x1

    if-nez v3, :cond_1

    .line 1245
    const-string v0, "AppsFilter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "No setting found for non system uid "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1246
    return v6

    .line 1253
    :cond_1
    instance-of v7, v3, Lcom/android/server/pm/PackageSetting;

    if-eqz v7, :cond_3

    .line 1254
    move-object v7, v3

    check-cast v7, Lcom/android/server/pm/PackageSetting;

    iget-object v7, v7, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-nez v7, :cond_2

    .line 1255
    move-object v7, v3

    check-cast v7, Lcom/android/server/pm/PackageSetting;

    .line 1256
    .local v7, "callingPkgSetting":Lcom/android/server/pm/PackageSetting;
    const/4 v8, 0x0

    .local v8, "callingSharedPkgSettings":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/pm/PackageSetting;>;"
    goto :goto_0

    .line 1258
    .end local v7    # "callingPkgSetting":Lcom/android/server/pm/PackageSetting;
    .end local v8    # "callingSharedPkgSettings":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/pm/PackageSetting;>;"
    :cond_2
    const/4 v7, 0x0

    .line 1259
    .restart local v7    # "callingPkgSetting":Lcom/android/server/pm/PackageSetting;
    move-object v8, v3

    check-cast v8, Lcom/android/server/pm/PackageSetting;

    iget-object v8, v8, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iget-object v8, v8, Lcom/android/server/pm/SharedUserSetting;->packages:Landroid/util/ArraySet;

    .restart local v8    # "callingSharedPkgSettings":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/pm/PackageSetting;>;"
    goto :goto_0

    .line 1263
    .end local v7    # "callingPkgSetting":Lcom/android/server/pm/PackageSetting;
    .end local v8    # "callingSharedPkgSettings":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/pm/PackageSetting;>;"
    :cond_3
    const/4 v7, 0x0

    .line 1264
    .restart local v7    # "callingPkgSetting":Lcom/android/server/pm/PackageSetting;
    move-object v8, v3

    check-cast v8, Lcom/android/server/pm/SharedUserSetting;

    iget-object v8, v8, Lcom/android/server/pm/SharedUserSetting;->packages:Landroid/util/ArraySet;

    .line 1270
    .restart local v8    # "callingSharedPkgSettings":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/pm/PackageSetting;>;"
    :goto_0
    if-eqz v7, :cond_4

    .line 1271
    iget-object v9, v7, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    if-eqz v9, :cond_6

    iget-object v9, v1, Lcom/android/server/pm/AppsFilter;->mFeatureConfig:Lcom/android/server/pm/AppsFilter$FeatureConfig;

    iget-object v10, v7, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 1272
    invoke-interface {v9, v10}, Lcom/android/server/pm/AppsFilter$FeatureConfig;->packageIsEnabled(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 1276
    return v0

    .line 1279
    :cond_4
    invoke-virtual {v8}, Landroid/util/ArraySet;->size()I

    move-result v9

    sub-int/2addr v9, v6

    .local v9, "i":I
    :goto_1
    if-ltz v9, :cond_6

    .line 1280
    invoke-virtual {v8, v9}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/pm/PackageSetting;

    iget-object v10, v10, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 1281
    .local v10, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-eqz v10, :cond_5

    iget-object v11, v1, Lcom/android/server/pm/AppsFilter;->mFeatureConfig:Lcom/android/server/pm/AppsFilter$FeatureConfig;

    invoke-interface {v11, v10}, Lcom/android/server/pm/AppsFilter$FeatureConfig;->packageIsEnabled(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v11

    if-nez v11, :cond_5

    .line 1285
    return v0

    .line 1279
    .end local v10    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :cond_5
    add-int/lit8 v9, v9, -0x1

    goto :goto_1

    .line 1292
    .end local v9    # "i":I
    :cond_6
    iget-object v9, v4, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 1293
    .local v9, "targetPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-nez v9, :cond_7

    .line 1297
    return v6

    .line 1299
    :cond_7
    invoke-interface {v9}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isStaticSharedLibrary()Z

    move-result v10

    if-eqz v10, :cond_8

    .line 1301
    return v0

    .line 1303
    :cond_8
    invoke-interface {v9}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v10

    .line 1308
    .local v10, "targetName":Ljava/lang/String;
    if-eqz v7, :cond_9

    .line 1309
    iget v11, v7, Lcom/android/server/pm/PackageSetting;->appId:I

    .local v11, "callingAppId":I
    goto :goto_2

    .line 1311
    .end local v11    # "callingAppId":I
    :cond_9
    invoke-virtual {v8, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/pm/PackageSetting;

    iget v11, v11, Lcom/android/server/pm/PackageSetting;->appId:I

    .line 1313
    .restart local v11    # "callingAppId":I
    :goto_2
    iget v12, v4, Lcom/android/server/pm/PackageSetting;->appId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_8

    .line 1317
    .local v12, "targetAppId":I
    if-ne v11, v12, :cond_a

    .line 1321
    return v0

    .line 1328
    :cond_a
    if-eqz v7, :cond_b

    .line 1329
    :try_start_1
    iget-object v13, v7, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    if-eqz v13, :cond_d

    iget-object v13, v7, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 1330
    invoke-static {v13}, Lcom/android/server/pm/AppsFilter;->requestsQueryAllPackages(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v13

    if-eqz v13, :cond_d

    .line 1331
    return v0

    .line 1334
    :cond_b
    invoke-virtual {v8}, Landroid/util/ArraySet;->size()I

    move-result v13

    sub-int/2addr v13, v6

    .local v13, "i":I
    :goto_3
    if-ltz v13, :cond_d

    .line 1335
    invoke-virtual {v8, v13}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/pm/PackageSetting;

    iget-object v14, v14, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 1336
    .local v14, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-eqz v14, :cond_c

    invoke-static {v14}, Lcom/android/server/pm/AppsFilter;->requestsQueryAllPackages(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    if-eqz v15, :cond_c

    .line 1337
    return v0

    .line 1334
    .end local v14    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :cond_c
    add-int/lit8 v13, v13, -0x1

    goto :goto_3

    .line 1345
    .end local v13    # "i":I
    :cond_d
    nop

    .line 1350
    :try_start_2
    iget-object v13, v1, Lcom/android/server/pm/AppsFilter;->mForceQueryable:Landroid/util/ArraySet;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    if-eqz v13, :cond_e

    .line 1354
    return v0

    .line 1360
    :cond_e
    nop

    .line 1365
    :try_start_3
    iget-object v13, v1, Lcom/android/server/pm/AppsFilter;->mQueriesViaPackage:Landroid/util/SparseSetArray;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v11, v14}, Landroid/util/SparseSetArray;->contains(ILjava/lang/Object;)Z

    move-result v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    if-eqz v13, :cond_f

    .line 1369
    return v0

    .line 1375
    :cond_f
    nop

    .line 1380
    :try_start_4
    iget-boolean v13, v1, Lcom/android/server/pm/AppsFilter;->mQueriesViaComponentRequireRecompute:Z

    if-eqz v13, :cond_10

    .line 1381
    iget-object v13, v1, Lcom/android/server/pm/AppsFilter;->mStateProvider:Lcom/android/server/pm/AppsFilter$StateProvider;

    new-instance v14, Lcom/android/server/pm/AppsFilter$$ExternalSyntheticLambda2;

    invoke-direct {v14, v1}, Lcom/android/server/pm/AppsFilter$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/pm/AppsFilter;)V

    invoke-interface {v13, v14}, Lcom/android/server/pm/AppsFilter$StateProvider;->runWithState(Lcom/android/server/pm/AppsFilter$StateProvider$CurrentStateCallback;)V

    .line 1385
    :cond_10
    iget-object v13, v1, Lcom/android/server/pm/AppsFilter;->mQueriesViaComponent:Landroid/util/SparseSetArray;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v11, v14}, Landroid/util/SparseSetArray;->contains(ILjava/lang/Object;)Z

    move-result v13
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-eqz v13, :cond_11

    .line 1389
    return v0

    .line 1395
    :cond_11
    nop

    .line 1401
    move/from16 v13, p4

    :try_start_5
    invoke-static {v13, v12}, Landroid/os/UserHandle;->getUid(II)I

    move-result v14

    .line 1402
    .local v14, "targetUid":I
    iget-object v15, v1, Lcom/android/server/pm/AppsFilter;->mImplicitlyQueryable:Landroid/util/SparseSetArray;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v15, v2, v6}, Landroid/util/SparseSetArray;->contains(ILjava/lang/Object;)Z

    move-result v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v6, :cond_12

    .line 1406
    return v0

    .line 1412
    .end local v14    # "targetUid":I
    :cond_12
    nop

    .line 1418
    if-eqz v8, :cond_15

    .line 1419
    :try_start_6
    invoke-virtual {v8}, Landroid/util/ArraySet;->size()I

    move-result v6

    .line 1420
    .local v6, "size":I
    const/4 v14, 0x0

    .local v14, "index":I
    :goto_4
    if-ge v14, v6, :cond_14

    .line 1421
    invoke-virtual {v8, v14}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/pm/PackageSetting;

    .line 1422
    .local v15, "pkgSetting":Lcom/android/server/pm/PackageSetting;
    iget-object v0, v1, Lcom/android/server/pm/AppsFilter;->mOverlayReferenceMapper:Lcom/android/server/om/OverlayReferenceMapper;

    iget-object v2, v15, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v0, v10, v2}, Lcom/android/server/om/OverlayReferenceMapper;->isValidActor(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1428
    const/4 v0, 0x0

    return v0

    .line 1420
    .end local v15    # "pkgSetting":Lcom/android/server/pm/PackageSetting;
    :cond_13
    add-int/lit8 v14, v14, 0x1

    move/from16 v2, p1

    const/4 v0, 0x0

    goto :goto_4

    .line 1431
    .end local v6    # "size":I
    .end local v14    # "index":I
    :cond_14
    goto :goto_5

    .line 1432
    :cond_15
    iget-object v0, v1, Lcom/android/server/pm/AppsFilter;->mOverlayReferenceMapper:Lcom/android/server/om/OverlayReferenceMapper;

    iget-object v2, v7, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v0, v10, v2}, Lcom/android/server/om/OverlayReferenceMapper;->isValidActor(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v0, :cond_16

    .line 1436
    const/4 v0, 0x0

    return v0

    .line 1443
    :cond_16
    :goto_5
    nop

    .line 1449
    :try_start_7
    iget-object v0, v1, Lcom/android/server/pm/AppsFilter;->mQueryableViaUsesLibrary:Landroid/util/SparseSetArray;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v11, v2}, Landroid/util/SparseSetArray;->contains(ILjava/lang/Object;)Z

    move-result v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v0, :cond_17

    .line 1453
    const/4 v0, 0x0

    return v0

    .line 1459
    :cond_17
    nop

    .line 1461
    const/4 v0, 0x1

    return v0

    .line 1456
    :catchall_0
    move-exception v0

    .line 1459
    nop

    .end local p0    # "this":Lcom/android/server/pm/AppsFilter;
    .end local p1    # "callingUid":I
    .end local p2    # "callingSetting":Lcom/android/server/pm/SettingBase;
    .end local p3    # "targetPkgSetting":Lcom/android/server/pm/PackageSetting;
    .end local p4    # "targetUserId":I
    :try_start_8
    throw v0

    .line 1440
    .restart local p0    # "this":Lcom/android/server/pm/AppsFilter;
    .restart local p1    # "callingUid":I
    .restart local p2    # "callingSetting":Lcom/android/server/pm/SettingBase;
    .restart local p3    # "targetPkgSetting":Lcom/android/server/pm/PackageSetting;
    .restart local p4    # "targetUserId":I
    :catchall_1
    move-exception v0

    .line 1443
    nop

    .end local p0    # "this":Lcom/android/server/pm/AppsFilter;
    .end local p1    # "callingUid":I
    .end local p2    # "callingSetting":Lcom/android/server/pm/SettingBase;
    .end local p3    # "targetPkgSetting":Lcom/android/server/pm/PackageSetting;
    .end local p4    # "targetUserId":I
    throw v0

    .line 1409
    .restart local p0    # "this":Lcom/android/server/pm/AppsFilter;
    .restart local p1    # "callingUid":I
    .restart local p2    # "callingSetting":Lcom/android/server/pm/SettingBase;
    .restart local p3    # "targetPkgSetting":Lcom/android/server/pm/PackageSetting;
    .restart local p4    # "targetUserId":I
    :catchall_2
    move-exception v0

    .line 1412
    nop

    .end local p0    # "this":Lcom/android/server/pm/AppsFilter;
    .end local p1    # "callingUid":I
    .end local p2    # "callingSetting":Lcom/android/server/pm/SettingBase;
    .end local p3    # "targetPkgSetting":Lcom/android/server/pm/PackageSetting;
    .end local p4    # "targetUserId":I
    throw v0

    .line 1392
    .restart local p0    # "this":Lcom/android/server/pm/AppsFilter;
    .restart local p1    # "callingUid":I
    .restart local p2    # "callingSetting":Lcom/android/server/pm/SettingBase;
    .restart local p3    # "targetPkgSetting":Lcom/android/server/pm/PackageSetting;
    .restart local p4    # "targetUserId":I
    :catchall_3
    move-exception v0

    move/from16 v13, p4

    .line 1395
    nop

    .end local p0    # "this":Lcom/android/server/pm/AppsFilter;
    .end local p1    # "callingUid":I
    .end local p2    # "callingSetting":Lcom/android/server/pm/SettingBase;
    .end local p3    # "targetPkgSetting":Lcom/android/server/pm/PackageSetting;
    .end local p4    # "targetUserId":I
    throw v0

    .line 1372
    .restart local p0    # "this":Lcom/android/server/pm/AppsFilter;
    .restart local p1    # "callingUid":I
    .restart local p2    # "callingSetting":Lcom/android/server/pm/SettingBase;
    .restart local p3    # "targetPkgSetting":Lcom/android/server/pm/PackageSetting;
    .restart local p4    # "targetUserId":I
    :catchall_4
    move-exception v0

    move/from16 v13, p4

    .line 1375
    nop

    .end local p0    # "this":Lcom/android/server/pm/AppsFilter;
    .end local p1    # "callingUid":I
    .end local p2    # "callingSetting":Lcom/android/server/pm/SettingBase;
    .end local p3    # "targetPkgSetting":Lcom/android/server/pm/PackageSetting;
    .end local p4    # "targetUserId":I
    throw v0

    .line 1357
    .restart local p0    # "this":Lcom/android/server/pm/AppsFilter;
    .restart local p1    # "callingUid":I
    .restart local p2    # "callingSetting":Lcom/android/server/pm/SettingBase;
    .restart local p3    # "targetPkgSetting":Lcom/android/server/pm/PackageSetting;
    .restart local p4    # "targetUserId":I
    :catchall_5
    move-exception v0

    move/from16 v13, p4

    .line 1360
    nop

    .end local p0    # "this":Lcom/android/server/pm/AppsFilter;
    .end local p1    # "callingUid":I
    .end local p2    # "callingSetting":Lcom/android/server/pm/SettingBase;
    .end local p3    # "targetPkgSetting":Lcom/android/server/pm/PackageSetting;
    .end local p4    # "targetUserId":I
    throw v0

    .line 1342
    .restart local p0    # "this":Lcom/android/server/pm/AppsFilter;
    .restart local p1    # "callingUid":I
    .restart local p2    # "callingSetting":Lcom/android/server/pm/SettingBase;
    .restart local p3    # "targetPkgSetting":Lcom/android/server/pm/PackageSetting;
    .restart local p4    # "targetUserId":I
    :catchall_6
    move-exception v0

    move/from16 v13, p4

    .line 1345
    nop

    .end local p0    # "this":Lcom/android/server/pm/AppsFilter;
    .end local p1    # "callingUid":I
    .end local p2    # "callingSetting":Lcom/android/server/pm/SettingBase;
    .end local p3    # "targetPkgSetting":Lcom/android/server/pm/PackageSetting;
    .end local p4    # "targetUserId":I
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_7

    .line 1463
    .end local v5    # "featureEnabled":Z
    .end local v7    # "callingPkgSetting":Lcom/android/server/pm/PackageSetting;
    .end local v8    # "callingSharedPkgSettings":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/pm/PackageSetting;>;"
    .end local v9    # "targetPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local v10    # "targetName":Ljava/lang/String;
    .end local v11    # "callingAppId":I
    .end local v12    # "targetAppId":I
    .restart local p0    # "this":Lcom/android/server/pm/AppsFilter;
    .restart local p1    # "callingUid":I
    .restart local p2    # "callingSetting":Lcom/android/server/pm/SettingBase;
    .restart local p3    # "targetPkgSetting":Lcom/android/server/pm/PackageSetting;
    .restart local p4    # "targetUserId":I
    :catchall_7
    move-exception v0

    goto :goto_6

    :catchall_8
    move-exception v0

    move/from16 v13, p4

    .line 1466
    :goto_6
    throw v0
.end method

.method private updateEntireShouldFilterCache()V
    .locals 2

    .line 835
    iget-object v0, p0, Lcom/android/server/pm/AppsFilter;->mStateProvider:Lcom/android/server/pm/AppsFilter$StateProvider;

    new-instance v1, Lcom/android/server/pm/AppsFilter$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/android/server/pm/AppsFilter$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/pm/AppsFilter;)V

    invoke-interface {v0, v1}, Lcom/android/server/pm/AppsFilter$StateProvider;->runWithState(Lcom/android/server/pm/AppsFilter$StateProvider$CurrentStateCallback;)V

    .line 842
    return-void
.end method

.method private updateEntireShouldFilterCacheAsync()V
    .locals 2

    .line 856
    iget-object v0, p0, Lcom/android/server/pm/AppsFilter;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/server/pm/AppsFilter$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0}, Lcom/android/server/pm/AppsFilter$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/pm/AppsFilter;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 900
    return-void
.end method

.method private updateEntireShouldFilterCacheInner(Landroid/util/ArrayMap;[Landroid/content/pm/UserInfo;)Lcom/android/server/utils/WatchedSparseBooleanMatrix;
    .locals 9
    .param p2, "users"    # [Landroid/content/pm/UserInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageSetting;",
            ">;[",
            "Landroid/content/pm/UserInfo;",
            ")",
            "Lcom/android/server/utils/WatchedSparseBooleanMatrix;"
        }
    .end annotation

    .line 846
    .local p1, "settings":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    new-instance v0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    array-length v1, p2

    .line 847
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v2

    mul-int/2addr v1, v2

    invoke-direct {v0, v1}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;-><init>(I)V

    .line 848
    .local v0, "cache":Lcom/android/server/utils/WatchedSparseBooleanMatrix;
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 849
    const/4 v4, 0x0

    .line 850
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/android/server/pm/PackageSetting;

    .line 849
    move-object v2, p0

    move-object v3, v0

    move-object v6, p1

    move-object v7, p2

    move v8, v1

    invoke-direct/range {v2 .. v8}, Lcom/android/server/pm/AppsFilter;->updateShouldFilterCacheForPackage(Lcom/android/server/utils/WatchedSparseBooleanMatrix;Ljava/lang/String;Lcom/android/server/pm/PackageSetting;Landroid/util/ArrayMap;[Landroid/content/pm/UserInfo;I)V

    .line 848
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 852
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method private updateShouldFilterCacheForPackage(Lcom/android/server/utils/WatchedSparseBooleanMatrix;Ljava/lang/String;Lcom/android/server/pm/PackageSetting;Landroid/util/ArrayMap;[Landroid/content/pm/UserInfo;I)V
    .locals 16
    .param p1, "cache"    # Lcom/android/server/utils/WatchedSparseBooleanMatrix;
    .param p2, "skipPackageName"    # Ljava/lang/String;
    .param p3, "subjectSetting"    # Lcom/android/server/pm/PackageSetting;
    .param p5, "allUsers"    # [Landroid/content/pm/UserInfo;
    .param p6, "maxIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/utils/WatchedSparseBooleanMatrix;",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageSetting;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageSetting;",
            ">;[",
            "Landroid/content/pm/UserInfo;",
            "I)V"
        }
    .end annotation

    .line 926
    .local p4, "allSettings":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p5

    invoke-virtual/range {p4 .. p4}, Landroid/util/ArrayMap;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    move/from16 v6, p6

    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .local v5, "i":I
    :goto_0
    if-ltz v5, :cond_4

    .line 927
    move-object/from16 v7, p4

    invoke-virtual {v7, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/pm/PackageSetting;

    .line 928
    .local v8, "otherSetting":Lcom/android/server/pm/PackageSetting;
    iget v9, v3, Lcom/android/server/pm/PackageSetting;->appId:I

    iget v10, v8, Lcom/android/server/pm/PackageSetting;->appId:I

    if-ne v9, v10, :cond_0

    .line 929
    goto :goto_3

    .line 932
    :cond_0
    iget-object v9, v3, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    if-eq v9, v2, :cond_3

    iget-object v9, v8, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    if-ne v9, v2, :cond_1

    .line 933
    goto :goto_3

    .line 935
    :cond_1
    array-length v9, v4

    .line 936
    .local v9, "userCount":I
    invoke-virtual/range {p4 .. p4}, Landroid/util/ArrayMap;->size()I

    move-result v10

    mul-int/2addr v10, v9

    .line 937
    .local v10, "appxUidCount":I
    const/4 v11, 0x0

    .local v11, "su":I
    :goto_1
    if-ge v11, v9, :cond_3

    .line 938
    aget-object v12, v4, v11

    iget v12, v12, Landroid/content/pm/UserInfo;->id:I

    .line 939
    .local v12, "subjectUser":I
    const/4 v13, 0x0

    .local v13, "ou":I
    :goto_2
    if-ge v13, v9, :cond_2

    .line 940
    aget-object v14, v4, v13

    iget v14, v14, Landroid/content/pm/UserInfo;->id:I

    .line 941
    .local v14, "otherUser":I
    iget v15, v3, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-static {v12, v15}, Landroid/os/UserHandle;->getUid(II)I

    move-result v15

    .line 942
    .local v15, "subjectUid":I
    iget v2, v8, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-static {v14, v2}, Landroid/os/UserHandle;->getUid(II)I

    move-result v2

    .line 943
    .local v2, "otherUid":I
    nop

    .line 944
    invoke-direct {v0, v15, v3, v8, v14}, Lcom/android/server/pm/AppsFilter;->shouldFilterApplicationInternal(ILcom/android/server/pm/SettingBase;Lcom/android/server/pm/PackageSetting;I)Z

    move-result v4

    .line 943
    invoke-virtual {v1, v15, v2, v4}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->put(IIZ)V

    .line 946
    nop

    .line 947
    invoke-direct {v0, v2, v8, v3, v12}, Lcom/android/server/pm/AppsFilter;->shouldFilterApplicationInternal(ILcom/android/server/pm/SettingBase;Lcom/android/server/pm/PackageSetting;I)Z

    move-result v4

    .line 946
    invoke-virtual {v1, v2, v15, v4}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->put(IIZ)V

    .line 939
    .end local v2    # "otherUid":I
    .end local v14    # "otherUser":I
    .end local v15    # "subjectUid":I
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v2, p2

    move-object/from16 v4, p5

    goto :goto_2

    .line 937
    .end local v12    # "subjectUser":I
    .end local v13    # "ou":I
    :cond_2
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v2, p2

    move-object/from16 v4, p5

    goto :goto_1

    .line 926
    .end local v8    # "otherSetting":Lcom/android/server/pm/PackageSetting;
    .end local v9    # "userCount":I
    .end local v10    # "appxUidCount":I
    .end local v11    # "su":I
    :cond_3
    :goto_3
    add-int/lit8 v5, v5, -0x1

    move-object/from16 v2, p2

    move-object/from16 v4, p5

    goto :goto_0

    :cond_4
    move-object/from16 v7, p4

    .line 952
    .end local v5    # "i":I
    return-void
.end method

.method private updateShouldFilterCacheForPackage(Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 912
    iget-object v0, p0, Lcom/android/server/pm/AppsFilter;->mCacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 913
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/AppsFilter;->mShouldFilterCache:Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    if-eqz v1, :cond_0

    .line 914
    iget-object v1, p0, Lcom/android/server/pm/AppsFilter;->mStateProvider:Lcom/android/server/pm/AppsFilter$StateProvider;

    new-instance v2, Lcom/android/server/pm/AppsFilter$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0, p1}, Lcom/android/server/pm/AppsFilter$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/pm/AppsFilter;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/android/server/pm/AppsFilter$StateProvider;->runWithState(Lcom/android/server/pm/AppsFilter$StateProvider$CurrentStateCallback;)V

    .line 920
    :cond_0
    monitor-exit v0

    .line 921
    return-void

    .line 920
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public addPackage(Lcom/android/server/pm/PackageSetting;)V
    .locals 1
    .param p1, "newPkgSetting"    # Lcom/android/server/pm/PackageSetting;

    .line 1074
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/AppsFilter;->addPackage(Lcom/android/server/pm/PackageSetting;Z)V

    .line 1075
    return-void
.end method

.method public addPackage(Lcom/android/server/pm/PackageSetting;Z)V
    .locals 2
    .param p1, "newPkgSetting"    # Lcom/android/server/pm/PackageSetting;
    .param p2, "isReplace"    # Z

    .line 678
    if-eqz p2, :cond_0

    .line 680
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/AppsFilter;->removePackage(Lcom/android/server/pm/PackageSetting;)V

    .line 682
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/AppsFilter;->mStateProvider:Lcom/android/server/pm/AppsFilter$StateProvider;

    new-instance v1, Lcom/android/server/pm/AppsFilter$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lcom/android/server/pm/AppsFilter$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/pm/AppsFilter;Lcom/android/server/pm/PackageSetting;)V

    invoke-interface {v0, v1}, Lcom/android/server/pm/AppsFilter$StateProvider;->runWithState(Lcom/android/server/pm/AppsFilter$StateProvider$CurrentStateCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 708
    invoke-direct {p0}, Lcom/android/server/pm/AppsFilter;->onChanged()V

    .line 712
    nop

    .line 713
    return-void

    .line 708
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/android/server/pm/AppsFilter;->onChanged()V

    .line 712
    throw v0
.end method

.method public dispatchChange(Lcom/android/server/utils/Watchable;)V
    .locals 1
    .param p1, "what"    # Lcom/android/server/utils/Watchable;

    .line 225
    iget-object v0, p0, Lcom/android/server/pm/AppsFilter;->mWatchable:Lcom/android/server/utils/WatchableImpl;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchableImpl;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    .line 226
    return-void
.end method

.method public dumpQueries(Ljava/io/PrintWriter;Ljava/lang/Integer;Lcom/android/server/pm/DumpState;[ILcom/android/internal/util/function/QuadFunction;)V
    .locals 9
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "filteringAppId"    # Ljava/lang/Integer;
    .param p3, "dumpState"    # Lcom/android/server/pm/DumpState;
    .param p4, "users"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/Integer;",
            "Lcom/android/server/pm/DumpState;",
            "[I",
            "Lcom/android/internal/util/function/QuadFunction<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            "[",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1509
    .local p5, "getPackagesForUid":Lcom/android/internal/util/function/QuadFunction;, "Lcom/android/internal/util/function/QuadFunction<Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;[Ljava/lang/String;>;"
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 1510
    .local v0, "cache":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    new-instance v1, Lcom/android/server/pm/AppsFilter$$ExternalSyntheticLambda8;

    invoke-direct {v1, v0, p4, p5}, Lcom/android/server/pm/AppsFilter$$ExternalSyntheticLambda8;-><init>(Landroid/util/SparseArray;[ILcom/android/internal/util/function/QuadFunction;)V

    .line 1530
    .local v1, "expandPackages":Lcom/android/server/pm/AppsFilter$ToString;, "Lcom/android/server/pm/AppsFilter$ToString<Ljava/lang/Integer;>;"
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1531
    const-string v2, "Queries:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1532
    invoke-virtual {p3}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    .line 1533
    iget-object v2, p0, Lcom/android/server/pm/AppsFilter;->mFeatureConfig:Lcom/android/server/pm/AppsFilter$FeatureConfig;

    invoke-interface {v2}, Lcom/android/server/pm/AppsFilter$FeatureConfig;->isGloballyEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1534
    const-string v2, "  DISABLED"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1536
    return-void

    .line 1539
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  system apps queryable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/pm/AppsFilter;->mSystemAppsQueryable:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1540
    iget-object v4, p0, Lcom/android/server/pm/AppsFilter;->mForceQueryable:Landroid/util/ArraySet;

    const-string v5, "forceQueryable"

    const-string v6, "  "

    move-object v2, p1

    move-object v3, p2

    move-object v7, v1

    invoke-static/range {v2 .. v7}, Lcom/android/server/pm/AppsFilter;->dumpPackageSet(Ljava/io/PrintWriter;Ljava/lang/Object;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/pm/AppsFilter$ToString;)V

    .line 1541
    const-string v2, "  queries via package name:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1542
    iget-object v2, p0, Lcom/android/server/pm/AppsFilter;->mQueriesViaPackage:Landroid/util/SparseSetArray;

    const-string v3, "    "

    invoke-static {p1, p2, v2, v3, v1}, Lcom/android/server/pm/AppsFilter;->dumpQueriesMap(Ljava/io/PrintWriter;Ljava/lang/Integer;Landroid/util/SparseSetArray;Ljava/lang/String;Lcom/android/server/pm/AppsFilter$ToString;)V

    .line 1543
    const-string v2, "  queries via intent:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1544
    iget-object v2, p0, Lcom/android/server/pm/AppsFilter;->mQueriesViaComponent:Landroid/util/SparseSetArray;

    invoke-static {p1, p2, v2, v3, v1}, Lcom/android/server/pm/AppsFilter;->dumpQueriesMap(Ljava/io/PrintWriter;Ljava/lang/Integer;Landroid/util/SparseSetArray;Ljava/lang/String;Lcom/android/server/pm/AppsFilter$ToString;)V

    .line 1545
    const-string v2, "  queryable via interaction:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1546
    array-length v2, p4

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_2

    aget v5, p4, v4

    .line 1547
    .local v5, "user":I
    const-string v6, "    User "

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v6

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1548
    nop

    .line 1549
    if-nez p2, :cond_1

    const/4 v6, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v5, v6}, Landroid/os/UserHandle;->getUid(II)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    :goto_1
    iget-object v7, p0, Lcom/android/server/pm/AppsFilter;->mImplicitlyQueryable:Landroid/util/SparseSetArray;

    .line 1548
    const-string v8, "      "

    invoke-static {p1, v6, v7, v8, v1}, Lcom/android/server/pm/AppsFilter;->dumpQueriesMap(Ljava/io/PrintWriter;Ljava/lang/Integer;Landroid/util/SparseSetArray;Ljava/lang/String;Lcom/android/server/pm/AppsFilter$ToString;)V

    .line 1546
    .end local v5    # "user":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1552
    :cond_2
    const-string v2, "  queryable via uses-library:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1553
    iget-object v2, p0, Lcom/android/server/pm/AppsFilter;->mQueryableViaUsesLibrary:Landroid/util/SparseSetArray;

    invoke-static {p1, p2, v2, v3, v1}, Lcom/android/server/pm/AppsFilter;->dumpQueriesMap(Ljava/io/PrintWriter;Ljava/lang/Integer;Landroid/util/SparseSetArray;Ljava/lang/String;Lcom/android/server/pm/AppsFilter$ToString;)V

    .line 1554
    return-void
.end method

.method public getFeatureConfig()Lcom/android/server/pm/AppsFilter$FeatureConfig;
    .locals 1

    .line 500
    iget-object v0, p0, Lcom/android/server/pm/AppsFilter;->mFeatureConfig:Lcom/android/server/pm/AppsFilter$FeatureConfig;

    return-object v0
.end method

.method public getVisibilityAllowList(Lcom/android/server/pm/PackageSetting;[ILandroid/util/ArrayMap;)Landroid/util/SparseArray;
    .locals 17
    .param p1, "setting"    # Lcom/android/server/pm/PackageSetting;
    .param p2, "users"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageSetting;",
            "[I",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageSetting;",
            ">;)",
            "Landroid/util/SparseArray<",
            "[I>;"
        }
    .end annotation

    .line 1021
    .local p3, "existingSettings":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Lcom/android/server/pm/AppsFilter;->mForceQueryable:Landroid/util/ArraySet;

    iget v4, v1, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1022
    const/4 v3, 0x0

    return-object v3

    .line 1025
    :cond_0
    new-instance v3, Landroid/util/SparseArray;

    array-length v4, v2

    invoke-direct {v3, v4}, Landroid/util/SparseArray;-><init>(I)V

    .line 1026
    .local v3, "result":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[I>;"
    const/4 v4, 0x0

    .local v4, "u":I
    :goto_0
    array-length v5, v2

    if-ge v4, v5, :cond_6

    .line 1027
    aget v5, v2, v4

    .line 1028
    .local v5, "userId":I
    invoke-virtual/range {p3 .. p3}, Landroid/util/ArrayMap;->size()I

    move-result v6

    new-array v6, v6, [I

    .line 1029
    .local v6, "appIds":[I
    const/4 v7, 0x0

    .line 1030
    .local v7, "buffer":[I
    const/4 v8, 0x0

    .line 1031
    .local v8, "allowListSize":I
    invoke-virtual/range {p3 .. p3}, Landroid/util/ArrayMap;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    .local v9, "i":I
    :goto_1
    if-ltz v9, :cond_5

    .line 1032
    move-object/from16 v10, p3

    invoke-virtual {v10, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/pm/PackageSetting;

    .line 1033
    .local v11, "existingSetting":Lcom/android/server/pm/PackageSetting;
    iget v12, v11, Lcom/android/server/pm/PackageSetting;->appId:I

    .line 1034
    .local v12, "existingAppId":I
    const/16 v13, 0x2710

    if-ge v12, v13, :cond_1

    .line 1035
    goto :goto_2

    .line 1037
    :cond_1
    const/4 v13, 0x0

    invoke-static {v6, v13, v8, v12}, Ljava/util/Arrays;->binarySearch([IIII)I

    move-result v14

    .line 1038
    .local v14, "loc":I
    if-ltz v14, :cond_2

    .line 1039
    goto :goto_2

    .line 1041
    :cond_2
    invoke-static {v5, v12}, Landroid/os/UserHandle;->getUid(II)I

    move-result v15

    .line 1042
    .local v15, "existingUid":I
    invoke-virtual {v0, v15, v11, v1, v5}, Lcom/android/server/pm/AppsFilter;->shouldFilterApplication(ILcom/android/server/pm/SettingBase;Lcom/android/server/pm/PackageSetting;I)Z

    move-result v16

    if-nez v16, :cond_4

    .line 1043
    if-nez v7, :cond_3

    .line 1044
    array-length v13, v6

    new-array v7, v13, [I

    .line 1046
    :cond_3
    not-int v13, v14

    .line 1047
    .local v13, "insert":I
    sub-int v0, v8, v13

    const/4 v1, 0x0

    invoke-static {v6, v13, v7, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1048
    aput v12, v6, v13

    .line 1049
    add-int/lit8 v0, v13, 0x1

    sub-int v2, v8, v13

    invoke-static {v7, v1, v6, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1050
    add-int/lit8 v8, v8, 0x1

    .line 1031
    .end local v11    # "existingSetting":Lcom/android/server/pm/PackageSetting;
    .end local v12    # "existingAppId":I
    .end local v13    # "insert":I
    .end local v14    # "loc":I
    .end local v15    # "existingUid":I
    :cond_4
    :goto_2
    add-int/lit8 v9, v9, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    goto :goto_1

    :cond_5
    move-object/from16 v10, p3

    .line 1053
    .end local v9    # "i":I
    invoke-static {v6, v8}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    invoke-virtual {v3, v5, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1026
    .end local v5    # "userId":I
    .end local v6    # "appIds":[I
    .end local v7    # "buffer":[I
    .end local v8    # "allowListSize":I
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    goto :goto_0

    :cond_6
    move-object/from16 v10, p3

    .line 1055
    .end local v4    # "u":I
    return-object v3
.end method

.method getVisibilityAllowList(Lcom/android/server/pm/PackageSetting;[ILcom/android/server/utils/WatchedArrayMap;)Landroid/util/SparseArray;
    .locals 1
    .param p1, "setting"    # Lcom/android/server/pm/PackageSetting;
    .param p2, "users"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageSetting;",
            "[I",
            "Lcom/android/server/utils/WatchedArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageSetting;",
            ">;)",
            "Landroid/util/SparseArray<",
            "[I>;"
        }
    .end annotation

    .line 1065
    .local p3, "existingSettings":Lcom/android/server/utils/WatchedArrayMap;, "Lcom/android/server/utils/WatchedArrayMap<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    invoke-virtual {p3}, Lcom/android/server/utils/WatchedArrayMap;->untrackedStorage()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/pm/AppsFilter;->getVisibilityAllowList(Lcom/android/server/pm/PackageSetting;[ILandroid/util/ArrayMap;)Landroid/util/SparseArray;

    move-result-object v0

    return-object v0
.end method

.method public grantImplicitAccess(II)Z
    .locals 4
    .param p1, "recipientUid"    # I
    .param p2, "visibleUid"    # I

    .line 639
    const/4 v0, 0x0

    if-ne p1, p2, :cond_0

    .line 640
    return v0

    .line 642
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/AppsFilter;->mImplicitlyQueryable:Landroid/util/SparseSetArray;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseSetArray;->add(ILjava/lang/Object;)Z

    move-result v1

    .line 643
    .local v1, "changed":Z
    nop

    .line 646
    iget-object v2, p0, Lcom/android/server/pm/AppsFilter;->mCacheLock:Ljava/lang/Object;

    monitor-enter v2

    .line 647
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/AppsFilter;->mShouldFilterCache:Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    if-eqz v3, :cond_1

    .line 650
    iget-object v3, p0, Lcom/android/server/pm/AppsFilter;->mShouldFilterCache:Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    invoke-virtual {v3, p1, p2, v0}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->put(IIZ)V

    .line 652
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 653
    if-eqz v1, :cond_2

    .line 654
    invoke-direct {p0}, Lcom/android/server/pm/AppsFilter;->onChanged()V

    .line 656
    :cond_2
    return v1

    .line 652
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public isRegisteredObserver(Lcom/android/server/utils/Watcher;)Z
    .locals 1
    .param p1, "observer"    # Lcom/android/server/utils/Watcher;

    .line 213
    iget-object v0, p0, Lcom/android/server/pm/AppsFilter;->mWatchable:Lcom/android/server/utils/WatchableImpl;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchableImpl;->isRegisteredObserver(Lcom/android/server/utils/Watcher;)Z

    move-result v0

    return v0
.end method

.method public synthetic lambda$addPackage$1$AppsFilter(Lcom/android/server/pm/PackageSetting;Landroid/util/ArrayMap;[Landroid/content/pm/UserInfo;)V
    .locals 12
    .param p1, "newPkgSetting"    # Lcom/android/server/pm/PackageSetting;
    .param p2, "settings"    # Landroid/util/ArrayMap;
    .param p3, "users"    # [Landroid/content/pm/UserInfo;

    .line 683
    nop

    .line 684
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/AppsFilter;->addPackageInternal(Lcom/android/server/pm/PackageSetting;Landroid/util/ArrayMap;)Landroid/util/ArraySet;

    move-result-object v0

    .line 685
    .local v0, "additionalChangedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/pm/AppsFilter;->mCacheLock:Ljava/lang/Object;

    monitor-enter v1

    .line 686
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/AppsFilter;->mShouldFilterCache:Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    if-eqz v2, :cond_1

    .line 687
    iget-object v4, p0, Lcom/android/server/pm/AppsFilter;->mShouldFilterCache:Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    const/4 v5, 0x0

    .line 688
    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result v9

    .line 687
    move-object v3, p0

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    invoke-direct/range {v3 .. v9}, Lcom/android/server/pm/AppsFilter;->updateShouldFilterCacheForPackage(Lcom/android/server/utils/WatchedSparseBooleanMatrix;Ljava/lang/String;Lcom/android/server/pm/PackageSetting;Landroid/util/ArrayMap;[Landroid/content/pm/UserInfo;I)V

    .line 689
    if-eqz v0, :cond_1

    .line 690
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_0
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 691
    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 692
    .local v3, "changedPackage":Ljava/lang/String;
    invoke-virtual {p2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/PackageSetting;

    .line 693
    .local v4, "changedPkgSetting":Lcom/android/server/pm/PackageSetting;
    if-nez v4, :cond_0

    .line 697
    goto :goto_1

    .line 700
    :cond_0
    iget-object v6, p0, Lcom/android/server/pm/AppsFilter;->mShouldFilterCache:Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    const/4 v7, 0x0

    .line 701
    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result v11

    .line 700
    move-object v5, p0

    move-object v8, v4

    move-object v9, p2

    move-object v10, p3

    invoke-direct/range {v5 .. v11}, Lcom/android/server/pm/AppsFilter;->updateShouldFilterCacheForPackage(Lcom/android/server/utils/WatchedSparseBooleanMatrix;Ljava/lang/String;Lcom/android/server/pm/PackageSetting;Landroid/util/ArrayMap;[Landroid/content/pm/UserInfo;I)V

    .line 690
    .end local v3    # "changedPackage":Ljava/lang/String;
    .end local v4    # "changedPkgSetting":Lcom/android/server/pm/PackageSetting;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 705
    .end local v2    # "index":I
    :cond_1
    monitor-exit v1

    .line 706
    return-void

    .line 705
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public synthetic lambda$removePackage$7$AppsFilter(Lcom/android/server/pm/PackageSetting;Landroid/util/ArrayMap;[Landroid/content/pm/UserInfo;)V
    .locals 17
    .param p1, "setting"    # Lcom/android/server/pm/PackageSetting;
    .param p2, "settings"    # Landroid/util/ArrayMap;
    .param p3, "users"    # [Landroid/content/pm/UserInfo;

    .line 1084
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    array-length v12, v11

    .line 1085
    .local v12, "userCount":I
    const/4 v0, 0x0

    .local v0, "u":I
    :goto_0
    const/4 v1, 0x1

    if-ge v0, v12, :cond_1

    .line 1086
    aget-object v2, v11, v0

    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    .line 1087
    .local v2, "userId":I
    iget v3, v9, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-static {v2, v3}, Landroid/os/UserHandle;->getUid(II)I

    move-result v3

    .line 1088
    .local v3, "removingUid":I
    iget-object v4, v8, Lcom/android/server/pm/AppsFilter;->mImplicitlyQueryable:Landroid/util/SparseSetArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseSetArray;->remove(I)V

    .line 1089
    iget-object v4, v8, Lcom/android/server/pm/AppsFilter;->mImplicitlyQueryable:Landroid/util/SparseSetArray;

    invoke-virtual {v4}, Landroid/util/SparseSetArray;->size()I

    move-result v4

    sub-int/2addr v4, v1

    .local v4, "i":I
    :goto_1
    if-ltz v4, :cond_0

    .line 1090
    iget-object v1, v8, Lcom/android/server/pm/AppsFilter;->mImplicitlyQueryable:Landroid/util/SparseSetArray;

    invoke-virtual {v1, v4}, Landroid/util/SparseSetArray;->keyAt(I)I

    move-result v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/util/SparseSetArray;->remove(ILjava/lang/Object;)Z

    .line 1089
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 1085
    .end local v2    # "userId":I
    .end local v3    # "removingUid":I
    .end local v4    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1094
    .end local v0    # "u":I
    :cond_1
    iget-boolean v0, v8, Lcom/android/server/pm/AppsFilter;->mQueriesViaComponentRequireRecompute:Z

    if-nez v0, :cond_2

    .line 1095
    iget-object v0, v8, Lcom/android/server/pm/AppsFilter;->mQueriesViaComponent:Landroid/util/SparseSetArray;

    iget v2, v9, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-virtual {v0, v2}, Landroid/util/SparseSetArray;->remove(I)V

    .line 1096
    iget-object v0, v8, Lcom/android/server/pm/AppsFilter;->mQueriesViaComponent:Landroid/util/SparseSetArray;

    invoke-virtual {v0}, Landroid/util/SparseSetArray;->size()I

    move-result v0

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_2
    if-ltz v0, :cond_2

    .line 1097
    iget-object v2, v8, Lcom/android/server/pm/AppsFilter;->mQueriesViaComponent:Landroid/util/SparseSetArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseSetArray;->keyAt(I)I

    move-result v3

    iget v4, v9, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseSetArray;->remove(ILjava/lang/Object;)Z

    .line 1096
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 1100
    .end local v0    # "i":I
    :cond_2
    iget-object v0, v8, Lcom/android/server/pm/AppsFilter;->mQueriesViaPackage:Landroid/util/SparseSetArray;

    iget v2, v9, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-virtual {v0, v2}, Landroid/util/SparseSetArray;->remove(I)V

    .line 1101
    iget-object v0, v8, Lcom/android/server/pm/AppsFilter;->mQueriesViaPackage:Landroid/util/SparseSetArray;

    invoke-virtual {v0}, Landroid/util/SparseSetArray;->size()I

    move-result v0

    sub-int/2addr v0, v1

    .restart local v0    # "i":I
    :goto_3
    if-ltz v0, :cond_3

    .line 1102
    iget-object v2, v8, Lcom/android/server/pm/AppsFilter;->mQueriesViaPackage:Landroid/util/SparseSetArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseSetArray;->keyAt(I)I

    move-result v3

    iget v4, v9, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseSetArray;->remove(ILjava/lang/Object;)Z

    .line 1101
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 1104
    .end local v0    # "i":I
    :cond_3
    iget-object v0, v8, Lcom/android/server/pm/AppsFilter;->mQueryableViaUsesLibrary:Landroid/util/SparseSetArray;

    iget v2, v9, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-virtual {v0, v2}, Landroid/util/SparseSetArray;->remove(I)V

    .line 1105
    iget-object v0, v8, Lcom/android/server/pm/AppsFilter;->mQueryableViaUsesLibrary:Landroid/util/SparseSetArray;

    invoke-virtual {v0}, Landroid/util/SparseSetArray;->size()I

    move-result v0

    sub-int/2addr v0, v1

    .restart local v0    # "i":I
    :goto_4
    if-ltz v0, :cond_4

    .line 1106
    iget-object v2, v8, Lcom/android/server/pm/AppsFilter;->mQueryableViaUsesLibrary:Landroid/util/SparseSetArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseSetArray;->keyAt(I)I

    move-result v3

    iget v4, v9, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseSetArray;->remove(ILjava/lang/Object;)Z

    .line 1105
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    .line 1109
    .end local v0    # "i":I
    :cond_4
    iget-object v0, v8, Lcom/android/server/pm/AppsFilter;->mForceQueryable:Landroid/util/ArraySet;

    iget v2, v9, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 1111
    iget-object v0, v9, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    if-eqz v0, :cond_5

    iget-object v0, v9, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    invoke-interface {v0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getProtectedBroadcasts()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1112
    iget-object v0, v9, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    invoke-interface {v0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1113
    .local v0, "removingPackageName":Ljava/lang/String;
    iget-object v2, v8, Lcom/android/server/pm/AppsFilter;->mProtectedBroadcasts:Ljava/util/Set;

    .line 1114
    .local v2, "protectedBroadcasts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {v8, v10, v0}, Lcom/android/server/pm/AppsFilter;->collectProtectedBroadcasts(Landroid/util/ArrayMap;Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v3

    iput-object v3, v8, Lcom/android/server/pm/AppsFilter;->mProtectedBroadcasts:Ljava/util/Set;

    .line 1115
    invoke-interface {v3, v2}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 1116
    iput-boolean v1, v8, Lcom/android/server/pm/AppsFilter;->mQueriesViaComponentRequireRecompute:Z

    .line 1120
    .end local v0    # "removingPackageName":Ljava/lang/String;
    .end local v2    # "protectedBroadcasts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_5
    iget-object v0, v8, Lcom/android/server/pm/AppsFilter;->mOverlayReferenceMapper:Lcom/android/server/om/OverlayReferenceMapper;

    iget-object v2, v9, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    .line 1121
    invoke-virtual {v0, v2}, Lcom/android/server/om/OverlayReferenceMapper;->removePkg(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v13

    .line 1123
    .local v13, "additionalChangedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v0, v8, Lcom/android/server/pm/AppsFilter;->mFeatureConfig:Lcom/android/server/pm/AppsFilter$FeatureConfig;

    invoke-interface {v0, v9, v1}, Lcom/android/server/pm/AppsFilter$FeatureConfig;->updatePackageState(Lcom/android/server/pm/PackageSetting;Z)V

    .line 1129
    iget-object v0, v9, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-eqz v0, :cond_7

    .line 1130
    iget-object v0, v9, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iget-object v0, v0, Lcom/android/server/pm/SharedUserSetting;->packages:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_5
    if-ltz v0, :cond_7

    .line 1131
    iget-object v2, v9, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iget-object v2, v2, Lcom/android/server/pm/SharedUserSetting;->packages:Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v9, :cond_6

    .line 1132
    goto :goto_6

    .line 1134
    :cond_6
    iget-object v2, v9, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iget-object v2, v2, Lcom/android/server/pm/SharedUserSetting;->packages:Landroid/util/ArraySet;

    .line 1135
    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    .line 1134
    invoke-direct {v8, v2, v10}, Lcom/android/server/pm/AppsFilter;->addPackageInternal(Lcom/android/server/pm/PackageSetting;Landroid/util/ArrayMap;)Landroid/util/ArraySet;

    .line 1130
    :goto_6
    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    .line 1139
    .end local v0    # "i":I
    :cond_7
    iget-object v14, v8, Lcom/android/server/pm/AppsFilter;->mCacheLock:Ljava/lang/Object;

    monitor-enter v14

    .line 1140
    :try_start_0
    iget v0, v9, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-direct {v8, v0}, Lcom/android/server/pm/AppsFilter;->removeAppIdFromVisibilityCache(I)V

    .line 1141
    iget-object v0, v8, Lcom/android/server/pm/AppsFilter;->mShouldFilterCache:Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    if-eqz v0, :cond_9

    iget-object v0, v9, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-eqz v0, :cond_9

    .line 1142
    iget-object v0, v9, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iget-object v0, v0, Lcom/android/server/pm/SharedUserSetting;->packages:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    sub-int/2addr v0, v1

    .restart local v0    # "i":I
    :goto_7
    if-ltz v0, :cond_9

    .line 1143
    iget-object v1, v9, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iget-object v1, v1, Lcom/android/server/pm/SharedUserSetting;->packages:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageSetting;

    move-object v15, v1

    .line 1144
    .local v15, "siblingSetting":Lcom/android/server/pm/PackageSetting;
    if-ne v15, v9, :cond_8

    .line 1145
    goto :goto_8

    .line 1147
    :cond_8
    iget-object v2, v8, Lcom/android/server/pm/AppsFilter;->mShouldFilterCache:Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    iget-object v3, v9, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    .line 1148
    invoke-virtual/range {p2 .. p2}, Landroid/util/ArrayMap;->size()I

    move-result v7

    .line 1147
    move-object/from16 v1, p0

    move-object v4, v15

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    invoke-direct/range {v1 .. v7}, Lcom/android/server/pm/AppsFilter;->updateShouldFilterCacheForPackage(Lcom/android/server/utils/WatchedSparseBooleanMatrix;Ljava/lang/String;Lcom/android/server/pm/PackageSetting;Landroid/util/ArrayMap;[Landroid/content/pm/UserInfo;I)V

    .line 1142
    .end local v15    # "siblingSetting":Lcom/android/server/pm/PackageSetting;
    :goto_8
    add-int/lit8 v0, v0, -0x1

    goto :goto_7

    .line 1152
    .end local v0    # "i":I
    :cond_9
    iget-object v0, v8, Lcom/android/server/pm/AppsFilter;->mShouldFilterCache:Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    if-eqz v0, :cond_b

    .line 1153
    if-eqz v13, :cond_b

    .line 1154
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_9
    invoke-virtual {v13}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v0, v1, :cond_b

    .line 1155
    invoke-virtual {v13, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v15, v1

    .line 1156
    .local v15, "changedPackage":Ljava/lang/String;
    invoke-virtual {v10, v15}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageSetting;

    move-object/from16 v16, v1

    .line 1157
    .local v16, "changedPkgSetting":Lcom/android/server/pm/PackageSetting;
    if-nez v16, :cond_a

    .line 1161
    goto :goto_a

    .line 1164
    :cond_a
    iget-object v2, v8, Lcom/android/server/pm/AppsFilter;->mShouldFilterCache:Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    const/4 v3, 0x0

    .line 1165
    invoke-virtual/range {p2 .. p2}, Landroid/util/ArrayMap;->size()I

    move-result v7

    .line 1164
    move-object/from16 v1, p0

    move-object/from16 v4, v16

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    invoke-direct/range {v1 .. v7}, Lcom/android/server/pm/AppsFilter;->updateShouldFilterCacheForPackage(Lcom/android/server/utils/WatchedSparseBooleanMatrix;Ljava/lang/String;Lcom/android/server/pm/PackageSetting;Landroid/util/ArrayMap;[Landroid/content/pm/UserInfo;I)V

    .line 1154
    .end local v15    # "changedPackage":Ljava/lang/String;
    .end local v16    # "changedPkgSetting":Lcom/android/server/pm/PackageSetting;
    :goto_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 1170
    .end local v0    # "index":I
    :cond_b
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/AppsFilter;->onChanged()V

    .line 1171
    monitor-exit v14

    .line 1172
    return-void

    .line 1171
    :catchall_0
    move-exception v0

    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public synthetic lambda$shouldFilterApplicationInternal$8$AppsFilter(Landroid/util/ArrayMap;[Landroid/content/pm/UserInfo;)V
    .locals 0
    .param p1, "settings"    # Landroid/util/ArrayMap;
    .param p2, "users"    # [Landroid/content/pm/UserInfo;

    .line 1382
    invoke-direct {p0, p1}, Lcom/android/server/pm/AppsFilter;->recomputeComponentVisibility(Landroid/util/ArrayMap;)V

    .line 1383
    return-void
.end method

.method public synthetic lambda$updateEntireShouldFilterCache$2$AppsFilter(Landroid/util/ArrayMap;[Landroid/content/pm/UserInfo;)V
    .locals 3
    .param p1, "settings"    # Landroid/util/ArrayMap;
    .param p2, "users"    # [Landroid/content/pm/UserInfo;

    .line 836
    nop

    .line 837
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/AppsFilter;->updateEntireShouldFilterCacheInner(Landroid/util/ArrayMap;[Landroid/content/pm/UserInfo;)Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    move-result-object v0

    .line 838
    .local v0, "cache":Lcom/android/server/utils/WatchedSparseBooleanMatrix;
    iget-object v1, p0, Lcom/android/server/pm/AppsFilter;->mCacheLock:Ljava/lang/Object;

    monitor-enter v1

    .line 839
    :try_start_0
    iput-object v0, p0, Lcom/android/server/pm/AppsFilter;->mShouldFilterCache:Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    .line 840
    monitor-exit v1

    .line 841
    return-void

    .line 840
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public synthetic lambda$updateEntireShouldFilterCacheAsync$5$AppsFilter()V
    .locals 8

    .line 857
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 858
    .local v0, "settingsCopy":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 859
    .local v1, "packagesCache":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    const/4 v2, 0x1

    new-array v3, v2, [[Landroid/content/pm/UserInfo;

    .line 860
    .local v3, "usersRef":[[Landroid/content/pm/UserInfo;
    iget-object v4, p0, Lcom/android/server/pm/AppsFilter;->mStateProvider:Lcom/android/server/pm/AppsFilter$StateProvider;

    new-instance v5, Lcom/android/server/pm/AppsFilter$$ExternalSyntheticLambda0;

    invoke-direct {v5, v1, v0, v3}, Lcom/android/server/pm/AppsFilter$$ExternalSyntheticLambda0;-><init>(Landroid/util/ArrayMap;Landroid/util/ArrayMap;[[Landroid/content/pm/UserInfo;)V

    invoke-interface {v4, v5}, Lcom/android/server/pm/AppsFilter$StateProvider;->runWithState(Lcom/android/server/pm/AppsFilter$StateProvider$CurrentStateCallback;)V

    .line 871
    const/4 v4, 0x0

    aget-object v5, v3, v4

    .line 872
    invoke-direct {p0, v0, v5}, Lcom/android/server/pm/AppsFilter;->updateEntireShouldFilterCacheInner(Landroid/util/ArrayMap;[Landroid/content/pm/UserInfo;)Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    move-result-object v5

    .line 873
    .local v5, "cache":Lcom/android/server/utils/WatchedSparseBooleanMatrix;
    new-array v2, v2, [Z

    .line 875
    .local v2, "changed":[Z
    iget-object v6, p0, Lcom/android/server/pm/AppsFilter;->mStateProvider:Lcom/android/server/pm/AppsFilter$StateProvider;

    new-instance v7, Lcom/android/server/pm/AppsFilter$$ExternalSyntheticLambda1;

    invoke-direct {v7, v0, v2, v1}, Lcom/android/server/pm/AppsFilter$$ExternalSyntheticLambda1;-><init>(Landroid/util/ArrayMap;[ZLandroid/util/ArrayMap;)V

    invoke-interface {v6, v7}, Lcom/android/server/pm/AppsFilter$StateProvider;->runWithState(Lcom/android/server/pm/AppsFilter$StateProvider$CurrentStateCallback;)V

    .line 888
    aget-boolean v4, v2, v4

    if-eqz v4, :cond_0

    .line 890
    invoke-direct {p0}, Lcom/android/server/pm/AppsFilter;->updateEntireShouldFilterCache()V

    goto :goto_0

    .line 895
    :cond_0
    iget-object v4, p0, Lcom/android/server/pm/AppsFilter;->mCacheLock:Ljava/lang/Object;

    monitor-enter v4

    .line 896
    :try_start_0
    iput-object v5, p0, Lcom/android/server/pm/AppsFilter;->mShouldFilterCache:Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    .line 897
    monitor-exit v4

    .line 899
    :goto_0
    return-void

    .line 897
    :catchall_0
    move-exception v6

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6
.end method

.method public synthetic lambda$updateShouldFilterCacheForPackage$6$AppsFilter(Ljava/lang/String;Landroid/util/ArrayMap;[Landroid/content/pm/UserInfo;)V
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "settings"    # Landroid/util/ArrayMap;
    .param p3, "users"    # [Landroid/content/pm/UserInfo;

    .line 915
    iget-object v1, p0, Lcom/android/server/pm/AppsFilter;->mShouldFilterCache:Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    .line 916
    invoke-virtual {p2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    .line 917
    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result v6

    .line 915
    const/4 v2, 0x0

    move-object v0, p0

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/AppsFilter;->updateShouldFilterCacheForPackage(Lcom/android/server/utils/WatchedSparseBooleanMatrix;Ljava/lang/String;Lcom/android/server/pm/PackageSetting;Landroid/util/ArrayMap;[Landroid/content/pm/UserInfo;I)V

    .line 918
    return-void
.end method

.method public onSystemReady()V
    .locals 1

    .line 660
    iget-object v0, p0, Lcom/android/server/pm/AppsFilter;->mOverlayReferenceMapper:Lcom/android/server/om/OverlayReferenceMapper;

    invoke-virtual {v0}, Lcom/android/server/om/OverlayReferenceMapper;->rebuildIfDeferred()V

    .line 661
    iget-object v0, p0, Lcom/android/server/pm/AppsFilter;->mFeatureConfig:Lcom/android/server/pm/AppsFilter$FeatureConfig;

    invoke-interface {v0}, Lcom/android/server/pm/AppsFilter$FeatureConfig;->onSystemReady()V

    .line 663
    invoke-direct {p0}, Lcom/android/server/pm/AppsFilter;->updateEntireShouldFilterCacheAsync()V

    .line 664
    invoke-direct {p0}, Lcom/android/server/pm/AppsFilter;->onChanged()V

    .line 665
    return-void
.end method

.method public onUsersChanged()V
    .locals 2

    .line 903
    iget-object v0, p0, Lcom/android/server/pm/AppsFilter;->mCacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 904
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/AppsFilter;->mShouldFilterCache:Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    if-eqz v1, :cond_0

    .line 905
    invoke-direct {p0}, Lcom/android/server/pm/AppsFilter;->updateEntireShouldFilterCache()V

    .line 906
    invoke-direct {p0}, Lcom/android/server/pm/AppsFilter;->onChanged()V

    .line 908
    :cond_0
    monitor-exit v0

    .line 909
    return-void

    .line 908
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerObserver(Lcom/android/server/utils/Watcher;)V
    .locals 1
    .param p1, "observer"    # Lcom/android/server/utils/Watcher;

    .line 192
    iget-object v0, p0, Lcom/android/server/pm/AppsFilter;->mWatchable:Lcom/android/server/utils/WatchableImpl;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchableImpl;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 193
    return-void
.end method

.method public removePackage(Lcom/android/server/pm/PackageSetting;)V
    .locals 2
    .param p1, "setting"    # Lcom/android/server/pm/PackageSetting;

    .line 1083
    iget-object v0, p0, Lcom/android/server/pm/AppsFilter;->mStateProvider:Lcom/android/server/pm/AppsFilter$StateProvider;

    new-instance v1, Lcom/android/server/pm/AppsFilter$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1}, Lcom/android/server/pm/AppsFilter$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/pm/AppsFilter;Lcom/android/server/pm/PackageSetting;)V

    invoke-interface {v0, v1}, Lcom/android/server/pm/AppsFilter$StateProvider;->runWithState(Lcom/android/server/pm/AppsFilter$StateProvider$CurrentStateCallback;)V

    .line 1173
    return-void
.end method

.method public shouldFilterApplication(ILcom/android/server/pm/SettingBase;Lcom/android/server/pm/PackageSetting;I)Z
    .locals 9
    .param p1, "callingUid"    # I
    .param p2, "callingSetting"    # Lcom/android/server/pm/SettingBase;
    .param p3, "targetPkgSetting"    # Lcom/android/server/pm/PackageSetting;
    .param p4, "userId"    # I

    .line 1191
    :try_start_0
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 1192
    .local v0, "callingAppId":I
    const/4 v1, 0x0

    const/16 v2, 0x2710

    if-lt v0, v2, :cond_6

    iget v3, p3, Lcom/android/server/pm/PackageSetting;->appId:I

    if-lt v3, v2, :cond_6

    iget v2, p3, Lcom/android/server/pm/PackageSetting;->appId:I

    if-ne v0, v2, :cond_0

    goto/16 :goto_0

    .line 1197
    :cond_0
    iget-object v2, p0, Lcom/android/server/pm/AppsFilter;->mCacheLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1198
    :try_start_1
    iget-object v3, p0, Lcom/android/server/pm/AppsFilter;->mShouldFilterCache:Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    .line 1199
    iget-object v1, p0, Lcom/android/server/pm/AppsFilter;->mShouldFilterCache:Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    invoke-virtual {v1, p1}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->indexOfKey(I)I

    move-result v1

    .line 1200
    .local v1, "callingIndex":I
    if-gez v1, :cond_1

    .line 1201
    const-string v3, "AppsFilter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Encountered calling uid with no cached rules: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1203
    monitor-exit v2

    return v4

    .line 1205
    :cond_1
    iget v3, p3, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-static {p4, v3}, Landroid/os/UserHandle;->getUid(II)I

    move-result v3

    .line 1206
    .local v3, "targetUid":I
    iget-object v5, p0, Lcom/android/server/pm/AppsFilter;->mShouldFilterCache:Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    invoke-virtual {v5, v3}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->indexOfKey(I)I

    move-result v5

    .line 1207
    .local v5, "targetIndex":I
    if-gez v5, :cond_2

    .line 1208
    const-string v6, "AppsFilter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Encountered calling -> target with no cached rules: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " -> "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1210
    monitor-exit v2

    return v4

    .line 1212
    :cond_2
    iget-object v4, p0, Lcom/android/server/pm/AppsFilter;->mShouldFilterCache:Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    invoke-virtual {v4, v1, v5}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->valueAt(II)Z

    move-result v4

    monitor-exit v2

    return v4

    .line 1214
    .end local v1    # "callingIndex":I
    .end local v3    # "targetUid":I
    .end local v5    # "targetIndex":I
    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/pm/AppsFilter;->shouldFilterApplicationInternal(ILcom/android/server/pm/SettingBase;Lcom/android/server/pm/PackageSetting;I)Z

    move-result v3

    if-nez v3, :cond_4

    .line 1216
    monitor-exit v2

    return v1

    .line 1219
    :cond_4
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1220
    :try_start_2
    iget-object v1, p0, Lcom/android/server/pm/AppsFilter;->mFeatureConfig:Lcom/android/server/pm/AppsFilter$FeatureConfig;

    invoke-interface {v1, v0}, Lcom/android/server/pm/AppsFilter$FeatureConfig;->isLoggingEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1221
    const-string v1, "BLOCKED"

    invoke-static {p2, p3, v1}, Lcom/android/server/pm/AppsFilter;->log(Lcom/android/server/pm/SettingBase;Lcom/android/server/pm/PackageSetting;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1223
    :cond_5
    return v4

    .line 1219
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local p0    # "this":Lcom/android/server/pm/AppsFilter;
    .end local p1    # "callingUid":I
    .end local p2    # "callingSetting":Lcom/android/server/pm/SettingBase;
    .end local p3    # "targetPkgSetting":Lcom/android/server/pm/PackageSetting;
    .end local p4    # "userId":I
    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1195
    .restart local p0    # "this":Lcom/android/server/pm/AppsFilter;
    .restart local p1    # "callingUid":I
    .restart local p2    # "callingSetting":Lcom/android/server/pm/SettingBase;
    .restart local p3    # "targetPkgSetting":Lcom/android/server/pm/PackageSetting;
    .restart local p4    # "userId":I
    :cond_6
    :goto_0
    return v1

    .line 1225
    .end local v0    # "callingAppId":I
    :catchall_1
    move-exception v0

    .line 1228
    throw v0
.end method

.method public snapshot()Lcom/android/server/pm/AppsFilter;
    .locals 1

    .line 288
    iget-object v0, p0, Lcom/android/server/pm/AppsFilter;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    invoke-virtual {v0}, Lcom/android/server/utils/SnapshotCache;->snapshot()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/AppsFilter;

    return-object v0
.end method

.method public bridge synthetic snapshot()Ljava/lang/Object;
    .locals 1

    .line 81
    invoke-virtual {p0}, Lcom/android/server/pm/AppsFilter;->snapshot()Lcom/android/server/pm/AppsFilter;

    move-result-object v0

    return-object v0
.end method

.method public unregisterObserver(Lcom/android/server/utils/Watcher;)V
    .locals 1
    .param p1, "observer"    # Lcom/android/server/utils/Watcher;

    .line 203
    iget-object v0, p0, Lcom/android/server/pm/AppsFilter;->mWatchable:Lcom/android/server/utils/WatchableImpl;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchableImpl;->unregisterObserver(Lcom/android/server/utils/Watcher;)V

    .line 204
    return-void
.end method
