.class public Lcom/android/server/wm/DisplayAreaOrganizerController;
.super Landroid/window/IDisplayAreaOrganizerController$Stub;
.source "DisplayAreaOrganizerController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/DisplayAreaOrganizerController$DeathRecipient;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DisplayAreaOrganizerController"


# instance fields
.field private final mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

.field private mNextTaskDisplayAreaFeatureId:I

.field private final mOrganizersByFeatureIds:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/window/IDisplayAreaOrganizer;",
            ">;"
        }
    .end annotation
.end field

.field final mService:Lcom/android/server/wm/ActivityTaskManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .locals 1
    .param p1, "atm"    # Lcom/android/server/wm/ActivityTaskManagerService;

    .line 72
    invoke-direct {p0}, Landroid/window/IDisplayAreaOrganizerController$Stub;-><init>()V

    .line 48
    const/16 v0, 0x4e22

    iput v0, p0, Lcom/android/server/wm/DisplayAreaOrganizerController;->mNextTaskDisplayAreaFeatureId:I

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DisplayAreaOrganizerController;->mOrganizersByFeatureIds:Ljava/util/HashMap;

    .line 73
    iput-object p1, p0, Lcom/android/server/wm/DisplayAreaOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 74
    iget-object v0, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    iput-object v0, p0, Lcom/android/server/wm/DisplayAreaOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 75
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/DisplayAreaOrganizerController;)Lcom/android/server/wm/WindowManagerGlobalLock;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/DisplayAreaOrganizerController;

    .line 41
    iget-object v0, p0, Lcom/android/server/wm/DisplayAreaOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/wm/DisplayAreaOrganizerController;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/DisplayAreaOrganizerController;

    .line 41
    iget-object v0, p0, Lcom/android/server/wm/DisplayAreaOrganizerController;->mOrganizersByFeatureIds:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/wm/DisplayAreaOrganizerController;Landroid/window/IDisplayAreaOrganizer;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/DisplayAreaOrganizerController;
    .param p1, "x1"    # Landroid/window/IDisplayAreaOrganizer;

    .line 41
    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayAreaOrganizerController;->removeOrganizer(Landroid/window/IDisplayAreaOrganizer;)V

    return-void
.end method

.method private createTaskDisplayArea(Lcom/android/server/wm/RootDisplayArea;Ljava/lang/String;I)Lcom/android/server/wm/TaskDisplayArea;
    .locals 7
    .param p1, "root"    # Lcom/android/server/wm/RootDisplayArea;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "taskDisplayAreaFeatureId"    # I

    .line 296
    new-instance v6, Lcom/android/server/wm/TaskDisplayArea;

    iget-object v1, p1, Lcom/android/server/wm/RootDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, p1, Lcom/android/server/wm/RootDisplayArea;->mWmService:Lcom/android/server/wm/WindowManagerService;

    const/4 v5, 0x1

    move-object v0, v6

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/TaskDisplayArea;-><init>(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/WindowManagerService;Ljava/lang/String;IZ)V

    .line 300
    .local v0, "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    new-instance v1, Lcom/android/server/wm/DisplayAreaOrganizerController$$ExternalSyntheticLambda5;

    invoke-direct {v1, p1}, Lcom/android/server/wm/DisplayAreaOrganizerController$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/wm/RootDisplayArea;)V

    invoke-virtual {p1, v1}, Lcom/android/server/wm/RootDisplayArea;->getItemFromDisplayAreas(Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayArea;

    .line 312
    .local v1, "topTaskContainer":Lcom/android/server/wm/DisplayArea;
    if-eqz v1, :cond_0

    .line 317
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayArea;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    .line 318
    .local v2, "parent":Lcom/android/server/wm/WindowContainer;
    iget-object v3, v2, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v1}, Lcom/android/server/wm/WindowList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    .line 319
    .local v3, "index":I
    invoke-virtual {v2, v0, v3}, Lcom/android/server/wm/WindowContainer;->addChild(Lcom/android/server/wm/WindowContainer;I)V

    .line 321
    return-object v0

    .line 313
    .end local v2    # "parent":Lcom/android/server/wm/WindowContainer;
    .end local v3    # "index":I
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Root must either contain TDA or DAG root="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private createTaskDisplayArea(Lcom/android/server/wm/TaskDisplayArea;Ljava/lang/String;I)Lcom/android/server/wm/TaskDisplayArea;
    .locals 7
    .param p1, "parentTda"    # Lcom/android/server/wm/TaskDisplayArea;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "taskDisplayAreaFeatureId"    # I

    .line 329
    new-instance v6, Lcom/android/server/wm/TaskDisplayArea;

    iget-object v1, p1, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, p1, Lcom/android/server/wm/TaskDisplayArea;->mWmService:Lcom/android/server/wm/WindowManagerService;

    const/4 v5, 0x1

    move-object v0, v6

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/TaskDisplayArea;-><init>(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/WindowManagerService;Ljava/lang/String;IZ)V

    .line 334
    .local v0, "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    const v1, 0x7fffffff

    invoke-virtual {p1, v0, v1}, Lcom/android/server/wm/TaskDisplayArea;->addChild(Lcom/android/server/wm/WindowContainer;I)V

    .line 336
    return-object v0
.end method

