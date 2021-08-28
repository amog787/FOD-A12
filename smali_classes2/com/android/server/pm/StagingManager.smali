.class public Lcom/android/server/pm/StagingManager;
.super Ljava/lang/Object;
.source "StagingManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;,
        Lcom/android/server/pm/StagingManager$LocalIntentReceiverSync;,
        Lcom/android/server/pm/StagingManager$Lifecycle;,
        Lcom/android/server/pm/StagingManager$StagedSession;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "StagingManager"


# instance fields
.field private final mApexManager:Lcom/android/server/pm/ApexManager;

.field private final mContext:Landroid/content/Context;

.field private final mFailedPackageNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFailureReason:Ljava/lang/String;

.field private final mFailureReasonFile:Ljava/io/File;

.field private mNativeFailureReason:Ljava/lang/String;

.field private final mPackageParserSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Lcom/android/server/pm/parsing/PackageParser2;",
            ">;"
        }
    .end annotation
.end field

.field private final mPowerManager:Landroid/os/PowerManager;

.field private final mPreRebootVerificationHandler:Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;

.field private final mStagedSessions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/pm/StagingManager$StagedSession;",
            ">;"
        }
    .end annotation
.end field

.field private final mSuccessfulStagedSessionIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/function/Supplier;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/function/Supplier<",
            "Lcom/android/server/pm/parsing/PackageParser2;",
            ">;)V"
        }
    .end annotation

    .line 147
    .local p2, "packageParserSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Lcom/android/server/pm/parsing/PackageParser2;>;"
    invoke-static {}, Lcom/android/server/pm/ApexManager;->getInstance()Lcom/android/server/pm/ApexManager;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/StagingManager;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Lcom/android/server/pm/ApexManager;)V

    .line 148
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/util/function/Supplier;Lcom/android/server/pm/ApexManager;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "apexManager"    # Lcom/android/server/pm/ApexManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/function/Supplier<",
            "Lcom/android/server/pm/parsing/PackageParser2;",
            ">;",
            "Lcom/android/server/pm/ApexManager;",
            ")V"
        }
    .end annotation

    .line 152
    .local p2, "packageParserSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Lcom/android/server/pm/parsing/PackageParser2;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    new-instance v0, Ljava/io/File;

    const-string v1, "/metadata/staged-install/failure_reason.txt"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/pm/StagingManager;->mFailureReasonFile:Ljava/io/File;

    .line 107
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/StagingManager;->mStagedSessions:Landroid/util/SparseArray;

    .line 110
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/StagingManager;->mFailedPackageNames:Ljava/util/List;

    .line 114
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/StagingManager;->mSuccessfulStagedSessionIds:Ljava/util/List;

    .line 153
    iput-object p1, p0, Lcom/android/server/pm/StagingManager;->mContext:Landroid/content/Context;

    .line 154
    iput-object p2, p0, Lcom/android/server/pm/StagingManager;->mPackageParserSupplier:Ljava/util/function/Supplier;

    .line 156
    iput-object p3, p0, Lcom/android/server/pm/StagingManager;->mApexManager:Lcom/android/server/pm/ApexManager;

    .line 157
    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/android/server/pm/StagingManager;->mPowerManager:Landroid/os/PowerManager;

    .line 158
    new-instance v1, Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;

    .line 159
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->get()Lcom/android/internal/os/BackgroundThread;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/os/BackgroundThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;-><init>(Lcom/android/server/pm/StagingManager;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/pm/StagingManager;->mPreRebootVerificationHandler:Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;

    .line 161
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 162
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 163
    .local v0, "reader":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/StagingManager;->mFailureReason:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 164
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 162
    :catchall_0
    move-exception v1

    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/server/pm/StagingManager;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "packageParserSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Lcom/android/server/pm/parsing/PackageParser2;>;"
    .end local p3    # "apexManager":Lcom/android/server/pm/ApexManager;
    :goto_0
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 164
    .end local v0    # "reader":Ljava/io/BufferedReader;
    .restart local p0    # "this":Lcom/android/server/pm/StagingManager;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "packageParserSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Lcom/android/server/pm/parsing/PackageParser2;>;"
    .restart local p3    # "apexManager":Lcom/android/server/pm/ApexManager;
    :catch_0
    move-exception v0

    .line 166
    :cond_0
    :goto_1
    return-void
.end method

.method private abortCheckpoint(Ljava/lang/String;ZZ)V
    .locals 4
    .param p1, "failureReason"    # Ljava/lang/String;
    .param p2, "supportsCheckpoint"    # Z
    .param p3, "needsCheckpoint"    # Z

    .line 367
    const-string v0, "StagingManager"

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    if-eqz p2, :cond_2

    if-eqz p3, :cond_2

    .line 371
    :try_start_0
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/FileWriter;

    iget-object v3, p0, Lcom/android/server/pm/StagingManager;->mFailureReasonFile:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 373
    .local v1, "writer":Ljava/io/BufferedWriter;
    :try_start_1
    invoke-virtual {v1, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 374
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 376
    .end local v1    # "writer":Ljava/io/BufferedWriter;
    goto :goto_1

    .line 371
    .restart local v1    # "writer":Ljava/io/BufferedWriter;
    :catchall_0
    move-exception v2

    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v3

    :try_start_4
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/server/pm/StagingManager;
    .end local p1    # "failureReason":Ljava/lang/String;
    .end local p2    # "supportsCheckpoint":Z
    .end local p3    # "needsCheckpoint":Z
    :goto_0
    throw v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 374
    .end local v1    # "writer":Ljava/io/BufferedWriter;
    .restart local p0    # "this":Lcom/android/server/pm/StagingManager;
    .restart local p1    # "failureReason":Ljava/lang/String;
    .restart local p2    # "supportsCheckpoint":Z
    .restart local p3    # "needsCheckpoint":Z
    :catch_0
    move-exception v1

    .line 375
    .local v1, "e":Ljava/lang/Exception;
    :try_start_5
    const-string v2, "Failed to save failure reason: "

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 379
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    iget-object v1, p0, Lcom/android/server/pm/StagingManager;->mApexManager:Lcom/android/server/pm/ApexManager;

    invoke-virtual {v1}, Lcom/android/server/pm/ApexManager;->isApexSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 380
    iget-object v1, p0, Lcom/android/server/pm/StagingManager;->mApexManager:Lcom/android/server/pm/ApexManager;

    invoke-virtual {v1}, Lcom/android/server/pm/ApexManager;->revertActiveSessions()Z

    .line 383
    :cond_0
    invoke-static {}, Lcom/android/internal/content/PackageHelper;->getStorageManager()Landroid/os/storage/IStorageManager;

    move-result-object v1

    const-string v2, "abort-staged-install"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/storage/IStorageManager;->abortChanges(Ljava/lang/String;Z)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    .line 386
    :catch_1
    move-exception v1

    .line 387
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v2, "Failed to abort checkpoint"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 389
    iget-object v0, p0, Lcom/android/server/pm/StagingManager;->mApexManager:Lcom/android/server/pm/ApexManager;

    invoke-virtual {v0}, Lcom/android/server/pm/ApexManager;->isApexSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 390
    iget-object v0, p0, Lcom/android/server/pm/StagingManager;->mApexManager:Lcom/android/server/pm/ApexManager;

    invoke-virtual {v0}, Lcom/android/server/pm/ApexManager;->revertActiveSessions()Z

    .line 392
    :cond_1
    iget-object v0, p0, Lcom/android/server/pm/StagingManager;->mPowerManager:Landroid/os/PowerManager;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    goto :goto_3

    .line 393
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_2
    nop

    .line 394
    :goto_3
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/pm/StagingManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/StagingManager;

    .line 94
    invoke-direct {p0}, Lcom/android/server/pm/StagingManager;->markStagedSessionsAsSuccessful()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/pm/StagingManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/StagingManager;

    .line 94
    invoke-direct {p0}, Lcom/android/server/pm/StagingManager;->markBootCompleted()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/pm/StagingManager;Lcom/android/server/pm/StagingManager$StagedSession;I)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/StagingManager;
    .param p1, "x1"    # Lcom/android/server/pm/StagingManager$StagedSession;
    .param p2, "x2"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 94
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/StagingManager;->submitSessionToApexService(Lcom/android/server/pm/StagingManager$StagedSession;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/pm/StagingManager;Landroid/content/pm/PackageInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/StagingManager;
    .param p1, "x1"    # Landroid/content/pm/PackageInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 94
    invoke-direct {p0, p1}, Lcom/android/server/pm/StagingManager;->validateApexSignature(Landroid/content/pm/PackageInfo;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/pm/StagingManager;)Lcom/android/server/pm/ApexManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/StagingManager;

    .line 94
    iget-object v0, p0, Lcom/android/server/pm/StagingManager;->mApexManager:Lcom/android/server/pm/ApexManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/pm/StagingManager;Lcom/android/server/pm/StagingManager$StagedSession;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/StagingManager;
    .param p1, "x1"    # Lcom/android/server/pm/StagingManager$StagedSession;

    .line 94
    invoke-direct {p0, p1}, Lcom/android/server/pm/StagingManager;->ensureActiveApexSessionIsAborted(Lcom/android/server/pm/StagingManager$StagedSession;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/pm/StagingManager;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/StagingManager;
    .param p1, "x1"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 94
    invoke-direct {p0, p1}, Lcom/android/server/pm/StagingManager;->retrieveRollbackIdForCommitSession(I)I

    move-result v0

    return v0
.end method

.method private checkDowngrade(Lcom/android/server/pm/StagingManager$StagedSession;Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageInfo;)V
    .locals 10
    .param p1, "session"    # Lcom/android/server/pm/StagingManager$StagedSession;
    .param p2, "activePackage"    # Landroid/content/pm/PackageInfo;
    .param p3, "newPackage"    # Landroid/content/pm/PackageInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 349
    iget-object v0, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-wide v0, v0, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    .line 350
    .local v0, "activeVersion":J
    iget-object v2, p3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-wide v2, v2, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    .line 351
    .local v2, "newVersionCode":J
    iget-object v4, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x2

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    move v4, v5

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 353
    .local v4, "isAppDebuggable":Z
    :goto_0
    nop

    .line 354
    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionParams()Landroid/content/pm/PackageInstaller$SessionParams;

    move-result-object v6

    iget v6, v6, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 353
    invoke-static {v6, v4}, Lcom/android/server/pm/PackageManagerServiceUtils;->isDowngradePermitted(IZ)Z

    move-result v6

    .line 355
    .local v6, "allowsDowngrade":Z
    cmp-long v7, v0, v2

    if-lez v7, :cond_2

    if-eqz v6, :cond_1

    goto :goto_1

    .line 356
    :cond_1
    new-instance v7, Lcom/android/server/pm/PackageManagerException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Downgrade of APEX package "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " is not allowed. Active version: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " attempted: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v5, v8}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v7

    .line 362
    :cond_2
    :goto_1
    return-void
.end method

.method private checkDuplicateApkInApex(Lcom/android/server/pm/StagingManager$StagedSession;)V
    .locals 9
    .param p1, "session"    # Lcom/android/server/pm/StagingManager$StagedSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 615
    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->isMultiPackage()Z

    move-result v0

    if-nez v0, :cond_0

    .line 616
    return-void

    .line 618
    :cond_0
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 619
    .local v0, "apkNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->getChildSessions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/StagingManager$StagedSession;

    .line 620
    .local v2, "s":Lcom/android/server/pm/StagingManager$StagedSession;
    invoke-interface {v2}, Lcom/android/server/pm/StagingManager$StagedSession;->isApexSession()Z

    move-result v3

    if-nez v3, :cond_1

    .line 621
    invoke-interface {v2}, Lcom/android/server/pm/StagingManager$StagedSession;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 623
    .end local v2    # "s":Lcom/android/server/pm/StagingManager$StagedSession;
    :cond_1
    goto :goto_0

    .line 624
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/server/pm/StagingManager;->extractApexSessions(Lcom/android/server/pm/StagingManager$StagedSession;)Ljava/util/List;

    move-result-object v1

    .line 625
    .local v1, "apexSessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/StagingManager$StagedSession;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/StagingManager$StagedSession;

    .line 626
    .local v3, "apexSession":Lcom/android/server/pm/StagingManager$StagedSession;
    invoke-interface {v3}, Lcom/android/server/pm/StagingManager$StagedSession;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 627
    .local v4, "packageName":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/pm/StagingManager;->mApexManager:Lcom/android/server/pm/ApexManager;

    invoke-virtual {v5, v4}, Lcom/android/server/pm/ApexManager;->getApksInApex(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 628
    .local v6, "apkInApex":Ljava/lang/String;
    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 636
    .end local v6    # "apkInApex":Ljava/lang/String;
    goto :goto_2

    .line 629
    .restart local v6    # "apkInApex":Ljava/lang/String;
    :cond_3
    new-instance v2, Lcom/android/server/pm/PackageManagerException;

    const/4 v5, 0x2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Package: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " in session: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 632
    invoke-interface {v3}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " has duplicate apk-in-apex: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-direct {v2, v5, v7, v8}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 637
    .end local v3    # "apexSession":Lcom/android/server/pm/StagingManager$StagedSession;
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v6    # "apkInApex":Ljava/lang/String;
    :cond_4
    goto :goto_1

    .line 638
    :cond_5
    return-void
.end method

.method private checkInstallationOfApkInApexSuccessful(Lcom/android/server/pm/StagingManager$StagedSession;)V
    .locals 8
    .param p1, "session"    # Lcom/android/server/pm/StagingManager$StagedSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 421
    invoke-direct {p0, p1}, Lcom/android/server/pm/StagingManager;->extractApexSessions(Lcom/android/server/pm/StagingManager$StagedSession;)Ljava/util/List;

    move-result-object v0

    .line 422
    .local v0, "apexSessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/StagingManager$StagedSession;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 423
    return-void

    .line 426
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/StagingManager$StagedSession;

    .line 427
    .local v2, "apexSession":Lcom/android/server/pm/StagingManager$StagedSession;
    invoke-interface {v2}, Lcom/android/server/pm/StagingManager$StagedSession;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 428
    .local v3, "packageName":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/pm/StagingManager;->mApexManager:Lcom/android/server/pm/ApexManager;

    invoke-virtual {v4, v3}, Lcom/android/server/pm/ApexManager;->getApkInApexInstallError(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 429
    .local v4, "errorMsg":Ljava/lang/String;
    if-nez v4, :cond_1

    .line 433
    .end local v2    # "apexSession":Lcom/android/server/pm/StagingManager$StagedSession;
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "errorMsg":Ljava/lang/String;
    goto :goto_0

    .line 430
    .restart local v2    # "apexSession":Lcom/android/server/pm/StagingManager$StagedSession;
    .restart local v3    # "packageName":Ljava/lang/String;
    .restart local v4    # "errorMsg":Ljava/lang/String;
    :cond_1
    new-instance v1, Lcom/android/server/pm/PackageManagerException;

    const/4 v5, 0x2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to install apk-in-apex of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v5, v6}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 434
    .end local v2    # "apexSession":Lcom/android/server/pm/StagingManager$StagedSession;
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "errorMsg":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private checkRequiredVersionCode(Lcom/android/server/pm/StagingManager$StagedSession;Landroid/content/pm/PackageInfo;)V
    .locals 7
    .param p1, "session"    # Lcom/android/server/pm/StagingManager$StagedSession;
    .param p2, "activePackage"    # Landroid/content/pm/PackageInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 332
    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionParams()Landroid/content/pm/PackageInstaller$SessionParams;

    move-result-object v0

    iget-wide v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->requiredInstalledVersionCode:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 334
    return-void

    .line 336
    :cond_0
    iget-object v0, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-wide v0, v0, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    .line 337
    .local v0, "activeVersion":J
    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionParams()Landroid/content/pm/PackageInstaller$SessionParams;

    move-result-object v2

    iget-wide v2, v2, Landroid/content/pm/PackageInstaller$SessionParams;->requiredInstalledVersionCode:J

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    .line 344
    return-void

    .line 338
    :cond_1
    new-instance v2, Lcom/android/server/pm/PackageManagerException;

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Installed version of APEX package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " does not match required. Active version: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " required: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionParams()Landroid/content/pm/PackageInstaller$SessionParams;

    move-result-object v5

    iget-wide v5, v5, Landroid/content/pm/PackageInstaller$SessionParams;->requiredInstalledVersionCode:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v2
.end method

.method private ensureActiveApexSessionIsAborted(Lcom/android/server/pm/StagingManager$StagedSession;)Z
    .locals 3
    .param p1, "session"    # Lcom/android/server/pm/StagingManager$StagedSession;

    .line 832
    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->containsApexSession()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 833
    return v1

    .line 835
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/StagingManager;->mApexManager:Lcom/android/server/pm/ApexManager;

    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/server/pm/ApexManager;->getStagedSessionInfo(I)Landroid/apex/ApexSessionInfo;

    move-result-object v0

    .line 836
    .local v0, "apexSession":Landroid/apex/ApexSessionInfo;
    if-eqz v0, :cond_2

    invoke-direct {p0, v0}, Lcom/android/server/pm/StagingManager;->isApexSessionFinalized(Landroid/apex/ApexSessionInfo;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 839
    :cond_1
    iget-object v1, p0, Lcom/android/server/pm/StagingManager;->mApexManager:Lcom/android/server/pm/ApexManager;

    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/pm/ApexManager;->abortStagedSession(I)Z

    move-result v1

    return v1

    .line 837
    :cond_2
    :goto_0
    return v1
.end method

.method private extractApexSessions(Lcom/android/server/pm/StagingManager$StagedSession;)Ljava/util/List;
    .locals 4
    .param p1, "session"    # Lcom/android/server/pm/StagingManager$StagedSession;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/StagingManager$StagedSession;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/server/pm/StagingManager$StagedSession;",
            ">;"
        }
    .end annotation

    .line 400
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 401
    .local v0, "apexSessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/StagingManager$StagedSession;>;"
    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->isMultiPackage()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 402
    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->getChildSessions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/StagingManager$StagedSession;

    .line 403
    .local v2, "s":Lcom/android/server/pm/StagingManager$StagedSession;
    invoke-interface {v2}, Lcom/android/server/pm/StagingManager$StagedSession;->containsApexSession()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 404
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 406
    .end local v2    # "s":Lcom/android/server/pm/StagingManager$StagedSession;
    :cond_0
    goto :goto_0

    :cond_1
    goto :goto_1

    .line 408
    :cond_2
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 410
    :goto_1
    return-object v0
.end method

.method private getParentSessionOrSelf(Lcom/android/server/pm/StagingManager$StagedSession;)Lcom/android/server/pm/StagingManager$StagedSession;
    .locals 1
    .param p1, "session"    # Lcom/android/server/pm/StagingManager$StagedSession;

    .line 672
    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->hasParentSessionId()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 673
    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->getParentSessionId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/pm/StagingManager;->getStagedSession(I)Lcom/android/server/pm/StagingManager$StagedSession;

    move-result-object v0

    goto :goto_0

    .line 674
    :cond_0
    move-object v0, p1

    .line 672
    :goto_0
    return-object v0
.end method

.method private getReasonForRevert()Ljava/lang/String;
    .locals 2

    .line 601
    iget-object v0, p0, Lcom/android/server/pm/StagingManager;->mFailureReason:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 602
    iget-object v0, p0, Lcom/android/server/pm/StagingManager;->mFailureReason:Ljava/lang/String;

    return-object v0

    .line 604
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/StagingManager;->mNativeFailureReason:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 605
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Session reverted due to crashing native process: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/pm/StagingManager;->mNativeFailureReason:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 607
    :cond_1
    const-string v0, ""

    return-object v0
.end method

.method private getSessionIdForParentOrSelf(Lcom/android/server/pm/StagingManager$StagedSession;)I
    .locals 1
    .param p1, "session"    # Lcom/android/server/pm/StagingManager$StagedSession;

    .line 668
    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->hasParentSessionId()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->getParentSessionId()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result v0

    :goto_0
    return v0
.end method

.method private getStagedSession(I)Lcom/android/server/pm/StagingManager$StagedSession;
    .locals 2
    .param p1, "sessionId"    # I

    .line 1097
    iget-object v0, p0, Lcom/android/server/pm/StagingManager;->mStagedSessions:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1098
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/StagingManager;->mStagedSessions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/StagingManager$StagedSession;

    .line 1099
    .local v1, "session":Lcom/android/server/pm/StagingManager$StagedSession;
    monitor-exit v0

    .line 1100
    return-object v1

    .line 1099
    .end local v1    # "session":Lcom/android/server/pm/StagingManager$StagedSession;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private handleNonReadyAndDestroyedSessions(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/pm/StagingManager$StagedSession;",
            ">;)V"
        }
    .end annotation

    .line 857
    .local p1, "sessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/StagingManager$StagedSession;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 858
    .local v0, "j":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 863
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/StagingManager$StagedSession;

    .line 864
    .local v2, "session":Lcom/android/server/pm/StagingManager$StagedSession;
    invoke-interface {v2}, Lcom/android/server/pm/StagingManager$StagedSession;->isDestroyed()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 866
    invoke-interface {v2}, Lcom/android/server/pm/StagingManager$StagedSession;->abandon()V

    .line 867
    add-int/lit8 v3, v0, -0x1

    invoke-interface {p1, v3, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/StagingManager$StagedSession;

    .line 868
    .local v3, "session2":Lcom/android/server/pm/StagingManager$StagedSession;
    invoke-interface {p1, v1, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 869
    nop

    .end local v3    # "session2":Lcom/android/server/pm/StagingManager$StagedSession;
    add-int/lit8 v0, v0, -0x1

    .line 870
    goto :goto_1

    :cond_0
    invoke-interface {v2}, Lcom/android/server/pm/StagingManager$StagedSession;->isSessionReady()Z

    move-result v3

    if-nez v3, :cond_1

    .line 873
    iget-object v3, p0, Lcom/android/server/pm/StagingManager;->mPreRebootVerificationHandler:Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;

    invoke-static {v3, v2}, Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;->access$300(Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;Lcom/android/server/pm/StagingManager$StagedSession;)V

    .line 874
    add-int/lit8 v3, v0, -0x1

    invoke-interface {p1, v3, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/StagingManager$StagedSession;

    .line 875
    .restart local v3    # "session2":Lcom/android/server/pm/StagingManager$StagedSession;
    invoke-interface {p1, v1, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 876
    nop

    .end local v3    # "session2":Lcom/android/server/pm/StagingManager$StagedSession;
    add-int/lit8 v0, v0, -0x1

    .line 877
    goto :goto_1

    .line 878
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 880
    .end local v2    # "session":Lcom/android/server/pm/StagingManager$StagedSession;
    :goto_1
    goto :goto_0

    .line 882
    .end local v1    # "i":I
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p1, v0, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 883
    return-void
.end method

.method private installApksInSession(Lcom/android/server/pm/StagingManager$StagedSession;)V
    .locals 6
    .param p1, "session"    # Lcom/android/server/pm/StagingManager$StagedSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 642
    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->containsApkSession()Z

    move-result v0

    if-nez v0, :cond_0

    .line 643
    return-void

    .line 646
    :cond_0
    new-instance v0, Lcom/android/server/pm/StagingManager$LocalIntentReceiverSync;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/pm/StagingManager$LocalIntentReceiverSync;-><init>(Lcom/android/server/pm/StagingManager$1;)V

    .line 647
    .local v0, "receiver":Lcom/android/server/pm/StagingManager$LocalIntentReceiverSync;
    invoke-virtual {v0}, Lcom/android/server/pm/StagingManager$LocalIntentReceiverSync;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/android/server/pm/StagingManager$StagedSession;->installSession(Landroid/content/IntentSender;)V

    .line 648
    invoke-virtual {v0}, Lcom/android/server/pm/StagingManager$LocalIntentReceiverSync;->getResult()Landroid/content/Intent;

    move-result-object v1

    .line 649
    .local v1, "result":Landroid/content/Intent;
    const/4 v2, 0x1

    const-string v3, "android.content.pm.extra.STATUS"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 651
    .local v2, "status":I
    if-nez v2, :cond_1

    .line 659
    return-void

    .line 652
    :cond_1
    const-string v3, "android.content.pm.extra.STATUS_MESSAGE"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 654
    .local v3, "errorMessage":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failure to install APK staged session "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 655
    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 654
    const-string v5, "StagingManager"

    invoke-static {v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    new-instance v4, Lcom/android/server/pm/PackageManagerException;

    const/4 v5, 0x2

    invoke-direct {v4, v5, v3}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v4
.end method

.method private static isApexSessionFailed(Landroid/apex/ApexSessionInfo;)Z
    .locals 1
    .param p0, "apexSessionInfo"    # Landroid/apex/ApexSessionInfo;

    .line 851
    iget-boolean v0, p0, Landroid/apex/ApexSessionInfo;->isActivationFailed:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroid/apex/ApexSessionInfo;->isUnknown:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroid/apex/ApexSessionInfo;->isReverted:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroid/apex/ApexSessionInfo;->isRevertInProgress:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroid/apex/ApexSessionInfo;->isRevertFailed:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private isApexSessionFinalized(Landroid/apex/ApexSessionInfo;)Z
    .locals 1
    .param p1, "session"    # Landroid/apex/ApexSessionInfo;

    .line 844
    iget-boolean v0, p1, Landroid/apex/ApexSessionInfo;->isUnknown:Z

    if-nez v0, :cond_1

    iget-boolean v0, p1, Landroid/apex/ApexSessionInfo;->isActivationFailed:Z

    if-nez v0, :cond_1

    iget-boolean v0, p1, Landroid/apex/ApexSessionInfo;->isSuccess:Z

    if-nez v0, :cond_1

    iget-boolean v0, p1, Landroid/apex/ApexSessionInfo;->isReverted:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private isRollback(Lcom/android/server/pm/StagingManager$StagedSession;)Z
    .locals 3
    .param p1, "session"    # Lcom/android/server/pm/StagingManager$StagedSession;

    .line 678
    invoke-direct {p0, p1}, Lcom/android/server/pm/StagingManager;->getParentSessionOrSelf(Lcom/android/server/pm/StagingManager$StagedSession;)Lcom/android/server/pm/StagingManager$StagedSession;

    move-result-object v0

    .line 679
    .local v0, "root":Lcom/android/server/pm/StagingManager$StagedSession;
    invoke-interface {v0}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionParams()Landroid/content/pm/PackageInstaller$SessionParams;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->installReason:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method static synthetic lambda$checkNonOverlappingWithStagedSessions$0(Ljava/lang/String;Lcom/android/server/pm/StagingManager$StagedSession;)Z
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "s"    # Lcom/android/server/pm/StagingManager$StagedSession;

    .line 758
    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private logFailedApexSessionsIfNecessary()V
    .locals 4

    .line 1030
    iget-object v0, p0, Lcom/android/server/pm/StagingManager;->mFailedPackageNames:Ljava/util/List;

    monitor-enter v0

    .line 1031
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/StagingManager;->mFailedPackageNames:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1032
    iget-object v1, p0, Lcom/android/server/pm/StagingManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/pm/StagingManager;->mFailedPackageNames:Ljava/util/List;

    iget-object v3, p0, Lcom/android/server/pm/StagingManager;->mNativeFailureReason:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/android/server/rollback/WatchdogRollbackLogger;->logApexdRevert(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    .line 1035
    :cond_0
    monitor-exit v0

    .line 1036
    return-void

    .line 1035
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private markBootCompleted()V
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/android/server/pm/StagingManager;->mApexManager:Lcom/android/server/pm/ApexManager;

    invoke-virtual {v0}, Lcom/android/server/pm/ApexManager;->markBootCompleted()V

    .line 199
    return-void
.end method

.method private markStagedSessionsAsSuccessful()V
    .locals 4

    .line 1039
    iget-object v0, p0, Lcom/android/server/pm/StagingManager;->mSuccessfulStagedSessionIds:Ljava/util/List;

    monitor-enter v0

    .line 1040
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/StagingManager;->mSuccessfulStagedSessionIds:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1041
    iget-object v2, p0, Lcom/android/server/pm/StagingManager;->mApexManager:Lcom/android/server/pm/ApexManager;

    iget-object v3, p0, Lcom/android/server/pm/StagingManager;->mSuccessfulStagedSessionIds:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/pm/ApexManager;->markStagedSessionSuccessful(I)V

    .line 1040
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1043
    .end local v1    # "i":I
    :cond_0
    monitor-exit v0

    .line 1044
    return-void

    .line 1043
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private prepareForLoggingApexdRevert(Lcom/android/server/pm/StagingManager$StagedSession;Ljava/lang/String;)V
    .locals 3
    .param p1, "session"    # Lcom/android/server/pm/StagingManager$StagedSession;
    .param p2, "nativeFailureReason"    # Ljava/lang/String;

    .line 514
    iget-object v0, p0, Lcom/android/server/pm/StagingManager;->mFailedPackageNames:Ljava/util/List;

    monitor-enter v0

    .line 515
    :try_start_0
    iput-object p2, p0, Lcom/android/server/pm/StagingManager;->mNativeFailureReason:Ljava/lang/String;

    .line 516
    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 517
    iget-object v1, p0, Lcom/android/server/pm/StagingManager;->mFailedPackageNames:Ljava/util/List;

    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 519
    :cond_0
    monitor-exit v0

    .line 520
    return-void

    .line 519
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private resumeSession(Lcom/android/server/pm/StagingManager$StagedSession;ZZ)V
    .locals 5
    .param p1, "session"    # Lcom/android/server/pm/StagingManager$StagedSession;
    .param p2, "supportsCheckpoint"    # Z
    .param p3, "needsCheckpoint"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 524
    const-string v0, "StagingManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Resuming session "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->containsApexSession()Z

    move-result v0

    .line 535
    .local v0, "hasApex":Z
    if-eqz p2, :cond_1

    if-nez p3, :cond_1

    .line 536
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reverting back to safe state. Marking "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " as failed."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 538
    .local v1, "revertMsg":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/server/pm/StagingManager;->getReasonForRevert()Ljava/lang/String;

    move-result-object v2

    .line 539
    .local v2, "reasonForRevert":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 540
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " Reason for revert: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 542
    :cond_0
    const-string v3, "StagingManager"

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    const/4 v3, 0x3

    invoke-interface {p1, v3, v1}, Lcom/android/server/pm/StagingManager$StagedSession;->setSessionFailed(ILjava/lang/String;)V

    .line 544
    return-void

    .line 548
    .end local v1    # "revertMsg":Ljava/lang/String;
    .end local v2    # "reasonForRevert":Ljava/lang/String;
    :cond_1
    if-eqz v0, :cond_2

    .line 549
    invoke-direct {p0, p1}, Lcom/android/server/pm/StagingManager;->checkInstallationOfApkInApexSuccessful(Lcom/android/server/pm/StagingManager$StagedSession;)V

    .line 550
    invoke-direct {p0, p1}, Lcom/android/server/pm/StagingManager;->checkDuplicateApkInApex(Lcom/android/server/pm/StagingManager$StagedSession;)V

    .line 551
    invoke-direct {p0, p1}, Lcom/android/server/pm/StagingManager;->snapshotAndRestoreForApexSession(Lcom/android/server/pm/StagingManager$StagedSession;)V

    .line 552
    const-string v1, "StagingManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "APEX packages in session "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " were successfully activated. Proceeding with APK packages, if any"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    :cond_2
    const-string v1, "StagingManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Installing APK packages in session "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    new-instance v1, Landroid/util/TimingsTraceLog;

    const-string v2, "StagingManagerTiming"

    const-wide/32 v3, 0x40000

    invoke-direct {v1, v2, v3, v4}, Landroid/util/TimingsTraceLog;-><init>(Ljava/lang/String;J)V

    .line 559
    .local v1, "t":Landroid/util/TimingsTraceLog;
    const-string v2, "installApksInSession"

    invoke-virtual {v1, v2}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    .line 560
    invoke-direct {p0, p1}, Lcom/android/server/pm/StagingManager;->installApksInSession(Lcom/android/server/pm/StagingManager$StagedSession;)V

    .line 561
    invoke-virtual {v1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 563
    const-string v2, "StagingManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Marking session "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " as applied"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->setSessionApplied()V

    .line 565
    if-eqz v0, :cond_4

    .line 566
    if-eqz p2, :cond_3

    .line 569
    iget-object v2, p0, Lcom/android/server/pm/StagingManager;->mSuccessfulStagedSessionIds:Ljava/util/List;

    monitor-enter v2

    .line 570
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/StagingManager;->mSuccessfulStagedSessionIds:Ljava/util/List;

    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 571
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 574
    :cond_3
    iget-object v2, p0, Lcom/android/server/pm/StagingManager;->mApexManager:Lcom/android/server/pm/ApexManager;

    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/pm/ApexManager;->markStagedSessionSuccessful(I)V

    .line 577
    :cond_4
    :goto_0
    return-void
.end method

.method private retrieveRollbackIdForCommitSession(I)I
    .locals 6
    .param p1, "sessionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 317
    iget-object v0, p0, Lcom/android/server/pm/StagingManager;->mContext:Landroid/content/Context;

    const-class v1, Landroid/content/rollback/RollbackManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/rollback/RollbackManager;

    .line 319
    .local v0, "rm":Landroid/content/rollback/RollbackManager;
    invoke-virtual {v0}, Landroid/content/rollback/RollbackManager;->getRecentlyCommittedRollbacks()Ljava/util/List;

    move-result-object v1

    .line 320
    .local v1, "rollbacks":Ljava/util/List;, "Ljava/util/List<Landroid/content/rollback/RollbackInfo;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "size":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 321
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/rollback/RollbackInfo;

    .line 322
    .local v4, "rollback":Landroid/content/rollback/RollbackInfo;
    invoke-virtual {v4}, Landroid/content/rollback/RollbackInfo;->getCommittedSessionId()I

    move-result v5

    if-ne v5, p1, :cond_0

    .line 323
    invoke-virtual {v4}, Landroid/content/rollback/RollbackInfo;->getRollbackId()I

    move-result v5

    return v5

    .line 320
    .end local v4    # "rollback":Landroid/content/rollback/RollbackInfo;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 326
    .end local v2    # "i":I
    .end local v3    # "size":I
    :cond_1
    new-instance v2, Lcom/android/server/pm/PackageManagerException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not find rollback id for commit session: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/server/pm/PackageManagerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private snapshotAndRestoreApexUserData(Ljava/lang/String;[ILcom/android/server/rollback/RollbackManagerInternal;)V
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "allUsers"    # [I
    .param p3, "rm"    # Lcom/android/server/rollback/RollbackManagerInternal;

    .line 476
    invoke-static {p2}, Landroid/os/UserHandle;->toUserHandles([I)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p3

    move-object v1, p1

    invoke-interface/range {v0 .. v7}, Lcom/android/server/rollback/RollbackManagerInternal;->snapshotAndRestoreUserData(Ljava/lang/String;Ljava/util/List;IJLjava/lang/String;I)V

    .line 478
    return-void
.end method

.method private snapshotAndRestoreApkInApexUserData(Ljava/lang/String;[ILcom/android/server/rollback/RollbackManagerInternal;)V
    .locals 18
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "allUsers"    # [I
    .param p3, "rm"    # Lcom/android/server/rollback/RollbackManagerInternal;

    .line 482
    move-object/from16 v8, p1

    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/content/pm/PackageManagerInternal;

    .line 483
    .local v9, "mPmi":Landroid/content/pm/PackageManagerInternal;
    invoke-virtual {v9, v8}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v10

    .line 484
    .local v10, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-nez v10, :cond_0

    .line 485
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not find package: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "for snapshotting/restoring user data."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StagingManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    return-void

    .line 490
    :cond_0
    const/4 v0, -0x1

    .line 491
    .local v0, "appId":I
    const-wide/16 v1, -0x1

    .line 492
    .local v1, "ceDataInode":J
    invoke-virtual {v9, v8}, Landroid/content/pm/PackageManagerInternal;->getPackageSetting(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v11

    .line 493
    .local v11, "ps":Lcom/android/server/pm/PackageSetting;
    if-eqz v11, :cond_1

    .line 494
    iget v12, v11, Lcom/android/server/pm/PackageSetting;->appId:I

    .line 495
    .end local v0    # "appId":I
    .local v12, "appId":I
    const/4 v0, 0x0

    invoke-virtual {v11, v0}, Lcom/android/server/pm/PackageSetting;->getCeDataInode(I)J

    move-result-wide v13

    .line 498
    .end local v1    # "ceDataInode":J
    .local v13, "ceDataInode":J
    const/4 v0, 0x1

    move-object/from16 v15, p2

    invoke-virtual {v11, v15, v0}, Lcom/android/server/pm/PackageSetting;->queryInstalledUsers([IZ)[I

    move-result-object v16

    .line 500
    .local v16, "installedUsers":[I
    invoke-static {v10, v11}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getSeInfo(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;)Ljava/lang/String;

    move-result-object v17

    .line 501
    .local v17, "seInfo":Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Landroid/os/UserHandle;->toUserHandles([I)Ljava/util/List;

    move-result-object v2

    const/4 v7, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, p1

    move v3, v12

    move-wide v4, v13

    move-object/from16 v6, v17

    invoke-interface/range {v0 .. v7}, Lcom/android/server/rollback/RollbackManagerInternal;->snapshotAndRestoreUserData(Ljava/lang/String;Ljava/util/List;IJLjava/lang/String;I)V

    move v0, v12

    move-wide v1, v13

    goto :goto_0

    .line 493
    .end local v12    # "appId":I
    .end local v13    # "ceDataInode":J
    .end local v16    # "installedUsers":[I
    .end local v17    # "seInfo":Ljava/lang/String;
    .restart local v0    # "appId":I
    .restart local v1    # "ceDataInode":J
    :cond_1
    move-object/from16 v15, p2

    .line 504
    :goto_0
    return-void
.end method

.method private snapshotAndRestoreForApexSession(Lcom/android/server/pm/StagingManager$StagedSession;)V
    .locals 12
    .param p1, "session"    # Lcom/android/server/pm/StagingManager$StagedSession;

    .line 443
    nop

    .line 444
    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionParams()Landroid/content/pm/PackageInstaller$SessionParams;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    if-nez v0, :cond_1

    .line 445
    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionParams()Landroid/content/pm/PackageInstaller$SessionParams;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installReason:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 446
    .local v0, "doSnapshotOrRestore":Z
    :goto_1
    if-nez v0, :cond_2

    .line 447
    return-void

    .line 451
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/server/pm/StagingManager;->extractApexSessions(Lcom/android/server/pm/StagingManager$StagedSession;)Ljava/util/List;

    move-result-object v1

    .line 452
    .local v1, "apexSessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/StagingManager$StagedSession;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 453
    return-void

    .line 456
    :cond_3
    const-class v2, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/UserManagerInternal;

    .line 457
    .local v2, "um":Lcom/android/server/pm/UserManagerInternal;
    invoke-virtual {v2}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    move-result-object v3

    .line 458
    .local v3, "allUsers":[I
    const-class v4, Lcom/android/server/rollback/RollbackManagerInternal;

    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/rollback/RollbackManagerInternal;

    .line 460
    .local v4, "rm":Lcom/android/server/rollback/RollbackManagerInternal;
    const/4 v5, 0x0

    .local v5, "i":I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    .local v6, "sessionsSize":I
    :goto_2
    if-ge v5, v6, :cond_5

    .line 461
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/StagingManager$StagedSession;

    invoke-interface {v7}, Lcom/android/server/pm/StagingManager$StagedSession;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 463
    .local v7, "packageName":Ljava/lang/String;
    invoke-direct {p0, v7, v3, v4}, Lcom/android/server/pm/StagingManager;->snapshotAndRestoreApexUserData(Ljava/lang/String;[ILcom/android/server/rollback/RollbackManagerInternal;)V

    .line 466
    iget-object v8, p0, Lcom/android/server/pm/StagingManager;->mApexManager:Lcom/android/server/pm/ApexManager;

    invoke-virtual {v8, v7}, Lcom/android/server/pm/ApexManager;->getApksInApex(Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    .line 467
    .local v8, "apksInApex":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v9, 0x0

    .local v9, "j":I
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    .local v10, "apksSize":I
    :goto_3
    if-ge v9, v10, :cond_4

    .line 468
    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-direct {p0, v11, v3, v4}, Lcom/android/server/pm/StagingManager;->snapshotAndRestoreApkInApexUserData(Ljava/lang/String;[ILcom/android/server/rollback/RollbackManagerInternal;)V

    .line 467
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 460
    .end local v7    # "packageName":Ljava/lang/String;
    .end local v8    # "apksInApex":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v9    # "j":I
    .end local v10    # "apksSize":I
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 471
    .end local v5    # "i":I
    .end local v6    # "sessionsSize":I
    :cond_5
    return-void
.end method

.method private submitSessionToApexService(Lcom/android/server/pm/StagingManager$StagedSession;I)Ljava/util/List;
    .locals 19
    .param p1, "session"    # Lcom/android/server/pm/StagingManager$StagedSession;
    .param p2, "rollbackId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/StagingManager$StagedSession;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 257
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    move-object v4, v0

    .line 258
    .local v4, "childSessionIds":Landroid/util/IntArray;
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/StagingManager$StagedSession;->isMultiPackage()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 259
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/StagingManager$StagedSession;->getChildSessions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/StagingManager$StagedSession;

    .line 260
    .local v5, "s":Lcom/android/server/pm/StagingManager$StagedSession;
    invoke-interface {v5}, Lcom/android/server/pm/StagingManager$StagedSession;->isApexSession()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 261
    invoke-interface {v5}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/util/IntArray;->add(I)V

    .line 263
    .end local v5    # "s":Lcom/android/server/pm/StagingManager$StagedSession;
    :cond_0
    goto :goto_0

    .line 265
    :cond_1
    new-instance v0, Landroid/apex/ApexSessionParams;

    invoke-direct {v0}, Landroid/apex/ApexSessionParams;-><init>()V

    move-object v5, v0

    .line 266
    .local v5, "apexSessionParams":Landroid/apex/ApexSessionParams;
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result v0

    iput v0, v5, Landroid/apex/ApexSessionParams;->sessionId:I

    .line 267
    invoke-virtual {v4}, Landroid/util/IntArray;->toArray()[I

    move-result-object v0

    iput-object v0, v5, Landroid/apex/ApexSessionParams;->childSessionIds:[I

    .line 268
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionParams()Landroid/content/pm/PackageInstaller$SessionParams;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installReason:I

    const/4 v6, 0x5

    const/4 v7, 0x1

    if-ne v0, v6, :cond_2

    .line 269
    iput-boolean v7, v5, Landroid/apex/ApexSessionParams;->isRollback:Z

    .line 270
    iput v3, v5, Landroid/apex/ApexSessionParams;->rollbackId:I

    goto :goto_1

    .line 272
    :cond_2
    const/4 v0, -0x1

    if-eq v3, v0, :cond_3

    .line 273
    iput-boolean v7, v5, Landroid/apex/ApexSessionParams;->hasRollbackEnabled:Z

    .line 274
    iput v3, v5, Landroid/apex/ApexSessionParams;->rollbackId:I

    .line 279
    :cond_3
    :goto_1
    iget-object v0, v1, Lcom/android/server/pm/StagingManager;->mApexManager:Lcom/android/server/pm/ApexManager;

    invoke-virtual {v0, v5}, Lcom/android/server/pm/ApexManager;->submitStagedSession(Landroid/apex/ApexSessionParams;)Landroid/apex/ApexInfoList;

    move-result-object v6

    .line 280
    .local v6, "apexInfoList":Landroid/apex/ApexInfoList;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v8, v0

    .line 281
    .local v8, "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v0

    .line 282
    .local v9, "apexPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, v6, Landroid/apex/ApexInfoList;->apexInfos:[Landroid/apex/ApexInfo;

    array-length v10, v0

    const/4 v12, 0x0

    :goto_2
    const-string v13, "StagingManager"

    if-ge v12, v10, :cond_8

    aget-object v14, v0, v12

    .line 284
    .local v14, "apexInfo":Landroid/apex/ApexInfo;
    const/16 v15, 0x80

    .line 285
    .local v15, "flags":I
    :try_start_0
    iget-object v7, v1, Lcom/android/server/pm/StagingManager;->mPackageParserSupplier:Ljava/util/function/Supplier;

    invoke-interface {v7}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/parsing/PackageParser2;
    :try_end_0
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 286
    .local v7, "packageParser":Lcom/android/server/pm/parsing/PackageParser2;
    :try_start_1
    new-instance v11, Ljava/io/File;

    move-object/from16 v17, v0

    iget-object v0, v14, Landroid/apex/ApexInfo;->modulePath:Ljava/lang/String;

    invoke-direct {v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, v11

    .line 287
    .local v0, "apexFile":Ljava/io/File;
    const/16 v11, 0x80

    const/4 v3, 0x0

    invoke-virtual {v7, v0, v11, v3}, Lcom/android/server/pm/parsing/PackageParser2;->parsePackage(Ljava/io/File;IZ)Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    move-result-object v16

    move-object/from16 v18, v16

    .line 289
    .local v18, "parsedPackage":Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    move-object/from16 v3, v18

    .end local v18    # "parsedPackage":Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .local v3, "parsedPackage":Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    invoke-static {v3, v14, v11}, Landroid/content/pm/parsing/PackageInfoWithoutStateUtils;->generate(Landroid/content/pm/parsing/ParsingPackageRead;Landroid/apex/ApexInfo;I)Landroid/content/pm/PackageInfo;

    move-result-object v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 290
    .local v11, "packageInfo":Landroid/content/pm/PackageInfo;
    if-eqz v11, :cond_6

    .line 295
    .end local v0    # "apexFile":Ljava/io/File;
    .end local v3    # "parsedPackage":Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    if-eqz v7, :cond_4

    :try_start_2
    invoke-virtual {v7}, Lcom/android/server/pm/parsing/PackageParser2;->close()V
    :try_end_2
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_2 .. :try_end_2} :catch_0

    .line 298
    .end local v7    # "packageParser":Lcom/android/server/pm/parsing/PackageParser2;
    :cond_4
    nop

    .line 299
    iget-object v0, v1, Lcom/android/server/pm/StagingManager;->mApexManager:Lcom/android/server/pm/ApexManager;

    iget-object v3, v11, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/4 v7, 0x1

    invoke-virtual {v0, v3, v7}, Lcom/android/server/pm/ApexManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 301
    .local v0, "activePackage":Landroid/content/pm/PackageInfo;
    if-eqz v0, :cond_5

    .line 306
    invoke-direct {v1, v2, v0}, Lcom/android/server/pm/StagingManager;->checkRequiredVersionCode(Lcom/android/server/pm/StagingManager$StagedSession;Landroid/content/pm/PackageInfo;)V

    .line 307
    invoke-direct {v1, v2, v0, v11}, Lcom/android/server/pm/StagingManager;->checkDowngrade(Lcom/android/server/pm/StagingManager$StagedSession;Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageInfo;)V

    .line 308
    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 309
    iget-object v3, v11, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 282
    .end local v0    # "activePackage":Landroid/content/pm/PackageInfo;
    .end local v11    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v14    # "apexInfo":Landroid/apex/ApexInfo;
    .end local v15    # "flags":I
    add-int/lit8 v12, v12, 0x1

    move/from16 v3, p2

    move-object/from16 v0, v17

    const/4 v7, 0x1

    goto :goto_2

    .line 302
    .restart local v0    # "activePackage":Landroid/content/pm/PackageInfo;
    .restart local v11    # "packageInfo":Landroid/content/pm/PackageInfo;
    .restart local v14    # "apexInfo":Landroid/apex/ApexInfo;
    .restart local v15    # "flags":I
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Attempting to install new APEX package "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v11, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v13, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    new-instance v3, Lcom/android/server/pm/PackageManagerException;

    const-string v7, "It is forbidden to install new APEX packages."

    const/4 v10, 0x1

    invoke-direct {v3, v10, v7}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 291
    .local v0, "apexFile":Ljava/io/File;
    .restart local v3    # "parsedPackage":Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .restart local v7    # "packageParser":Lcom/android/server/pm/parsing/PackageParser2;
    :cond_6
    :try_start_3
    new-instance v10, Lcom/android/server/pm/PackageManagerException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unable to generate package info: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v14, Landroid/apex/ApexInfo;->modulePath:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    invoke-direct {v10, v13, v12}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .end local v4    # "childSessionIds":Landroid/util/IntArray;
    .end local v5    # "apexSessionParams":Landroid/apex/ApexSessionParams;
    .end local v6    # "apexInfoList":Landroid/apex/ApexInfoList;
    .end local v7    # "packageParser":Lcom/android/server/pm/parsing/PackageParser2;
    .end local v8    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v9    # "apexPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v14    # "apexInfo":Landroid/apex/ApexInfo;
    .end local v15    # "flags":I
    .end local p0    # "this":Lcom/android/server/pm/StagingManager;
    .end local p1    # "session":Lcom/android/server/pm/StagingManager$StagedSession;
    .end local p2    # "rollbackId":I
    throw v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 285
    .end local v0    # "apexFile":Ljava/io/File;
    .end local v3    # "parsedPackage":Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .end local v11    # "packageInfo":Landroid/content/pm/PackageInfo;
    .restart local v4    # "childSessionIds":Landroid/util/IntArray;
    .restart local v5    # "apexSessionParams":Landroid/apex/ApexSessionParams;
    .restart local v6    # "apexInfoList":Landroid/apex/ApexInfoList;
    .restart local v7    # "packageParser":Lcom/android/server/pm/parsing/PackageParser2;
    .restart local v8    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .restart local v9    # "apexPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v14    # "apexInfo":Landroid/apex/ApexInfo;
    .restart local v15    # "flags":I
    .restart local p0    # "this":Lcom/android/server/pm/StagingManager;
    .restart local p1    # "session":Lcom/android/server/pm/StagingManager$StagedSession;
    .restart local p2    # "rollbackId":I
    :catchall_0
    move-exception v0

    move-object v3, v0

    if-eqz v7, :cond_7

    :try_start_4
    invoke-virtual {v7}, Lcom/android/server/pm/parsing/PackageParser2;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v10, v0

    :try_start_5
    invoke-virtual {v3, v10}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v4    # "childSessionIds":Landroid/util/IntArray;
    .end local v5    # "apexSessionParams":Landroid/apex/ApexSessionParams;
    .end local v6    # "apexInfoList":Landroid/apex/ApexInfoList;
    .end local v8    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v9    # "apexPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v14    # "apexInfo":Landroid/apex/ApexInfo;
    .end local v15    # "flags":I
    .end local p0    # "this":Lcom/android/server/pm/StagingManager;
    .end local p1    # "session":Lcom/android/server/pm/StagingManager$StagedSession;
    .end local p2    # "rollbackId":I
    :cond_7
    :goto_3
    throw v3
    :try_end_5
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_5 .. :try_end_5} :catch_0

    .line 295
    .end local v7    # "packageParser":Lcom/android/server/pm/parsing/PackageParser2;
    .restart local v4    # "childSessionIds":Landroid/util/IntArray;
    .restart local v5    # "apexSessionParams":Landroid/apex/ApexSessionParams;
    .restart local v6    # "apexInfoList":Landroid/apex/ApexInfoList;
    .restart local v8    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .restart local v9    # "apexPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v14    # "apexInfo":Landroid/apex/ApexInfo;
    .restart local v15    # "flags":I
    .restart local p0    # "this":Lcom/android/server/pm/StagingManager;
    .restart local p1    # "session":Lcom/android/server/pm/StagingManager$StagedSession;
    .restart local p2    # "rollbackId":I
    :catch_0
    move-exception v0

    .line 296
    .local v0, "e":Landroid/content/pm/PackageParser$PackageParserException;
    new-instance v3, Lcom/android/server/pm/PackageManagerException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to parse APEX package "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v14, Landroid/apex/ApexInfo;->modulePath:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " : "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v10, 0x1

    invoke-direct {v3, v10, v7, v0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 311
    .end local v0    # "e":Landroid/content/pm/PackageParser$PackageParserException;
    .end local v14    # "apexInfo":Landroid/apex/ApexInfo;
    .end local v15    # "flags":I
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Session "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " has following APEX packages: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    return-object v8
.end method

.method private validateApexSignature(Landroid/content/pm/PackageInfo;)V
    .locals 11
    .param p1, "newApexPkg"    # Landroid/content/pm/PackageInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 209
    const-string v0, " : "

    const-string v1, "Failed to parse APEX package "

    iget-object v2, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 210
    .local v2, "apexPath":Ljava/lang/String;
    iget-object v3, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 211
    .local v3, "packageName":Ljava/lang/String;
    iget-object v4, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-static {v4}, Landroid/util/apk/ApkSignatureVerifier;->getMinimumSignatureSchemeVersionForTargetSdk(I)I

    move-result v4

    .line 216
    .local v4, "minSignatureScheme":I
    const/4 v5, 0x1

    :try_start_0
    invoke-static {v2, v4}, Landroid/util/apk/ApkSignatureVerifier;->verify(Ljava/lang/String;I)Landroid/content/pm/PackageParser$SigningDetails;

    move-result-object v6
    :try_end_0
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_0 .. :try_end_0} :catch_1

    .line 220
    .local v6, "newSigningDetails":Landroid/content/pm/PackageParser$SigningDetails;
    nop

    .line 223
    iget-object v7, p0, Lcom/android/server/pm/StagingManager;->mApexManager:Lcom/android/server/pm/ApexManager;

    invoke-virtual {v7, v3, v5}, Lcom/android/server/pm/ApexManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    .line 225
    .local v7, "existingApexPkg":Landroid/content/pm/PackageInfo;
    if-eqz v7, :cond_2

    .line 233
    :try_start_1
    iget-object v8, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-static {v8, v5}, Landroid/util/apk/ApkSignatureVerifier;->verify(Ljava/lang/String;I)Landroid/content/pm/PackageParser$SigningDetails;

    move-result-object v0
    :try_end_1
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_1 .. :try_end_1} :catch_0

    .line 239
    .local v0, "existingSigningDetails":Landroid/content/pm/PackageParser$SigningDetails;
    nop

    .line 242
    invoke-virtual {v6, v0, v5}, Landroid/content/pm/PackageParser$SigningDetails;->checkCapability(Landroid/content/pm/PackageParser$SigningDetails;I)Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0x8

    .line 244
    invoke-virtual {v0, v6, v1}, Landroid/content/pm/PackageParser$SigningDetails;->checkCapability(Landroid/content/pm/PackageParser$SigningDetails;I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 249
    :cond_0
    new-instance v1, Lcom/android/server/pm/PackageManagerException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "APK-container signature of APEX package "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " with version "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, p1, Landroid/content/pm/PackageInfo;->versionCodeMajor:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " and path "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " is not compatible with the one currently installed on device"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v5, v8}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 246
    :cond_1
    :goto_0
    return-void

    .line 235
    .end local v0    # "existingSigningDetails":Landroid/content/pm/PackageParser$SigningDetails;
    :catch_0
    move-exception v8

    .line 236
    .local v8, "e":Landroid/content/pm/PackageParser$PackageParserException;
    new-instance v9, Lcom/android/server/pm/PackageManagerException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v5, v0, v8}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v9

    .line 228
    .end local v8    # "e":Landroid/content/pm/PackageParser$PackageParserException;
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown apex package "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 217
    .end local v6    # "newSigningDetails":Landroid/content/pm/PackageParser$SigningDetails;
    .end local v7    # "existingApexPkg":Landroid/content/pm/PackageInfo;
    :catch_1
    move-exception v6

    .line 218
    .local v6, "e":Landroid/content/pm/PackageParser$PackageParserException;
    new-instance v7, Lcom/android/server/pm/PackageManagerException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v5, v0, v6}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v7
.end method


# virtual methods
.method abortCommittedSession(Lcom/android/server/pm/StagingManager$StagedSession;)V
    .locals 4
    .param p1, "session"    # Lcom/android/server/pm/StagingManager$StagedSession;

    .line 797
    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result v0

    .line 798
    .local v0, "sessionId":I
    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->isInTerminalState()Z

    move-result v1

    const-string v2, "StagingManager"

    if-eqz v1, :cond_0

    .line 799
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot abort session in final state: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    return-void

    .line 802
    :cond_0
    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 806
    invoke-direct {p0, v0}, Lcom/android/server/pm/StagingManager;->getStagedSession(I)Lcom/android/server/pm/StagingManager$StagedSession;

    move-result-object v1

    if-nez v1, :cond_1

    .line 807
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Session "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " has been abandoned already"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    return-void

    .line 812
    :cond_1
    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->isSessionReady()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 813
    invoke-direct {p0, p1}, Lcom/android/server/pm/StagingManager;->ensureActiveApexSessionIsAborted(Lcom/android/server/pm/StagingManager$StagedSession;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 817
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to abort apex session "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/pm/StagingManager;->abortSession(Lcom/android/server/pm/StagingManager$StagedSession;)V

    .line 824
    return-void

    .line 803
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Committed session must be destroyed before aborting it from StagingManager"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method abortSession(Lcom/android/server/pm/StagingManager$StagedSession;)V
    .locals 3
    .param p1, "session"    # Lcom/android/server/pm/StagingManager$StagedSession;

    .line 788
    iget-object v0, p0, Lcom/android/server/pm/StagingManager;->mStagedSessions:Landroid/util/SparseArray;

    monitor-enter v0

    .line 789
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/StagingManager;->mStagedSessions:Landroid/util/SparseArray;

    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 790
    monitor-exit v0

    .line 791
    return-void

    .line 790
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method checkNonOverlappingWithStagedSessions(Lcom/android/server/pm/StagingManager$StagedSession;)V
    .locals 12
    .param p1, "session"    # Lcom/android/server/pm/StagingManager$StagedSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 696
    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->isMultiPackage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 698
    return-void

    .line 701
    :cond_0
    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 702
    .local v0, "packageName":Ljava/lang/String;
    const/4 v1, 0x1

    if-eqz v0, :cond_a

    .line 709
    :try_start_0
    invoke-static {}, Lcom/android/internal/content/PackageHelper;->getStorageManager()Landroid/os/storage/IStorageManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/os/storage/IStorageManager;->supportsCheckpoint()Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 713
    .local v2, "supportsCheckpoint":Z
    nop

    .line 715
    invoke-direct {p0, p1}, Lcom/android/server/pm/StagingManager;->isRollback(Lcom/android/server/pm/StagingManager$StagedSession;)Z

    move-result v3

    .line 717
    .local v3, "isRollback":Z
    iget-object v4, p0, Lcom/android/server/pm/StagingManager;->mStagedSessions:Landroid/util/SparseArray;

    monitor-enter v4

    .line 718
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    :try_start_1
    iget-object v6, p0, Lcom/android/server/pm/StagingManager;->mStagedSessions:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_9

    .line 719
    iget-object v6, p0, Lcom/android/server/pm/StagingManager;->mStagedSessions:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/StagingManager$StagedSession;

    .line 720
    .local v6, "stagedSession":Lcom/android/server/pm/StagingManager$StagedSession;
    invoke-interface {v6}, Lcom/android/server/pm/StagingManager$StagedSession;->hasParentSessionId()Z

    move-result v7

    if-nez v7, :cond_8

    invoke-interface {v6}, Lcom/android/server/pm/StagingManager$StagedSession;->isCommitted()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 721
    invoke-interface {v6}, Lcom/android/server/pm/StagingManager$StagedSession;->isInTerminalState()Z

    move-result v7

    if-nez v7, :cond_8

    .line 722
    invoke-interface {v6}, Lcom/android/server/pm/StagingManager$StagedSession;->isDestroyed()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 723
    goto/16 :goto_2

    .line 726
    :cond_1
    invoke-interface {v6}, Lcom/android/server/pm/StagingManager$StagedSession;->getCommittedMillis()J

    move-result-wide v7

    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->getCommittedMillis()J

    move-result-wide v9

    cmp-long v7, v7, v9

    if-lez v7, :cond_2

    .line 730
    goto/16 :goto_2

    .line 736
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/server/pm/StagingManager;->getSessionIdForParentOrSelf(Lcom/android/server/pm/StagingManager$StagedSession;)I

    move-result v7

    invoke-interface {v6}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result v8

    if-ne v7, v8, :cond_3

    .line 737
    const-string v7, "StagingManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Session "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " is already staged"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    goto/16 :goto_2

    .line 741
    :cond_3
    const/4 v7, 0x0

    if-eqz v3, :cond_5

    invoke-direct {p0, v6}, Lcom/android/server/pm/StagingManager;->isRollback(Lcom/android/server/pm/StagingManager$StagedSession;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 745
    move-object v8, v6

    .line 746
    .local v8, "root":Lcom/android/server/pm/StagingManager$StagedSession;
    invoke-direct {p0, v8}, Lcom/android/server/pm/StagingManager;->ensureActiveApexSessionIsAborted(Lcom/android/server/pm/StagingManager$StagedSession;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 747
    const-string v9, "StagingManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to abort apex session "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v8}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    :cond_4
    const/4 v9, 0x4

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Session was failed by rollback session: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 754
    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 752
    invoke-interface {v8, v9, v10}, Lcom/android/server/pm/StagingManager$StagedSession;->setSessionFailed(ILjava/lang/String;)V

    .line 755
    const-string v9, "StagingManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Session "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v8}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " is marked failed due to rollback session: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 756
    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 755
    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    nop

    .end local v8    # "root":Lcom/android/server/pm/StagingManager$StagedSession;
    goto :goto_1

    :cond_5
    new-instance v8, Lcom/android/server/pm/StagingManager$$ExternalSyntheticLambda1;

    invoke-direct {v8, v0}, Lcom/android/server/pm/StagingManager$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;)V

    invoke-interface {v6, v8}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionContains(Ljava/util/function/Predicate;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 771
    :goto_1
    if-eqz v2, :cond_6

    goto :goto_2

    .line 772
    :cond_6
    new-instance v8, Lcom/android/server/pm/PackageManagerException;

    const-string v9, "Cannot stage multiple sessions without checkpoint support"

    invoke-direct {v8, v1, v9, v7}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "packageName":Ljava/lang/String;
    .end local v2    # "supportsCheckpoint":Z
    .end local v3    # "isRollback":Z
    .end local p0    # "this":Lcom/android/server/pm/StagingManager;
    .end local p1    # "session":Lcom/android/server/pm/StagingManager$StagedSession;
    throw v8

    .line 760
    .restart local v0    # "packageName":Ljava/lang/String;
    .restart local v2    # "supportsCheckpoint":Z
    .restart local v3    # "isRollback":Z
    .restart local p0    # "this":Lcom/android/server/pm/StagingManager;
    .restart local p1    # "session":Lcom/android/server/pm/StagingManager$StagedSession;
    :cond_7
    new-instance v8, Lcom/android/server/pm/PackageManagerException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Package: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 762
    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " in session: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 763
    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " has been staged already by session: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 765
    invoke-interface {v6}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v1, v9, v7}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "packageName":Ljava/lang/String;
    .end local v2    # "supportsCheckpoint":Z
    .end local v3    # "isRollback":Z
    .end local p0    # "this":Lcom/android/server/pm/StagingManager;
    .end local p1    # "session":Lcom/android/server/pm/StagingManager$StagedSession;
    throw v8

    .line 718
    .end local v6    # "stagedSession":Lcom/android/server/pm/StagingManager$StagedSession;
    .restart local v0    # "packageName":Ljava/lang/String;
    .restart local v2    # "supportsCheckpoint":Z
    .restart local v3    # "isRollback":Z
    .restart local p0    # "this":Lcom/android/server/pm/StagingManager;
    .restart local p1    # "session":Lcom/android/server/pm/StagingManager$StagedSession;
    :cond_8
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 777
    .end local v5    # "i":I
    :cond_9
    monitor-exit v4

    .line 778
    return-void

    .line 777
    :catchall_0
    move-exception v1

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 710
    .end local v2    # "supportsCheckpoint":Z
    .end local v3    # "isRollback":Z
    :catch_0
    move-exception v2

    .line 711
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Lcom/android/server/pm/PackageManagerException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t query fs-checkpoint status : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 703
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_a
    new-instance v2, Lcom/android/server/pm/PackageManagerException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot stage session "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 704
    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " with package name null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v2
.end method

.method commitSession(Lcom/android/server/pm/StagingManager$StagedSession;)V
    .locals 1
    .param p1, "session"    # Lcom/android/server/pm/StagingManager$StagedSession;

    .line 663
    invoke-virtual {p0, p1}, Lcom/android/server/pm/StagingManager;->createSession(Lcom/android/server/pm/StagingManager$StagedSession;)V

    .line 664
    iget-object v0, p0, Lcom/android/server/pm/StagingManager;->mPreRebootVerificationHandler:Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;

    invoke-static {v0, p1}, Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;->access$300(Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;Lcom/android/server/pm/StagingManager$StagedSession;)V

    .line 665
    return-void
.end method

.method createSession(Lcom/android/server/pm/StagingManager$StagedSession;)V
    .locals 3
    .param p1, "sessionInfo"    # Lcom/android/server/pm/StagingManager$StagedSession;

    .line 782
    iget-object v0, p0, Lcom/android/server/pm/StagingManager;->mStagedSessions:Landroid/util/SparseArray;

    monitor-enter v0

    .line 783
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/StagingManager;->mStagedSessions:Landroid/util/SparseArray;

    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result v2

    invoke-virtual {v1, v2, p1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 784
    monitor-exit v0

    .line 785
    return-void

    .line 784
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public synthetic lambda$onBootCompletedBroadcastReceived$1$StagingManager()V
    .locals 0

    .line 1063
    invoke-direct {p0}, Lcom/android/server/pm/StagingManager;->logFailedApexSessionsIfNecessary()V

    return-void
.end method

.method notifyPreRebootVerification_Apk_Complete(Lcom/android/server/pm/StagingManager$StagedSession;)V
    .locals 1
    .param p1, "session"    # Lcom/android/server/pm/StagingManager$StagedSession;

    .line 1114
    iget-object v0, p0, Lcom/android/server/pm/StagingManager;->mPreRebootVerificationHandler:Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;

    invoke-static {v0, p1}, Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;->access$700(Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;Lcom/android/server/pm/StagingManager$StagedSession;)V

    .line 1115
    return-void
.end method

.method notifyVerificationComplete(Lcom/android/server/pm/StagingManager$StagedSession;)V
    .locals 1
    .param p1, "session"    # Lcom/android/server/pm/StagingManager$StagedSession;

    .line 1107
    iget-object v0, p0, Lcom/android/server/pm/StagingManager;->mPreRebootVerificationHandler:Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;

    invoke-static {v0, p1}, Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;->access$600(Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;Lcom/android/server/pm/StagingManager$StagedSession;)V

    .line 1108
    return-void
.end method

.method onBootCompletedBroadcastReceived()V
    .locals 2

    .line 1062
    iget-object v0, p0, Lcom/android/server/pm/StagingManager;->mPreRebootVerificationHandler:Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;

    invoke-static {v0}, Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;->access$400(Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;)V

    .line 1063
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/android/server/pm/StagingManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/pm/StagingManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/StagingManager;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1064
    return-void
.end method

.method onInstallationFailure(Lcom/android/server/pm/StagingManager$StagedSession;Lcom/android/server/pm/PackageManagerException;ZZ)V
    .locals 2
    .param p1, "session"    # Lcom/android/server/pm/StagingManager$StagedSession;
    .param p2, "e"    # Lcom/android/server/pm/PackageManagerException;
    .param p3, "supportsCheckpoint"    # Z
    .param p4, "needsCheckpoint"    # Z

    .line 581
    iget v0, p2, Lcom/android/server/pm/PackageManagerException;->error:I

    invoke-virtual {p2}, Lcom/android/server/pm/PackageManagerException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/android/server/pm/StagingManager$StagedSession;->setSessionFailed(ILjava/lang/String;)V

    .line 582
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to install sessionId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 583
    invoke-virtual {p2}, Lcom/android/server/pm/PackageManagerException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 582
    invoke-direct {p0, v0, p3, p4}, Lcom/android/server/pm/StagingManager;->abortCheckpoint(Ljava/lang/String;ZZ)V

    .line 586
    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->containsApexSession()Z

    move-result v0

    if-nez v0, :cond_0

    .line 587
    return-void

    .line 590
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/StagingManager;->mApexManager:Lcom/android/server/pm/ApexManager;

    invoke-virtual {v0}, Lcom/android/server/pm/ApexManager;->revertActiveSessions()Z

    move-result v0

    const-string v1, "StagingManager"

    if-nez v0, :cond_1

    .line 591
    const-string v0, "Failed to abort APEXd session"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 593
    :cond_1
    const-string v0, "Successfully aborted apexd session. Rebooting device in order to revert to the previous state of APEXd."

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    iget-object v0, p0, Lcom/android/server/pm/StagingManager;->mPowerManager:Landroid/os/PowerManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    .line 598
    :goto_0
    return-void
.end method

.method restoreSessions(Ljava/util/List;Z)V
    .locals 17
    .param p2, "isDeviceUpgrading"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/pm/StagingManager$StagedSession;",
            ">;Z)V"
        }
    .end annotation

    .line 886
    .local p1, "sessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/StagingManager$StagedSession;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    new-instance v0, Landroid/util/TimingsTraceLog;

    const-string v3, "StagingManagerTiming"

    const-wide/32 v4, 0x40000

    invoke-direct {v0, v3, v4, v5}, Landroid/util/TimingsTraceLog;-><init>(Ljava/lang/String;J)V

    move-object v3, v0

    .line 888
    .local v3, "t":Landroid/util/TimingsTraceLog;
    const-string v0, "restoreSessions"

    invoke-virtual {v3, v0}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    .line 891
    const-string v0, "sys.boot_completed"

    const/4 v4, 0x0

    invoke-static {v0, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 892
    return-void

    .line 895
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ge v0, v4, :cond_1

    .line 896
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/StagingManager$StagedSession;

    .line 898
    .local v4, "session":Lcom/android/server/pm/StagingManager$StagedSession;
    invoke-interface {v4}, Lcom/android/server/pm/StagingManager$StagedSession;->hasParentSessionId()Z

    move-result v6

    xor-int/2addr v6, v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 899
    invoke-interface {v4}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " is a child session"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 898
    invoke-static {v6, v7}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 900
    invoke-interface {v4}, Lcom/android/server/pm/StagingManager$StagedSession;->isCommitted()Z

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 901
    invoke-interface {v4}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " is not committed"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 900
    invoke-static {v6, v7}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 902
    invoke-interface {v4}, Lcom/android/server/pm/StagingManager$StagedSession;->isInTerminalState()Z

    move-result v6

    xor-int/2addr v5, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 903
    invoke-interface {v4}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " is in terminal state"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 902
    invoke-static {v5, v6}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 905
    invoke-virtual {v1, v4}, Lcom/android/server/pm/StagingManager;->createSession(Lcom/android/server/pm/StagingManager$StagedSession;)V

    .line 895
    .end local v4    # "session":Lcom/android/server/pm/StagingManager$StagedSession;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 908
    .end local v0    # "i":I
    :cond_1
    const/4 v4, 0x2

    if-eqz p2, :cond_3

    .line 912
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_2

    .line 913
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/StagingManager$StagedSession;

    .line 914
    .local v5, "session":Lcom/android/server/pm/StagingManager$StagedSession;
    const-string v6, "Build fingerprint has changed"

    invoke-interface {v5, v4, v6}, Lcom/android/server/pm/StagingManager$StagedSession;->setSessionFailed(ILjava/lang/String;)V

    .line 912
    .end local v5    # "session":Lcom/android/server/pm/StagingManager$StagedSession;
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 917
    .end local v0    # "i":I
    :cond_2
    return-void

    .line 920
    :cond_3
    const/4 v6, 0x0

    .line 921
    .local v6, "needsCheckpoint":Z
    const/4 v7, 0x0

    .line 923
    .local v7, "supportsCheckpoint":Z
    :try_start_0
    invoke-static {}, Lcom/android/internal/content/PackageHelper;->getStorageManager()Landroid/os/storage/IStorageManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/storage/IStorageManager;->supportsCheckpoint()Z

    move-result v0

    move v7, v0

    .line 924
    invoke-static {}, Lcom/android/internal/content/PackageHelper;->getStorageManager()Landroid/os/storage/IStorageManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/storage/IStorageManager;->needsCheckpoint()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    move v6, v0

    .line 928
    nop

    .line 930
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v5, :cond_5

    if-eqz v7, :cond_4

    goto :goto_2

    .line 931
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v4, "Detected multiple staged sessions on a device without fs-checkpoint support"

    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 938
    :cond_5
    :goto_2
    invoke-direct/range {p0 .. p1}, Lcom/android/server/pm/StagingManager;->handleNonReadyAndDestroyedSessions(Ljava/util/List;)V

    .line 942
    iget-object v0, v1, Lcom/android/server/pm/StagingManager;->mApexManager:Lcom/android/server/pm/ApexManager;

    invoke-virtual {v0}, Lcom/android/server/pm/ApexManager;->getSessions()Landroid/util/SparseArray;

    move-result-object v5

    .line 943
    .local v5, "apexSessions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/apex/ApexSessionInfo;>;"
    const/4 v0, 0x0

    .line 944
    .local v0, "hasFailedApexSession":Z
    const/4 v8, 0x0

    .line 945
    .local v8, "hasAppliedApexSession":Z
    const/4 v9, 0x0

    move/from16 v16, v8

    move v8, v0

    move v0, v9

    move/from16 v9, v16

    .local v0, "i":I
    .local v8, "hasFailedApexSession":Z
    .local v9, "hasAppliedApexSession":Z
    :goto_3
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v10

    const-string v11, "StagingManager"

    if-ge v0, v10, :cond_10

    .line 946
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/pm/StagingManager$StagedSession;

    .line 947
    .local v10, "session":Lcom/android/server/pm/StagingManager$StagedSession;
    invoke-interface {v10}, Lcom/android/server/pm/StagingManager$StagedSession;->containsApexSession()Z

    move-result v12

    if-nez v12, :cond_6

    .line 949
    goto/16 :goto_7

    .line 951
    :cond_6
    invoke-interface {v10}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result v12

    invoke-virtual {v5, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/apex/ApexSessionInfo;

    .line 952
    .local v12, "apexSession":Landroid/apex/ApexSessionInfo;
    if-eqz v12, :cond_f

    iget-boolean v13, v12, Landroid/apex/ApexSessionInfo;->isUnknown:Z

    if-eqz v13, :cond_7

    goto/16 :goto_6

    .line 957
    :cond_7
    invoke-static {v12}, Lcom/android/server/pm/StagingManager;->isApexSessionFailed(Landroid/apex/ApexSessionInfo;)Z

    move-result v13

    if-eqz v13, :cond_b

    .line 958
    const/4 v8, 0x1

    .line 959
    iget-object v13, v12, Landroid/apex/ApexSessionInfo;->crashingNativeProcess:Ljava/lang/String;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_8

    .line 960
    iget-object v13, v12, Landroid/apex/ApexSessionInfo;->crashingNativeProcess:Ljava/lang/String;

    invoke-direct {v1, v10, v13}, Lcom/android/server/pm/StagingManager;->prepareForLoggingApexdRevert(Lcom/android/server/pm/StagingManager$StagedSession;Ljava/lang/String;)V

    .line 962
    :cond_8
    const-string v13, "APEX activation failed."

    .line 963
    .local v13, "errorMsg":Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/StagingManager;->getReasonForRevert()Ljava/lang/String;

    move-result-object v14

    .line 964
    .local v14, "reasonForRevert":Ljava/lang/String;
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_9

    .line 965
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " Reason: "

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto :goto_4

    .line 966
    :cond_9
    iget-object v4, v12, Landroid/apex/ApexSessionInfo;->errorMessage:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 967
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " Error: "

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v12, Landroid/apex/ApexSessionInfo;->errorMessage:Ljava/lang/String;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 969
    :cond_a
    :goto_4
    invoke-static {v11, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 970
    const/4 v4, 0x2

    invoke-interface {v10, v4, v13}, Lcom/android/server/pm/StagingManager$StagedSession;->setSessionFailed(ILjava/lang/String;)V

    .line 971
    goto :goto_7

    .line 972
    .end local v13    # "errorMsg":Ljava/lang/String;
    .end local v14    # "reasonForRevert":Ljava/lang/String;
    :cond_b
    iget-boolean v4, v12, Landroid/apex/ApexSessionInfo;->isActivated:Z

    if-nez v4, :cond_e

    iget-boolean v4, v12, Landroid/apex/ApexSessionInfo;->isSuccess:Z

    if-eqz v4, :cond_c

    goto :goto_5

    .line 975
    :cond_c
    iget-boolean v4, v12, Landroid/apex/ApexSessionInfo;->isStaged:Z

    if-eqz v4, :cond_d

    .line 978
    const/4 v4, 0x1

    .line 979
    .end local v8    # "hasFailedApexSession":Z
    .local v4, "hasFailedApexSession":Z
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Staged session "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 980
    invoke-interface {v10}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " at boot didn\'t activate nor fail. Marking it as failed anyway."

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 979
    const/4 v11, 0x2

    invoke-interface {v10, v11, v8}, Lcom/android/server/pm/StagingManager$StagedSession;->setSessionFailed(ILjava/lang/String;)V

    move v8, v4

    goto :goto_7

    .line 983
    .end local v4    # "hasFailedApexSession":Z
    .restart local v8    # "hasFailedApexSession":Z
    :cond_d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Apex session "

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v10}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result v13

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " is in impossible state"

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v11, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 984
    const/4 v4, 0x1

    .line 985
    .end local v8    # "hasFailedApexSession":Z
    .restart local v4    # "hasFailedApexSession":Z
    const-string v8, "Impossible state"

    const/4 v11, 0x2

    invoke-interface {v10, v11, v8}, Lcom/android/server/pm/StagingManager$StagedSession;->setSessionFailed(ILjava/lang/String;)V

    move v8, v4

    goto :goto_7

    .line 973
    .end local v4    # "hasFailedApexSession":Z
    .restart local v8    # "hasFailedApexSession":Z
    :cond_e
    :goto_5
    const/4 v4, 0x1

    .line 974
    .end local v9    # "hasAppliedApexSession":Z
    .local v4, "hasAppliedApexSession":Z
    move v9, v4

    goto :goto_7

    .line 953
    .end local v4    # "hasAppliedApexSession":Z
    .restart local v9    # "hasAppliedApexSession":Z
    :cond_f
    :goto_6
    const/4 v4, 0x1

    .line 954
    .end local v8    # "hasFailedApexSession":Z
    .local v4, "hasFailedApexSession":Z
    const-string v8, "apexd did not know anything about a staged session supposed to be activated"

    const/4 v11, 0x2

    invoke-interface {v10, v11, v8}, Lcom/android/server/pm/StagingManager$StagedSession;->setSessionFailed(ILjava/lang/String;)V

    .line 956
    move v8, v4

    .line 945
    .end local v4    # "hasFailedApexSession":Z
    .end local v10    # "session":Lcom/android/server/pm/StagingManager$StagedSession;
    .end local v12    # "apexSession":Landroid/apex/ApexSessionInfo;
    .restart local v8    # "hasFailedApexSession":Z
    :goto_7
    add-int/lit8 v0, v0, 0x1

    const/4 v4, 0x2

    goto/16 :goto_3

    .line 990
    .end local v0    # "i":I
    :cond_10
    if-eqz v9, :cond_11

    if-eqz v8, :cond_11

    .line 991
    const-string v0, "Found both applied and failed apex sessions"

    invoke-direct {v1, v0, v7, v6}, Lcom/android/server/pm/StagingManager;->abortCheckpoint(Ljava/lang/String;ZZ)V

    .line 993
    return-void

    .line 996
    :cond_11
    if-eqz v8, :cond_14

    .line 999
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_8
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_13

    .line 1000
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/StagingManager$StagedSession;

    .line 1001
    .local v4, "session":Lcom/android/server/pm/StagingManager$StagedSession;
    invoke-interface {v4}, Lcom/android/server/pm/StagingManager$StagedSession;->isSessionFailed()Z

    move-result v10

    if-eqz v10, :cond_12

    .line 1003
    goto :goto_9

    .line 1005
    :cond_12
    const-string v10, "Another apex session failed"

    const/4 v11, 0x2

    invoke-interface {v4, v11, v10}, Lcom/android/server/pm/StagingManager$StagedSession;->setSessionFailed(ILjava/lang/String;)V

    .line 999
    .end local v4    # "session":Lcom/android/server/pm/StagingManager$StagedSession;
    :goto_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 1008
    .end local v0    # "i":I
    :cond_13
    return-void

    .line 1012
    :cond_14
    const/4 v0, 0x0

    move v4, v0

    .local v4, "i":I
    :goto_a
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_15

    .line 1013
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/android/server/pm/StagingManager$StagedSession;

    .line 1015
    .restart local v10    # "session":Lcom/android/server/pm/StagingManager$StagedSession;
    :try_start_1
    invoke-direct {v1, v10, v7, v6}, Lcom/android/server/pm/StagingManager;->resumeSession(Lcom/android/server/pm/StagingManager$StagedSession;ZZ)V
    :try_end_1
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1024
    const/4 v14, 0x2

    goto :goto_b

    .line 1018
    :catch_0
    move-exception v0

    move-object v12, v0

    move-object v0, v12

    .line 1019
    .local v0, "e":Ljava/lang/Exception;
    const-string v12, "Staged install failed due to unhandled exception"

    invoke-static {v11, v12, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1020
    new-instance v12, Lcom/android/server/pm/PackageManagerException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Staged install failed due to unhandled exception: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x2

    invoke-direct {v12, v14, v13}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v10, v12, v7, v6}, Lcom/android/server/pm/StagingManager;->onInstallationFailure(Lcom/android/server/pm/StagingManager$StagedSession;Lcom/android/server/pm/PackageManagerException;ZZ)V

    goto :goto_b

    .line 1016
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    const/4 v14, 0x2

    move-object v12, v0

    move-object v0, v12

    .line 1017
    .local v0, "e":Lcom/android/server/pm/PackageManagerException;
    invoke-virtual {v1, v10, v0, v7, v6}, Lcom/android/server/pm/StagingManager;->onInstallationFailure(Lcom/android/server/pm/StagingManager$StagedSession;Lcom/android/server/pm/PackageManagerException;ZZ)V

    .line 1024
    .end local v0    # "e":Lcom/android/server/pm/PackageManagerException;
    nop

    .line 1012
    .end local v10    # "session":Lcom/android/server/pm/StagingManager$StagedSession;
    :goto_b
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    .line 1026
    .end local v4    # "i":I
    :cond_15
    invoke-virtual {v3}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1027
    return-void

    .line 925
    .end local v5    # "apexSessions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/apex/ApexSessionInfo;>;"
    .end local v8    # "hasFailedApexSession":Z
    .end local v9    # "hasAppliedApexSession":Z
    :catch_2
    move-exception v0

    .line 927
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Failed to get checkpoint status"

    invoke-direct {v4, v5, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method systemReady()V
    .locals 4

    .line 1047
    new-instance v0, Lcom/android/server/pm/StagingManager$Lifecycle;

    iget-object v1, p0, Lcom/android/server/pm/StagingManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/pm/StagingManager$Lifecycle;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p0}, Lcom/android/server/pm/StagingManager$Lifecycle;->startService(Lcom/android/server/pm/StagingManager;)V

    .line 1049
    iget-object v0, p0, Lcom/android/server/pm/StagingManager;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/pm/StagingManager$1;

    invoke-direct {v1, p0}, Lcom/android/server/pm/StagingManager$1;-><init>(Lcom/android/server/pm/StagingManager;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1057
    iget-object v0, p0, Lcom/android/server/pm/StagingManager;->mFailureReasonFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1058
    return-void
.end method
