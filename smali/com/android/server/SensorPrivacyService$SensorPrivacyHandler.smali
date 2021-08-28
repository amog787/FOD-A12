.class final Lcom/android/server/SensorPrivacyService$SensorPrivacyHandler;
.super Landroid/os/Handler;
.source "SensorPrivacyService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SensorPrivacyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SensorPrivacyHandler"
.end annotation


# static fields
.field private static final MESSAGE_SENSOR_PRIVACY_CHANGED:I = 0x1


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDeathRecipients:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/hardware/ISensorPrivacyListener;",
            "Lcom/android/server/SensorPrivacyService$DeathRecipient;",
            ">;"
        }
    .end annotation
.end field

.field private final mIndividualSensorListeners:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseArray<",
            "Landroid/os/RemoteCallbackList<",
            "Landroid/hardware/ISensorPrivacyListener;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final mListenerLock:Ljava/lang/Object;

.field private final mListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/hardware/ISensorPrivacyListener;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/SensorPrivacyService;


# direct methods
.method constructor <init>(Lcom/android/server/SensorPrivacyService;Landroid/os/Looper;Landroid/content/Context;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "context"    # Landroid/content/Context;

    .line 1460
    iput-object p1, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyHandler;->this$0:Lcom/android/server/SensorPrivacyService;

    .line 1461
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1449
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyHandler;->mListenerLock:Ljava/lang/Object;

    .line 1451
    new-instance p1, Landroid/os/RemoteCallbackList;

    invoke-direct {p1}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object p1, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyHandler;->mListeners:Landroid/os/RemoteCallbackList;

    .line 1454
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyHandler;->mIndividualSensorListeners:Landroid/util/SparseArray;

    .line 1462
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyHandler;->mDeathRecipients:Landroid/util/ArrayMap;

    .line 1463
    iput-object p3, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyHandler;->mContext:Landroid/content/Context;

    .line 1464
    return-void
.end method

.method static synthetic lambda$onSensorPrivacyChanged$0(Ljava/lang/Object;)V
    .locals 1
    .param p0, "rec$"    # Ljava/lang/Object;

    .line 1470
    move-object v0, p0

    check-cast v0, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;

    invoke-static {v0}, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->access$2200(Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;)V

    return-void
.end method

.method static synthetic lambda$onSensorPrivacyChanged$1(Ljava/lang/Object;)V
    .locals 1
    .param p0, "rec$"    # Ljava/lang/Object;

    .line 1478
    move-object v0, p0

    check-cast v0, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;

    invoke-static {v0}, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->access$2200(Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;)V

    return-void
.end method

.method static synthetic lambda$removeSuppressPackageReminderToken$2(Ljava/lang/Object;Landroid/util/Pair;Landroid/os/IBinder;)V
    .locals 1
    .param p0, "rec$"    # Ljava/lang/Object;
    .param p1, "x$0"    # Landroid/util/Pair;
    .param p2, "x$1"    # Landroid/os/IBinder;

    .line 1581
    move-object v0, p0

    check-cast v0, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;

    invoke-static {v0, p1, p2}, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->access$2800(Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;Landroid/util/Pair;Landroid/os/IBinder;)V

    return-void
.end method


# virtual methods
.method public addListener(IILandroid/hardware/ISensorPrivacyListener;)V
    .locals 5
    .param p1, "userId"    # I
    .param p2, "sensor"    # I
    .param p3, "listener"    # Landroid/hardware/ISensorPrivacyListener;

    .line 1491
    iget-object v0, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyHandler;->mListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1492
    :try_start_0
    new-instance v1, Lcom/android/server/SensorPrivacyService$DeathRecipient;

    iget-object v2, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyHandler;->this$0:Lcom/android/server/SensorPrivacyService;

    invoke-direct {v1, v2, p3}, Lcom/android/server/SensorPrivacyService$DeathRecipient;-><init>(Lcom/android/server/SensorPrivacyService;Landroid/hardware/ISensorPrivacyListener;)V

    .line 1493
    .local v1, "deathRecipient":Lcom/android/server/SensorPrivacyService$DeathRecipient;
    iget-object v2, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyHandler;->mDeathRecipients:Landroid/util/ArrayMap;

    invoke-virtual {v2, p3, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1494
    iget-object v2, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyHandler;->mIndividualSensorListeners:Landroid/util/SparseArray;

    .line 1495
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    .line 1496
    .local v2, "listenersForUser":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/RemoteCallbackList<Landroid/hardware/ISensorPrivacyListener;>;>;"
    if-nez v2, :cond_0

    .line 1497
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    move-object v2, v3

    .line 1498
    iget-object v3, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyHandler;->mIndividualSensorListeners:Landroid/util/SparseArray;

    invoke-virtual {v3, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1500
    :cond_0
    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/RemoteCallbackList;

    .line 1501
    .local v3, "listeners":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/hardware/ISensorPrivacyListener;>;"
    if-nez v3, :cond_1

    .line 1502
    new-instance v4, Landroid/os/RemoteCallbackList;

    invoke-direct {v4}, Landroid/os/RemoteCallbackList;-><init>()V

    move-object v3, v4

    .line 1503
    invoke-virtual {v2, p2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1505
    :cond_1
    invoke-virtual {v3, p3}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 1506
    nop

    .end local v1    # "deathRecipient":Lcom/android/server/SensorPrivacyService$DeathRecipient;
    .end local v2    # "listenersForUser":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/RemoteCallbackList<Landroid/hardware/ISensorPrivacyListener;>;>;"
    .end local v3    # "listeners":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/hardware/ISensorPrivacyListener;>;"
    monitor-exit v0

    .line 1507
    return-void

    .line 1506
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public addListener(Landroid/hardware/ISensorPrivacyListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/hardware/ISensorPrivacyListener;

    .line 1483
    iget-object v0, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyHandler;->mListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1484
    :try_start_0
    new-instance v1, Lcom/android/server/SensorPrivacyService$DeathRecipient;

    iget-object v2, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyHandler;->this$0:Lcom/android/server/SensorPrivacyService;

    invoke-direct {v1, v2, p1}, Lcom/android/server/SensorPrivacyService$DeathRecipient;-><init>(Lcom/android/server/SensorPrivacyService;Landroid/hardware/ISensorPrivacyListener;)V

    .line 1485
    .local v1, "deathRecipient":Lcom/android/server/SensorPrivacyService$DeathRecipient;
    iget-object v2, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyHandler;->mDeathRecipients:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1486
    iget-object v2, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyHandler;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 1487
    nop

    .end local v1    # "deathRecipient":Lcom/android/server/SensorPrivacyService$DeathRecipient;
    monitor-exit v0

    .line 1488
    return-void

    .line 1487
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public handleSensorPrivacyChanged(IIZ)V
    .locals 9
    .param p1, "userId"    # I
    .param p2, "sensor"    # I
    .param p3, "enabled"    # Z

    .line 1550
    iget-object v0, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyHandler;->this$0:Lcom/android/server/SensorPrivacyService;

    invoke-static {v0}, Lcom/android/server/SensorPrivacyService;->access$2400(Lcom/android/server/SensorPrivacyService;)Lcom/android/server/SensorPrivacyService$SensorPrivacyManagerInternalImpl;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lcom/android/server/SensorPrivacyService$SensorPrivacyManagerInternalImpl;->access$2500(Lcom/android/server/SensorPrivacyService$SensorPrivacyManagerInternalImpl;IIZ)V

    .line 1551
    iget-object v0, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyHandler;->mIndividualSensorListeners:Landroid/util/SparseArray;

    .line 1552
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 1554
    .local v0, "listenersForUser":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/RemoteCallbackList<Landroid/hardware/ISensorPrivacyListener;>;>;"
    iget-object v1, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyHandler;->this$0:Lcom/android/server/SensorPrivacyService;

    invoke-static {v1}, Lcom/android/server/SensorPrivacyService;->access$2600(Lcom/android/server/SensorPrivacyService;)V

    .line 1555
    iget-object v1, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyHandler;->this$0:Lcom/android/server/SensorPrivacyService;

    invoke-static {v1}, Lcom/android/server/SensorPrivacyService;->access$2700(Lcom/android/server/SensorPrivacyService;)I

    move-result v1

    if-ne p1, v1, :cond_0

    .line 1556
    iget-object v1, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyHandler;->this$0:Lcom/android/server/SensorPrivacyService;

    invoke-static {v1}, Lcom/android/server/SensorPrivacyService;->access$2600(Lcom/android/server/SensorPrivacyService;)V

    .line 1559
    :cond_0
    if-nez v0, :cond_1

    .line 1560
    return-void

    .line 1562
    :cond_1
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/RemoteCallbackList;

    .line 1563
    .local v1, "listeners":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/hardware/ISensorPrivacyListener;>;"
    if-nez v1, :cond_2

    .line 1564
    return-void

    .line 1566
    :cond_2
    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 1567
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_3

    .line 1568
    invoke-virtual {v1, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Landroid/hardware/ISensorPrivacyListener;

    .line 1570
    .local v4, "listener":Landroid/hardware/ISensorPrivacyListener;
    :try_start_0
    invoke-interface {v4, p3}, Landroid/hardware/ISensorPrivacyListener;->onSensorPrivacyChanged(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1573
    goto :goto_1

    .line 1571
    :catch_0
    move-exception v5

    .line 1572
    .local v5, "e":Landroid/os/RemoteException;
    invoke-static {}, Lcom/android/server/SensorPrivacyService;->access$600()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Caught an exception notifying listener "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1567
    .end local v4    # "listener":Landroid/hardware/ISensorPrivacyListener;
    .end local v5    # "e":Landroid/os/RemoteException;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1575
    .end local v3    # "i":I
    :cond_3
    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1576
    return-void
.end method

.method public handleSensorPrivacyChanged(Z)V
    .locals 7
    .param p1, "enabled"    # Z

    .line 1537
    iget-object v0, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyHandler;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 1538
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1539
    iget-object v2, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyHandler;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/hardware/ISensorPrivacyListener;

    .line 1541
    .local v2, "listener":Landroid/hardware/ISensorPrivacyListener;
    :try_start_0
    invoke-interface {v2, p1}, Landroid/hardware/ISensorPrivacyListener;->onSensorPrivacyChanged(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1544
    goto :goto_1

    .line 1542
    :catch_0
    move-exception v3

    .line 1543
    .local v3, "e":Landroid/os/RemoteException;
    invoke-static {}, Lcom/android/server/SensorPrivacyService;->access$600()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Caught an exception notifying listener "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1538
    .end local v2    # "listener":Landroid/hardware/ISensorPrivacyListener;
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1546
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyHandler;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1547
    return-void
.end method

.method public onSensorPrivacyChanged(IIZ)V
    .locals 4
    .param p1, "userId"    # I
    .param p2, "sensor"    # I
    .param p3, "enabled"    # Z

    .line 1475
    sget-object v0, Lcom/android/server/SensorPrivacyService$SensorPrivacyHandler$$ExternalSyntheticLambda0;->INSTANCE:Lcom/android/server/SensorPrivacyService$SensorPrivacyHandler$$ExternalSyntheticLambda0;

    .line 1476
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 1475
    invoke-static {v0, p0, v1, v2, v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/SensorPrivacyService$SensorPrivacyHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1477
    sget-object v0, Lcom/android/server/SensorPrivacyService$SensorPrivacyHandler$$ExternalSyntheticLambda4;->INSTANCE:Lcom/android/server/SensorPrivacyService$SensorPrivacyHandler$$ExternalSyntheticLambda4;

    iget-object v1, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyHandler;->this$0:Lcom/android/server/SensorPrivacyService;

    .line 1479
    invoke-static {v1}, Lcom/android/server/SensorPrivacyService;->access$2300(Lcom/android/server/SensorPrivacyService;)Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;

    move-result-object v1

    .line 1478
    invoke-static {v0, v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1477
    invoke-virtual {p0, v0}, Lcom/android/server/SensorPrivacyService$SensorPrivacyHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1480
    return-void
.end method

.method public onSensorPrivacyChanged(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .line 1467
    sget-object v0, Lcom/android/server/SensorPrivacyService$SensorPrivacyHandler$$ExternalSyntheticLambda2;->INSTANCE:Lcom/android/server/SensorPrivacyService$SensorPrivacyHandler$$ExternalSyntheticLambda2;

    .line 1468
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 1467
    invoke-static {v0, p0, v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/SensorPrivacyService$SensorPrivacyHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1469
    sget-object v0, Lcom/android/server/SensorPrivacyService$SensorPrivacyHandler$$ExternalSyntheticLambda3;->INSTANCE:Lcom/android/server/SensorPrivacyService$SensorPrivacyHandler$$ExternalSyntheticLambda3;

    iget-object v1, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyHandler;->this$0:Lcom/android/server/SensorPrivacyService;

    .line 1471
    invoke-static {v1}, Lcom/android/server/SensorPrivacyService;->access$2300(Lcom/android/server/SensorPrivacyService;)Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;

    move-result-object v1

    .line 1470
    invoke-static {v0, v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1469
    invoke-virtual {p0, v0}, Lcom/android/server/SensorPrivacyService$SensorPrivacyHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1472
    return-void
.end method

.method public removeListener(ILandroid/hardware/ISensorPrivacyListener;)V
    .locals 5
    .param p1, "sensor"    # I
    .param p2, "listener"    # Landroid/hardware/ISensorPrivacyListener;

    .line 1520
    iget-object v0, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyHandler;->mListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1521
    :try_start_0
    iget-object v1, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyHandler;->mDeathRecipients:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/SensorPrivacyService$DeathRecipient;

    .line 1522
    .local v1, "deathRecipient":Lcom/android/server/SensorPrivacyService$DeathRecipient;
    if-eqz v1, :cond_0

    .line 1523
    invoke-virtual {v1}, Lcom/android/server/SensorPrivacyService$DeathRecipient;->destroy()V

    .line 1526
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    iget-object v3, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyHandler;->mIndividualSensorListeners:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    .local v3, "numUsers":I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 1527
    iget-object v4, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyHandler;->mIndividualSensorListeners:Landroid/util/SparseArray;

    .line 1528
    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/RemoteCallbackList;

    .line 1529
    .local v4, "callbacks":Landroid/os/RemoteCallbackList;
    if-eqz v4, :cond_1

    .line 1530
    invoke-virtual {v4, p2}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 1526
    .end local v4    # "callbacks":Landroid/os/RemoteCallbackList;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1533
    .end local v1    # "deathRecipient":Lcom/android/server/SensorPrivacyService$DeathRecipient;
    .end local v2    # "i":I
    .end local v3    # "numUsers":I
    :cond_2
    monitor-exit v0

    .line 1534
    return-void

    .line 1533
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeListener(Landroid/hardware/ISensorPrivacyListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/hardware/ISensorPrivacyListener;

    .line 1510
    iget-object v0, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyHandler;->mListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1511
    :try_start_0
    iget-object v1, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyHandler;->mDeathRecipients:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/SensorPrivacyService$DeathRecipient;

    .line 1512
    .local v1, "deathRecipient":Lcom/android/server/SensorPrivacyService$DeathRecipient;
    if-eqz v1, :cond_0

    .line 1513
    invoke-virtual {v1}, Lcom/android/server/SensorPrivacyService$DeathRecipient;->destroy()V

    .line 1515
    :cond_0
    iget-object v2, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyHandler;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 1516
    nop

    .end local v1    # "deathRecipient":Lcom/android/server/SensorPrivacyService$DeathRecipient;
    monitor-exit v0

    .line 1517
    return-void

    .line 1516
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeSuppressPackageReminderToken(Landroid/util/Pair;Landroid/os/IBinder;)V
    .locals 2
    .param p2, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Landroid/os/UserHandle;",
            ">;",
            "Landroid/os/IBinder;",
            ")V"
        }
    .end annotation

    .line 1580
    .local p1, "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/os/UserHandle;>;"
    sget-object v0, Lcom/android/server/SensorPrivacyService$SensorPrivacyHandler$$ExternalSyntheticLambda1;->INSTANCE:Lcom/android/server/SensorPrivacyService$SensorPrivacyHandler$$ExternalSyntheticLambda1;

    iget-object v1, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyHandler;->this$0:Lcom/android/server/SensorPrivacyService;

    .line 1582
    invoke-static {v1}, Lcom/android/server/SensorPrivacyService;->access$2300(Lcom/android/server/SensorPrivacyService;)Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;

    move-result-object v1

    .line 1580
    invoke-static {v0, v1, p1, p2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/SensorPrivacyService$SensorPrivacyHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1583
    return-void
.end method
