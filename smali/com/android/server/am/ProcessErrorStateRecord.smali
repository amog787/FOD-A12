.class Lcom/android/server/am/ProcessErrorStateRecord;
.super Ljava/lang/Object;
.source "ProcessErrorStateRecord.java"


# instance fields
.field final mApp:Lcom/android/server/am/ProcessRecord;

.field private mBad:Z

.field private mCrashHandler:Ljava/lang/Runnable;

.field private mCrashing:Z

.field private mCrashingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

.field private final mDialogController:Lcom/android/server/am/ErrorDialogController;

.field private mErrorReportReceiver:Landroid/content/ComponentName;

.field private mForceCrashReport:Z

.field private mNotResponding:Z

.field private mNotRespondingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

.field private final mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

.field private final mService:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ProcessRecord;)V
    .locals 1
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 213
    iput-object p1, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 214
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-object v0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 215
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    iput-object v0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    .line 216
    new-instance v0, Lcom/android/server/am/ErrorDialogController;

    invoke-direct {v0, p1}, Lcom/android/server/am/ErrorDialogController;-><init>(Lcom/android/server/am/ProcessRecord;)V

    iput-object v0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mDialogController:Lcom/android/server/am/ErrorDialogController;

    .line 217
    return-void
.end method

.method private getShowBackground()Z
    .locals 3

    .line 580
    iget-object v0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "anr_show_background"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method private isInterestingForBackgroundTraces()Z
    .locals 3

    .line 561
    iget-object v0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v0

    sget v1, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 562
    return v2

    .line 574
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->isInterestingToUserLocked()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 575
    const-string v1, "com.android.systemui"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 576
    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->hasTopUi()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->hasOverlayUi()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    nop

    .line 574
    :goto_1
    return v2
.end method

.method static synthetic lambda$appNotResponding$1(IILjava/util/ArrayList;Landroid/util/SparseArray;Lcom/android/server/am/ProcessRecord;)V
    .locals 2
    .param p0, "pid"    # I
    .param p1, "ppid"    # I
    .param p2, "firstPids"    # Ljava/util/ArrayList;
    .param p3, "lastPids"    # Landroid/util/SparseArray;
    .param p4, "r"    # Lcom/android/server/am/ProcessRecord;

    .line 298
    if-eqz p4, :cond_2

    invoke-virtual {p4}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 299
    invoke-virtual {p4}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v0

    .line 300
    .local v0, "myPid":I
    if-lez v0, :cond_2

    if-eq v0, p0, :cond_2

    if-eq v0, p1, :cond_2

    sget v1, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq v0, v1, :cond_2

    .line 301
    invoke-virtual {p4}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 302
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 304
    :cond_0
    iget-object v1, p4, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessServiceRecord;->isTreatedLikeActivity()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 305
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 308
    :cond_1
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p3, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 313
    .end local v0    # "myPid":I
    :cond_2
    :goto_0
    return-void
.end method

