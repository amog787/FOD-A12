.class final Lcom/android/server/wm/VrController;
.super Ljava/lang/Object;
.source "VrController.java"


# static fields
.field private static final FLAG_NON_VR_MODE:I = 0x0

.field private static final FLAG_PERSISTENT_VR_MODE:I = 0x2

.field private static final FLAG_VR_MODE:I = 0x1

.field private static ORIG_ENUMS:[I = null

.field private static PROTO_ENUMS:[I = null

.field private static final TAG:Ljava/lang/String; = "VrController"


# instance fields
.field private final mGlobalAmLock:Ljava/lang/Object;

.field private final mPersistentVrModeListener:Landroid/service/vr/IPersistentVrStateCallbacks;

.field private mVrRenderThreadTid:I

.field private volatile mVrState:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 59
    const/4 v0, 0x3

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/android/server/wm/VrController;->ORIG_ENUMS:[I

    .line 64
    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/server/wm/VrController;->PROTO_ENUMS:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x1
        0x2
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "globalAmLock"    # Ljava/lang/Object;

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/VrController;->mVrState:I

    .line 107
    iput v0, p0, Lcom/android/server/wm/VrController;->mVrRenderThreadTid:I

    .line 111
    new-instance v0, Lcom/android/server/wm/VrController$1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/VrController$1;-><init>(Lcom/android/server/wm/VrController;)V

    iput-object v0, p0, Lcom/android/server/wm/VrController;->mPersistentVrModeListener:Landroid/service/vr/IPersistentVrStateCallbacks;

    .line 135
    iput-object p1, p0, Lcom/android/server/wm/VrController;->mGlobalAmLock:Ljava/lang/Object;

    .line 136
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/VrController;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/VrController;

    .line 50
    iget-object v0, p0, Lcom/android/server/wm/VrController;->mGlobalAmLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/wm/VrController;IIZ)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/VrController;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .line 50
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/VrController;->setVrRenderThreadLocked(IIZ)I

    move-result v0

    return v0
.end method

.method static synthetic access$272(Lcom/android/server/wm/VrController;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/VrController;
    .param p1, "x1"    # I

    .line 50
    iget v0, p0, Lcom/android/server/wm/VrController;->mVrState:I

    and-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/wm/VrController;->mVrState:I

    return v0
.end method

.method static synthetic access$276(Lcom/android/server/wm/VrController;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/VrController;
    .param p1, "x1"    # I

    .line 50
    iget v0, p0, Lcom/android/server/wm/VrController;->mVrState:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/wm/VrController;->mVrState:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/wm/VrController;IZ)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/VrController;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .line 50
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/VrController;->setPersistentVrRenderThreadLocked(IZ)I

    move-result v0

    return v0
.end method

.method private changeVrModeLocked(ZLcom/android/server/wm/WindowProcessController;)Z
    .locals 5
    .param p1, "vrMode"    # Z
    .param p2, "proc"    # Lcom/android/server/wm/WindowProcessController;

    .line 300
    iget v0, p0, Lcom/android/server/wm/VrController;->mVrState:I

    .line 304
    .local v0, "oldVrState":I
    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 305
    iget v2, p0, Lcom/android/server/wm/VrController;->mVrState:I

    or-int/2addr v2, v1

    iput v2, p0, Lcom/android/server/wm/VrController;->mVrState:I

    goto :goto_0

    .line 307
    :cond_0
    iget v2, p0, Lcom/android/server/wm/VrController;->mVrState:I

    and-int/lit8 v2, v2, -0x2

    iput v2, p0, Lcom/android/server/wm/VrController;->mVrState:I

    .line 310
    :goto_0
    iget v2, p0, Lcom/android/server/wm/VrController;->mVrState:I

    const/4 v3, 0x0

    if-eq v0, v2, :cond_1

    goto :goto_1

    :cond_1
    move v1, v3

    .line 312
    .local v1, "changed":Z
    :goto_1
    if-eqz v1, :cond_3

    .line 313
    if-eqz p2, :cond_2

    .line 314
    iget v2, p2, Lcom/android/server/wm/WindowProcessController;->mVrThreadTid:I

    if-lez v2, :cond_3

    .line 315
    iget v2, p2, Lcom/android/server/wm/WindowProcessController;->mVrThreadTid:I

    .line 316
    invoke-virtual {p2}, Lcom/android/server/wm/WindowProcessController;->getCurrentSchedulingGroup()I

    move-result v4

    .line 315
    invoke-direct {p0, v2, v4, v3}, Lcom/android/server/wm/VrController;->setVrRenderThreadLocked(IIZ)I

    goto :goto_2

    .line 319
    :cond_2
    invoke-direct {p0, v3}, Lcom/android/server/wm/VrController;->clearVrRenderThreadLocked(Z)V

    .line 322
    :cond_3
    :goto_2
    return v1
.end method

.method private clearVrRenderThreadLocked(Z)V
    .locals 1
    .param p1, "suppressLogs"    # Z

    .line 418
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/android/server/wm/VrController;->updateVrRenderThreadLocked(IZ)I

    .line 419
    return-void
.end method

.method private enforceThreadInProcess(II)V
    .locals 2
    .param p1, "tid"    # I
    .param p2, "pid"    # I

    .line 426
    invoke-static {p2, p1}, Landroid/os/Process;->isThreadInProcess(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 429
    return-void

    .line 427
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "VR thread does not belong to process"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private hasPersistentVrFlagSet()Z
    .locals 1

    .line 444
    iget v0, p0, Lcom/android/server/wm/VrController;->mVrState:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private inVrMode()Z
    .locals 2

    .line 435
    iget v0, p0, Lcom/android/server/wm/VrController;->mVrState:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private setPersistentVrRenderThreadLocked(IZ)I
    .locals 2
    .param p1, "newTid"    # I
    .param p2, "suppressLogs"    # Z

    .line 368
    invoke-direct {p0}, Lcom/android/server/wm/VrController;->hasPersistentVrFlagSet()Z

    move-result v0

    if-nez v0, :cond_1

    .line 369
    if-nez p2, :cond_0

    .line 370
    const-string v0, "VrController"

    const-string v1, "Failed to set persistent VR thread, system not in persistent VR mode."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    :cond_0
    iget v0, p0, Lcom/android/server/wm/VrController;->mVrRenderThreadTid:I

    return v0

    .line 375
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/VrController;->updateVrRenderThreadLocked(IZ)I

    move-result v0

    return v0
.end method

.method private setVrRenderThreadLocked(IIZ)I
    .locals 5
    .param p1, "newTid"    # I
    .param p2, "schedGroup"    # I
    .param p3, "suppressLogs"    # Z

    .line 394
    invoke-direct {p0}, Lcom/android/server/wm/VrController;->inVrMode()Z

    move-result v0

    .line 395
    .local v0, "inVr":Z
    invoke-direct {p0}, Lcom/android/server/wm/VrController;->hasPersistentVrFlagSet()Z

    move-result v1

    .line 396
    .local v1, "inPersistentVr":Z
    if-eqz v0, :cond_1

    if-nez v1, :cond_1

    const/4 v2, 0x3

    if-eq p2, v2, :cond_0

    goto :goto_0

    .line 408
    :cond_0
    invoke-direct {p0, p1, p3}, Lcom/android/server/wm/VrController;->updateVrRenderThreadLocked(IZ)I

    move-result v2

    return v2

    .line 397
    :cond_1
    :goto_0
    if-nez p3, :cond_4

    .line 398
    const-string v2, "caller is not the current top application."

    .line 399
    .local v2, "reason":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 400
    const-string v2, "system not in VR mode."

    goto :goto_1

    .line 401
    :cond_2
    if-eqz v1, :cond_3

    .line 402
    const-string v2, "system in persistent VR mode."

    .line 404
    :cond_3
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to set VR thread, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "VrController"

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    .end local v2    # "reason":Ljava/lang/String;
    :cond_4
    iget v2, p0, Lcom/android/server/wm/VrController;->mVrRenderThreadTid:I

    return v2
.end method

.method private updateVrRenderThreadLocked(IZ)I
    .locals 1
    .param p1, "newTid"    # I
    .param p2, "suppressLogs"    # Z

    .line 338
    iget v0, p0, Lcom/android/server/wm/VrController;->mVrRenderThreadTid:I

    if-ne v0, p1, :cond_0

    .line 339
    return v0

    .line 342
    :cond_0
    if-lez v0, :cond_1

    .line 343
    invoke-static {v0, p2}, Lcom/android/server/am/ActivityManagerService;->scheduleAsRegularPriority(IZ)Z

    .line 344
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/VrController;->mVrRenderThreadTid:I

    .line 347
    :cond_1
    if-lez p1, :cond_2

    .line 348
    iput p1, p0, Lcom/android/server/wm/VrController;->mVrRenderThreadTid:I

    .line 349
    invoke-static {p1, p2}, Lcom/android/server/am/ActivityManagerService;->scheduleAsFifoPriority(IZ)Z

    .line 351
    :cond_2
    iget v0, p0, Lcom/android/server/wm/VrController;->mVrRenderThreadTid:I

    return v0
.end method


# virtual methods
.method dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 8
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 453
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 454
    .local v0, "token":J
    iget v5, p0, Lcom/android/server/wm/VrController;->mVrState:I

    sget-object v6, Lcom/android/server/wm/VrController;->ORIG_ENUMS:[I

    sget-object v7, Lcom/android/server/wm/VrController;->PROTO_ENUMS:[I

    const-wide v3, 0x20e00000001L

    move-object v2, p1

    invoke-static/range {v2 .. v7}, Landroid/util/proto/ProtoUtils;->writeBitWiseFlagsToProtoEnum(Landroid/util/proto/ProtoOutputStream;JI[I[I)V

    .line 456
    iget v2, p0, Lcom/android/server/wm/VrController;->mVrRenderThreadTid:I

    const-wide v3, 0x10500000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 457
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 458
    return-void
.end method

.method isInterestingToSchedGroup()Z
    .locals 1

    .line 153
    iget v0, p0, Lcom/android/server/wm/VrController;->mVrState:I

    and-int/lit8 v0, v0, 0x3

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onSystemReady()V
    .locals 2

    .line 142
    const-class v0, Lcom/android/server/vr/VrManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/vr/VrManagerInternal;

    .line 143
    .local v0, "vrManagerInternal":Lcom/android/server/vr/VrManagerInternal;
    if-eqz v0, :cond_0

    .line 144
    iget-object v1, p0, Lcom/android/server/wm/VrController;->mPersistentVrModeListener:Landroid/service/vr/IPersistentVrStateCallbacks;

    invoke-virtual {v0, v1}, Lcom/android/server/vr/VrManagerInternal;->addPersistentVrModeStateListener(Landroid/service/vr/IPersistentVrStateCallbacks;)V

    .line 146
    :cond_0
    return-void
.end method

.method public onTopProcChangedLocked(Lcom/android/server/wm/WindowProcessController;)V
    .locals 4
    .param p1, "proc"    # Lcom/android/server/wm/WindowProcessController;

    .line 165
    invoke-virtual {p1}, Lcom/android/server/wm/WindowProcessController;->getCurrentSchedulingGroup()I

    move-result v0

    .line 166
    .local v0, "curSchedGroup":I
    const/4 v1, 0x1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 167
    iget v2, p1, Lcom/android/server/wm/WindowProcessController;->mVrThreadTid:I

    invoke-direct {p0, v2, v0, v1}, Lcom/android/server/wm/VrController;->setVrRenderThreadLocked(IIZ)I

    goto :goto_0

    .line 169
    :cond_0
    iget v2, p1, Lcom/android/server/wm/WindowProcessController;->mVrThreadTid:I

    iget v3, p0, Lcom/android/server/wm/VrController;->mVrRenderThreadTid:I

    if-ne v2, v3, :cond_1

    .line 170
    invoke-direct {p0, v1}, Lcom/android/server/wm/VrController;->clearVrRenderThreadLocked(Z)V

    .line 173
    :cond_1
    :goto_0
    return-void
.end method

.method public onVrModeChanged(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 11
    .param p1, "record"    # Lcom/android/server/wm/ActivityRecord;

    .line 184
    const-class v0, Lcom/android/server/vr/VrManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/vr/VrManagerInternal;

    .line 185
    .local v0, "vrService":Lcom/android/server/vr/VrManagerInternal;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 187
    return v1

    .line 193
    :cond_0
    const/4 v2, -0x1

    .line 194
    .local v2, "processId":I
    const/4 v5, 0x0

    .line 195
    .local v5, "changed":Z
    iget-object v7, p0, Lcom/android/server/wm/VrController;->mGlobalAmLock:Ljava/lang/Object;

    monitor-enter v7

    .line 196
    :try_start_0
    iget-object v3, p1, Lcom/android/server/wm/ActivityRecord;->requestedVrComponent:Landroid/content/ComponentName;

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    move v8, v1

    .line 197
    .local v8, "vrMode":Z
    iget-object v3, p1, Lcom/android/server/wm/ActivityRecord;->requestedVrComponent:Landroid/content/ComponentName;

    .line 198
    .local v3, "requestedPackage":Landroid/content/ComponentName;
    iget v4, p1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 199
    .local v4, "userId":I
    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v1}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v6

    .line 202
    .local v6, "callingPackage":Landroid/content/ComponentName;
    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-direct {p0, v8, v1}, Lcom/android/server/wm/VrController;->changeVrModeLocked(ZLcom/android/server/wm/WindowProcessController;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move v9, v1

    .line 204
    .end local v5    # "changed":Z
    .local v9, "changed":Z
    :try_start_1
    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-eqz v1, :cond_2

    .line 205
    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowProcessController;->getPid()I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move v10, v1

    .end local v2    # "processId":I
    .local v1, "processId":I
    goto :goto_0

    .line 204
    .end local v1    # "processId":I
    .restart local v2    # "processId":I
    :cond_2
    move v10, v2

    .line 207
    .end local v2    # "processId":I
    .local v10, "processId":I
    :goto_0
    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 211
    move-object v1, v0

    move v2, v8

    move v5, v10

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/vr/VrManagerInternal;->setVrMode(ZLandroid/content/ComponentName;IILandroid/content/ComponentName;)V

    .line 212
    return v9

    .line 207
    .end local v3    # "requestedPackage":Landroid/content/ComponentName;
    .end local v4    # "userId":I
    .end local v6    # "callingPackage":Landroid/content/ComponentName;
    .end local v8    # "vrMode":Z
    :catchall_0
    move-exception v1

    move v5, v9

    move v2, v10

    goto :goto_1

    .end local v10    # "processId":I
    .restart local v2    # "processId":I
    :catchall_1
    move-exception v1

    move v5, v9

    goto :goto_1

    .end local v9    # "changed":Z
    .restart local v5    # "changed":Z
    :catchall_2
    move-exception v1

    :goto_1
    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v1
.end method

.method public setPersistentVrThreadLocked(IILcom/android/server/wm/WindowProcessController;)V
    .locals 2
    .param p1, "tid"    # I
    .param p2, "pid"    # I
    .param p3, "proc"    # Lcom/android/server/wm/WindowProcessController;

    .line 265
    invoke-direct {p0}, Lcom/android/server/wm/VrController;->hasPersistentVrFlagSet()Z

    move-result v0

    const-string v1, "VrController"

    if-nez v0, :cond_0

    .line 266
    const-string v0, "Persistent VR thread may only be set in persistent VR mode!"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    return-void

    .line 269
    :cond_0
    if-nez p3, :cond_1

    .line 270
    const-string v0, "Persistent VR thread not set, calling process doesn\'t exist!"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    return-void

    .line 273
    :cond_1
    if-eqz p1, :cond_2

    .line 274
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/VrController;->enforceThreadInProcess(II)V

    .line 276
    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/VrController;->setPersistentVrRenderThreadLocked(IZ)I

    .line 277
    return-void
.end method

.method public setVrThreadLocked(IILcom/android/server/wm/WindowProcessController;)V
    .locals 3
    .param p1, "tid"    # I
    .param p2, "pid"    # I
    .param p3, "proc"    # Lcom/android/server/wm/WindowProcessController;

    .line 231
    invoke-direct {p0}, Lcom/android/server/wm/VrController;->hasPersistentVrFlagSet()Z

    move-result v0

    const-string v1, "VrController"

    if-eqz v0, :cond_0

    .line 232
    const-string v0, "VR thread cannot be set in persistent VR mode!"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    return-void

    .line 235
    :cond_0
    if-nez p3, :cond_1

    .line 236
    const-string v0, "Persistent VR thread not set, calling process doesn\'t exist!"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    return-void

    .line 239
    :cond_1
    if-eqz p1, :cond_2

    .line 240
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/VrController;->enforceThreadInProcess(II)V

    .line 242
    :cond_2
    invoke-direct {p0}, Lcom/android/server/wm/VrController;->inVrMode()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_3

    .line 243
    const-string v0, "VR thread cannot be set when not in VR mode!"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 245
    :cond_3
    invoke-virtual {p3}, Lcom/android/server/wm/WindowProcessController;->getCurrentSchedulingGroup()I

    move-result v0

    invoke-direct {p0, p1, v0, v2}, Lcom/android/server/wm/VrController;->setVrRenderThreadLocked(IIZ)I

    .line 247
    :goto_0
    if-lez p1, :cond_4

    move v2, p1

    :cond_4
    iput v2, p3, Lcom/android/server/wm/WindowProcessController;->mVrThreadTid:I

    .line 248
    return-void
.end method

.method public shouldDisableNonVrUiLocked()Z
    .locals 1

    .line 285
    iget v0, p0, Lcom/android/server/wm/VrController;->mVrState:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 449
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/android/server/wm/VrController;->mVrState:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/server/wm/VrController;->mVrRenderThreadTid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "[VrState=0x%x,VrRenderThreadTid=%d]"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
