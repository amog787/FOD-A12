.class Lcom/android/server/location/LocationManagerService$LocalService;
.super Landroid/location/LocationManagerInternal;
.source "LocationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/LocationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocalService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/LocationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/location/LocationManagerService;)V
    .locals 0

    .line 1587
    iput-object p1, p0, Lcom/android/server/location/LocationManagerService$LocalService;->this$0:Lcom/android/server/location/LocationManagerService;

    invoke-direct {p0}, Landroid/location/LocationManagerInternal;-><init>()V

    return-void
.end method

.method static synthetic lambda$setLocationPackageTagsListener$0(Landroid/location/LocationManagerInternal$LocationPackageTagsListener;ILandroid/os/PackageTagsList;)V
    .locals 0
    .param p0, "listener"    # Landroid/location/LocationManagerInternal$LocationPackageTagsListener;
    .param p1, "uid"    # I
    .param p2, "tags"    # Landroid/os/PackageTagsList;

    .line 1674
    invoke-interface {p0, p1, p2}, Landroid/location/LocationManagerInternal$LocationPackageTagsListener;->onLocationPackageTagsChanged(ILandroid/os/PackageTagsList;)V

    return-void
.end method


# virtual methods
.method public addProviderEnabledListener(Ljava/lang/String;Landroid/location/LocationManagerInternal$ProviderEnabledListener;)V
    .locals 1
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/location/LocationManagerInternal$ProviderEnabledListener;

    .line 1604
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$LocalService;->this$0:Lcom/android/server/location/LocationManagerService;

    .line 1605
    invoke-virtual {v0, p1}, Lcom/android/server/location/LocationManagerService;->getLocationProviderManager(Ljava/lang/String;)Lcom/android/server/location/provider/LocationProviderManager;

    move-result-object v0

    .line 1604
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Lcom/android/server/location/provider/LocationProviderManager;

    .line 1606
    .local v0, "manager":Lcom/android/server/location/provider/LocationProviderManager;
    invoke-virtual {v0, p2}, Lcom/android/server/location/provider/LocationProviderManager;->addEnabledListener(Landroid/location/LocationManagerInternal$ProviderEnabledListener;)V

    .line 1607
    return-void
.end method

.method public getGnssTimeMillis()Landroid/location/LocationTime;
    .locals 8

    .line 1640
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$LocalService;->this$0:Lcom/android/server/location/LocationManagerService;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Lcom/android/server/location/LocationManagerService;->getLocationProviderManager(Ljava/lang/String;)Lcom/android/server/location/provider/LocationProviderManager;

    move-result-object v0

    .line 1641
    .local v0, "gpsManager":Lcom/android/server/location/provider/LocationProviderManager;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1642
    return-object v1

    .line 1645
    :cond_0
    const/4 v3, -0x1

    const/4 v4, 0x2

    const/4 v5, 0x0

    const-wide v6, 0x7fffffffffffffffL

    move-object v2, v0

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/location/provider/LocationProviderManager;->getLastLocationUnsafe(IIZJ)Landroid/location/Location;

    move-result-object v2

    .line 1647
    .local v2, "location":Landroid/location/Location;
    if-nez v2, :cond_1

    .line 1648
    return-object v1

    .line 1651
    :cond_1
    new-instance v1, Landroid/location/LocationTime;

    invoke-virtual {v2}, Landroid/location/Location;->getTime()J

    move-result-wide v3

    invoke-virtual {v2}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v5

    invoke-direct {v1, v3, v4, v5, v6}, Landroid/location/LocationTime;-><init>(JJ)V

    return-object v1
.end method

.method public isProvider(Ljava/lang/String;Landroid/location/util/identity/CallerIdentity;)Z
    .locals 3
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "identity"    # Landroid/location/util/identity/CallerIdentity;

    .line 1619
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$LocalService;->this$0:Lcom/android/server/location/LocationManagerService;

    iget-object v0, v0, Lcom/android/server/location/LocationManagerService;->mProviderManagers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/provider/LocationProviderManager;

    .line 1620
    .local v1, "manager":Lcom/android/server/location/provider/LocationProviderManager;
    if-eqz p1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/location/provider/LocationProviderManager;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1621
    goto :goto_0

    .line 1623
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/location/provider/LocationProviderManager;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/location/util/identity/CallerIdentity;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1624
    const/4 v0, 0x1

    return v0

    .line 1626
    .end local v1    # "manager":Lcom/android/server/location/provider/LocationProviderManager;
    :cond_1
    goto :goto_0

    .line 1628
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public isProviderEnabledForUser(Ljava/lang/String;I)Z
    .locals 7
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1591
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 1592
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1591
    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "isProviderEnabledForUser"

    const/4 v6, 0x0

    move v2, p2

    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p2

    .line 1594
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$LocalService;->this$0:Lcom/android/server/location/LocationManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/location/LocationManagerService;->getLocationProviderManager(Ljava/lang/String;)Lcom/android/server/location/provider/LocationProviderManager;

    move-result-object v0

    .line 1595
    .local v0, "manager":Lcom/android/server/location/provider/LocationProviderManager;
    if-nez v0, :cond_0

    .line 1596
    const/4 v1, 0x0

    return v1

    .line 1599
    :cond_0
    invoke-virtual {v0, p2}, Lcom/android/server/location/provider/LocationProviderManager;->isEnabled(I)Z

    move-result v1

    return v1
