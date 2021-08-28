.class Lcom/android/server/pm/PackageManagerService$InstallParams;
.super Lcom/android/server/pm/PackageManagerService$HandlerParams;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InstallParams"
.end annotation


# instance fields
.field final autoRevokePermissionsMode:I

.field final forceQueryableOverride:Z

.field final grantedRuntimePermissions:[Ljava/lang/String;

.field installFlags:I

.field final installReason:I

.field final installSource:Lcom/android/server/pm/InstallSource;

.field final mDataLoaderType:I

.field final mInstallScenario:I

.field final mPackageLite:Landroid/content/pm/parsing/PackageLite;

.field mParentInstallParams:Lcom/android/server/pm/PackageManagerService$MultiPackageInstallParams;

.field mRet:I

.field final move:Lcom/android/server/pm/PackageManagerService$MoveInfo;

.field final observer:Landroid/content/pm/IPackageInstallObserver2;

.field final origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

.field final packageAbiOverride:Ljava/lang/String;

.field final requiredInstalledVersionCode:J

.field final signingDetails:Landroid/content/pm/PackageParser$SigningDetails;

.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final volumeUuid:Ljava/lang/String;

.field final whitelistedRestrictedPermissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$OriginInfo;Lcom/android/server/pm/PackageManagerService$MoveInfo;Landroid/content/pm/IPackageInstallObserver2;ILcom/android/server/pm/InstallSource;Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/pm/parsing/PackageLite;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "origin"    # Lcom/android/server/pm/PackageManagerService$OriginInfo;
    .param p3, "move"    # Lcom/android/server/pm/PackageManagerService$MoveInfo;
    .param p4, "observer"    # Landroid/content/pm/IPackageInstallObserver2;
    .param p5, "installFlags"    # I
    .param p6, "installSource"    # Lcom/android/server/pm/InstallSource;
    .param p7, "volumeUuid"    # Ljava/lang/String;
    .param p8, "user"    # Landroid/os/UserHandle;
    .param p9, "packageAbiOverride"    # Ljava/lang/String;
    .param p10, "packageLite"    # Landroid/content/pm/parsing/PackageLite;

    .line 17784
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 17785
    invoke-direct {p0, p1, p8}, Lcom/android/server/pm/PackageManagerService$HandlerParams;-><init>(Lcom/android/server/pm/PackageManagerService;Landroid/os/UserHandle;)V

    .line 17786
    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    .line 17787
    iput-object p3, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->move:Lcom/android/server/pm/PackageManagerService$MoveInfo;

    .line 17788
    iput-object p4, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->observer:Landroid/content/pm/IPackageInstallObserver2;

    .line 17789
    iput p5, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    .line 17790
    invoke-static {p6}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/InstallSource;

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installSource:Lcom/android/server/pm/InstallSource;

    .line 17791
    iput-object p7, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->volumeUuid:Ljava/lang/String;

    .line 17792
    iput-object p9, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->packageAbiOverride:Ljava/lang/String;

    .line 17794
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->grantedRuntimePermissions:[Ljava/lang/String;

    .line 17795
    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->whitelistedRestrictedPermissions:Ljava/util/List;

    .line 17796
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->autoRevokePermissionsMode:I

    .line 17797
    sget-object v0, Landroid/content/pm/PackageParser$SigningDetails;->UNKNOWN:Landroid/content/pm/PackageParser$SigningDetails;

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->signingDetails:Landroid/content/pm/PackageParser$SigningDetails;

    .line 17798
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installReason:I

    .line 17799
    iput v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mInstallScenario:I

    .line 17800
    iput-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->forceQueryableOverride:Z

    .line 17801
    iput v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mDataLoaderType:I

    .line 17802
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->requiredInstalledVersionCode:J

    .line 17803
    iput-object p10, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mPackageLite:Landroid/content/pm/parsing/PackageLite;

    .line 17804
    return-void
.end method

.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Ljava/io/File;Landroid/content/pm/IPackageInstallObserver2;Landroid/content/pm/PackageInstaller$SessionParams;Lcom/android/server/pm/InstallSource;Landroid/os/UserHandle;Landroid/content/pm/PackageParser$SigningDetails;ILandroid/content/pm/parsing/PackageLite;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "stagedDir"    # Ljava/io/File;
    .param p3, "observer"    # Landroid/content/pm/IPackageInstallObserver2;
    .param p4, "sessionParams"    # Landroid/content/pm/PackageInstaller$SessionParams;
    .param p5, "installSource"    # Lcom/android/server/pm/InstallSource;
    .param p6, "user"    # Landroid/os/UserHandle;
    .param p7, "signingDetails"    # Landroid/content/pm/PackageParser$SigningDetails;
    .param p8, "installerUid"    # I
    .param p9, "packageLite"    # Landroid/content/pm/parsing/PackageLite;

    .line 17809
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 17810
    invoke-direct {p0, p1, p6}, Lcom/android/server/pm/PackageManagerService$HandlerParams;-><init>(Lcom/android/server/pm/PackageManagerService;Landroid/os/UserHandle;)V

    .line 17811
    invoke-static {p2}, Lcom/android/server/pm/PackageManagerService$OriginInfo;->fromStagedFile(Ljava/io/File;)Lcom/android/server/pm/PackageManagerService$OriginInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    .line 17812
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->move:Lcom/android/server/pm/PackageManagerService$MoveInfo;

    .line 17813
    iget-object v0, p5, Lcom/android/server/pm/InstallSource;->installerPackageName:Ljava/lang/String;

    iget v1, p4, Landroid/content/pm/PackageInstaller$SessionParams;->installReason:I

    invoke-static {p1, v0, p8, v1}, Lcom/android/server/pm/PackageManagerService;->access$5600(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installReason:I

    .line 17815
    iget v0, p4, Landroid/content/pm/PackageInstaller$SessionParams;->installScenario:I

    iput v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mInstallScenario:I

    .line 17816
    iput-object p3, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->observer:Landroid/content/pm/IPackageInstallObserver2;

    .line 17817
    iget v0, p4, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    iput v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    .line 17818
    iput-object p5, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installSource:Lcom/android/server/pm/InstallSource;

    .line 17819
    iget-object v0, p4, Landroid/content/pm/PackageInstaller$SessionParams;->volumeUuid:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->volumeUuid:Ljava/lang/String;

    .line 17820
    iget-object v0, p4, Landroid/content/pm/PackageInstaller$SessionParams;->abiOverride:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->packageAbiOverride:Ljava/lang/String;

    .line 17821
    iget-object v0, p4, Landroid/content/pm/PackageInstaller$SessionParams;->grantedRuntimePermissions:[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->grantedRuntimePermissions:[Ljava/lang/String;

    .line 17822
    iget-object v0, p4, Landroid/content/pm/PackageInstaller$SessionParams;->whitelistedRestrictedPermissions:Ljava/util/List;

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->whitelistedRestrictedPermissions:Ljava/util/List;

    .line 17823
    iget v0, p4, Landroid/content/pm/PackageInstaller$SessionParams;->autoRevokePermissionsMode:I

    iput v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->autoRevokePermissionsMode:I

    .line 17824
    iput-object p7, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->signingDetails:Landroid/content/pm/PackageParser$SigningDetails;

    .line 17825
    iget-boolean v0, p4, Landroid/content/pm/PackageInstaller$SessionParams;->forceQueryableOverride:Z

    iput-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->forceQueryableOverride:Z

    .line 17826
    iget-object v0, p4, Landroid/content/pm/PackageInstaller$SessionParams;->dataLoaderParams:Landroid/content/pm/DataLoaderParams;

    if-eqz v0, :cond_0

    .line 17827
    iget-object v0, p4, Landroid/content/pm/PackageInstaller$SessionParams;->dataLoaderParams:Landroid/content/pm/DataLoaderParams;

    invoke-virtual {v0}, Landroid/content/pm/DataLoaderParams;->getType()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mDataLoaderType:I

    .line 17828
    iget-wide v0, p4, Landroid/content/pm/PackageInstaller$SessionParams;->requiredInstalledVersionCode:J

    iput-wide v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->requiredInstalledVersionCode:J

    .line 17829
    iput-object p9, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mPackageLite:Landroid/content/pm/parsing/PackageLite;

    .line 17830
    return-void
.end method

.method private installLocationPolicy(Landroid/content/pm/PackageInfoLite;)I
    .locals 7
    .param p1, "pkgLite"    # Landroid/content/pm/PackageInfoLite;

    .line 17839
    iget-object v0, p1, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    .line 17840
    .local v0, "packageName":Ljava/lang/String;
    iget v1, p1, Landroid/content/pm/PackageInfoLite;->installLocation:I

    .line 17842
    .local v1, "installLocation":I
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v2

    .line 17845
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v3, v0}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 17847
    .local v3, "installedPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-eqz v3, :cond_5

    .line 17848
    iget v4, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    const/4 v5, 0x2

    and-int/2addr v4, v5

    if-eqz v4, :cond_4

    .line 17850
    invoke-interface {v3}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isSystem()Z

    move-result v4

    const/4 v6, 0x1

    if-eqz v4, :cond_0

    .line 17851
    monitor-exit v2

    return v6

    .line 17854
    :cond_0
    if-ne v1, v6, :cond_1

    .line 17856
    monitor-exit v2

    return v6

    .line 17857
    :cond_1
    if-ne v1, v5, :cond_2

    goto :goto_0

    .line 17861
    :cond_2
    invoke-interface {v3}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isExternalStorage()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 17862
    monitor-exit v2

    return v5

    .line 17864
    :cond_3
    monitor-exit v2

    return v6

    .line 17869
    :cond_4
    const/4 v4, -0x4

    monitor-exit v2

    return v4

    .line 17872
    .end local v3    # "installedPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :cond_5
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17873
    iget v2, p1, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    return v2

    .line 17872
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method private overrideInstallLocation(Landroid/content/pm/PackageInfoLite;)I
    .locals 21
    .param p1, "pkgLite"    # Landroid/content/pm/PackageInfoLite;

    .line 17885
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v5, v0

    .line 17886
    .local v5, "ephemeral":Z
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$2700()Z

    move-result v0

    const-string v6, "PackageManager"

    if-eqz v0, :cond_1

    if-eqz v5, :cond_1

    .line 17887
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "pkgLite for install: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 17890
    :cond_1
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-boolean v0, v0, Lcom/android/server/pm/PackageManagerService$OriginInfo;->staged:Z

    const/4 v7, -0x6

    const/4 v8, -0x1

    if-eqz v0, :cond_3

    .line 17892
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$OriginInfo;->file:Ljava/io/File;

    if-eqz v0, :cond_2

    .line 17893
    iget v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    goto :goto_2

    .line 17895
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v3, "Invalid stage location"

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 17897
    :cond_3
    iget v0, v2, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    if-ne v0, v8, :cond_5

    .line 17904
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/storage/StorageManager;->from(Landroid/content/Context;)Landroid/os/storage/StorageManager;

    move-result-object v9

    .line 17905
    .local v9, "storage":Landroid/os/storage/StorageManager;
    nop

    .line 17906
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 17905
    invoke-virtual {v9, v0}, Landroid/os/storage/StorageManager;->getStorageLowBytes(Ljava/io/File;)J

    move-result-wide v10

    .line 17908
    .local v10, "lowThreshold":J
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$OriginInfo;->resolvedPath:Ljava/lang/String;

    iget-object v12, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->packageAbiOverride:Ljava/lang/String;

    invoke-static {v0, v12}, Lcom/android/server/pm/PackageManagerServiceUtils;->calculateInstalledSize(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v12

    .line 17910
    .local v12, "sizeBytes":J
    const-wide/16 v14, 0x0

    cmp-long v0, v12, v14

    if-ltz v0, :cond_4

    .line 17912
    :try_start_0
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v14, v0, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    const/4 v15, 0x0

    add-long v16, v12, v10

    const-wide/16 v18, 0x0

    const/16 v20, 0x0

    invoke-virtual/range {v14 .. v20}, Lcom/android/server/pm/Installer;->freeCache(Ljava/lang/String;JJI)V

    .line 17913
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    iget-object v14, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->mPackageLite:Landroid/content/pm/parsing/PackageLite;

    iget-object v15, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v15, v15, Lcom/android/server/pm/PackageManagerService$OriginInfo;->resolvedPath:Ljava/lang/String;

    iget v3, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    iget-object v4, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->packageAbiOverride:Ljava/lang/String;

    invoke-static {v0, v14, v15, v3, v4}, Lcom/android/server/pm/PackageManagerServiceUtils;->getMinimalPackageInfo(Landroid/content/Context;Landroid/content/pm/parsing/PackageLite;Ljava/lang/String;ILjava/lang/String;)Landroid/content/pm/PackageInfoLite;

    move-result-object v0
    :try_end_0
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17918
    .end local p1    # "pkgLite":Landroid/content/pm/PackageInfoLite;
    .local v0, "pkgLite":Landroid/content/pm/PackageInfoLite;
    goto :goto_1

    .line 17916
    .end local v0    # "pkgLite":Landroid/content/pm/PackageInfoLite;
    .restart local p1    # "pkgLite":Landroid/content/pm/PackageInfoLite;
    :catch_0
    move-exception v0

    .line 17917
    .local v0, "e":Lcom/android/server/pm/Installer$InstallerException;
    const-string v3, "Failed to free cache"

    invoke-static {v6, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 17926
    .end local v0    # "e":Lcom/android/server/pm/Installer$InstallerException;
    :cond_4
    move-object v0, v2

    .end local p1    # "pkgLite":Landroid/content/pm/PackageInfoLite;
    .local v0, "pkgLite":Landroid/content/pm/PackageInfoLite;
    :goto_1
    iget v2, v0, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    if-ne v2, v7, :cond_6

    .line 17928
    iput v8, v0, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    goto :goto_3

    .line 17933
    .end local v0    # "pkgLite":Landroid/content/pm/PackageInfoLite;
    .end local v9    # "storage":Landroid/os/storage/StorageManager;
    .end local v10    # "lowThreshold":J
    .end local v12    # "sizeBytes":J
    .restart local p1    # "pkgLite":Landroid/content/pm/PackageInfoLite;
    :cond_5
    :goto_2
    move-object v0, v2

    .end local p1    # "pkgLite":Landroid/content/pm/PackageInfoLite;
    .restart local v0    # "pkgLite":Landroid/content/pm/PackageInfoLite;
    :cond_6
    :goto_3
    const/4 v2, 0x1

    .line 17934
    .local v2, "ret":I
    iget v3, v0, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    .line 17935
    .local v3, "loc":I
    const/4 v4, -0x3

    if-ne v3, v4, :cond_7

    .line 17936
    const/16 v2, -0x13

    goto :goto_5

    .line 17937
    :cond_7
    const/4 v4, -0x4

    if-ne v3, v4, :cond_8

    .line 17938
    const/4 v2, -0x1

    goto :goto_5

    .line 17939
    :cond_8
    if-ne v3, v8, :cond_9

    .line 17940
    const/4 v2, -0x4

    goto :goto_5

    .line 17941
    :cond_9
    const/4 v4, -0x2

    if-ne v3, v4, :cond_a

    .line 17942
    const/4 v2, -0x2

    goto :goto_5

    .line 17943
    :cond_a
    if-ne v3, v7, :cond_b

    .line 17944
    const/4 v2, -0x3

    goto :goto_5

    .line 17945
    :cond_b
    const/4 v4, -0x5

    if-ne v3, v4, :cond_c

    .line 17946
    const/16 v2, -0x14

    goto :goto_5

    .line 17949
    :cond_c
    invoke-direct {v1, v0}, Lcom/android/server/pm/PackageManagerService$InstallParams;->installLocationPolicy(Landroid/content/pm/PackageInfoLite;)I

    move-result v3

    .line 17951
    iget v4, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    and-int/lit8 v6, v4, 0x10

    if-eqz v6, :cond_d

    const/16 v16, 0x1

    goto :goto_4

    :cond_d
    const/16 v16, 0x0

    :goto_4
    move/from16 v6, v16

    .line 17953
    .local v6, "onInt":Z
    if-nez v6, :cond_f

    .line 17955
    const/4 v7, 0x2

    if-ne v3, v7, :cond_e

    .line 17957
    and-int/lit8 v4, v4, -0x11

    iput v4, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    goto :goto_5

    .line 17961
    :cond_e
    or-int/lit8 v4, v4, 0x10

    iput v4, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    .line 17965
    .end local v6    # "onInt":Z
    :cond_f
    :goto_5
    return v2
.end method

.method private processPendingInstall()V
    .locals 6

    .line 18002
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0, p0}, Lcom/android/server/pm/PackageManagerService;->access$5800(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$InstallParams;)Lcom/android/server/pm/PackageManagerService$InstallArgs;

    move-result-object v0

    .line 18003
    .local v0, "args":Lcom/android/server/pm/PackageManagerService$InstallArgs;
    iget v1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mRet:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 18004
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->copyApk()I

    move-result v1

    iput v1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mRet:I

    .line 18006
    :cond_0
    iget v1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mRet:I

    if-ne v1, v2, :cond_1

    .line 18007
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 18008
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v3, Ljava/io/File;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->getCodePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 18007
    invoke-static {v1, v3}, Lcom/android/internal/content/F2fsUtils;->releaseCompressedBlocks(Landroid/content/ContentResolver;Ljava/io/File;)V

    .line 18010
    :cond_1
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mParentInstallParams:Lcom/android/server/pm/PackageManagerService$MultiPackageInstallParams;

    if-eqz v1, :cond_2

    .line 18011
    iget v2, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mRet:I

    invoke-virtual {v1, v0, v2}, Lcom/android/server/pm/PackageManagerService$MultiPackageInstallParams;->tryProcessInstallRequest(Lcom/android/server/pm/PackageManagerService$InstallArgs;I)V

    goto :goto_1

    .line 18013
    :cond_2
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget v3, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mRet:I

    invoke-static {v1, v3}, Lcom/android/server/pm/PackageManagerService;->access$5300(Lcom/android/server/pm/PackageManagerService;I)Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;

    move-result-object v1

    .line 18014
    .local v1, "res":Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget v4, v1, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->returnCode:I

    if-ne v4, v2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    new-instance v4, Lcom/android/server/pm/PackageManagerService$InstallRequest;

    const/4 v5, 0x0

    invoke-direct {v4, v0, v1, v5}, Lcom/android/server/pm/PackageManagerService$InstallRequest;-><init>(Lcom/android/server/pm/PackageManagerService$InstallArgs;Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;Lcom/android/server/pm/PackageManagerService$1;)V

    .line 18016
    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 18014
    invoke-static {v3, v2, v4}, Lcom/android/server/pm/PackageManagerService;->access$5500(Lcom/android/server/pm/PackageManagerService;ZLjava/util/List;)V

    .line 18018
    .end local v1    # "res":Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;
    :goto_1
    return-void
.end method


# virtual methods
.method handleReturnCode()V
    .locals 0

    .line 17998
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$InstallParams;->processPendingInstall()V

    .line 17999
    return-void
.end method

.method public handleStartCopy()V
    .locals 7

    .line 17975
    iget v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 17976
    iput v1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mRet:I

    .line 17977
    return-void

    .line 17979
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mPackageLite:Landroid/content/pm/parsing/PackageLite;

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService$OriginInfo;->resolvedPath:Ljava/lang/String;

    iget v4, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->packageAbiOverride:Ljava/lang/String;

    invoke-static {v0, v2, v3, v4, v5}, Lcom/android/server/pm/PackageManagerServiceUtils;->getMinimalPackageInfo(Landroid/content/Context;Landroid/content/pm/parsing/PackageLite;Ljava/lang/String;ILjava/lang/String;)Landroid/content/pm/PackageInfoLite;

    move-result-object v0

    .line 17984
    .local v0, "pkgLite":Landroid/content/pm/PackageInfoLite;
    iget v2, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    const/high16 v3, 0x200000

    and-int/2addr v3, v2

    if-eqz v3, :cond_1

    move v3, v1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 17985
    .local v3, "isStaged":Z
    :goto_0
    if-eqz v3, :cond_2

    .line 17986
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-wide v5, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->requiredInstalledVersionCode:J

    invoke-static {v4, v0, v5, v6, v2}, Lcom/android/server/pm/PackageManagerService;->access$5700(Lcom/android/server/pm/PackageManagerService;Landroid/content/pm/PackageInfoLite;JI)I

    move-result v2

    iput v2, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mRet:I

    .line 17988
    if-eq v2, v1, :cond_2

    .line 17989
    return-void

    .line 17993
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageManagerService$InstallParams;->overrideInstallLocation(Landroid/content/pm/PackageInfoLite;)I

    move-result v1

    iput v1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mRet:I

    .line 17994
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 17834
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InstallParams{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " file="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService$OriginInfo;->file:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
