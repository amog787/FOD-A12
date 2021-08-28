.class public Lcom/android/server/wm/ActivityStartController;
.super Ljava/lang/Object;
.source "ActivityStartController.java"


# static fields
.field private static final DO_PENDING_ACTIVITY_LAUNCHES_MSG:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ActivityTaskManager"


# instance fields
.field mCheckedForSetup:Z

.field private final mFactory:Lcom/android/server/wm/ActivityStarter$Factory;

.field private mLastHomeActivityStartRecord:Lcom/android/server/wm/ActivityRecord;

.field private mLastHomeActivityStartResult:I

.field private mLastStarter:Lcom/android/server/wm/ActivityStarter;

.field private final mPendingRemoteAnimationRegistry:Lcom/android/server/wm/PendingRemoteAnimationRegistry;

.field private final mService:Lcom/android/server/wm/ActivityTaskManagerService;

.field private final mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

.field private tmpOutRecord:[Lcom/android/server/wm/ActivityRecord;


# direct methods
.method constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .locals 5
    .param p1, "service"    # Lcom/android/server/wm/ActivityTaskManagerService;

    .line 99
    iget-object v0, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    new-instance v1, Lcom/android/server/wm/ActivityStarter$DefaultFactory;

    iget-object v2, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    new-instance v3, Lcom/android/server/wm/ActivityStartInterceptor;

    iget-object v4, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-direct {v3, p1, v4}, Lcom/android/server/wm/ActivityStartInterceptor;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityTaskSupervisor;)V

    invoke-direct {v1, p1, v2, v3}, Lcom/android/server/wm/ActivityStarter$DefaultFactory;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityTaskSupervisor;Lcom/android/server/wm/ActivityStartInterceptor;)V

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/wm/ActivityStartController;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityTaskSupervisor;Lcom/android/server/wm/ActivityStarter$Factory;)V

    .line 102
    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityTaskSupervisor;Lcom/android/server/wm/ActivityStarter$Factory;)V
    .locals 3
    .param p1, "service"    # Lcom/android/server/wm/ActivityTaskManagerService;
    .param p2, "supervisor"    # Lcom/android/server/wm/ActivityTaskSupervisor;
    .param p3, "factory"    # Lcom/android/server/wm/ActivityStarter$Factory;

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/server/wm/ActivityRecord;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStartController;->tmpOutRecord:[Lcom/android/server/wm/ActivityRecord;

    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStartController;->mCheckedForSetup:Z

    .line 107
    iput-object p1, p0, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 108
    iput-object p2, p0, Lcom/android/server/wm/ActivityStartController;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 109
    iput-object p3, p0, Lcom/android/server/wm/ActivityStartController;->mFactory:Lcom/android/server/wm/ActivityStarter$Factory;

    .line 110
    invoke-interface {p3, p0}, Lcom/android/server/wm/ActivityStarter$Factory;->setController(Lcom/android/server/wm/ActivityStartController;)V

    .line 111
    new-instance v0, Lcom/android/server/wm/PendingRemoteAnimationRegistry;

    iget-object v1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    iget-object v2, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-direct {v0, v1, v2}, Lcom/android/server/wm/PendingRemoteAnimationRegistry;-><init>(Lcom/android/server/wm/WindowManagerGlobalLock;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/wm/ActivityStartController;->mPendingRemoteAnimationRegistry:Lcom/android/server/wm/PendingRemoteAnimationRegistry;

    .line 113
    return-void
.end method

.method static synthetic lambda$startActivities$0(I)[Landroid/content/Intent;
    .locals 1
    .param p0, "x$0"    # I

    .line 371
    new-array v0, p0, [Landroid/content/Intent;

    return-object v0
.end method


# virtual methods
.method checkTargetUser(IZIILjava/lang/String;)I
    .locals 1
    .param p1, "targetUserId"    # I
    .param p2, "validateIncomingUser"    # Z
    .param p3, "realCallingPid"    # I
    .param p4, "realCallingUid"    # I
    .param p5, "reason"    # Ljava/lang/String;

    .line 245
    if-eqz p2, :cond_0

    .line 246
    iget-object v0, p0, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0, p3, p4, p1, p5}, Lcom/android/server/wm/ActivityTaskManagerService;->handleIncomingUser(IIILjava/lang/String;)I

    move-result v0

    return v0

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0, p1}, Landroid/app/ActivityManagerInternal;->ensureNotSpecialUser(I)V

    .line 250
    return p1
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "dumpPackage"    # Ljava/lang/String;

    .line 507
    const/4 v0, 0x0

    .line 509
    .local v0, "dumped":Z
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    .line 511
    .local v3, "dumpPackagePresent":Z
    :goto_0
    iget-object v4, p0, Lcom/android/server/wm/ActivityStartController;->mLastHomeActivityStartRecord:Lcom/android/server/wm/ActivityRecord;

    const-string v5, "  "

    if-eqz v4, :cond_3

    if-eqz v3, :cond_1

    iget-object v4, v4, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 512
    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 513
    :cond_1
    if-nez v0, :cond_2

    .line 514
    const/4 v0, 0x1

    .line 515
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/ActivityStartController;->dumpLastHomeActivityStartResult(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 517
    :cond_2
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 518
    const-string v4, "mLastHomeActivityStartRecord:"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 519
    iget-object v4, p0, Lcom/android/server/wm/ActivityStartController;->mLastHomeActivityStartRecord:Lcom/android/server/wm/ActivityRecord;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, p1, v6, v2}, Lcom/android/server/wm/ActivityRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 522
    :cond_3
    iget-object v4, p0, Lcom/android/server/wm/ActivityStartController;->mLastStarter:Lcom/android/server/wm/ActivityStarter;

    if-eqz v4, :cond_7

    .line 523
    if-eqz v3, :cond_5

    .line 524
    invoke-virtual {v4, p3}, Lcom/android/server/wm/ActivityStarter;->relatedToPackage(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/android/server/wm/ActivityStartController;->mLastHomeActivityStartRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v4, :cond_4

    iget-object v4, v4, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 526
    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_1

    :cond_4
    goto :goto_2

    :cond_5
    :goto_1
    move v1, v2

    .line 528
    .local v1, "dump":Z
    :goto_2
    if-eqz v1, :cond_7

    .line 529
    if-nez v0, :cond_6

    .line 530
    const/4 v0, 0x1

    .line 531
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/ActivityStartController;->dumpLastHomeActivityStartResult(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 533
    :cond_6
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 534
    iget-object v2, p0, Lcom/android/server/wm/ActivityStartController;->mLastStarter:Lcom/android/server/wm/ActivityStarter;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, p1, v4}, Lcom/android/server/wm/ActivityStarter;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 536
    if-eqz v3, :cond_7

    .line 537
    return-void

    .line 542
    .end local v1    # "dump":Z
    :cond_7
    if-nez v0, :cond_8

    .line 543
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 544
    const-string v1, "(nothing)"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 546
    :cond_8
    return-void
.end method

.method dumpLastHomeActivityStartResult(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 501
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 502
    const-string v0, "mLastHomeActivityStartResult="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 503
    iget v0, p0, Lcom/android/server/wm/ActivityStartController;->mLastHomeActivityStartResult:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 504
    return-void
.end method

.method getPendingRemoteAnimationRegistry()Lcom/android/server/wm/PendingRemoteAnimationRegistry;
    .locals 1

    .line 497
    iget-object v0, p0, Lcom/android/server/wm/ActivityStartController;->mPendingRemoteAnimationRegistry:Lcom/android/server/wm/PendingRemoteAnimationRegistry;

    return-object v0
.end method

.method obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "reason"    # Ljava/lang/String;

    .line 121
    iget-object v0, p0, Lcom/android/server/wm/ActivityStartController;->mFactory:Lcom/android/server/wm/ActivityStarter$Factory;

    invoke-interface {v0}, Lcom/android/server/wm/ActivityStarter$Factory;->obtain()Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityStarter;->setIntent(Landroid/content/Intent;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/server/wm/ActivityStarter;->setReason(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    return-object v0
.end method

.method onExecutionComplete(Lcom/android/server/wm/ActivityStarter;)V
    .locals 1
    .param p1, "starter"    # Lcom/android/server/wm/ActivityStarter;

    .line 125
    iget-object v0, p0, Lcom/android/server/wm/ActivityStartController;->mLastStarter:Lcom/android/server/wm/ActivityStarter;

    if-nez v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/android/server/wm/ActivityStartController;->mFactory:Lcom/android/server/wm/ActivityStarter$Factory;

    invoke-interface {v0}, Lcom/android/server/wm/ActivityStarter$Factory;->obtain()Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ActivityStartController;->mLastStarter:Lcom/android/server/wm/ActivityStarter;

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityStartController;->mLastStarter:Lcom/android/server/wm/ActivityStarter;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityStarter;->set(Lcom/android/server/wm/ActivityStarter;)V

    .line 130
    iget-object v0, p0, Lcom/android/server/wm/ActivityStartController;->mFactory:Lcom/android/server/wm/ActivityStarter$Factory;

    invoke-interface {v0, p1}, Lcom/android/server/wm/ActivityStarter$Factory;->recycle(Lcom/android/server/wm/ActivityStarter;)V

    .line 131
    return-void
.end method

.method postStartActivityProcessingForLastStarter(Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/Task;)V
    .locals 1
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "result"    # I
    .param p3, "targetRootTask"    # Lcom/android/server/wm/Task;

    .line 139
    iget-object v0, p0, Lcom/android/server/wm/ActivityStartController;->mLastStarter:Lcom/android/server/wm/ActivityStarter;

    if-nez v0, :cond_0

    .line 140
    return-void

    .line 143
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wm/ActivityStarter;->postStartActivityProcessing(Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/Task;)V

    .line 144
    return-void
.end method

.method registerRemoteAnimationForNextActivityStart(Ljava/lang/String;Landroid/view/RemoteAnimationAdapter;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "adapter"    # Landroid/view/RemoteAnimationAdapter;

    .line 493
    iget-object v0, p0, Lcom/android/server/wm/ActivityStartController;->mPendingRemoteAnimationRegistry:Lcom/android/server/wm/PendingRemoteAnimationRegistry;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/PendingRemoteAnimationRegistry;->addPendingAnimation(Ljava/lang/String;Landroid/view/RemoteAnimationAdapter;)V

    .line 494
    return-void
.end method

.method startActivities(Landroid/app/IApplicationThread;IIILjava/lang/String;Ljava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Lcom/android/server/wm/SafeActivityOptions;ILjava/lang/String;Lcom/android/server/am/PendingIntentRecord;Z)I
    .locals 27
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "callingUid"    # I
    .param p3, "incomingRealCallingPid"    # I
    .param p4, "incomingRealCallingUid"    # I
    .param p5, "callingPackage"    # Ljava/lang/String;
    .param p6, "callingFeatureId"    # Ljava/lang/String;
    .param p7, "intents"    # [Landroid/content/Intent;
    .param p8, "resolvedTypes"    # [Ljava/lang/String;
    .param p9, "resultTo"    # Landroid/os/IBinder;
    .param p10, "options"    # Lcom/android/server/wm/SafeActivityOptions;
    .param p11, "userId"    # I
    .param p12, "reason"    # Ljava/lang/String;
    .param p13, "originatingPendingIntent"    # Lcom/android/server/am/PendingIntentRecord;
    .param p14, "allowBackgroundActivityStart"    # Z

    .line 340
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p5

    move-object/from16 v4, p7

    move-object/from16 v5, p8

    if-eqz v4, :cond_16

    .line 343
    if-eqz v5, :cond_15

    .line 346
    array-length v0, v4

    array-length v6, v5

    if-ne v0, v6, :cond_14

    .line 350
    if-eqz p3, :cond_0

    .line 351
    move/from16 v0, p3

    goto :goto_0

    .line 352
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    :goto_0
    move v6, v0

    .line 353
    .local v6, "realCallingPid":I
    const/4 v0, -0x1

    move/from16 v7, p4

    if-eq v7, v0, :cond_1

    .line 354
    move v8, v7

    goto :goto_1

    .line 355
    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    :goto_1
    nop

    .line 358
    .local v8, "realCallingUid":I
    if-ltz p2, :cond_2

    .line 359
    const/4 v9, -0x1

    move v10, v9

    move/from16 v9, p2

    .local v9, "callingPid":I
    goto :goto_2

    .line 360
    .end local v9    # "callingPid":I
    :cond_2
    if-nez v2, :cond_3

    .line 361
    move v9, v6

    .line 362
    .restart local v9    # "callingPid":I
    move v10, v8

    move/from16 v26, v10

    move v10, v9

    move/from16 v9, v26

    .end local p2    # "callingUid":I
    .local v10, "callingUid":I
    goto :goto_2

    .line 364
    .end local v9    # "callingPid":I
    .end local v10    # "callingUid":I
    .restart local p2    # "callingUid":I
    :cond_3
    move v9, v0

    .end local p2    # "callingUid":I
    .local v9, "callingUid":I
    move v10, v0

    .line 366
    .local v10, "callingPid":I
    :goto_2
    const/16 v11, -0x2710

    invoke-static {v9, v8, v11}, Lcom/android/server/wm/ActivityStarter;->computeResolveFilterUid(III)I

    move-result v11

    .line 368
    .local v11, "filterCallingUid":I
    new-instance v12, Landroid/util/SparseArray;

    invoke-direct {v12}, Landroid/util/SparseArray;-><init>()V

    move-object v15, v12

    .line 369
    .local v15, "startingUidPkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v19

    .line 371
    .local v19, "origId":J
    :try_start_0
    sget-object v12, Lcom/android/server/wm/ActivityStartController$$ExternalSyntheticLambda0;->INSTANCE:Lcom/android/server/wm/ActivityStartController$$ExternalSyntheticLambda0;

    invoke-static {v4, v12}, Lcom/android/internal/util/ArrayUtils;->filterNotNull([Ljava/lang/Object;Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_14

    move-object v4, v12

    .line 372
    .end local p7    # "intents":[Landroid/content/Intent;
    .local v4, "intents":[Landroid/content/Intent;
    :try_start_1
    array-length v12, v4

    new-array v12, v12, [Lcom/android/server/wm/ActivityStarter;

    move-object v14, v12

    .line 375
    .local v14, "starters":[Lcom/android/server/wm/ActivityStarter;
    const/4 v12, 0x0

    move v13, v12

    .local v13, "i":I
    :goto_3
    array-length v12, v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_13

    const/16 v21, 0x0

    if-ge v13, v12, :cond_a

    .line 376
    :try_start_2
    aget-object v12, v4, v13

    .line 377
    .local v12, "intent":Landroid/content/Intent;
    const/16 v22, 0x0

    .line 380
    .local v22, "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    invoke-virtual {v12}, Landroid/content/Intent;->hasFileDescriptors()Z

    move-result v16

    if-nez v16, :cond_9

    .line 385
    invoke-virtual {v12}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v16

    if-eqz v16, :cond_4

    const/16 v16, 0x1

    goto :goto_4

    :cond_4
    move/from16 v16, v21

    :goto_4
    move/from16 p2, v16

    .line 387
    .local p2, "componentSpecified":Z
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v12}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    move-object v12, v0

    .line 390
    iget-object v0, v1, Lcom/android/server/wm/ActivityStartController;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    aget-object v16, v5, v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v23, v12

    .end local v12    # "intent":Landroid/content/Intent;
    .local v23, "intent":Landroid/content/Intent;
    move-object v12, v0

    move/from16 v24, v13

    .end local v13    # "i":I
    .local v24, "i":I
    move-object/from16 v13, v23

    move-object v7, v14

    .end local v14    # "starters":[Lcom/android/server/wm/ActivityStarter;
    .local v7, "starters":[Lcom/android/server/wm/ActivityStarter;
    move-object/from16 v14, v16

    move-object/from16 v25, v7

    move-object v7, v15

    .end local v15    # "startingUidPkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .local v7, "startingUidPkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .local v25, "starters":[Lcom/android/server/wm/ActivityStarter;
    move/from16 v15, v17

    move-object/from16 v16, v18

    move/from16 v17, p11

    move/from16 v18, v11

    :try_start_3
    invoke-virtual/range {v12 .. v18}, Lcom/android/server/wm/ActivityTaskSupervisor;->resolveActivity(Landroid/content/Intent;Ljava/lang/String;ILandroid/app/ProfilerInfo;II)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 392
    .local v0, "aInfo":Landroid/content/pm/ActivityInfo;
    iget-object v12, v1, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v12, v12, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    move/from16 v13, p11

    invoke-virtual {v12, v0, v13}, Landroid/app/ActivityManagerInternal;->getActivityInfoForUser(Landroid/content/pm/ActivityInfo;I)Landroid/content/pm/ActivityInfo;

    move-result-object v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 394
    .end local v0    # "aInfo":Landroid/content/pm/ActivityInfo;
    .local v12, "aInfo":Landroid/content/pm/ActivityInfo;
    if-eqz v12, :cond_6

    .line 397
    :try_start_4
    iget-object v0, v1, Lcom/android/server/wm/ActivityStartController;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    iget-object v14, v12, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v14, v14, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v15, v12, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v15, v15, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 400
    invoke-static {v15}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v15
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 398
    move-object/from16 v13, v23

    .end local v23    # "intent":Landroid/content/Intent;
    .local v13, "intent":Landroid/content/Intent;
    :try_start_5
    invoke-interface {v0, v13, v11, v14, v15}, Lcom/android/server/uri/UriGrantsManagerInternal;->checkGrantUriPermissionFromIntent(Landroid/content/Intent;ILjava/lang/String;I)Lcom/android/server/uri/NeededUriGrants;

    move-result-object v0
    :try_end_5
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object/from16 v22, v0

    .line 404
    nop

    .line 406
    :try_start_6
    iget-object v0, v12, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_5

    .line 411
    iget-object v0, v12, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v14, v12, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v14, v14, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v0, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object/from16 v0, v22

    goto :goto_6

    .line 408
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v14, "FLAG_CANT_SAVE_STATE not supported here"

    invoke-direct {v0, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v4    # "intents":[Landroid/content/Intent;
    .end local v6    # "realCallingPid":I
    .end local v7    # "startingUidPkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .end local v8    # "realCallingUid":I
    .end local v9    # "callingUid":I
    .end local v10    # "callingPid":I
    .end local v11    # "filterCallingUid":I
    .end local v19    # "origId":J
    .end local p0    # "this":Lcom/android/server/wm/ActivityStartController;
    .end local p1    # "caller":Landroid/app/IApplicationThread;
    .end local p3    # "incomingRealCallingPid":I
    .end local p4    # "incomingRealCallingUid":I
    .end local p5    # "callingPackage":Ljava/lang/String;
    .end local p6    # "callingFeatureId":Ljava/lang/String;
    .end local p8    # "resolvedTypes":[Ljava/lang/String;
    .end local p9    # "resultTo":Landroid/os/IBinder;
    .end local p10    # "options":Lcom/android/server/wm/SafeActivityOptions;
    .end local p11    # "userId":I
    .end local p12    # "reason":Ljava/lang/String;
    .end local p13    # "originatingPendingIntent":Lcom/android/server/am/PendingIntentRecord;
    .end local p14    # "allowBackgroundActivityStart":Z
    throw v0

    .line 401
    .restart local v4    # "intents":[Landroid/content/Intent;
    .restart local v6    # "realCallingPid":I
    .restart local v7    # "startingUidPkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .restart local v8    # "realCallingUid":I
    .restart local v9    # "callingUid":I
    .restart local v10    # "callingPid":I
    .restart local v11    # "filterCallingUid":I
    .restart local v19    # "origId":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityStartController;
    .restart local p1    # "caller":Landroid/app/IApplicationThread;
    .restart local p3    # "incomingRealCallingPid":I
    .restart local p4    # "incomingRealCallingUid":I
    .restart local p5    # "callingPackage":Ljava/lang/String;
    .restart local p6    # "callingFeatureId":Ljava/lang/String;
    .restart local p8    # "resolvedTypes":[Ljava/lang/String;
    .restart local p9    # "resultTo":Landroid/os/IBinder;
    .restart local p10    # "options":Lcom/android/server/wm/SafeActivityOptions;
    .restart local p11    # "userId":I
    .restart local p12    # "reason":Ljava/lang/String;
    .restart local p13    # "originatingPendingIntent":Lcom/android/server/am/PendingIntentRecord;
    .restart local p14    # "allowBackgroundActivityStart":Z
    :catch_0
    move-exception v0

    goto :goto_5

    .line 485
    .end local v12    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v13    # "intent":Landroid/content/Intent;
    .end local v22    # "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    .end local v24    # "i":I
    .end local v25    # "starters":[Lcom/android/server/wm/ActivityStarter;
    .end local p2    # "componentSpecified":Z
    :catchall_0
    move-exception v0

    move-object/from16 v15, p9

    move-object/from16 v16, v4

    move/from16 v18, v6

    move v6, v11

    move-object/from16 v11, p6

    goto/16 :goto_12

    .line 401
    .restart local v12    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v22    # "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    .restart local v23    # "intent":Landroid/content/Intent;
    .restart local v24    # "i":I
    .restart local v25    # "starters":[Lcom/android/server/wm/ActivityStarter;
    .restart local p2    # "componentSpecified":Z
    :catch_1
    move-exception v0

    move-object/from16 v13, v23

    .line 402
    .end local v23    # "intent":Landroid/content/Intent;
    .local v0, "e":Ljava/lang/SecurityException;
    .restart local v13    # "intent":Landroid/content/Intent;
    :goto_5
    const-string v14, "ActivityTaskManager"

    const-string v15, "Not allowed to start activity since no uri permission."

    invoke-static {v14, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 403
    const/16 v14, -0x60

    .line 485
    invoke-static/range {v19 .. v20}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 403
    return v14

    .line 394
    .end local v0    # "e":Ljava/lang/SecurityException;
    .end local v13    # "intent":Landroid/content/Intent;
    .restart local v23    # "intent":Landroid/content/Intent;
    :cond_6
    move-object/from16 v13, v23

    .end local v23    # "intent":Landroid/content/Intent;
    .restart local v13    # "intent":Landroid/content/Intent;
    move-object/from16 v0, v22

    .line 415
    .end local v22    # "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    .local v0, "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    :goto_6
    :try_start_7
    array-length v14, v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    const/4 v15, 0x1

    sub-int/2addr v14, v15

    move/from16 v15, v24

    .end local v24    # "i":I
    .local v15, "i":I
    if-ne v15, v14, :cond_7

    const/16 v21, 0x1

    :cond_7
    move/from16 v14, v21

    .line 416
    .local v14, "top":Z
    if-eqz v14, :cond_8

    .line 417
    move-object/from16 v16, p10

    goto :goto_7

    .line 418
    :cond_8
    const/16 v16, 0x0

    :goto_7
    move-object/from16 p7, v16

    .line 419
    .local p7, "checkedOptions":Lcom/android/server/wm/SafeActivityOptions;
    move-object/from16 v16, v4

    move/from16 v17, v11

    move-object/from16 v4, p12

    .end local v4    # "intents":[Landroid/content/Intent;
    .end local v11    # "filterCallingUid":I
    .local v16, "intents":[Landroid/content/Intent;
    .local v17, "filterCallingUid":I
    :try_start_8
    invoke-virtual {v1, v13, v4}, Lcom/android/server/wm/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v11

    .line 420
    invoke-virtual {v11, v0}, Lcom/android/server/wm/ActivityStarter;->setIntentGrants(Lcom/android/server/uri/NeededUriGrants;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v11

    .line 421
    invoke-virtual {v11, v2}, Lcom/android/server/wm/ActivityStarter;->setCaller(Landroid/app/IApplicationThread;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v11

    move-object/from16 v18, v0

    .end local v0    # "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    .local v18, "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    aget-object v0, v5, v15

    .line 422
    invoke-virtual {v11, v0}, Lcom/android/server/wm/ActivityStarter;->setResolvedType(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 423
    invoke-virtual {v0, v12}, Lcom/android/server/wm/ActivityStarter;->setActivityInfo(Landroid/content/pm/ActivityInfo;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 424
    const/4 v11, -0x1

    invoke-virtual {v0, v11}, Lcom/android/server/wm/ActivityStarter;->setRequestCode(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 425
    invoke-virtual {v0, v10}, Lcom/android/server/wm/ActivityStarter;->setCallingPid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 426
    invoke-virtual {v0, v9}, Lcom/android/server/wm/ActivityStarter;->setCallingUid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 427
    invoke-virtual {v0, v3}, Lcom/android/server/wm/ActivityStarter;->setCallingPackage(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 428
    move-object/from16 v11, p6

    :try_start_9
    invoke-virtual {v0, v11}, Lcom/android/server/wm/ActivityStarter;->setCallingFeatureId(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 429
    invoke-virtual {v0, v6}, Lcom/android/server/wm/ActivityStarter;->setRealCallingPid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 430
    invoke-virtual {v0, v8}, Lcom/android/server/wm/ActivityStarter;->setRealCallingUid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 431
    move-object/from16 v2, p7

    .end local p7    # "checkedOptions":Lcom/android/server/wm/SafeActivityOptions;
    .local v2, "checkedOptions":Lcom/android/server/wm/SafeActivityOptions;
    invoke-virtual {v0, v2}, Lcom/android/server/wm/ActivityStarter;->setActivityOptions(Lcom/android/server/wm/SafeActivityOptions;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 432
    move-object/from16 v21, v2

    move/from16 v2, p2

    .end local p2    # "componentSpecified":Z
    .local v2, "componentSpecified":Z
    .local v21, "checkedOptions":Lcom/android/server/wm/SafeActivityOptions;
    invoke-virtual {v0, v2}, Lcom/android/server/wm/ActivityStarter;->setComponentSpecified(Z)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 436
    invoke-virtual {v0, v14}, Lcom/android/server/wm/ActivityStarter;->setAllowPendingRemoteAnimationRegistryLookup(Z)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 437
    move/from16 v22, v2

    move-object/from16 v2, p13

    .end local v2    # "componentSpecified":Z
    .local v22, "componentSpecified":Z
    invoke-virtual {v0, v2}, Lcom/android/server/wm/ActivityStarter;->setOriginatingPendingIntent(Lcom/android/server/am/PendingIntentRecord;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 438
    move/from16 v2, p14

    :try_start_a
    invoke-virtual {v0, v2}, Lcom/android/server/wm/ActivityStarter;->setAllowBackgroundActivityStart(Z)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    aput-object v0, v25, v15

    .line 375
    .end local v12    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v13    # "intent":Landroid/content/Intent;
    .end local v14    # "top":Z
    .end local v18    # "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    .end local v21    # "checkedOptions":Lcom/android/server/wm/SafeActivityOptions;
    .end local v22    # "componentSpecified":Z
    add-int/lit8 v13, v15, 0x1

    move-object/from16 v2, p1

    move-object v15, v7

    move-object/from16 v4, v16

    move/from16 v11, v17

    move-object/from16 v14, v25

    const/4 v0, -0x1

    move/from16 v7, p4

    .end local v15    # "i":I
    .local v13, "i":I
    goto/16 :goto_3

    .line 485
    .end local v13    # "i":I
    .end local v25    # "starters":[Lcom/android/server/wm/ActivityStarter;
    :catchall_1
    move-exception v0

    goto :goto_8

    :catchall_2
    move-exception v0

    move-object/from16 v11, p6

    :goto_8
    move/from16 v2, p14

    goto/16 :goto_b

    .end local v16    # "intents":[Landroid/content/Intent;
    .end local v17    # "filterCallingUid":I
    .restart local v4    # "intents":[Landroid/content/Intent;
    .restart local v11    # "filterCallingUid":I
    :catchall_3
    move-exception v0

    move/from16 v2, p14

    move-object/from16 v16, v4

    move/from16 v17, v11

    move-object/from16 v11, p6

    move-object/from16 v4, p12

    move-object/from16 v15, p9

    move/from16 v18, v6

    move/from16 v6, v17

    .end local v4    # "intents":[Landroid/content/Intent;
    .end local v11    # "filterCallingUid":I
    .restart local v16    # "intents":[Landroid/content/Intent;
    .restart local v17    # "filterCallingUid":I
    goto/16 :goto_12

    .line 381
    .end local v7    # "startingUidPkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .end local v16    # "intents":[Landroid/content/Intent;
    .end local v17    # "filterCallingUid":I
    .restart local v4    # "intents":[Landroid/content/Intent;
    .restart local v11    # "filterCallingUid":I
    .local v12, "intent":Landroid/content/Intent;
    .restart local v13    # "i":I
    .local v14, "starters":[Lcom/android/server/wm/ActivityStarter;
    .local v15, "startingUidPkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .local v22, "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    :cond_9
    move/from16 v2, p14

    move-object/from16 v16, v4

    move/from16 v17, v11

    move-object/from16 v25, v14

    move-object v7, v15

    move-object/from16 v11, p6

    move-object/from16 v4, p12

    move v15, v13

    .end local v4    # "intents":[Landroid/content/Intent;
    .end local v11    # "filterCallingUid":I
    .end local v13    # "i":I
    .end local v14    # "starters":[Lcom/android/server/wm/ActivityStarter;
    .restart local v7    # "startingUidPkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .local v15, "i":I
    .restart local v16    # "intents":[Landroid/content/Intent;
    .restart local v17    # "filterCallingUid":I
    .restart local v25    # "starters":[Lcom/android/server/wm/ActivityStarter;
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v13, "File descriptors passed in Intent"

    invoke-direct {v0, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v6    # "realCallingPid":I
    .end local v7    # "startingUidPkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .end local v8    # "realCallingUid":I
    .end local v9    # "callingUid":I
    .end local v10    # "callingPid":I
    .end local v16    # "intents":[Landroid/content/Intent;
    .end local v17    # "filterCallingUid":I
    .end local v19    # "origId":J
    .end local p0    # "this":Lcom/android/server/wm/ActivityStartController;
    .end local p1    # "caller":Landroid/app/IApplicationThread;
    .end local p3    # "incomingRealCallingPid":I
    .end local p4    # "incomingRealCallingUid":I
    .end local p5    # "callingPackage":Ljava/lang/String;
    .end local p6    # "callingFeatureId":Ljava/lang/String;
    .end local p8    # "resolvedTypes":[Ljava/lang/String;
    .end local p9    # "resultTo":Landroid/os/IBinder;
    .end local p10    # "options":Lcom/android/server/wm/SafeActivityOptions;
    .end local p11    # "userId":I
    .end local p12    # "reason":Ljava/lang/String;
    .end local p13    # "originatingPendingIntent":Lcom/android/server/am/PendingIntentRecord;
    .end local p14    # "allowBackgroundActivityStart":Z
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .line 485
    .end local v12    # "intent":Landroid/content/Intent;
    .end local v22    # "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    .end local v25    # "starters":[Lcom/android/server/wm/ActivityStarter;
    .restart local v4    # "intents":[Landroid/content/Intent;
    .restart local v6    # "realCallingPid":I
    .restart local v8    # "realCallingUid":I
    .restart local v9    # "callingUid":I
    .restart local v10    # "callingPid":I
    .restart local v11    # "filterCallingUid":I
    .local v15, "startingUidPkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .restart local v19    # "origId":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityStartController;
    .restart local p1    # "caller":Landroid/app/IApplicationThread;
    .restart local p3    # "incomingRealCallingPid":I
    .restart local p4    # "incomingRealCallingUid":I
    .restart local p5    # "callingPackage":Ljava/lang/String;
    .restart local p6    # "callingFeatureId":Ljava/lang/String;
    .restart local p8    # "resolvedTypes":[Ljava/lang/String;
    .restart local p9    # "resultTo":Landroid/os/IBinder;
    .restart local p10    # "options":Lcom/android/server/wm/SafeActivityOptions;
    .restart local p11    # "userId":I
    .restart local p12    # "reason":Ljava/lang/String;
    .restart local p13    # "originatingPendingIntent":Lcom/android/server/am/PendingIntentRecord;
    .restart local p14    # "allowBackgroundActivityStart":Z
    :catchall_4
    move-exception v0

    move/from16 v2, p14

    move-object/from16 v16, v4

    move/from16 v17, v11

    move-object v7, v15

    move-object/from16 v11, p6

    move-object/from16 v4, p12

    move-object/from16 v15, p9

    move/from16 v18, v6

    move/from16 v6, v17

    .end local v4    # "intents":[Landroid/content/Intent;
    .end local v11    # "filterCallingUid":I
    .end local v15    # "startingUidPkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .restart local v7    # "startingUidPkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .restart local v16    # "intents":[Landroid/content/Intent;
    .restart local v17    # "filterCallingUid":I
    goto/16 :goto_12

    .line 375
    .end local v7    # "startingUidPkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .end local v16    # "intents":[Landroid/content/Intent;
    .end local v17    # "filterCallingUid":I
    .restart local v4    # "intents":[Landroid/content/Intent;
    .restart local v11    # "filterCallingUid":I
    .restart local v13    # "i":I
    .restart local v14    # "starters":[Lcom/android/server/wm/ActivityStarter;
    .restart local v15    # "startingUidPkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    :cond_a
    move/from16 v2, p14

    move-object/from16 v16, v4

    move/from16 v17, v11

    move-object/from16 v25, v14

    move-object v7, v15

    move-object/from16 v11, p6

    move-object/from16 v4, p12

    move v15, v13

    .line 441
    .end local v4    # "intents":[Landroid/content/Intent;
    .end local v11    # "filterCallingUid":I
    .end local v13    # "i":I
    .end local v14    # "starters":[Lcom/android/server/wm/ActivityStarter;
    .end local v15    # "startingUidPkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .restart local v7    # "startingUidPkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .restart local v16    # "intents":[Landroid/content/Intent;
    .restart local v17    # "filterCallingUid":I
    .restart local v25    # "starters":[Lcom/android/server/wm/ActivityStarter;
    :try_start_b
    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_12

    const/4 v12, 0x1

    if-le v0, v12, :cond_d

    .line 442
    :try_start_c
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v12, "startActivities: different apps ["

    invoke-direct {v0, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 443
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v12

    .line 444
    .local v12, "size":I
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_9
    if-ge v13, v12, :cond_c

    .line 445
    invoke-virtual {v7, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v14, v12, -0x1

    if-ne v13, v14, :cond_b

    const-string v14, "]"

    goto :goto_a

    :cond_b
    const-string v14, ", "

    :goto_a
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    add-int/lit8 v13, v13, 0x1

    goto :goto_9

    .line 447
    .end local v13    # "i":I
    :cond_c
    const-string v13, " from "

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    const-string v13, "ActivityTaskManager"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    goto :goto_c

    .line 485
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    .end local v12    # "size":I
    .end local v25    # "starters":[Lcom/android/server/wm/ActivityStarter;
    :catchall_5
    move-exception v0

    :goto_b
    move-object/from16 v15, p9

    move/from16 v18, v6

    move/from16 v6, v17

    goto/16 :goto_12

    .line 451
    .restart local v25    # "starters":[Lcom/android/server/wm/ActivityStarter;
    :cond_d
    :goto_c
    move-object/from16 v12, p9

    .line 452
    .local v12, "sourceResultTo":Landroid/os/IBinder;
    const/4 v0, 0x1

    :try_start_d
    new-array v13, v0, [Lcom/android/server/wm/ActivityRecord;

    .line 454
    .local v13, "outActivity":[Lcom/android/server/wm/ActivityRecord;
    iget-object v0, v1, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v14, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v14
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_12

    :try_start_e
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 455
    iget-object v0, v1, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_f

    .line 457
    const/4 v0, 0x0

    move-object/from16 v15, p9

    .end local p9    # "resultTo":Landroid/os/IBinder;
    .local v0, "i":I
    .local v15, "resultTo":Landroid/os/IBinder;
    :goto_d
    move-object/from16 v2, v25

    .end local v25    # "starters":[Lcom/android/server/wm/ActivityStarter;
    .local v2, "starters":[Lcom/android/server/wm/ActivityStarter;
    :try_start_f
    array-length v3, v2

    if-ge v0, v3, :cond_13

    .line 458
    aget-object v3, v2, v0

    invoke-virtual {v3, v15}, Lcom/android/server/wm/ActivityStarter;->setResultTo(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v3

    .line 459
    invoke-virtual {v3, v13}, Lcom/android/server/wm/ActivityStarter;->setOutActivity([Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStarter;->execute()I

    move-result v3
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_e

    .line 460
    .local v3, "startResult":I
    if-gez v3, :cond_f

    .line 462
    add-int/lit8 v18, v0, 0x1

    move/from16 v4, v18

    .local v4, "j":I
    :goto_e
    :try_start_10
    array-length v5, v2

    if-ge v4, v5, :cond_e

    .line 463
    iget-object v5, v1, Lcom/android/server/wm/ActivityStartController;->mFactory:Lcom/android/server/wm/ActivityStarter$Factory;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_8

    move/from16 v18, v6

    .end local v6    # "realCallingPid":I
    .local v18, "realCallingPid":I
    :try_start_11
    aget-object v6, v2, v4

    invoke-interface {v5, v6}, Lcom/android/server/wm/ActivityStarter$Factory;->recycle(Lcom/android/server/wm/ActivityStarter;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    .line 462
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v5, p8

    move/from16 v6, v18

    goto :goto_e

    .line 481
    .end local v0    # "i":I
    .end local v3    # "startResult":I
    .end local v4    # "j":I
    :catchall_6
    move-exception v0

    move-object/from16 v25, v2

    move/from16 v6, v17

    goto/16 :goto_10

    .line 462
    .end local v18    # "realCallingPid":I
    .restart local v0    # "i":I
    .restart local v3    # "startResult":I
    .restart local v4    # "j":I
    .restart local v6    # "realCallingPid":I
    :cond_e
    move/from16 v18, v6

    .line 465
    .end local v4    # "j":I
    .end local v6    # "realCallingPid":I
    .restart local v18    # "realCallingPid":I
    nop

    .line 481
    :try_start_12
    iget-object v4, v1, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    monitor-exit v14
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_7

    .line 485
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static/range {v19 .. v20}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 465
    return v3

    .line 483
    .end local v0    # "i":I
    .end local v3    # "startResult":I
    :catchall_7
    move-exception v0

    move-object/from16 v25, v2

    move/from16 v6, v17

    goto/16 :goto_11

    .line 481
    .end local v18    # "realCallingPid":I
    .restart local v6    # "realCallingPid":I
    :catchall_8
    move-exception v0

    move/from16 v18, v6

    move-object/from16 v25, v2

    move/from16 v6, v17

    .end local v6    # "realCallingPid":I
    .restart local v18    # "realCallingPid":I
    goto/16 :goto_10

    .line 467
    .end local v18    # "realCallingPid":I
    .restart local v0    # "i":I
    .restart local v3    # "startResult":I
    .restart local v6    # "realCallingPid":I
    :cond_f
    move/from16 v18, v6

    .end local v6    # "realCallingPid":I
    .restart local v18    # "realCallingPid":I
    :try_start_13
    aget-object v4, v13, v21
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_d

    .line 468
    .local v4, "started":Lcom/android/server/wm/ActivityRecord;
    if-eqz v4, :cond_10

    :try_start_14
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result v5
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_a

    move/from16 v6, v17

    .end local v17    # "filterCallingUid":I
    .local v6, "filterCallingUid":I
    if-ne v5, v6, :cond_11

    .line 471
    :try_start_15
    iget-object v5, v4, Lcom/android/server/wm/ActivityRecord;->appToken:Lcom/android/server/wm/ActivityRecord$Token;
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_9

    move-object/from16 v25, v2

    move-object v15, v5

    const/16 v17, 0x1

    .end local v15    # "resultTo":Landroid/os/IBinder;
    .local v5, "resultTo":Landroid/os/IBinder;
    goto :goto_f

    .line 481
    .end local v0    # "i":I
    .end local v3    # "startResult":I
    .end local v4    # "started":Lcom/android/server/wm/ActivityRecord;
    .end local v5    # "resultTo":Landroid/os/IBinder;
    .restart local v15    # "resultTo":Landroid/os/IBinder;
    :catchall_9
    move-exception v0

    move-object/from16 v25, v2

    goto :goto_10

    .end local v6    # "filterCallingUid":I
    .restart local v17    # "filterCallingUid":I
    :catchall_a
    move-exception v0

    move/from16 v6, v17

    move-object/from16 v25, v2

    .end local v17    # "filterCallingUid":I
    .restart local v6    # "filterCallingUid":I
    goto :goto_10

    .line 468
    .end local v6    # "filterCallingUid":I
    .restart local v0    # "i":I
    .restart local v3    # "startResult":I
    .restart local v4    # "started":Lcom/android/server/wm/ActivityRecord;
    .restart local v17    # "filterCallingUid":I
    :cond_10
    move/from16 v6, v17

    .line 473
    .end local v17    # "filterCallingUid":I
    .restart local v6    # "filterCallingUid":I
    :cond_11
    move-object v15, v12

    .line 475
    :try_start_16
    array-length v5, v2

    const/16 v17, 0x1

    add-int/lit8 v5, v5, -0x1

    if-ge v0, v5, :cond_12

    .line 476
    add-int/lit8 v5, v0, 0x1

    aget-object v5, v2, v5

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityStarter;->getIntent()Landroid/content/Intent;

    move-result-object v5
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_c

    move-object/from16 v25, v2

    .end local v2    # "starters":[Lcom/android/server/wm/ActivityStarter;
    .restart local v25    # "starters":[Lcom/android/server/wm/ActivityStarter;
    const/high16 v2, 0x10000000

    :try_start_17
    invoke-virtual {v5, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_b

    goto :goto_f

    .line 481
    .end local v0    # "i":I
    .end local v3    # "startResult":I
    .end local v4    # "started":Lcom/android/server/wm/ActivityRecord;
    :catchall_b
    move-exception v0

    goto :goto_10

    .line 475
    .end local v25    # "starters":[Lcom/android/server/wm/ActivityStarter;
    .restart local v0    # "i":I
    .restart local v2    # "starters":[Lcom/android/server/wm/ActivityStarter;
    .restart local v3    # "startResult":I
    .restart local v4    # "started":Lcom/android/server/wm/ActivityRecord;
    :cond_12
    move-object/from16 v25, v2

    .line 457
    .end local v2    # "starters":[Lcom/android/server/wm/ActivityStarter;
    .end local v3    # "startResult":I
    .end local v4    # "started":Lcom/android/server/wm/ActivityRecord;
    .restart local v25    # "starters":[Lcom/android/server/wm/ActivityStarter;
    :goto_f
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v3, p5

    move-object/from16 v5, p8

    move-object/from16 v4, p12

    move/from16 v2, p14

    move/from16 v17, v6

    move/from16 v6, v18

    goto/16 :goto_d

    .line 481
    .end local v0    # "i":I
    .end local v25    # "starters":[Lcom/android/server/wm/ActivityStarter;
    .restart local v2    # "starters":[Lcom/android/server/wm/ActivityStarter;
    :catchall_c
    move-exception v0

    move-object/from16 v25, v2

    .end local v2    # "starters":[Lcom/android/server/wm/ActivityStarter;
    .restart local v25    # "starters":[Lcom/android/server/wm/ActivityStarter;
    goto :goto_10

    .end local v6    # "filterCallingUid":I
    .end local v25    # "starters":[Lcom/android/server/wm/ActivityStarter;
    .restart local v2    # "starters":[Lcom/android/server/wm/ActivityStarter;
    .restart local v17    # "filterCallingUid":I
    :catchall_d
    move-exception v0

    move-object/from16 v25, v2

    move/from16 v6, v17

    .end local v2    # "starters":[Lcom/android/server/wm/ActivityStarter;
    .end local v17    # "filterCallingUid":I
    .restart local v6    # "filterCallingUid":I
    .restart local v25    # "starters":[Lcom/android/server/wm/ActivityStarter;
    goto :goto_10

    .line 457
    .end local v18    # "realCallingPid":I
    .end local v25    # "starters":[Lcom/android/server/wm/ActivityStarter;
    .restart local v0    # "i":I
    .restart local v2    # "starters":[Lcom/android/server/wm/ActivityStarter;
    .local v6, "realCallingPid":I
    .restart local v17    # "filterCallingUid":I
    :cond_13
    move-object/from16 v25, v2

    move/from16 v18, v6

    move/from16 v6, v17

    .line 481
    .end local v0    # "i":I
    .end local v2    # "starters":[Lcom/android/server/wm/ActivityStarter;
    .end local v17    # "filterCallingUid":I
    .local v6, "filterCallingUid":I
    .restart local v18    # "realCallingPid":I
    .restart local v25    # "starters":[Lcom/android/server/wm/ActivityStarter;
    :try_start_18
    iget-object v0, v1, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 482
    nop

    .line 483
    monitor-exit v14
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_11

    :try_start_19
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_10

    .line 485
    .end local v12    # "sourceResultTo":Landroid/os/IBinder;
    .end local v13    # "outActivity":[Lcom/android/server/wm/ActivityRecord;
    .end local v25    # "starters":[Lcom/android/server/wm/ActivityStarter;
    invoke-static/range {v19 .. v20}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 486
    nop

    .line 488
    return v21

    .line 481
    .end local v18    # "realCallingPid":I
    .restart local v2    # "starters":[Lcom/android/server/wm/ActivityStarter;
    .local v6, "realCallingPid":I
    .restart local v12    # "sourceResultTo":Landroid/os/IBinder;
    .restart local v13    # "outActivity":[Lcom/android/server/wm/ActivityRecord;
    .restart local v17    # "filterCallingUid":I
    :catchall_e
    move-exception v0

    move-object/from16 v25, v2

    move/from16 v18, v6

    move/from16 v6, v17

    .end local v2    # "starters":[Lcom/android/server/wm/ActivityStarter;
    .end local v17    # "filterCallingUid":I
    .local v6, "filterCallingUid":I
    .restart local v18    # "realCallingPid":I
    .restart local v25    # "starters":[Lcom/android/server/wm/ActivityStarter;
    :goto_10
    :try_start_1a
    iget-object v2, v1, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 482
    nop

    .end local v6    # "filterCallingUid":I
    .end local v7    # "startingUidPkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .end local v8    # "realCallingUid":I
    .end local v9    # "callingUid":I
    .end local v10    # "callingPid":I
    .end local v12    # "sourceResultTo":Landroid/os/IBinder;
    .end local v13    # "outActivity":[Lcom/android/server/wm/ActivityRecord;
    .end local v15    # "resultTo":Landroid/os/IBinder;
    .end local v16    # "intents":[Landroid/content/Intent;
    .end local v18    # "realCallingPid":I
    .end local v19    # "origId":J
    .end local v25    # "starters":[Lcom/android/server/wm/ActivityStarter;
    .end local p0    # "this":Lcom/android/server/wm/ActivityStartController;
    .end local p1    # "caller":Landroid/app/IApplicationThread;
    .end local p3    # "incomingRealCallingPid":I
    .end local p4    # "incomingRealCallingUid":I
    .end local p5    # "callingPackage":Ljava/lang/String;
    .end local p6    # "callingFeatureId":Ljava/lang/String;
    .end local p8    # "resolvedTypes":[Ljava/lang/String;
    .end local p10    # "options":Lcom/android/server/wm/SafeActivityOptions;
    .end local p11    # "userId":I
    .end local p12    # "reason":Ljava/lang/String;
    .end local p13    # "originatingPendingIntent":Lcom/android/server/am/PendingIntentRecord;
    .end local p14    # "allowBackgroundActivityStart":Z
    throw v0

    .line 483
    .local v6, "realCallingPid":I
    .restart local v7    # "startingUidPkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .restart local v8    # "realCallingUid":I
    .restart local v9    # "callingUid":I
    .restart local v10    # "callingPid":I
    .restart local v12    # "sourceResultTo":Landroid/os/IBinder;
    .restart local v13    # "outActivity":[Lcom/android/server/wm/ActivityRecord;
    .restart local v16    # "intents":[Landroid/content/Intent;
    .restart local v17    # "filterCallingUid":I
    .restart local v19    # "origId":J
    .restart local v25    # "starters":[Lcom/android/server/wm/ActivityStarter;
    .restart local p0    # "this":Lcom/android/server/wm/ActivityStartController;
    .restart local p1    # "caller":Landroid/app/IApplicationThread;
    .restart local p3    # "incomingRealCallingPid":I
    .restart local p4    # "incomingRealCallingUid":I
    .restart local p5    # "callingPackage":Ljava/lang/String;
    .restart local p6    # "callingFeatureId":Ljava/lang/String;
    .restart local p8    # "resolvedTypes":[Ljava/lang/String;
    .restart local p9    # "resultTo":Landroid/os/IBinder;
    .restart local p10    # "options":Lcom/android/server/wm/SafeActivityOptions;
    .restart local p11    # "userId":I
    .restart local p12    # "reason":Ljava/lang/String;
    .restart local p13    # "originatingPendingIntent":Lcom/android/server/am/PendingIntentRecord;
    .restart local p14    # "allowBackgroundActivityStart":Z
    :catchall_f
    move-exception v0

    move/from16 v18, v6

    move/from16 v6, v17

    move-object/from16 v15, p9

    .end local v17    # "filterCallingUid":I
    .end local p9    # "resultTo":Landroid/os/IBinder;
    .local v6, "filterCallingUid":I
    .restart local v15    # "resultTo":Landroid/os/IBinder;
    .restart local v18    # "realCallingPid":I
    :goto_11
    monitor-exit v14
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_11

    :try_start_1b
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v6    # "filterCallingUid":I
    .end local v7    # "startingUidPkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .end local v8    # "realCallingUid":I
    .end local v9    # "callingUid":I
    .end local v10    # "callingPid":I
    .end local v15    # "resultTo":Landroid/os/IBinder;
    .end local v16    # "intents":[Landroid/content/Intent;
    .end local v18    # "realCallingPid":I
    .end local v19    # "origId":J
    .end local p0    # "this":Lcom/android/server/wm/ActivityStartController;
    .end local p1    # "caller":Landroid/app/IApplicationThread;
    .end local p3    # "incomingRealCallingPid":I
    .end local p4    # "incomingRealCallingUid":I
    .end local p5    # "callingPackage":Ljava/lang/String;
    .end local p6    # "callingFeatureId":Ljava/lang/String;
    .end local p8    # "resolvedTypes":[Ljava/lang/String;
    .end local p10    # "options":Lcom/android/server/wm/SafeActivityOptions;
    .end local p11    # "userId":I
    .end local p12    # "reason":Ljava/lang/String;
    .end local p13    # "originatingPendingIntent":Lcom/android/server/am/PendingIntentRecord;
    .end local p14    # "allowBackgroundActivityStart":Z
    throw v0
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_10

    .line 485
    .end local v12    # "sourceResultTo":Landroid/os/IBinder;
    .end local v13    # "outActivity":[Lcom/android/server/wm/ActivityRecord;
    .end local v25    # "starters":[Lcom/android/server/wm/ActivityStarter;
    .restart local v6    # "filterCallingUid":I
    .restart local v7    # "startingUidPkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .restart local v8    # "realCallingUid":I
    .restart local v9    # "callingUid":I
    .restart local v10    # "callingPid":I
    .restart local v15    # "resultTo":Landroid/os/IBinder;
    .restart local v16    # "intents":[Landroid/content/Intent;
    .restart local v18    # "realCallingPid":I
    .restart local v19    # "origId":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityStartController;
    .restart local p1    # "caller":Landroid/app/IApplicationThread;
    .restart local p3    # "incomingRealCallingPid":I
    .restart local p4    # "incomingRealCallingUid":I
    .restart local p5    # "callingPackage":Ljava/lang/String;
    .restart local p6    # "callingFeatureId":Ljava/lang/String;
    .restart local p8    # "resolvedTypes":[Ljava/lang/String;
    .restart local p10    # "options":Lcom/android/server/wm/SafeActivityOptions;
    .restart local p11    # "userId":I
    .restart local p12    # "reason":Ljava/lang/String;
    .restart local p13    # "originatingPendingIntent":Lcom/android/server/am/PendingIntentRecord;
    .restart local p14    # "allowBackgroundActivityStart":Z
    :catchall_10
    move-exception v0

    goto :goto_12

    .line 483
    .restart local v12    # "sourceResultTo":Landroid/os/IBinder;
    .restart local v13    # "outActivity":[Lcom/android/server/wm/ActivityRecord;
    .restart local v25    # "starters":[Lcom/android/server/wm/ActivityStarter;
    :catchall_11
    move-exception v0

    goto :goto_11

    .line 485
    .end local v12    # "sourceResultTo":Landroid/os/IBinder;
    .end local v13    # "outActivity":[Lcom/android/server/wm/ActivityRecord;
    .end local v15    # "resultTo":Landroid/os/IBinder;
    .end local v18    # "realCallingPid":I
    .end local v25    # "starters":[Lcom/android/server/wm/ActivityStarter;
    .local v6, "realCallingPid":I
    .restart local v17    # "filterCallingUid":I
    .restart local p9    # "resultTo":Landroid/os/IBinder;
    :catchall_12
    move-exception v0

    move/from16 v18, v6

    move/from16 v6, v17

    move-object/from16 v15, p9

    .end local v17    # "filterCallingUid":I
    .local v6, "filterCallingUid":I
    .restart local v18    # "realCallingPid":I
    goto :goto_12

    .end local v7    # "startingUidPkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .end local v16    # "intents":[Landroid/content/Intent;
    .end local v18    # "realCallingPid":I
    .local v4, "intents":[Landroid/content/Intent;
    .local v6, "realCallingPid":I
    .restart local v11    # "filterCallingUid":I
    .local v15, "startingUidPkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    :catchall_13
    move-exception v0

    move-object/from16 v16, v4

    move/from16 v18, v6

    move v6, v11

    move-object v7, v15

    move-object/from16 v11, p6

    move-object/from16 v15, p9

    .end local v4    # "intents":[Landroid/content/Intent;
    .end local v11    # "filterCallingUid":I
    .end local v15    # "startingUidPkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .local v6, "filterCallingUid":I
    .restart local v7    # "startingUidPkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .restart local v16    # "intents":[Landroid/content/Intent;
    .restart local v18    # "realCallingPid":I
    goto :goto_12

    .end local v7    # "startingUidPkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .end local v16    # "intents":[Landroid/content/Intent;
    .end local v18    # "realCallingPid":I
    .local v6, "realCallingPid":I
    .restart local v11    # "filterCallingUid":I
    .restart local v15    # "startingUidPkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .local p7, "intents":[Landroid/content/Intent;
    :catchall_14
    move-exception v0

    move/from16 v18, v6

    move v6, v11

    move-object v7, v15

    move-object/from16 v11, p6

    move-object/from16 v16, p7

    move-object/from16 v15, p9

    .end local v11    # "filterCallingUid":I
    .end local p7    # "intents":[Landroid/content/Intent;
    .end local p9    # "resultTo":Landroid/os/IBinder;
    .local v6, "filterCallingUid":I
    .restart local v7    # "startingUidPkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .local v15, "resultTo":Landroid/os/IBinder;
    .restart local v16    # "intents":[Landroid/content/Intent;
    .restart local v18    # "realCallingPid":I
    :goto_12
    invoke-static/range {v19 .. v20}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 486
    throw v0

    .line 347
    .end local v6    # "filterCallingUid":I
    .end local v7    # "startingUidPkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .end local v8    # "realCallingUid":I
    .end local v9    # "callingUid":I
    .end local v10    # "callingPid":I
    .end local v15    # "resultTo":Landroid/os/IBinder;
    .end local v16    # "intents":[Landroid/content/Intent;
    .end local v18    # "realCallingPid":I
    .end local v19    # "origId":J
    .local p2, "callingUid":I
    .restart local p7    # "intents":[Landroid/content/Intent;
    .restart local p9    # "resultTo":Landroid/os/IBinder;
    :cond_14
    move-object/from16 v11, p6

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "intents are length different than resolvedTypes"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 344
    :cond_15
    move-object/from16 v11, p6

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v2, "resolvedTypes is null"

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 341
    :cond_16
    move-object/from16 v11, p6

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v2, "intents is null"

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final startActivitiesInPackage(IIILjava/lang/String;Ljava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Lcom/android/server/wm/SafeActivityOptions;IZLcom/android/server/am/PendingIntentRecord;Z)I
    .locals 22
    .param p1, "uid"    # I
    .param p2, "realCallingPid"    # I
    .param p3, "realCallingUid"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;
    .param p5, "callingFeatureId"    # Ljava/lang/String;
    .param p6, "intents"    # [Landroid/content/Intent;
    .param p7, "resolvedTypes"    # [Ljava/lang/String;
    .param p8, "resultTo"    # Landroid/os/IBinder;
    .param p9, "options"    # Lcom/android/server/wm/SafeActivityOptions;
    .param p10, "userId"    # I
    .param p11, "validateIncomingUser"    # Z
    .param p12, "originatingPendingIntent"    # Lcom/android/server/am/PendingIntentRecord;
    .param p13, "allowBackgroundActivityStart"    # Z

    .line 324
    const-string v0, "startActivityInPackage"

    .line 326
    .local v0, "reason":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .line 327
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 326
    const-string v6, "startActivityInPackage"

    move-object/from16 v1, p0

    move/from16 v2, p10

    move/from16 v3, p11

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/ActivityStartController;->checkTargetUser(IZIILjava/lang/String;)I

    move-result v1

    .line 330
    .end local p10    # "userId":I
    .local v1, "userId":I
    const/4 v8, 0x0

    const-string v19, "startActivityInPackage"

    move-object/from16 v7, p0

    move/from16 v9, p1

    move/from16 v10, p2

    move/from16 v11, p3

    move-object/from16 v12, p4

    move-object/from16 v13, p5

    move-object/from16 v14, p6

    move-object/from16 v15, p7

    move-object/from16 v16, p8

    move-object/from16 v17, p9

    move/from16 v18, v1

    move-object/from16 v20, p12

    move/from16 v21, p13

    invoke-virtual/range {v7 .. v21}, Lcom/android/server/wm/ActivityStartController;->startActivities(Landroid/app/IApplicationThread;IIILjava/lang/String;Ljava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Lcom/android/server/wm/SafeActivityOptions;ILjava/lang/String;Lcom/android/server/am/PendingIntentRecord;Z)I

    move-result v2

    return v2
.end method

.method final startActivitiesInPackage(ILjava/lang/String;Ljava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Lcom/android/server/wm/SafeActivityOptions;IZLcom/android/server/am/PendingIntentRecord;Z)I
    .locals 14
    .param p1, "uid"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingFeatureId"    # Ljava/lang/String;
    .param p4, "intents"    # [Landroid/content/Intent;
    .param p5, "resolvedTypes"    # [Ljava/lang/String;
    .param p6, "resultTo"    # Landroid/os/IBinder;
    .param p7, "options"    # Lcom/android/server/wm/SafeActivityOptions;
    .param p8, "userId"    # I
    .param p9, "validateIncomingUser"    # Z
    .param p10, "originatingPendingIntent"    # Lcom/android/server/am/PendingIntentRecord;
    .param p11, "allowBackgroundActivityStart"    # Z

    .line 300
    const/4 v2, 0x0

    const/4 v3, -0x1

    move-object v0, p0

    move v1, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move-object/from16 v12, p10

    move/from16 v13, p11

    invoke-virtual/range {v0 .. v13}, Lcom/android/server/wm/ActivityStartController;->startActivitiesInPackage(IIILjava/lang/String;Ljava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Lcom/android/server/wm/SafeActivityOptions;IZLcom/android/server/am/PendingIntentRecord;Z)I

    move-result v0

    return v0
.end method

.method final startActivityInPackage(IIILjava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILcom/android/server/wm/SafeActivityOptions;ILcom/android/server/wm/Task;Ljava/lang/String;ZLcom/android/server/am/PendingIntentRecord;Z)I
    .locals 16
    .param p1, "uid"    # I
    .param p2, "realCallingPid"    # I
    .param p3, "realCallingUid"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;
    .param p5, "callingFeatureId"    # Ljava/lang/String;
    .param p6, "intent"    # Landroid/content/Intent;
    .param p7, "resolvedType"    # Ljava/lang/String;
    .param p8, "resultTo"    # Landroid/os/IBinder;
    .param p9, "resultWho"    # Ljava/lang/String;
    .param p10, "requestCode"    # I
    .param p11, "startFlags"    # I
    .param p12, "options"    # Lcom/android/server/wm/SafeActivityOptions;
    .param p13, "userId"    # I
    .param p14, "inTask"    # Lcom/android/server/wm/Task;
    .param p15, "reason"    # Ljava/lang/String;
    .param p16, "validateIncomingUser"    # Z
    .param p17, "originatingPendingIntent"    # Lcom/android/server/am/PendingIntentRecord;
    .param p18, "allowBackgroundActivityStart"    # Z

    .line 261
    move-object/from16 v0, p0

    move/from16 v1, p13

    move/from16 v2, p16

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p15

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/ActivityStartController;->checkTargetUser(IZIILjava/lang/String;)I

    move-result v0

    .line 265
    .end local p13    # "userId":I
    .local v0, "userId":I
    move-object/from16 v1, p0

    move-object/from16 v2, p6

    move-object/from16 v3, p15

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v4

    .line 266
    move/from16 v5, p1

    invoke-virtual {v4, v5}, Lcom/android/server/wm/ActivityStarter;->setCallingUid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v4

    .line 267
    move/from16 v6, p2

    invoke-virtual {v4, v6}, Lcom/android/server/wm/ActivityStarter;->setRealCallingPid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v4

    .line 268
    move/from16 v7, p3

    invoke-virtual {v4, v7}, Lcom/android/server/wm/ActivityStarter;->setRealCallingUid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v4

    .line 269
    move-object/from16 v8, p4

    invoke-virtual {v4, v8}, Lcom/android/server/wm/ActivityStarter;->setCallingPackage(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v4

    .line 270
    move-object/from16 v9, p5

    invoke-virtual {v4, v9}, Lcom/android/server/wm/ActivityStarter;->setCallingFeatureId(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v4

    .line 271
    move-object/from16 v10, p7

    invoke-virtual {v4, v10}, Lcom/android/server/wm/ActivityStarter;->setResolvedType(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v4

    .line 272
    move-object/from16 v11, p8

    invoke-virtual {v4, v11}, Lcom/android/server/wm/ActivityStarter;->setResultTo(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v4

    .line 273
    move-object/from16 v12, p9

    invoke-virtual {v4, v12}, Lcom/android/server/wm/ActivityStarter;->setResultWho(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v4

    .line 274
    move/from16 v13, p10

    invoke-virtual {v4, v13}, Lcom/android/server/wm/ActivityStarter;->setRequestCode(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v4

    .line 275
    move/from16 v14, p11

    invoke-virtual {v4, v14}, Lcom/android/server/wm/ActivityStarter;->setStartFlags(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v4

    .line 276
    move-object/from16 v15, p12

    invoke-virtual {v4, v15}, Lcom/android/server/wm/ActivityStarter;->setActivityOptions(Lcom/android/server/wm/SafeActivityOptions;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v4

    .line 277
    invoke-virtual {v4, v0}, Lcom/android/server/wm/ActivityStarter;->setUserId(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v4

    .line 278
    move/from16 p13, v0

    move-object/from16 v0, p14

    .end local v0    # "userId":I
    .restart local p13    # "userId":I
    invoke-virtual {v4, v0}, Lcom/android/server/wm/ActivityStarter;->setInTask(Lcom/android/server/wm/Task;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v4

    .line 279
    move-object/from16 v0, p17

    invoke-virtual {v4, v0}, Lcom/android/server/wm/ActivityStarter;->setOriginatingPendingIntent(Lcom/android/server/am/PendingIntentRecord;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v4

    .line 280
    move/from16 v0, p18

    invoke-virtual {v4, v0}, Lcom/android/server/wm/ActivityStarter;->setAllowBackgroundActivityStart(Z)Lcom/android/server/wm/ActivityStarter;

    move-result-object v4

    .line 281
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityStarter;->execute()I

    move-result v4

    .line 265
    return v4
.end method

.method startHomeActivity(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Ljava/lang/String;Lcom/android/server/wm/TaskDisplayArea;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "taskDisplayArea"    # Lcom/android/server/wm/TaskDisplayArea;

    .line 148
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v0

    .line 149
    .local v0, "options":Landroid/app/ActivityOptions;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    .line 150
    iget-object v2, p2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/server/wm/ActivityRecord;->isResolverActivity(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 154
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/app/ActivityOptions;->setLaunchActivityType(I)V

    .line 156
    :cond_0
    invoke-virtual {p4}, Lcom/android/server/wm/TaskDisplayArea;->getDisplayId()I

    move-result v2

    .line 157
    .local v2, "displayId":I
    invoke-virtual {v0, v2}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    .line 158
    iget-object v3, p4, Lcom/android/server/wm/TaskDisplayArea;->mRemoteToken:Lcom/android/server/wm/WindowContainer$RemoteToken;

    .line 159
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer$RemoteToken;->toWindowContainerToken()Landroid/window/WindowContainerToken;

    move-result-object v3

    .line 158
    invoke-virtual {v0, v3}, Landroid/app/ActivityOptions;->setLaunchTaskDisplayArea(Landroid/window/WindowContainerToken;)Landroid/app/ActivityOptions;

    .line 163
    iget-object v3, p0, Lcom/android/server/wm/ActivityStartController;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskSupervisor;->beginDeferResume()V

    .line 167
    :try_start_0
    invoke-virtual {p4, v1}, Lcom/android/server/wm/TaskDisplayArea;->getOrCreateRootHomeTask(Z)Lcom/android/server/wm/Task;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    .local v1, "rootHomeTask":Lcom/android/server/wm/Task;
    iget-object v3, p0, Lcom/android/server/wm/ActivityStartController;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskSupervisor;->endDeferResume()V

    .line 170
    nop

    .line 172
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startHomeActivity: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p1, v3}, Lcom/android/server/wm/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/ActivityStartController;->tmpOutRecord:[Lcom/android/server/wm/ActivityRecord;

    .line 173
    invoke-virtual {v3, v4}, Lcom/android/server/wm/ActivityStarter;->setOutActivity([Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v3

    .line 174
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/server/wm/ActivityStarter;->setCallingUid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v3

    .line 175
    invoke-virtual {v3, p2}, Lcom/android/server/wm/ActivityStarter;->setActivityInfo(Landroid/content/pm/ActivityInfo;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v3

    .line 176
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/server/wm/ActivityStarter;->setActivityOptions(Landroid/os/Bundle;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v3

    .line 177
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStarter;->execute()I

    move-result v3

    iput v3, p0, Lcom/android/server/wm/ActivityStartController;->mLastHomeActivityStartResult:I

    .line 178
    iget-object v3, p0, Lcom/android/server/wm/ActivityStartController;->tmpOutRecord:[Lcom/android/server/wm/ActivityRecord;

    aget-object v3, v3, v4

    iput-object v3, p0, Lcom/android/server/wm/ActivityStartController;->mLastHomeActivityStartRecord:Lcom/android/server/wm/ActivityRecord;

    .line 179
    iget-boolean v3, v1, Lcom/android/server/wm/Task;->mInResumeTopActivity:Z

    if-eqz v3, :cond_1

    .line 183
    iget-object v3, p0, Lcom/android/server/wm/ActivityStartController;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskSupervisor;->scheduleResumeTopActivities()V

    .line 185
    :cond_1
    return-void

    .line 169
    .end local v1    # "rootHomeTask":Lcom/android/server/wm/Task;
    :catchall_0
    move-exception v1

    iget-object v3, p0, Lcom/android/server/wm/ActivityStartController;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskSupervisor;->endDeferResume()V

    .line 170
    throw v1
.end method

.method startSetupActivity()V
    .locals 10

    .line 192
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityStartController;->mCheckedForSetup:Z

    if-eqz v0, :cond_0

    .line 193
    return-void

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 200
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mFactoryTest:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    .line 201
    const-string v1, "device_provisioned"

    const/4 v3, 0x0

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_3

    .line 202
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStartController;->mCheckedForSetup:Z

    .line 205
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.UPGRADE_SETUP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 206
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 207
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const v4, 0x100480

    invoke-virtual {v2, v1, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 210
    .local v2, "ris":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 211
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 212
    .local v4, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v6, "android.SETUP_VERSION"

    if-eqz v5, :cond_1

    .line 213
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 214
    :cond_1
    const/4 v5, 0x0

    :goto_0
    nop

    .line 215
    .local v5, "vers":Ljava/lang/String;
    if-nez v5, :cond_2

    iget-object v7, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v7, :cond_2

    .line 216
    iget-object v7, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v7, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 219
    :cond_2
    const-string v6, "last_setup_shown"

    invoke-static {v0, v6}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 221
    .local v6, "lastVers":Ljava/lang/String;
    if-eqz v5, :cond_3

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 222
    const/high16 v7, 0x10000000

    invoke-virtual {v1, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 223
    new-instance v7, Landroid/content/ComponentName;

    iget-object v8, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v9, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v7, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 225
    const-string v7, "startSetupActivity"

    invoke-virtual {p0, v1, v7}, Lcom/android/server/wm/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v7

    .line 226
    invoke-virtual {v7, v3}, Lcom/android/server/wm/ActivityStarter;->setCallingUid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v3

    iget-object v7, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 227
    invoke-virtual {v3, v7}, Lcom/android/server/wm/ActivityStarter;->setActivityInfo(Landroid/content/pm/ActivityInfo;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v3

    .line 228
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStarter;->execute()I

    .line 232
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "ris":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v4    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v5    # "vers":Ljava/lang/String;
    .end local v6    # "lastVers":Ljava/lang/String;
    :cond_3
    return-void
.end method
