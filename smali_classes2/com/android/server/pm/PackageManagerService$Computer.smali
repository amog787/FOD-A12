.class public interface abstract Lcom/android/server/pm/PackageManagerService$Computer;
.super Ljava/lang/Object;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60c
    name = "Computer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/PackageManagerService$Computer$LiveImplementation;
    }
.end annotation


# virtual methods
.method public abstract applyPostResolutionFilter(Ljava/util/List;Ljava/lang/String;ZIZILandroid/content/Intent;)Ljava/util/List;
    .annotation runtime Lcom/android/server/pm/PackageManagerService$Computer$LiveImplementation;
        override = 0x2
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Ljava/lang/String;",
            "ZIZI",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract canViewInstantApps(II)Z
    .annotation runtime Lcom/android/server/pm/PackageManagerService$Computer$LiveImplementation;
        override = 0x2
    .end annotation
.end method

.method public abstract checkUidPermission(Ljava/lang/String;I)I
    .annotation runtime Lcom/android/server/pm/PackageManagerService$Computer$LiveImplementation;
        override = 0x2
    .end annotation
.end method

.method public abstract createForwardingResolveInfoUnchecked(Lcom/android/server/pm/WatchedIntentFilter;II)Landroid/content/pm/ResolveInfo;
    .annotation runtime Lcom/android/server/pm/PackageManagerService$Computer$LiveImplementation;
        override = 0x2
    .end annotation
.end method

.method public abstract dump(ILjava/io/FileDescriptor;Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;)V
    .annotation runtime Lcom/android/server/pm/PackageManagerService$Computer$LiveImplementation;
        override = 0x1
    .end annotation
.end method

.method public abstract enforceCrossUserOrProfilePermission(IIZZLjava/lang/String;)V
    .annotation runtime Lcom/android/server/pm/PackageManagerService$Computer$LiveImplementation;
        override = 0x2
    .end annotation
.end method

.method public abstract enforceCrossUserPermission(IIZZLjava/lang/String;)V
    .annotation runtime Lcom/android/server/pm/PackageManagerService$Computer$LiveImplementation;
        override = 0x2
    .end annotation
.end method

.method public abstract enforceCrossUserPermission(IIZZZLjava/lang/String;)V
    .annotation runtime Lcom/android/server/pm/PackageManagerService$Computer$LiveImplementation;
        override = 0x2
    .end annotation
.end method

.method public abstract filterAppAccess(Lcom/android/server/pm/parsing/pkg/AndroidPackage;II)Z
    .annotation runtime Lcom/android/server/pm/PackageManagerService$Computer$LiveImplementation;
        override = 0x1
    .end annotation
.end method

.method public abstract filterAppAccess(Ljava/lang/String;II)Z
    .annotation runtime Lcom/android/server/pm/PackageManagerService$Computer$LiveImplementation;
        override = 0x1
    .end annotation
.end method

.method public abstract filterSharedLibPackageLPr(Lcom/android/server/pm/PackageSetting;III)Z
    .annotation runtime Lcom/android/server/pm/PackageManagerService$Computer$LiveImplementation;
        override = 0x2
    .end annotation
.end method

.method public abstract generateApplicationInfoFromSettingsLPw(Ljava/lang/String;III)Landroid/content/pm/ApplicationInfo;
    .annotation runtime Lcom/android/server/pm/PackageManagerService$Computer$LiveImplementation;
        override = 0x2
    .end annotation
.end method

.method public abstract generatePackageInfo(Lcom/android/server/pm/PackageSetting;II)Landroid/content/pm/PackageInfo;
    .annotation runtime Lcom/android/server/pm/PackageManagerService$Computer$LiveImplementation;
        override = 0x2
    .end annotation
.end method

.method public abstract getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;
    .annotation runtime Lcom/android/server/pm/PackageManagerService$Computer$LiveImplementation;
        override = 0x2
    .end annotation
.end method

.method public abstract getActivityInfoInternal(Landroid/content/ComponentName;III)Landroid/content/pm/ActivityInfo;
    .annotation runtime Lcom/android/server/pm/PackageManagerService$Computer$LiveImplementation;
        override = 0x2
    .end annotation
.end method

.method public abstract getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    .annotation runtime Lcom/android/server/pm/PackageManagerService$Computer$LiveImplementation;
        override = 0x2
    .end annotation
.end method

.method public abstract getApplicationInfoInternal(Ljava/lang/String;III)Landroid/content/pm/ApplicationInfo;
    .annotation runtime Lcom/android/server/pm/PackageManagerService$Computer$LiveImplementation;
        override = 0x2
    .end annotation
.end method

.method public abstract getCrossProfileDomainPreferredLpr(Landroid/content/Intent;Ljava/lang/String;III)Lcom/android/server/pm/PackageManagerService$CrossProfileDomainInfo;
    .annotation runtime Lcom/android/server/pm/PackageManagerService$Computer$LiveImplementation;
        override = 0x2
    .end annotation
.end method