.method private makeAppNotRespondingLSP(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "activity"    # Ljava/lang/String;
    .param p2, "shortMsg"    # Ljava/lang/String;
    .param p3, "longMsg"    # Ljava/lang/String;

    .line 531
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/am/ProcessErrorStateRecord;->setNotResponding(Z)V

    .line 534
    iget-object v0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAppErrors:Lcom/android/server/am/AppErrors;

    if-eqz v0, :cond_0

    .line 535
    iget-object v0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService;->mAppErrors:Lcom/android/server/am/AppErrors;

    iget-object v2, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    const/4 v3, 0x2

    const/4 v7, 0x0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/AppErrors;->generateProcessError(Lcom/android/server/am/ProcessRecord;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/ActivityManager$ProcessErrorStateInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mNotRespondingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    .line 539
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/am/ProcessErrorStateRecord;->startAppProblemLSP()V

    .line 540
    iget-object v0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->stopFreezingActivities()V

    .line 541
    return-void
.end method


# virtual methods
.method appNotResponding(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Lcom/android/server/wm/WindowProcessController;ZLjava/lang/String;Z)V
    .locals 63
    .param p1, "activityShortComponentName"    # Ljava/lang/String;
    .param p2, "aInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p3, "parentShortComponentName"    # Ljava/lang/String;
    .param p4, "parentProcess"    # Lcom/android/server/wm/WindowProcessController;
    .param p5, "aboveSystem"    # Z
    .param p6, "annotation"    # Ljava/lang/String;
    .param p7, "onlyDumpSelf"    # Z

    .line 222
    move-object/from16 v1, p0

    move-object/from16 v15, p1

    move-object/from16 v14, p2

    move-object/from16 v13, p3

    move-object/from16 v12, p4

    move-object/from16 v11, p6

    new-instance v0, Ljava/util/ArrayList;

    const/4 v2, 0x5

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    move-object v10, v0

    .line 223
    .local v10, "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v0, Landroid/util/SparseArray;

    const/16 v3, 0x14

    invoke-direct {v0, v3}, Landroid/util/SparseArray;-><init>(I)V

    move-object v9, v0

    .line 225
    .local v9, "lastPids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    iget-object v0, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    new-instance v3, Lcom/android/server/am/ProcessErrorStateRecord$$ExternalSyntheticLambda0;

    invoke-direct {v3, v1}, Lcom/android/server/am/ProcessErrorStateRecord$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/ProcessErrorStateRecord;)V

    invoke-virtual {v0, v11, v3}, Lcom/android/server/wm/WindowProcessController;->appEarlyNotResponding(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 231
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 232
    .local v6, "anrTime":J
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ProcessErrorStateRecord;->isMonitorCpuUsage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->updateCpuStatsNow()V

    .line 237
    :cond_0
    iget-object v0, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v5

    .line 239
    .local v5, "pid":I
    iget-object v3, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 241
    iget-object v0, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->isShuttingDown()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_e

    if-eqz v0, :cond_1

    .line 242
    :try_start_1
    const-string v0, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "During shutdown skipping ANR: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 315
    :catchall_0
    move-exception v0

    move/from16 v28, v5

    move-wide/from16 v21, v6

    move-object/from16 v30, v9

    move-object/from16 v19, v10

    move-object v5, v11

    move-object v9, v14

    move-object v6, v15

    move/from16 v10, p5

    goto/16 :goto_29

    .line 244
    :cond_1
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ProcessErrorStateRecord;->isNotResponding()Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_e

    if-eqz v0, :cond_2

    .line 245
    :try_start_3
    const-string v0, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skipping duplicate ANR: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 247
    :cond_2
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ProcessErrorStateRecord;->isCrashing()Z

    move-result v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_e

    if-eqz v0, :cond_3

    .line 248
    :try_start_5
    const-string v0, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Crashing app skipping ANR: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 250
    :cond_3
    :try_start_6
    iget-object v0, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->isKilledByAm()Z

    move-result v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_e

    if-eqz v0, :cond_4

    .line 251
    :try_start_7
    const-string v0, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "App already killed by AM skipping ANR: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 253
    :cond_4
    :try_start_8
    iget-object v0, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->isKilled()Z

    move-result v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_e

    if-eqz v0, :cond_5

    .line 254
    :try_start_9
    const-string v0, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skipping died app ANR: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 260
    :cond_5
    :try_start_a
    iget-object v4, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    monitor-enter v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_e

    :try_start_b
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 261
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/android/server/am/ProcessErrorStateRecord;->setNotResponding(Z)V

    .line 262
    monitor-exit v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_c

    :try_start_c
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 265
    new-array v2, v2, [Ljava/lang/Object;

    iget-object v8, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget v8, v8, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v4, 0x0

    aput-object v8, v2, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v2, v0

    iget-object v8, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v8, v8, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    const/4 v0, 0x2

    aput-object v8, v2, v0

    iget-object v8, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v8, v8, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 266
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v0, 0x3

    aput-object v8, v2, v0

    const/4 v8, 0x4

    aput-object v11, v2, v8

    .line 265
    const/16 v8, 0x7538

    invoke-static {v8, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 268
    iget-object v2, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mTraceErrorLogger:Lcom/android/server/am/TraceErrorLogger;

    invoke-virtual {v2}, Lcom/android/server/am/TraceErrorLogger;->isAddErrorIdEnabled()Z

    move-result v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_e

    if-eqz v2, :cond_6

    .line 269
    :try_start_d
    iget-object v2, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mTraceErrorLogger:Lcom/android/server/am/TraceErrorLogger;

    invoke-virtual {v2}, Lcom/android/server/am/TraceErrorLogger;->generateErrorId()Ljava/util/UUID;

    move-result-object v2

    .line 270
    .local v2, "errorId":Ljava/util/UUID;
    iget-object v8, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mTraceErrorLogger:Lcom/android/server/am/TraceErrorLogger;

    iget-object v0, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v8, v0, v2}, Lcom/android/server/am/TraceErrorLogger;->addErrorIdToTrace(Ljava/lang/String;Ljava/util/UUID;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    move-object/from16 v49, v2

    goto :goto_0

    .line 272
    .end local v2    # "errorId":Ljava/util/UUID;
    :cond_6
    const/4 v0, 0x0

    move-object v2, v0

    move-object/from16 v49, v2

    .line 279
    .local v49, "errorId":Ljava/util/UUID;
    :goto_0
    const/16 v0, 0x178

    :try_start_e
    iget-object v2, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILjava/lang/String;)V

    .line 283
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 286
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ProcessErrorStateRecord;->isSilentAnr()Z

    move-result v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_e

    move/from16 v50, v0

    .line 287
    .local v50, "isSilentAnr":Z
    if-nez v50, :cond_a

    if-nez p7, :cond_a

    .line 288
    move v0, v5

    .line 289
    .local v0, "parentPid":I
    if-eqz v12, :cond_7

    :try_start_f
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/wm/WindowProcessController;->getPid()I

    move-result v2

    if-lez v2, :cond_7

    .line 290
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/wm/WindowProcessController;->getPid()I

    move-result v2

    move v0, v2

    .line 292
    :cond_7
    if-eq v0, v5, :cond_8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 294
    :cond_8
    sget v2, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq v2, v5, :cond_9

    sget v2, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq v2, v0, :cond_9

    sget v2, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 296
    :cond_9
    move v2, v0

    .line 297
    .local v2, "ppid":I
    iget-object v8, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    new-instance v4, Lcom/android/server/am/ProcessErrorStateRecord$$ExternalSyntheticLambda3;

    invoke-direct {v4, v5, v2, v10, v9}, Lcom/android/server/am/ProcessErrorStateRecord$$ExternalSyntheticLambda3;-><init>(IILjava/util/ArrayList;Landroid/util/SparseArray;)V

    move/from16 v16, v0

    const/4 v0, 0x0

    .end local v0    # "parentPid":I
    .local v16, "parentPid":I
    invoke-virtual {v8, v0, v4}, Lcom/android/server/am/ProcessList;->forEachLruProcessesLOSP(ZLjava/util/function/Consumer;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 315
    .end local v2    # "ppid":I
    .end local v16    # "parentPid":I
    :cond_a
    :try_start_10
    monitor-exit v3
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_e

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 318
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, v0

    .line 319
    .local v4, "info":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 320
    const-string v0, "ANR in "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    if-eqz v15, :cond_b

    .line 322
    const-string v0, " ("

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    :cond_b
    const-string v0, "\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    const-string v0, "PID: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    if-eqz v11, :cond_c

    .line 327
    const-string v0, "Reason: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    :cond_c
    if-eqz v13, :cond_d

    .line 330
    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 331
    const-string v0, "Parent: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    :cond_d
    if-eqz v49, :cond_e

    .line 334
    const-string v0, "ErrorId: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v49 .. v49}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    :cond_e
    const-string v0, "Frozen: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->isFrozen()Z

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    iget-object v0, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0, v14}, Lcom/android/server/wm/ActivityTaskManagerService;->getAnrController(Landroid/content/pm/ApplicationInfo;)Landroid/app/AnrController;

    move-result-object v3

    .line 343
    .local v3, "anrController":Landroid/app/AnrController;
    const-wide/16 v16, 0x0

    .line 344
    .local v16, "anrDialogDelayMs":J
    if-eqz v3, :cond_f

    .line 345
    iget-object v0, v14, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 346
    .local v0, "packageName":Ljava/lang/String;
    iget v2, v14, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 347
    .local v2, "uid":I
    move-object/from16 v51, v9

    .end local v9    # "lastPids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    .local v51, "lastPids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    invoke-interface {v3, v0, v2}, Landroid/app/AnrController;->getAnrDelayMillis(Ljava/lang/String;I)J

    move-result-wide v8

    .line 350
    .end local v16    # "anrDialogDelayMs":J
    .local v8, "anrDialogDelayMs":J
    invoke-interface {v3, v0, v2}, Landroid/app/AnrController;->onAnrDelayStarted(Ljava/lang/String;I)V

    .line 351
    move/from16 v18, v2

    .end local v2    # "uid":I
    .local v18, "uid":I
    const-string v2, "ActivityManager"

    move-object/from16 v52, v3

    .end local v3    # "anrController":Landroid/app/AnrController;
    .local v52, "anrController":Landroid/app/AnrController;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ANR delay of "

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v11, "ms started for "

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v2, v8

    goto :goto_1

    .line 344
    .end local v0    # "packageName":Ljava/lang/String;
    .end local v8    # "anrDialogDelayMs":J
    .end local v18    # "uid":I
    .end local v51    # "lastPids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    .end local v52    # "anrController":Landroid/app/AnrController;
    .restart local v3    # "anrController":Landroid/app/AnrController;
    .restart local v9    # "lastPids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    .restart local v16    # "anrDialogDelayMs":J
    :cond_f
    move-object/from16 v52, v3

    move-object/from16 v51, v9

    .end local v3    # "anrController":Landroid/app/AnrController;
    .end local v9    # "lastPids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    .restart local v51    # "lastPids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    .restart local v52    # "anrController":Landroid/app/AnrController;
    move-wide/from16 v2, v16

    .line 354
    .end local v16    # "anrDialogDelayMs":J
    .local v2, "anrDialogDelayMs":J
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v11, v0

    .line 355
    .local v11, "report":Ljava/lang/StringBuilder;
    invoke-static {}, Lcom/android/server/MemoryPressureUtil;->currentPsiState()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    new-instance v0, Lcom/android/internal/os/ProcessCpuTracker;

    const/4 v8, 0x1

    invoke-direct {v0, v8}, Lcom/android/internal/os/ProcessCpuTracker;-><init>(Z)V

    move-object v9, v0

    .line 359
    .local v9, "processCpuTracker":Lcom/android/internal/os/ProcessCpuTracker;
    const/4 v0, 0x0

    .line 360
    .local v0, "nativeProcs":[Ljava/lang/String;
    if-nez v50, :cond_11

    if-eqz p7, :cond_10

    goto :goto_2

    .line 368
    :cond_10
    sget-object v0, Lcom/android/server/Watchdog;->NATIVE_STACKS_OF_INTEREST:[Ljava/lang/String;

    move-object/from16 v55, v0

    move-wide/from16 v53, v2

    goto :goto_5

    .line 361
    :cond_11
    :goto_2
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_3
    move-object/from16 v16, v0

    .end local v0    # "nativeProcs":[Ljava/lang/String;
    .local v16, "nativeProcs":[Ljava/lang/String;
    sget-object v0, Lcom/android/server/Watchdog;->NATIVE_STACKS_OF_INTEREST:[Ljava/lang/String;

    array-length v0, v0

    if-ge v8, v0, :cond_13

    .line 362
    sget-object v0, Lcom/android/server/Watchdog;->NATIVE_STACKS_OF_INTEREST:[Ljava/lang/String;

    aget-object v0, v0, v8

    move-wide/from16 v53, v2

    .end local v2    # "anrDialogDelayMs":J
    .local v53, "anrDialogDelayMs":J
    iget-object v2, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 363
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    iget-object v0, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    move-object v0, v2

    .line 364
    .end local v16    # "nativeProcs":[Ljava/lang/String;
    .restart local v0    # "nativeProcs":[Ljava/lang/String;
    goto :goto_4

    .line 361
    .end local v0    # "nativeProcs":[Ljava/lang/String;
    .restart local v16    # "nativeProcs":[Ljava/lang/String;
    :cond_12
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v0, v16

    move-wide/from16 v2, v53

    goto :goto_3

    .end local v53    # "anrDialogDelayMs":J
    .restart local v2    # "anrDialogDelayMs":J
    :cond_13
    move-wide/from16 v53, v2

    .end local v2    # "anrDialogDelayMs":J
    .restart local v53    # "anrDialogDelayMs":J
    move-object/from16 v0, v16

    .end local v8    # "i":I
    .end local v16    # "nativeProcs":[Ljava/lang/String;
    .restart local v0    # "nativeProcs":[Ljava/lang/String;
    :goto_4
    move-object/from16 v55, v0

    .line 371
    .end local v0    # "nativeProcs":[Ljava/lang/String;
    .local v55, "nativeProcs":[Ljava/lang/String;
    :goto_5
    if-nez v55, :cond_14

    const/4 v2, 0x0

    goto :goto_6

    :cond_14
    invoke-static/range {v55 .. v55}, Landroid/os/Process;->getPidsForCommands([Ljava/lang/String;)[I

    move-result-object v2

    :goto_6
    move-object v3, v2

    .line 372
    .local v3, "pids":[I
    const/4 v2, 0x0

    .line 374
    .local v2, "nativePids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz v3, :cond_16

    .line 375
    new-instance v8, Ljava/util/ArrayList;

    array-length v0, v3

    invoke-direct {v8, v0}, Ljava/util/ArrayList;-><init>(I)V

    move-object v2, v8

    .line 376
    array-length v0, v3

    const/4 v8, 0x0

    :goto_7
    if-ge v8, v0, :cond_15

    aget v16, v3, v8

    .line 377
    .local v16, "i":I
    move/from16 v17, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 376
    .end local v16    # "i":I
    add-int/lit8 v8, v8, 0x1

    move/from16 v0, v17

    goto :goto_7

    :cond_15
    move-object/from16 v56, v2

    goto :goto_8

    .line 374
    :cond_16
    move-object/from16 v56, v2

    .line 383
    .end local v2    # "nativePids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local v56, "nativePids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :goto_8
    new-instance v20, Ljava/io/StringWriter;

    invoke-direct/range {v20 .. v20}, Ljava/io/StringWriter;-><init>()V

    .line 385
    .local v20, "tracesFileException":Ljava/io/StringWriter;
    const/4 v0, 0x2

    new-array v2, v0, [J

    .line 386
    .local v2, "offsets":[J
    nop

    .line 387
    if-eqz v50, :cond_17

    const/16 v17, 0x0

    goto :goto_9

    :cond_17
    move-object/from16 v17, v9

    :goto_9
    if-eqz v50, :cond_18

    const/16 v18, 0x0

    goto :goto_a

    :cond_18
    move-object/from16 v18, v51

    .line 386
    :goto_a
    move-object/from16 v16, v10

    move-object/from16 v19, v56

    move-object/from16 v21, v2

    move-object/from16 v22, p6

    invoke-static/range {v16 .. v22}, Lcom/android/server/am/ActivityManagerService;->dumpStackTraces(Ljava/util/ArrayList;Lcom/android/internal/os/ProcessCpuTracker;Landroid/util/SparseArray;Ljava/util/ArrayList;Ljava/io/StringWriter;[JLjava/lang/String;)Ljava/io/File;

    move-result-object v16

    .line 390
    .local v16, "tracesFile":Ljava/io/File;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ProcessErrorStateRecord;->isMonitorCpuUsage()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 391
    iget-object v0, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->updateCpuStatsNow()V

    .line 392
    iget-object v0, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    invoke-virtual {v0, v11, v6, v7}, Lcom/android/server/am/AppProfiler;->printCurrentCpuState(Ljava/lang/StringBuilder;J)V

    .line 393
    invoke-virtual {v9}, Lcom/android/internal/os/ProcessCpuTracker;->printCurrentLoad()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 396
    :cond_19
    invoke-virtual/range {v20 .. v20}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuilder;

    .line 398
    invoke-virtual {v9, v6, v7}, Lcom/android/internal/os/ProcessCpuTracker;->printCurrentState(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    const-string v0, "ActivityManager"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    if-nez v16, :cond_1a

    .line 403
    const/4 v0, 0x3

    invoke-static {v5, v0}, Landroid/os/Process;->sendSignal(II)V

    move-object/from16 v17, v3

    const/4 v3, 0x0

    goto :goto_b

    .line 404
    :cond_1a
    const/4 v0, 0x1

    aget-wide v17, v2, v0

    const-wide/16 v21, 0x0

    cmp-long v0, v17, v21

    if-lez v0, :cond_1b

    .line 406
    iget-object v0, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mAppExitInfoTracker:Lcom/android/server/am/AppExitInfoTracker;

    iget-object v8, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget v8, v8, Lcom/android/server/am/ProcessRecord;->uid:I

    move-object/from16 v17, v3

    .end local v3    # "pids":[I
    .local v17, "pids":[I
    iget-object v3, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 407
    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->getPackageList()[Ljava/lang/String;

    move-result-object v24

    const/4 v3, 0x0

    aget-wide v26, v2, v3

    const/16 v18, 0x1

    aget-wide v28, v2, v18

    .line 406
    move-object/from16 v21, v0

    move/from16 v22, v5

    move/from16 v23, v8

    move-object/from16 v25, v16

    invoke-virtual/range {v21 .. v29}, Lcom/android/server/am/AppExitInfoTracker;->scheduleLogAnrTrace(II[Ljava/lang/String;Ljava/io/File;JJ)V

    goto :goto_b

    .line 404
    .end local v17    # "pids":[I
    .restart local v3    # "pids":[I
    :cond_1b
    move-object/from16 v17, v3

    const/4 v3, 0x0

    .line 411
    .end local v3    # "pids":[I
    .restart local v17    # "pids":[I
    :goto_b
    const/high16 v0, 0x3f800000    # 1.0f

    .line 412
    .local v0, "loadingProgress":F
    const/4 v8, 0x0

    .line 413
    .local v8, "incrementalMetrics":Landroid/os/incremental/IncrementalMetrics;
    iget-object v3, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v3

    .line 414
    .local v3, "packageManagerInternal":Landroid/content/pm/PackageManagerInternal;
    move/from16 v18, v0

    .end local v0    # "loadingProgress":F
    .local v18, "loadingProgress":F
    iget-object v0, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    const/high16 v19, 0x42c80000    # 100.0f

    if-eqz v0, :cond_1f

    iget-object v0, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_1f

    .line 415
    iget-object v0, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v57, v2

    .end local v2    # "offsets":[J
    .local v57, "offsets":[J
    iget-object v2, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget v2, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    move/from16 v58, v5

    .end local v5    # "pid":I
    .local v58, "pid":I
    iget-object v5, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget v5, v5, Lcom/android/server/am/ProcessRecord;->userId:I

    .line 416
    invoke-virtual {v3, v0, v2, v5}, Landroid/content/pm/PackageManagerInternal;->getIncrementalStatesInfo(Ljava/lang/String;II)Landroid/content/pm/IncrementalStatesInfo;

    move-result-object v0

    .line 418
    .local v0, "incrementalStatesInfo":Landroid/content/pm/IncrementalStatesInfo;
    if-eqz v0, :cond_1c

    .line 419
    invoke-virtual {v0}, Landroid/content/pm/IncrementalStatesInfo;->getProgress()F

    move-result v2

    move/from16 v18, v2

    .line 421
    :cond_1c
    iget-object v2, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2}, Landroid/content/pm/ApplicationInfo;->getCodePath()Ljava/lang/String;

    move-result-object v2

    .line 422
    .local v2, "codePath":Ljava/lang/String;
    if-eqz v2, :cond_1e

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1e

    .line 423
    invoke-static {v2}, Landroid/os/incremental/IncrementalManager;->isIncrementalPath(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 425
    const-string v5, "ActivityManager"

    move-object/from16 v21, v0

    .end local v0    # "incrementalStatesInfo":Landroid/content/pm/IncrementalStatesInfo;
    .local v21, "incrementalStatesInfo":Landroid/content/pm/IncrementalStatesInfo;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v59, v3

    .end local v3    # "packageManagerInternal":Landroid/content/pm/PackageManagerInternal;
    .local v59, "packageManagerInternal":Landroid/content/pm/PackageManagerInternal;
    const-string v3, "App ANR on incremental package "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " which is "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    mul-float v3, v18, v19

    float-to-int v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "% loaded."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    const-string v0, "incremental"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 429
    .local v0, "incrementalService":Landroid/os/IBinder;
    if-eqz v0, :cond_20

    .line 430
    new-instance v3, Landroid/os/incremental/IncrementalManager;

    .line 431
    invoke-static {v0}, Landroid/os/incremental/IIncrementalService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/incremental/IIncrementalService;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/os/incremental/IncrementalManager;-><init>(Landroid/os/incremental/IIncrementalService;)V

    .line 432
    .local v3, "incrementalManager":Landroid/os/incremental/IncrementalManager;
    invoke-virtual {v3, v2}, Landroid/os/incremental/IncrementalManager;->getMetrics(Ljava/lang/String;)Landroid/os/incremental/IncrementalMetrics;

    move-result-object v8

    move/from16 v5, v18

    move-object/from16 v18, v8

    goto :goto_d

    .line 423
    .end local v21    # "incrementalStatesInfo":Landroid/content/pm/IncrementalStatesInfo;
    .end local v59    # "packageManagerInternal":Landroid/content/pm/PackageManagerInternal;
    .local v0, "incrementalStatesInfo":Landroid/content/pm/IncrementalStatesInfo;
    .local v3, "packageManagerInternal":Landroid/content/pm/PackageManagerInternal;
    :cond_1d
    move-object/from16 v21, v0

    move-object/from16 v59, v3

    .end local v0    # "incrementalStatesInfo":Landroid/content/pm/IncrementalStatesInfo;
    .end local v3    # "packageManagerInternal":Landroid/content/pm/PackageManagerInternal;
    .restart local v21    # "incrementalStatesInfo":Landroid/content/pm/IncrementalStatesInfo;
    .restart local v59    # "packageManagerInternal":Landroid/content/pm/PackageManagerInternal;
    goto :goto_c

    .line 422
    .end local v21    # "incrementalStatesInfo":Landroid/content/pm/IncrementalStatesInfo;
    .end local v59    # "packageManagerInternal":Landroid/content/pm/PackageManagerInternal;
    .restart local v0    # "incrementalStatesInfo":Landroid/content/pm/IncrementalStatesInfo;
    .restart local v3    # "packageManagerInternal":Landroid/content/pm/PackageManagerInternal;
    :cond_1e
    move-object/from16 v21, v0

    move-object/from16 v59, v3

    .end local v0    # "incrementalStatesInfo":Landroid/content/pm/IncrementalStatesInfo;
    .end local v3    # "packageManagerInternal":Landroid/content/pm/PackageManagerInternal;
    .restart local v21    # "incrementalStatesInfo":Landroid/content/pm/IncrementalStatesInfo;
    .restart local v59    # "packageManagerInternal":Landroid/content/pm/PackageManagerInternal;
    goto :goto_c

    .line 414
    .end local v21    # "incrementalStatesInfo":Landroid/content/pm/IncrementalStatesInfo;
    .end local v57    # "offsets":[J
    .end local v58    # "pid":I
    .end local v59    # "packageManagerInternal":Landroid/content/pm/PackageManagerInternal;
    .local v2, "offsets":[J
    .restart local v3    # "packageManagerInternal":Landroid/content/pm/PackageManagerInternal;
    .restart local v5    # "pid":I
    :cond_1f
    move-object/from16 v57, v2

    move-object/from16 v59, v3

    move/from16 v58, v5

    .line 436
    .end local v2    # "offsets":[J
    .end local v3    # "packageManagerInternal":Landroid/content/pm/PackageManagerInternal;
    .end local v5    # "pid":I
    .restart local v57    # "offsets":[J
    .restart local v58    # "pid":I
    .restart local v59    # "packageManagerInternal":Landroid/content/pm/PackageManagerInternal;
    :cond_20
    :goto_c
    move/from16 v5, v18

    move-object/from16 v18, v8

    .end local v8    # "incrementalMetrics":Landroid/os/incremental/IncrementalMetrics;
    .local v5, "loadingProgress":F
    .local v18, "incrementalMetrics":Landroid/os/incremental/IncrementalMetrics;
    :goto_d
    if-eqz v18, :cond_21

    .line 438
    const-string v0, "Package is "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    mul-float v0, v5, v19

    float-to-int v0, v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "% loaded.\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    :cond_21
    const/16 v21, 0x4f

    iget-object v0, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v2, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 442
    if-nez v15, :cond_22

    const-string/jumbo v3, "unknown"

    move-object/from16 v24, v3

    goto :goto_e

    :cond_22
    move-object/from16 v24, v15

    .line 444
    :goto_e
    iget-object v3, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_24

    iget-object v3, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result v3

    if-eqz v3, :cond_23

    .line 445
    const/16 v26, 0x2

    goto :goto_f

    .line 446
    :cond_23
    const/16 v26, 0x1

    goto :goto_f

    .line 447
    :cond_24
    const/16 v26, 0x0

    .line 448
    :goto_f
    iget-object v3, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->isInterestingToUserLocked()Z

    move-result v3

    if-eqz v3, :cond_25

    .line 449
    const/16 v27, 0x2

    goto :goto_10

    .line 450
    :cond_25
    const/16 v27, 0x1

    :goto_10
    iget-object v3, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 451
    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->getProcessClassEnum()I

    move-result v28

    .line 452
    iget-object v3, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_26

    iget-object v3, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    goto :goto_11

    :cond_26
    const-string v3, ""

    :goto_11
    move-object/from16 v29, v3

    if-eqz v18, :cond_27

    const/4 v3, 0x1

    goto :goto_12

    :cond_27
    const/4 v3, 0x0

    .line 454
    :goto_12
    const-wide/16 v22, -0x1

    if-eqz v18, :cond_28

    invoke-virtual/range {v18 .. v18}, Landroid/os/incremental/IncrementalMetrics;->getMillisSinceOldestPendingRead()J

    move-result-wide v31

    move-wide/from16 v32, v31

    goto :goto_13

    .line 455
    :cond_28
    move-wide/from16 v32, v22

    .line 456
    :goto_13
    const/4 v8, -0x1

    if-eqz v18, :cond_29

    invoke-virtual/range {v18 .. v18}, Landroid/os/incremental/IncrementalMetrics;->getStorageHealthStatusCode()I

    move-result v19

    move/from16 v34, v19

    goto :goto_14

    .line 457
    :cond_29
    move/from16 v34, v8

    .line 458
    :goto_14
    if-eqz v18, :cond_2a

    invoke-virtual/range {v18 .. v18}, Landroid/os/incremental/IncrementalMetrics;->getDataLoaderStatusCode()I

    move-result v19

    move/from16 v35, v19

    goto :goto_15

    .line 459
    :cond_2a
    move/from16 v35, v8

    :goto_15
    if-eqz v18, :cond_2b

    .line 460
    invoke-virtual/range {v18 .. v18}, Landroid/os/incremental/IncrementalMetrics;->getReadLogsEnabled()Z

    move-result v19

    if-eqz v19, :cond_2b

    const/16 v36, 0x1

    goto :goto_16

    :cond_2b
    const/16 v36, 0x0

    .line 461
    :goto_16
    if-eqz v18, :cond_2c

    invoke-virtual/range {v18 .. v18}, Landroid/os/incremental/IncrementalMetrics;->getMillisSinceLastDataLoaderBind()J

    move-result-wide v37

    goto :goto_17

    .line 462
    :cond_2c
    move-wide/from16 v37, v22

    .line 463
    :goto_17
    if-eqz v18, :cond_2d

    invoke-virtual/range {v18 .. v18}, Landroid/os/incremental/IncrementalMetrics;->getDataLoaderBindDelayMillis()J

    move-result-wide v39

    goto :goto_18

    .line 464
    :cond_2d
    move-wide/from16 v39, v22

    .line 465
    :goto_18
    if-eqz v18, :cond_2e

    invoke-virtual/range {v18 .. v18}, Landroid/os/incremental/IncrementalMetrics;->getTotalDelayedReads()I

    move-result v19

    move/from16 v41, v19

    goto :goto_19

    .line 466
    :cond_2e
    move/from16 v41, v8

    .line 467
    :goto_19
    if-eqz v18, :cond_2f

    invoke-virtual/range {v18 .. v18}, Landroid/os/incremental/IncrementalMetrics;->getTotalFailedReads()I

    move-result v19

    move/from16 v42, v19

    goto :goto_1a

    .line 468
    :cond_2f
    move/from16 v42, v8

    .line 469
    :goto_1a
    if-eqz v18, :cond_30

    invoke-virtual/range {v18 .. v18}, Landroid/os/incremental/IncrementalMetrics;->getLastReadErrorUid()I

    move-result v8

    move/from16 v43, v8

    goto :goto_1b

    .line 470
    :cond_30
    move/from16 v43, v8

    .line 471
    :goto_1b
    if-eqz v18, :cond_31

    invoke-virtual/range {v18 .. v18}, Landroid/os/incremental/IncrementalMetrics;->getMillisSinceLastReadError()J

    move-result-wide v44

    goto :goto_1c

    .line 472
    :cond_31
    move-wide/from16 v44, v22

    .line 473
    :goto_1c
    if-eqz v18, :cond_32

    invoke-virtual/range {v18 .. v18}, Landroid/os/incremental/IncrementalMetrics;->getLastReadErrorNumber()I

    move-result v8

    move/from16 v46, v8

    goto :goto_1d

    .line 474
    :cond_32
    const/16 v46, 0x0

    .line 475
    :goto_1d
    if-eqz v18, :cond_33

    invoke-virtual/range {v18 .. v18}, Landroid/os/incremental/IncrementalMetrics;->getTotalDelayedReadsDurationMillis()J

    move-result-wide v22

    move-wide/from16 v47, v22

    goto :goto_1e

    .line 476
    :cond_33
    move-wide/from16 v47, v22

    .line 441
    :goto_1e
    move/from16 v22, v0

    move-object/from16 v23, v2

    move-object/from16 v25, p6

    move/from16 v30, v3

    move/from16 v31, v5

    invoke-static/range {v21 .. v48}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;ZFJIIZJJIIIJIJ)V

    .line 477
    if-eqz v12, :cond_34

    .line 478
    iget-object v0, v12, Lcom/android/server/wm/WindowProcessController;->mOwner:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    move-object v8, v0

    goto :goto_1f

    :cond_34
    const/4 v8, 0x0

    .line 479
    .local v8, "parentPr":Lcom/android/server/am/ProcessRecord;
    :goto_1f
    iget-object v2, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v3, "anr"

    iget-object v0, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    move-wide/from16 v21, v6

    .end local v6    # "anrTime":J
    .local v21, "anrTime":J
    iget-object v6, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    const/16 v19, 0x0

    .line 480
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x0

    new-instance v7, Ljava/lang/Float;

    invoke-direct {v7, v5}, Ljava/lang/Float;-><init>(F)V

    .line 479
    move-wide/from16 v60, v53

    move-object/from16 v25, v57

    .end local v53    # "anrDialogDelayMs":J
    .end local v57    # "offsets":[J
    .local v25, "offsets":[J
    .local v60, "anrDialogDelayMs":J
    move-object/from16 v62, v52

    move-object/from16 v26, v59

    .end local v52    # "anrController":Landroid/app/AnrController;
    .end local v59    # "packageManagerInternal":Landroid/content/pm/PackageManagerInternal;
    .local v26, "packageManagerInternal":Landroid/content/pm/PackageManagerInternal;
    .local v62, "anrController":Landroid/app/AnrController;
    move-object/from16 v27, v4

    .end local v4    # "info":Ljava/lang/StringBuilder;
    .local v27, "info":Ljava/lang/StringBuilder;
    move-object v4, v0

    move/from16 v29, v5

    move/from16 v28, v58

    .end local v5    # "loadingProgress":F
    .end local v58    # "pid":I
    .local v28, "pid":I
    .local v29, "loadingProgress":F
    move-object v5, v6

    move-object/from16 v6, p1

    move-object v0, v7

    move-object/from16 v7, p3

    move-object/from16 v31, v9

    move-object/from16 v30, v51

    .end local v9    # "processCpuTracker":Lcom/android/internal/os/ProcessCpuTracker;
    .end local v51    # "lastPids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    .local v30, "lastPids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    .local v31, "processCpuTracker":Lcom/android/internal/os/ProcessCpuTracker;
    move-object/from16 v9, v19

    move-object/from16 v19, v10

    .end local v10    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local v19, "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move-object/from16 v10, v23

    move-object/from16 v23, v11

    .end local v11    # "report":Ljava/lang/StringBuilder;
    .local v23, "report":Ljava/lang/StringBuilder;
    move-object/from16 v11, v16

    move-object/from16 v12, v24

    move-object v13, v0

    move-object/from16 v14, v18

    move-object/from16 v15, v49

    invoke-virtual/range {v2 .. v15}, Lcom/android/server/am/ActivityManagerService;->addErrorToDropBox(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Landroid/app/ApplicationErrorReport$CrashInfo;Ljava/lang/Float;Landroid/os/incremental/IncrementalMetrics;Ljava/util/UUID;)V

    .line 483
    iget-object v0, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/server/am/ProcessErrorStateRecord$$ExternalSyntheticLambda1;

    invoke-direct {v3, v1}, Lcom/android/server/am/ProcessErrorStateRecord$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/am/ProcessErrorStateRecord;)V

    new-instance v4, Lcom/android/server/am/ProcessErrorStateRecord$$ExternalSyntheticLambda2;

    invoke-direct {v4, v1}, Lcom/android/server/am/ProcessErrorStateRecord$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/am/ProcessErrorStateRecord;)V

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/server/wm/WindowProcessController;->appNotResponding(Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 494
    return-void

    .line 497
    :cond_35
    iget-object v2, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    :try_start_11
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 500
    iget-object v0, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_a

    if-eqz v0, :cond_36

    .line 501
    :try_start_12
    iget-object v0, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    iget-object v3, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget v4, v4, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v0, v3, v4}, Lcom/android/server/am/BatteryStatsService;->noteProcessAnr(Ljava/lang/String;I)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    goto :goto_20

    .line 526
    :catchall_1
    move-exception v0

    move-object/from16 v6, p1

    move-object/from16 v9, p2

    move/from16 v10, p5

    move-object/from16 v5, p6

    move-wide/from16 v11, v60

    move-object/from16 v4, v62

    goto/16 :goto_27

    .line 504
    :cond_36
    :goto_20
    :try_start_13
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ProcessErrorStateRecord;->isSilentAnr()Z

    move-result v0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_a

    if-eqz v0, :cond_37

    :try_start_14
    iget-object v0, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->isDebugging()Z

    move-result v0

    if-nez v0, :cond_37

    .line 505
    iget-object v0, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    const-string v3, "bg anr"

    const/4 v4, 0x6

    const/4 v5, 0x1

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/server/am/ProcessRecord;->killLocked(Ljava/lang/String;IZ)V

    .line 506
    monitor-exit v2
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 509
    :cond_37
    :try_start_15
    iget-object v3, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    monitor-enter v3
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_a

    :try_start_16
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_8

    .line 511
    nop

    .line 512
    move-object/from16 v5, p6

    if-eqz v5, :cond_38

    :try_start_17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ANR "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_2

    goto :goto_21

    .line 514
    :catchall_2
    move-exception v0

    move-object/from16 v6, p1

    move-object/from16 v9, p2

    move/from16 v10, p5

    move-wide/from16 v11, v60

    move-object/from16 v4, v62

    goto/16 :goto_26

    .line 512
    :cond_38
    :try_start_18
    const-string v0, "ANR"

    :goto_21
    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_7

    .line 511
    move-object/from16 v6, p1

    :try_start_19
    invoke-direct {v1, v6, v0, v4}, Lcom/android/server/am/ProcessErrorStateRecord;->makeAppNotRespondingLSP(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    iget-object v0, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mDialogController:Lcom/android/server/am/ErrorDialogController;
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_6

    move-object/from16 v4, v62

    .end local v62    # "anrController":Landroid/app/AnrController;
    .local v4, "anrController":Landroid/app/AnrController;
    :try_start_1a
    invoke-virtual {v0, v4}, Lcom/android/server/am/ErrorDialogController;->setAnrController(Landroid/app/AnrController;)V

    .line 514
    monitor-exit v3
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_5

    :try_start_1b
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 518
    iget-object v0, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUiHandler:Landroid/os/Handler;

    if-eqz v0, :cond_39

    .line 520
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 521
    .local v0, "msg":Landroid/os/Message;
    const/4 v3, 0x2

    iput v3, v0, Landroid/os/Message;->what:I

    .line 522
    new-instance v3, Lcom/android/server/am/AppNotRespondingDialog$Data;

    iget-object v7, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_4

    move-object/from16 v9, p2

    move/from16 v10, p5

    :try_start_1c
    invoke-direct {v3, v7, v9, v10}, Lcom/android/server/am/AppNotRespondingDialog$Data;-><init>(Lcom/android/server/am/ProcessRecord;Landroid/content/pm/ApplicationInfo;Z)V

    iput-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 524
    iget-object v3, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mUiHandler:Landroid/os/Handler;
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_3

    move-wide/from16 v11, v60

    .end local v60    # "anrDialogDelayMs":J
    .local v11, "anrDialogDelayMs":J
    :try_start_1d
    invoke-virtual {v3, v0, v11, v12}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_22

    .line 526
    .end local v0    # "msg":Landroid/os/Message;
    .end local v11    # "anrDialogDelayMs":J
    .restart local v60    # "anrDialogDelayMs":J
    :catchall_3
    move-exception v0

    goto :goto_23

    .line 518
    :cond_39
    move-object/from16 v9, p2

    move/from16 v10, p5

    move-wide/from16 v11, v60

    .line 526
    .end local v60    # "anrDialogDelayMs":J
    .restart local v11    # "anrDialogDelayMs":J
    :goto_22
    monitor-exit v2
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_b

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 527
    return-void

    .line 526
    .end local v11    # "anrDialogDelayMs":J
    .restart local v60    # "anrDialogDelayMs":J
    :catchall_4
    move-exception v0

    move-object/from16 v9, p2

    move/from16 v10, p5

    :goto_23
    move-wide/from16 v11, v60

    .end local v60    # "anrDialogDelayMs":J
    .restart local v11    # "anrDialogDelayMs":J
    goto :goto_27

    .line 514
    .end local v11    # "anrDialogDelayMs":J
    .restart local v60    # "anrDialogDelayMs":J
    :catchall_5
    move-exception v0

    move-object/from16 v9, p2

    move/from16 v10, p5

    move-wide/from16 v11, v60

    .end local v60    # "anrDialogDelayMs":J
    .restart local v11    # "anrDialogDelayMs":J
    goto :goto_26

    .end local v4    # "anrController":Landroid/app/AnrController;
    .end local v11    # "anrDialogDelayMs":J
    .restart local v60    # "anrDialogDelayMs":J
    .restart local v62    # "anrController":Landroid/app/AnrController;
    :catchall_6
    move-exception v0

    goto :goto_24

    :catchall_7
    move-exception v0

    move-object/from16 v6, p1

    :goto_24
    move-object/from16 v9, p2

    move/from16 v10, p5

    goto :goto_25

    :catchall_8
    move-exception v0

    move-object/from16 v6, p1

    move-object/from16 v9, p2

    move/from16 v10, p5

    move-object/from16 v5, p6

    :goto_25
    move-wide/from16 v11, v60

    move-object/from16 v4, v62

    .end local v60    # "anrDialogDelayMs":J
    .end local v62    # "anrController":Landroid/app/AnrController;
    .restart local v4    # "anrController":Landroid/app/AnrController;
    .restart local v11    # "anrDialogDelayMs":J
    :goto_26
    :try_start_1e
    monitor-exit v3
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_9

    :try_start_1f
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .end local v4    # "anrController":Landroid/app/AnrController;
    .end local v8    # "parentPr":Lcom/android/server/am/ProcessRecord;
    .end local v11    # "anrDialogDelayMs":J
    .end local v16    # "tracesFile":Ljava/io/File;
    .end local v17    # "pids":[I
    .end local v18    # "incrementalMetrics":Landroid/os/incremental/IncrementalMetrics;
    .end local v19    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v20    # "tracesFileException":Ljava/io/StringWriter;
    .end local v21    # "anrTime":J
    .end local v23    # "report":Ljava/lang/StringBuilder;
    .end local v25    # "offsets":[J
    .end local v26    # "packageManagerInternal":Landroid/content/pm/PackageManagerInternal;
    .end local v27    # "info":Ljava/lang/StringBuilder;
    .end local v28    # "pid":I
    .end local v29    # "loadingProgress":F
    .end local v30    # "lastPids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    .end local v31    # "processCpuTracker":Lcom/android/internal/os/ProcessCpuTracker;
    .end local v49    # "errorId":Ljava/util/UUID;
    .end local v50    # "isSilentAnr":Z
    .end local v55    # "nativeProcs":[Ljava/lang/String;
    .end local v56    # "nativePids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local p0    # "this":Lcom/android/server/am/ProcessErrorStateRecord;
    .end local p1    # "activityShortComponentName":Ljava/lang/String;
    .end local p2    # "aInfo":Landroid/content/pm/ApplicationInfo;
    .end local p3    # "parentShortComponentName":Ljava/lang/String;
    .end local p4    # "parentProcess":Lcom/android/server/wm/WindowProcessController;
    .end local p5    # "aboveSystem":Z
    .end local p6    # "annotation":Ljava/lang/String;
    .end local p7    # "onlyDumpSelf":Z
    throw v0

    .restart local v4    # "anrController":Landroid/app/AnrController;
    .restart local v8    # "parentPr":Lcom/android/server/am/ProcessRecord;
    .restart local v11    # "anrDialogDelayMs":J
    .restart local v16    # "tracesFile":Ljava/io/File;
    .restart local v17    # "pids":[I
    .restart local v18    # "incrementalMetrics":Landroid/os/incremental/IncrementalMetrics;
    .restart local v19    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v20    # "tracesFileException":Ljava/io/StringWriter;
    .restart local v21    # "anrTime":J
    .restart local v23    # "report":Ljava/lang/StringBuilder;
    .restart local v25    # "offsets":[J
    .restart local v26    # "packageManagerInternal":Landroid/content/pm/PackageManagerInternal;
    .restart local v27    # "info":Ljava/lang/StringBuilder;
    .restart local v28    # "pid":I
    .restart local v29    # "loadingProgress":F
    .restart local v30    # "lastPids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    .restart local v31    # "processCpuTracker":Lcom/android/internal/os/ProcessCpuTracker;
    .restart local v49    # "errorId":Ljava/util/UUID;
    .restart local v50    # "isSilentAnr":Z
    .restart local v55    # "nativeProcs":[Ljava/lang/String;
    .restart local v56    # "nativePids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local p0    # "this":Lcom/android/server/am/ProcessErrorStateRecord;
    .restart local p1    # "activityShortComponentName":Ljava/lang/String;
    .restart local p2    # "aInfo":Landroid/content/pm/ApplicationInfo;
    .restart local p3    # "parentShortComponentName":Ljava/lang/String;
    .restart local p4    # "parentProcess":Lcom/android/server/wm/WindowProcessController;
    .restart local p5    # "aboveSystem":Z
    .restart local p6    # "annotation":Ljava/lang/String;
    .restart local p7    # "onlyDumpSelf":Z
    :catchall_9
    move-exception v0

    goto :goto_26

    .line 526
    .end local v4    # "anrController":Landroid/app/AnrController;
    .end local v11    # "anrDialogDelayMs":J
    .restart local v60    # "anrDialogDelayMs":J
    .restart local v62    # "anrController":Landroid/app/AnrController;
    :catchall_a
    move-exception v0

    move-object/from16 v6, p1

    move-object/from16 v9, p2

    move/from16 v10, p5

    move-object/from16 v5, p6

    move-wide/from16 v11, v60

    move-object/from16 v4, v62

    .end local v60    # "anrDialogDelayMs":J
    .end local v62    # "anrController":Landroid/app/AnrController;
    .restart local v4    # "anrController":Landroid/app/AnrController;
    .restart local v11    # "anrDialogDelayMs":J
    :goto_27
    monitor-exit v2
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_b

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_b
    move-exception v0

    goto :goto_27

    .line 262
    .end local v4    # "anrController":Landroid/app/AnrController;
    .end local v8    # "parentPr":Lcom/android/server/am/ProcessRecord;
    .end local v11    # "anrDialogDelayMs":J
    .end local v16    # "tracesFile":Ljava/io/File;
    .end local v17    # "pids":[I
    .end local v18    # "incrementalMetrics":Landroid/os/incremental/IncrementalMetrics;
    .end local v19    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v20    # "tracesFileException":Ljava/io/StringWriter;
    .end local v21    # "anrTime":J
    .end local v23    # "report":Ljava/lang/StringBuilder;
    .end local v25    # "offsets":[J
    .end local v26    # "packageManagerInternal":Landroid/content/pm/PackageManagerInternal;
    .end local v27    # "info":Ljava/lang/StringBuilder;
    .end local v28    # "pid":I
    .end local v29    # "loadingProgress":F
    .end local v30    # "lastPids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    .end local v31    # "processCpuTracker":Lcom/android/internal/os/ProcessCpuTracker;
    .end local v49    # "errorId":Ljava/util/UUID;
    .end local v50    # "isSilentAnr":Z
    .end local v55    # "nativeProcs":[Ljava/lang/String;
    .end local v56    # "nativePids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local v5, "pid":I
    .restart local v6    # "anrTime":J
    .local v9, "lastPids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    .restart local v10    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catchall_c
    move-exception v0

    move/from16 v28, v5

    move-wide/from16 v21, v6

    move-object/from16 v30, v9

    move-object/from16 v19, v10

    move-object v5, v11

    move-object v9, v14

    move-object v6, v15

    move/from16 v10, p5

    .end local v5    # "pid":I
    .end local v6    # "anrTime":J
    .end local v9    # "lastPids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    .end local v10    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v19    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v21    # "anrTime":J
    .restart local v28    # "pid":I
    .restart local v30    # "lastPids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    :goto_28
    :try_start_20
    monitor-exit v4
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_d

    :try_start_21
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .end local v19    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v21    # "anrTime":J
    .end local v28    # "pid":I
    .end local v30    # "lastPids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    .end local p0    # "this":Lcom/android/server/am/ProcessErrorStateRecord;
    .end local p1    # "activityShortComponentName":Ljava/lang/String;
    .end local p2    # "aInfo":Landroid/content/pm/ApplicationInfo;
    .end local p3    # "parentShortComponentName":Ljava/lang/String;
    .end local p4    # "parentProcess":Lcom/android/server/wm/WindowProcessController;
    .end local p5    # "aboveSystem":Z
    .end local p6    # "annotation":Ljava/lang/String;
    .end local p7    # "onlyDumpSelf":Z
    throw v0

    .restart local v19    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v21    # "anrTime":J
    .restart local v28    # "pid":I
    .restart local v30    # "lastPids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    .restart local p0    # "this":Lcom/android/server/am/ProcessErrorStateRecord;
    .restart local p1    # "activityShortComponentName":Ljava/lang/String;
    .restart local p2    # "aInfo":Landroid/content/pm/ApplicationInfo;
    .restart local p3    # "parentShortComponentName":Ljava/lang/String;
    .restart local p4    # "parentProcess":Lcom/android/server/wm/WindowProcessController;
    .restart local p5    # "aboveSystem":Z
    .restart local p6    # "annotation":Ljava/lang/String;
    .restart local p7    # "onlyDumpSelf":Z
    :catchall_d
    move-exception v0

    goto :goto_28

    .line 315
    .end local v19    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v21    # "anrTime":J
    .end local v28    # "pid":I
    .end local v30    # "lastPids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    .restart local v5    # "pid":I
    .restart local v6    # "anrTime":J
    .restart local v9    # "lastPids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    .restart local v10    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catchall_e
    move-exception v0

    move/from16 v28, v5

    move-wide/from16 v21, v6

    move-object/from16 v30, v9

    move-object/from16 v19, v10

    move-object v5, v11

    move-object v9, v14

    move-object v6, v15

    move/from16 v10, p5

    .end local v5    # "pid":I
    .end local v6    # "anrTime":J
    .end local v9    # "lastPids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    .end local v10    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v19    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v21    # "anrTime":J
    .restart local v28    # "pid":I
    .restart local v30    # "lastPids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    :goto_29
    monitor-exit v3
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_f

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_f
    move-exception v0

    goto :goto_29
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;J)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "nowUptime"    # J

    .line 610
    iget-object v0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 611
    iget-boolean v1, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mCrashing:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mDialogController:Lcom/android/server/am/ErrorDialogController;

    invoke-virtual {v1}, Lcom/android/server/am/ErrorDialogController;->hasCrashDialogs()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mNotResponding:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mDialogController:Lcom/android/server/am/ErrorDialogController;

    .line 612
    invoke-virtual {v1}, Lcom/android/server/am/ErrorDialogController;->hasAnrDialogs()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mBad:Z

    if-eqz v1, :cond_2

    .line 613
    :cond_0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 614
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mCrashing="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mCrashing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 615
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mDialogController:Lcom/android/server/am/ErrorDialogController;

    invoke-virtual {v2}, Lcom/android/server/am/ErrorDialogController;->getCrashDialogs()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 616
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mNotResponding="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mNotResponding:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 617
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mDialogController:Lcom/android/server/am/ErrorDialogController;

    invoke-virtual {v2}, Lcom/android/server/am/ErrorDialogController;->getAnrDialogs()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 618
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " bad="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mBad:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 621
    iget-object v1, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mErrorReportReceiver:Landroid/content/ComponentName;

    if-eqz v1, :cond_1

    .line 622
    const-string v1, " errorReportReceiver="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 623
    iget-object v1, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mErrorReportReceiver:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 625
    :cond_1
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 627
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 628
    return-void

    .line 627
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v1
.end method

.method getCrashHandler()Ljava/lang/Runnable;
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mCrashHandler:Ljava/lang/Runnable;

    return-object v0
.end method

.method getCrashingReport()Landroid/app/ActivityManager$ProcessErrorStateInfo;
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mCrashingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    return-object v0
.end method

.method getDialogController()Lcom/android/server/am/ErrorDialogController;
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mDialogController:Lcom/android/server/am/ErrorDialogController;

    return-object v0
.end method

.method getErrorReportReceiver()Landroid/content/ComponentName;
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mErrorReportReceiver:Landroid/content/ComponentName;

    return-object v0
.end method

.method getNotRespondingReport()Landroid/app/ActivityManager$ProcessErrorStateInfo;
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mNotRespondingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    return-object v0
.end method

.method isBad()Z
    .locals 1

    .line 127
    iget-boolean v0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mBad:Z

    return v0
.end method

.method isCrashing()Z
    .locals 1

    .line 137
    iget-boolean v0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mCrashing:Z

    return v0
.end method

.method isForceCrashReport()Z
    .locals 1

    .line 148
    iget-boolean v0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mForceCrashReport:Z

    return v0
.end method

.method isMonitorCpuUsage()Z
    .locals 1

    .line 597
    iget-object v0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    const/4 v0, 0x1

    return v0
.end method

.method isNotResponding()Z
    .locals 1

    .line 158
    iget-boolean v0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mNotResponding:Z

    return v0
.end method

.method isSilentAnr()Z
    .locals 1

    .line 591
    invoke-direct {p0}, Lcom/android/server/am/ProcessErrorStateRecord;->getShowBackground()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/am/ProcessErrorStateRecord;->isInterestingForBackgroundTraces()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public synthetic lambda$appNotResponding$0$ProcessErrorStateRecord()V
    .locals 5

    .line 226
    iget-object v0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 227
    iget-object v1, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    const-string v2, "anr"

    const/4 v3, 0x6

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/am/ProcessRecord;->killLocked(Ljava/lang/String;IZ)V

    .line 228
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 229
    return-void

    .line 228
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public synthetic lambda$appNotResponding$2$ProcessErrorStateRecord()V
    .locals 5

    .line 485
    iget-object v0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 486
    iget-object v1, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    const-string v2, "anr"

    const/4 v3, 0x6

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/am/ProcessRecord;->killLocked(Ljava/lang/String;IZ)V

    .line 487
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 488
    return-void

    .line 487
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public synthetic lambda$appNotResponding$3$ProcessErrorStateRecord()V
    .locals 3

    .line 490
    iget-object v0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 491
    iget-object v1, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    iget-object v2, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActiveServices;->scheduleServiceTimeoutLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 492
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 493
    return-void

    .line 492
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method onCleanupApplicationRecordLSP()V
    .locals 1

    .line 603
    invoke-virtual {p0}, Lcom/android/server/am/ProcessErrorStateRecord;->getDialogController()Lcom/android/server/am/ErrorDialogController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/ErrorDialogController;->clearAllErrorDialogs()V

    .line 605
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/am/ProcessErrorStateRecord;->setCrashing(Z)V

    .line 606
    invoke-virtual {p0, v0}, Lcom/android/server/am/ProcessErrorStateRecord;->setNotResponding(Z)V

    .line 607
    return-void
.end method

.method setBad(Z)V
    .locals 0
    .param p1, "bad"    # Z

    .line 132
    iput-boolean p1, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mBad:Z

    .line 133
    return-void
.end method

.method setCrashHandler(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "crashHandler"    # Ljava/lang/Runnable;

    .line 174
    iput-object p1, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mCrashHandler:Ljava/lang/Runnable;

    .line 175
    return-void
.end method

.method setCrashing(Z)V
    .locals 1
    .param p1, "crashing"    # Z

    .line 142
    iput-boolean p1, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mCrashing:Z

    .line 143
    iget-object v0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowProcessController;->setCrashing(Z)V

    .line 144
    return-void
.end method

.method setCrashingReport(Landroid/app/ActivityManager$ProcessErrorStateInfo;)V
    .locals 0
    .param p1, "crashingReport"    # Landroid/app/ActivityManager$ProcessErrorStateInfo;

    .line 184
    iput-object p1, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mCrashingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    .line 185
    return-void
.end method

.method setErrorReportReceiver(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "errorReportReceiver"    # Landroid/content/ComponentName;

    .line 204
    iput-object p1, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mErrorReportReceiver:Landroid/content/ComponentName;

    .line 205
    return-void
.end method

.method setForceCrashReport(Z)V
    .locals 0
    .param p1, "forceCrashReport"    # Z

    .line 153
    iput-boolean p1, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mForceCrashReport:Z

    .line 154
    return-void
.end method

.method setNotResponding(Z)V
    .locals 1
    .param p1, "notResponding"    # Z

    .line 163
    iput-boolean p1, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mNotResponding:Z

    .line 164
    iget-object v0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowProcessController;->setNotResponding(Z)V

    .line 165
    return-void
.end method

.method setNotRespondingReport(Landroid/app/ActivityManager$ProcessErrorStateInfo;)V
    .locals 0
    .param p1, "notRespondingReport"    # Landroid/app/ActivityManager$ProcessErrorStateInfo;

    .line 194
    iput-object p1, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mNotRespondingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    .line 195
    return-void
.end method

.method startAppProblemLSP()V
    .locals 7

    .line 547
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mErrorReportReceiver:Landroid/content/ComponentName;

    .line 549
    iget-object v0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v0}, Lcom/android/server/am/UserController;->getCurrentProfileIds()[I

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget v3, v0, v2

    .line 550
    .local v3, "userId":I
    iget-object v4, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget v4, v4, Lcom/android/server/am/ProcessRecord;->userId:I

    if-ne v4, v3, :cond_0

    .line 551
    iget-object v4, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    invoke-static {v4, v5, v6}, Landroid/app/ApplicationErrorReport;->getErrorReportReceiver(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/ComponentName;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mErrorReportReceiver:Landroid/content/ComponentName;

    .line 549
    .end local v3    # "userId":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 555
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->skipCurrentReceiverLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 556
    return-void
.end method
