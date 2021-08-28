.class Lcom/android/server/wm/TaskOrganizerController;
.super Landroid/window/ITaskOrganizerController$Stub;
.source "TaskOrganizerController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;,
        Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;,
        Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;,
        Lcom/android/server/wm/TaskOrganizerController$DeathRecipient;
    }
.end annotation


# static fields
.field private static final REPORT_CONFIGS:I = 0x20000c00

.field private static final REPORT_WINDOW_CONFIGS:I = 0x3

.field private static final TAG:Ljava/lang/String; = "TaskOrganizerController"

.field static final UNSUPPORTED_WINDOWING_MODES:[I


# instance fields
.field private mDeferTaskOrgCallbacksConsumer:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

.field private final mInterceptBackPressedOnRootTasks:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mLastSentTaskInfos:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Lcom/android/server/wm/Task;",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mPendingTaskEvents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final mService:Lcom/android/server/wm/ActivityTaskManagerService;

.field private final mTaskOrganizerStates:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;",
            ">;"
        }
    .end annotation
.end field

.field private final mTaskOrganizers:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Landroid/window/ITaskOrganizer;",
            ">;"
        }
    .end annotation
.end field

.field private mTmpTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 82
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/wm/TaskOrganizerController;->UNSUPPORTED_WINDOWING_MODES:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x5
    .end array-data
.end method

.method constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .locals 1
    .param p1, "atm"    # Lcom/android/server/wm/ActivityTaskManagerService;

    .line 446
    invoke-direct {p0}, Landroid/window/ITaskOrganizerController$Stub;-><init>()V

    .line 435
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskOrganizerController;->mTaskOrganizers:Ljava/util/LinkedList;

    .line 436
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskOrganizerController;->mTaskOrganizerStates:Ljava/util/HashMap;

    .line 437
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskOrganizerController;->mLastSentTaskInfos:Ljava/util/WeakHashMap;

    .line 439
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskOrganizerController;->mPendingTaskEvents:Ljava/util/ArrayList;

    .line 441
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskOrganizerController;->mInterceptBackPressedOnRootTasks:Ljava/util/HashSet;

    .line 447
    iput-object p1, p0, Lcom/android/server/wm/TaskOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 448
    iget-object v0, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    iput-object v0, p0, Lcom/android/server/wm/TaskOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 449
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/TaskOrganizerController;)Lcom/android/server/wm/WindowManagerGlobalLock;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/TaskOrganizerController;

    .line 69
    iget-object v0, p0, Lcom/android/server/wm/TaskOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/wm/TaskOrganizerController;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/TaskOrganizerController;

    .line 69
    iget-object v0, p0, Lcom/android/server/wm/TaskOrganizerController;->mTaskOrganizerStates:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/wm/TaskOrganizerController;)Ljava/util/function/Consumer;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/TaskOrganizerController;

    .line 69
    iget-object v0, p0, Lcom/android/server/wm/TaskOrganizerController;->mDeferTaskOrgCallbacksConsumer:Ljava/util/function/Consumer;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/wm/TaskOrganizerController;)Lcom/android/server/wm/ActivityTaskManagerService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/TaskOrganizerController;

    .line 69
    iget-object v0, p0, Lcom/android/server/wm/TaskOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/wm/TaskOrganizerController;)Ljava/util/HashSet;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/TaskOrganizerController;

    .line 69
    iget-object v0, p0, Lcom/android/server/wm/TaskOrganizerController;->mInterceptBackPressedOnRootTasks:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/wm/TaskOrganizerController;)Ljava/util/LinkedList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/TaskOrganizerController;

    .line 69
    iget-object v0, p0, Lcom/android/server/wm/TaskOrganizerController;->mTaskOrganizers:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/wm/TaskOrganizerController;Landroid/window/ITaskOrganizer;Lcom/android/server/wm/Task;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/TaskOrganizerController;
    .param p1, "x1"    # Landroid/window/ITaskOrganizer;
    .param p2, "x2"    # Lcom/android/server/wm/Task;

    .line 69
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/TaskOrganizerController;->onTaskVanishedInternal(Landroid/window/ITaskOrganizer;Lcom/android/server/wm/Task;)V

    return-void
.end method

