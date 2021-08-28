.class public Lcom/android/server/location/injector/LocationAttributionHelper;
.super Ljava/lang/Object;
.source "LocationAttributionHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/injector/LocationAttributionHelper$BucketKey;
    }
.end annotation


# instance fields
.field private final mAppOpsHelper:Lcom/android/server/location/injector/AppOpsHelper;

.field private final mAttributions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/location/util/identity/CallerIdentity;",
            "Ljava/util/Set<",
            "Lcom/android/server/location/injector/LocationAttributionHelper$BucketKey;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mHighPowerAttributions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/location/util/identity/CallerIdentity;",
            "Ljava/util/Set<",
            "Lcom/android/server/location/injector/LocationAttributionHelper$BucketKey;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/server/location/injector/AppOpsHelper;)V
    .locals 1
    .param p1, "appOpsHelper"    # Lcom/android/server/location/injector/AppOpsHelper;

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lcom/android/server/location/injector/LocationAttributionHelper;->mAppOpsHelper:Lcom/android/server/location/injector/AppOpsHelper;

    .line 80
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/injector/LocationAttributionHelper;->mAttributions:Ljava/util/Map;

    .line 81
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/injector/LocationAttributionHelper;->mHighPowerAttributions:Ljava/util/Map;

    .line 82
    return-void
.end method

.method static synthetic lambda$reportHighPowerLocationStart$1(Landroid/location/util/identity/CallerIdentity;)Ljava/util/Set;
    .locals 1
    .param p0, "i"    # Landroid/location/util/identity/CallerIdentity;

    .line 120
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    return-object v0
.end method

.method static synthetic lambda$reportLocationStart$0(Landroid/location/util/identity/CallerIdentity;)Ljava/util/Set;
    .locals 1
    .param p0, "i"    # Landroid/location/util/identity/CallerIdentity;

    .line 90
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    return-object v0
.end method