.end method

.method public removeProviderEnabledListener(Ljava/lang/String;Landroid/location/LocationManagerInternal$ProviderEnabledListener;)V
    .locals 1
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/location/LocationManagerInternal$ProviderEnabledListener;

    .line 1612
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$LocalService;->this$0:Lcom/android/server/location/LocationManagerService;

    .line 1613
    invoke-virtual {v0, p1}, Lcom/android/server/location/LocationManagerService;->getLocationProviderManager(Ljava/lang/String;)Lcom/android/server/location/provider/LocationProviderManager;

    move-result-object v0

    .line 1612
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Lcom/android/server/location/provider/LocationProviderManager;

    .line 1614
    .local v0, "manager":Lcom/android/server/location/provider/LocationProviderManager;
    invoke-virtual {v0, p2}, Lcom/android/server/location/provider/LocationProviderManager;->removeEnabledListener(Landroid/location/LocationManagerInternal$ProviderEnabledListener;)V

    .line 1615
    return-void
.end method

.method public sendNiResponse(II)V
    .locals 1
    .param p1, "notifId"    # I
    .param p2, "userResponse"    # I

    .line 1633
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$LocalService;->this$0:Lcom/android/server/location/LocationManagerService;

    invoke-static {v0}, Lcom/android/server/location/LocationManagerService;->access$000(Lcom/android/server/location/LocationManagerService;)Lcom/android/server/location/gnss/GnssManagerService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1634
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$LocalService;->this$0:Lcom/android/server/location/LocationManagerService;

    invoke-static {v0}, Lcom/android/server/location/LocationManagerService;->access$000(Lcom/android/server/location/LocationManagerService;)Lcom/android/server/location/gnss/GnssManagerService;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/location/gnss/GnssManagerService;->sendNiResponse(II)V

    .line 1636
    :cond_0
    return-void
.end method

.method public setLocationPackageTagsListener(Landroid/location/LocationManagerInternal$LocationPackageTagsListener;)V
    .locals 7
    .param p1, "listener"    # Landroid/location/LocationManagerInternal$LocationPackageTagsListener;

    .line 1657
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$LocalService;->this$0:Lcom/android/server/location/LocationManagerService;

    iget-object v0, v0, Lcom/android/server/location/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1658
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService$LocalService;->this$0:Lcom/android/server/location/LocationManagerService;

    iput-object p1, v1, Lcom/android/server/location/LocationManagerService;->mLocationTagsChangedListener:Landroid/location/LocationManagerInternal$LocationPackageTagsListener;

    .line 1661
    if-eqz p1, :cond_3

    .line 1662
    new-instance v1, Landroid/util/ArraySet;

    iget-object v2, p0, Lcom/android/server/location/LocationManagerService$LocalService;->this$0:Lcom/android/server/location/LocationManagerService;

    iget-object v2, v2, Lcom/android/server/location/LocationManagerService;->mProviderManagers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(I)V

    .line 1663
    .local v1, "uids":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    iget-object v2, p0, Lcom/android/server/location/LocationManagerService$LocalService;->this$0:Lcom/android/server/location/LocationManagerService;

    iget-object v2, v2, Lcom/android/server/location/LocationManagerService;->mProviderManagers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/location/provider/LocationProviderManager;

    .line 1664
    .local v3, "manager":Lcom/android/server/location/provider/LocationProviderManager;
    invoke-virtual {v3}, Lcom/android/server/location/provider/LocationProviderManager;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v4

    .line 1665
    .local v4, "identity":Landroid/location/util/identity/CallerIdentity;
    if-eqz v4, :cond_0

    .line 1666
    invoke-virtual {v4}, Landroid/location/util/identity/CallerIdentity;->getUid()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1668
    .end local v3    # "manager":Lcom/android/server/location/provider/LocationProviderManager;
    .end local v4    # "identity":Landroid/location/util/identity/CallerIdentity;
    :cond_0
    goto :goto_0

    .line 1670
    :cond_1
    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1671
    .local v3, "uid":I
    iget-object v4, p0, Lcom/android/server/location/LocationManagerService$LocalService;->this$0:Lcom/android/server/location/LocationManagerService;

    invoke-virtual {v4, v3}, Lcom/android/server/location/LocationManagerService;->calculateAppOpsLocationSourceTags(I)Landroid/os/PackageTagsList;

    move-result-object v4

    .line 1672
    .local v4, "tags":Landroid/os/PackageTagsList;
    invoke-virtual {v4}, Landroid/os/PackageTagsList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 1673
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v5

    new-instance v6, Lcom/android/server/location/LocationManagerService$LocalService$$ExternalSyntheticLambda0;

    invoke-direct {v6, p1, v3, v4}, Lcom/android/server/location/LocationManagerService$LocalService$$ExternalSyntheticLambda0;-><init>(Landroid/location/LocationManagerInternal$LocationPackageTagsListener;ILandroid/os/PackageTagsList;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1676
    .end local v3    # "uid":I
    .end local v4    # "tags":Landroid/os/PackageTagsList;
    :cond_2
    goto :goto_1

    .line 1678
    .end local v1    # "uids":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    :cond_3
    monitor-exit v0

    .line 1679
    return-void

    .line 1678
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