.method private dispatchTaskInfoChanged(Lcom/android/server/wm/Task;Z)V
    .locals 8
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "force"    # Z

    .line 762
    iget-object v0, p0, Lcom/android/server/wm/TaskOrganizerController;->mLastSentTaskInfos:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 763
    .local v0, "lastInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v1, p0, Lcom/android/server/wm/TaskOrganizerController;->mTmpTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-nez v1, :cond_0

    .line 764
    new-instance v1, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$RunningTaskInfo;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/TaskOrganizerController;->mTmpTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 766
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/TaskOrganizerController;->mTmpTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    invoke-virtual {v1}, Landroid/content/res/Configuration;->unset()V

    .line 767
    iget-object v1, p0, Lcom/android/server/wm/TaskOrganizerController;->mTmpTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {p1, v1}, Lcom/android/server/wm/Task;->fillTaskInfo(Landroid/app/TaskInfo;)V

    .line 769
    iget-object v1, p0, Lcom/android/server/wm/TaskOrganizerController;->mTmpTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v1, v0}, Landroid/app/ActivityManager$RunningTaskInfo;->equalsForTaskOrganizer(Landroid/app/TaskInfo;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    .line 770
    .local v1, "changed":Z
    if-nez v1, :cond_4

    .line 771
    iget-object v3, p0, Lcom/android/server/wm/TaskOrganizerController;->mTmpTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v4, v0, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    invoke-virtual {v3, v4}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v3

    .line 772
    .local v3, "cfgChanges":I
    const/high16 v4, 0x20000000

    and-int/2addr v4, v3

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    .line 773
    iget-object v4, p0, Lcom/android/server/wm/TaskOrganizerController;->mTmpTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v4, v4, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    iget-object v6, v0, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v6, v6, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v4, v6, v2}, Landroid/app/WindowConfiguration;->diff(Landroid/app/WindowConfiguration;Z)J

    move-result-wide v6

    long-to-int v4, v6

    goto :goto_0

    .line 775
    :cond_1
    move v4, v5

    :goto_0
    nop

    .line 776
    .local v4, "winCfgChanges":I
    and-int/lit8 v6, v4, 0x3

    if-nez v6, :cond_2

    .line 777
    const v6, -0x20000001

    and-int/2addr v3, v6

    .line 779
    :cond_2
    const v6, 0x20000c00

    and-int/2addr v6, v3

    if-eqz v6, :cond_3

    goto :goto_1

    :cond_3
    move v2, v5

    :goto_1
    move v1, v2

    .line 781
    .end local v3    # "cfgChanges":I
    .end local v4    # "winCfgChanges":I
    :cond_4
    if-nez v1, :cond_5

    if-nez p2, :cond_5

    .line 783
    return-void

    .line 785
    :cond_5
    iget-object v2, p0, Lcom/android/server/wm/TaskOrganizerController;->mTmpTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 786
    .local v2, "newInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v3, p0, Lcom/android/server/wm/TaskOrganizerController;->mLastSentTaskInfos:Ljava/util/WeakHashMap;

    iget-object v4, p0, Lcom/android/server/wm/TaskOrganizerController;->mTmpTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v3, p1, v4}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 790
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/wm/TaskOrganizerController;->mTmpTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 792
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isOrganized()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 797
    iget-object v3, p0, Lcom/android/server/wm/TaskOrganizerController;->mTaskOrganizerStates:Ljava/util/HashMap;

    iget-object v4, p1, Lcom/android/server/wm/Task;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    .line 798
    invoke-interface {v4}, Landroid/window/ITaskOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 797
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;

    .line 799
    .local v3, "state":Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;
    if-eqz v3, :cond_6

    .line 800
    invoke-static {v3}, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->access$1100(Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;)Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;

    move-result-object v4

    invoke-virtual {v4, p1, v2}, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;->onTaskInfoChanged(Lcom/android/server/wm/Task;Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 803
    .end local v3    # "state":Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;
    :cond_6
    return-void
.end method

.method private getPendingTaskEvent(Lcom/android/server/wm/Task;I)Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;
    .locals 4
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "type"    # I

    .line 982
    iget-object v0, p0, Lcom/android/server/wm/TaskOrganizerController;->mPendingTaskEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 983
    iget-object v1, p0, Lcom/android/server/wm/TaskOrganizerController;->mPendingTaskEvents:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;

    .line 984
    .local v1, "entry":Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;
    iget v2, p1, Lcom/android/server/wm/Task;->mTaskId:I

    iget-object v3, v1, Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;->mTask:Lcom/android/server/wm/Task;

    iget v3, v3, Lcom/android/server/wm/Task;->mTaskId:I

    if-ne v2, v3, :cond_0

    iget v2, v1, Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;->mEventType:I

    if-ne p2, v2, :cond_0

    .line 985
    return-object v1

    .line 982
    .end local v1    # "entry":Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 988
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic lambda$getRootTasks$1([ILjava/util/ArrayList;Lcom/android/server/wm/Task;)V
    .locals 1
    .param p0, "activityTypes"    # [I
    .param p1, "out"    # Ljava/util/ArrayList;
    .param p2, "task"    # Lcom/android/server/wm/Task;

    .line 883
    if-eqz p0, :cond_0

    .line 884
    invoke-virtual {p2}, Lcom/android/server/wm/Task;->getActivityType()I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 885
    return-void

    .line 887
    :cond_0
    invoke-virtual {p2}, Lcom/android/server/wm/Task;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 888
    return-void
.end method

.method static synthetic lambda$registerTaskOrganizer$0(Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;Ljava/util/ArrayList;Lcom/android/server/wm/Task;)V
    .locals 4
    .param p0, "state"    # Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;
    .param p1, "taskInfos"    # Ljava/util/ArrayList;
    .param p2, "task"    # Lcom/android/server/wm/Task;

    .line 496
    sget-object v0, Lcom/android/server/wm/TaskOrganizerController;->UNSUPPORTED_WINDOWING_MODES:[I

    invoke-virtual {p2}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 497
    return-void

    .line 500
    :cond_0
    iget-boolean v0, p2, Lcom/android/server/wm/Task;->mCreatedByOrganizer:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 501
    .local v0, "returnTask":Z
    invoke-virtual {p2, v1, v0}, Lcom/android/server/wm/Task;->updateTaskOrganizerState(ZZ)Z

    .line 503
    if-eqz v0, :cond_1

    .line 504
    const-string v1, "TaskOrganizerController.registerTaskOrganizer"

    invoke-virtual {p0, p2, v1}, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->addTaskWithoutCallback(Lcom/android/server/wm/Task;Ljava/lang/String;)Landroid/view/SurfaceControl;

    move-result-object v1

    .line 506
    .local v1, "outSurfaceControl":Landroid/view/SurfaceControl;
    new-instance v2, Landroid/window/TaskAppearedInfo;

    invoke-virtual {p2}, Lcom/android/server/wm/Task;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Landroid/window/TaskAppearedInfo;-><init>(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 508
    .end local v1    # "outSurfaceControl":Landroid/view/SurfaceControl;
    :cond_1
    return-void
.end method

.method private onTaskVanishedInternal(Landroid/window/ITaskOrganizer;Lcom/android/server/wm/Task;)V
    .locals 5
    .param p1, "organizer"    # Landroid/window/ITaskOrganizer;
    .param p2, "task"    # Lcom/android/server/wm/Task;

    .line 618
    iget-object v0, p0, Lcom/android/server/wm/TaskOrganizerController;->mPendingTaskEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 619
    iget-object v2, p0, Lcom/android/server/wm/TaskOrganizerController;->mPendingTaskEvents:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;

    .line 620
    .local v2, "entry":Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;
    iget v3, p2, Lcom/android/server/wm/Task;->mTaskId:I

    iget-object v4, v2, Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;->mTask:Lcom/android/server/wm/Task;

    iget v4, v4, Lcom/android/server/wm/Task;->mTaskId:I

    if-ne v3, v4, :cond_0

    .line 622
    iget-object v3, p0, Lcom/android/server/wm/TaskOrganizerController;->mPendingTaskEvents:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 623
    iget v3, v2, Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;->mEventType:I

    if-nez v3, :cond_0

    .line 625
    return-void

    .line 618
    .end local v2    # "entry":Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 630
    .end local v0    # "i":I
    :cond_1
    new-instance v0, Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;

    invoke-direct {v0, p2, p1, v1}, Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;-><init>(Lcom/android/server/wm/Task;Landroid/window/ITaskOrganizer;I)V

    .line 632
    .local v0, "pending":Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;
    iget-object v1, p0, Lcom/android/server/wm/TaskOrganizerController;->mPendingTaskEvents:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 633
    return-void
.end method


# virtual methods
.method addStartingWindow(Lcom/android/server/wm/Task;Landroid/os/IBinder;ILandroid/window/TaskSnapshot;)Z
    .locals 3
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "appToken"    # Landroid/os/IBinder;
    .param p3, "launchTheme"    # I
    .param p4, "taskSnapshot"    # Landroid/window/TaskSnapshot;

    .line 552
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 553
    .local v0, "rootTask":Lcom/android/server/wm/Task;
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/android/server/wm/Task;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    if-nez v1, :cond_0

    goto :goto_0

    .line 556
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/TaskOrganizerController;->mTaskOrganizerStates:Ljava/util/HashMap;

    iget-object v2, v0, Lcom/android/server/wm/Task;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    .line 557
    invoke-interface {v2}, Landroid/window/ITaskOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;

    .line 558
    .local v1, "state":Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;
    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->addStartingWindow(Lcom/android/server/wm/Task;Landroid/os/IBinder;ILandroid/window/TaskSnapshot;)V

    .line 559
    const/4 v2, 0x1

    return v2

    .line 554
    .end local v1    # "state":Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;
    :cond_1
    :goto_0
    const/4 v1, 0x0

    return v1
.end method

.method copySplashScreenView(Lcom/android/server/wm/Task;)Z
    .locals 3
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 573
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 574
    .local v0, "rootTask":Lcom/android/server/wm/Task;
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/android/server/wm/Task;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    if-nez v1, :cond_0

    goto :goto_0

    .line 577
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/TaskOrganizerController;->mTaskOrganizerStates:Ljava/util/HashMap;

    iget-object v2, v0, Lcom/android/server/wm/Task;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    .line 578
    invoke-interface {v2}, Landroid/window/ITaskOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;

    .line 579
    .local v1, "state":Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;
    invoke-virtual {v1, p1}, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->copySplashScreenView(Lcom/android/server/wm/Task;)V

    .line 580
    const/4 v2, 0x1

    return v2

    .line 575
    .end local v1    # "state":Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;
    :cond_1
    :goto_0
    const/4 v1, 0x0

    return v1
.end method

.method createRootTask(Lcom/android/server/wm/DisplayContent;ILandroid/os/IBinder;)Lcom/android/server/wm/Task;
    .locals 12
    .param p1, "display"    # Lcom/android/server/wm/DisplayContent;
    .param p2, "windowingMode"    # I
    .param p3, "launchCookie"    # Landroid/os/IBinder;

    .line 657
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_ORGANIZER_enabled:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    int-to-long v3, v0

    .local v3, "protoLogParam0":J
    int-to-long v5, p2

    .local v5, "protoLogParam1":J
    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_ORGANIZER:Lcom/android/internal/protolog/ProtoLogGroup;

    const v7, -0x739ff1cb

    const/4 v8, 0x5

    const/4 v9, 0x0

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v10, v1

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v10, v2

    invoke-static {v0, v7, v8, v9, v10}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 662
    .end local v3    # "protoLogParam0":J
    .end local v5    # "protoLogParam1":J
    :cond_0
    new-instance v0, Lcom/android/server/wm/Task$Builder;

    iget-object v3, p0, Lcom/android/server/wm/TaskOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-direct {v0, v3}, Lcom/android/server/wm/Task$Builder;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    .line 663
    invoke-virtual {v0, p2}, Lcom/android/server/wm/Task$Builder;->setWindowingMode(I)Lcom/android/server/wm/Task$Builder;

    move-result-object v0

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 664
    invoke-virtual {v0, v3}, Lcom/android/server/wm/Task$Builder;->setIntent(Landroid/content/Intent;)Lcom/android/server/wm/Task$Builder;

    move-result-object v0

    .line 665
    invoke-virtual {v0, v2}, Lcom/android/server/wm/Task$Builder;->setCreatedByOrganizer(Z)Lcom/android/server/wm/Task$Builder;

    move-result-object v0

    .line 666
    invoke-virtual {v0, v2}, Lcom/android/server/wm/Task$Builder;->setDeferTaskAppear(Z)Lcom/android/server/wm/Task$Builder;

    move-result-object v0

    .line 667
    invoke-virtual {v0, p3}, Lcom/android/server/wm/Task$Builder;->setLaunchCookie(Landroid/os/IBinder;)Lcom/android/server/wm/Task$Builder;

    move-result-object v0

    .line 668
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/wm/Task$Builder;->setParent(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/Task$Builder;

    move-result-object v0

    .line 669
    invoke-virtual {v0}, Lcom/android/server/wm/Task$Builder;->build()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 670
    .local v0, "task":Lcom/android/server/wm/Task;
    invoke-virtual {v0, v1}, Lcom/android/server/wm/Task;->setDeferTaskAppear(Z)V

    .line 671
    return-object v0
.end method

.method public createRootTask(IILandroid/os/IBinder;)V
    .locals 15
    .param p1, "displayId"    # I
    .param p2, "windowingMode"    # I
    .param p3, "launchCookie"    # Landroid/os/IBinder;

    .line 637
    move-object v1, p0

    move/from16 v2, p1

    const-string v0, "createRootTask()"

    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 638
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 640
    .local v3, "origId":J
    :try_start_0
    iget-object v5, v1, Lcom/android/server/wm/TaskOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 641
    iget-object v0, v1, Lcom/android/server/wm/TaskOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 642
    .local v0, "display":Lcom/android/server/wm/DisplayContent;
    if-nez v0, :cond_1

    .line 643
    sget-boolean v6, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_ORGANIZER_enabled:Z

    if-eqz v6, :cond_0

    int-to-long v6, v2

    .local v6, "protoLogParam0":J
    sget-object v8, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_ORGANIZER:Lcom/android/internal/protolog/ProtoLogGroup;

    const v9, 0x5342e5fa

    const/4 v10, 0x0

    const/4 v11, 0x1

    new-array v12, v11, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v8, v9, v11, v10, v12}, Lcom/android/internal/protolog/ProtoLogImpl;->e(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 645
    .end local v6    # "protoLogParam0":J
    :cond_0
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 651
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 645
    return-void

    .line 648
    :cond_1
    move/from16 v6, p2

    move-object/from16 v7, p3

    :try_start_2
    invoke-virtual {p0, v0, v6, v7}, Lcom/android/server/wm/TaskOrganizerController;->createRootTask(Lcom/android/server/wm/DisplayContent;ILandroid/os/IBinder;)Lcom/android/server/wm/Task;

    .line 649
    nop

    .end local v0    # "display":Lcom/android/server/wm/DisplayContent;
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 651
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 652
    nop

    .line 653
    return-void

    .line 649
    :catchall_0
    move-exception v0

    move/from16 v6, p2

    move-object/from16 v7, p3

    :goto_0
    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v3    # "origId":J
    .end local p0    # "this":Lcom/android/server/wm/TaskOrganizerController;
    .end local p1    # "displayId":I
    .end local p2    # "windowingMode":I
    .end local p3    # "launchCookie":Landroid/os/IBinder;
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 651
    .restart local v3    # "origId":J
    .restart local p0    # "this":Lcom/android/server/wm/TaskOrganizerController;
    .restart local p1    # "displayId":I
    .restart local p2    # "windowingMode":I
    .restart local p3    # "launchCookie":Landroid/os/IBinder;
    :catchall_1
    move-exception v0

    goto :goto_1

    .line 649
    :catchall_2
    move-exception v0

    goto :goto_0

    .line 651
    :catchall_3
    move-exception v0

    move/from16 v6, p2

    move-object/from16 v7, p3

    :goto_1
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 652
    throw v0
.end method

.method public deleteRootTask(Landroid/window/WindowContainerToken;)Z
    .locals 17
    .param p1, "token"    # Landroid/window/WindowContainerToken;

    .line 676
    const-string v0, "deleteRootTask()"

    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 677
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 679
    .local v1, "origId":J
    move-object/from16 v3, p0

    :try_start_0
    iget-object v4, v3, Lcom/android/server/wm/TaskOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 680
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    .line 681
    .local v0, "wc":Lcom/android/server/wm/WindowContainer;
    const/4 v5, 0x0

    if-nez v0, :cond_0

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 695
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 681
    return v5

    .line 682
    :cond_0
    :try_start_2
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v6

    .line 683
    .local v6, "task":Lcom/android/server/wm/Task;
    if-nez v6, :cond_1

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 695
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 683
    return v5

    .line 684
    :cond_1
    :try_start_3
    iget-boolean v7, v6, Lcom/android/server/wm/Task;->mCreatedByOrganizer:Z

    if-eqz v7, :cond_3

    .line 689
    sget-boolean v7, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_ORGANIZER_enabled:Z

    const/4 v8, 0x1

    if-eqz v7, :cond_2

    invoke-virtual {v6}, Lcom/android/server/wm/Task;->getDisplayId()I

    move-result v7

    int-to-long v9, v7

    .local v9, "protoLogParam0":J
    invoke-virtual {v6}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v7

    int-to-long v11, v7

    .local v11, "protoLogParam1":J
    sget-object v7, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_ORGANIZER:Lcom/android/internal/protolog/ProtoLogGroup;

    const/4 v14, 0x5

    const/4 v15, 0x0

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v13, v5

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v13, v8

    const v5, -0x70f88d97

    invoke-static {v7, v5, v14, v15, v13}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 691
    .end local v9    # "protoLogParam0":J
    .end local v11    # "protoLogParam1":J
    :cond_2
    const-string v5, "deleteRootTask"

    invoke-virtual {v6, v5}, Lcom/android/server/wm/Task;->removeImmediately(Ljava/lang/String;)V

    .line 692
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 695
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 692
    return v8

    .line 685
    :cond_3
    :try_start_4
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Attempt to delete task not created by organizer task="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v1    # "origId":J
    .end local p0    # "this":Lcom/android/server/wm/TaskOrganizerController;
    .end local p1    # "token":Landroid/window/WindowContainerToken;
    throw v5

    .line 693
    .end local v0    # "wc":Lcom/android/server/wm/WindowContainer;
    .end local v6    # "task":Lcom/android/server/wm/Task;
    .restart local v1    # "origId":J
    .restart local p0    # "this":Lcom/android/server/wm/TaskOrganizerController;
    .restart local p1    # "token":Landroid/window/WindowContainerToken;
    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v1    # "origId":J
    .end local p0    # "this":Lcom/android/server/wm/TaskOrganizerController;
    .end local p1    # "token":Landroid/window/WindowContainerToken;
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 695
    .restart local v1    # "origId":J
    .restart local p0    # "this":Lcom/android/server/wm/TaskOrganizerController;
    .restart local p1    # "token":Landroid/window/WindowContainerToken;
    :catchall_1
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 696
    throw v0
.end method

.method dispatchPendingEvents()V
    .locals 6

    .line 700
    iget-object v0, p0, Lcom/android/server/wm/TaskOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowSurfacePlacer;->isLayoutDeferred()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/wm/TaskOrganizerController;->mPendingTaskEvents:Ljava/util/ArrayList;

    .line 701
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 705
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Lcom/android/server/wm/TaskOrganizerController;->mPendingTaskEvents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 706
    iget-object v2, p0, Lcom/android/server/wm/TaskOrganizerController;->mPendingTaskEvents:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;

    .line 707
    .local v2, "event":Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;
    iget-object v3, v2, Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;->mTask:Lcom/android/server/wm/Task;

    .line 709
    .local v3, "task":Lcom/android/server/wm/Task;
    iget v4, v2, Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;->mEventType:I

    packed-switch v4, :pswitch_data_0

    goto :goto_1

    .line 726
    :pswitch_0
    iget-object v4, p0, Lcom/android/server/wm/TaskOrganizerController;->mTaskOrganizerStates:Ljava/util/HashMap;

    iget-object v5, v2, Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;->mTaskOrg:Landroid/window/ITaskOrganizer;

    invoke-interface {v5}, Landroid/window/ITaskOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;

    .line 727
    .local v4, "state":Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;
    if-eqz v4, :cond_1

    .line 728
    invoke-static {v4}, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->access$1100(Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;)Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;->onBackPressedOnTaskRoot(Lcom/android/server/wm/Task;)V

    goto :goto_1

    .line 723
    .end local v4    # "state":Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;
    :pswitch_1
    iget-object v4, v2, Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;->mTask:Lcom/android/server/wm/Task;

    iget-boolean v5, v2, Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;->mForce:Z

    invoke-direct {p0, v4, v5}, Lcom/android/server/wm/TaskOrganizerController;->dispatchTaskInfoChanged(Lcom/android/server/wm/Task;Z)V

    .line 724
    goto :goto_1

    .line 717
    :pswitch_2
    iget-object v4, p0, Lcom/android/server/wm/TaskOrganizerController;->mTaskOrganizerStates:Ljava/util/HashMap;

    iget-object v5, v2, Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;->mTaskOrg:Landroid/window/ITaskOrganizer;

    invoke-interface {v5}, Landroid/window/ITaskOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;

    .line 718
    .restart local v4    # "state":Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;
    if-eqz v4, :cond_1

    .line 719
    invoke-static {v4}, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->access$1100(Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;)Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;->onTaskVanished(Lcom/android/server/wm/Task;)V

    goto :goto_1

    .line 711
    .end local v4    # "state":Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;
    :pswitch_3
    iget-object v4, p0, Lcom/android/server/wm/TaskOrganizerController;->mTaskOrganizerStates:Ljava/util/HashMap;

    iget-object v5, v2, Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;->mTaskOrg:Landroid/window/ITaskOrganizer;

    invoke-interface {v5}, Landroid/window/ITaskOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;

    .line 712
    .restart local v4    # "state":Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;
    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lcom/android/server/wm/Task;->taskAppearedReady()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 713
    invoke-static {v4}, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->access$1100(Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;)Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;->onTaskAppeared(Lcom/android/server/wm/Task;)V

    .line 705
    .end local v2    # "event":Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;
    .end local v3    # "task":Lcom/android/server/wm/Task;
    .end local v4    # "state":Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 733
    .end local v0    # "i":I
    .end local v1    # "n":I
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/TaskOrganizerController;->mPendingTaskEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 734
    return-void

    .line 702
    :cond_3
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 10
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 1004
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1005
    .local v0, "innerPrefix":Ljava/lang/String;
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "TaskOrganizerController:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1006
    iget-object v2, p0, Lcom/android/server/wm/TaskOrganizerController;->mTaskOrganizerStates:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;

    .line 1007
    .local v3, "state":Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;
    invoke-static {v3}, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->access$1200(Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;)Ljava/util/ArrayList;

    move-result-object v4

    .line 1008
    .local v4, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/Task;>;"
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1009
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->access$1100(Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;)Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;

    move-result-object v6

    iget-object v6, v6, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " uid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->access$1300(Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1010
    const/4 v5, 0x0

    .local v5, "k":I
    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 1011
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/Task;

    .line 1012
    .local v6, "task":Lcom/android/server/wm/Task;
    invoke-virtual {v6}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v7

    .line 1013
    .local v7, "mode":I
    sget-object v8, Lcom/android/server/wm/TaskOrganizerController;->UNSUPPORTED_WINDOWING_MODES:[I

    invoke-static {v8, v7}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1014
    goto :goto_2

    .line 1016
    :cond_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "    ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1017
    invoke-static {v7}, Landroid/app/WindowConfiguration;->windowingModeToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ") "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1016
    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1010
    .end local v6    # "task":Lcom/android/server/wm/Task;
    .end local v7    # "mode":I
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1020
    .end local v3    # "state":Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;
    .end local v4    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/Task;>;"
    .end local v5    # "k":I
    :cond_1
    goto/16 :goto_0

    .line 1021
    :cond_2
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1022
    return-void
.end method

.method public getChildTasks(Landroid/window/WindowContainerToken;[I)Ljava/util/List;
    .locals 9
    .param p1, "parent"    # Landroid/window/WindowContainerToken;
    .param p2, "activityTypes"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/window/WindowContainerToken;",
            "[I)",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation

    .line 831
    const-string v0, "getChildTasks()"

    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 832
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 834
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/TaskOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 835
    if-eqz p1, :cond_6

    .line 838
    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    .line 839
    .local v3, "container":Lcom/android/server/wm/WindowContainer;
    const/4 v4, 0x0

    if-nez v3, :cond_0

    .line 840
    const-string v5, "TaskOrganizerController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Can\'t get children of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " because it is not valid."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 866
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 841
    return-object v4

    .line 843
    :cond_0
    :try_start_2
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v5

    .line 844
    .local v5, "task":Lcom/android/server/wm/Task;
    if-nez v5, :cond_1

    .line 845
    const-string v6, "TaskOrganizerController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " is not a task..."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 866
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 846
    return-object v4

    .line 849
    :cond_1
    :try_start_3
    iget-boolean v6, v5, Lcom/android/server/wm/Task;->mCreatedByOrganizer:Z

    if-nez v6, :cond_2

    .line 850
    const-string v6, "TaskOrganizerController"

    const-string v7, "Can only get children of root tasks created via createRootTask"

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 866
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 851
    return-object v4

    .line 853
    :cond_2
    :try_start_4
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 854
    .local v4, "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-virtual {v5}, Lcom/android/server/wm/Task;->getChildCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    .local v6, "i":I
    :goto_0
    if-ltz v6, :cond_5

    .line 855
    invoke-virtual {v5, v6}, Lcom/android/server/wm/Task;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v7

    .line 856
    .local v7, "child":Lcom/android/server/wm/Task;
    if-nez v7, :cond_3

    goto :goto_1

    .line 857
    :cond_3
    if-eqz p2, :cond_4

    .line 858
    invoke-virtual {v7}, Lcom/android/server/wm/Task;->getActivityType()I

    move-result v8

    invoke-static {p2, v8}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v8

    if-nez v8, :cond_4

    .line 859
    goto :goto_1

    .line 861
    :cond_4
    invoke-virtual {v7}, Lcom/android/server/wm/Task;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 854
    .end local v7    # "child":Lcom/android/server/wm/Task;
    :goto_1
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    .line 863
    .end local v6    # "i":I
    :cond_5
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 866
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 863
    return-object v4

    .line 836
    .end local v3    # "container":Lcom/android/server/wm/WindowContainer;
    .end local v4    # "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v5    # "task":Lcom/android/server/wm/Task;
    :cond_6
    :try_start_5
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Can\'t get children of null parent"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "ident":J
    .end local p0    # "this":Lcom/android/server/wm/TaskOrganizerController;
    .end local p1    # "parent":Landroid/window/WindowContainerToken;
    .end local p2    # "activityTypes":[I
    throw v3

    .line 864
    .restart local v0    # "ident":J
    .restart local p0    # "this":Lcom/android/server/wm/TaskOrganizerController;
    .restart local p1    # "parent":Landroid/window/WindowContainerToken;
    .restart local p2    # "activityTypes":[I
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0    # "ident":J
    .end local p0    # "this":Lcom/android/server/wm/TaskOrganizerController;
    .end local p1    # "parent":Landroid/window/WindowContainerToken;
    .end local p2    # "activityTypes":[I
    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 866
    .restart local v0    # "ident":J
    .restart local p0    # "this":Lcom/android/server/wm/TaskOrganizerController;
    .restart local p1    # "parent":Landroid/window/WindowContainerToken;
    .restart local p2    # "activityTypes":[I
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 867
    throw v2
.end method

.method public getImeTarget(I)Landroid/window/WindowContainerToken;
    .locals 7
    .param p1, "displayId"    # I

    .line 807
    const-string v0, "getImeTarget()"

    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 808
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 810
    .local v0, "origId":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/TaskOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 811
    iget-object v3, p0, Lcom/android/server/wm/TaskOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    .line 812
    invoke-virtual {v3, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    .line 813
    .local v3, "dc":Lcom/android/server/wm/DisplayContent;
    const/4 v4, 0x0

    if-eqz v3, :cond_2

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/android/server/wm/DisplayContent;->getImeTarget(I)Lcom/android/server/wm/InsetsControlTarget;

    move-result-object v6

    if-nez v6, :cond_0

    goto :goto_0

    .line 817
    :cond_0
    invoke-virtual {v3, v5}, Lcom/android/server/wm/DisplayContent;->getImeTarget(I)Lcom/android/server/wm/InsetsControlTarget;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v5

    .line 818
    .local v5, "task":Lcom/android/server/wm/Task;
    if-nez v5, :cond_1

    .line 819
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 824
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 819
    return-object v4

    .line 821
    :cond_1
    :try_start_2
    invoke-virtual {v5}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/wm/Task;->mRemoteToken:Lcom/android/server/wm/WindowContainer$RemoteToken;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer$RemoteToken;->toWindowContainerToken()Landroid/window/WindowContainerToken;

    move-result-object v4

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 824
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 821
    return-object v4

    .line 814
    .end local v5    # "task":Lcom/android/server/wm/Task;
    :cond_2
    :goto_0
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 824
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 814
    return-object v4

    .line 822
    .end local v3    # "dc":Lcom/android/server/wm/DisplayContent;
    :catchall_0
    move-exception v3

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0    # "origId":J
    .end local p0    # "this":Lcom/android/server/wm/TaskOrganizerController;
    .end local p1    # "displayId":I
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 824
    .restart local v0    # "origId":J
    .restart local p0    # "this":Lcom/android/server/wm/TaskOrganizerController;
    .restart local p1    # "displayId":I
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 825
    throw v2
.end method

.method getPendingEventList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;",
            ">;"
        }
    .end annotation

    .line 472
    iget-object v0, p0, Lcom/android/server/wm/TaskOrganizerController;->mPendingTaskEvents:Ljava/util/ArrayList;

    return-object v0
.end method

.method getPendingLifecycleTaskEvent(Lcom/android/server/wm/Task;)Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;
    .locals 4
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 994
    iget-object v0, p0, Lcom/android/server/wm/TaskOrganizerController;->mPendingTaskEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 995
    iget-object v1, p0, Lcom/android/server/wm/TaskOrganizerController;->mPendingTaskEvents:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;

    .line 996
    .local v1, "entry":Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;
    iget v2, p1, Lcom/android/server/wm/Task;->mTaskId:I

    iget-object v3, v1, Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;->mTask:Lcom/android/server/wm/Task;

    iget v3, v3, Lcom/android/server/wm/Task;->mTaskId:I

    if-ne v2, v3, :cond_0

    invoke-virtual {v1}, Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;->isLifecycleEvent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 997
    return-object v1

    .line 994
    .end local v1    # "entry":Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1000
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRootTasks(I[I)Ljava/util/List;
    .locals 7
    .param p1, "displayId"    # I
    .param p2, "activityTypes"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[I)",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation

    .line 872
    const-string v0, "getRootTasks()"

    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 873
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 875
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/TaskOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 876
    iget-object v3, p0, Lcom/android/server/wm/TaskOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 877
    invoke-virtual {v3, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    .line 878
    .local v3, "dc":Lcom/android/server/wm/DisplayContent;
    if-eqz v3, :cond_0

    .line 881
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 882
    .local v4, "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    new-instance v5, Lcom/android/server/wm/TaskOrganizerController$$ExternalSyntheticLambda1;

    invoke-direct {v5, p2, v4}, Lcom/android/server/wm/TaskOrganizerController$$ExternalSyntheticLambda1;-><init>([ILjava/util/ArrayList;)V

    invoke-virtual {v3, v5}, Lcom/android/server/wm/DisplayContent;->forAllRootTasks(Ljava/util/function/Consumer;)V

    .line 889
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 892
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 889
    return-object v4

    .line 879
    .end local v4    # "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :cond_0
    :try_start_2
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Display "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " doesn\'t exist"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "ident":J
    .end local p0    # "this":Lcom/android/server/wm/TaskOrganizerController;
    .end local p1    # "displayId":I
    .end local p2    # "activityTypes":[I
    throw v4

    .line 890
    .end local v3    # "dc":Lcom/android/server/wm/DisplayContent;
    .restart local v0    # "ident":J
    .restart local p0    # "this":Lcom/android/server/wm/TaskOrganizerController;
    .restart local p1    # "displayId":I
    .restart local p2    # "activityTypes":[I
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0    # "ident":J
    .end local p0    # "this":Lcom/android/server/wm/TaskOrganizerController;
    .end local p1    # "displayId":I
    .end local p2    # "activityTypes":[I
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 892
    .restart local v0    # "ident":J
    .restart local p0    # "this":Lcom/android/server/wm/TaskOrganizerController;
    .restart local p1    # "displayId":I
    .restart local p2    # "activityTypes":[I
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 893
    throw v2
.end method

.method getTaskOrganizer(I)Landroid/window/ITaskOrganizer;
    .locals 1
    .param p1, "windowingMode"    # I

    .line 541
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskOrganizerController;->isSupportedWindowingMode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 542
    iget-object v0, p0, Lcom/android/server/wm/TaskOrganizerController;->mTaskOrganizers:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->peekLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/ITaskOrganizer;

    goto :goto_0

    .line 543
    :cond_0
    const/4 v0, 0x0

    .line 541
    :goto_0
    return-object v0
.end method

.method public handleInterceptBackPressedOnTaskRoot(Lcom/android/server/wm/Task;)Z
    .locals 5
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 955
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isOrganized()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/wm/TaskOrganizerController;->mInterceptBackPressedOnRootTasks:Ljava/util/HashSet;

    iget v2, p1, Lcom/android/server/wm/Task;->mTaskId:I

    .line 956
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 960
    :cond_0
    nop

    .line 961
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/android/server/wm/TaskOrganizerController;->getPendingTaskEvent(Lcom/android/server/wm/Task;I)Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;

    move-result-object v2

    .line 962
    .local v2, "pendingVanished":Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;
    if-eqz v2, :cond_1

    .line 964
    return v0

    .line 967
    :cond_1
    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/TaskOrganizerController;->getPendingTaskEvent(Lcom/android/server/wm/Task;I)Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;

    move-result-object v3

    .line 969
    .local v3, "pending":Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;
    if-nez v3, :cond_2

    .line 970
    new-instance v4, Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;

    invoke-direct {v4, p1, v0}, Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;-><init>(Lcom/android/server/wm/Task;I)V

    move-object v3, v4

    goto :goto_0

    .line 973
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/TaskOrganizerController;->mPendingTaskEvents:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 975
    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/TaskOrganizerController;->mPendingTaskEvents:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 976
    iget-object v0, p0, Lcom/android/server/wm/TaskOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    .line 977
    return v1

    .line 957
    .end local v2    # "pendingVanished":Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;
    .end local v3    # "pending":Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;
    :cond_3
    :goto_1
    return v0
.end method

.method isSupportedWindowingMode(I)Z
    .locals 1
    .param p1, "winMode"    # I

    .line 547
    sget-object v0, Lcom/android/server/wm/TaskOrganizerController;->UNSUPPORTED_WINDOWING_MODES:[I

    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public onAppSplashScreenViewRemoved(Lcom/android/server/wm/Task;)V
    .locals 3
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 590
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 591
    .local v0, "rootTask":Lcom/android/server/wm/Task;
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/android/server/wm/Task;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    if-nez v1, :cond_0

    goto :goto_0

    .line 594
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/TaskOrganizerController;->mTaskOrganizerStates:Ljava/util/HashMap;

    iget-object v2, v0, Lcom/android/server/wm/Task;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    .line 595
    invoke-interface {v2}, Landroid/window/ITaskOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;

    .line 596
    .local v1, "state":Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;
    invoke-virtual {v1, p1}, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->onAppSplashScreenViewRemoved(Lcom/android/server/wm/Task;)V

    .line 597
    return-void

    .line 592
    .end local v1    # "state":Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;
    :cond_1
    :goto_0
    return-void
.end method

.method onTaskAppeared(Landroid/window/ITaskOrganizer;Lcom/android/server/wm/Task;)V
    .locals 4
    .param p1, "organizer"    # Landroid/window/ITaskOrganizer;
    .param p2, "task"    # Lcom/android/server/wm/Task;

    .line 600
    iget-object v0, p0, Lcom/android/server/wm/TaskOrganizerController;->mTaskOrganizerStates:Ljava/util/HashMap;

    invoke-interface {p1}, Landroid/window/ITaskOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;

    .line 601
    .local v0, "state":Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;
    if-eqz v0, :cond_0

    invoke-static {v0, p2}, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->access$900(Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;Lcom/android/server/wm/Task;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 602
    const/4 v1, 0x0

    invoke-direct {p0, p2, v1}, Lcom/android/server/wm/TaskOrganizerController;->getPendingTaskEvent(Lcom/android/server/wm/Task;I)Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;

    move-result-object v2

    .line 603
    .local v2, "pending":Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;
    if-nez v2, :cond_0

    .line 604
    new-instance v3, Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;

    invoke-direct {v3, p2, v1}, Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;-><init>(Lcom/android/server/wm/Task;I)V

    move-object v1, v3

    .line 605
    .end local v2    # "pending":Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;
    .local v1, "pending":Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;
    iget-object v2, p0, Lcom/android/server/wm/TaskOrganizerController;->mPendingTaskEvents:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 608
    .end local v1    # "pending":Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;
    :cond_0
    return-void
.end method

.method onTaskInfoChanged(Lcom/android/server/wm/Task;Z)V
    .locals 3
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "force"    # Z

    .line 737
    iget-boolean v0, p1, Lcom/android/server/wm/Task;->mTaskAppearedSent:Z

    if-nez v0, :cond_0

    .line 739
    return-void

    .line 744
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskOrganizerController;->getPendingLifecycleTaskEvent(Lcom/android/server/wm/Task;)Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;

    move-result-object v0

    .line 745
    .local v0, "pending":Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;
    const/4 v1, 0x2

    if-nez v0, :cond_1

    .line 746
    new-instance v2, Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;

    invoke-direct {v2, p1, v1}, Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;-><init>(Lcom/android/server/wm/Task;I)V

    move-object v0, v2

    goto :goto_0

    .line 748
    :cond_1
    iget v2, v0, Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;->mEventType:I

    if-eq v2, v1, :cond_2

    .line 752
    return-void

    .line 755
    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/TaskOrganizerController;->mPendingTaskEvents:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 757
    :goto_0
    iget-boolean v1, v0, Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;->mForce:Z

    or-int/2addr v1, p2

    iput-boolean v1, v0, Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;->mForce:Z

    .line 758
    iget-object v1, p0, Lcom/android/server/wm/TaskOrganizerController;->mPendingTaskEvents:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 759
    return-void
.end method

.method onTaskVanished(Landroid/window/ITaskOrganizer;Lcom/android/server/wm/Task;)V
    .locals 2
    .param p1, "organizer"    # Landroid/window/ITaskOrganizer;
    .param p2, "task"    # Lcom/android/server/wm/Task;

    .line 611
    iget-object v0, p0, Lcom/android/server/wm/TaskOrganizerController;->mTaskOrganizerStates:Ljava/util/HashMap;

    invoke-interface {p1}, Landroid/window/ITaskOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;

    .line 612
    .local v0, "state":Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;
    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-static {v0, p2, v1}, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->access$1000(Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;Lcom/android/server/wm/Task;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 613
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/TaskOrganizerController;->onTaskVanishedInternal(Landroid/window/ITaskOrganizer;Lcom/android/server/wm/Task;)V

    .line 615
    :cond_0
    return-void
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 2
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 455
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/window/ITaskOrganizerController$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 456
    :catch_0
    move-exception v0

    .line 457
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "TaskOrganizerController"

    invoke-static {v1, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->logAndRethrowRuntimeExceptionOnTransact(Ljava/lang/String;Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public registerTaskOrganizer(Landroid/window/ITaskOrganizer;)Landroid/content/pm/ParceledListSlice;
    .locals 14
    .param p1, "organizer"    # Landroid/window/ITaskOrganizer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/window/ITaskOrganizer;",
            ")",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/window/TaskAppearedInfo;",
            ">;"
        }
    .end annotation

    .line 480
    const-string v0, "registerTaskOrganizer()"

    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 481
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 482
    .local v0, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 484
    .local v1, "origId":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wm/TaskOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 485
    sget-boolean v4, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_ORGANIZER_enabled:Z

    if-eqz v4, :cond_0

    invoke-interface {p1}, Landroid/window/ITaskOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .local v4, "protoLogParam0":Ljava/lang/String;
    int-to-long v5, v0

    .local v5, "protoLogParam1":J
    sget-object v7, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_ORGANIZER:Lcom/android/internal/protolog/ProtoLogGroup;

    const v8, -0x6ad96a00

    const/4 v9, 0x4

    const/4 v10, 0x0

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v4, v11, v12

    const/4 v12, 0x1

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v7, v8, v9, v10, v11}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 487
    .end local v4    # "protoLogParam0":Ljava/lang/String;
    .end local v5    # "protoLogParam1":J
    :cond_0
    iget-object v4, p0, Lcom/android/server/wm/TaskOrganizerController;->mTaskOrganizerStates:Ljava/util/HashMap;

    invoke-interface {p1}, Landroid/window/ITaskOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 488
    iget-object v4, p0, Lcom/android/server/wm/TaskOrganizerController;->mTaskOrganizers:Ljava/util/LinkedList;

    invoke-virtual {v4, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 489
    iget-object v4, p0, Lcom/android/server/wm/TaskOrganizerController;->mTaskOrganizerStates:Ljava/util/HashMap;

    invoke-interface {p1}, Landroid/window/ITaskOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    new-instance v6, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;

    invoke-direct {v6, p0, p1, v0}, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;-><init>(Lcom/android/server/wm/TaskOrganizerController;Landroid/window/ITaskOrganizer;I)V

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 493
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 494
    .local v4, "taskInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/window/TaskAppearedInfo;>;"
    iget-object v5, p0, Lcom/android/server/wm/TaskOrganizerController;->mTaskOrganizerStates:Ljava/util/HashMap;

    invoke-interface {p1}, Landroid/window/ITaskOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;

    .line 495
    .local v5, "state":Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;
    iget-object v6, p0, Lcom/android/server/wm/TaskOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v6, v6, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    new-instance v7, Lcom/android/server/wm/TaskOrganizerController$$ExternalSyntheticLambda0;

    invoke-direct {v7, v5, v4}, Lcom/android/server/wm/TaskOrganizerController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;Ljava/util/ArrayList;)V

    invoke-virtual {v6, v7}, Lcom/android/server/wm/RootWindowContainer;->forAllTasks(Ljava/util/function/Consumer;)V

    .line 509
    new-instance v6, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v6, v4}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 512
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 509
    return-object v6

    .line 510
    .end local v4    # "taskInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/window/TaskAppearedInfo;>;"
    .end local v5    # "state":Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0    # "uid":I
    .end local v1    # "origId":J
    .end local p0    # "this":Lcom/android/server/wm/TaskOrganizerController;
    .end local p1    # "organizer":Landroid/window/ITaskOrganizer;
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 512
    .restart local v0    # "uid":I
    .restart local v1    # "origId":J
    .restart local p0    # "this":Lcom/android/server/wm/TaskOrganizerController;
    .restart local p1    # "organizer":Landroid/window/ITaskOrganizer;
    :catchall_1
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 513
    throw v3
.end method

.method removeStartingWindow(Lcom/android/server/wm/Task;Z)V
    .locals 3
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "prepareAnimation"    # Z

    .line 563
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 564
    .local v0, "rootTask":Lcom/android/server/wm/Task;
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/android/server/wm/Task;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    if-nez v1, :cond_0

    goto :goto_0

    .line 567
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/TaskOrganizerController;->mTaskOrganizerStates:Ljava/util/HashMap;

    iget-object v2, v0, Lcom/android/server/wm/Task;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    .line 568
    invoke-interface {v2}, Landroid/window/ITaskOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;

    .line 569
    .local v1, "state":Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;
    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->removeStartingWindow(Lcom/android/server/wm/Task;Z)V

    .line 570
    return-void

    .line 565
    .end local v1    # "state":Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;
    :cond_1
    :goto_0
    return-void
.end method

.method public restartTaskTopActivityProcessIfVisible(Landroid/window/WindowContainerToken;)V
    .locals 14
    .param p1, "token"    # Landroid/window/WindowContainerToken;

    .line 928
    const-string v0, "restartTopActivityProcessIfVisible()"

    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 929
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 931
    .local v0, "origId":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/TaskOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 932
    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    .line 933
    .local v3, "wc":Lcom/android/server/wm/WindowContainer;
    if-nez v3, :cond_0

    .line 934
    const-string v4, "TaskOrganizerController"

    const-string v5, "Could not resolve window from token"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 935
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 950
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 935
    return-void

    .line 937
    :cond_0
    :try_start_2
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v4

    .line 938
    .local v4, "task":Lcom/android/server/wm/Task;
    if-nez v4, :cond_1

    .line 939
    const-string v5, "TaskOrganizerController"

    const-string v6, "Could not resolve task from token"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 950
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 940
    return-void

    .line 942
    :cond_1
    :try_start_3
    sget-boolean v5, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_ORGANIZER_enabled:Z

    if-eqz v5, :cond_2

    iget v5, v4, Lcom/android/server/wm/Task;->mTaskId:I

    int-to-long v5, v5

    .local v5, "protoLogParam0":J
    sget-object v7, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_ORGANIZER:Lcom/android/internal/protolog/ProtoLogGroup;

    const v8, -0x75068c04

    const/4 v9, 0x0

    const/4 v10, 0x1

    new-array v11, v10, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v7, v8, v10, v9, v11}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 944
    .end local v5    # "protoLogParam0":J
    :cond_2
    invoke-virtual {v4}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v5

    .line 945
    .local v5, "activity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v5, :cond_3

    .line 946
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->restartProcessIfVisible()V

    .line 948
    .end local v3    # "wc":Lcom/android/server/wm/WindowContainer;
    .end local v4    # "task":Lcom/android/server/wm/Task;
    .end local v5    # "activity":Lcom/android/server/wm/ActivityRecord;
    :cond_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 950
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 951
    nop

    .line 952
    return-void

    .line 948
    :catchall_0
    move-exception v3

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0    # "origId":J
    .end local p0    # "this":Lcom/android/server/wm/TaskOrganizerController;
    .end local p1    # "token":Landroid/window/WindowContainerToken;
    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 950
    .restart local v0    # "origId":J
    .restart local p0    # "this":Lcom/android/server/wm/TaskOrganizerController;
    .restart local p1    # "token":Landroid/window/WindowContainerToken;
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 951
    throw v2
.end method

.method public setDeferTaskOrgCallbacksConsumer(Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Runnable;",
            ">;)V"
        }
    .end annotation

    .line 467
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Runnable;>;"
    iput-object p1, p0, Lcom/android/server/wm/TaskOrganizerController;->mDeferTaskOrgCallbacksConsumer:Ljava/util/function/Consumer;

    .line 468
    return-void
.end method

.method public setInterceptBackPressedOnTaskRoot(Landroid/window/WindowContainerToken;Z)V
    .locals 11
    .param p1, "token"    # Landroid/window/WindowContainerToken;
    .param p2, "interceptBackPressed"    # Z

    .line 899
    const-string v0, "setInterceptBackPressedOnTaskRoot()"

    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 900
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 902
    .local v0, "origId":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/TaskOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 903
    sget-boolean v3, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_ORGANIZER_enabled:Z

    if-eqz v3, :cond_0

    move v3, p2

    .local v3, "protoLogParam0":Z
    sget-object v4, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_ORGANIZER:Lcom/android/internal/protolog/ProtoLogGroup;

    const v5, 0xdd8e260

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v4, v5, v6, v7, v8}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 905
    .end local v3    # "protoLogParam0":Z
    :cond_0
    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    .line 906
    .local v3, "wc":Lcom/android/server/wm/WindowContainer;
    if-nez v3, :cond_1

    .line 907
    const-string v4, "TaskOrganizerController"

    const-string v5, "Could not resolve window from token"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 922
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 908
    return-void

    .line 910
    :cond_1
    :try_start_2
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v4

    .line 911
    .local v4, "task":Lcom/android/server/wm/Task;
    if-nez v4, :cond_2

    .line 912
    const-string v5, "TaskOrganizerController"

    const-string v6, "Could not resolve task from token"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 913
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 922
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 913
    return-void

    .line 915
    :cond_2
    if-eqz p2, :cond_3

    .line 916
    :try_start_3
    iget-object v5, p0, Lcom/android/server/wm/TaskOrganizerController;->mInterceptBackPressedOnRootTasks:Ljava/util/HashSet;

    iget v6, v4, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 918
    :cond_3
    iget-object v5, p0, Lcom/android/server/wm/TaskOrganizerController;->mInterceptBackPressedOnRootTasks:Ljava/util/HashSet;

    iget v6, v4, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 920
    .end local v3    # "wc":Lcom/android/server/wm/WindowContainer;
    .end local v4    # "task":Lcom/android/server/wm/Task;
    :goto_0
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 922
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 923
    nop

    .line 924
    return-void

    .line 920
    :catchall_0
    move-exception v3

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0    # "origId":J
    .end local p0    # "this":Lcom/android/server/wm/TaskOrganizerController;
    .end local p1    # "token":Landroid/window/WindowContainerToken;
    .end local p2    # "interceptBackPressed":Z
    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 922
    .restart local v0    # "origId":J
    .restart local p0    # "this":Lcom/android/server/wm/TaskOrganizerController;
    .restart local p1    # "token":Landroid/window/WindowContainerToken;
    .restart local p2    # "interceptBackPressed":Z
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 923
    throw v2
.end method

.method public unregisterTaskOrganizer(Landroid/window/ITaskOrganizer;)V
    .locals 16
    .param p1, "organizer"    # Landroid/window/ITaskOrganizer;

    .line 518
    move-object/from16 v1, p0

    const-string v0, "unregisterTaskOrganizer()"

    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 519
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 520
    .local v2, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 522
    .local v3, "origId":J
    :try_start_0
    iget-object v5, v1, Lcom/android/server/wm/TaskOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 523
    iget-object v0, v1, Lcom/android/server/wm/TaskOrganizerController;->mTaskOrganizerStates:Ljava/util/HashMap;

    invoke-interface/range {p1 .. p1}, Landroid/window/ITaskOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;

    .line 524
    .local v0, "state":Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;
    if-nez v0, :cond_0

    .line 525
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 533
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 525
    return-void

    .line 527
    :cond_0
    :try_start_2
    sget-boolean v6, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_ORGANIZER_enabled:Z

    if-eqz v6, :cond_1

    invoke-interface/range {p1 .. p1}, Landroid/window/ITaskOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .local v6, "protoLogParam0":Ljava/lang/String;
    int-to-long v7, v2

    .local v7, "protoLogParam1":J
    sget-object v9, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_ORGANIZER:Lcom/android/internal/protolog/ProtoLogGroup;

    const v10, -0x38bd7039

    const/4 v11, 0x4

    const/4 v12, 0x0

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v6, v13, v14

    const/4 v14, 0x1

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v9, v10, v11, v12, v13}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 529
    .end local v6    # "protoLogParam0":Ljava/lang/String;
    .end local v7    # "protoLogParam1":J
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->unlinkDeath()V

    .line 530
    invoke-virtual {v0}, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->dispose()V

    .line 531
    .end local v0    # "state":Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 533
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 534
    nop

    .line 535
    return-void

    .line 531
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v2    # "uid":I
    .end local v3    # "origId":J
    .end local p0    # "this":Lcom/android/server/wm/TaskOrganizerController;
    .end local p1    # "organizer":Landroid/window/ITaskOrganizer;
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 533
    .restart local v2    # "uid":I
    .restart local v3    # "origId":J
    .restart local p0    # "this":Lcom/android/server/wm/TaskOrganizerController;
    .restart local p1    # "organizer":Landroid/window/ITaskOrganizer;
    :catchall_1
    move-exception v0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 534
    throw v0
.end method
