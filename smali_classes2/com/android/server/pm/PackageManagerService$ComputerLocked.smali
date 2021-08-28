.class public Lcom/android/server/pm/PackageManagerService$ComputerLocked;
.super Lcom/android/server/pm/PackageManagerService$ComputerEngine;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ComputerLocked"
.end annotation


# instance fields
.field private final mLock:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService$Snapshot;)V
    .locals 1
    .param p1, "args"    # Lcom/android/server/pm/PackageManagerService$Snapshot;

    .line 4863
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;-><init>(Lcom/android/server/pm/PackageManagerService$Snapshot;)V

    .line 4864
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$ComputerLocked;->mService:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$ComputerLocked;->mLock:Ljava/lang/Object;

    .line 4865
    return-void
.end method


# virtual methods
.method protected final androidApplication()Landroid/content/pm/ApplicationInfo;
    .locals 1

    .line 4874
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$ComputerLocked;->mService:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->access$1600(Lcom/android/server/pm/PackageManagerService;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    return-object v0
.end method

.method public final dump(ILjava/io/FileDescriptor;Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "pw"    # Ljava/io/PrintWriter;
    .param p4, "dumpState"    # Lcom/android/server/pm/DumpState;

    .line 5004
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$ComputerLocked;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5005
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->dump(ILjava/io/FileDescriptor;Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;)V

    .line 5006
    monitor-exit v0

    .line 5007
    return-void

    .line 5006
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final filterAppAccess(Lcom/android/server/pm/parsing/pkg/AndroidPackage;II)Z
    .locals 2
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "callingUid"    # I
    .param p3, "userId"    # I

    .line 4994
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$ComputerLocked;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4995
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->filterAppAccess(Lcom/android/server/pm/parsing/pkg/AndroidPackage;II)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 4996
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final filterAppAccess(Ljava/lang/String;II)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "callingUid"    # I
    .param p3, "userId"    # I

    .line 4999
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$ComputerLocked;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5000
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->filterAppAccess(Ljava/lang/String;II)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 5001
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final filterCandidatesWithDomainPreferredActivitiesLPrBody(Landroid/content/Intent;ILjava/util/List;Lcom/android/server/pm/PackageManagerService$CrossProfileDomainInfo;IZ)Ljava/util/ArrayList;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "matchFlags"    # I
    .param p4, "xpDomainInfo"    # Lcom/android/server/pm/PackageManagerService$CrossProfileDomainInfo;
    .param p5, "userId"    # I
    .param p6, "debug"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Lcom/android/server/pm/PackageManagerService$CrossProfileDomainInfo;",
            "IZ)",
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 4922
    .local p3, "candidates":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$ComputerLocked;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4923
    :try_start_0
    invoke-super/range {p0 .. p6}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->filterCandidatesWithDomainPreferredActivitiesLPrBody(Landroid/content/Intent;ILjava/util/List;Lcom/android/server/pm/PackageManagerService$CrossProfileDomainInfo;IZ)Ljava/util/ArrayList;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 4925
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final getActivityInfoInternalBody(Landroid/content/ComponentName;III)Landroid/content/pm/ActivityInfo;
    .locals 2
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "flags"    # I
    .param p3, "filterCallingUid"    # I
    .param p4, "userId"    # I

    .line 4897
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$ComputerLocked;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4898
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->getActivityInfoInternalBody(Landroid/content/ComponentName;III)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 4900
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final getApplicationInfoInternalBody(Ljava/lang/String;III)Landroid/content/pm/ApplicationInfo;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "filterCallingUid"    # I
    .param p4, "userId"    # I

    .line 4914
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$ComputerLocked;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4915
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->getApplicationInfoInternalBody(Ljava/lang/String;III)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 4917
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final getInstalledPackagesBody(III)Landroid/content/pm/ParceledListSlice;
    .locals 2
    .param p1, "flags"    # I
    .param p2, "userId"    # I
    .param p3, "callingUid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .line 4941
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$ComputerLocked;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4942
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->getInstalledPackagesBody(III)Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 4943
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final getInstantAppPackageName(I)Ljava/lang/String;
    .locals 2
    .param p1, "callingUid"    # I

    .line 4952
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$ComputerLocked;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4953
    :try_start_0
    invoke-super {p0, p1}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 4954
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final getPackage(I)Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .locals 2
    .param p1, "uid"    # I

    .line 4908
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$ComputerLocked;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4909
    :try_start_0
    invoke-super {p0, p1}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->getPackage(I)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 4910
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 4903
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$ComputerLocked;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4904
    :try_start_0
    invoke-super {p0, p1}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 4905
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final getPackageInfoInternalBody(Ljava/lang/String;JIII)Landroid/content/pm/PackageInfo;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "versionCode"    # J
    .param p4, "flags"    # I
    .param p5, "filterCallingUid"    # I
    .param p6, "userId"    # I

    .line 4929
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$ComputerLocked;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4930
    :try_start_0
    invoke-super/range {p0 .. p6}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->getPackageInfoInternalBody(Ljava/lang/String;JIII)Landroid/content/pm/PackageInfo;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 4932
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final getPackageSettingInternal(Ljava/lang/String;I)Lcom/android/server/pm/PackageSetting;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "callingUid"    # I

    .line 4935
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$ComputerLocked;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4936
    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->getPackageSettingInternal(Ljava/lang/String;I)Lcom/android/server/pm/PackageSetting;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 4937
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final getPackageUidInternal(Ljava/lang/String;III)I
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "userId"    # I
    .param p4, "callingUid"    # I

    .line 4979
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$ComputerLocked;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4980
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->getPackageUidInternal(Ljava/lang/String;III)I

    move-result v1

    monitor-exit v0

    return v1

    .line 4981
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final getPackagesForUidInternalBody(IIIZ)[Ljava/lang/String;
    .locals 2
    .param p1, "callingUid"    # I
    .param p2, "userId"    # I
    .param p3, "appId"    # I
    .param p4, "isCallerInstantApp"    # Z

    .line 4958
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$ComputerLocked;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4959
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->getPackagesForUidInternalBody(IIIZ)[Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 4961
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final getServiceInfoBody(Landroid/content/ComponentName;III)Landroid/content/pm/ServiceInfo;
    .locals 2
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "flags"    # I
    .param p3, "userId"    # I
    .param p4, "callingUid"    # I

    .line 4947
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$ComputerLocked;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4948
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->getServiceInfoBody(Landroid/content/ComponentName;III)Landroid/content/pm/ServiceInfo;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 4949
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final getSigningDetails(I)Landroid/content/pm/PackageParser$SigningDetails;
    .locals 2
    .param p1, "uid"    # I

    .line 4989
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$ComputerLocked;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4990
    :try_start_0
    invoke-super {p0, p1}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->getSigningDetails(I)Landroid/content/pm/PackageParser$SigningDetails;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 4991
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final getSigningDetails(Ljava/lang/String;)Landroid/content/pm/PackageParser$SigningDetails;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 4984
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$ComputerLocked;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4985
    :try_start_0
    invoke-super {p0, p1}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->getSigningDetails(Ljava/lang/String;)Landroid/content/pm/PackageParser$SigningDetails;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 4986
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected final instantAppInstallerActivity()Landroid/content/pm/ActivityInfo;
    .locals 1

    .line 4871
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$ComputerLocked;->mService:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->access$1200(Lcom/android/server/pm/PackageManagerService;)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    return-object v0
.end method

.method public final isInstantAppInternalBody(Ljava/lang/String;II)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "callingUid"    # I

    .line 4965
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$ComputerLocked;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4966
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->isInstantAppInternalBody(Ljava/lang/String;II)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 4967
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final isInstantAppResolutionAllowedBody(Landroid/content/Intent;Ljava/util/List;IZI)Z
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p3, "userId"    # I
    .param p4, "skipPackageCheck"    # Z
    .param p5, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;IZI)Z"
        }
    .end annotation

    .line 4972
    .local p2, "resolvedActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$ComputerLocked;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4973
    :try_start_0
    invoke-super/range {p0 .. p5}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->isInstantAppResolutionAllowedBody(Landroid/content/Intent;Ljava/util/List;IZI)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 4975
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final queryIntentActivitiesInternalBody(Landroid/content/Intent;Ljava/lang/String;IIIZZLjava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/PackageManagerService$QueryIntentActivitiesResult;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p4, "filterCallingUid"    # I
    .param p5, "userId"    # I
    .param p6, "resolveForStart"    # Z
    .param p7, "allowDynamicSplits"    # Z
    .param p8, "pkgName"    # Ljava/lang/String;
    .param p9, "instantAppPkgName"    # Ljava/lang/String;

    .line 4889
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$ComputerLocked;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4890
    :try_start_0
    invoke-super/range {p0 .. p9}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->queryIntentActivitiesInternalBody(Landroid/content/Intent;Ljava/lang/String;IIIZZLjava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/PackageManagerService$QueryIntentActivitiesResult;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 4893
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final queryIntentServicesInternalBody(Landroid/content/Intent;Ljava/lang/String;IIILjava/lang/String;)Ljava/util/List;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p4, "userId"    # I
    .param p5, "callingUid"    # I
    .param p6, "instantAppPkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "III",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 4880
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$ComputerLocked;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4881
    :try_start_0
    invoke-super/range {p0 .. p6}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->queryIntentServicesInternalBody(Landroid/content/Intent;Ljava/lang/String;IIILjava/lang/String;)Ljava/util/List;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 4883
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected final resolveComponentName()Landroid/content/ComponentName;
    .locals 1

    .line 4868
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$ComputerLocked;->mService:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->access$1100(Lcom/android/server/pm/PackageManagerService;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method
