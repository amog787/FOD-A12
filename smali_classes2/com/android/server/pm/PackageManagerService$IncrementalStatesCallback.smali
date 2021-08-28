.class final Lcom/android/server/pm/PackageManagerService$IncrementalStatesCallback;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Lcom/android/server/pm/IncrementalStates$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "IncrementalStatesCallback"
.end annotation


# instance fields
.field private final mInstalledUserIds:[I

.field private final mPackageName:Ljava/lang/String;

.field private final mUid:I

.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;I[I)V
    .locals 0
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "installedUserIds"    # [I

    .line 20166
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$IncrementalStatesCallback;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20167
    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$IncrementalStatesCallback;->mPackageName:Ljava/lang/String;

    .line 20168
    iput p3, p0, Lcom/android/server/pm/PackageManagerService$IncrementalStatesCallback;->mUid:I

    .line 20169
    iput-object p4, p0, Lcom/android/server/pm/PackageManagerService$IncrementalStatesCallback;->mInstalledUserIds:[I

    .line 20170
    return-void
.end method


# virtual methods
.method public onPackageFullyLoaded()V
    .locals 5

    .line 20176
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IncrementalStatesCallback;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v0

    .line 20177
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$IncrementalStatesCallback;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$IncrementalStatesCallback;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v1

    .line 20178
    .local v1, "ps":Lcom/android/server/pm/PackageSetting;
    if-nez v1, :cond_0

    .line 20179
    monitor-exit v0

    return-void

    .line 20181
    :cond_0
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$IncrementalStatesCallback;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v2}, Lcom/android/server/pm/PackageManagerService;->access$1700(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/AppsFilter;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$IncrementalStatesCallback;->mInstalledUserIds:[I

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$IncrementalStatesCallback;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 20182
    invoke-virtual {v4}, Lcom/android/server/pm/Settings;->getPackagesLocked()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object v4

    .line 20181
    invoke-virtual {v2, v1, v3, v4}, Lcom/android/server/pm/AppsFilter;->getVisibilityAllowList(Lcom/android/server/pm/PackageSetting;[ILcom/android/server/utils/WatchedArrayMap;)Landroid/util/SparseArray;

    move-result-object v2

    .line 20183
    .local v2, "newBroadcastAllowList":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[I>;"
    invoke-virtual {v1}, Lcom/android/server/pm/PackageSetting;->getPathString()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 20184
    .local v1, "codePath":Ljava/lang/String;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20186
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IncrementalStatesCallback;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->access$6800(Lcom/android/server/pm/PackageManagerService;)Landroid/os/incremental/IncrementalManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/incremental/IncrementalManager;->unregisterLoadingProgressCallbacks(Ljava/lang/String;)V

    .line 20188
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IncrementalStatesCallback;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->scheduleWriteSettingsLocked()V

    .line 20189
    return-void

    .line 20184
    .end local v1    # "codePath":Ljava/lang/String;
    .end local v2    # "newBroadcastAllowList":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[I>;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