# virtual methods
.method public declared-synchronized reportHighPowerLocationStart(Landroid/location/util/identity/CallerIdentity;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 5
    .param p1, "identity"    # Landroid/location/util/identity/CallerIdentity;
    .param p2, "bucket"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/Object;

    monitor-enter p0

    .line 119
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/injector/LocationAttributionHelper;->mHighPowerAttributions:Ljava/util/Map;

    sget-object v1, Lcom/android/server/location/injector/LocationAttributionHelper$$ExternalSyntheticLambda0;->INSTANCE:Lcom/android/server/location/injector/LocationAttributionHelper$$ExternalSyntheticLambda0;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 121
    .local v0, "keySet":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/location/injector/LocationAttributionHelper$BucketKey;>;"
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    .line 122
    .local v1, "empty":Z
    new-instance v2, Lcom/android/server/location/injector/LocationAttributionHelper$BucketKey;

    const/4 v3, 0x0

    invoke-direct {v2, p2, p3, v3}, Lcom/android/server/location/injector/LocationAttributionHelper$BucketKey;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/android/server/location/injector/LocationAttributionHelper$1;)V

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    .line 123
    iget-object v2, p0, Lcom/android/server/location/injector/LocationAttributionHelper;->mAppOpsHelper:Lcom/android/server/location/injector/AppOpsHelper;

    const/16 v3, 0x2a

    invoke-virtual {v2, v3, p1}, Lcom/android/server/location/injector/AppOpsHelper;->startOpNoThrow(ILandroid/location/util/identity/CallerIdentity;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 124
    sget-boolean v2, Lcom/android/server/location/LocationManagerService;->D:Z

    if-eqz v2, :cond_1

    .line 125
    const-string v2, "LocationManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "starting high power location attribution for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 128
    .end local p0    # "this":Lcom/android/server/location/injector/LocationAttributionHelper;
    :cond_0
    iget-object v2, p0, Lcom/android/server/location/injector/LocationAttributionHelper;->mHighPowerAttributions:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 118
    .end local v0    # "keySet":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/location/injector/LocationAttributionHelper$BucketKey;>;"
    .end local v1    # "empty":Z
    .end local p1    # "identity":Landroid/location/util/identity/CallerIdentity;
    .end local p2    # "bucket":Ljava/lang/String;
    .end local p3    # "key":Ljava/lang/Object;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized reportHighPowerLocationStop(Landroid/location/util/identity/CallerIdentity;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .param p1, "identity"    # Landroid/location/util/identity/CallerIdentity;
    .param p2, "bucket"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/Object;

    monitor-enter p0

    .line 139
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/injector/LocationAttributionHelper;->mHighPowerAttributions:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 140
    .local v0, "keySet":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/location/injector/LocationAttributionHelper$BucketKey;>;"
    if-eqz v0, :cond_1

    new-instance v1, Lcom/android/server/location/injector/LocationAttributionHelper$BucketKey;

    const/4 v2, 0x0

    invoke-direct {v1, p2, p3, v2}, Lcom/android/server/location/injector/LocationAttributionHelper$BucketKey;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/android/server/location/injector/LocationAttributionHelper$1;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 141
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 142
    sget-boolean v1, Lcom/android/server/location/LocationManagerService;->D:Z

    if-eqz v1, :cond_0

    .line 143
    const-string v1, "LocationManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "stopping high power location attribution for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    .end local p0    # "this":Lcom/android/server/location/injector/LocationAttributionHelper;
    :cond_0
    iget-object v1, p0, Lcom/android/server/location/injector/LocationAttributionHelper;->mHighPowerAttributions:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    iget-object v1, p0, Lcom/android/server/location/injector/LocationAttributionHelper;->mAppOpsHelper:Lcom/android/server/location/injector/AppOpsHelper;

    const/16 v2, 0x2a

    invoke-virtual {v1, v2, p1}, Lcom/android/server/location/injector/AppOpsHelper;->finishOp(ILandroid/location/util/identity/CallerIdentity;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    :cond_1
    monitor-exit p0

    return-void

    .line 138
    .end local v0    # "keySet":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/location/injector/LocationAttributionHelper$BucketKey;>;"
    .end local p1    # "identity":Landroid/location/util/identity/CallerIdentity;
    .end local p2    # "bucket":Ljava/lang/String;
    .end local p3    # "key":Ljava/lang/Object;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized reportLocationStart(Landroid/location/util/identity/CallerIdentity;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .param p1, "identity"    # Landroid/location/util/identity/CallerIdentity;
    .param p2, "bucket"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/Object;

    monitor-enter p0

    .line 89
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/injector/LocationAttributionHelper;->mAttributions:Ljava/util/Map;

    sget-object v1, Lcom/android/server/location/injector/LocationAttributionHelper$$ExternalSyntheticLambda1;->INSTANCE:Lcom/android/server/location/injector/LocationAttributionHelper$$ExternalSyntheticLambda1;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 91
    .local v0, "keySet":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/location/injector/LocationAttributionHelper$BucketKey;>;"
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    .line 92
    .local v1, "empty":Z
    new-instance v2, Lcom/android/server/location/injector/LocationAttributionHelper$BucketKey;

    const/4 v3, 0x0

    invoke-direct {v2, p2, p3, v3}, Lcom/android/server/location/injector/LocationAttributionHelper$BucketKey;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/android/server/location/injector/LocationAttributionHelper$1;)V

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 93
    iget-object v2, p0, Lcom/android/server/location/injector/LocationAttributionHelper;->mAppOpsHelper:Lcom/android/server/location/injector/AppOpsHelper;

    const/16 v3, 0x29

    invoke-virtual {v2, v3, p1}, Lcom/android/server/location/injector/AppOpsHelper;->startOpNoThrow(ILandroid/location/util/identity/CallerIdentity;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 94
    iget-object v2, p0, Lcom/android/server/location/injector/LocationAttributionHelper;->mAttributions:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    .end local p0    # "this":Lcom/android/server/location/injector/LocationAttributionHelper;
    :cond_0
    monitor-exit p0

    return-void

    .line 88
    .end local v0    # "keySet":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/location/injector/LocationAttributionHelper$BucketKey;>;"
    .end local v1    # "empty":Z
    .end local p1    # "identity":Landroid/location/util/identity/CallerIdentity;
    .end local p2    # "bucket":Ljava/lang/String;
    .end local p3    # "key":Ljava/lang/Object;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized reportLocationStop(Landroid/location/util/identity/CallerIdentity;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "identity"    # Landroid/location/util/identity/CallerIdentity;
    .param p2, "bucket"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/Object;

    monitor-enter p0

    .line 105
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/injector/LocationAttributionHelper;->mAttributions:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 106
    .local v0, "keySet":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/location/injector/LocationAttributionHelper$BucketKey;>;"
    if-eqz v0, :cond_0

    new-instance v1, Lcom/android/server/location/injector/LocationAttributionHelper$BucketKey;

    const/4 v2, 0x0

    invoke-direct {v1, p2, p3, v2}, Lcom/android/server/location/injector/LocationAttributionHelper$BucketKey;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/android/server/location/injector/LocationAttributionHelper$1;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 107
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 108
    iget-object v1, p0, Lcom/android/server/location/injector/LocationAttributionHelper;->mAttributions:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    iget-object v1, p0, Lcom/android/server/location/injector/LocationAttributionHelper;->mAppOpsHelper:Lcom/android/server/location/injector/AppOpsHelper;

    const/16 v2, 0x29

    invoke-virtual {v1, v2, p1}, Lcom/android/server/location/injector/AppOpsHelper;->finishOp(ILandroid/location/util/identity/CallerIdentity;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    .end local p0    # "this":Lcom/android/server/location/injector/LocationAttributionHelper;
    :cond_0
    monitor-exit p0

    return-void

    .line 104
    .end local v0    # "keySet":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/location/injector/LocationAttributionHelper$BucketKey;>;"
    .end local p1    # "identity":Landroid/location/util/identity/CallerIdentity;
    .end local p2    # "bucket":Ljava/lang/String;
    .end local p3    # "key":Ljava/lang/Object;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
