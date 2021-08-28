.class public Lcom/android/server/backup/restore/FullRestoreEngine;
.super Lcom/android/server/backup/restore/RestoreEngine;
.source "FullRestoreEngine.java"


# instance fields
.field private mAgent:Landroid/app/IBackupAgent;

.field private mAgentPackage:Ljava/lang/String;

.field private final mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

.field final mAllowApks:Z

.field private mAppVersion:J

.field private final mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

.field private final mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

.field final mBuffer:[B

.field private final mClearedPackages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mDeleteObserver:Lcom/android/server/backup/restore/RestoreDeleteObserver;

.field final mEphemeralOpToken:I

.field private final mIsAdbRestore:Z

.field private final mManifestSignatures:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[",
            "Landroid/content/pm/Signature;",
            ">;"
        }
    .end annotation
.end field

.field final mMonitor:Landroid/app/backup/IBackupManagerMonitor;

.field private final mMonitorTask:Lcom/android/server/backup/BackupRestoreTask;

.field private mObbConnection:Lcom/android/server/backup/fullbackup/FullBackupObbConnection;

.field private mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

.field final mOnlyPackage:Landroid/content/pm/PackageInfo;

.field private final mPackageInstallers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackagePolicies:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/backup/restore/RestorePolicy;",
            ">;"
        }
    .end annotation
.end field

