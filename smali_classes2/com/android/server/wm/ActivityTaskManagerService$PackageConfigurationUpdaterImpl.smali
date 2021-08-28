.class final Lcom/android/server/wm/ActivityTaskManagerService$PackageConfigurationUpdaterImpl;
.super Ljava/lang/Object;
.source "ActivityTaskManagerService.java"

# interfaces
.implements Lcom/android/server/wm/ActivityTaskManagerInternal$PackageConfigurationUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/ActivityTaskManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "PackageConfigurationUpdaterImpl"
.end annotation


# instance fields
.field private mNightMode:I

.field private final mPid:I

.field final synthetic this$0:Lcom/android/server/wm/ActivityTaskManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wm/ActivityTaskManagerService;
    .param p2, "pid"    # I

    .line 6454
    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService$PackageConfigurationUpdaterImpl;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6455
    iput p2, p0, Lcom/android/server/wm/ActivityTaskManagerService$PackageConfigurationUpdaterImpl;->mPid:I

    .line 6456
    return-void
.end method


# virtual methods
.method public commit()V
    .locals 7

    .line 6466
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$PackageConfigurationUpdaterImpl;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6467
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6469
    .local v1, "ident":J
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService$PackageConfigurationUpdaterImpl;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessMap:Lcom/android/server/wm/WindowProcessControllerMap;

    iget v4, p0, Lcom/android/server/wm/ActivityTaskManagerService$PackageConfigurationUpdaterImpl;->mPid:I

    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowProcessControllerMap;->getProcess(I)Lcom/android/server/wm/WindowProcessController;

    move-result-object v3

    .line 6470
    .local v3, "wpc":Lcom/android/server/wm/WindowProcessController;
    if-nez v3, :cond_0

    .line 6471
    const-string v4, "ActivityTaskManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Override application configuration: cannot find pid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/server/wm/ActivityTaskManagerService$PackageConfigurationUpdaterImpl;->mPid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6478
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 6472
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 6474
    :cond_0
    :try_start_3
    iget v4, p0, Lcom/android/server/wm/ActivityTaskManagerService$PackageConfigurationUpdaterImpl;->mNightMode:I

    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowProcessController;->setOverrideNightMode(I)Z

    .line 6475
    iget v4, p0, Lcom/android/server/wm/ActivityTaskManagerService$PackageConfigurationUpdaterImpl;->mNightMode:I

    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowProcessController;->updateNightModeForAllActivities(I)V

    .line 6476
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService$PackageConfigurationUpdaterImpl;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mPackageConfigPersister:Lcom/android/server/wm/PackageConfigPersister;

    iget-object v5, v3, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    iget v6, v3, Lcom/android/server/wm/WindowProcessController;->mUserId:I

    invoke-virtual {v4, v5, v6, p0}, Lcom/android/server/wm/PackageConfigPersister;->updateFromImpl(Ljava/lang/String;ILcom/android/server/wm/ActivityTaskManagerService$PackageConfigurationUpdaterImpl;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 6478
    .end local v3    # "wpc":Lcom/android/server/wm/WindowProcessController;
    :try_start_4
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6479
    nop

    .line 6480
    .end local v1    # "ident":J
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 6481
    return-void

    .line 6478
    .restart local v1    # "ident":J
    :catchall_0
    move-exception v3

    :try_start_5
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6479
    nop

    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService$PackageConfigurationUpdaterImpl;
    throw v3

    .line 6480
    .end local v1    # "ident":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService$PackageConfigurationUpdaterImpl;
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method getNightMode()I
    .locals 1

    .line 6484
    iget v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$PackageConfigurationUpdaterImpl;->mNightMode:I

    return v0
.end method

.method public setNightMode(I)Lcom/android/server/wm/ActivityTaskManagerInternal$PackageConfigurationUpdater;
    .locals 0
    .param p1, "nightMode"    # I

    .line 6460
    iput p1, p0, Lcom/android/server/wm/ActivityTaskManagerService$PackageConfigurationUpdaterImpl;->mNightMode:I

    .line 6461
    return-object p0
.end method