.method public abstract getDefaultHomeActivity(I)Landroid/content/ComponentName;
    .annotation runtime Lcom/android/server/pm/PackageManagerService$Computer$LiveImplementation;
        override = 0x2
    .end annotation
.end method

.method public abstract getHomeActivitiesAsUser(Ljava/util/List;I)Landroid/content/ComponentName;
    .annotation runtime Lcom/android/server/pm/PackageManagerService$Computer$LiveImplementation;
        override = 0x2
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;I)",
            "Landroid/content/ComponentName;"
        }
    .end annotation
.end method

.method public abstract getHomeIntent()Landroid/content/Intent;
    .annotation runtime Lcom/android/server/pm/PackageManagerService$Computer$LiveImplementation;
        override = 0x2
    .end annotation
.end method

.method public abstract getInstalledPackages(II)Landroid/content/pm/ParceledListSlice;
    .annotation runtime Lcom/android/server/pm/PackageManagerService$Computer$LiveImplementation;
        override = 0x2
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getInstantAppPackageName(I)Ljava/lang/String;
    .annotation runtime Lcom/android/server/pm/PackageManagerService$Computer$LiveImplementation;
        override = 0x1
    .end annotation
.end method

.method public abstract getMatchingCrossProfileIntentFilters(Landroid/content/Intent;Ljava/lang/String;I)Ljava/util/List;
    .annotation runtime Lcom/android/server/pm/PackageManagerService$Computer$LiveImplementation;
        override = 0x2
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Lcom/android/server/pm/CrossProfileIntentFilter;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPackage(I)Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .annotation runtime Lcom/android/server/pm/PackageManagerService$Computer$LiveImplementation;
        override = 0x1
    .end annotation
.end method

.method public abstract getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .annotation runtime Lcom/android/server/pm/PackageManagerService$Computer$LiveImplementation;
        override = 0x1
    .end annotation
.end method

.method public abstract getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    .annotation runtime Lcom/android/server/pm/PackageManagerService$Computer$LiveImplementation;
        override = 0x2
    .end annotation
.end method

.method public abstract getPackageInfoInternal(Ljava/lang/String;JIII)Landroid/content/pm/PackageInfo;
    .annotation runtime Lcom/android/server/pm/PackageManagerService$Computer$LiveImplementation;
        override = 0x2
    .end annotation
.end method

