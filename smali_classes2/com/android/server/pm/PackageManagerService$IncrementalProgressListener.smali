.class Lcom/android/server/pm/PackageManagerService$IncrementalProgressListener;
.super Landroid/content/pm/IPackageLoadingProgressCallback$Stub;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IncrementalProgressListener"
.end annotation


# instance fields
.field private final mPackageName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;)V
    .locals 0
    .param p2, "packageName"    # Ljava/lang/String;

    .line 20197
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$IncrementalProgressListener;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {p0}, Landroid/content/pm/IPackageLoadingProgressCallback$Stub;-><init>()V

    .line 20198
    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$IncrementalProgressListener;->mPackageName:Ljava/lang/String;

    .line 20199
    return-void
.end method


# virtual methods
.method public onPackageLoadingProgressChanged(F)V
    .locals 3
    .param p1, "progress"    # F

    .line 20204
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IncrementalProgressListener;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v0

    .line 20205
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$IncrementalProgressListener;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$IncrementalProgressListener;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v1

    .line 20206
    .local v1, "ps":Lcom/android/server/pm/PackageSetting;
    if-nez v1, :cond_0

    .line 20207
    monitor-exit v0

    return-void

    .line 20209
    :cond_0
    invoke-virtual {v1, p1}, Lcom/android/server/pm/PackageSetting;->setLoadingProgress(F)V

    .line 20210
    monitor-exit v0

    .line 20211
    return-void

    .line 20210
    .end local v1    # "ps":Lcom/android/server/pm/PackageSetting;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
