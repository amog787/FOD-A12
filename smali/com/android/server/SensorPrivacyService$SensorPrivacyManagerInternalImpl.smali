.class Lcom/android/server/SensorPrivacyService$SensorPrivacyManagerInternalImpl;
.super Landroid/hardware/SensorPrivacyManagerInternal;
.source "SensorPrivacyService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SensorPrivacyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SensorPrivacyManagerInternalImpl"
.end annotation


# instance fields
.field private mAllUserListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Landroid/util/ArraySet<",
            "Landroid/hardware/SensorPrivacyManagerInternal$OnUserSensorPrivacyChangedListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private mListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Landroid/util/ArraySet<",
            "Landroid/hardware/SensorPrivacyManagerInternal$OnSensorPrivacyChangedListener;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field final synthetic this$0:Lcom/android/server/SensorPrivacyService;


# direct methods
.method private constructor <init>(Lcom/android/server/SensorPrivacyService;)V
    .locals 0

    .line 1632
    iput-object p1, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyManagerInternalImpl;->this$0:Lcom/android/server/SensorPrivacyService;

    invoke-direct {p0}, Landroid/hardware/SensorPrivacyManagerInternal;-><init>()V

    .line 1634
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyManagerInternalImpl;->mListeners:Landroid/util/ArrayMap;

    .line 1636
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyManagerInternalImpl;->mAllUserListeners:Landroid/util/ArrayMap;

    .line 1639
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyManagerInternalImpl;->mLock:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/SensorPrivacyService;Lcom/android/server/SensorPrivacyService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/SensorPrivacyService;
    .param p2, "x1"    # Lcom/android/server/SensorPrivacyService$1;

    .line 1632
    invoke-direct {p0, p1}, Lcom/android/server/SensorPrivacyService$SensorPrivacyManagerInternalImpl;-><init>(Lcom/android/server/SensorPrivacyService;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/server/SensorPrivacyService$SensorPrivacyManagerInternalImpl;IIZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/SensorPrivacyService$SensorPrivacyManagerInternalImpl;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .line 1632
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/SensorPrivacyService$SensorPrivacyManagerInternalImpl;->dispatch(IIZ)V

    return-void
.end method

.method private dispatch(IIZ)V
    .locals 8
    .param p1, "userId"    # I
    .param p2, "sensor"    # I
    .param p3, "enabled"    # Z

    .line 1642
    iget-object v0, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyManagerInternalImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1643
    :try_start_0
    iget-object v1, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyManagerInternalImpl;->mAllUserListeners:Landroid/util/ArrayMap;

    .line 1644
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    .line 1645
    .local v1, "allUserSensorListeners":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/hardware/SensorPrivacyManagerInternal$OnUserSensorPrivacyChangedListener;>;"
    if-eqz v1, :cond_0

    .line 1646
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 1647
    nop

    .line 1648
    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/SensorPrivacyManagerInternal$OnUserSensorPrivacyChangedListener;

    .line 1649
    .local v3, "listener":Landroid/hardware/SensorPrivacyManagerInternal$OnUserSensorPrivacyChangedListener;
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Lcom/android/server/SensorPrivacyService$SensorPrivacyManagerInternalImpl$$ExternalSyntheticLambda1;

    invoke-direct {v5, v3, p1, p3}, Lcom/android/server/SensorPrivacyService$SensorPrivacyManagerInternalImpl$$ExternalSyntheticLambda1;-><init>(Landroid/hardware/SensorPrivacyManagerInternal$OnUserSensorPrivacyChangedListener;IZ)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1646
    nop

    .end local v3    # "listener":Landroid/hardware/SensorPrivacyManagerInternal$OnUserSensorPrivacyChangedListener;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1654
    .end local v2    # "i":I
    :cond_0
    iget-object v2, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyManagerInternalImpl;->mListeners:Landroid/util/ArrayMap;

    .line 1655
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArrayMap;

    .line 1656
    .local v2, "userSensorListeners":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Landroid/util/ArraySet<Landroid/hardware/SensorPrivacyManagerInternal$OnSensorPrivacyChangedListener;>;>;"
    if-eqz v2, :cond_1

    .line 1657
    nop

    .line 1658
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArraySet;

    .line 1659
    .local v3, "sensorListeners":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/hardware/SensorPrivacyManagerInternal$OnSensorPrivacyChangedListener;>;"
    if-eqz v3, :cond_1

    .line 1660
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 1661
    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/SensorPrivacyManagerInternal$OnSensorPrivacyChangedListener;

    .line 1662
    .local v5, "listener":Landroid/hardware/SensorPrivacyManagerInternal$OnSensorPrivacyChangedListener;
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v6

    new-instance v7, Lcom/android/server/SensorPrivacyService$SensorPrivacyManagerInternalImpl$$ExternalSyntheticLambda0;

    invoke-direct {v7, v5, p3}, Lcom/android/server/SensorPrivacyService$SensorPrivacyManagerInternalImpl$$ExternalSyntheticLambda0;-><init>(Landroid/hardware/SensorPrivacyManagerInternal$OnSensorPrivacyChangedListener;Z)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1660
    nop

    .end local v5    # "listener":Landroid/hardware/SensorPrivacyManagerInternal$OnSensorPrivacyChangedListener;
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1667
    .end local v1    # "allUserSensorListeners":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/hardware/SensorPrivacyManagerInternal$OnUserSensorPrivacyChangedListener;>;"
    .end local v2    # "userSensorListeners":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Landroid/util/ArraySet<Landroid/hardware/SensorPrivacyManagerInternal$OnSensorPrivacyChangedListener;>;>;"
    .end local v3    # "sensorListeners":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/hardware/SensorPrivacyManagerInternal$OnSensorPrivacyChangedListener;>;"
    .end local v4    # "i":I
    :cond_1
    monitor-exit v0

    .line 1668
    return-void

    .line 1667
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static synthetic lambda$dispatch$0(Landroid/hardware/SensorPrivacyManagerInternal$OnUserSensorPrivacyChangedListener;IZ)V
    .locals 0
    .param p0, "listener"    # Landroid/hardware/SensorPrivacyManagerInternal$OnUserSensorPrivacyChangedListener;
    .param p1, "userId"    # I
    .param p2, "enabled"    # Z

    .line 1650
    invoke-interface {p0, p1, p2}, Landroid/hardware/SensorPrivacyManagerInternal$OnUserSensorPrivacyChangedListener;->onSensorPrivacyChanged(IZ)V

    return-void
.end method

.method static synthetic lambda$dispatch$1(Landroid/hardware/SensorPrivacyManagerInternal$OnSensorPrivacyChangedListener;Z)V
    .locals 0
    .param p0, "listener"    # Landroid/hardware/SensorPrivacyManagerInternal$OnSensorPrivacyChangedListener;
    .param p1, "enabled"    # Z

    .line 1663
    invoke-interface {p0, p1}, Landroid/hardware/SensorPrivacyManagerInternal$OnSensorPrivacyChangedListener;->onSensorPrivacyChanged(Z)V

    return-void
.end method


# virtual methods
.method public addSensorPrivacyListener(IILandroid/hardware/SensorPrivacyManagerInternal$OnSensorPrivacyChangedListener;)V
    .locals 4
    .param p1, "userId"    # I
    .param p2, "sensor"    # I
    .param p3, "listener"    # Landroid/hardware/SensorPrivacyManagerInternal$OnSensorPrivacyChangedListener;

    .line 1679
    iget-object v0, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyManagerInternalImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1680
    :try_start_0
    iget-object v1, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyManagerInternalImpl;->mListeners:Landroid/util/ArrayMap;

    .line 1681
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    .line 1682
    .local v1, "userSensorListeners":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Landroid/util/ArraySet<Landroid/hardware/SensorPrivacyManagerInternal$OnSensorPrivacyChangedListener;>;>;"
    if-nez v1, :cond_0

    .line 1683
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    move-object v1, v2

    .line 1684
    iget-object v2, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyManagerInternalImpl;->mListeners:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1687
    :cond_0
    nop

    .line 1688
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    .line 1689
    .local v2, "sensorListeners":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/hardware/SensorPrivacyManagerInternal$OnSensorPrivacyChangedListener;>;"
    if-nez v2, :cond_1

    .line 1690
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    move-object v2, v3

    .line 1691
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1694
    :cond_1
    invoke-virtual {v2, p3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1695
    nop

    .end local v1    # "userSensorListeners":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Landroid/util/ArraySet<Landroid/hardware/SensorPrivacyManagerInternal$OnSensorPrivacyChangedListener;>;>;"
    .end local v2    # "sensorListeners":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/hardware/SensorPrivacyManagerInternal$OnSensorPrivacyChangedListener;>;"
    monitor-exit v0

    .line 1696
    return-void

    .line 1695
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public addSensorPrivacyListenerForAllUsers(ILandroid/hardware/SensorPrivacyManagerInternal$OnUserSensorPrivacyChangedListener;)V
    .locals 4
    .param p1, "sensor"    # I
    .param p2, "listener"    # Landroid/hardware/SensorPrivacyManagerInternal$OnUserSensorPrivacyChangedListener;

    .line 1701
    iget-object v0, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyManagerInternalImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1702
    :try_start_0
    iget-object v1, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyManagerInternalImpl;->mAllUserListeners:Landroid/util/ArrayMap;

    .line 1703
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    .line 1704
    .local v1, "sensorListeners":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/hardware/SensorPrivacyManagerInternal$OnUserSensorPrivacyChangedListener;>;"
    if-nez v1, :cond_0

    .line 1705
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    move-object v1, v2

    .line 1706
    iget-object v2, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyManagerInternalImpl;->mAllUserListeners:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1709
    :cond_0
    invoke-virtual {v1, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1710
    nop

    .end local v1    # "sensorListeners":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/hardware/SensorPrivacyManagerInternal$OnUserSensorPrivacyChangedListener;>;"
    monitor-exit v0

    .line 1711
    return-void

    .line 1710
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isSensorPrivacyEnabled(II)Z
    .locals 1
    .param p1, "userId"    # I
    .param p2, "sensor"    # I

    .line 1672
    iget-object v0, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyManagerInternalImpl;->this$0:Lcom/android/server/SensorPrivacyService;

    .line 1673
    invoke-static {v0}, Lcom/android/server/SensorPrivacyService;->access$2300(Lcom/android/server/SensorPrivacyService;)Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->isIndividualSensorPrivacyEnabled(II)Z

    move-result v0

    .line 1672
    return v0
.end method