.method private deleteTaskDisplayArea(Lcom/android/server/wm/TaskDisplayArea;)V
    .locals 2
    .param p1, "taskDisplayArea"    # Lcom/android/server/wm/TaskDisplayArea;

    .line 340
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/server/wm/TaskDisplayArea;->setOrganizer(Landroid/window/IDisplayAreaOrganizer;)V

    .line 341
    iget-object v0, p0, Lcom/android/server/wm/DisplayAreaOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->beginDeferResume()V

    .line 346
    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/wm/TaskDisplayArea;->remove()Lcom/android/server/wm/Task;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 348
    .local v0, "lastReparentedRootTask":Lcom/android/server/wm/Task;
    iget-object v1, p0, Lcom/android/server/wm/DisplayAreaOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v1, v1, Lcom/android/server/wm/RootWindowContainer;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskSupervisor;->endDeferResume()V

    .line 349
    nop

    .line 351
    invoke-virtual {p1}, Lcom/android/server/wm/TaskDisplayArea;->removeImmediately()V

    .line 355
    if-eqz v0, :cond_0

    .line 356
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->resumeNextFocusAfterReparent()V

    .line 358
    :cond_0
    return-void

    .line 348
    .end local v0    # "lastReparentedRootTask":Lcom/android/server/wm/Task;
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/server/wm/DisplayAreaOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v1, v1, Lcom/android/server/wm/RootWindowContainer;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskSupervisor;->endDeferResume()V

    .line 349
    throw v0
.end method

.method private enforceTaskPermission(Ljava/lang/String;)V
    .locals 0
    .param p1, "func"    # Ljava/lang/String;

    .line 78
    invoke-static {p1}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 79
    return-void
.end method

.method static synthetic lambda$createTaskDisplayArea$3(ILcom/android/server/wm/DisplayArea;)Lcom/android/server/wm/RootDisplayArea;
    .locals 1
    .param p0, "parentFeatureId"    # I
    .param p1, "da"    # Lcom/android/server/wm/DisplayArea;

    .line 173
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayArea;->asRootDisplayArea()Lcom/android/server/wm/RootDisplayArea;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/android/server/wm/DisplayArea;->mFeatureId:I

    if-ne v0, p0, :cond_0

    .line 174
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayArea;->asRootDisplayArea()Lcom/android/server/wm/RootDisplayArea;

    move-result-object v0

    goto :goto_0

    .line 175
    :cond_0
    const/4 v0, 0x0

    .line 173
    :goto_0
    return-object v0
.end method

.method static synthetic lambda$createTaskDisplayArea$4(ILcom/android/server/wm/TaskDisplayArea;)Lcom/android/server/wm/TaskDisplayArea;
    .locals 1
    .param p0, "parentFeatureId"    # I
    .param p1, "taskDisplayArea"    # Lcom/android/server/wm/TaskDisplayArea;

    .line 181
    iget v0, p1, Lcom/android/server/wm/TaskDisplayArea;->mFeatureId:I

    if-ne v0, p0, :cond_0

    .line 182
    move-object v0, p1

    goto :goto_0

    .line 183
    :cond_0
    const/4 v0, 0x0

    .line 181
    :goto_0
    return-object v0
.end method

.method static synthetic lambda$createTaskDisplayArea$6(Lcom/android/server/wm/RootDisplayArea;Lcom/android/server/wm/DisplayArea;)Lcom/android/server/wm/DisplayArea;
    .locals 3
    .param p0, "root"    # Lcom/android/server/wm/RootDisplayArea;
    .param p1, "da"    # Lcom/android/server/wm/DisplayArea;

    .line 301
    iget-object v0, p1, Lcom/android/server/wm/DisplayArea;->mType:Lcom/android/server/wm/DisplayArea$Type;

    sget-object v1, Lcom/android/server/wm/DisplayArea$Type;->ANY:Lcom/android/server/wm/DisplayArea$Type;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 302
    return-object v2

    .line 305
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayArea;->getRootDisplayArea()Lcom/android/server/wm/RootDisplayArea;

    move-result-object v0

    .line 306
    .local v0, "rootDA":Lcom/android/server/wm/RootDisplayArea;
    if-eq v0, p0, :cond_2

    if-ne v0, p1, :cond_1

    goto :goto_0

    .line 310
    :cond_1
    return-object v2

    .line 308
    :cond_2
    :goto_0
    return-object p1
.end method

.method static synthetic lambda$unregisterOrganizer$2(Landroid/window/IDisplayAreaOrganizer;Ljava/util/Map$Entry;)Z
    .locals 2
    .param p0, "organizer"    # Landroid/window/IDisplayAreaOrganizer;
    .param p1, "entry"    # Ljava/util/Map$Entry;

    .line 141
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/IDisplayAreaOrganizer;

    invoke-interface {v0}, Landroid/window/IDisplayAreaOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {p0}, Landroid/window/IDisplayAreaOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private organizeDisplayArea(Landroid/window/IDisplayAreaOrganizer;Lcom/android/server/wm/DisplayArea;Ljava/lang/String;)Landroid/window/DisplayAreaAppearedInfo;
    .locals 4
    .param p1, "organizer"    # Landroid/window/IDisplayAreaOrganizer;
    .param p2, "displayArea"    # Lcom/android/server/wm/DisplayArea;
    .param p3, "callsite"    # Ljava/lang/String;

    .line 286
    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Lcom/android/server/wm/DisplayArea;->setOrganizer(Landroid/window/IDisplayAreaOrganizer;Z)V

    .line 287
    new-instance v0, Landroid/window/DisplayAreaAppearedInfo;

    invoke-virtual {p2}, Lcom/android/server/wm/DisplayArea;->getDisplayAreaInfo()Landroid/window/DisplayAreaInfo;

    move-result-object v1

    new-instance v2, Landroid/view/SurfaceControl;

    .line 288
    invoke-virtual {p2}, Lcom/android/server/wm/DisplayArea;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v3

    invoke-direct {v2, v3, p3}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceControl;Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Landroid/window/DisplayAreaAppearedInfo;-><init>(Landroid/window/DisplayAreaInfo;Landroid/view/SurfaceControl;)V

    .line 287
    return-object v0
