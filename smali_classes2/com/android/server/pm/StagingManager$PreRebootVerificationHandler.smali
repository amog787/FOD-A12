.class final Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;
.super Landroid/os/Handler;
.source "StagingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/StagingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PreRebootVerificationHandler"
.end annotation


# static fields
.field private static final MSG_PRE_REBOOT_VERIFICATION_APEX:I = 0x2

.field private static final MSG_PRE_REBOOT_VERIFICATION_APK:I = 0x3

.field private static final MSG_PRE_REBOOT_VERIFICATION_END:I = 0x4

.field private static final MSG_PRE_REBOOT_VERIFICATION_START:I = 0x1


# instance fields
.field private mIsReady:Z

.field private mPendingSessions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/pm/StagingManager$StagedSession;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/pm/StagingManager;


# direct methods
.method constructor <init>(Lcom/android/server/pm/StagingManager;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .line 1122
    iput-object p1, p0, Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;->this$0:Lcom/android/server/pm/StagingManager;

    .line 1123
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1124
    return-void
.end method

.method static synthetic access$300(Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;Lcom/android/server/pm/StagingManager$StagedSession;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;
    .param p1, "x1"    # Lcom/android/server/pm/StagingManager$StagedSession;

    .line 1117
    invoke-direct {p0, p1}, Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;->startPreRebootVerification(Lcom/android/server/pm/StagingManager$StagedSession;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;

    .line 1117
    invoke-direct {p0}, Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;->readyToStart()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;Lcom/android/server/pm/StagingManager$StagedSession;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;
    .param p1, "x1"    # Lcom/android/server/pm/StagingManager$StagedSession;

    .line 1117
    invoke-direct {p0, p1}, Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;->onPreRebootVerificationComplete(Lcom/android/server/pm/StagingManager$StagedSession;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;Lcom/android/server/pm/StagingManager$StagedSession;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;
    .param p1, "x1"    # Lcom/android/server/pm/StagingManager$StagedSession;

    .line 1117
    invoke-direct {p0, p1}, Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;->notifyPreRebootVerification_Apk_Complete(Lcom/android/server/pm/StagingManager$StagedSession;)V

    return-void
.end method

.method private handlePreRebootVerification_Apex(Lcom/android/server/pm/StagingManager$StagedSession;I)V
    .locals 6
    .param p1, "session"    # Lcom/android/server/pm/StagingManager$StagedSession;
    .param p2, "rollbackId"    # I

    .line 1303
    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->containsApexSession()Z

    move-result v0

    .line 1307
    .local v0, "hasApex":Z
    if-eqz v0, :cond_1

    .line 1310
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;->this$0:Lcom/android/server/pm/StagingManager;

    invoke-static {v1, p1, p2}, Lcom/android/server/pm/StagingManager;->access$1000(Lcom/android/server/pm/StagingManager;Lcom/android/server/pm/StagingManager$StagedSession;I)Ljava/util/List;

    move-result-object v1

    .line 1311
    .local v1, "apexPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "size":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 1312
    iget-object v4, p0, Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;->this$0:Lcom/android/server/pm/StagingManager;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageInfo;

    invoke-static {v4, v5}, Lcom/android/server/pm/StagingManager;->access$1100(Lcom/android/server/pm/StagingManager;Landroid/content/pm/PackageInfo;)V
    :try_end_0
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1311
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1317
    .end local v2    # "i":I
    .end local v3    # "size":I
    :cond_0
    nop

    .line 1319
    const-class v2, Landroid/content/pm/PackageManagerInternal;

    .line 1320
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageManagerInternal;

    .line 1321
    .local v2, "packageManagerInternal":Landroid/content/pm/PackageManagerInternal;
    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManagerInternal;->pruneCachedApksInApex(Ljava/util/List;)V

    goto :goto_1

    .line 1314
    .end local v1    # "apexPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v2    # "packageManagerInternal":Landroid/content/pm/PackageManagerInternal;
    :catch_0
    move-exception v1

    .line 1315
    .local v1, "e":Lcom/android/server/pm/PackageManagerException;
    iget v2, v1, Lcom/android/server/pm/PackageManagerException;->error:I

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, v2, v3}, Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;->onPreRebootVerificationFailure(Lcom/android/server/pm/StagingManager$StagedSession;ILjava/lang/String;)V

    .line 1316
    return-void

    .line 1324
    .end local v1    # "e":Lcom/android/server/pm/PackageManagerException;
    :cond_1
    :goto_1
    invoke-direct {p0, p1}, Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;->notifyPreRebootVerification_Apex_Complete(Lcom/android/server/pm/StagingManager$StagedSession;)V

    .line 1325
    return-void
.end method

.method private handlePreRebootVerification_Apk(Lcom/android/server/pm/StagingManager$StagedSession;)V
    .locals 1
    .param p1, "session"    # Lcom/android/server/pm/StagingManager$StagedSession;

    .line 1333
    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->containsApkSession()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1334
    invoke-direct {p0, p1}, Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;->notifyPreRebootVerification_Apk_Complete(Lcom/android/server/pm/StagingManager$StagedSession;)V

    .line 1335
    return-void

    .line 1337
    :cond_0
    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->verifySession()V

    .line 1338
    return-void
.end method

.method private handlePreRebootVerification_End(Lcom/android/server/pm/StagingManager$StagedSession;)V
    .locals 4
    .param p1, "session"    # Lcom/android/server/pm/StagingManager$StagedSession;

    .line 1350
    const-string v0, "StagingManager"

    :try_start_0
    invoke-static {}, Lcom/android/internal/content/PackageHelper;->getStorageManager()Landroid/os/storage/IStorageManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/os/storage/IStorageManager;->supportsCheckpoint()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1351
    invoke-static {}, Lcom/android/internal/content/PackageHelper;->getStorageManager()Landroid/os/storage/IStorageManager;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Landroid/os/storage/IStorageManager;->startCheckpoint(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1359
    :cond_0
    nop

    .line 1367
    invoke-direct {p0, p1}, Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;->onPreRebootVerificationComplete(Lcom/android/server/pm/StagingManager$StagedSession;)V

    .line 1378
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Marking session "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " as ready"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1379
    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->setSessionReady()V

    .line 1380
    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->isSessionReady()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1381
    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->containsApexSession()Z

    move-result v0

    .line 1382
    .local v0, "hasApex":Z
    if-eqz v0, :cond_1

    .line 1384
    :try_start_1
    iget-object v1, p0, Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;->this$0:Lcom/android/server/pm/StagingManager;

    invoke-static {v1}, Lcom/android/server/pm/StagingManager;->access$1200(Lcom/android/server/pm/StagingManager;)Lcom/android/server/pm/ApexManager;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/pm/ApexManager;->markStagedSessionReady(I)V
    :try_end_1
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1388
    goto :goto_0

    .line 1385
    :catch_0
    move-exception v1

    .line 1386
    .local v1, "e":Lcom/android/server/pm/PackageManagerException;
    iget v2, v1, Lcom/android/server/pm/PackageManagerException;->error:I

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Lcom/android/server/pm/StagingManager$StagedSession;->setSessionFailed(ILjava/lang/String;)V

    .line 1387
    return-void

    .line 1391
    .end local v0    # "hasApex":Z
    .end local v1    # "e":Lcom/android/server/pm/PackageManagerException;
    :cond_1
    :goto_0
    return-void

    .line 1353
    :catch_1
    move-exception v1

    .line 1355
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "Failed to get hold of StorageManager"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1356
    const/4 v0, 0x3

    invoke-direct {p0, p1, v0, v2}, Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;->onPreRebootVerificationFailure(Lcom/android/server/pm/StagingManager$StagedSession;ILjava/lang/String;)V

    .line 1358
    return-void
.end method

.method private handlePreRebootVerification_Start(Lcom/android/server/pm/StagingManager$StagedSession;)V
    .locals 5
    .param p1, "session"    # Lcom/android/server/pm/StagingManager$StagedSession;

    .line 1252
    :try_start_0
    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->isMultiPackage()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1253
    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->getChildSessions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/StagingManager$StagedSession;

    .line 1254
    .local v1, "s":Lcom/android/server/pm/StagingManager$StagedSession;
    iget-object v2, p0, Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;->this$0:Lcom/android/server/pm/StagingManager;

    invoke-virtual {v2, v1}, Lcom/android/server/pm/StagingManager;->checkNonOverlappingWithStagedSessions(Lcom/android/server/pm/StagingManager$StagedSession;)V

    .line 1255
    .end local v1    # "s":Lcom/android/server/pm/StagingManager$StagedSession;
    goto :goto_0

    :cond_0
    goto :goto_1

    .line 1257
    :cond_1
    iget-object v0, p0, Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;->this$0:Lcom/android/server/pm/StagingManager;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/StagingManager;->checkNonOverlappingWithStagedSessions(Lcom/android/server/pm/StagingManager$StagedSession;)V
    :try_end_0
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1262
    :goto_1
    nop

    .line 1264
    const/4 v0, -0x1

    .line 1265
    .local v0, "rollbackId":I
    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionParams()Landroid/content/pm/PackageInstaller$SessionParams;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/high16 v2, 0x40000

    and-int/2addr v1, v2

    if-eqz v1, :cond_2

    .line 1270
    const-class v1, Lcom/android/server/rollback/RollbackManagerInternal;

    .line 1271
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/rollback/RollbackManagerInternal;

    .line 1275
    .local v1, "rm":Lcom/android/server/rollback/RollbackManagerInternal;
    :try_start_1
    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/server/rollback/RollbackManagerInternal;->notifyStagedSession(I)I

    move-result v2
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    move v0, v2

    .line 1279
    goto :goto_2

    .line 1276
    :catch_0
    move-exception v2

    .line 1277
    .local v2, "re":Ljava/lang/RuntimeException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to notifyStagedSession for session: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1278
    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1277
    const-string v4, "StagingManager"

    invoke-static {v4, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 1280
    .end local v1    # "rm":Lcom/android/server/rollback/RollbackManagerInternal;
    .end local v2    # "re":Ljava/lang/RuntimeException;
    :cond_2
    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionParams()Landroid/content/pm/PackageInstaller$SessionParams;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->installReason:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_3

    .line 1283
    :try_start_2
    iget-object v1, p0, Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;->this$0:Lcom/android/server/pm/StagingManager;

    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/pm/StagingManager;->access$900(Lcom/android/server/pm/StagingManager;I)I

    move-result v1
    :try_end_2
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_2 .. :try_end_2} :catch_1

    move v0, v1

    .line 1287
    goto :goto_3

    .line 1284
    :catch_1
    move-exception v1

    .line 1285
    .local v1, "e":Lcom/android/server/pm/PackageManagerException;
    iget v2, v1, Lcom/android/server/pm/PackageManagerException;->error:I

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, v2, v3}, Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;->onPreRebootVerificationFailure(Lcom/android/server/pm/StagingManager$StagedSession;ILjava/lang/String;)V

    .line 1286
    return-void

    .line 1280
    .end local v1    # "e":Lcom/android/server/pm/PackageManagerException;
    :cond_3
    :goto_2
    nop

    .line 1290
    :goto_3
    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;->notifyPreRebootVerification_Start_Complete(Lcom/android/server/pm/StagingManager$StagedSession;I)V

    .line 1291
    return-void

    .line 1259
    .end local v0    # "rollbackId":I
    :catch_2
    move-exception v0

    .line 1260
    .local v0, "e":Lcom/android/server/pm/PackageManagerException;
    iget v1, v0, Lcom/android/server/pm/PackageManagerException;->error:I

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;->onPreRebootVerificationFailure(Lcom/android/server/pm/StagingManager$StagedSession;ILjava/lang/String;)V

    .line 1261
    return-void
.end method

.method private notifyPreRebootVerification_Apex_Complete(Lcom/android/server/pm/StagingManager$StagedSession;)V
    .locals 3
    .param p1, "session"    # Lcom/android/server/pm/StagingManager$StagedSession;

    .line 1235
    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, -0x1

    invoke-virtual {p0, v1, v0, v2, p1}, Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1236
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1237
    return-void
.end method

.method private notifyPreRebootVerification_Apk_Complete(Lcom/android/server/pm/StagingManager$StagedSession;)V
    .locals 3
    .param p1, "session"    # Lcom/android/server/pm/StagingManager$StagedSession;

    .line 1241
    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, -0x1

    invoke-virtual {p0, v1, v0, v2, p1}, Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1242
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1243
    return-void
.end method

.method private notifyPreRebootVerification_Start_Complete(Lcom/android/server/pm/StagingManager$StagedSession;I)V
    .locals 2
    .param p1, "session"    # Lcom/android/server/pm/StagingManager$StagedSession;
    .param p2, "rollbackId"    # I

    .line 1229
    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result v0

    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0, p2, p1}, Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1230
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1231
    return-void
.end method

.method private onPreRebootVerificationComplete(Lcom/android/server/pm/StagingManager$StagedSession;)V
    .locals 3
    .param p1, "session"    # Lcom/android/server/pm/StagingManager$StagedSession;

    .line 1222
    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result v0

    .line 1223
    .local v0, "sessionId":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stopping preRebootVerification for session "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "StagingManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1224
    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->notifyEndPreRebootVerification()V

    .line 1225
    return-void
.end method

.method private onPreRebootVerificationFailure(Lcom/android/server/pm/StagingManager$StagedSession;ILjava/lang/String;)V
    .locals 2
    .param p1, "session"    # Lcom/android/server/pm/StagingManager$StagedSession;
    .param p2, "errorCode"    # I
    .param p3, "errorMessage"    # Ljava/lang/String;

    .line 1211
    iget-object v0, p0, Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;->this$0:Lcom/android/server/pm/StagingManager;

    invoke-static {v0, p1}, Lcom/android/server/pm/StagingManager;->access$800(Lcom/android/server/pm/StagingManager;Lcom/android/server/pm/StagingManager$StagedSession;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to abort apex session "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StagingManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1216
    :cond_0
    invoke-interface {p1, p2, p3}, Lcom/android/server/pm/StagingManager$StagedSession;->setSessionFailed(ILjava/lang/String;)V

    .line 1217
    invoke-direct {p0, p1}, Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;->onPreRebootVerificationComplete(Lcom/android/server/pm/StagingManager$StagedSession;)V

    .line 1218
    return-void
.end method

.method private declared-synchronized readyToStart()V
    .locals 2

    monitor-enter p0

    .line 1180
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;->mIsReady:Z

    .line 1181
    iget-object v0, p0, Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;->mPendingSessions:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 1182
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;->mPendingSessions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1183
    iget-object v1, p0, Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;->mPendingSessions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/StagingManager$StagedSession;

    .line 1184
    .local v1, "session":Lcom/android/server/pm/StagingManager$StagedSession;
    invoke-direct {p0, v1}, Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;->startPreRebootVerification(Lcom/android/server/pm/StagingManager$StagedSession;)V

    .line 1182
    .end local v1    # "session":Lcom/android/server/pm/StagingManager$StagedSession;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1186
    .end local v0    # "i":I
    .end local p0    # "this":Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;->mPendingSessions:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1188
    :cond_1
    monitor-exit p0

    return-void

    .line 1179
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized startPreRebootVerification(Lcom/android/server/pm/StagingManager$StagedSession;)V
    .locals 4
    .param p1, "session"    # Lcom/android/server/pm/StagingManager$StagedSession;

    monitor-enter p0

    .line 1193
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;->mIsReady:Z

    if-nez v0, :cond_1

    .line 1194
    iget-object v0, p0, Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;->mPendingSessions:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1195
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;->mPendingSessions:Ljava/util/List;

    .line 1197
    .end local p0    # "this":Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;->mPendingSessions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1198
    monitor-exit p0

    return-void

    .line 1201
    :cond_1
    :try_start_1
    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->notifyStartPreRebootVerification()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1202
    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result v0

    .line 1203
    .local v0, "sessionId":I
    const-string v1, "StagingManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting preRebootVerification for session "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1204
    const/4 v1, 0x1

    const/4 v2, -0x1

    invoke-virtual {p0, v1, v0, v2, p1}, Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1205
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1207
    .end local v0    # "sessionId":I
    :cond_2
    monitor-exit p0

    return-void

    .line 1192
    .end local p1    # "session":Lcom/android/server/pm/StagingManager$StagedSession;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 1147
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 1148
    .local v0, "sessionId":I
    iget v1, p1, Landroid/os/Message;->arg2:I

    .line 1149
    .local v1, "rollbackId":I
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/pm/StagingManager$StagedSession;

    .line 1150
    .local v2, "session":Lcom/android/server/pm/StagingManager$StagedSession;
    invoke-interface {v2}, Lcom/android/server/pm/StagingManager$StagedSession;->isDestroyed()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v2}, Lcom/android/server/pm/StagingManager$StagedSession;->isSessionFailed()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_2

    .line 1156
    :cond_0
    :try_start_0
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 1167
    :pswitch_0
    invoke-direct {p0, v2}, Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;->handlePreRebootVerification_End(Lcom/android/server/pm/StagingManager$StagedSession;)V

    goto :goto_0

    .line 1164
    :pswitch_1
    invoke-direct {p0, v2}, Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;->handlePreRebootVerification_Apk(Lcom/android/server/pm/StagingManager$StagedSession;)V

    .line 1165
    goto :goto_0

    .line 1161
    :pswitch_2
    invoke-direct {p0, v2, v1}, Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;->handlePreRebootVerification_Apex(Lcom/android/server/pm/StagingManager$StagedSession;I)V

    .line 1162
    goto :goto_0

    .line 1158
    :pswitch_3
    invoke-direct {p0, v2}, Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;->handlePreRebootVerification_Start(Lcom/android/server/pm/StagingManager$StagedSession;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1159
    nop

    .line 1175
    :goto_0
    goto :goto_1

    .line 1170
    :catch_0
    move-exception v3

    .line 1171
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "StagingManager"

    const-string v5, "Pre-reboot verification failed due to unhandled exception"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1172
    const/4 v4, 0x2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Pre-reboot verification failed due to unhandled exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v2, v4, v5}, Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;->onPreRebootVerificationFailure(Lcom/android/server/pm/StagingManager$StagedSession;ILjava/lang/String;)V

    .line 1176
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_1
    return-void

    .line 1152
    :cond_1
    :goto_2
    invoke-direct {p0, v2}, Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;->onPreRebootVerificationComplete(Lcom/android/server/pm/StagingManager$StagedSession;)V

    .line 1153
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
