.class Lcom/android/server/pm/PackageInstallerSession$9;
.super Landroid/content/pm/IPackageLoadingProgressCallback$Stub;
.source "PackageInstallerSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageInstallerSession;->prepareDataLoaderLocked()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageInstallerSession;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageInstallerSession;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/pm/PackageInstallerSession;

    .line 3953
    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerSession$9;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-direct {p0}, Landroid/content/pm/IPackageLoadingProgressCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onPackageLoadingProgressChanged(F)V
    .locals 3
    .param p1, "progress"    # F

    .line 3956
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession$9;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {v0}, Lcom/android/server/pm/PackageInstallerSession;->access$3800(Lcom/android/server/pm/PackageInstallerSession;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3957
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession$9;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {v1, p1}, Lcom/android/server/pm/PackageInstallerSession;->access$3902(Lcom/android/server/pm/PackageInstallerSession;F)F

    .line 3958
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession$9;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/server/pm/PackageInstallerSession;->access$4000(Lcom/android/server/pm/PackageInstallerSession;Z)V

    .line 3959
    monitor-exit v0

    .line 3960
    return-void

    .line 3959
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