.end method

.method private removeOrganizer(Landroid/window/IDisplayAreaOrganizer;)V
    .locals 3
    .param p1, "organizer"    # Landroid/window/IDisplayAreaOrganizer;

    .line 271
    invoke-interface {p1}, Landroid/window/IDisplayAreaOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 272
    .local v0, "organizerBinder":Landroid/os/IBinder;
    iget-object v1, p0, Lcom/android/server/wm/DisplayAreaOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    new-instance v2, Lcom/android/server/wm/DisplayAreaOrganizerController$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, v0}, Lcom/android/server/wm/DisplayAreaOrganizerController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/DisplayAreaOrganizerController;Landroid/os/IBinder;)V

    invoke-virtual {v1, v2}, Lcom/android/server/wm/RootWindowContainer;->forAllDisplayAreas(Ljava/util/function/Consumer;)V

    .line 282
    return-void
.end method


# virtual methods
.method public createTaskDisplayArea(Landroid/window/IDisplayAreaOrganizer;IILjava/lang/String;)Landroid/window/DisplayAreaAppearedInfo;
    .locals 19
    .param p1, "organizer"    # Landroid/window/IDisplayAreaOrganizer;
    .param p2, "displayId"    # I
    .param p3, "parentFeatureId"    # I
    .param p4, "name"    # Ljava/lang/String;

    .line 152
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    const-string v0, "createTaskDisplayArea()"

    invoke-direct {v1, v0}, Lcom/android/server/wm/DisplayAreaOrganizerController;->enforceTaskPermission(Ljava/lang/String;)V

    .line 153
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    int-to-long v6, v0

    .line 154
    .local v6, "uid":J
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 156
    .local v8, "origId":J
    :try_start_0
    iget-object v10, v1, Lcom/android/server/wm/DisplayAreaOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 157
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_ORGANIZER_enabled:Z

    const/4 v11, 0x0

    if-eqz v0, :cond_0

    move-wide v12, v6

    .local v12, "protoLogParam0":J
    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_ORGANIZER:Lcom/android/internal/protolog/ProtoLogGroup;

    const/4 v14, 0x1

    new-array v15, v14, [Ljava/lang/Object;

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    aput-object v18, v15, v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-wide/from16 v16, v6

    const/4 v6, 0x0

    const v11, -0x388825e0    # -63450.125f

    .end local v6    # "uid":J
    .local v16, "uid":J
    :try_start_2
    invoke-static {v0, v11, v14, v6, v15}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .end local v12    # "protoLogParam0":J
    .end local v16    # "uid":J
    .restart local v6    # "uid":J
    :cond_0
    move-wide/from16 v16, v6

    .line 159
    .end local v6    # "uid":J
    .restart local v16    # "uid":J
    :goto_0
    iget-object v0, v1, Lcom/android/server/wm/DisplayAreaOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 160
    invoke-virtual {v0, v3}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    move-object v6, v0

    .line 161
    .local v6, "display":Lcom/android/server/wm/DisplayContent;
    if-eqz v6, :cond_6

    .line 165
    invoke-virtual {v6}, Lcom/android/server/wm/DisplayContent;->isTrusted()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 172
    new-instance v0, Lcom/android/server/wm/DisplayAreaOrganizerController$$ExternalSyntheticLambda3;

    invoke-direct {v0, v4}, Lcom/android/server/wm/DisplayAreaOrganizerController$$ExternalSyntheticLambda3;-><init>(I)V

    invoke-virtual {v6, v0}, Lcom/android/server/wm/DisplayContent;->getItemFromDisplayAreas(Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/RootDisplayArea;

    move-object v7, v0

    .line 177
    .local v7, "parentRoot":Lcom/android/server/wm/RootDisplayArea;
    if-nez v7, :cond_1

    .line 180
    new-instance v0, Lcom/android/server/wm/DisplayAreaOrganizerController$$ExternalSyntheticLambda4;

    invoke-direct {v0, v4}, Lcom/android/server/wm/DisplayAreaOrganizerController$$ExternalSyntheticLambda4;-><init>(I)V

    invoke-virtual {v6, v0}, Lcom/android/server/wm/DisplayContent;->getItemFromTaskDisplayAreas(Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/TaskDisplayArea;

    move-object v11, v0

    .local v0, "parentTda":Lcom/android/server/wm/TaskDisplayArea;
    goto :goto_1

    .line 185
    .end local v0    # "parentTda":Lcom/android/server/wm/TaskDisplayArea;
    :cond_1
    const/4 v0, 0x0

    move-object v11, v0

    .line 187
    .local v11, "parentTda":Lcom/android/server/wm/TaskDisplayArea;
    :goto_1
    if-nez v7, :cond_3

    if-eqz v11, :cond_2

    goto :goto_2

    .line 188
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Can\'t find a parent DisplayArea with featureId="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v0, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v8    # "origId":J
    .end local v16    # "uid":J
    .end local p0    # "this":Lcom/android/server/wm/DisplayAreaOrganizerController;
    .end local p1    # "organizer":Landroid/window/IDisplayAreaOrganizer;
    .end local p2    # "displayId":I
    .end local p3    # "parentFeatureId":I
    .end local p4    # "name":Ljava/lang/String;
    throw v0

    .line 192
    .restart local v8    # "origId":J
    .restart local v16    # "uid":J
    .restart local p0    # "this":Lcom/android/server/wm/DisplayAreaOrganizerController;
    .restart local p1    # "organizer":Landroid/window/IDisplayAreaOrganizer;
    .restart local p2    # "displayId":I
    .restart local p3    # "parentFeatureId":I
    .restart local p4    # "name":Ljava/lang/String;
    :cond_3
    :goto_2
    iget v0, v1, Lcom/android/server/wm/DisplayAreaOrganizerController;->mNextTaskDisplayAreaFeatureId:I

    add-int/lit8 v12, v0, 0x1

    iput v12, v1, Lcom/android/server/wm/DisplayAreaOrganizerController;->mNextTaskDisplayAreaFeatureId:I

    move v12, v0

    .line 193
    .local v12, "taskDisplayAreaFeatureId":I
    new-instance v0, Lcom/android/server/wm/DisplayAreaOrganizerController$DeathRecipient;

    invoke-direct {v0, v1, v2, v12}, Lcom/android/server/wm/DisplayAreaOrganizerController$DeathRecipient;-><init>(Lcom/android/server/wm/DisplayAreaOrganizerController;Landroid/window/IDisplayAreaOrganizer;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v13, v0

    .line 195
    .local v13, "dr":Lcom/android/server/wm/DisplayAreaOrganizerController$DeathRecipient;
    :try_start_3
    invoke-interface/range {p1 .. p1}, Landroid/window/IDisplayAreaOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v14, 0x0

    invoke-interface {v0, v13, v14}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 198
    goto :goto_3

    .line 196
    :catch_0
    move-exception v0

    .line 200
    :goto_3
    if-eqz v7, :cond_4

    .line 201
    :try_start_4
    invoke-direct {v1, v7, v5, v12}, Lcom/android/server/wm/DisplayAreaOrganizerController;->createTaskDisplayArea(Lcom/android/server/wm/RootDisplayArea;Ljava/lang/String;I)Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    goto :goto_4

    .line 202
    :cond_4
    invoke-direct {v1, v11, v5, v12}, Lcom/android/server/wm/DisplayAreaOrganizerController;->createTaskDisplayArea(Lcom/android/server/wm/TaskDisplayArea;Ljava/lang/String;I)Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    :goto_4
    nop

    .line 203
    .local v0, "tda":Lcom/android/server/wm/TaskDisplayArea;
    const-string v14, "DisplayAreaOrganizerController.createTaskDisplayArea"

    invoke-direct {v1, v2, v0, v14}, Lcom/android/server/wm/DisplayAreaOrganizerController;->organizeDisplayArea(Landroid/window/IDisplayAreaOrganizer;Lcom/android/server/wm/DisplayArea;Ljava/lang/String;)Landroid/window/DisplayAreaAppearedInfo;

    move-result-object v14

    .line 205
    .local v14, "tdaInfo":Landroid/window/DisplayAreaAppearedInfo;
    iget-object v15, v1, Lcom/android/server/wm/DisplayAreaOrganizerController;->mOrganizersByFeatureIds:Ljava/util/HashMap;

    move-object/from16 v18, v0

    .end local v0    # "tda":Lcom/android/server/wm/TaskDisplayArea;
    .local v18, "tda":Lcom/android/server/wm/TaskDisplayArea;
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v15, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    monitor-exit v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 209
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 206
    return-object v14

    .line 166
    .end local v7    # "parentRoot":Lcom/android/server/wm/RootDisplayArea;
    .end local v11    # "parentTda":Lcom/android/server/wm/TaskDisplayArea;
    .end local v12    # "taskDisplayAreaFeatureId":I
    .end local v13    # "dr":Lcom/android/server/wm/DisplayAreaOrganizerController$DeathRecipient;
    .end local v14    # "tdaInfo":Landroid/window/DisplayAreaAppearedInfo;
    .end local v18    # "tda":Lcom/android/server/wm/TaskDisplayArea;
    :cond_5
    :try_start_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "createTaskDisplayArea untrusted displayId="

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v8    # "origId":J
    .end local v16    # "uid":J
    .end local p0    # "this":Lcom/android/server/wm/DisplayAreaOrganizerController;
    .end local p1    # "organizer":Landroid/window/IDisplayAreaOrganizer;
    .end local p2    # "displayId":I
    .end local p3    # "parentFeatureId":I
    .end local p4    # "name":Ljava/lang/String;
    throw v0

    .line 162
    .restart local v8    # "origId":J
    .restart local v16    # "uid":J
    .restart local p0    # "this":Lcom/android/server/wm/DisplayAreaOrganizerController;
    .restart local p1    # "organizer":Landroid/window/IDisplayAreaOrganizer;
    .restart local p2    # "displayId":I
    .restart local p3    # "parentFeatureId":I
    .restart local p4    # "name":Ljava/lang/String;
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "createTaskDisplayArea unknown displayId="

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v8    # "origId":J
    .end local v16    # "uid":J
    .end local p0    # "this":Lcom/android/server/wm/DisplayAreaOrganizerController;
    .end local p1    # "organizer":Landroid/window/IDisplayAreaOrganizer;
    .end local p2    # "displayId":I
    .end local p3    # "parentFeatureId":I
    .end local p4    # "name":Ljava/lang/String;
    throw v0

    .line 207
    .local v6, "uid":J
    .restart local v8    # "origId":J
    .restart local p0    # "this":Lcom/android/server/wm/DisplayAreaOrganizerController;
    .restart local p1    # "organizer":Landroid/window/IDisplayAreaOrganizer;
    .restart local p2    # "displayId":I
    .restart local p3    # "parentFeatureId":I
    .restart local p4    # "name":Ljava/lang/String;
    :catchall_0
    move-exception v0

    move-wide/from16 v16, v6

    .end local v6    # "uid":J
    .restart local v16    # "uid":J
    :goto_5
    monitor-exit v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v8    # "origId":J
    .end local v16    # "uid":J
    .end local p0    # "this":Lcom/android/server/wm/DisplayAreaOrganizerController;
    .end local p1    # "organizer":Landroid/window/IDisplayAreaOrganizer;
    .end local p2    # "displayId":I
    .end local p3    # "parentFeatureId":I
    .end local p4    # "name":Ljava/lang/String;
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 209
    .restart local v8    # "origId":J
    .restart local v16    # "uid":J
    .restart local p0    # "this":Lcom/android/server/wm/DisplayAreaOrganizerController;
    .restart local p1    # "organizer":Landroid/window/IDisplayAreaOrganizer;
    .restart local p2    # "displayId":I
    .restart local p3    # "parentFeatureId":I
    .restart local p4    # "name":Ljava/lang/String;
    :catchall_1
    move-exception v0

    goto :goto_6

    .line 207
    :catchall_2
    move-exception v0

    goto :goto_5

    .line 209
    .end local v16    # "uid":J
    .restart local v6    # "uid":J
    :catchall_3
    move-exception v0

    move-wide/from16 v16, v6

    .end local v6    # "uid":J
    .restart local v16    # "uid":J
    :goto_6
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 210
    throw v0
.end method

.method public deleteTaskDisplayArea(Landroid/window/WindowContainerToken;)V
    .locals 14
    .param p1, "token"    # Landroid/window/WindowContainerToken;

    .line 215
    const-string v0, "deleteTaskDisplayArea()"

    invoke-direct {p0, v0}, Lcom/android/server/wm/DisplayAreaOrganizerController;->enforceTaskPermission(Ljava/lang/String;)V

    .line 216
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    int-to-long v0, v0

    .line 217
    .local v0, "uid":J
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 219
    .local v2, "origId":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/wm/DisplayAreaOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 220
    sget-boolean v5, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_ORGANIZER_enabled:Z

    if-eqz v5, :cond_0

    move-wide v5, v0

    .local v5, "protoLogParam0":J
    sget-object v7, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_ORGANIZER:Lcom/android/internal/protolog/ProtoLogGroup;

    const v8, -0x2396e36f

    const/4 v9, 0x0

    const/4 v10, 0x1

    new-array v11, v10, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v7, v8, v10, v9, v11}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 222
    .end local v5    # "protoLogParam0":J
    :cond_0
    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v5

    .line 223
    .local v5, "wc":Lcom/android/server/wm/WindowContainer;
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->asTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 226
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->asTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v6

    .line 227
    .local v6, "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    iget-boolean v7, v6, Lcom/android/server/wm/TaskDisplayArea;->mCreatedByOrganizer:Z

    if-eqz v7, :cond_1

    .line 233
    iget-object v7, p0, Lcom/android/server/wm/DisplayAreaOrganizerController;->mOrganizersByFeatureIds:Ljava/util/HashMap;

    iget v8, v6, Lcom/android/server/wm/TaskDisplayArea;->mFeatureId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    invoke-direct {p0, v6}, Lcom/android/server/wm/DisplayAreaOrganizerController;->deleteTaskDisplayArea(Lcom/android/server/wm/TaskDisplayArea;)V

    .line 235
    .end local v5    # "wc":Lcom/android/server/wm/WindowContainer;
    .end local v6    # "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 237
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 238
    nop

    .line 239
    return-void

    .line 228
    .restart local v5    # "wc":Lcom/android/server/wm/WindowContainer;
    .restart local v6    # "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    :cond_1
    :try_start_3
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Attempt to delete TaskDisplayArea not created by organizer TaskDisplayArea="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "uid":J
    .end local v2    # "origId":J
    .end local p0    # "this":Lcom/android/server/wm/DisplayAreaOrganizerController;
    .end local p1    # "token":Landroid/window/WindowContainerToken;
    throw v7

    .line 224
    .end local v6    # "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .restart local v0    # "uid":J
    .restart local v2    # "origId":J
    .restart local p0    # "this":Lcom/android/server/wm/DisplayAreaOrganizerController;
    .restart local p1    # "token":Landroid/window/WindowContainerToken;
    :cond_2
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Can\'t resolve TaskDisplayArea from token"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "uid":J
    .end local v2    # "origId":J
    .end local p0    # "this":Lcom/android/server/wm/DisplayAreaOrganizerController;
    .end local p1    # "token":Landroid/window/WindowContainerToken;
    throw v6

    .line 235
    .end local v5    # "wc":Lcom/android/server/wm/WindowContainer;
    .restart local v0    # "uid":J
    .restart local v2    # "origId":J
    .restart local p0    # "this":Lcom/android/server/wm/DisplayAreaOrganizerController;
    .restart local p1    # "token":Landroid/window/WindowContainerToken;
    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0    # "uid":J
    .end local v2    # "origId":J
    .end local p0    # "this":Lcom/android/server/wm/DisplayAreaOrganizerController;
    .end local p1    # "token":Landroid/window/WindowContainerToken;
    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 237
    .restart local v0    # "uid":J
    .restart local v2    # "origId":J
    .restart local p0    # "this":Lcom/android/server/wm/DisplayAreaOrganizerController;
    .restart local p1    # "token":Landroid/window/WindowContainerToken;
    :catchall_1
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 238
    throw v4
.end method

.method getOrganizerByFeature(I)Landroid/window/IDisplayAreaOrganizer;
    .locals 2
    .param p1, "featureId"    # I

    .line 83
    iget-object v0, p0, Lcom/android/server/wm/DisplayAreaOrganizerController;->mOrganizersByFeatureIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/IDisplayAreaOrganizer;

    return-object v0
.end method

.method public synthetic lambda$registerOrganizer$0$DisplayAreaOrganizerController(ILjava/util/List;Landroid/window/IDisplayAreaOrganizer;Lcom/android/server/wm/DisplayArea;)V
    .locals 1
    .param p1, "feature"    # I
    .param p2, "displayAreaInfos"    # Ljava/util/List;
    .param p3, "organizer"    # Landroid/window/IDisplayAreaOrganizer;
    .param p4, "da"    # Lcom/android/server/wm/DisplayArea;

    .line 117
    iget v0, p4, Lcom/android/server/wm/DisplayArea;->mFeatureId:I

    if-eq v0, p1, :cond_0

    return-void

    .line 118
    :cond_0
    const-string v0, "DisplayAreaOrganizerController.registerOrganizer"

    invoke-direct {p0, p3, p4, v0}, Lcom/android/server/wm/DisplayAreaOrganizerController;->organizeDisplayArea(Landroid/window/IDisplayAreaOrganizer;Lcom/android/server/wm/DisplayArea;Ljava/lang/String;)Landroid/window/DisplayAreaAppearedInfo;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    return-void
.end method

.method public synthetic lambda$registerOrganizer$1$DisplayAreaOrganizerController(ILjava/util/List;Landroid/window/IDisplayAreaOrganizer;Lcom/android/server/wm/DisplayContent;)V
    .locals 9
    .param p1, "feature"    # I
    .param p2, "displayAreaInfos"    # Ljava/util/List;
    .param p3, "organizer"    # Landroid/window/IDisplayAreaOrganizer;
    .param p4, "dc"    # Lcom/android/server/wm/DisplayContent;

    .line 110
    invoke-virtual {p4}, Lcom/android/server/wm/DisplayContent;->isTrusted()Z

    move-result v0

    if-nez v0, :cond_1

    .line 111
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_ORGANIZER_enabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p4}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0

    int-to-long v0, v0

    .local v0, "protoLogParam0":J
    sget-object v2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_ORGANIZER:Lcom/android/internal/protolog/ProtoLogGroup;

    const v3, 0x6548caa1

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v2, v3, v5, v4, v6}, Lcom/android/internal/protolog/ProtoLogImpl;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 114
    .end local v0    # "protoLogParam0":J
    :cond_0
    return-void

    .line 116
    :cond_1
    new-instance v0, Lcom/android/server/wm/DisplayAreaOrganizerController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/wm/DisplayAreaOrganizerController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/DisplayAreaOrganizerController;ILjava/util/List;Landroid/window/IDisplayAreaOrganizer;)V

    invoke-virtual {p4, v0}, Lcom/android/server/wm/DisplayContent;->forAllDisplayAreas(Ljava/util/function/Consumer;)V

    .line 121
    return-void
