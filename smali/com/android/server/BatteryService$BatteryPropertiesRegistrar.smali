.class final Lcom/android/server/BatteryService$BatteryPropertiesRegistrar;
.super Landroid/os/IBatteryPropertiesRegistrar$Stub;
.source "BatteryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BatteryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BatteryPropertiesRegistrar"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BatteryService;


# direct methods
.method private constructor <init>(Lcom/android/server/BatteryService;)V
    .locals 0

    .line 1267
    iput-object p1, p0, Lcom/android/server/BatteryService$BatteryPropertiesRegistrar;->this$0:Lcom/android/server/BatteryService;

    invoke-direct {p0}, Landroid/os/IBatteryPropertiesRegistrar$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/BatteryService;Lcom/android/server/BatteryService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/BatteryService;
    .param p2, "x1"    # Lcom/android/server/BatteryService$1;

    .line 1267
    invoke-direct {p0, p1}, Lcom/android/server/BatteryService$BatteryPropertiesRegistrar;-><init>(Lcom/android/server/BatteryService;)V

    return-void
.end method

.method static synthetic lambda$getProperty$0(Landroid/util/MutableInt;Landroid/os/BatteryProperty;II)V
    .locals 2
    .param p0, "outResult"    # Landroid/util/MutableInt;
    .param p1, "prop"    # Landroid/os/BatteryProperty;
    .param p2, "result"    # I
    .param p3, "value"    # I

    .line 1278
    iput p2, p0, Landroid/util/MutableInt;->value:I

    .line 1279
    if-nez p2, :cond_0

    int-to-long v0, p3

    invoke-virtual {p1, v0, v1}, Landroid/os/BatteryProperty;->setLong(J)V

    .line 1280
    :cond_0
    return-void
.end method

.method static synthetic lambda$getProperty$1(Landroid/util/MutableInt;Landroid/os/BatteryProperty;II)V
    .locals 2
    .param p0, "outResult"    # Landroid/util/MutableInt;
    .param p1, "prop"    # Landroid/os/BatteryProperty;
    .param p2, "result"    # I
    .param p3, "value"    # I

    .line 1284
    iput p2, p0, Landroid/util/MutableInt;->value:I

    .line 1285
    if-nez p2, :cond_0

    int-to-long v0, p3

    invoke-virtual {p1, v0, v1}, Landroid/os/BatteryProperty;->setLong(J)V

    .line 1286
    :cond_0
    return-void
.end method

.method static synthetic lambda$getProperty$2(Landroid/util/MutableInt;Landroid/os/BatteryProperty;II)V
    .locals 2
    .param p0, "outResult"    # Landroid/util/MutableInt;
    .param p1, "prop"    # Landroid/os/BatteryProperty;
    .param p2, "result"    # I
    .param p3, "value"    # I

    .line 1290
    iput p2, p0, Landroid/util/MutableInt;->value:I

    .line 1291
    if-nez p2, :cond_0

    int-to-long v0, p3

    invoke-virtual {p1, v0, v1}, Landroid/os/BatteryProperty;->setLong(J)V

    .line 1292
    :cond_0
    return-void
.end method

.method static synthetic lambda$getProperty$3(Landroid/util/MutableInt;Landroid/os/BatteryProperty;II)V
    .locals 2
    .param p0, "outResult"    # Landroid/util/MutableInt;
    .param p1, "prop"    # Landroid/os/BatteryProperty;
    .param p2, "result"    # I
    .param p3, "value"    # I

    .line 1296
    iput p2, p0, Landroid/util/MutableInt;->value:I

    .line 1297
    if-nez p2, :cond_0

    int-to-long v0, p3

    invoke-virtual {p1, v0, v1}, Landroid/os/BatteryProperty;->setLong(J)V

    .line 1298
    :cond_0
    return-void
.end method

.method static synthetic lambda$getProperty$4(Landroid/util/MutableInt;Landroid/os/BatteryProperty;II)V
    .locals 2
    .param p0, "outResult"    # Landroid/util/MutableInt;
    .param p1, "prop"    # Landroid/os/BatteryProperty;
    .param p2, "result"    # I
    .param p3, "value"    # I

    .line 1302
    iput p2, p0, Landroid/util/MutableInt;->value:I

    .line 1303
    if-nez p2, :cond_0

    int-to-long v0, p3

    invoke-virtual {p1, v0, v1}, Landroid/os/BatteryProperty;->setLong(J)V

    .line 1304
    :cond_0
    return-void
.end method

