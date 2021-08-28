.class final Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;
.super Landroid/os/IExternalVibratorService$Stub;
.source "VibratorManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vibrator/VibratorManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ExternalVibratorService"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService$ExternalVibrationDeathRecipient;
    }
.end annotation


# instance fields
.field mCurrentExternalDeathRecipient:Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService$ExternalVibrationDeathRecipient;

.field final synthetic this$0:Lcom/android/server/vibrator/VibratorManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/vibrator/VibratorManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/vibrator/VibratorManagerService;

    .line 1305
    iput-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-direct {p0}, Landroid/os/IExternalVibratorService$Stub;-><init>()V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;Lcom/android/server/vibrator/Vibration$Status;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;
    .param p1, "x1"    # Lcom/android/server/vibrator/Vibration$Status;

    .line 1305
    invoke-direct {p0, p1}, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->stopExternalVibrateLocked(Lcom/android/server/vibrator/Vibration$Status;)V

    return-void
.end method

.method private hasExternalControlCapability()Z
    .locals 4

    .line 1428
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v1}, Lcom/android/server/vibrator/VibratorManagerService;->access$1400(Lcom/android/server/vibrator/VibratorManagerService;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1429
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v1}, Lcom/android/server/vibrator/VibratorManagerService;->access$1400(Lcom/android/server/vibrator/VibratorManagerService;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/vibrator/VibratorController;

    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Lcom/android/server/vibrator/VibratorController;->hasCapability(J)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1430
    const/4 v1, 0x1

    return v1

    .line 1428
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1433
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private stopExternalVibrateLocked(Lcom/android/server/vibrator/Vibration$Status;)V
    .locals 4
    .param p1, "status"    # Lcom/android/server/vibrator/Vibration$Status;

    .line 1411
    const-wide/32 v0, 0x800000

    const-string v2, "stopExternalVibrateLocked"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1413
    :try_start_0
    iget-object v2, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v2}, Lcom/android/server/vibrator/VibratorManagerService;->access$1500(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 1423
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1414
    return-void

    .line 1416
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v2}, Lcom/android/server/vibrator/VibratorManagerService;->access$1500(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;

    move-result-object v3

    invoke-static {v2, v3, p1}, Lcom/android/server/vibrator/VibratorManagerService;->access$1800(Lcom/android/server/vibrator/VibratorManagerService;Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;Lcom/android/server/vibrator/Vibration$Status;)V

    .line 1417
    iget-object v2, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v2}, Lcom/android/server/vibrator/VibratorManagerService;->access$1500(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->externalVibration:Landroid/os/ExternalVibration;

    iget-object v3, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->mCurrentExternalDeathRecipient:Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService$ExternalVibrationDeathRecipient;

    invoke-virtual {v2, v3}, Landroid/os/ExternalVibration;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;)V

    .line 1419
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->mCurrentExternalDeathRecipient:Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService$ExternalVibrationDeathRecipient;

    .line 1420
    iget-object v3, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v3, v2}, Lcom/android/server/vibrator/VibratorManagerService;->access$1502(Lcom/android/server/vibrator/VibratorManagerService;Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;)Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;

    .line 1421
    iget-object v2, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/server/vibrator/VibratorManagerService;->access$2100(Lcom/android/server/vibrator/VibratorManagerService;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1423
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1424
    nop

    .line 1425
    return-void

    .line 1423
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1424
    throw v2
.end method


# virtual methods
.method public onExternalVibrationStart(Landroid/os/ExternalVibration;)I
    .locals 9
    .param p1, "vib"    # Landroid/os/ExternalVibration;

    .line 1310
    invoke-direct {p0}, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->hasExternalControlCapability()Z

    move-result v0

    const/16 v1, -0x64

    if-nez v0, :cond_0

    .line 1311
    return v1

    .line 1313
    :cond_0
    const-string v0, "android.permission.VIBRATE"

    .line 1314
    invoke-virtual {p1}, Landroid/os/ExternalVibration;->getUid()I

    move-result v2

    const/4 v3, -0x1

    .line 1313
    const/4 v4, 0x1

    invoke-static {v0, v2, v3, v4}, Landroid/app/ActivityManager;->checkComponentPermission(Ljava/lang/String;IIZ)I

    move-result v0

    if-eqz v0, :cond_1

    .line 1316
    const-string v0, "VibratorManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pkg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/ExternalVibration;->getPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/ExternalVibration;->getUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " tried to play externally controlled vibration without VIBRATE permission, ignoring."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1319
    return v1

    .line 1322
    :cond_1
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-virtual {p1}, Landroid/os/ExternalVibration;->getUid()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/ExternalVibration;->getPackage()Ljava/lang/String;

    move-result-object v3

    .line 1323
    invoke-virtual {p1}, Landroid/os/ExternalVibration;->getVibrationAttributes()Landroid/os/VibrationAttributes;

    move-result-object v5

    .line 1322
    invoke-static {v0, v2, v3, v5}, Lcom/android/server/vibrator/VibratorManagerService;->access$1600(Lcom/android/server/vibrator/VibratorManagerService;ILjava/lang/String;Landroid/os/VibrationAttributes;)I

    move-result v0

    .line 1324
    .local v0, "mode":I
    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 1325
    new-instance v3, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;

    iget-object v4, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-direct {v3, v4, p1, v2}, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;-><init>(Lcom/android/server/vibrator/VibratorManagerService;Landroid/os/ExternalVibration;Lcom/android/server/vibrator/VibratorManagerService$1;)V

    move-object v2, v3

    .line 1326
    .local v2, "vibHolder":Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;
    iput v1, v2, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->scale:I

    .line 1327
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 1328
    const-string v1, "VibratorManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Would be an error: external vibrate from uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/ExternalVibration;->getUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1329
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    sget-object v3, Lcom/android/server/vibrator/Vibration$Status;->IGNORED_ERROR_APP_OPS:Lcom/android/server/vibrator/Vibration$Status;

    invoke-static {v1, v2, v3}, Lcom/android/server/vibrator/VibratorManagerService;->access$1800(Lcom/android/server/vibrator/VibratorManagerService;Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;Lcom/android/server/vibrator/Vibration$Status;)V

    goto :goto_0

    .line 1331
    :cond_2
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    sget-object v3, Lcom/android/server/vibrator/Vibration$Status;->IGNORED_APP_OPS:Lcom/android/server/vibrator/Vibration$Status;

    invoke-static {v1, v2, v3}, Lcom/android/server/vibrator/VibratorManagerService;->access$1800(Lcom/android/server/vibrator/VibratorManagerService;Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;Lcom/android/server/vibrator/Vibration$Status;)V

    .line 1333
    :goto_0
    iget v1, v2, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->scale:I

    return v1

    .line 1336
    .end local v2    # "vibHolder":Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;
    :cond_3
    const/4 v1, 0x0

    .line 1337
    .local v1, "cancelingExternalVibration":Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;
    const/4 v3, 0x0

    .line 1339
    .local v3, "cancelingVibration":Lcom/android/server/vibrator/VibrationThread;
    iget-object v5, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v5}, Lcom/android/server/vibrator/VibratorManagerService;->access$100(Lcom/android/server/vibrator/VibratorManagerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 1340
    :try_start_0
    iget-object v6, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v6}, Lcom/android/server/vibrator/VibratorManagerService;->access$1500(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;

    move-result-object v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    .line 1341
    invoke-static {v6}, Lcom/android/server/vibrator/VibratorManagerService;->access$1500(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;

    move-result-object v6

    iget-object v6, v6, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->externalVibration:Landroid/os/ExternalVibration;

    invoke-virtual {v6, p1}, Landroid/os/ExternalVibration;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1344
    iget-object v2, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v2}, Lcom/android/server/vibrator/VibratorManagerService;->access$1500(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;

    move-result-object v2

    iget v2, v2, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->scale:I

    monitor-exit v5

    return v2

    .line 1346
    :cond_4
    iget-object v6, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v6}, Lcom/android/server/vibrator/VibratorManagerService;->access$1500(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;

    move-result-object v6

    if-nez v6, :cond_5

    .line 1349
    iget-object v6, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v6}, Lcom/android/server/vibrator/VibratorManagerService;->access$200(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibrationThread;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 1350
    iget-object v6, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v6, v2}, Lcom/android/server/vibrator/VibratorManagerService;->access$402(Lcom/android/server/vibrator/VibratorManagerService;Lcom/android/server/vibrator/VibrationThread;)Lcom/android/server/vibrator/VibrationThread;

    .line 1351
    iget-object v6, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v6}, Lcom/android/server/vibrator/VibratorManagerService;->access$200(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibrationThread;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/vibrator/VibrationThread;->cancelImmediately()V

    .line 1352
    iget-object v6, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v6}, Lcom/android/server/vibrator/VibratorManagerService;->access$200(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibrationThread;

    move-result-object v6

    move-object v3, v6

    goto :goto_1

    .line 1363
    :cond_5
    iget-object v6, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v6}, Lcom/android/server/vibrator/VibratorManagerService;->access$1500(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;

    move-result-object v6

    iget-object v6, v6, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->externalVibration:Landroid/os/ExternalVibration;

    invoke-virtual {v6}, Landroid/os/ExternalVibration;->mute()Z

    .line 1364
    iget-object v6, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v6}, Lcom/android/server/vibrator/VibratorManagerService;->access$1500(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;

    move-result-object v7

    sget-object v8, Lcom/android/server/vibrator/Vibration$Status;->CANCELLED:Lcom/android/server/vibrator/Vibration$Status;

    invoke-static {v6, v7, v8}, Lcom/android/server/vibrator/VibratorManagerService;->access$1800(Lcom/android/server/vibrator/VibratorManagerService;Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;Lcom/android/server/vibrator/Vibration$Status;)V

    .line 1365
    iget-object v6, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v6}, Lcom/android/server/vibrator/VibratorManagerService;->access$1500(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;

    move-result-object v6

    move-object v1, v6

    .line 1367
    :cond_6
    :goto_1
    iget-object v6, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    new-instance v7, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;

    invoke-direct {v7, v6, p1, v2}, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;-><init>(Lcom/android/server/vibrator/VibratorManagerService;Landroid/os/ExternalVibration;Lcom/android/server/vibrator/VibratorManagerService$1;)V

    invoke-static {v6, v7}, Lcom/android/server/vibrator/VibratorManagerService;->access$1502(Lcom/android/server/vibrator/VibratorManagerService;Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;)Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;

    .line 1368
    new-instance v6, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService$ExternalVibrationDeathRecipient;

    invoke-direct {v6, p0, v2}, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService$ExternalVibrationDeathRecipient;-><init>(Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;Lcom/android/server/vibrator/VibratorManagerService$1;)V

    iput-object v6, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->mCurrentExternalDeathRecipient:Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService$ExternalVibrationDeathRecipient;

    .line 1369
    invoke-virtual {p1, v6}, Landroid/os/ExternalVibration;->linkToDeath(Landroid/os/IBinder$DeathRecipient;)V

    .line 1370
    iget-object v2, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v2}, Lcom/android/server/vibrator/VibratorManagerService;->access$1500(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;

    move-result-object v2

    iget-object v6, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v6}, Lcom/android/server/vibrator/VibratorManagerService;->access$2000(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibrationScaler;

    move-result-object v6

    .line 1371
    invoke-virtual {p1}, Landroid/os/ExternalVibration;->getVibrationAttributes()Landroid/os/VibrationAttributes;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/VibrationAttributes;->getUsage()I

    move-result v7

    .line 1370
    invoke-virtual {v6, v7}, Lcom/android/server/vibrator/VibrationScaler;->getExternalVibrationScale(I)I

    move-result v6

    iput v6, v2, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->scale:I

    .line 1372
    iget-object v2, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v2}, Lcom/android/server/vibrator/VibratorManagerService;->access$1500(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;

    move-result-object v2

    iget v2, v2, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->scale:I

    .line 1373
    .local v2, "scale":I
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1375
    if-eqz v3, :cond_7

    .line 1377
    :try_start_1
    invoke-virtual {v3}, Lcom/android/server/vibrator/VibrationThread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1381
    goto :goto_2

    .line 1378
    :catch_0
    move-exception v5

    .line 1379
    .local v5, "e":Ljava/lang/InterruptedException;
    const-string v6, "Interrupted while waiting for vibration to finish before starting external control"

    invoke-static {v6, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1383
    .end local v5    # "e":Ljava/lang/InterruptedException;
    :cond_7
    :goto_2
    if-nez v1, :cond_8

    .line 1389
    iget-object v5, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v5, v4}, Lcom/android/server/vibrator/VibratorManagerService;->access$2100(Lcom/android/server/vibrator/VibratorManagerService;Z)V

    .line 1394
    :cond_8
    return v2

    .line 1373
    .end local v2    # "scale":I
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public onExternalVibrationStop(Landroid/os/ExternalVibration;)V
    .locals 2
    .param p1, "vib"    # Landroid/os/ExternalVibration;

    .line 1399
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v0}, Lcom/android/server/vibrator/VibratorManagerService;->access$100(Lcom/android/server/vibrator/VibratorManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1400
    :try_start_0
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v1}, Lcom/android/server/vibrator/VibratorManagerService;->access$1500(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    .line 1401
    invoke-static {v1}, Lcom/android/server/vibrator/VibratorManagerService;->access$1500(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->externalVibration:Landroid/os/ExternalVibration;

    invoke-virtual {v1, p1}, Landroid/os/ExternalVibration;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1405
    sget-object v1, Lcom/android/server/vibrator/Vibration$Status;->FINISHED:Lcom/android/server/vibrator/Vibration$Status;

    invoke-direct {p0, v1}, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->stopExternalVibrateLocked(Lcom/android/server/vibrator/Vibration$Status;)V

    .line 1407
    :cond_0
    monitor-exit v0

    .line 1408
    return-void

    .line 1407
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