.end method

.method public synthetic lambda$removeOrganizer$5$DisplayAreaOrganizerController(Landroid/os/IBinder;Lcom/android/server/wm/DisplayArea;)V
    .locals 1
    .param p1, "organizerBinder"    # Landroid/os/IBinder;
    .param p2, "da"    # Lcom/android/server/wm/DisplayArea;

    .line 273
    iget-object v0, p2, Lcom/android/server/wm/DisplayArea;->mOrganizer:Landroid/window/IDisplayAreaOrganizer;

    if-eqz v0, :cond_1

    iget-object v0, p2, Lcom/android/server/wm/DisplayArea;->mOrganizer:Landroid/window/IDisplayAreaOrganizer;

    invoke-interface {v0}, Landroid/window/IDisplayAreaOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 274
    invoke-virtual {p2}, Lcom/android/server/wm/DisplayArea;->isTaskDisplayArea()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/android/server/wm/DisplayArea;->asTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/server/wm/TaskDisplayArea;->mCreatedByOrganizer:Z

    if-eqz v0, :cond_0

    .line 276
    invoke-virtual {p2}, Lcom/android/server/wm/DisplayArea;->asTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wm/DisplayAreaOrganizerController;->deleteTaskDisplayArea(Lcom/android/server/wm/TaskDisplayArea;)V

    goto :goto_0

    .line 278
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/android/server/wm/DisplayArea;->setOrganizer(Landroid/window/IDisplayAreaOrganizer;)V

    .line 281
    :cond_1
    :goto_0
    return-void