.method static synthetic lambda$getProperty$5(Landroid/util/MutableInt;Landroid/os/BatteryProperty;IJ)V
    .locals 0
    .param p0, "outResult"    # Landroid/util/MutableInt;
    .param p1, "prop"    # Landroid/os/BatteryProperty;
    .param p2, "result"    # I
    .param p3, "value"    # J

    .line 1308
    iput p2, p0, Landroid/util/MutableInt;->value:I

    .line 1309
    if-nez p2, :cond_0

    invoke-virtual {p1, p3, p4}, Landroid/os/BatteryProperty;->setLong(J)V

    .line 1310
    :cond_0
    return-void
.end method


# virtual methods
.method public getProperty(ILandroid/os/BatteryProperty;)I
    .locals 3
    .param p1, "id"    # I
    .param p2, "prop"    # Landroid/os/BatteryProperty;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1270
    const-string v0, "HealthGetProperty"

    invoke-static {v0}, Lcom/android/server/BatteryService;->access$1200(Ljava/lang/String;)V

    .line 1272
    :try_start_0
    iget-object v0, p0, Lcom/android/server/BatteryService$BatteryPropertiesRegistrar;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v0}, Lcom/android/server/BatteryService;->access$1700(Lcom/android/server/BatteryService;)Lcom/android/server/BatteryService$HealthServiceWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/BatteryService$HealthServiceWrapper;->getLastService()Landroid/hardware/health/V2_0/IHealth;

    move-result-object v0

    .line 1273
    .local v0, "service":Landroid/hardware/health/V2_0/IHealth;
    if-eqz v0, :cond_0

    .line 1274
    new-instance v1, Landroid/util/MutableInt;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/util/MutableInt;-><init>(I)V

    .line 1275
    .local v1, "outResult":Landroid/util/MutableInt;
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 1301
    :pswitch_0
    new-instance v2, Lcom/android/server/BatteryService$BatteryPropertiesRegistrar$$ExternalSyntheticLambda2;

    invoke-direct {v2, v1, p2}, Lcom/android/server/BatteryService$BatteryPropertiesRegistrar$$ExternalSyntheticLambda2;-><init>(Landroid/util/MutableInt;Landroid/os/BatteryProperty;)V

    invoke-interface {v0, v2}, Landroid/hardware/health/V2_0/IHealth;->getChargeStatus(Landroid/hardware/health/V2_0/IHealth$getChargeStatusCallback;)V

    .line 1305
    goto :goto_0

    .line 1307
    :pswitch_1
    new-instance v2, Lcom/android/server/BatteryService$BatteryPropertiesRegistrar$$ExternalSyntheticLambda5;

    invoke-direct {v2, v1, p2}, Lcom/android/server/BatteryService$BatteryPropertiesRegistrar$$ExternalSyntheticLambda5;-><init>(Landroid/util/MutableInt;Landroid/os/BatteryProperty;)V

    invoke-interface {v0, v2}, Landroid/hardware/health/V2_0/IHealth;->getEnergyCounter(Landroid/hardware/health/V2_0/IHealth$getEnergyCounterCallback;)V

    goto :goto_0

    .line 1295
    :pswitch_2
    new-instance v2, Lcom/android/server/BatteryService$BatteryPropertiesRegistrar$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1, p2}, Lcom/android/server/BatteryService$BatteryPropertiesRegistrar$$ExternalSyntheticLambda0;-><init>(Landroid/util/MutableInt;Landroid/os/BatteryProperty;)V

    invoke-interface {v0, v2}, Landroid/hardware/health/V2_0/IHealth;->getCapacity(Landroid/hardware/health/V2_0/IHealth$getCapacityCallback;)V

    .line 1299
    goto :goto_0

    .line 1289
    :pswitch_3
    new-instance v2, Lcom/android/server/BatteryService$BatteryPropertiesRegistrar$$ExternalSyntheticLambda3;

    invoke-direct {v2, v1, p2}, Lcom/android/server/BatteryService$BatteryPropertiesRegistrar$$ExternalSyntheticLambda3;-><init>(Landroid/util/MutableInt;Landroid/os/BatteryProperty;)V

    invoke-interface {v0, v2}, Landroid/hardware/health/V2_0/IHealth;->getCurrentAverage(Landroid/hardware/health/V2_0/IHealth$getCurrentAverageCallback;)V

    .line 1293
    goto :goto_0

    .line 1283
    :pswitch_4
    new-instance v2, Lcom/android/server/BatteryService$BatteryPropertiesRegistrar$$ExternalSyntheticLambda4;

    invoke-direct {v2, v1, p2}, Lcom/android/server/BatteryService$BatteryPropertiesRegistrar$$ExternalSyntheticLambda4;-><init>(Landroid/util/MutableInt;Landroid/os/BatteryProperty;)V

    invoke-interface {v0, v2}, Landroid/hardware/health/V2_0/IHealth;->getCurrentNow(Landroid/hardware/health/V2_0/IHealth$getCurrentNowCallback;)V

    .line 1287
    goto :goto_0

    .line 1277
    :pswitch_5
    new-instance v2, Lcom/android/server/BatteryService$BatteryPropertiesRegistrar$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1, p2}, Lcom/android/server/BatteryService$BatteryPropertiesRegistrar$$ExternalSyntheticLambda1;-><init>(Landroid/util/MutableInt;Landroid/os/BatteryProperty;)V

    invoke-interface {v0, v2}, Landroid/hardware/health/V2_0/IHealth;->getChargeCounter(Landroid/hardware/health/V2_0/IHealth$getChargeCounterCallback;)V

    .line 1281
    nop

    .line 1313
    :goto_0
    iget v2, v1, Landroid/util/MutableInt;->value:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1315
    invoke-static {}, Lcom/android/server/BatteryService;->access$1400()V

    .line 1313
    return v2

    .line 1273
    .end local v1    # "outResult":Landroid/util/MutableInt;
    :cond_0
    :try_start_1
    new-instance v1, Landroid/os/RemoteException;

    const-string/jumbo v2, "no health service"

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/BatteryService$BatteryPropertiesRegistrar;
    .end local p1    # "id":I
    .end local p2    # "prop":Landroid/os/BatteryProperty;
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1315
    .end local v0    # "service":Landroid/hardware/health/V2_0/IHealth;
    .restart local p0    # "this":Lcom/android/server/BatteryService$BatteryPropertiesRegistrar;
    .restart local p1    # "id":I
    .restart local p2    # "prop":Landroid/os/BatteryProperty;
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/android/server/BatteryService;->access$1400()V

    .line 1316
    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic lambda$scheduleUpdate$6$BatteryService$BatteryPropertiesRegistrar()V
    .locals 3

    .line 1321
    const-string v0, "HealthScheduleUpdate"

    invoke-static {v0}, Lcom/android/server/BatteryService;->access$1200(Ljava/lang/String;)V

    .line 1323
    :try_start_0
    iget-object v0, p0, Lcom/android/server/BatteryService$BatteryPropertiesRegistrar;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v0}, Lcom/android/server/BatteryService;->access$1700(Lcom/android/server/BatteryService;)Lcom/android/server/BatteryService$HealthServiceWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/BatteryService$HealthServiceWrapper;->getLastService()Landroid/hardware/health/V2_0/IHealth;

    move-result-object v0

    .line 1324
    .local v0, "service":Landroid/hardware/health/V2_0/IHealth;
    if-nez v0, :cond_0

    .line 1325
    invoke-static {}, Lcom/android/server/BatteryService;->access$1300()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "no health service"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1332
    invoke-static {}, Lcom/android/server/BatteryService;->access$1400()V

    .line 1326
    return-void

    .line 1328
    :cond_0
    :try_start_1
    invoke-interface {v0}, Landroid/hardware/health/V2_0/IHealth;->update()I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1332
    nop

    .end local v0    # "service":Landroid/hardware/health/V2_0/IHealth;
    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 1329
    :catch_0
    move-exception v0

    .line 1330
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_2
    invoke-static {}, Lcom/android/server/BatteryService;->access$1300()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Cannot call update on health HAL"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1332
    nop

    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_0
    invoke-static {}, Lcom/android/server/BatteryService;->access$1400()V

    .line 1333
    nop

    .line 1334
    return-void

    .line 1332
    :goto_1
    invoke-static {}, Lcom/android/server/BatteryService;->access$1400()V

    .line 1333
    throw v0
.end method

.method public scheduleUpdate()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1320
    iget-object v0, p0, Lcom/android/server/BatteryService$BatteryPropertiesRegistrar;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v0}, Lcom/android/server/BatteryService;->access$1700(Lcom/android/server/BatteryService;)Lcom/android/server/BatteryService$HealthServiceWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/BatteryService$HealthServiceWrapper;->getHandlerThread()Landroid/os/HandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/BatteryService$BatteryPropertiesRegistrar$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/android/server/BatteryService$BatteryPropertiesRegistrar$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/BatteryService$BatteryPropertiesRegistrar;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1335
    return-void
.end method
