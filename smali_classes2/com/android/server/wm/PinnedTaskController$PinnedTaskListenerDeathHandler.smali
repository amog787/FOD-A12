.class Lcom/android/server/wm/PinnedTaskController$PinnedTaskListenerDeathHandler;
.super Ljava/lang/Object;
.source "PinnedTaskController.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/PinnedTaskController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PinnedTaskListenerDeathHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/PinnedTaskController;


# direct methods
.method private constructor <init>(Lcom/android/server/wm/PinnedTaskController;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/android/server/wm/PinnedTaskController$PinnedTaskListenerDeathHandler;->this$0:Lcom/android/server/wm/PinnedTaskController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wm/PinnedTaskController;Lcom/android/server/wm/PinnedTaskController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/wm/PinnedTaskController;
    .param p2, "x1"    # Lcom/android/server/wm/PinnedTaskController$1;

    .line 102
    invoke-direct {p0, p1}, Lcom/android/server/wm/PinnedTaskController$PinnedTaskListenerDeathHandler;-><init>(Lcom/android/server/wm/PinnedTaskController;)V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .line 106
    iget-object v0, p0, Lcom/android/server/wm/PinnedTaskController$PinnedTaskListenerDeathHandler;->this$0:Lcom/android/server/wm/PinnedTaskController;

    invoke-static {v0}, Lcom/android/server/wm/PinnedTaskController;->access$100(Lcom/android/server/wm/PinnedTaskController;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 107
    iget-object v1, p0, Lcom/android/server/wm/PinnedTaskController$PinnedTaskListenerDeathHandler;->this$0:Lcom/android/server/wm/PinnedTaskController;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/wm/PinnedTaskController;->access$202(Lcom/android/server/wm/PinnedTaskController;Landroid/view/IPinnedTaskListener;)Landroid/view/IPinnedTaskListener;

    .line 108
    iget-object v1, p0, Lcom/android/server/wm/PinnedTaskController$PinnedTaskListenerDeathHandler;->this$0:Lcom/android/server/wm/PinnedTaskController;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/wm/PinnedTaskController;->access$302(Lcom/android/server/wm/PinnedTaskController;Z)Z

    .line 109
    iget-object v1, p0, Lcom/android/server/wm/PinnedTaskController$PinnedTaskListenerDeathHandler;->this$0:Lcom/android/server/wm/PinnedTaskController;

    invoke-static {v1}, Lcom/android/server/wm/PinnedTaskController;->access$400(Lcom/android/server/wm/PinnedTaskController;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 110
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 111
    return-void

    .line 110
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method