.end method

.method onDisplayAreaAppeared(Landroid/window/IDisplayAreaOrganizer;Lcom/android/server/wm/DisplayArea;)V
    .locals 6
    .param p1, "organizer"    # Landroid/window/IDisplayAreaOrganizer;
    .param p2, "da"    # Lcom/android/server/wm/DisplayArea;

    .line 242
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_ORGANIZER_enabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/android/server/wm/DisplayArea;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "protoLogParam0":Ljava/lang/String;
    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_ORGANIZER:Lcom/android/internal/protolog/ProtoLogGroup;

    const v2, -0x760b8baf

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v1, v2, v5, v3, v4}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 244
    .end local v0    # "protoLogParam0":Ljava/lang/String;
    :cond_0
    :try_start_0
    new-instance v0, Landroid/view/SurfaceControl;

    invoke-virtual {p2}, Lcom/android/server/wm/DisplayArea;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v1

    const-string v2, "DisplayAreaOrganizerController.onDisplayAreaAppeared"

    invoke-direct {v0, v1, v2}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceControl;Ljava/lang/String;)V

    .line 246
    .local v0, "outSurfaceControl":Landroid/view/SurfaceControl;
    invoke-virtual {p2}, Lcom/android/server/wm/DisplayArea;->getDisplayAreaInfo()Landroid/window/DisplayAreaInfo;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Landroid/window/IDisplayAreaOrganizer;->onDisplayAreaAppeared(Landroid/window/DisplayAreaInfo;Landroid/view/SurfaceControl;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 249
    .end local v0    # "outSurfaceControl":Landroid/view/SurfaceControl;
    goto :goto_0

    .line 247
    :catch_0
    move-exception v0

    .line 250
    :goto_0
    return-void
.end method

.method onDisplayAreaInfoChanged(Landroid/window/IDisplayAreaOrganizer;Lcom/android/server/wm/DisplayArea;)V
    .locals 6
    .param p1, "organizer"    # Landroid/window/IDisplayAreaOrganizer;
    .param p2, "da"    # Lcom/android/server/wm/DisplayArea;

    .line 262
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_ORGANIZER_enabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/android/server/wm/DisplayArea;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "protoLogParam0":Ljava/lang/String;
    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_ORGANIZER:Lcom/android/internal/protolog/ProtoLogGroup;

    const v2, 0xa67c59f

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v1, v2, v5, v3, v4}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 264
    .end local v0    # "protoLogParam0":Ljava/lang/String;
    :cond_0
    :try_start_0
    invoke-virtual {p2}, Lcom/android/server/wm/DisplayArea;->getDisplayAreaInfo()Landroid/window/DisplayAreaInfo;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/window/IDisplayAreaOrganizer;->onDisplayAreaInfoChanged(Landroid/window/DisplayAreaInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 267
    goto :goto_0

    .line 265
    :catch_0
    move-exception v0

    .line 268
    :goto_0
    return-void
.end method

.method onDisplayAreaVanished(Landroid/window/IDisplayAreaOrganizer;Lcom/android/server/wm/DisplayArea;)V
    .locals 6
    .param p1, "organizer"    # Landroid/window/IDisplayAreaOrganizer;
    .param p2, "da"    # Lcom/android/server/wm/DisplayArea;

    .line 253
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_ORGANIZER_enabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/android/server/wm/DisplayArea;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "protoLogParam0":Ljava/lang/String;
    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_ORGANIZER:Lcom/android/internal/protolog/ProtoLogGroup;

    const v2, 0x1d1081b7

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v1, v2, v5, v3, v4}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 255
    .end local v0    # "protoLogParam0":Ljava/lang/String;
    :cond_0
    :try_start_0
    invoke-virtual {p2}, Lcom/android/server/wm/DisplayArea;->getDisplayAreaInfo()Landroid/window/DisplayAreaInfo;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/window/IDisplayAreaOrganizer;->onDisplayAreaVanished(Landroid/window/DisplayAreaInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 258
    goto :goto_0

    .line 256
    :catch_0
    move-exception v0

    .line 259
    :goto_0
    return-void
.end method

.method public registerOrganizer(Landroid/window/IDisplayAreaOrganizer;I)Landroid/content/pm/ParceledListSlice;
    .locals 18
    .param p1, "organizer"    # Landroid/window/IDisplayAreaOrganizer;
    .param p2, "feature"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/window/IDisplayAreaOrganizer;",
            "I)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/window/DisplayAreaAppearedInfo;",
            ">;"
        }
    .end annotation

    .line 89
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    const-string v0, "registerOrganizer()"

    invoke-direct {v1, v0}, Lcom/android/server/wm/DisplayAreaOrganizerController;->enforceTaskPermission(Ljava/lang/String;)V

    .line 90
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    int-to-long v4, v0

    .line 91
    .local v4, "uid":J
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 93
    .local v6, "origId":J
    :try_start_0
    iget-object v8, v1, Lcom/android/server/wm/DisplayAreaOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 94
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_ORGANIZER_enabled:Z

    const/4 v9, 0x0

    if-eqz v0, :cond_0

    invoke-interface/range {p1 .. p1}, Landroid/window/IDisplayAreaOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "protoLogParam0":Ljava/lang/String;
    move-wide v10, v4

    .local v10, "protoLogParam1":J
    sget-object v12, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_ORGANIZER:Lcom/android/internal/protolog/ProtoLogGroup;

    const/4 v14, 0x4

    const/4 v15, 0x0

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    aput-object v0, v13, v9

    const/16 v16, 0x1

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v13, v16

    const v9, 0xf025ae1

    invoke-static {v12, v9, v14, v15, v13}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 96
    .end local v0    # "protoLogParam0":Ljava/lang/String;
    .end local v10    # "protoLogParam1":J
    :cond_0
    iget-object v0, v1, Lcom/android/server/wm/DisplayAreaOrganizerController;->mOrganizersByFeatureIds:Ljava/util/HashMap;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 101
    new-instance v0, Lcom/android/server/wm/DisplayAreaOrganizerController$DeathRecipient;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/wm/DisplayAreaOrganizerController$DeathRecipient;-><init>(Lcom/android/server/wm/DisplayAreaOrganizerController;Landroid/window/IDisplayAreaOrganizer;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v9, v0

    .line 103
    .local v9, "dr":Lcom/android/server/wm/DisplayAreaOrganizerController$DeathRecipient;
    :try_start_2
    invoke-interface/range {p1 .. p1}, Landroid/window/IDisplayAreaOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v10, 0x0

    invoke-interface {v0, v9, v10}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 106
    goto :goto_0

    .line 104
    :catch_0
    move-exception v0

    .line 108
    :goto_0
    :try_start_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 109
    .local v0, "displayAreaInfos":Ljava/util/List;, "Ljava/util/List<Landroid/window/DisplayAreaAppearedInfo;>;"
    iget-object v10, v1, Lcom/android/server/wm/DisplayAreaOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v10, v10, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    new-instance v11, Lcom/android/server/wm/DisplayAreaOrganizerController$$ExternalSyntheticLambda1;

    invoke-direct {v11, v1, v3, v0, v2}, Lcom/android/server/wm/DisplayAreaOrganizerController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/DisplayAreaOrganizerController;ILjava/util/List;Landroid/window/IDisplayAreaOrganizer;)V

    invoke-virtual {v10, v11}, Lcom/android/server/wm/RootWindowContainer;->forAllDisplays(Ljava/util/function/Consumer;)V

    .line 123
    iget-object v10, v1, Lcom/android/server/wm/DisplayAreaOrganizerController;->mOrganizersByFeatureIds:Ljava/util/HashMap;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    new-instance v10, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v10, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 127
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 124
    return-object v10

    .line 97
    .end local v0    # "displayAreaInfos":Ljava/util/List;, "Ljava/util/List<Landroid/window/DisplayAreaAppearedInfo;>;"
    .end local v9    # "dr":Lcom/android/server/wm/DisplayAreaOrganizerController$DeathRecipient;
    :cond_1
    :try_start_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v9, "Replacing existing organizer currently unsupported"

    invoke-direct {v0, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v4    # "uid":J
    .end local v6    # "origId":J
    .end local p0    # "this":Lcom/android/server/wm/DisplayAreaOrganizerController;
    .end local p1    # "organizer":Landroid/window/IDisplayAreaOrganizer;
    .end local p2    # "feature":I
    throw v0

    .line 125
    .restart local v4    # "uid":J
    .restart local v6    # "origId":J
    .restart local p0    # "this":Lcom/android/server/wm/DisplayAreaOrganizerController;
    .restart local p1    # "organizer":Landroid/window/IDisplayAreaOrganizer;
    .restart local p2    # "feature":I
    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v4    # "uid":J
    .end local v6    # "origId":J
    .end local p0    # "this":Lcom/android/server/wm/DisplayAreaOrganizerController;
    .end local p1    # "organizer":Landroid/window/IDisplayAreaOrganizer;
    .end local p2    # "feature":I
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 127
    .restart local v4    # "uid":J
    .restart local v6    # "origId":J
    .restart local p0    # "this":Lcom/android/server/wm/DisplayAreaOrganizerController;
    .restart local p1    # "organizer":Landroid/window/IDisplayAreaOrganizer;
    .restart local p2    # "feature":I
    :catchall_1
    move-exception v0

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 128
    throw v0
.end method

.method public unregisterOrganizer(Landroid/window/IDisplayAreaOrganizer;)V
    .locals 16
    .param p1, "organizer"    # Landroid/window/IDisplayAreaOrganizer;

    .line 133
    move-object/from16 v1, p0

    const-string v0, "unregisterTaskOrganizer()"

    invoke-direct {v1, v0}, Lcom/android/server/wm/DisplayAreaOrganizerController;->enforceTaskPermission(Ljava/lang/String;)V

    .line 134
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    int-to-long v2, v0

    .line 135
    .local v2, "uid":J
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 137
    .local v4, "origId":J
    :try_start_0
    iget-object v6, v1, Lcom/android/server/wm/DisplayAreaOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 138
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_ORGANIZER_enabled:Z

    if-eqz v0, :cond_0

    invoke-interface/range {p1 .. p1}, Landroid/window/IDisplayAreaOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "protoLogParam0":Ljava/lang/String;
    move-wide v7, v2

    .local v7, "protoLogParam1":J
    sget-object v9, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_ORGANIZER:Lcom/android/internal/protolog/ProtoLogGroup;

    const v10, 0x4482d2ba

    const/4 v11, 0x4

    const/4 v12, 0x0

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v0, v13, v14

    const/4 v14, 0x1

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v9, v10, v11, v12, v13}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 140
    .end local v0    # "protoLogParam0":Ljava/lang/String;
    .end local v7    # "protoLogParam1":J
    :cond_0
    iget-object v0, v1, Lcom/android/server/wm/DisplayAreaOrganizerController;->mOrganizersByFeatureIds:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    new-instance v7, Lcom/android/server/wm/DisplayAreaOrganizerController$$ExternalSyntheticLambda6;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v8, p1

    :try_start_2
    invoke-direct {v7, v8}, Lcom/android/server/wm/DisplayAreaOrganizerController$$ExternalSyntheticLambda6;-><init>(Landroid/window/IDisplayAreaOrganizer;)V

    invoke-interface {v0, v7}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    .line 142
    invoke-direct/range {p0 .. p1}, Lcom/android/server/wm/DisplayAreaOrganizerController;->removeOrganizer(Landroid/window/IDisplayAreaOrganizer;)V

    .line 143
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 145
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 146
    nop

    .line 147
    return-void

    .line 143
    :catchall_0
    move-exception v0

    move-object/from16 v8, p1

    :goto_0
    :try_start_4
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v2    # "uid":J
    .end local v4    # "origId":J
    .end local p0    # "this":Lcom/android/server/wm/DisplayAreaOrganizerController;
    .end local p1    # "organizer":Landroid/window/IDisplayAreaOrganizer;
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 145
    .restart local v2    # "uid":J
    .restart local v4    # "origId":J
    .restart local p0    # "this":Lcom/android/server/wm/DisplayAreaOrganizerController;
    .restart local p1    # "organizer":Landroid/window/IDisplayAreaOrganizer;
    :catchall_1
    move-exception v0

    goto :goto_1

    .line 143
    :catchall_2
    move-exception v0

    goto :goto_0

    .line 145
    :catchall_3
    move-exception v0

    move-object/from16 v8, p1

    :goto_1
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 146
    throw v0
.end method
