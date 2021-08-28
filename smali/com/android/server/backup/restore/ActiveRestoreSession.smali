.class public Lcom/android/server/backup/restore/ActiveRestoreSession;
.super Landroid/app/backup/IRestoreSession$Stub;
.source "ActiveRestoreSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/backup/restore/ActiveRestoreSession$EndRestoreRunnable;
    }
.end annotation


# static fields
.field private static final DEVICE_NAME_FOR_D2D_SET:Ljava/lang/String; = "D2D"

.field private static final TAG:Ljava/lang/String; = "RestoreSession"


# instance fields
.field private final mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

.field private final mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

.field mEnded:Z

.field private final mPackageName:Ljava/lang/String;

.field public mRestoreSets:[Landroid/app/backup/RestoreSet;

.field mTimedOut:Z

.field private final mTransportManager:Lcom/android/server/backup/TransportManager;

.field private final mTransportName:Ljava/lang/String;

.field private final mUserId:I


# direct methods
.method public constructor <init>(Lcom/android/server/backup/UserBackupManagerService;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/backup/utils/BackupEligibilityRules;)V
    .locals 1
    .param p1, "backupManagerService"    # Lcom/android/server/backup/UserBackupManagerService;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "transportName"    # Ljava/lang/String;
    .param p4, "backupEligibilityRules"    # Lcom/android/server/backup/utils/BackupEligibilityRules;

    .line 73
    invoke-direct {p0}, Landroid/app/backup/IRestoreSession$Stub;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mRestoreSets:[Landroid/app/backup/RestoreSet;

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mEnded:Z

    .line 67
    iput-boolean v0, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mTimedOut:Z

    .line 74
    iput-object p1, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 75
    iput-object p2, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mPackageName:Ljava/lang/String;

    .line 76
    invoke-virtual {p1}, Lcom/android/server/backup/UserBackupManagerService;->getTransportManager()Lcom/android/server/backup/TransportManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mTransportManager:Lcom/android/server/backup/TransportManager;

    .line 77
    iput-object p3, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mTransportName:Ljava/lang/String;

    .line 78
    invoke-virtual {p1}, Lcom/android/server/backup/UserBackupManagerService;->getUserId()I

    move-result v0

    iput v0, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mUserId:I

    .line 79
    iput-object p4, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

    .line 80
    return-void
.end method

.method private getBackupEligibilityRules(Landroid/app/backup/RestoreSet;)Lcom/android/server/backup/utils/BackupEligibilityRules;
    .locals 2
    .param p1, "restoreSet"    # Landroid/app/backup/RestoreSet;

    .line 302
    iget-object v0, p1, Landroid/app/backup/RestoreSet;->device:Ljava/lang/String;

    const-string v1, "D2D"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 303
    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 304
    .local v0, "operationType":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/backup/UserBackupManagerService;->getEligibilityRulesForOperation(I)Lcom/android/server/backup/utils/BackupEligibilityRules;

    move-result-object v1

    return-object v1
.end method

.method static synthetic lambda$getAvailableRestoreSets$0(Lcom/android/server/backup/TransportManager;Lcom/android/server/backup/transport/TransportClient;Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;Ljava/lang/String;)V
    .locals 0
    .param p0, "transportManager"    # Lcom/android/server/backup/TransportManager;
    .param p1, "transportClient"    # Lcom/android/server/backup/transport/TransportClient;
    .param p2, "wakelock"    # Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;
    .param p3, "caller"    # Ljava/lang/String;

    .line 126
    invoke-virtual {p0, p1, p3}, Lcom/android/server/backup/TransportManager;->disposeOfTransportClient(Lcom/android/server/backup/transport/TransportClient;Ljava/lang/String;)V

    .line 127
    invoke-virtual {p2}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->release()V

    .line 128
    return-void
.end method

.method static synthetic lambda$sendRestoreToHandlerLocked$4(Lcom/android/server/backup/TransportManager;Lcom/android/server/backup/transport/TransportClient;Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;Ljava/lang/String;)V
    .locals 0
    .param p0, "transportManager"    # Lcom/android/server/backup/TransportManager;
    .param p1, "transportClient"    # Lcom/android/server/backup/transport/TransportClient;
    .param p2, "wakelock"    # Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;
    .param p3, "caller"    # Ljava/lang/String;

    .line 424
    invoke-virtual {p0, p1, p3}, Lcom/android/server/backup/TransportManager;->disposeOfTransportClient(Lcom/android/server/backup/transport/TransportClient;Ljava/lang/String;)V

    .line 425
    invoke-virtual {p2}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->release()V

    .line 426
    return-void
.end method

.method private sendRestoreToHandlerLocked(Ljava/util/function/BiFunction;Ljava/lang/String;)I
    .locals 7
    .param p2, "callerLogString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiFunction<",
            "Lcom/android/server/backup/transport/TransportClient;",
            "Lcom/android/server/backup/internal/OnTaskFinishedListener;",
            "Lcom/android/server/backup/params/RestoreParams;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .line 404
    .local p1, "restoreParamsBuilder":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<Lcom/android/server/backup/transport/TransportClient;Lcom/android/server/backup/internal/OnTaskFinishedListener;Lcom/android/server/backup/params/RestoreParams;>;"
    iget-object v0, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mTransportManager:Lcom/android/server/backup/TransportManager;

    iget-object v1, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mTransportName:Ljava/lang/String;

    .line 405
    invoke-virtual {v0, v1, p2}, Lcom/android/server/backup/TransportManager;->getTransportClient(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/backup/transport/TransportClient;

    move-result-object v0

    .line 406
    .local v0, "transportClient":Lcom/android/server/backup/transport/TransportClient;
    if-nez v0, :cond_0

    .line 407
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Transport "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mTransportName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " got unregistered"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RestoreSession"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    const/4 v1, -0x1

    return v1

    .line 412
    :cond_0
    iget-object v1, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/UserBackupManagerService;->getBackupHandler()Landroid/os/Handler;

    move-result-object v1

    .line 413
    .local v1, "backupHandler":Landroid/os/Handler;
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 415
    iget-object v2, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v2}, Lcom/android/server/backup/UserBackupManagerService;->getWakelock()Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    move-result-object v2

    .line 416
    .local v2, "wakelock":Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;
    invoke-virtual {v2}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->acquire()V

    .line 422
    iget-object v3, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mTransportManager:Lcom/android/server/backup/TransportManager;

    .line 423
    .local v3, "transportManager":Lcom/android/server/backup/TransportManager;
    new-instance v4, Lcom/android/server/backup/restore/ActiveRestoreSession$$ExternalSyntheticLambda1;

    invoke-direct {v4, v3, v0, v2}, Lcom/android/server/backup/restore/ActiveRestoreSession$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/backup/TransportManager;Lcom/android/server/backup/transport/TransportClient;Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;)V

    .line 427
    .local v4, "listener":Lcom/android/server/backup/internal/OnTaskFinishedListener;
    const/4 v5, 0x3

    invoke-virtual {v1, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 428
    .local v5, "msg":Landroid/os/Message;
    invoke-interface {p1, v0, v4}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 429
    invoke-virtual {v1, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 430
    const/4 v6, 0x0

    return v6
.end method


# virtual methods
.method public declared-synchronized endRestoreSession()V
    .locals 3

    monitor-enter p0

    .line 458
    :try_start_0
    const-string v0, "RestoreSession"

    const-string v1, "endRestoreSession"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    iget-boolean v0, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mTimedOut:Z

    if-eqz v0, :cond_0

    .line 462
    const-string v0, "RestoreSession"

    const-string v1, "Session already timed out"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 463
    monitor-exit p0

    return-void

    .line 466
    .end local p0    # "this":Lcom/android/server/backup/restore/ActiveRestoreSession;
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mEnded:Z

    if-nez v0, :cond_1

    .line 470
    iget-object v0, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getBackupHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/backup/restore/ActiveRestoreSession$EndRestoreRunnable;

    iget-object v2, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-direct {v1, p0, v2, p0}, Lcom/android/server/backup/restore/ActiveRestoreSession$EndRestoreRunnable;-><init>(Lcom/android/server/backup/restore/ActiveRestoreSession;Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/restore/ActiveRestoreSession;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 472
    monitor-exit p0

    return-void

    .line 467
    :cond_1
    :try_start_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Restore session already ended"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 457
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAvailableRestoreSets(Landroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;)I
    .locals 16
    .param p1, "observer"    # Landroid/app/backup/IRestoreObserver;
    .param p2, "monitor"    # Landroid/app/backup/IBackupManagerMonitor;

    move-object/from16 v7, p0

    monitor-enter p0

    .line 89
    :try_start_0
    iget-object v0, v7, Lcom/android/server/backup/restore/ActiveRestoreSession;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.BACKUP"

    const-string v2, "getAvailableRestoreSets"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    if-eqz p1, :cond_3

    .line 96
    iget-boolean v0, v7, Lcom/android/server/backup/restore/ActiveRestoreSession;->mEnded:Z

    if-nez v0, :cond_2

    .line 100
    iget-boolean v0, v7, Lcom/android/server/backup/restore/ActiveRestoreSession;->mTimedOut:Z

    const/4 v8, -0x1

    if-eqz v0, :cond_0

    .line 101
    const-string v0, "RestoreSession"

    const-string v1, "Session already timed out"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 102
    monitor-exit p0

    return v8

    .line 105
    .end local p0    # "this":Lcom/android/server/backup/restore/ActiveRestoreSession;
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-wide v9, v0

    .line 107
    .local v9, "oldId":J
    :try_start_2
    iget-object v0, v7, Lcom/android/server/backup/restore/ActiveRestoreSession;->mTransportManager:Lcom/android/server/backup/TransportManager;

    iget-object v1, v7, Lcom/android/server/backup/restore/ActiveRestoreSession;->mTransportName:Ljava/lang/String;

    const-string v2, "RestoreSession.getAvailableRestoreSets()"

    .line 108
    invoke-virtual {v0, v1, v2}, Lcom/android/server/backup/TransportManager;->getTransportClient(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/backup/transport/TransportClient;

    move-result-object v0

    .line 110
    .local v0, "transportClient":Lcom/android/server/backup/transport/TransportClient;
    if-nez v0, :cond_1

    .line 111
    const-string v1, "RestoreSession"

    const-string v2, "Null transport client getting restore sets"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 112
    nop

    .line 138
    :try_start_3
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 112
    monitor-exit p0

    return v8

    .line 118
    :cond_1
    :try_start_4
    iget-object v1, v7, Lcom/android/server/backup/restore/ActiveRestoreSession;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/UserBackupManagerService;->getBackupHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 120
    iget-object v1, v7, Lcom/android/server/backup/restore/ActiveRestoreSession;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/UserBackupManagerService;->getWakelock()Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    move-result-object v1

    move-object v11, v1

    .line 121
    .local v11, "wakelock":Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;
    invoke-virtual {v11}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->acquire()V

    .line 124
    iget-object v1, v7, Lcom/android/server/backup/restore/ActiveRestoreSession;->mTransportManager:Lcom/android/server/backup/TransportManager;

    move-object v12, v1

    .line 125
    .local v12, "transportManager":Lcom/android/server/backup/TransportManager;
    new-instance v6, Lcom/android/server/backup/restore/ActiveRestoreSession$$ExternalSyntheticLambda0;

    invoke-direct {v6, v12, v0, v11}, Lcom/android/server/backup/restore/ActiveRestoreSession$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/backup/TransportManager;Lcom/android/server/backup/transport/TransportClient;Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;)V

    .line 129
    .local v6, "listener":Lcom/android/server/backup/internal/OnTaskFinishedListener;
    iget-object v1, v7, Lcom/android/server/backup/restore/ActiveRestoreSession;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/UserBackupManagerService;->getBackupHandler()Landroid/os/Handler;

    move-result-object v13

    const/4 v14, 0x6

    new-instance v15, Lcom/android/server/backup/params/RestoreGetSetsParams;

    move-object v1, v15

    move-object v2, v0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/server/backup/params/RestoreGetSetsParams;-><init>(Lcom/android/server/backup/transport/TransportClient;Lcom/android/server/backup/restore/ActiveRestoreSession;Landroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;Lcom/android/server/backup/internal/OnTaskFinishedListener;)V

    invoke-virtual {v13, v14, v15}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 132
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, v7, Lcom/android/server/backup/restore/ActiveRestoreSession;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v2}, Lcom/android/server/backup/UserBackupManagerService;->getBackupHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 133
    const/4 v2, 0x0

    .line 138
    :try_start_5
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 133
    monitor-exit p0

    return v2

    .line 138
    .end local v0    # "transportClient":Lcom/android/server/backup/transport/TransportClient;
    .end local v1    # "msg":Landroid/os/Message;
    .end local v6    # "listener":Lcom/android/server/backup/internal/OnTaskFinishedListener;
    .end local v11    # "wakelock":Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;
    .end local v12    # "transportManager":Lcom/android/server/backup/TransportManager;
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 134
    :catch_0
    move-exception v0

    .line 135
    .local v0, "e":Ljava/lang/Exception;
    :try_start_6
    const-string v1, "RestoreSession"

    const-string v2, "Error in getAvailableRestoreSets"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 136
    nop

    .line 138
    :try_start_7
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 136
    monitor-exit p0

    return v8

    .line 138
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    :try_start_8
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 139
    throw v0

    .line 97
    .end local v9    # "oldId":J
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Restore session already ended"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Observer must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 88
    .end local p1    # "observer":Landroid/app/backup/IRestoreObserver;
    .end local p2    # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public synthetic lambda$restoreAll$1$ActiveRestoreSession(Landroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;JLandroid/app/backup/RestoreSet;Lcom/android/server/backup/transport/TransportClient;Lcom/android/server/backup/internal/OnTaskFinishedListener;)Lcom/android/server/backup/params/RestoreParams;
    .locals 7
    .param p1, "observer"    # Landroid/app/backup/IRestoreObserver;
    .param p2, "monitor"    # Landroid/app/backup/IBackupManagerMonitor;
    .param p3, "token"    # J
    .param p5, "restoreSet"    # Landroid/app/backup/RestoreSet;
    .param p6, "transportClient"    # Lcom/android/server/backup/transport/TransportClient;
    .param p7, "listener"    # Lcom/android/server/backup/internal/OnTaskFinishedListener;

    .line 185
    nop

    .line 191
    invoke-direct {p0, p5}, Lcom/android/server/backup/restore/ActiveRestoreSession;->getBackupEligibilityRules(Landroid/app/backup/RestoreSet;)Lcom/android/server/backup/utils/BackupEligibilityRules;

    move-result-object v6

    .line 185
    move-object v0, p6

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v5, p7

    invoke-static/range {v0 .. v6}, Lcom/android/server/backup/params/RestoreParams;->createForRestoreAll(Lcom/android/server/backup/transport/TransportClient;Landroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;JLcom/android/server/backup/internal/OnTaskFinishedListener;Lcom/android/server/backup/utils/BackupEligibilityRules;)Lcom/android/server/backup/params/RestoreParams;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$restorePackage$3$ActiveRestoreSession(Landroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;JLandroid/content/pm/PackageInfo;Lcom/android/server/backup/transport/TransportClient;Lcom/android/server/backup/internal/OnTaskFinishedListener;)Lcom/android/server/backup/params/RestoreParams;
    .locals 8
    .param p1, "observer"    # Landroid/app/backup/IRestoreObserver;
    .param p2, "monitor"    # Landroid/app/backup/IBackupManagerMonitor;
    .param p3, "token"    # J
    .param p5, "app"    # Landroid/content/pm/PackageInfo;
    .param p6, "transportClient"    # Lcom/android/server/backup/transport/TransportClient;
    .param p7, "listener"    # Lcom/android/server/backup/internal/OnTaskFinishedListener;

    .line 380
    iget-object v7, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

    move-object v0, p6

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v5, p5

    move-object v6, p7

    invoke-static/range {v0 .. v7}, Lcom/android/server/backup/params/RestoreParams;->createForSinglePackage(Lcom/android/server/backup/transport/TransportClient;Landroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;JLandroid/content/pm/PackageInfo;Lcom/android/server/backup/internal/OnTaskFinishedListener;Lcom/android/server/backup/utils/BackupEligibilityRules;)Lcom/android/server/backup/params/RestoreParams;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$restorePackages$2$ActiveRestoreSession(Landroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;J[Ljava/lang/String;Landroid/app/backup/RestoreSet;Lcom/android/server/backup/transport/TransportClient;Lcom/android/server/backup/internal/OnTaskFinishedListener;)Lcom/android/server/backup/params/RestoreParams;
    .locals 12
    .param p1, "observer"    # Landroid/app/backup/IRestoreObserver;
    .param p2, "monitor"    # Landroid/app/backup/IBackupManagerMonitor;
    .param p3, "token"    # J
    .param p5, "packages"    # [Ljava/lang/String;
    .param p6, "restoreSet"    # Landroid/app/backup/RestoreSet;
    .param p7, "transportClient"    # Lcom/android/server/backup/transport/TransportClient;
    .param p8, "listener"    # Lcom/android/server/backup/internal/OnTaskFinishedListener;

    .line 278
    move-object/from16 v9, p5

    array-length v0, v9

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    move v6, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    move v6, v0

    .line 286
    :goto_0
    move-object v10, p0

    move-object/from16 v11, p6

    invoke-direct {p0, v11}, Lcom/android/server/backup/restore/ActiveRestoreSession;->getBackupEligibilityRules(Landroid/app/backup/RestoreSet;)Lcom/android/server/backup/utils/BackupEligibilityRules;

    move-result-object v8

    .line 278
    move-object/from16 v0, p7

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object/from16 v5, p5

    move-object/from16 v7, p8

    invoke-static/range {v0 .. v8}, Lcom/android/server/backup/params/RestoreParams;->createForRestorePackages(Lcom/android/server/backup/transport/TransportClient;Landroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;J[Ljava/lang/String;ZLcom/android/server/backup/internal/OnTaskFinishedListener;Lcom/android/server/backup/utils/BackupEligibilityRules;)Lcom/android/server/backup/params/RestoreParams;

    move-result-object v0

    return-object v0
.end method

.method public markTimedOut()V
    .locals 1

    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mTimedOut:Z

    .line 84
    return-void
.end method

.method public declared-synchronized restoreAll(JLandroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;)I
    .locals 14
    .param p1, "token"    # J
    .param p3, "observer"    # Landroid/app/backup/IRestoreObserver;
    .param p4, "monitor"    # Landroid/app/backup/IBackupManagerMonitor;

    move-object v8, p0

    monitor-enter p0

    .line 144
    :try_start_0
    iget-object v0, v8, Lcom/android/server/backup/restore/ActiveRestoreSession;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.BACKUP"

    const-string/jumbo v2, "performRestore"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    const-string v0, "RestoreSession"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "restoreAll token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " observer="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v9, p3

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget-boolean v0, v8, Lcom/android/server/backup/restore/ActiveRestoreSession;->mEnded:Z

    if-nez v0, :cond_6

    .line 157
    iget-boolean v0, v8, Lcom/android/server/backup/restore/ActiveRestoreSession;->mTimedOut:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 158
    const-string v0, "RestoreSession"

    const-string v2, "Session already timed out"

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 159
    monitor-exit p0

    return v1

    .line 162
    .end local p0    # "this":Lcom/android/server/backup/restore/ActiveRestoreSession;
    :cond_0
    :try_start_1
    iget-object v0, v8, Lcom/android/server/backup/restore/ActiveRestoreSession;->mRestoreSets:[Landroid/app/backup/RestoreSet;

    if-nez v0, :cond_1

    .line 163
    const-string v0, "RestoreSession"

    const-string v2, "Ignoring restoreAll() with no restore set"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 164
    monitor-exit p0

    return v1

    .line 167
    :cond_1
    :try_start_2
    iget-object v0, v8, Lcom/android/server/backup/restore/ActiveRestoreSession;->mPackageName:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 168
    const-string v0, "RestoreSession"

    const-string v2, "Ignoring restoreAll() on single-package session"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 169
    monitor-exit p0

    return v1

    .line 172
    :cond_2
    :try_start_3
    iget-object v0, v8, Lcom/android/server/backup/restore/ActiveRestoreSession;->mTransportManager:Lcom/android/server/backup/TransportManager;

    iget-object v2, v8, Lcom/android/server/backup/restore/ActiveRestoreSession;->mTransportName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/android/server/backup/TransportManager;->isTransportRegistered(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 173
    const-string v0, "RestoreSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Transport "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v8, Lcom/android/server/backup/restore/ActiveRestoreSession;->mTransportName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " not registered"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 174
    monitor-exit p0

    return v1

    .line 177
    :cond_3
    :try_start_4
    iget-object v0, v8, Lcom/android/server/backup/restore/ActiveRestoreSession;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getQueueLock()Ljava/lang/Object;

    move-result-object v10

    monitor-enter v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 178
    const/4 v0, 0x0

    move v11, v0

    .local v11, "i":I
    :goto_0
    :try_start_5
    iget-object v0, v8, Lcom/android/server/backup/restore/ActiveRestoreSession;->mRestoreSets:[Landroid/app/backup/RestoreSet;

    array-length v2, v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-ge v11, v2, :cond_5

    .line 179
    :try_start_6
    aget-object v0, v0, v11

    iget-wide v2, v0, Landroid/app/backup/RestoreSet;->token:J

    cmp-long v0, p1, v2

    if-nez v0, :cond_4

    .line 180
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    move-wide v12, v0

    .line 181
    .local v12, "oldId":J
    iget-object v0, v8, Lcom/android/server/backup/restore/ActiveRestoreSession;->mRestoreSets:[Landroid/app/backup/RestoreSet;

    aget-object v7, v0, v11
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 183
    .local v7, "restoreSet":Landroid/app/backup/RestoreSet;
    :try_start_7
    new-instance v0, Lcom/android/server/backup/restore/ActiveRestoreSession$$ExternalSyntheticLambda2;

    move-object v1, v0

    move-object v2, p0

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-wide v5, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/server/backup/restore/ActiveRestoreSession$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/backup/restore/ActiveRestoreSession;Landroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;JLandroid/app/backup/RestoreSet;)V

    const-string v1, "RestoreSession.restoreAll()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/backup/restore/ActiveRestoreSession;->sendRestoreToHandlerLocked(Ljava/util/function/BiFunction;Ljava/lang/String;)I

    move-result v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 194
    :try_start_8
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v10
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 183
    monitor-exit p0

    return v0

    .line 194
    .restart local p0    # "this":Lcom/android/server/backup/restore/ActiveRestoreSession;
    :catchall_0
    move-exception v0

    :try_start_9
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 195
    nop

    .end local p0    # "this":Lcom/android/server/backup/restore/ActiveRestoreSession;
    .end local p1    # "token":J
    .end local p3    # "observer":Landroid/app/backup/IRestoreObserver;
    .end local p4    # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 178
    .end local v7    # "restoreSet":Landroid/app/backup/RestoreSet;
    .end local v12    # "oldId":J
    .restart local p0    # "this":Lcom/android/server/backup/restore/ActiveRestoreSession;
    .restart local p1    # "token":J
    .restart local p3    # "observer":Landroid/app/backup/IRestoreObserver;
    .restart local p4    # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 198
    .end local v11    # "i":I
    :catchall_1
    move-exception v0

    goto :goto_1

    :cond_5
    :try_start_a
    monitor-exit v10
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 200
    :try_start_b
    const-string v0, "RestoreSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Restore token "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " not found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 201
    monitor-exit p0

    return v1

    .line 198
    .end local p0    # "this":Lcom/android/server/backup/restore/ActiveRestoreSession;
    :catchall_2
    move-exception v0

    :goto_1
    :try_start_c
    monitor-exit v10
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    :try_start_d
    throw v0

    .line 154
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Restore session already ended"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 143
    .end local p1    # "token":J
    .end local p3    # "observer":Landroid/app/backup/IRestoreObserver;
    .end local p4    # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    :catchall_3
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized restorePackage(Ljava/lang/String;Landroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;)I
    .locals 18
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "observer"    # Landroid/app/backup/IRestoreObserver;
    .param p3, "monitor"    # Landroid/app/backup/IBackupManagerMonitor;

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    monitor-enter p0

    .line 310
    :try_start_0
    const-string v0, "RestoreSession"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "restorePackage pkg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " obs="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v10, p2

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "monitor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v11, p3

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    iget-boolean v0, v8, Lcom/android/server/backup/restore/ActiveRestoreSession;->mEnded:Z

    if-nez v0, :cond_6

    .line 318
    iget-boolean v0, v8, Lcom/android/server/backup/restore/ActiveRestoreSession;->mTimedOut:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 319
    const-string v0, "RestoreSession"

    const-string v2, "Session already timed out"

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 320
    monitor-exit p0

    return v1

    .line 323
    .end local p0    # "this":Lcom/android/server/backup/restore/ActiveRestoreSession;
    :cond_0
    :try_start_1
    iget-object v0, v8, Lcom/android/server/backup/restore/ActiveRestoreSession;->mPackageName:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 324
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 325
    const-string v0, "RestoreSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring attempt to restore pkg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " on session for package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v8, Lcom/android/server/backup/restore/ActiveRestoreSession;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 327
    monitor-exit p0

    return v1

    .line 333
    :cond_1
    :try_start_2
    iget-object v0, v8, Lcom/android/server/backup/restore/ActiveRestoreSession;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v2, 0x0

    iget v3, v8, Lcom/android/server/backup/restore/ActiveRestoreSession;->mUserId:I

    invoke-virtual {v0, v9, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v12, v0

    .line 338
    .local v12, "app":Landroid/content/pm/PackageInfo;
    nop

    .line 342
    :try_start_3
    iget-object v0, v8, Lcom/android/server/backup/restore/ActiveRestoreSession;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "android.permission.BACKUP"

    .line 344
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 342
    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    move v13, v0

    .line 345
    .local v13, "perm":I
    if-ne v13, v1, :cond_3

    iget-object v0, v12, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 346
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    if-ne v0, v2, :cond_2

    goto :goto_0

    .line 347
    :cond_2
    const-string v0, "RestoreSession"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "restorePackage: bad packageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " or calling uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 347
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "No permission to restore other packages"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 352
    :cond_3
    :goto_0
    iget-object v0, v8, Lcom/android/server/backup/restore/ActiveRestoreSession;->mTransportManager:Lcom/android/server/backup/TransportManager;

    iget-object v2, v8, Lcom/android/server/backup/restore/ActiveRestoreSession;->mTransportName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/android/server/backup/TransportManager;->isTransportRegistered(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 353
    const-string v0, "RestoreSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Transport "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v8, Lcom/android/server/backup/restore/ActiveRestoreSession;->mTransportName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " not registered"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 354
    monitor-exit p0

    return v1

    .line 358
    :cond_4
    :try_start_4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-wide v14, v2

    .line 362
    .local v14, "oldId":J
    :try_start_5
    iget-object v0, v8, Lcom/android/server/backup/restore/ActiveRestoreSession;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0, v9}, Lcom/android/server/backup/UserBackupManagerService;->getAvailableRestoreToken(Ljava/lang/String;)J

    move-result-wide v2

    move-wide/from16 v16, v2

    .line 364
    .local v16, "token":J
    const-string v0, "RestoreSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "restorePackage pkg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 364
    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    const-wide/16 v2, 0x0

    cmp-long v0, v16, v2

    if-nez v0, :cond_5

    .line 373
    const-string v0, "RestoreSession"

    const-string v2, "No data available for this package; not restoring"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 375
    nop

    .line 390
    :try_start_6
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 375
    monitor-exit p0

    return v1

    .line 378
    :cond_5
    :try_start_7
    new-instance v0, Lcom/android/server/backup/restore/ActiveRestoreSession$$ExternalSyntheticLambda3;

    move-object v1, v0

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-wide/from16 v5, v16

    move-object v7, v12

    invoke-direct/range {v1 .. v7}, Lcom/android/server/backup/restore/ActiveRestoreSession$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/backup/restore/ActiveRestoreSession;Landroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;JLandroid/content/pm/PackageInfo;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RestoreSession.restorePackage("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v8, v0, v1}, Lcom/android/server/backup/restore/ActiveRestoreSession;->sendRestoreToHandlerLocked(Ljava/util/function/BiFunction;Ljava/lang/String;)I

    move-result v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 390
    :try_start_8
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 378
    monitor-exit p0

    return v0

    .line 390
    .end local v16    # "token":J
    :catchall_0
    move-exception v0

    :try_start_9
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 391
    throw v0

    .line 335
    .end local v12    # "app":Landroid/content/pm/PackageInfo;
    .end local v13    # "perm":I
    .end local v14    # "oldId":J
    :catch_0
    move-exception v0

    .line 336
    .local v0, "nnf":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "RestoreSession"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Asked to restore nonexistent pkg "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 337
    monitor-exit p0

    return v1

    .line 315
    .end local v0    # "nnf":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_6
    :try_start_a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Restore session already ended"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 309
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "observer":Landroid/app/backup/IRestoreObserver;
    .end local p3    # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized restorePackages(JLandroid/app/backup/IRestoreObserver;[Ljava/lang/String;Landroid/app/backup/IBackupManagerMonitor;)I
    .locals 15
    .param p1, "token"    # J
    .param p3, "observer"    # Landroid/app/backup/IRestoreObserver;
    .param p4, "packages"    # [Ljava/lang/String;
    .param p5, "monitor"    # Landroid/app/backup/IBackupManagerMonitor;

    move-object v9, p0

    move-object/from16 v10, p4

    monitor-enter p0

    .line 207
    :try_start_0
    iget-object v0, v9, Lcom/android/server/backup/restore/ActiveRestoreSession;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.BACKUP"

    const-string/jumbo v2, "performRestore"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 213
    .local v0, "b":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "restorePackages token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    const-string v1, " observer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    if-nez p3, :cond_0

    .line 217
    const-string/jumbo v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 219
    .end local p0    # "this":Lcom/android/server/backup/restore/ActiveRestoreSession;
    :cond_0
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    :goto_0
    const-string v1, " monitor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    if-nez p5, :cond_1

    .line 223
    const-string/jumbo v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 225
    :cond_1
    invoke-virtual/range {p5 .. p5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    :goto_1
    const-string v1, " packages="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    if-nez v10, :cond_2

    .line 229
    const-string/jumbo v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 231
    :cond_2
    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 232
    const/4 v1, 0x1

    .line 233
    .local v1, "first":Z
    array-length v2, v10

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v2, :cond_4

    aget-object v4, v10, v3

    .line 234
    .local v4, "s":Ljava/lang/String;
    if-nez v1, :cond_3

    .line 235
    const-string v5, ", "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 237
    :cond_3
    const/4 v1, 0x0

    .line 239
    :goto_3
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    nop

    .end local v4    # "s":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 241
    :cond_4
    const/16 v2, 0x7d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 243
    .end local v1    # "first":Z
    :goto_4
    const-string v1, "RestoreSession"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    nop

    .end local v0    # "b":Ljava/lang/StringBuilder;
    iget-boolean v0, v9, Lcom/android/server/backup/restore/ActiveRestoreSession;->mEnded:Z

    if-nez v0, :cond_b

    .line 250
    iget-boolean v0, v9, Lcom/android/server/backup/restore/ActiveRestoreSession;->mTimedOut:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_5

    .line 251
    const-string v0, "RestoreSession"

    const-string v2, "Session already timed out"

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 252
    monitor-exit p0

    return v1

    .line 255
    :cond_5
    :try_start_1
    iget-object v0, v9, Lcom/android/server/backup/restore/ActiveRestoreSession;->mRestoreSets:[Landroid/app/backup/RestoreSet;

    if-nez v0, :cond_6

    .line 256
    const-string v0, "RestoreSession"

    const-string v2, "Ignoring restoreAll() with no restore set"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 257
    monitor-exit p0

    return v1

    .line 260
    :cond_6
    :try_start_2
    iget-object v0, v9, Lcom/android/server/backup/restore/ActiveRestoreSession;->mPackageName:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 261
    const-string v0, "RestoreSession"

    const-string v2, "Ignoring restoreAll() on single-package session"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 262
    monitor-exit p0

    return v1

    .line 265
    :cond_7
    :try_start_3
    iget-object v0, v9, Lcom/android/server/backup/restore/ActiveRestoreSession;->mTransportManager:Lcom/android/server/backup/TransportManager;

    iget-object v2, v9, Lcom/android/server/backup/restore/ActiveRestoreSession;->mTransportName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/android/server/backup/TransportManager;->isTransportRegistered(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 266
    const-string v0, "RestoreSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Transport "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v9, Lcom/android/server/backup/restore/ActiveRestoreSession;->mTransportName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " not registered"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 267
    monitor-exit p0

    return v1

    .line 270
    :cond_8
    :try_start_4
    iget-object v0, v9, Lcom/android/server/backup/restore/ActiveRestoreSession;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getQueueLock()Ljava/lang/Object;

    move-result-object v11

    monitor-enter v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 271
    const/4 v0, 0x0

    move v12, v0

    .local v12, "i":I
    :goto_5
    :try_start_5
    iget-object v0, v9, Lcom/android/server/backup/restore/ActiveRestoreSession;->mRestoreSets:[Landroid/app/backup/RestoreSet;

    array-length v2, v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-ge v12, v2, :cond_a

    .line 272
    :try_start_6
    aget-object v0, v0, v12

    iget-wide v2, v0, Landroid/app/backup/RestoreSet;->token:J

    cmp-long v0, p1, v2

    if-nez v0, :cond_9

    .line 273
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    move-wide v13, v0

    .line 274
    .local v13, "oldId":J
    iget-object v0, v9, Lcom/android/server/backup/restore/ActiveRestoreSession;->mRestoreSets:[Landroid/app/backup/RestoreSet;

    aget-object v8, v0, v12
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 276
    .local v8, "restoreSet":Landroid/app/backup/RestoreSet;
    :try_start_7
    new-instance v0, Lcom/android/server/backup/restore/ActiveRestoreSession$$ExternalSyntheticLambda4;

    move-object v1, v0

    move-object v2, p0

    move-object/from16 v3, p3

    move-object/from16 v4, p5

    move-wide/from16 v5, p1

    move-object/from16 v7, p4

    invoke-direct/range {v1 .. v8}, Lcom/android/server/backup/restore/ActiveRestoreSession$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/backup/restore/ActiveRestoreSession;Landroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;J[Ljava/lang/String;Landroid/app/backup/RestoreSet;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RestoreSession.restorePackages("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, v10

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " packages)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/backup/restore/ActiveRestoreSession;->sendRestoreToHandlerLocked(Ljava/util/function/BiFunction;Ljava/lang/String;)I

    move-result v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 289
    :try_start_8
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v11
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 276
    monitor-exit p0

    return v0

    .line 289
    .restart local p0    # "this":Lcom/android/server/backup/restore/ActiveRestoreSession;
    :catchall_0
    move-exception v0

    :try_start_9
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 290
    nop

    .end local p0    # "this":Lcom/android/server/backup/restore/ActiveRestoreSession;
    .end local p1    # "token":J
    .end local p3    # "observer":Landroid/app/backup/IRestoreObserver;
    .end local p4    # "packages":[Ljava/lang/String;
    .end local p5    # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 271
    .end local v8    # "restoreSet":Landroid/app/backup/RestoreSet;
    .end local v13    # "oldId":J
    .restart local p0    # "this":Lcom/android/server/backup/restore/ActiveRestoreSession;
    .restart local p1    # "token":J
    .restart local p3    # "observer":Landroid/app/backup/IRestoreObserver;
    .restart local p4    # "packages":[Ljava/lang/String;
    .restart local p5    # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    :cond_9
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .line 293
    .end local v12    # "i":I
    :catchall_1
    move-exception v0

    goto :goto_6

    :cond_a
    :try_start_a
    monitor-exit v11
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 295
    :try_start_b
    const-string v0, "RestoreSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Restore token "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " not found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 296
    monitor-exit p0

    return v1

    .line 293
    .end local p0    # "this":Lcom/android/server/backup/restore/ActiveRestoreSession;
    :catchall_2
    move-exception v0

    :goto_6
    :try_start_c
    monitor-exit v11
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    :try_start_d
    throw v0

    .line 247
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Restore session already ended"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 206
    .end local p1    # "token":J
    .end local p3    # "observer":Landroid/app/backup/IRestoreObserver;
    .end local p4    # "packages":[Ljava/lang/String;
    .end local p5    # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    :catchall_3
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setRestoreSets([Landroid/app/backup/RestoreSet;)V
    .locals 0
    .param p1, "restoreSets"    # [Landroid/app/backup/RestoreSet;

    .line 395
    iput-object p1, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mRestoreSets:[Landroid/app/backup/RestoreSet;

    .line 396
    return-void
.end method