.field private mPipes:[Landroid/os/ParcelFileDescriptor;

.field private mPipesClosed:Z

.field private final mPipesLock:Ljava/lang/Object;

.field private mTargetApp:Landroid/content/pm/ApplicationInfo;

.field private final mUserId:I

.field private mWidgetData:[B


# direct methods
.method public constructor <init>(Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/BackupRestoreTask;Landroid/app/backup/IFullBackupRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;Landroid/content/pm/PackageInfo;ZIZLcom/android/server/backup/utils/BackupEligibilityRules;)V
    .locals 2
    .param p1, "backupManagerService"    # Lcom/android/server/backup/UserBackupManagerService;
    .param p2, "monitorTask"    # Lcom/android/server/backup/BackupRestoreTask;
    .param p3, "observer"    # Landroid/app/backup/IFullBackupRestoreObserver;
    .param p4, "monitor"    # Landroid/app/backup/IBackupManagerMonitor;
    .param p5, "onlyPackage"    # Landroid/content/pm/PackageInfo;
    .param p6, "allowApks"    # Z
    .param p7, "ephemeralOpToken"    # I
    .param p8, "isAdbRestore"    # Z
    .param p9, "backupEligibilityRules"    # Lcom/android/server/backup/utils/BackupEligibilityRules;

    .line 140
    invoke-direct {p0}, Lcom/android/server/backup/restore/RestoreEngine;-><init>()V

    .line 79
    new-instance v0, Lcom/android/server/backup/restore/RestoreDeleteObserver;

    invoke-direct {v0}, Lcom/android/server/backup/restore/RestoreDeleteObserver;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mDeleteObserver:Lcom/android/server/backup/restore/RestoreDeleteObserver;

    .line 101
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mObbConnection:Lcom/android/server/backup/fullbackup/FullBackupObbConnection;

    .line 104
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    .line 108
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackageInstallers:Ljava/util/HashMap;

    .line 111
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mManifestSignatures:Ljava/util/HashMap;

    .line 115
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mClearedPackages:Ljava/util/HashSet;

    .line 121
    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    .line 122
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipesLock:Ljava/lang/Object;

    .line 125
    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mWidgetData:[B

    .line 141
    iput-object p1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 142
    iput p7, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mEphemeralOpToken:I

    .line 143
    iput-object p2, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mMonitorTask:Lcom/android/server/backup/BackupRestoreTask;

    .line 144
    iput-object p3, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    .line 145
    iput-object p4, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 146
    iput-object p5, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mOnlyPackage:Landroid/content/pm/PackageInfo;

    .line 147
    iput-boolean p6, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mAllowApks:Z

    .line 148
    const v0, 0x8000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBuffer:[B

    .line 149
    nop

    .line 150
    invoke-virtual {p1}, Lcom/android/server/backup/UserBackupManagerService;->getAgentTimeoutParameters()Lcom/android/server/backup/BackupAgentTimeoutParameters;

    move-result-object v0

    .line 149
    const-string v1, "Timeout parameters cannot be null"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/android/server/backup/BackupAgentTimeoutParameters;

    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    .line 152
    iput-boolean p8, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mIsAdbRestore:Z

    .line 153
    invoke-virtual {p1}, Lcom/android/server/backup/UserBackupManagerService;->getUserId()I

    move-result v0

    iput v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mUserId:I

    .line 154
    iput-object p9, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

    .line 155
    return-void
.end method

.method private static isCanonicalFilePath(Ljava/lang/String;)Z
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .line 668
    const-string v0, ".."

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "//"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 675
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 672
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private isRestorableFile(Lcom/android/server/backup/FileMetadata;)Z
    .locals 4
    .param p1, "info"    # Lcom/android/server/backup/FileMetadata;

    .line 639
    iget-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

    invoke-virtual {v0}, Lcom/android/server/backup/utils/BackupEligibilityRules;->getOperationType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 641
    return v1

    .line 643
    :cond_0
    iget-object v0, p1, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    const-string v2, "c"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 647
    return v2

    .line 650
    :cond_1
    iget-object v0, p1, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    const-string/jumbo v3, "r"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 655
    iget-object v0, p1, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    const-string/jumbo v3, "no_backup/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 659
    return v2

    .line 664
    :cond_2
    return v1
.end method

.method static synthetic lambda$restoreOneFile$0(J)V
    .locals 0
    .param p0, "bytesRead"    # J

    .line 172
    return-void
.end method

.method private setUpPipes()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 573
    iget-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 574
    :try_start_0
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    .line 575
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipesClosed:Z

    .line 576
    monitor-exit v0

    .line 577
    return-void

    .line 576
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private shouldForceClearAppDataOnFullRestore(Ljava/lang/String;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 685
    iget-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 686
    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mUserId:I

    .line 685
    const-string/jumbo v2, "packages_to_clear_data_before_full_restore"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 689
    .local v0, "packageListString":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 690
    const/4 v1, 0x0

    return v1

    .line 693
    :cond_0
    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 694
    .local v1, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method private tearDownAgent(Landroid/content/pm/ApplicationInfo;Z)V
    .locals 7
    .param p1, "app"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "doRestoreFinished"    # Z

    .line 598
    iget-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    if-eqz v0, :cond_2

    .line 601
    if-eqz p2, :cond_1

    .line 602
    :try_start_0
    iget-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->generateRandomIntegerToken()I

    move-result v0

    .line 603
    .local v0, "token":I
    iget-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    .line 604
    invoke-virtual {v1}, Lcom/android/server/backup/BackupAgentTimeoutParameters;->getFullBackupAgentTimeoutMillis()J

    move-result-wide v3

    .line 605
    .local v3, "fullBackupAgentTimeoutMillis":J
    new-instance v5, Lcom/android/server/backup/restore/AdbRestoreFinishedLatch;

    iget-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-direct {v5, v1, v0}, Lcom/android/server/backup/restore/AdbRestoreFinishedLatch;-><init>(Lcom/android/server/backup/UserBackupManagerService;I)V

    .line 607
    .local v5, "latch":Lcom/android/server/backup/restore/AdbRestoreFinishedLatch;
    iget-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    const/4 v6, 0x1

    move v2, v0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/backup/UserBackupManagerService;->prepareOperationTimeout(IJLcom/android/server/backup/BackupRestoreTask;I)V

    .line 609
    iget-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    const-string/jumbo v2, "system"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 613
    new-instance v1, Lcom/android/server/backup/restore/AdbRestoreFinishedRunnable;

    iget-object v2, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    iget-object v6, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-direct {v1, v2, v0, v6}, Lcom/android/server/backup/restore/AdbRestoreFinishedRunnable;-><init>(Landroid/app/IBackupAgent;ILcom/android/server/backup/UserBackupManagerService;)V

    .line 615
    .local v1, "runner":Ljava/lang/Runnable;
    new-instance v2, Ljava/lang/Thread;

    const-string/jumbo v6, "restore-sys-finished-runner"

    invoke-direct {v2, v1, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 616
    .end local v1    # "runner":Ljava/lang/Runnable;
    goto :goto_0

    .line 617
    :cond_0
    iget-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    iget-object v2, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 618
    invoke-virtual {v2}, Lcom/android/server/backup/UserBackupManagerService;->getBackupManagerBinder()Landroid/app/backup/IBackupManager;

    move-result-object v2

    .line 617
    invoke-interface {v1, v0, v2}, Landroid/app/IBackupAgent;->doRestoreFinished(ILandroid/app/backup/IBackupManager;)V

    .line 621
    :goto_0
    invoke-virtual {v5}, Lcom/android/server/backup/restore/AdbRestoreFinishedLatch;->await()V

    .line 624
    .end local v0    # "token":I
    .end local v3    # "fullBackupAgentTimeoutMillis":J
    .end local v5    # "latch":Lcom/android/server/backup/restore/AdbRestoreFinishedLatch;
    :cond_1
    iget-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/backup/UserBackupManagerService;->tearDownAgentAndKill(Landroid/content/pm/ApplicationInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 627
    goto :goto_1

    .line 625
    :catch_0
    move-exception v0

    .line 626
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BackupManagerService"

    const-string v2, "Lost app trying to shut down"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    .line 630
    :cond_2
    return-void
.end method

.method private tearDownPipes()V
    .locals 4

    .line 583
    iget-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 584
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipesClosed:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 586
    const/4 v2, 0x0

    :try_start_1
    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 587
    iget-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 589
    iput-boolean v2, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipesClosed:Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 592
    goto :goto_0

    .line 590
    :catch_0
    move-exception v1

    .line 591
    .local v1, "e":Ljava/io/IOException;
    :try_start_2
    const-string v2, "BackupManagerService"

    const-string v3, "Couldn\'t close agent pipes"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 594
    .end local v1    # "e":Ljava/io/IOException;
    :cond_0
    :goto_0
    monitor-exit v0

    .line 595
    return-void

    .line 594
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method


# virtual methods
.method public getAgent()Landroid/app/IBackupAgent;
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    return-object v0
.end method

.method public getWidgetData()[B
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mWidgetData:[B

    return-object v0
.end method

.method handleTimeout()V
    .locals 1

    .line 633
    invoke-direct {p0}, Lcom/android/server/backup/restore/FullRestoreEngine;->tearDownPipes()V

    .line 634
    const/4 v0, -0x2

    invoke-virtual {p0, v0}, Lcom/android/server/backup/restore/FullRestoreEngine;->setResult(I)V

    .line 635
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/backup/restore/FullRestoreEngine;->setRunning(Z)V

    .line 636
    return-void
.end method

.method public restoreOneFile(Ljava/io/InputStream;Z[BLandroid/content/pm/PackageInfo;ZILandroid/app/backup/IBackupManagerMonitor;)Z
    .locals 50
    .param p1, "instream"    # Ljava/io/InputStream;
    .param p2, "mustKillAgent"    # Z
    .param p3, "buffer"    # [B
    .param p4, "onlyPackage"    # Landroid/content/pm/PackageInfo;
    .param p5, "allowApks"    # Z
    .param p6, "token"    # I
    .param p7, "monitor"    # Landroid/app/backup/IBackupManagerMonitor;

    .line 167
    move-object/from16 v1, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/restore/FullRestoreEngine;->isRunning()Z

    move-result v0

    const/4 v14, 0x0

    const-string v15, "BackupManagerService"

    if-nez v0, :cond_0

    .line 168
    const-string v0, "Restore engine used after halting"

    invoke-static {v15, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    return v14

    .line 172
    :cond_0
    sget-object v10, Lcom/android/server/backup/restore/FullRestoreEngine$$ExternalSyntheticLambda0;->INSTANCE:Lcom/android/server/backup/restore/FullRestoreEngine$$ExternalSyntheticLambda0;

    .line 174
    .local v10, "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    new-instance v0, Lcom/android/server/backup/utils/TarBackupReader;

    move-object/from16 v9, p7

    invoke-direct {v0, v11, v10, v9}, Lcom/android/server/backup/utils/TarBackupReader;-><init>(Ljava/io/InputStream;Lcom/android/server/backup/utils/BytesReadListener;Landroid/app/backup/IBackupManagerMonitor;)V

    move-object v7, v0

    .line 182
    .local v7, "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    const/4 v6, -0x3

    const/16 v24, 0x1

    :try_start_0
    invoke-virtual {v7}, Lcom/android/server/backup/utils/TarBackupReader;->readTarHeaders()Lcom/android/server/backup/FileMetadata;

    move-result-object v0

    move-object v5, v0

    .line 183
    .local v5, "info":Lcom/android/server/backup/FileMetadata;
    if-eqz v5, :cond_21

    .line 188
    iget-object v0, v5, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    move-object v4, v0

    .line 189
    .local v4, "pkg":Ljava/lang/String;
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgentPackage:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1d

    const/4 v2, 0x0

    if-nez v0, :cond_3

    .line 192
    if-eqz v13, :cond_1

    .line 193
    :try_start_1
    iget-object v0, v13, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected data for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " but saw "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    invoke-virtual {v1, v6}, Lcom/android/server/backup/restore/FullRestoreEngine;->setResult(I)V

    .line 196
    invoke-virtual {v1, v14}, Lcom/android/server/backup/restore/FullRestoreEngine;->setRunning(Z)V

    .line 197
    return v14

    .line 203
    :cond_1
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 204
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    sget-object v3, Lcom/android/server/backup/restore/RestorePolicy;->IGNORE:Lcom/android/server/backup/restore/RestorePolicy;

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    :cond_2
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    if-eqz v0, :cond_3

    .line 211
    const-string v0, "Saw new package; finalizing old one"

    invoke-static {v15, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    invoke-direct/range {p0 .. p0}, Lcom/android/server/backup/restore/FullRestoreEngine;->tearDownPipes()V

    .line 215
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    iget-boolean v3, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mIsAdbRestore:Z

    invoke-direct {v1, v0, v3}, Lcom/android/server/backup/restore/FullRestoreEngine;->tearDownAgent(Landroid/content/pm/ApplicationInfo;Z)V

    .line 216
    iput-object v2, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    .line 217
    iput-object v2, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgentPackage:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 550
    .end local v4    # "pkg":Ljava/lang/String;
    .end local v5    # "info":Lcom/android/server/backup/FileMetadata;
    :catch_0
    move-exception v0

    move/from16 v6, p6

    move-object/from16 v40, v10

    move-object v5, v11

    move-object v11, v7

    goto/16 :goto_1b

    .line 221
    .restart local v4    # "pkg":Ljava/lang/String;
    .restart local v5    # "info":Lcom/android/server/backup/FileMetadata;
    :cond_3
    :goto_0
    :try_start_2
    iget-object v0, v5, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    const-string v3, "_manifest"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1d

    if-eqz v0, :cond_4

    .line 222
    :try_start_3
    invoke-virtual {v7, v5}, Lcom/android/server/backup/utils/TarBackupReader;->readAppManifestAndReturnSignatures(Lcom/android/server/backup/FileMetadata;)[Landroid/content/pm/Signature;

    move-result-object v0

    .line 226
    .local v0, "signatures":[Landroid/content/pm/Signature;
    iget-wide v2, v5, Lcom/android/server/backup/FileMetadata;->version:J

    iput-wide v2, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAppVersion:J

    .line 227
    const-class v2, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v21, v2

    check-cast v21, Landroid/content/pm/PackageManagerInternal;

    .line 229
    .local v21, "pmi":Landroid/content/pm/PackageManagerInternal;
    iget-object v2, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 230
    invoke-virtual {v2}, Lcom/android/server/backup/UserBackupManagerService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v17

    iget v2, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mUserId:I

    iget-object v3, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

    .line 229
    move-object/from16 v16, v7

    move/from16 v18, p5

    move-object/from16 v19, v5

    move-object/from16 v20, v0

    move/from16 v22, v2

    move-object/from16 v23, v3

    invoke-virtual/range {v16 .. v23}, Lcom/android/server/backup/utils/TarBackupReader;->chooseRestorePolicy(Landroid/content/pm/PackageManager;ZLcom/android/server/backup/FileMetadata;[Landroid/content/pm/Signature;Landroid/content/pm/PackageManagerInternal;ILcom/android/server/backup/utils/BackupEligibilityRules;)Lcom/android/server/backup/restore/RestorePolicy;

    move-result-object v2

    .line 232
    .local v2, "restorePolicy":Lcom/android/server/backup/restore/RestorePolicy;
    iget-object v3, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mManifestSignatures:Ljava/util/HashMap;

    iget-object v8, v5, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    iget-object v3, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    iget-object v3, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackageInstallers:Ljava/util/HashMap;

    iget-object v8, v5, Lcom/android/server/backup/FileMetadata;->installerPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 238
    move-object/from16 v38, v15

    :try_start_4
    iget-wide v14, v5, Lcom/android/server/backup/FileMetadata;->size:J

    invoke-virtual {v7, v14, v15}, Lcom/android/server/backup/utils/TarBackupReader;->skipTarPadding(J)V

    .line 239
    iget-object v3, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    invoke-static {v3, v4}, Lcom/android/server/backup/utils/FullBackupRestoreObserverUtils;->sendOnRestorePackage(Landroid/app/backup/IFullBackupRestoreObserver;Ljava/lang/String;)Landroid/app/backup/IFullBackupRestoreObserver;

    move-result-object v3

    iput-object v3, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 240
    .end local v0    # "signatures":[Landroid/content/pm/Signature;
    .end local v2    # "restorePolicy":Lcom/android/server/backup/restore/RestorePolicy;
    .end local v21    # "pmi":Landroid/content/pm/PackageManagerInternal;
    move/from16 v6, p6

    move-object v3, v5

    move-object/from16 v40, v10

    move-object v5, v11

    move-object v11, v7

    goto/16 :goto_18

    :cond_4
    move-object/from16 v38, v15

    :try_start_5
    iget-object v0, v5, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    const-string v3, "_meta"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1c

    if-eqz v0, :cond_5

    .line 242
    :try_start_6
    invoke-virtual {v7, v5}, Lcom/android/server/backup/utils/TarBackupReader;->readMetadata(Lcom/android/server/backup/FileMetadata;)V

    .line 248
    invoke-virtual {v7}, Lcom/android/server/backup/utils/TarBackupReader;->getWidgetData()[B

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mWidgetData:[B

    .line 250
    invoke-virtual {v7}, Lcom/android/server/backup/utils/TarBackupReader;->getMonitor()Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    move-object v2, v0

    .line 252
    .end local p7    # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    .local v2, "monitor":Landroid/app/backup/IBackupManagerMonitor;
    :try_start_7
    iget-wide v8, v5, Lcom/android/server/backup/FileMetadata;->size:J

    invoke-virtual {v7, v8, v9}, Lcom/android/server/backup/utils/TarBackupReader;->skipTarPadding(J)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    move/from16 v6, p6

    move-object v3, v5

    move-object/from16 v40, v10

    move-object v5, v11

    move-object v11, v7

    goto/16 :goto_19

    .line 550
    .end local v4    # "pkg":Ljava/lang/String;
    .end local v5    # "info":Lcom/android/server/backup/FileMetadata;
    :catch_1
    move-exception v0

    move/from16 v6, p6

    move-object v9, v2

    move-object/from16 v40, v10

    move-object v5, v11

    move-object/from16 v15, v38

    move-object v11, v7

    goto/16 :goto_1b

    .end local v2    # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    .restart local p7    # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    :catch_2
    move-exception v0

    move/from16 v6, p6

    move-object/from16 v40, v10

    move-object v5, v11

    move-object/from16 v15, v38

    move-object v11, v7

    goto/16 :goto_1b

    .line 256
    .restart local v4    # "pkg":Ljava/lang/String;
    .restart local v5    # "info":Lcom/android/server/backup/FileMetadata;
    :cond_5
    const/4 v0, 0x1

    .line 257
    .local v0, "okay":Z
    :try_start_8
    iget-object v3, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/backup/restore/RestorePolicy;

    move-object v14, v3

    .line 258
    .local v14, "policy":Lcom/android/server/backup/restore/RestorePolicy;
    sget-object v3, Lcom/android/server/backup/restore/FullRestoreEngine$1;->$SwitchMap$com$android$server$backup$restore$RestorePolicy:[I

    invoke-virtual {v14}, Lcom/android/server/backup/restore/RestorePolicy;->ordinal()I

    move-result v8

    aget v3, v3, v8
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1c

    const-string v8, "a"

    packed-switch v3, :pswitch_data_0

    .line 311
    move/from16 v17, v0

    move-object v13, v4

    move-object v3, v5

    move-object v11, v7

    move-object/from16 v40, v10

    move-object/from16 v15, v38

    move-object/from16 v38, v14

    .end local v0    # "okay":Z
    .end local v4    # "pkg":Ljava/lang/String;
    .end local v5    # "info":Lcom/android/server/backup/FileMetadata;
    .end local v7    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .end local v10    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .end local v14    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    .local v3, "info":Lcom/android/server/backup/FileMetadata;
    .local v11, "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .local v13, "pkg":Ljava/lang/String;
    .local v17, "okay":Z
    .local v38, "policy":Lcom/android/server/backup/restore/RestorePolicy;
    .local v40, "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    goto/16 :goto_2

    .line 295
    .end local v3    # "info":Lcom/android/server/backup/FileMetadata;
    .end local v11    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .end local v13    # "pkg":Ljava/lang/String;
    .end local v17    # "okay":Z
    .end local v38    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    .end local v40    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local v0    # "okay":Z
    .restart local v4    # "pkg":Ljava/lang/String;
    .restart local v5    # "info":Lcom/android/server/backup/FileMetadata;
    .restart local v7    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v10    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local v14    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    :pswitch_0
    :try_start_9
    iget-object v3, v5, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 297
    const-string v3, "apk present but ACCEPT"
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    move-object/from16 v15, v38

    :try_start_a
    invoke-static {v15, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0

    .line 303
    const/4 v0, 0x0

    move-object v13, v4

    move-object v3, v5

    move-object v11, v7

    move-object/from16 v40, v10

    move-object/from16 v38, v14

    goto/16 :goto_3

    .line 295
    :cond_6
    move-object/from16 v15, v38

    move-object v13, v4

    move-object v3, v5

    move-object v11, v7

    move-object/from16 v40, v10

    move-object/from16 v38, v14

    goto/16 :goto_3

    .line 550
    .end local v0    # "okay":Z
    .end local v4    # "pkg":Ljava/lang/String;
    .end local v5    # "info":Lcom/android/server/backup/FileMetadata;
    .end local v14    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    :catch_3
    move-exception v0

    move-object/from16 v15, v38

    move/from16 v6, p6

    move-object/from16 v40, v10

    move-object v5, v11

    move-object v11, v7

    goto/16 :goto_1b

    .line 266
    .restart local v0    # "okay":Z
    .restart local v4    # "pkg":Ljava/lang/String;
    .restart local v5    # "info":Lcom/android/server/backup/FileMetadata;
    .restart local v14    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    :pswitch_1
    move-object/from16 v15, v38

    :try_start_b
    iget-object v3, v5, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 268
    const-string v2, "APK file; installing"

    invoke-static {v15, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    iget-object v2, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackageInstallers:Ljava/util/HashMap;

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Ljava/lang/String;

    .line 272
    .local v8, "installerPackageName":Ljava/lang/String;
    iget-object v2, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 273
    invoke-virtual {v2}, Lcom/android/server/backup/UserBackupManagerService;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v2, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mDeleteObserver:Lcom/android/server/backup/restore/RestoreDeleteObserver;

    iget-object v6, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mManifestSignatures:Ljava/util/HashMap;

    move/from16 v17, v0

    .end local v0    # "okay":Z
    .restart local v17    # "okay":Z
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    move-object/from16 v38, v14

    .end local v14    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    .restart local v38    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    iget v14, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mUserId:I
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4

    .line 272
    move-object/from16 v18, v2

    move-object/from16 v2, p1

    move-object v13, v4

    .end local v4    # "pkg":Ljava/lang/String;
    .restart local v13    # "pkg":Ljava/lang/String;
    move-object/from16 v4, v18

    move-object/from16 v39, v5

    .end local v5    # "info":Lcom/android/server/backup/FileMetadata;
    .local v39, "info":Lcom/android/server/backup/FileMetadata;
    move-object v5, v6

    move-object v6, v0

    move-object v11, v7

    .end local v7    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v11    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    move-object/from16 v7, v39

    move-object v9, v10

    move-object/from16 v40, v10

    .end local v10    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local v40    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    move v10, v14

    :try_start_c
    invoke-static/range {v2 .. v10}, Lcom/android/server/backup/utils/RestoreUtils;->installApk(Ljava/io/InputStream;Landroid/content/Context;Lcom/android/server/backup/restore/RestoreDeleteObserver;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/android/server/backup/FileMetadata;Ljava/lang/String;Lcom/android/server/backup/utils/BytesReadListener;I)Z

    move-result v0

    .line 278
    .local v0, "isSuccessfullyInstalled":Z
    iget-object v2, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    if-eqz v0, :cond_7

    .line 279
    sget-object v3, Lcom/android/server/backup/restore/RestorePolicy;->ACCEPT:Lcom/android/server/backup/restore/RestorePolicy;

    goto :goto_1

    .line 280
    :cond_7
    sget-object v3, Lcom/android/server/backup/restore/RestorePolicy;->IGNORE:Lcom/android/server/backup/restore/RestorePolicy;

    .line 278
    :goto_1
    invoke-virtual {v2, v13, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    move-object/from16 v3, v39

    .end local v39    # "info":Lcom/android/server/backup/FileMetadata;
    .restart local v3    # "info":Lcom/android/server/backup/FileMetadata;
    iget-wide v4, v3, Lcom/android/server/backup/FileMetadata;->size:J

    invoke-virtual {v11, v4, v5}, Lcom/android/server/backup/utils/TarBackupReader;->skipTarPadding(J)V

    .line 285
    return v24

    .line 289
    .end local v3    # "info":Lcom/android/server/backup/FileMetadata;
    .end local v8    # "installerPackageName":Ljava/lang/String;
    .end local v11    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .end local v13    # "pkg":Ljava/lang/String;
    .end local v17    # "okay":Z
    .end local v38    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    .end local v40    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .local v0, "okay":Z
    .restart local v4    # "pkg":Ljava/lang/String;
    .restart local v5    # "info":Lcom/android/server/backup/FileMetadata;
    .restart local v7    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v10    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local v14    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    :cond_8
    move/from16 v17, v0

    move-object v13, v4

    move-object v3, v5

    move-object v11, v7

    move-object/from16 v40, v10

    move-object/from16 v38, v14

    .end local v0    # "okay":Z
    .end local v4    # "pkg":Ljava/lang/String;
    .end local v5    # "info":Lcom/android/server/backup/FileMetadata;
    .end local v7    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .end local v10    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .end local v14    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    .restart local v3    # "info":Lcom/android/server/backup/FileMetadata;
    .restart local v11    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v13    # "pkg":Ljava/lang/String;
    .restart local v17    # "okay":Z
    .restart local v38    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    .restart local v40    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    sget-object v4, Lcom/android/server/backup/restore/RestorePolicy;->IGNORE:Lcom/android/server/backup/restore/RestorePolicy;

    invoke-virtual {v0, v13, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    const/4 v0, 0x0

    .line 292
    .end local v17    # "okay":Z
    .restart local v0    # "okay":Z
    goto :goto_3

    .line 550
    .end local v0    # "okay":Z
    .end local v3    # "info":Lcom/android/server/backup/FileMetadata;
    .end local v11    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .end local v13    # "pkg":Ljava/lang/String;
    .end local v38    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    .end local v40    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local v7    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v10    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    :catch_4
    move-exception v0

    move-object/from16 v40, v10

    move-object/from16 v5, p1

    move/from16 v6, p6

    move-object/from16 v9, p7

    move-object v11, v7

    goto/16 :goto_1b

    .line 260
    .restart local v0    # "okay":Z
    .restart local v4    # "pkg":Ljava/lang/String;
    .restart local v5    # "info":Lcom/android/server/backup/FileMetadata;
    .restart local v14    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    :pswitch_2
    move/from16 v17, v0

    move-object v13, v4

    move-object v3, v5

    move-object v11, v7

    move-object/from16 v40, v10

    move-object/from16 v15, v38

    move-object/from16 v38, v14

    .end local v0    # "okay":Z
    .end local v4    # "pkg":Ljava/lang/String;
    .end local v5    # "info":Lcom/android/server/backup/FileMetadata;
    .end local v7    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .end local v10    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .end local v14    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    .restart local v3    # "info":Lcom/android/server/backup/FileMetadata;
    .restart local v11    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v13    # "pkg":Ljava/lang/String;
    .restart local v17    # "okay":Z
    .restart local v38    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    .restart local v40    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    const/4 v0, 0x0

    .line 261
    .end local v17    # "okay":Z
    .restart local v0    # "okay":Z
    goto :goto_3

    .line 311
    .end local v0    # "okay":Z
    .restart local v17    # "okay":Z
    :goto_2
    const-string v0, "Invalid policy from manifest"

    invoke-static {v15, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    const/4 v0, 0x0

    .line 313
    .end local v17    # "okay":Z
    .restart local v0    # "okay":Z
    iget-object v4, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    sget-object v5, Lcom/android/server/backup/restore/RestorePolicy;->IGNORE:Lcom/android/server/backup/restore/RestorePolicy;

    invoke-virtual {v4, v13, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    :goto_3
    invoke-direct {v1, v3}, Lcom/android/server/backup/restore/FullRestoreEngine;->isRestorableFile(Lcom/android/server/backup/FileMetadata;)Z

    move-result v4

    if-eqz v4, :cond_a

    iget-object v4, v3, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/server/backup/restore/FullRestoreEngine;->isCanonicalFilePath(Ljava/lang/String;)Z

    move-result v4
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_1b

    if-nez v4, :cond_9

    goto :goto_4

    :cond_9
    move v4, v0

    goto :goto_5

    .line 319
    :cond_a
    :goto_4
    const/4 v0, 0x0

    move v4, v0

    .line 327
    .end local v0    # "okay":Z
    .local v4, "okay":Z
    :goto_5
    const-string/jumbo v5, "k"

    if-eqz v4, :cond_f

    :try_start_d
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_1b

    if-nez v0, :cond_f

    .line 333
    :try_start_e
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 334
    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget v6, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mUserId:I

    .line 335
    const/4 v7, 0x0

    invoke-virtual {v0, v13, v7, v6}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    .line 339
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mClearedPackages:Ljava/util/HashSet;

    invoke-virtual {v0, v13}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 346
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/android/server/backup/restore/FullRestoreEngine;->shouldForceClearAppDataOnFullRestore(Ljava/lang/String;)Z

    move-result v0

    .line 348
    .local v0, "forceClear":Z
    iget-object v6, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    if-eqz v6, :cond_b

    if-eqz v0, :cond_c

    .line 350
    :cond_b
    const-string v6, "Clearing app data preparatory to full restore"

    invoke-static {v15, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    iget-object v6, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v6, v13}, Lcom/android/server/backup/UserBackupManagerService;->clearApplicationDataBeforeRestore(Ljava/lang/String;)V

    .line 360
    :cond_c
    iget-object v6, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mClearedPackages:Ljava/util/HashSet;

    invoke-virtual {v6, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 369
    .end local v0    # "forceClear":Z
    :cond_d
    invoke-direct/range {p0 .. p0}, Lcom/android/server/backup/restore/FullRestoreEngine;->setUpPipes()V

    .line 370
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v6, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    .line 371
    iget-object v7, v3, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 372
    const/4 v7, 0x0

    goto :goto_6

    .line 373
    :cond_e
    const/4 v7, 0x3

    :goto_6
    iget-object v8, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

    .line 374
    invoke-virtual {v8}, Lcom/android/server/backup/utils/BackupEligibilityRules;->getOperationType()I

    move-result v8

    .line 370
    invoke-virtual {v0, v6, v7, v8}, Lcom/android/server/backup/UserBackupManagerService;->bindToAgentSynchronous(Landroid/content/pm/ApplicationInfo;II)Landroid/app/IBackupAgent;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    .line 375
    iput-object v13, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgentPackage:Ljava/lang/String;
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_e .. :try_end_e} :catch_5

    .line 378
    goto :goto_7

    .line 376
    :catch_5
    move-exception v0

    .line 380
    :goto_7
    :try_start_f
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    if-nez v0, :cond_f

    .line 381
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to create agent for "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    const/4 v4, 0x0

    .line 383
    invoke-direct/range {p0 .. p0}, Lcom/android/server/backup/restore/FullRestoreEngine;->tearDownPipes()V

    .line 384
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    sget-object v6, Lcom/android/server/backup/restore/RestorePolicy;->IGNORE:Lcom/android/server/backup/restore/RestorePolicy;

    invoke-virtual {v0, v13, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    :cond_f
    if-eqz v4, :cond_10

    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgentPackage:Ljava/lang/String;

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 391
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Restoring data for "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " but agent is for "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgentPackage:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_1b

    .line 393
    const/4 v4, 0x0

    .line 400
    :cond_10
    if-eqz v4, :cond_1b

    .line 401
    const/4 v8, 0x1

    .line 402
    .local v8, "agentSuccess":Z
    :try_start_10
    iget-wide v9, v3, Lcom/android/server/backup/FileMetadata;->size:J

    .line 403
    .local v9, "toCopy":J
    const-string v0, "com.android.sharedstoragebackup"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_18

    move v14, v0

    .line 404
    .local v14, "isSharedStorage":Z
    if-eqz v14, :cond_11

    .line 405
    :try_start_11
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupAgentTimeoutParameters;->getSharedBackupAgentTimeoutMillis()J

    move-result-wide v16
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_1b

    move-wide/from16 v43, v16

    goto :goto_8

    .line 406
    :cond_11
    :try_start_12
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    iget-object v2, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v2}, Lcom/android/server/backup/BackupAgentTimeoutParameters;->getRestoreAgentTimeoutMillis(I)J

    move-result-wide v16
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_18

    move-wide/from16 v43, v16

    :goto_8
    nop

    .line 409
    .local v43, "timeout":J
    :try_start_13
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v2, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mMonitorTask:Lcom/android/server/backup/BackupRestoreTask;

    const/16 v46, 0x1

    move-object/from16 v41, v0

    move/from16 v42, p6

    move-object/from16 v45, v2

    invoke-virtual/range {v41 .. v46}, Lcom/android/server/backup/UserBackupManagerService;->prepareOperationTimeout(IJLcom/android/server/backup/BackupRestoreTask;I)V

    .line 414
    const-string/jumbo v0, "obb"

    iget-object v2, v3, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_14
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_13} :catch_12

    const-string v2, " : "

    if-eqz v0, :cond_12

    .line 416
    :try_start_14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Restoring OBB file for "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v3, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mObbConnection:Lcom/android/server/backup/fullbackup/FullBackupObbConnection;

    iget-object v2, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v5, 0x0

    aget-object v27, v2, v5

    iget-wide v6, v3, Lcom/android/server/backup/FileMetadata;->size:J

    iget v2, v3, Lcom/android/server/backup/FileMetadata;->type:I

    iget-object v5, v3, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_b
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_14} :catch_a

    move/from16 v45, v8

    move-wide/from16 v46, v9

    .end local v8    # "agentSuccess":Z
    .end local v9    # "toCopy":J
    .local v45, "agentSuccess":Z
    .local v46, "toCopy":J
    :try_start_15
    iget-wide v8, v3, Lcom/android/server/backup/FileMetadata;->mode:J
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_9
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_15} :catch_8

    move-object/from16 v48, v11

    .end local v11    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .local v48, "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    :try_start_16
    iget-wide v10, v3, Lcom/android/server/backup/FileMetadata;->mtime:J
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_7
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_16} :catch_6

    move/from16 v49, v4

    .end local v4    # "okay":Z
    .local v49, "okay":Z
    :try_start_17
    iget-object v4, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 422
    invoke-virtual {v4}, Lcom/android/server/backup/UserBackupManagerService;->getBackupManagerBinder()Landroid/app/backup/IBackupManager;

    move-result-object v37

    .line 419
    move-object/from16 v25, v0

    move-object/from16 v26, v13

    move-wide/from16 v28, v6

    move/from16 v30, v2

    move-object/from16 v31, v5

    move-wide/from16 v32, v8

    move-wide/from16 v34, v10

    move/from16 v36, p6

    invoke-virtual/range {v25 .. v37}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->restoreObbFile(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;JILjava/lang/String;JJILandroid/app/backup/IBackupManager;)V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_d
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_17} :catch_c

    move/from16 v16, v14

    goto/16 :goto_9

    .line 462
    .end local v49    # "okay":Z
    .restart local v4    # "okay":Z
    :catch_6
    move-exception v0

    move/from16 v49, v4

    move/from16 v16, v14

    .end local v4    # "okay":Z
    .restart local v49    # "okay":Z
    goto/16 :goto_a

    .line 457
    .end local v49    # "okay":Z
    .restart local v4    # "okay":Z
    :catch_7
    move-exception v0

    move/from16 v49, v4

    move/from16 v16, v14

    .end local v4    # "okay":Z
    .restart local v49    # "okay":Z
    goto/16 :goto_b

    .line 462
    .end local v48    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .end local v49    # "okay":Z
    .restart local v4    # "okay":Z
    .restart local v11    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    :catch_8
    move-exception v0

    move/from16 v49, v4

    move-object/from16 v48, v11

    move/from16 v16, v14

    .end local v4    # "okay":Z
    .end local v11    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v48    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v49    # "okay":Z
    goto/16 :goto_a

    .line 457
    .end local v48    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .end local v49    # "okay":Z
    .restart local v4    # "okay":Z
    .restart local v11    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    :catch_9
    move-exception v0

    move/from16 v49, v4

    move-object/from16 v48, v11

    move/from16 v16, v14

    .end local v4    # "okay":Z
    .end local v11    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v48    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v49    # "okay":Z
    goto/16 :goto_b

    .line 462
    .end local v45    # "agentSuccess":Z
    .end local v46    # "toCopy":J
    .end local v48    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .end local v49    # "okay":Z
    .restart local v4    # "okay":Z
    .restart local v8    # "agentSuccess":Z
    .restart local v9    # "toCopy":J
    .restart local v11    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    :catch_a
    move-exception v0

    move/from16 v49, v4

    move/from16 v45, v8

    move-wide/from16 v46, v9

    move-object/from16 v48, v11

    move/from16 v16, v14

    .end local v4    # "okay":Z
    .end local v8    # "agentSuccess":Z
    .end local v9    # "toCopy":J
    .end local v11    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v45    # "agentSuccess":Z
    .restart local v46    # "toCopy":J
    .restart local v48    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v49    # "okay":Z
    goto/16 :goto_a

    .line 457
    .end local v45    # "agentSuccess":Z
    .end local v46    # "toCopy":J
    .end local v48    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .end local v49    # "okay":Z
    .restart local v4    # "okay":Z
    .restart local v8    # "agentSuccess":Z
    .restart local v9    # "toCopy":J
    .restart local v11    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    :catch_b
    move-exception v0

    move/from16 v49, v4

    move/from16 v45, v8

    move-wide/from16 v46, v9

    move-object/from16 v48, v11

    move/from16 v16, v14

    .end local v4    # "okay":Z
    .end local v8    # "agentSuccess":Z
    .end local v9    # "toCopy":J
    .end local v11    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v45    # "agentSuccess":Z
    .restart local v46    # "toCopy":J
    .restart local v48    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v49    # "okay":Z
    goto/16 :goto_b

    .line 423
    .end local v45    # "agentSuccess":Z
    .end local v46    # "toCopy":J
    .end local v48    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .end local v49    # "okay":Z
    .restart local v4    # "okay":Z
    .restart local v8    # "agentSuccess":Z
    .restart local v9    # "toCopy":J
    .restart local v11    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    :cond_12
    move/from16 v49, v4

    move/from16 v45, v8

    move-wide/from16 v46, v9

    move-object/from16 v48, v11

    .end local v4    # "okay":Z
    .end local v8    # "agentSuccess":Z
    .end local v9    # "toCopy":J
    .end local v11    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v45    # "agentSuccess":Z
    .restart local v46    # "toCopy":J
    .restart local v48    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v49    # "okay":Z
    :try_start_18
    iget-object v0, v3, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_11
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_18} :catch_10

    if-eqz v0, :cond_13

    .line 427
    :try_start_19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Restoring key-value file for "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v3, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    iget-wide v4, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAppVersion:J

    iput-wide v4, v3, Lcom/android/server/backup/FileMetadata;->version:J

    .line 432
    new-instance v0, Lcom/android/server/backup/KeyValueAdbRestoreEngine;

    iget-object v2, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 435
    invoke-virtual {v2}, Lcom/android/server/backup/UserBackupManagerService;->getDataDir()Ljava/io/File;

    move-result-object v18

    iget-object v4, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v5, 0x0

    aget-object v20, v4, v5

    iget-object v4, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    move-object/from16 v16, v0

    move-object/from16 v17, v2

    move-object/from16 v19, v3

    move-object/from16 v21, v4

    move/from16 v22, p6

    invoke-direct/range {v16 .. v22}, Lcom/android/server/backup/KeyValueAdbRestoreEngine;-><init>(Lcom/android/server/backup/UserBackupManagerService;Ljava/io/File;Lcom/android/server/backup/FileMetadata;Landroid/os/ParcelFileDescriptor;Landroid/app/IBackupAgent;I)V

    .line 437
    .local v0, "restoreEngine":Lcom/android/server/backup/KeyValueAdbRestoreEngine;
    new-instance v2, Ljava/lang/Thread;

    const-string/jumbo v4, "restore-key-value-runner"

    invoke-direct {v2, v0, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_d
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_19} :catch_c

    .line 438
    .end local v0    # "restoreEngine":Lcom/android/server/backup/KeyValueAdbRestoreEngine;
    move/from16 v16, v14

    goto/16 :goto_9

    .line 462
    :catch_c
    move-exception v0

    move/from16 v16, v14

    goto/16 :goto_a

    .line 457
    :catch_d
    move-exception v0

    move/from16 v16, v14

    goto/16 :goto_b

    .line 446
    :cond_13
    :try_start_1a
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    const-string/jumbo v2, "system"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_11
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_1a} :catch_10

    if-eqz v0, :cond_14

    .line 447
    :try_start_1b
    const-string/jumbo v0, "system process agent - spinning a thread"

    invoke-static {v15, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    new-instance v0, Lcom/android/server/backup/restore/RestoreFileRunnable;

    iget-object v2, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v4, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    iget-object v5, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v6, 0x0

    aget-object v20, v5, v6

    move-object/from16 v16, v0

    move-object/from16 v17, v2

    move-object/from16 v18, v4

    move-object/from16 v19, v3

    move/from16 v21, p6

    invoke-direct/range {v16 .. v21}, Lcom/android/server/backup/restore/RestoreFileRunnable;-><init>(Lcom/android/server/backup/UserBackupManagerService;Landroid/app/IBackupAgent;Lcom/android/server/backup/FileMetadata;Landroid/os/ParcelFileDescriptor;I)V

    .line 450
    .local v0, "runner":Lcom/android/server/backup/restore/RestoreFileRunnable;
    new-instance v2, Ljava/lang/Thread;

    const-string/jumbo v4, "restore-sys-runner"

    invoke-direct {v2, v0, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_d
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_1b} :catch_c

    .line 451
    .end local v0    # "runner":Lcom/android/server/backup/restore/RestoreFileRunnable;
    move/from16 v16, v14

    goto :goto_9

    .line 452
    :cond_14
    :try_start_1c
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    iget-object v2, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v4, 0x0

    aget-object v26, v2, v4

    iget-wide v4, v3, Lcom/android/server/backup/FileMetadata;->size:J

    iget v2, v3, Lcom/android/server/backup/FileMetadata;->type:I

    iget-object v6, v3, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    iget-object v7, v3, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    iget-wide v8, v3, Lcom/android/server/backup/FileMetadata;->mode:J

    iget-wide v10, v3, Lcom/android/server/backup/FileMetadata;->mtime:J
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_11
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_1c} :catch_10

    move/from16 v16, v14

    .end local v14    # "isSharedStorage":Z
    .local v16, "isSharedStorage":Z
    :try_start_1d
    iget-object v14, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 454
    invoke-virtual {v14}, Lcom/android/server/backup/UserBackupManagerService;->getBackupManagerBinder()Landroid/app/backup/IBackupManager;

    move-result-object v37

    .line 452
    move-object/from16 v25, v0

    move-wide/from16 v27, v4

    move/from16 v29, v2

    move-object/from16 v30, v6

    move-object/from16 v31, v7

    move-wide/from16 v32, v8

    move-wide/from16 v34, v10

    move/from16 v36, p6

    invoke-interface/range {v25 .. v37}, Landroid/app/IBackupAgent;->doRestoreFile(Landroid/os/ParcelFileDescriptor;JILjava/lang/String;Ljava/lang/String;JJILandroid/app/backup/IBackupManager;)V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_f
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_1d} :catch_e

    .line 468
    :goto_9
    move/from16 v8, v45

    move/from16 v4, v49

    goto :goto_c

    .line 462
    :catch_e
    move-exception v0

    goto :goto_a

    .line 457
    :catch_f
    move-exception v0

    goto :goto_b

    .line 462
    .end local v16    # "isSharedStorage":Z
    .restart local v14    # "isSharedStorage":Z
    :catch_10
    move-exception v0

    move/from16 v16, v14

    .end local v14    # "isSharedStorage":Z
    .restart local v16    # "isSharedStorage":Z
    goto :goto_a

    .line 457
    .end local v16    # "isSharedStorage":Z
    .restart local v14    # "isSharedStorage":Z
    :catch_11
    move-exception v0

    move/from16 v16, v14

    .end local v14    # "isSharedStorage":Z
    .restart local v16    # "isSharedStorage":Z
    goto :goto_b

    .line 462
    .end local v16    # "isSharedStorage":Z
    .end local v45    # "agentSuccess":Z
    .end local v46    # "toCopy":J
    .end local v48    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .end local v49    # "okay":Z
    .restart local v4    # "okay":Z
    .restart local v8    # "agentSuccess":Z
    .restart local v9    # "toCopy":J
    .restart local v11    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v14    # "isSharedStorage":Z
    :catch_12
    move-exception v0

    move/from16 v49, v4

    move/from16 v45, v8

    move-wide/from16 v46, v9

    move-object/from16 v48, v11

    move/from16 v16, v14

    .line 465
    .end local v4    # "okay":Z
    .end local v8    # "agentSuccess":Z
    .end local v9    # "toCopy":J
    .end local v11    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .end local v14    # "isSharedStorage":Z
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v16    # "isSharedStorage":Z
    .restart local v45    # "agentSuccess":Z
    .restart local v46    # "toCopy":J
    .restart local v48    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v49    # "okay":Z
    :goto_a
    :try_start_1e
    const-string v2, "Agent crashed during full restore"

    invoke-static {v15, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_13

    .line 466
    const/4 v8, 0x0

    .line 467
    .end local v45    # "agentSuccess":Z
    .restart local v8    # "agentSuccess":Z
    const/4 v2, 0x0

    move v4, v2

    .end local v49    # "okay":Z
    .local v2, "okay":Z
    goto :goto_c

    .line 550
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v2    # "okay":Z
    .end local v3    # "info":Lcom/android/server/backup/FileMetadata;
    .end local v8    # "agentSuccess":Z
    .end local v13    # "pkg":Ljava/lang/String;
    .end local v16    # "isSharedStorage":Z
    .end local v38    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    .end local v43    # "timeout":J
    .end local v46    # "toCopy":J
    :catch_13
    move-exception v0

    move-object/from16 v5, p1

    move/from16 v6, p6

    move-object/from16 v9, p7

    move-object/from16 v11, v48

    goto/16 :goto_1b

    .line 457
    .end local v48    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v3    # "info":Lcom/android/server/backup/FileMetadata;
    .restart local v4    # "okay":Z
    .restart local v8    # "agentSuccess":Z
    .restart local v9    # "toCopy":J
    .restart local v11    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v13    # "pkg":Ljava/lang/String;
    .restart local v14    # "isSharedStorage":Z
    .restart local v38    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    .restart local v43    # "timeout":J
    :catch_14
    move-exception v0

    move/from16 v49, v4

    move/from16 v45, v8

    move-wide/from16 v46, v9

    move-object/from16 v48, v11

    move/from16 v16, v14

    .line 459
    .end local v4    # "okay":Z
    .end local v8    # "agentSuccess":Z
    .end local v9    # "toCopy":J
    .end local v11    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .end local v14    # "isSharedStorage":Z
    .local v0, "e":Ljava/io/IOException;
    .restart local v16    # "isSharedStorage":Z
    .restart local v45    # "agentSuccess":Z
    .restart local v46    # "toCopy":J
    .restart local v48    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v49    # "okay":Z
    :goto_b
    :try_start_1f
    const-string v2, "Couldn\'t establish restore"

    invoke-static {v15, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    const/4 v8, 0x0

    .line 461
    .end local v45    # "agentSuccess":Z
    .restart local v8    # "agentSuccess":Z
    const/4 v0, 0x0

    .line 468
    .end local v49    # "okay":Z
    .local v0, "okay":Z
    move v4, v0

    .line 471
    .end local v0    # "okay":Z
    .restart local v4    # "okay":Z
    :goto_c
    if-eqz v4, :cond_19

    .line 475
    const/4 v0, 0x1

    .line 476
    .local v0, "pipeOkay":Z
    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v5, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    aget-object v5, v5, v24

    .line 477
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_1f} :catch_17

    move v5, v0

    move-wide/from16 v9, v46

    .line 478
    .end local v0    # "pipeOkay":Z
    .end local v46    # "toCopy":J
    .local v2, "pipe":Ljava/io/FileOutputStream;
    .local v5, "pipeOkay":Z
    .restart local v9    # "toCopy":J
    :goto_d
    const-wide/16 v6, 0x0

    cmp-long v0, v9, v6

    if-lez v0, :cond_18

    .line 479
    :try_start_20
    array-length v0, v12
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_20} :catch_16

    int-to-long v6, v0

    cmp-long v0, v9, v6

    if-lez v0, :cond_15

    .line 480
    :try_start_21
    array-length v0, v12
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_21} :catch_13

    goto :goto_e

    :cond_15
    long-to-int v0, v9

    :goto_e
    move v6, v0

    .line 481
    .local v6, "toRead":I
    move-object/from16 v7, p1

    move-object/from16 v11, v48

    const/4 v14, 0x0

    .end local v48    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v11    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    :try_start_22
    invoke-virtual {v7, v12, v14, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v0
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_22} :catch_1b

    move v14, v0

    .line 482
    .local v14, "nRead":I
    if-gtz v14, :cond_16

    .line 483
    goto :goto_10

    .line 485
    :cond_16
    move/from16 v17, v6

    .end local v6    # "toRead":I
    .local v17, "toRead":I
    int-to-long v6, v14

    sub-long/2addr v9, v6

    .line 489
    if-eqz v5, :cond_17

    .line 491
    const/4 v6, 0x0

    :try_start_23
    invoke-virtual {v2, v12, v6, v14}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_23} :catch_15

    .line 496
    goto :goto_f

    .line 492
    :catch_15
    move-exception v0

    move-object v6, v0

    move-object v0, v6

    .line 493
    .local v0, "e":Ljava/io/IOException;
    :try_start_24
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to write to restore pipe: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 494
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 493
    invoke-static {v15, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_24} :catch_1b

    .line 495
    const/4 v5, 0x0

    .line 498
    .end local v0    # "e":Ljava/io/IOException;
    .end local v14    # "nRead":I
    .end local v17    # "toRead":I
    :cond_17
    :goto_f
    move-object/from16 v48, v11

    goto :goto_d

    .line 550
    .end local v2    # "pipe":Ljava/io/FileOutputStream;
    .end local v3    # "info":Lcom/android/server/backup/FileMetadata;
    .end local v4    # "okay":Z
    .end local v5    # "pipeOkay":Z
    .end local v8    # "agentSuccess":Z
    .end local v9    # "toCopy":J
    .end local v11    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .end local v13    # "pkg":Ljava/lang/String;
    .end local v16    # "isSharedStorage":Z
    .end local v38    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    .end local v43    # "timeout":J
    .restart local v48    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    :catch_16
    move-exception v0

    move-object/from16 v11, v48

    move-object/from16 v5, p1

    move/from16 v6, p6

    goto :goto_12

    .line 478
    .restart local v2    # "pipe":Ljava/io/FileOutputStream;
    .restart local v3    # "info":Lcom/android/server/backup/FileMetadata;
    .restart local v4    # "okay":Z
    .restart local v5    # "pipeOkay":Z
    .restart local v8    # "agentSuccess":Z
    .restart local v9    # "toCopy":J
    .restart local v13    # "pkg":Ljava/lang/String;
    .restart local v16    # "isSharedStorage":Z
    .restart local v38    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    .restart local v43    # "timeout":J
    :cond_18
    move-object/from16 v11, v48

    .line 502
    .end local v48    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v11    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    :goto_10
    :try_start_25
    iget-wide v6, v3, Lcom/android/server/backup/FileMetadata;->size:J

    invoke-virtual {v11, v6, v7}, Lcom/android/server/backup/utils/TarBackupReader;->skipTarPadding(J)V

    .line 506
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_25} :catch_18

    move/from16 v6, p6

    :try_start_26
    invoke-virtual {v0, v6}, Lcom/android/server/backup/UserBackupManagerService;->waitUntilOperationComplete(I)Z

    move-result v0

    move v8, v0

    goto :goto_11

    .line 471
    .end local v2    # "pipe":Ljava/io/FileOutputStream;
    .end local v5    # "pipeOkay":Z
    .end local v9    # "toCopy":J
    .end local v11    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v46    # "toCopy":J
    .restart local v48    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    :cond_19
    move/from16 v6, p6

    move-object/from16 v11, v48

    .end local v48    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v11    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    move-wide/from16 v9, v46

    .line 511
    .end local v46    # "toCopy":J
    .restart local v9    # "toCopy":J
    :goto_11
    if-nez v8, :cond_1a

    .line 512
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Agent failure restoring "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "; ending restore"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getBackupHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v2, 0x12

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 515
    invoke-direct/range {p0 .. p0}, Lcom/android/server/backup/restore/FullRestoreEngine;->tearDownPipes()V

    .line 516
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/android/server/backup/restore/FullRestoreEngine;->tearDownAgent(Landroid/content/pm/ApplicationInfo;Z)V

    .line 517
    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    .line 518
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    sget-object v2, Lcom/android/server/backup/restore/RestorePolicy;->IGNORE:Lcom/android/server/backup/restore/RestorePolicy;

    invoke-virtual {v0, v13, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 522
    move-object v2, v13

    .end local v13    # "pkg":Ljava/lang/String;
    .local v2, "pkg":Ljava/lang/String;
    if-eqz p4, :cond_1c

    .line 523
    const/4 v0, -0x2

    invoke-virtual {v1, v0}, Lcom/android/server/backup/restore/FullRestoreEngine;->setResult(I)V

    .line 524
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lcom/android/server/backup/restore/FullRestoreEngine;->setRunning(Z)V

    .line 525
    return v5

    .line 511
    .end local v2    # "pkg":Ljava/lang/String;
    .restart local v13    # "pkg":Ljava/lang/String;
    :cond_1a
    move-object v2, v13

    .end local v13    # "pkg":Ljava/lang/String;
    .restart local v2    # "pkg":Ljava/lang/String;
    goto :goto_14

    .line 550
    .end local v2    # "pkg":Ljava/lang/String;
    .end local v3    # "info":Lcom/android/server/backup/FileMetadata;
    .end local v4    # "okay":Z
    .end local v8    # "agentSuccess":Z
    .end local v9    # "toCopy":J
    .end local v11    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .end local v16    # "isSharedStorage":Z
    .end local v38    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    .end local v43    # "timeout":J
    .restart local v48    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    :catch_17
    move-exception v0

    move/from16 v6, p6

    move-object/from16 v11, v48

    move-object/from16 v5, p1

    :goto_12
    move-object/from16 v9, p7

    .end local v48    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v11    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    goto/16 :goto_1b

    :catch_18
    move-exception v0

    move/from16 v6, p6

    :goto_13
    move-object/from16 v5, p1

    goto :goto_17

    .line 400
    .restart local v3    # "info":Lcom/android/server/backup/FileMetadata;
    .restart local v4    # "okay":Z
    .restart local v13    # "pkg":Ljava/lang/String;
    .restart local v38    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    :cond_1b
    move/from16 v6, p6

    move/from16 v49, v4

    move-object v2, v13

    .line 533
    .end local v13    # "pkg":Ljava/lang/String;
    .restart local v2    # "pkg":Ljava/lang/String;
    :cond_1c
    :goto_14
    if-nez v4, :cond_20

    .line 537
    iget-wide v7, v3, Lcom/android/server/backup/FileMetadata;->size:J

    const-wide/16 v9, 0x1ff

    add-long/2addr v7, v9

    const-wide/16 v9, -0x200

    and-long/2addr v7, v9

    .line 538
    .local v7, "bytesToConsume":J
    :goto_15
    const-wide/16 v9, 0x0

    cmp-long v0, v7, v9

    if-lez v0, :cond_1f

    .line 539
    array-length v0, v12

    int-to-long v9, v0

    cmp-long v0, v7, v9

    if-lez v0, :cond_1d

    .line 540
    array-length v0, v12
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_26} :catch_1a

    goto :goto_16

    :cond_1d
    long-to-int v0, v7

    .line 541
    .local v0, "toRead":I
    :goto_16
    move-object/from16 v5, p1

    const/4 v9, 0x0

    :try_start_27
    invoke-virtual {v5, v12, v9, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v10
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_27} :catch_19

    int-to-long v9, v10

    .line 542
    .local v9, "nRead":J
    const-wide/16 v13, 0x0

    cmp-long v16, v9, v13

    if-gtz v16, :cond_1e

    .line 543
    goto :goto_18

    .line 545
    :cond_1e
    sub-long/2addr v7, v9

    .line 546
    .end local v0    # "toRead":I
    .end local v9    # "nRead":J
    goto :goto_15

    .line 550
    .end local v2    # "pkg":Ljava/lang/String;
    .end local v3    # "info":Lcom/android/server/backup/FileMetadata;
    .end local v4    # "okay":Z
    .end local v7    # "bytesToConsume":J
    .end local v38    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    :catch_19
    move-exception v0

    goto :goto_17

    .line 538
    .restart local v2    # "pkg":Ljava/lang/String;
    .restart local v3    # "info":Lcom/android/server/backup/FileMetadata;
    .restart local v4    # "okay":Z
    .restart local v7    # "bytesToConsume":J
    .restart local v38    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    :cond_1f
    move-object/from16 v5, p1

    goto :goto_18

    .line 550
    .end local v2    # "pkg":Ljava/lang/String;
    .end local v3    # "info":Lcom/android/server/backup/FileMetadata;
    .end local v4    # "okay":Z
    .end local v7    # "bytesToConsume":J
    .end local v38    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    :catch_1a
    move-exception v0

    goto :goto_13

    .line 533
    .restart local v2    # "pkg":Ljava/lang/String;
    .restart local v3    # "info":Lcom/android/server/backup/FileMetadata;
    .restart local v4    # "okay":Z
    .restart local v38    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    :cond_20
    move-object/from16 v5, p1

    goto :goto_18

    .line 550
    .end local v2    # "pkg":Ljava/lang/String;
    .end local v3    # "info":Lcom/android/server/backup/FileMetadata;
    .end local v4    # "okay":Z
    .end local v38    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    :catch_1b
    move-exception v0

    move-object/from16 v5, p1

    move/from16 v6, p6

    :goto_17
    move-object/from16 v9, p7

    goto :goto_1b

    .end local v11    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .end local v40    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .local v7, "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v10    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    :catch_1c
    move-exception v0

    move/from16 v6, p6

    move-object/from16 v40, v10

    move-object v5, v11

    move-object/from16 v15, v38

    goto :goto_1a

    .line 183
    .local v5, "info":Lcom/android/server/backup/FileMetadata;
    :cond_21
    move/from16 v6, p6

    move-object v3, v5

    move-object/from16 v40, v10

    move-object v5, v11

    move-object v11, v7

    .line 556
    .end local v5    # "info":Lcom/android/server/backup/FileMetadata;
    .end local v7    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .end local v10    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local v3    # "info":Lcom/android/server/backup/FileMetadata;
    .restart local v11    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v40    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    :goto_18
    move-object/from16 v2, p7

    .end local p7    # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    .local v2, "monitor":Landroid/app/backup/IBackupManagerMonitor;
    :goto_19
    goto :goto_1c

    .line 550
    .end local v2    # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    .end local v3    # "info":Lcom/android/server/backup/FileMetadata;
    .end local v11    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .end local v40    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local v7    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v10    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local p7    # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    :catch_1d
    move-exception v0

    move/from16 v6, p6

    move-object/from16 v40, v10

    move-object v5, v11

    :goto_1a
    move-object v11, v7

    move-object/from16 v9, p7

    .line 552
    .end local v7    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .end local v10    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .end local p7    # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    .local v0, "e":Ljava/io/IOException;
    .local v9, "monitor":Landroid/app/backup/IBackupManagerMonitor;
    .restart local v11    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v40    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    :goto_1b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "io exception on restore socket read: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v15, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    const/4 v2, -0x3

    invoke-virtual {v1, v2}, Lcom/android/server/backup/restore/FullRestoreEngine;->setResult(I)V

    .line 555
    const/4 v2, 0x0

    move-object v3, v2

    move-object v2, v9

    .line 559
    .end local v0    # "e":Ljava/io/IOException;
    .end local v9    # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    .restart local v2    # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    .restart local v3    # "info":Lcom/android/server/backup/FileMetadata;
    :goto_1c
    if-nez v3, :cond_22

    .line 563
    invoke-direct/range {p0 .. p0}, Lcom/android/server/backup/restore/FullRestoreEngine;->tearDownPipes()V

    .line 564
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/android/server/backup/restore/FullRestoreEngine;->setRunning(Z)V

    .line 565
    if-eqz p2, :cond_23

    .line 566
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    iget-boolean v7, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mIsAdbRestore:Z

    invoke-direct {v1, v0, v7}, Lcom/android/server/backup/restore/FullRestoreEngine;->tearDownAgent(Landroid/content/pm/ApplicationInfo;Z)V

    goto :goto_1d

    .line 559
    :cond_22
    const/4 v4, 0x0

    .line 569
    :cond_23
    :goto_1d
    if-eqz v3, :cond_24

    move/from16 v14, v24

    goto :goto_1e

    :cond_24
    move v14, v4

    :goto_1e
    return v14

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method sendOnRestorePackage(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .line 698
    iget-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    if-eqz v0, :cond_0

    .line 701
    :try_start_0
    invoke-interface {v0, p1}, Landroid/app/backup/IFullBackupRestoreObserver;->onRestorePackage(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 705
    goto :goto_0

    .line 702
    :catch_0
    move-exception v0

    .line 703
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BackupManagerService"

    const-string v2, "full restore observer went away: restorePackage"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    .line 707
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method
