.class final Lcom/android/server/wm/ActivityTaskManagerService$SleepTokenAcquirerImpl;
.super Ljava/lang/Object;
.source "ActivityTaskManagerService.java"

# interfaces
.implements Lcom/android/server/wm/ActivityTaskManagerInternal$SleepTokenAcquirer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/ActivityTaskManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "SleepTokenAcquirerImpl"
.end annotation


# instance fields
.field private final mSleepTokens:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/wm/RootWindowContainer$SleepToken;",
            ">;"
        }
    .end annotation
.end field

.field private final mTag:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/wm/ActivityTaskManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;Ljava/lang/String;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/wm/ActivityTaskManagerService;
    .param p2, "tag"    # Ljava/lang/String;

    .line 4458
    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService$SleepTokenAcquirerImpl;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4455
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$SleepTokenAcquirerImpl;->mSleepTokens:Landroid/util/SparseArray;

    .line 4459
    iput-object p2, p0, Lcom/android/server/wm/ActivityTaskManagerService$SleepTokenAcquirerImpl;->mTag:Ljava/lang/String;

    .line 4460
    return-void
.end method


# virtual methods
.method public acquire(I)V
    .locals 4
    .param p1, "displayId"    # I

    .line 4464
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$SleepTokenAcquirerImpl;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4465
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService$SleepTokenAcquirerImpl;->mSleepTokens:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4466
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService$SleepTokenAcquirerImpl;->mSleepTokens:Landroid/util/SparseArray;

    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService$SleepTokenAcquirerImpl;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService$SleepTokenAcquirerImpl;->mTag:Ljava/lang/String;

    .line 4467
    invoke-virtual {v2, v3, p1}, Lcom/android/server/wm/RootWindowContainer;->createSleepToken(Ljava/lang/String;I)Lcom/android/server/wm/RootWindowContainer$SleepToken;

    move-result-object v2

    .line 4466
    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 4468
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService$SleepTokenAcquirerImpl;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->updateSleepIfNeededLocked()V

    .line 4470
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4471
    return-void

    .line 4470
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public release(I)V
    .locals 3
    .param p1, "displayId"    # I

    .line 4475
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$SleepTokenAcquirerImpl;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4476
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService$SleepTokenAcquirerImpl;->mSleepTokens:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/RootWindowContainer$SleepToken;

    .line 4477
    .local v1, "token":Lcom/android/server/wm/RootWindowContainer$SleepToken;
    if-eqz v1, :cond_0

    .line 4478
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService$SleepTokenAcquirerImpl;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/RootWindowContainer;->removeSleepToken(Lcom/android/server/wm/RootWindowContainer$SleepToken;)V

    .line 4479
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService$SleepTokenAcquirerImpl;->mSleepTokens:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 4481
    .end local v1    # "token":Lcom/android/server/wm/RootWindowContainer$SleepToken;
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4482
    return-void

    .line 4481
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method