.method public abstract getPackageSetting(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;
    .annotation runtime Lcom/android/server/pm/PackageManagerService$Computer$LiveImplementation;
        override = 0x2
    .end annotation
.end method

.method public abstract getPackageSettingInternal(Ljava/lang/String;I)Lcom/android/server/pm/PackageSetting;
    .annotation runtime Lcom/android/server/pm/PackageManagerService$Computer$LiveImplementation;
        override = 0x1
    .end annotation
.end method

.method public abstract getPackageUidInternal(Ljava/lang/String;III)I
    .annotation runtime Lcom/android/server/pm/PackageManagerService$Computer$LiveImplementation;
        override = 0x1
    .end annotation
.end method

.method public abstract getPackagesForUid(I)[Ljava/lang/String;
    .annotation runtime Lcom/android/server/pm/PackageManagerService$Computer$LiveImplementation;
        override = 0x2
    .end annotation
.end method

.method public abstract getProfileParent(I)Landroid/content/pm/UserInfo;
    .annotation runtime Lcom/android/server/pm/PackageManagerService$Computer$LiveImplementation;
        override = 0x2
    .end annotation
.end method

.method public abstract getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;
    .annotation runtime Lcom/android/server/pm/PackageManagerService$Computer$LiveImplementation;
        override = 0x2
    .end annotation
.end method

.method public abstract getSharedLibraryInfoLPr(Ljava/lang/String;J)Landroid/content/pm/SharedLibraryInfo;
    .annotation runtime Lcom/android/server/pm/PackageManagerService$Computer$LiveImplementation;
        override = 0x2
    .end annotation
.end method

.method public abstract getSigningDetails(I)Landroid/content/pm/PackageParser$SigningDetails;
    .annotation runtime Lcom/android/server/pm/PackageManagerService$Computer$LiveImplementation;
        override = 0x1
    .end annotation
.end method

.method public abstract getSigningDetails(Ljava/lang/String;)Landroid/content/pm/PackageParser$SigningDetails;
    .annotation runtime Lcom/android/server/pm/PackageManagerService$Computer$LiveImplementation;
        override = 0x1
    .end annotation
.end method

.method public getUsed()I
    .locals 1
    .annotation runtime Lcom/android/server/pm/PackageManagerService$Computer$LiveImplementation;
        override = 0x2
    .end annotation

    .line 1988
    const/4 v0, 0x0

    return v0
.end method

.method public abstract isCallerSameApp(Ljava/lang/String;I)Z
    .annotation runtime Lcom/android/server/pm/PackageManagerService$Computer$LiveImplementation;
        override = 0x2
    .end annotation
.end method

.method public abstract isComponentVisibleToInstantApp(Landroid/content/ComponentName;)Z
    .annotation runtime Lcom/android/server/pm/PackageManagerService$Computer$LiveImplementation;
        override = 0x2
    .end annotation
.end method

.method public abstract isComponentVisibleToInstantApp(Landroid/content/ComponentName;I)Z
    .annotation runtime Lcom/android/server/pm/PackageManagerService$Computer$LiveImplementation;
        override = 0x2
    .end annotation
.end method

.method public abstract isImplicitImageCaptureIntentAndNotSetByDpcLocked(Landroid/content/Intent;ILjava/lang/String;I)Z
    .annotation runtime Lcom/android/server/pm/PackageManagerService$Computer$LiveImplementation;
        override = 0x2
    .end annotation
.end method

.method public abstract isInstantApp(Ljava/lang/String;I)Z
    .annotation runtime Lcom/android/server/pm/PackageManagerService$Computer$LiveImplementation;
        override = 0x2
    .end annotation
.end method

.method public abstract isInstantAppInternal(Ljava/lang/String;II)Z
    .annotation runtime Lcom/android/server/pm/PackageManagerService$Computer$LiveImplementation;
        override = 0x2
    .end annotation
.end method

.method public abstract isSameProfileGroup(II)Z
    .annotation runtime Lcom/android/server/pm/PackageManagerService$Computer$LiveImplementation;
        override = 0x2
    .end annotation
.end method

.method public abstract queryIntentActivitiesInternal(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;
    .annotation runtime Lcom/android/server/pm/PackageManagerService$Computer$LiveImplementation;
        override = 0x2
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryIntentActivitiesInternal(Landroid/content/Intent;Ljava/lang/String;IIIIZZ)Ljava/util/List;
    .annotation runtime Lcom/android/server/pm/PackageManagerService$Computer$LiveImplementation;
        override = 0x2
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "IIIIZZ)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryIntentActivitiesInternalBody(Landroid/content/Intent;Ljava/lang/String;IIIZZLjava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/PackageManagerService$QueryIntentActivitiesResult;
    .annotation runtime Lcom/android/server/pm/PackageManagerService$Computer$LiveImplementation;
        override = 0x1
    .end annotation
.end method

.method public abstract queryIntentServicesInternal(Landroid/content/Intent;Ljava/lang/String;IIIZ)Ljava/util/List;
    .annotation runtime Lcom/android/server/pm/PackageManagerService$Computer$LiveImplementation;
        override = 0x2
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "IIIZ)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract resolveExternalPackageNameLPr(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Ljava/lang/String;
    .annotation runtime Lcom/android/server/pm/PackageManagerService$Computer$LiveImplementation;
        override = 0x2
    .end annotation
.end method

.method public abstract resolveInternalPackageNameLPr(Ljava/lang/String;J)Ljava/lang/String;
    .annotation runtime Lcom/android/server/pm/PackageManagerService$Computer$LiveImplementation;
        override = 0x2
    .end annotation
.end method

.method public abstract shouldFilterApplicationLocked(Lcom/android/server/pm/PackageSetting;II)Z
    .annotation runtime Lcom/android/server/pm/PackageManagerService$Computer$LiveImplementation;
        override = 0x2
    .end annotation
.end method

.method public abstract shouldFilterApplicationLocked(Lcom/android/server/pm/PackageSetting;ILandroid/content/ComponentName;II)Z
    .annotation runtime Lcom/android/server/pm/PackageManagerService$Computer$LiveImplementation;
        override = 0x2
    .end annotation
.end method

.method public abstract shouldFilterApplicationLocked(Lcom/android/server/pm/SharedUserSetting;II)Z
    .annotation runtime Lcom/android/server/pm/PackageManagerService$Computer$LiveImplementation;
        override = 0x2
    .end annotation
.end method

.method public abstract updateFlagsForApplication(II)I
    .annotation runtime Lcom/android/server/pm/PackageManagerService$Computer$LiveImplementation;
        override = 0x2
    .end annotation
.end method

.method public abstract updateFlagsForComponent(II)I
    .annotation runtime Lcom/android/server/pm/PackageManagerService$Computer$LiveImplementation;
        override = 0x2
    .end annotation
.end method

.method public abstract updateFlagsForPackage(II)I
    .annotation runtime Lcom/android/server/pm/PackageManagerService$Computer$LiveImplementation;
        override = 0x2
    .end annotation
.end method

.method public abstract updateFlagsForResolve(IIIZZ)I
    .annotation runtime Lcom/android/server/pm/PackageManagerService$Computer$LiveImplementation;
        override = 0x2
    .end annotation
.end method

.method public abstract updateFlagsForResolve(IIIZZZ)I
    .annotation runtime Lcom/android/server/pm/PackageManagerService$Computer$LiveImplementation;
        override = 0x2
    .end annotation
.end method

.method public use()V
    .locals 0
    .annotation runtime Lcom/android/server/pm/PackageManagerService$Computer$LiveImplementation;
        override = 0x2
    .end annotation

    .line 1980
    return-void
.end method
