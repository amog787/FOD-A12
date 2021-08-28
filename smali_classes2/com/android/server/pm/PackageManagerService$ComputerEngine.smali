.class public Lcom/android/server/pm/PackageManagerService$ComputerEngine;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Lcom/android/server/pm/PackageManagerService$Computer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ComputerEngine"
.end annotation


# instance fields
.field private final mApexManager:Lcom/android/server/pm/ApexManager;

.field private final mAppPredictionServicePackage:Ljava/lang/String;

.field private final mAppsFilter:Lcom/android/server/pm/AppsFilter;

.field private final mCompilerStats:Lcom/android/server/pm/CompilerStats;

.field private final mComponentResolver:Lcom/android/server/pm/ComponentResolver;

.field private final mContext:Landroid/content/Context;

.field private final mDefaultAppProvider:Lcom/android/server/pm/DefaultAppProvider;

.field private final mDexManager:Lcom/android/server/pm/dex/DexManager;

.field private final mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

.field private final mInjector:Lcom/android/server/pm/PackageManagerService$Injector;

.field private final mInstantAppInstallerInfo:Landroid/content/pm/ResolveInfo;

.field private final mInstantAppRegistry:Lcom/android/server/pm/InstantAppRegistry;

.field private final mInstantAppResolverConnection:Lcom/android/server/pm/InstantAppResolverConnection;

.field private final mInstrumentation:Lcom/android/server/utils/WatchedArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/WatchedArrayMap<",
            "Landroid/content/ComponentName;",
            "Landroid/content/pm/parsing/component/ParsedInstrumentation;",
            ">;"
        }
    .end annotation
.end field

.field private final mIsolatedOwners:Lcom/android/server/utils/WatchedSparseIntArray;

.field private final mLocalAndroidApplication:Landroid/content/pm/ApplicationInfo;

.field private final mLocalInstantAppInstallerActivity:Landroid/content/pm/ActivityInfo;

.field private final mLocalResolveComponentName:Landroid/content/ComponentName;

.field private final mPackageDexOptimizer:Lcom/android/server/pm/PackageDexOptimizer;

.field private final mPackages:Lcom/android/server/utils/WatchedArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/WatchedArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            ">;"
        }
    .end annotation
.end field

.field private final mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

.field private final mResolveActivity:Landroid/content/pm/ActivityInfo;

.field protected final mService:Lcom/android/server/pm/PackageManagerService;

.field protected final mSettings:Lcom/android/server/pm/Settings;

.field private final mSharedLibraries:Lcom/android/server/utils/WatchedArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/WatchedArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/utils/WatchedLongSparseArray<",
            "Landroid/content/pm/SharedLibraryInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mStaticLibsByDeclaringPackage:Lcom/android/server/utils/WatchedArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/WatchedArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/utils/WatchedLongSparseArray<",
            "Landroid/content/pm/SharedLibraryInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private mUsed:I

.field private final mUserManager:Lcom/android/server/pm/UserManagerService;

.field private final mWebInstantAppsDisabled:Lcom/android/server/utils/WatchedSparseBooleanArray;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService$Snapshot;)V
    .locals 1
    .param p1, "args"    # Lcom/android/server/pm/PackageManagerService$Snapshot;

    .line 2202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2146
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->mUsed:I

    .line 2203
    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->settings:Lcom/android/server/pm/Settings;

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->mSettings:Lcom/android/server/pm/Settings;

    .line 2204
    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->isolatedOwners:Lcom/android/server/utils/WatchedSparseIntArray;

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->mIsolatedOwners:Lcom/android/server/utils/WatchedSparseIntArray;

    .line 2205
    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->packages:Lcom/android/server/utils/WatchedArrayMap;

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 2206
    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->sharedLibs:Lcom/android/server/utils/WatchedArrayMap;

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->mSharedLibraries:Lcom/android/server/utils/WatchedArrayMap;

    .line 2207
    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->staticLibs:Lcom/android/server/utils/WatchedArrayMap;

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->mStaticLibsByDeclaringPackage:Lcom/android/server/utils/WatchedArrayMap;

    .line 2208
    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->instrumentation:Lcom/android/server/utils/WatchedArrayMap;

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->mInstrumentation:Lcom/android/server/utils/WatchedArrayMap;

    .line 2209
    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->webInstantAppsDisabled:Lcom/android/server/utils/WatchedSparseBooleanArray;

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->mWebInstantAppsDisabled:Lcom/android/server/utils/WatchedSparseBooleanArray;

    .line 2210
    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->resolveComponentName:Landroid/content/ComponentName;

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->mLocalResolveComponentName:Landroid/content/ComponentName;

    .line 2211
    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->resolveActivity:Landroid/content/pm/ActivityInfo;

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    .line 2212
    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->instantAppInstallerActivity:Landroid/content/pm/ActivityInfo;

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->mLocalInstantAppInstallerActivity:Landroid/content/pm/ActivityInfo;

    .line 2213
    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->instantAppInstallerInfo:Landroid/content/pm/ResolveInfo;

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->mInstantAppInstallerInfo:Landroid/content/pm/ResolveInfo;

    .line 2214
    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->instantAppRegistry:Lcom/android/server/pm/InstantAppRegistry;

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->mInstantAppRegistry:Lcom/android/server/pm/InstantAppRegistry;

    .line 2215
    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->androidApplication:Landroid/content/pm/ApplicationInfo;

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->mLocalAndroidApplication:Landroid/content/pm/ApplicationInfo;

    .line 2216
    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->appsFilter:Lcom/android/server/pm/AppsFilter;

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->mAppsFilter:Lcom/android/server/pm/AppsFilter;

    .line 2217
    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->componentResolver:Lcom/android/server/pm/ComponentResolver;

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->mComponentResolver:Lcom/android/server/pm/ComponentResolver;

    .line 2219
    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->appPredictionServicePackage:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->mAppPredictionServicePackage:Ljava/lang/String;

    .line 2223
    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->service:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->access$2000(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    .line 2224
    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->service:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 2225
    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->service:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->mContext:Landroid/content/Context;

    .line 2226
    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->service:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->access$300(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/PackageManagerService$Injector;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->mInjector:Lcom/android/server/pm/PackageManagerService$Injector;

    .line 2227
    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->service:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->access$2100(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/ApexManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->mApexManager:Lcom/android/server/pm/ApexManager;

    .line 2228
    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->service:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInstantAppResolverConnection:Lcom/android/server/pm/InstantAppResolverConnection;

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->mInstantAppResolverConnection:Lcom/android/server/pm/InstantAppResolverConnection;

    .line 2229
    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->service:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->access$2200(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/DefaultAppProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->mDefaultAppProvider:Lcom/android/server/pm/DefaultAppProvider;

    .line 2230
    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->service:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->access$2300(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    .line 2231
    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->service:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->access$2400(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/PackageDexOptimizer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->mPackageDexOptimizer:Lcom/android/server/pm/PackageDexOptimizer;

    .line 2232
    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->service:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->access$2500(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/dex/DexManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->mDexManager:Lcom/android/server/pm/dex/DexManager;

    .line 2233
    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->service:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->access$2600(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/CompilerStats;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->mCompilerStats:Lcom/android/server/pm/CompilerStats;

    .line 2237
    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->service:Lcom/android/server/pm/PackageManagerService;

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 2238
    return-void
.end method

.method private applyPostServiceResolutionFilter(Ljava/util/List;Ljava/lang/String;II)Ljava/util/List;
    .locals 11
    .param p2, "instantAppPkgName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "filterCallingUid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 3098
    .local p1, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_7

    .line 3099
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 3100
    .local v1, "info":Landroid/content/pm/ResolveInfo;
    if-nez p2, :cond_0

    .line 3101
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->mSettings:Lcom/android/server/pm/Settings;

    .line 3102
    invoke-static {p4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/pm/Settings;->getSettingLPr(I)Lcom/android/server/pm/SettingBase;

    move-result-object v2

    .line 3103
    .local v2, "callingSetting":Lcom/android/server/pm/SettingBase;
    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    .line 3104
    invoke-virtual {p0, v3, v4}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->getPackageSettingInternal(Ljava/lang/String;I)Lcom/android/server/pm/PackageSetting;

    move-result-object v3

    .line 3105
    .local v3, "resolvedSetting":Lcom/android/server/pm/PackageSetting;
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->mAppsFilter:Lcom/android/server/pm/AppsFilter;

    invoke-virtual {v4, p4, v2, v3, p3}, Lcom/android/server/pm/AppsFilter;->shouldFilterApplication(ILcom/android/server/pm/SettingBase;Lcom/android/server/pm/PackageSetting;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 3107
    goto/16 :goto_1

    .line 3110
    .end local v2    # "callingSetting":Lcom/android/server/pm/SettingBase;
    .end local v3    # "resolvedSetting":Lcom/android/server/pm/PackageSetting;
    :cond_0
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result v2

    .line 3112
    .local v2, "isEphemeralApp":Z
    if-eqz v2, :cond_4

    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 3113
    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->splitName:Ljava/lang/String;

    if-eqz v3, :cond_6

    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->splitNames:[Ljava/lang/String;

    iget-object v4, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->splitName:Ljava/lang/String;

    .line 3114
    invoke-static {v3, v4}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 3116
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->instantAppInstallerActivity()Landroid/content/pm/ActivityInfo;

    move-result-object v3

    const-string v4, "PackageManager"

    if-nez v3, :cond_2

    .line 3117
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$2700()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3118
    const-string v3, "No installer - not adding it to the ResolveInfolist"

    invoke-static {v4, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3121
    :cond_1
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 3122
    goto :goto_1

    .line 3126
    :cond_2
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$2700()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3127
    const-string v3, "Adding ephemeral installer to the ResolveInfo list"

    invoke-static {v4, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3129
    :cond_3
    new-instance v3, Landroid/content/pm/ResolveInfo;

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->mInstantAppInstallerInfo:Landroid/content/pm/ResolveInfo;

    invoke-direct {v3, v4}, Landroid/content/pm/ResolveInfo;-><init>(Landroid/content/pm/ResolveInfo;)V

    .line 3131
    .local v3, "installerInfo":Landroid/content/pm/ResolveInfo;
    new-instance v10, Landroid/content/pm/AuxiliaryResolveInfo;

    const/4 v5, 0x0

    iget-object v4, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v4, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v4, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-wide v7, v4, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    iget-object v4, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v9, v4, Landroid/content/pm/ServiceInfo;->splitName:Ljava/lang/String;

    move-object v4, v10

    invoke-direct/range {v4 .. v9}, Landroid/content/pm/AuxiliaryResolveInfo;-><init>(Landroid/content/ComponentName;Ljava/lang/String;JLjava/lang/String;)V

    iput-object v10, v3, Landroid/content/pm/ResolveInfo;->auxiliaryInfo:Landroid/content/pm/AuxiliaryResolveInfo;

    .line 3137
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    iput-object v4, v3, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    .line 3139
    invoke-virtual {v1}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    iput-object v4, v3, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    .line 3140
    invoke-interface {p1, v0, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3141
    .end local v3    # "installerInfo":Landroid/content/pm/ResolveInfo;
    goto :goto_1

    .line 3145
    :cond_4
    if-nez v2, :cond_5

    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget v3, v3, Landroid/content/pm/ServiceInfo;->flags:I

    const/high16 v4, 0x100000

    and-int/2addr v3, v4

    if-eqz v3, :cond_5

    .line 3148
    goto :goto_1

    .line 3150
    :cond_5
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 3098
    .end local v1    # "info":Landroid/content/pm/ResolveInfo;
    .end local v2    # "isEphemeralApp":Z
    :cond_6
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_0

    .line 3152
    .end local v0    # "i":I
    :cond_7
    return-object p1
.end method

.method private areWebInstantAppsDisabled(I)Z
    .locals 1
    .param p1, "userId"    # I

    .line 3934
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->mWebInstantAppsDisabled:Lcom/android/server/utils/WatchedSparseBooleanArray;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedSparseBooleanArray;->get(I)Z

    move-result v0

    return v0
.end method

.method private bestDomainVerificationStatus(II)I
    .locals 1
    .param p1, "status1"    # I
    .param p2, "status2"    # I

    .line 4386
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 4387
    return p2

    .line 4389
    :cond_0
    if-ne p2, v0, :cond_1

    .line 4390
    return p1

    .line 4392
    :cond_1
    invoke-static {p1, p2}, Landroid/util/MathUtils;->max(II)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method private createForwardingResolveInfo(Lcom/android/server/pm/CrossProfileIntentFilter;Landroid/content/Intent;Ljava/lang/String;II)Lcom/android/server/pm/PackageManagerService$CrossProfileDomainInfo;
    .locals 10
    .param p1, "filter"    # Lcom/android/server/pm/CrossProfileIntentFilter;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resolvedType"    # Ljava/lang/String;
    .param p4, "flags"    # I
    .param p5, "sourceUserId"    # I

    .line 3556
    invoke-virtual {p1}, Lcom/android/server/pm/CrossProfileIntentFilter;->getTargetUserId()I

    move-result v0

    .line 3557
    .local v0, "targetUserId":I
    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->isUserEnabled(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 3558
    return-object v2

    .line 3561
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->mComponentResolver:Lcom/android/server/pm/ComponentResolver;

    invoke-virtual {v1, p2, p3, p4, v0}, Lcom/android/server/pm/ComponentResolver;->queryActivities(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v1

    .line 3563
    .local v1, "resultTargetUser":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-static {v1}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3564
    return-object v2

    .line 3567
    :cond_1
    const/4 v3, 0x0

    .line 3568
    .local v3, "forwardingInfo":Landroid/content/pm/ResolveInfo;
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .local v4, "i":I
    :goto_0
    if-ltz v4, :cond_3

    .line 3569
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 3570
    .local v5, "targetUserResolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v7, 0x40000000    # 2.0f

    and-int/2addr v6, v7

    if-nez v6, :cond_2

    .line 3572
    invoke-virtual {p0, p1, p5, v0}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->createForwardingResolveInfoUnchecked(Lcom/android/server/pm/WatchedIntentFilter;II)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    .line 3574
    goto :goto_1

    .line 3568
    .end local v5    # "targetUserResolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 3578
    .end local v4    # "i":I
    :cond_3
    :goto_1
    if-nez v3, :cond_4

    .line 3580
    return-object v2

    .line 3583
    :cond_4
    const/4 v2, 0x0

    .line 3585
    .local v2, "highestApprovalLevel":I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    .line 3586
    .local v4, "size":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    if-ge v5, v4, :cond_7

    .line 3587
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 3588
    .local v6, "riTargetUser":Landroid/content/pm/ResolveInfo;
    iget-boolean v7, v6, Landroid/content/pm/ResolveInfo;->handleAllWebDataURI:Z

    if-eqz v7, :cond_5

    .line 3589
    goto :goto_3

    .line 3591
    :cond_5
    iget-object v7, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 3592
    .local v7, "packageName":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v8, v7}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v8

    .line 3593
    .local v8, "ps":Lcom/android/server/pm/PackageSetting;
    if-nez v8, :cond_6

    .line 3594
    goto :goto_3

    .line 3596
    :cond_6
    iget-object v9, p0, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    .line 3597
    invoke-interface {v9, v8, p2, p4, v0}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;->approvalLevelForDomain(Lcom/android/server/pm/PackageSetting;Landroid/content/Intent;II)I

    move-result v9

    .line 3596
    invoke-static {v2, v9}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 3586
    .end local v6    # "riTargetUser":Landroid/content/pm/ResolveInfo;
    .end local v7    # "packageName":Ljava/lang/String;
    .end local v8    # "ps":Lcom/android/server/pm/PackageSetting;
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 3600
    .end local v5    # "i":I
    :cond_7
    new-instance v5, Lcom/android/server/pm/PackageManagerService$CrossProfileDomainInfo;

    invoke-direct {v5, v3, v2}, Lcom/android/server/pm/PackageManagerService$CrossProfileDomainInfo;-><init>(Landroid/content/pm/ResolveInfo;I)V

    return-object v5
.end method

.method private filterCandidatesWithDomainPreferredActivitiesLPr(Landroid/content/Intent;ILjava/util/List;Lcom/android/server/pm/PackageManagerService$CrossProfileDomainInfo;I)Ljava/util/List;
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "matchFlags"    # I
    .param p4, "xpDomainInfo"    # Lcom/android/server/pm/PackageManagerService$CrossProfileDomainInfo;
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Lcom/android/server/pm/PackageManagerService$CrossProfileDomainInfo;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 3158
    .local p3, "candidates":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v7, v0

    .line 3165
    .local v7, "debug":Z
    nop

    .line 3166
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->filterCandidatesWithDomainPreferredActivitiesLPrBody(Landroid/content/Intent;ILjava/util/List;Lcom/android/server/pm/PackageManagerService$CrossProfileDomainInfo;IZ)Ljava/util/ArrayList;

    move-result-object v0

    .line 3176
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    return-object v0
.end method

.method private filterIfNotSystemUser(Ljava/util/List;I)Ljava/util/List;
    .locals 4
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 3186
    .local p1, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez p2, :cond_0

    .line 3187
    return-object p1

    .line 3189
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 3190
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 3191
    .local v1, "info":Landroid/content/pm/ResolveInfo;
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v2, v2, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v3, 0x20000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_1

    .line 3192
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 3189
    .end local v1    # "info":Landroid/content/pm/ResolveInfo;
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3195
    .end local v0    # "i":I
    :cond_2
    return-object p1
.end method

.method private findInstallFailureActivity(Ljava/lang/String;II)Landroid/content/ComponentName;
    .locals 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "filterCallingUid"    # I
    .param p3, "userId"    # I

    .line 2564
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSTALL_FAILURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2565
    .local v0, "failureActivityIntent":Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2567
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v2, p0

    move-object v3, v0

    move v7, p2

    move v8, p3

    invoke-virtual/range {v2 .. v10}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->queryIntentActivitiesInternal(Landroid/content/Intent;Ljava/lang/String;IIIIZZ)Ljava/util/List;

    move-result-object v1

    .line 2571
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 2572
    .local v2, "NR":I
    if-lez v2, :cond_1

    .line 2573
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 2574
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 2575
    .local v4, "info":Landroid/content/pm/ResolveInfo;
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->splitName:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 2576
    nop

    .line 2573
    .end local v4    # "info":Landroid/content/pm/ResolveInfo;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2578
    .restart local v4    # "info":Landroid/content/pm/ResolveInfo;
    :cond_0
    new-instance v5, Landroid/content/ComponentName;

    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v5, p1, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v5

    .line 2581
    .end local v3    # "i":I
    .end local v4    # "info":Landroid/content/pm/ResolveInfo;
    :cond_1
    const/4 v3, 0x0

    return-object v3
.end method

.method private getIsolatedOwner(I)I
    .locals 4
    .param p1, "isolatedUid"    # I

    .line 3777
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->mIsolatedOwners:Lcom/android/server/utils/WatchedSparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/utils/WatchedSparseIntArray;->get(II)I

    move-result v0

    .line 3778
    .local v0, "ownerUid":I
    if-eq v0, v1, :cond_0

    .line 3782
    return v0

    .line 3779
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No owner UID found for isolated UID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getPackagesForUidInternal(II)[Ljava/lang/String;
    .locals 4
    .param p1, "uid"    # I
    .param p2, "callingUid"    # I

    .line 3885
    invoke-virtual {p0, p2}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3886
    .local v0, "isCallerInstantApp":Z
    :goto_0
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 3887
    .local v1, "userId":I
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    .line 3888
    .local v2, "appId":I
    invoke-virtual {p0, p2, v1, v2, v0}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->getPackagesForUidInternalBody(IIIZ)[Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private hasCrossUserPermission(IIIZZ)Z
    .locals 2
    .param p1, "callingUid"    # I
    .param p2, "callingUserId"    # I
    .param p3, "userId"    # I
    .param p4, "requireFullPermission"    # Z
    .param p5, "requirePermissionWhenSameUser"    # Z

    .line 4033
    const/4 v0, 0x1

    if-nez p5, :cond_0

    if-ne p3, p2, :cond_0

    .line 4034
    return v0

    .line 4036
    :cond_0
    const/16 v1, 0x3e8

    if-eq p1, v1, :cond_5

    if-nez p1, :cond_1

    goto :goto_2

    .line 4039
    :cond_1
    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    if-eqz p4, :cond_2

    .line 4040
    invoke-direct {p0, v1}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 4042
    :cond_2
    invoke-direct {p0, v1}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->hasPermission(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 4043
    const-string v1, "android.permission.INTERACT_ACROSS_USERS"

    invoke-direct {p0, v1}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->hasPermission(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    nop

    .line 4042
    :goto_1
    return v0

    .line 4037
    :cond_5
    :goto_2
    return v0
.end method

.method private hasNonNegativePriority(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)Z"
        }
    .end annotation

    .line 4051
    .local p1, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget v0, v0, Landroid/content/pm/ResolveInfo;->priority:I

    if-ltz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private hasPermission(Ljava/lang/String;)Z
    .locals 1
    .param p1, "permission"    # Ljava/lang/String;

    .line 4055
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isInstantAppResolutionAllowed(Landroid/content/Intent;Ljava/util/List;IZI)Z
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

    .line 4169
    .local p2, "resolvedActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->mInstantAppResolverConnection:Lcom/android/server/pm/InstantAppResolverConnection;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 4170
    return v1

    .line 4172
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->instantAppInstallerActivity()Landroid/content/pm/ActivityInfo;

    move-result-object v0

    if-nez v0, :cond_1

    .line 4173
    return v1

    .line 4175
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 4176
    return v1

    .line 4178
    :cond_2
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_3

    .line 4179
    return v1

    .line 4181
    :cond_3
    if-nez p4, :cond_4

    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 4182
    return v1

    .line 4184
    :cond_4
    invoke-virtual {p1}, Landroid/content/Intent;->isWebIntent()Z

    move-result v0

    if-nez v0, :cond_7

    .line 4187
    if-eqz p2, :cond_5

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_6

    .line 4188
    :cond_5
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x800

    if-nez v0, :cond_9

    .line 4189
    :cond_6
    return v1

    .line 4192
    :cond_7
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_0

    .line 4194
    :cond_8
    invoke-direct {p0, p3}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->areWebInstantAppsDisabled(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 4195
    return v1

    .line 4200
    :cond_9
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->isInstantAppResolutionAllowedBody(Landroid/content/Intent;Ljava/util/List;IZI)Z

    move-result v0

    return v0

    .line 4193
    :cond_a
    :goto_0
    return v1
.end method

.method private isPersistentPreferredActivitySetByDpm(Landroid/content/Intent;ILjava/lang/String;I)Z
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "userId"    # I
    .param p3, "resolvedType"    # Ljava/lang/String;
    .param p4, "flags"    # I

    .line 4241
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->mSettings:Lcom/android/server/pm/Settings;

    .line 4242
    invoke-virtual {v0, p2}, Lcom/android/server/pm/Settings;->getPersistentPreferredActivities(I)Lcom/android/server/pm/PersistentPreferredIntentResolver;

    move-result-object v0

    .line 4244
    .local v0, "ppir":Lcom/android/server/pm/PersistentPreferredIntentResolver;
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 4245
    const/high16 v3, 0x10000

    and-int/2addr v3, p4

    if-eqz v3, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v0, p1, p3, v3, p2}, Lcom/android/server/pm/PersistentPreferredIntentResolver;->queryIntent(Landroid/content/Intent;Ljava/lang/String;ZI)Ljava/util/List;

    move-result-object v3

    goto :goto_1

    .line 4248
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    nop

    .line 4249
    .local v3, "pprefs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PersistentPreferredActivity;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/PersistentPreferredActivity;

    .line 4250
    .local v5, "ppa":Lcom/android/server/pm/PersistentPreferredActivity;
    iget-boolean v6, v5, Lcom/android/server/pm/PersistentPreferredActivity;->mIsSetByDpm:Z

    if-eqz v6, :cond_2

    .line 4251
    return v1

    .line 4253
    .end local v5    # "ppa":Lcom/android/server/pm/PersistentPreferredActivity;
    :cond_2
    goto :goto_2

    .line 4254
    :cond_3
    return v2
.end method

.method private isRecentsAccessingChildProfiles(II)Z
    .locals 5
    .param p1, "callingUid"    # I
    .param p2, "targetUserId"    # I

    .line 4258
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->mInjector:Lcom/android/server/pm/PackageManagerService$Injector;

    const-class v1, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageManagerService$Injector;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 4259
    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityTaskManagerInternal;->isCallerRecents(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 4260
    return v1

    .line 4262
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 4264
    .local v2, "token":J
    :try_start_0
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 4265
    .local v0, "callingUserId":I
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v4, v0, :cond_1

    .line 4266
    nop

    .line 4270
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4266
    return v1

    .line 4268
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v1, v0, p2}, Lcom/android/server/pm/UserManagerService;->isSameProfileGroup(II)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4270
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4268
    return v1

    .line 4270
    .end local v0    # "callingUserId":I
    :catchall_0
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4271
    throw v0
.end method

.method private isUserEnabled(I)Z
    .locals 4
    .param p1, "userId"    # I

    .line 4285
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4287
    .local v0, "callingId":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v2, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 4288
    .local v2, "userInfo":Landroid/content/pm/UserInfo;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 4290
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4288
    return v3

    .line 4290
    .end local v2    # "userInfo":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4291
    throw v2
.end method

.method private maybeAddInstantAppInstaller(Ljava/util/List;Landroid/content/Intent;Ljava/lang/String;IIZZ)Ljava/util/List;
    .locals 29
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resolvedType"    # Ljava/lang/String;
    .param p4, "flags"    # I
    .param p5, "userId"    # I
    .param p6, "resolveForStart"    # Z
    .param p7, "isRequesterInstantApp"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "IIZZ)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 3203
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v14, p2

    move/from16 v15, p4

    move/from16 v13, p5

    const/high16 v2, 0x800000

    and-int v3, v15, v2

    const/4 v12, 0x1

    if-eqz v3, :cond_0

    move v3, v12

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    move/from16 v16, v3

    .line 3204
    .local v16, "alreadyResolvedLocally":Z
    const/4 v3, 0x0

    .line 3205
    .local v3, "localInstantApp":Landroid/content/pm/ResolveInfo;
    const/4 v4, 0x0

    .line 3206
    .local v4, "blockResolution":Z
    const-string v10, "PackageManager"

    if-nez v16, :cond_5

    .line 3207
    iget-object v5, v0, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->mComponentResolver:Lcom/android/server/pm/ComponentResolver;

    or-int/lit8 v6, v15, 0x40

    or-int/2addr v2, v6

    const/high16 v6, 0x1000000

    or-int/2addr v2, v6

    move-object/from16 v9, p3

    invoke-virtual {v5, v14, v9, v2, v13}, Lcom/android/server/pm/ComponentResolver;->queryActivities(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v2

    .line 3215
    .local v2, "instantApps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v12

    .local v5, "i":I
    :goto_1
    if-ltz v5, :cond_6

    .line 3216
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 3217
    .local v6, "info":Landroid/content/pm/ResolveInfo;
    iget-object v7, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 3218
    .local v7, "packageName":Ljava/lang/String;
    iget-object v8, v0, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v8, v7}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v8

    .line 3219
    .local v8, "ps":Lcom/android/server/pm/PackageSetting;
    invoke-virtual {v8, v13}, Lcom/android/server/pm/PackageSetting;->getInstantApp(I)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 3220
    iget-object v11, v0, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    invoke-static {v11, v8, v14, v15, v13}, Lcom/android/server/pm/PackageManagerService;->access$2800(Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;Lcom/android/server/pm/PackageSetting;Landroid/content/Intent;II)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 3222
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$2700()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 3223
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Instant app approved for intent; pkg: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3226
    :cond_1
    move-object v3, v6

    move-object v12, v3

    move/from16 v18, v4

    goto :goto_2

    .line 3228
    :cond_2
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$2700()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 3229
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Instant app not approved for intent; pkg: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3232
    :cond_3
    const/4 v4, 0x1

    .line 3234
    move-object v12, v3

    move/from16 v18, v4

    goto :goto_2

    .line 3215
    .end local v6    # "info":Landroid/content/pm/ResolveInfo;
    .end local v7    # "packageName":Ljava/lang/String;
    .end local v8    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_4
    add-int/lit8 v5, v5, -0x1

    const/4 v12, 0x1

    goto :goto_1

    .line 3206
    .end local v2    # "instantApps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v5    # "i":I
    :cond_5
    move-object/from16 v9, p3

    .line 3239
    :cond_6
    move-object v12, v3

    move/from16 v18, v4

    .end local v3    # "localInstantApp":Landroid/content/pm/ResolveInfo;
    .end local v4    # "blockResolution":Z
    .local v12, "localInstantApp":Landroid/content/pm/ResolveInfo;
    .local v18, "blockResolution":Z
    :goto_2
    const/16 v19, 0x0

    .line 3240
    .local v19, "auxiliaryResponse":Landroid/content/pm/AuxiliaryResolveInfo;
    if-nez v18, :cond_8

    .line 3241
    if-nez v12, :cond_7

    .line 3243
    const-wide/32 v7, 0x40000

    const-string v2, "resolveEphemeral"

    invoke-static {v7, v8, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3244
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v20

    .line 3245
    .local v20, "token":Ljava/lang/String;
    invoke-static/range {p2 .. p2}, Lcom/android/server/pm/InstantAppResolver;->parseDigest(Landroid/content/Intent;)Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;

    move-result-object v21

    .line 3246
    .local v21, "digest":Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;
    new-instance v22, Landroid/content/pm/InstantAppRequest;

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v11, 0x0

    const/16 v23, 0x0

    .line 3251
    invoke-virtual/range {v21 .. v21}, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;->getDigestPrefixSecure()[I

    move-result-object v24

    move-object/from16 v2, v22

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-wide/from16 v25, v7

    move-object v7, v11

    move/from16 v8, p7

    move/from16 v9, p5

    move-object v11, v10

    move-object/from16 v10, v23

    move-object/from16 v27, v11

    move/from16 v11, p6

    move-object/from16 v28, v12

    .end local v12    # "localInstantApp":Landroid/content/pm/ResolveInfo;
    .local v28, "localInstantApp":Landroid/content/pm/ResolveInfo;
    move-object/from16 v12, v24

    move v14, v13

    move-object/from16 v13, v20

    invoke-direct/range {v2 .. v13}, Landroid/content/pm/InstantAppRequest;-><init>(Landroid/content/pm/AuxiliaryResolveInfo;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILandroid/os/Bundle;Z[ILjava/lang/String;)V

    .line 3252
    .local v2, "requestObject":Landroid/content/pm/InstantAppRequest;
    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->mInstantAppResolverConnection:Lcom/android/server/pm/InstantAppResolverConnection;

    invoke-static {v3, v2}, Lcom/android/server/pm/InstantAppResolver;->doInstantAppResolutionPhaseOne(Lcom/android/server/pm/InstantAppResolverConnection;Landroid/content/pm/InstantAppRequest;)Landroid/content/pm/AuxiliaryResolveInfo;

    move-result-object v19

    .line 3254
    invoke-static/range {v25 .. v26}, Landroid/os/Trace;->traceEnd(J)V

    .line 3255
    .end local v2    # "requestObject":Landroid/content/pm/InstantAppRequest;
    .end local v20    # "token":Ljava/lang/String;
    .end local v21    # "digest":Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;
    move-object/from16 v2, v19

    move-object/from16 v3, v28

    goto :goto_3

    .line 3261
    .end local v28    # "localInstantApp":Landroid/content/pm/ResolveInfo;
    .restart local v12    # "localInstantApp":Landroid/content/pm/ResolveInfo;
    :cond_7
    move-object/from16 v27, v10

    move-object/from16 v28, v12

    move v14, v13

    .end local v12    # "localInstantApp":Landroid/content/pm/ResolveInfo;
    .restart local v28    # "localInstantApp":Landroid/content/pm/ResolveInfo;
    move-object/from16 v3, v28

    .end local v28    # "localInstantApp":Landroid/content/pm/ResolveInfo;
    .restart local v3    # "localInstantApp":Landroid/content/pm/ResolveInfo;
    iget-object v2, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 3262
    .local v2, "ai":Landroid/content/pm/ApplicationInfo;
    new-instance v10, Landroid/content/pm/AuxiliaryResolveInfo;

    const/4 v5, 0x0

    iget-object v6, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-wide v7, v2, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    const/4 v9, 0x0

    move-object v4, v10

    invoke-direct/range {v4 .. v9}, Landroid/content/pm/AuxiliaryResolveInfo;-><init>(Landroid/content/ComponentName;Ljava/lang/String;JLjava/lang/String;)V

    move-object/from16 v19, v10

    move-object/from16 v2, v19

    goto :goto_3

    .line 3240
    .end local v2    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "localInstantApp":Landroid/content/pm/ResolveInfo;
    .restart local v12    # "localInstantApp":Landroid/content/pm/ResolveInfo;
    :cond_8
    move-object/from16 v27, v10

    move-object v3, v12

    move v14, v13

    .end local v12    # "localInstantApp":Landroid/content/pm/ResolveInfo;
    .restart local v3    # "localInstantApp":Landroid/content/pm/ResolveInfo;
    move-object/from16 v2, v19

    .line 3267
    .end local v19    # "auxiliaryResponse":Landroid/content/pm/AuxiliaryResolveInfo;
    .local v2, "auxiliaryResponse":Landroid/content/pm/AuxiliaryResolveInfo;
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->isWebIntent()Z

    move-result v4

    if-eqz v4, :cond_9

    if-nez v2, :cond_9

    .line 3268
    return-object v1

    .line 3270
    :cond_9
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->mSettings:Lcom/android/server/pm/Settings;

    .line 3271
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->instantAppInstallerActivity()Landroid/content/pm/ActivityInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v4

    .line 3272
    .local v4, "ps":Lcom/android/server/pm/PackageSetting;
    if-eqz v4, :cond_e

    .line 3273
    invoke-virtual {v4, v14}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->instantAppInstallerActivity()Landroid/content/pm/ActivityInfo;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageUserState;->isEnabled(Landroid/content/pm/ComponentInfo;I)Z

    move-result v5

    if-nez v5, :cond_a

    goto :goto_4

    .line 3276
    :cond_a
    new-instance v5, Landroid/content/pm/ResolveInfo;

    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->mInstantAppInstallerInfo:Landroid/content/pm/ResolveInfo;

    invoke-direct {v5, v6}, Landroid/content/pm/ResolveInfo;-><init>(Landroid/content/pm/ResolveInfo;)V

    .line 3277
    .local v5, "ephemeralInstaller":Landroid/content/pm/ResolveInfo;
    nop

    .line 3278
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->instantAppInstallerActivity()Landroid/content/pm/ActivityInfo;

    move-result-object v6

    invoke-virtual {v4, v14}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v8

    .line 3277
    invoke-static {v6, v7, v8, v14}, Landroid/content/pm/PackageParser;->generateActivityInfo(Landroid/content/pm/ActivityInfo;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ActivityInfo;

    move-result-object v6

    iput-object v6, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 3279
    const v6, 0x588000

    iput v6, v5, Landroid/content/pm/ResolveInfo;->match:I

    .line 3282
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    iput-object v6, v5, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    .line 3283
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_b

    .line 3284
    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3286
    :cond_b
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    if-eqz v6, :cond_c

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_c

    .line 3287
    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    .line 3288
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v8

    .line 3287
    invoke-virtual {v6, v8, v7}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V

    .line 3290
    :cond_c
    const/4 v6, 0x1

    iput-boolean v6, v5, Landroid/content/pm/ResolveInfo;->isInstantAppAvailable:Z

    .line 3292
    iput-boolean v6, v5, Landroid/content/pm/ResolveInfo;->isDefault:Z

    .line 3293
    iput-object v2, v5, Landroid/content/pm/ResolveInfo;->auxiliaryInfo:Landroid/content/pm/AuxiliaryResolveInfo;

    .line 3294
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$2700()Z

    move-result v6

    if-eqz v6, :cond_d

    .line 3295
    const-string v6, "Adding ephemeral installer to the ResolveInfo list"

    move-object/from16 v7, v27

    invoke-static {v7, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3298
    :cond_d
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3299
    return-object v1

    .line 3274
    .end local v5    # "ephemeralInstaller":Landroid/content/pm/ResolveInfo;
    :cond_e
    :goto_4
    return-object v1
.end method

.method private queryCrossProfileIntents(Ljava/util/List;Landroid/content/Intent;Ljava/lang/String;IIZ)Lcom/android/server/pm/PackageManagerService$CrossProfileDomainInfo;
    .locals 18
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resolvedType"    # Ljava/lang/String;
    .param p4, "flags"    # I
    .param p5, "sourceUserId"    # I
    .param p6, "matchInCurrentProfile"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/pm/CrossProfileIntentFilter;",
            ">;",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "IIZ)",
            "Lcom/android/server/pm/PackageManagerService$CrossProfileDomainInfo;"
        }
    .end annotation

    .line 3643
    .local p1, "matchingFilters":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/CrossProfileIntentFilter;>;"
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    const/4 v8, 0x0

    if-nez v7, :cond_0

    .line 3644
    return-object v8

    .line 3649
    :cond_0
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    move-object v9, v0

    .line 3651
    .local v9, "alreadyTriedUserIds":Landroid/util/SparseBooleanArray;
    const/4 v10, 0x0

    .line 3653
    .local v10, "resultInfo":Lcom/android/server/pm/PackageManagerService$CrossProfileDomainInfo;
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v11

    .line 3654
    .local v11, "size":I
    const/4 v0, 0x0

    move v12, v0

    .local v12, "i":I
    :goto_0
    if-ge v12, v11, :cond_6

    .line 3655
    invoke-interface {v7, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lcom/android/server/pm/CrossProfileIntentFilter;

    .line 3656
    .local v13, "filter":Lcom/android/server/pm/CrossProfileIntentFilter;
    invoke-virtual {v13}, Lcom/android/server/pm/CrossProfileIntentFilter;->getTargetUserId()I

    move-result v14

    .line 3657
    .local v14, "targetUserId":I
    nop

    .line 3658
    invoke-virtual {v13}, Lcom/android/server/pm/CrossProfileIntentFilter;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    const/4 v15, 0x1

    if-eqz v0, :cond_1

    move v0, v15

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    move/from16 v16, v0

    .line 3659
    .local v16, "skipCurrentProfile":Z
    nop

    .line 3660
    invoke-virtual {v13}, Lcom/android/server/pm/CrossProfileIntentFilter;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    move v1, v15

    :cond_2
    move/from16 v17, v1

    .line 3661
    .local v17, "skipCurrentProfileIfNoMatchFound":Z
    if-nez v16, :cond_5

    invoke-virtual {v9, v14}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-nez v0, :cond_5

    if-eqz v17, :cond_3

    if-nez p6, :cond_5

    .line 3665
    :cond_3
    move-object/from16 v0, p0

    move-object v1, v13

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->createForwardingResolveInfo(Lcom/android/server/pm/CrossProfileIntentFilter;Landroid/content/Intent;Ljava/lang/String;II)Lcom/android/server/pm/PackageManagerService$CrossProfileDomainInfo;

    move-result-object v0

    .line 3667
    .local v0, "info":Lcom/android/server/pm/PackageManagerService$CrossProfileDomainInfo;
    if-eqz v0, :cond_4

    .line 3668
    move-object v10, v0

    .line 3669
    goto :goto_2

    .line 3671
    :cond_4
    invoke-virtual {v9, v14, v15}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 3654
    .end local v0    # "info":Lcom/android/server/pm/PackageManagerService$CrossProfileDomainInfo;
    .end local v13    # "filter":Lcom/android/server/pm/CrossProfileIntentFilter;
    .end local v14    # "targetUserId":I
    .end local v16    # "skipCurrentProfile":Z
    .end local v17    # "skipCurrentProfileIfNoMatchFound":Z
    :cond_5
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 3675
    .end local v12    # "i":I
    :cond_6
    :goto_2
    if-nez v10, :cond_7

    .line 3676
    return-object v8

    .line 3679
    :cond_7
    iget-object v0, v10, Lcom/android/server/pm/PackageManagerService$CrossProfileDomainInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    .line 3680
    .local v0, "forwardingResolveInfo":Landroid/content/pm/ResolveInfo;
    iget v1, v0, Landroid/content/pm/ResolveInfo;->targetUserId:I

    invoke-direct {v6, v1}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->isUserEnabled(I)Z

    move-result v1

    if-nez v1, :cond_8

    .line 3681
    return-object v8

    .line 3684
    :cond_8
    nop

    .line 3685
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    move/from16 v2, p5

    invoke-direct {v6, v1, v2}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->filterIfNotSystemUser(Ljava/util/List;I)Ljava/util/List;

    move-result-object v1

    .line 3687
    .local v1, "filteredResult":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 3688
    return-object v8

    .line 3691
    :cond_9
    return-object v10
.end method

.method private querySkipCurrentProfileIntents(Ljava/util/List;Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;
    .locals 9
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resolvedType"    # Ljava/lang/String;
    .param p4, "flags"    # I
    .param p5, "sourceUserId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/pm/CrossProfileIntentFilter;",
            ">;",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "II)",
            "Landroid/content/pm/ResolveInfo;"
        }
    .end annotation

    .line 3697
    .local p1, "matchingFilters":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/CrossProfileIntentFilter;>;"
    if-eqz p1, :cond_1

    .line 3698
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 3699
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 3700
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/CrossProfileIntentFilter;

    .line 3701
    .local v2, "filter":Lcom/android/server/pm/CrossProfileIntentFilter;
    invoke-virtual {v2}, Lcom/android/server/pm/CrossProfileIntentFilter;->getFlags()I

    move-result v3

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_0

    .line 3704
    move-object v3, p0

    move-object v4, v2

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    move v8, p5

    invoke-direct/range {v3 .. v8}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->createForwardingResolveInfo(Lcom/android/server/pm/CrossProfileIntentFilter;Landroid/content/Intent;Ljava/lang/String;II)Lcom/android/server/pm/PackageManagerService$CrossProfileDomainInfo;

    move-result-object v3

    .line 3706
    .local v3, "info":Lcom/android/server/pm/PackageManagerService$CrossProfileDomainInfo;
    if-eqz v3, :cond_0

    .line 3707
    iget-object v4, v3, Lcom/android/server/pm/PackageManagerService$CrossProfileDomainInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    return-object v4

    .line 3699
    .end local v2    # "filter":Lcom/android/server/pm/CrossProfileIntentFilter;
    .end local v3    # "info":Lcom/android/server/pm/PackageManagerService$CrossProfileDomainInfo;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3712
    .end local v0    # "size":I
    .end local v1    # "i":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private resolveInternalPackageNameInternalLocked(Ljava/lang/String;JI)Ljava/lang/String;
    .locals 16
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "versionCode"    # J
    .param p4, "callingUid"    # I

    .line 3795
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->mSettings:Lcom/android/server/pm/Settings;

    move-object/from16 v2, p1

    invoke-virtual {v1, v2}, Lcom/android/server/pm/Settings;->getRenamedPackageLPr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3796
    .local v1, "normalizedPackageName":Ljava/lang/String;
    if-eqz v1, :cond_0

    move-object v3, v1

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    move-object v2, v3

    .line 3799
    .end local p1    # "packageName":Ljava/lang/String;
    .local v2, "packageName":Ljava/lang/String;
    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->mStaticLibsByDeclaringPackage:Lcom/android/server/utils/WatchedArrayMap;

    .line 3800
    invoke-virtual {v3, v2}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/utils/WatchedLongSparseArray;

    .line 3801
    .local v3, "versionedLib":Lcom/android/server/utils/WatchedLongSparseArray;, "Lcom/android/server/utils/WatchedLongSparseArray<Landroid/content/pm/SharedLibraryInfo;>;"
    if-eqz v3, :cond_c

    invoke-virtual {v3}, Lcom/android/server/utils/WatchedLongSparseArray;->size()I

    move-result v4

    if-gtz v4, :cond_1

    move/from16 v8, p4

    goto/16 :goto_4

    .line 3806
    :cond_1
    const/4 v4, 0x0

    .line 3807
    .local v4, "versionsCallerCanSee":Landroid/util/LongSparseLongArray;
    invoke-static/range {p4 .. p4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v5

    .line 3808
    .local v5, "callingAppId":I
    const/16 v6, 0x3e8

    if-eq v5, v6, :cond_3

    const/16 v6, 0x7d0

    if-eq v5, v6, :cond_3

    if-eqz v5, :cond_3

    .line 3810
    new-instance v6, Landroid/util/LongSparseLongArray;

    invoke-direct {v6}, Landroid/util/LongSparseLongArray;-><init>()V

    move-object v4, v6

    .line 3811
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Lcom/android/server/utils/WatchedLongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/SharedLibraryInfo;

    invoke-virtual {v7}, Landroid/content/pm/SharedLibraryInfo;->getName()Ljava/lang/String;

    move-result-object v7

    .line 3812
    .local v7, "libName":Ljava/lang/String;
    move/from16 v8, p4

    invoke-direct {v0, v8, v8}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->getPackagesForUidInternal(II)[Ljava/lang/String;

    move-result-object v9

    .line 3813
    .local v9, "uidPackages":[Ljava/lang/String;
    if-eqz v9, :cond_4

    .line 3814
    array-length v10, v9

    :goto_1
    if-ge v6, v10, :cond_4

    aget-object v11, v9, v6

    .line 3815
    .local v11, "uidPackage":Ljava/lang/String;
    iget-object v12, v0, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v12, v11}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v12

    .line 3816
    .local v12, "ps":Lcom/android/server/pm/PackageSetting;
    iget-object v13, v12, Lcom/android/server/pm/PackageSetting;->usesStaticLibraries:[Ljava/lang/String;

    invoke-static {v13, v7}, Lcom/android/internal/util/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v13

    .line 3817
    .local v13, "libIdx":I
    if-ltz v13, :cond_2

    .line 3818
    iget-object v14, v12, Lcom/android/server/pm/PackageSetting;->usesStaticLibrariesVersions:[J

    aget-wide v14, v14, v13

    .line 3819
    .local v14, "libVersion":J
    invoke-virtual {v4, v14, v15, v14, v15}, Landroid/util/LongSparseLongArray;->append(JJ)V

    .line 3814
    .end local v11    # "uidPackage":Ljava/lang/String;
    .end local v12    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v13    # "libIdx":I
    .end local v14    # "libVersion":J
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 3808
    .end local v7    # "libName":Ljava/lang/String;
    .end local v9    # "uidPackages":[Ljava/lang/String;
    :cond_3
    move/from16 v8, p4

    .line 3826
    :cond_4
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Landroid/util/LongSparseLongArray;->size()I

    move-result v6

    if-gtz v6, :cond_5

    .line 3827
    return-object v2

    .line 3831
    :cond_5
    const/4 v6, 0x0

    .line 3832
    .local v6, "highestVersion":Landroid/content/pm/SharedLibraryInfo;
    invoke-virtual {v3}, Lcom/android/server/utils/WatchedLongSparseArray;->size()I

    move-result v7

    .line 3833
    .local v7, "versionCount":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_2
    if-ge v9, v7, :cond_a

    .line 3834
    invoke-virtual {v3, v9}, Lcom/android/server/utils/WatchedLongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/SharedLibraryInfo;

    .line 3835
    .local v10, "libraryInfo":Landroid/content/pm/SharedLibraryInfo;
    if-eqz v4, :cond_6

    .line 3836
    invoke-virtual {v10}, Landroid/content/pm/SharedLibraryInfo;->getLongVersion()J

    move-result-wide v11

    .line 3835
    invoke-virtual {v4, v11, v12}, Landroid/util/LongSparseLongArray;->indexOfKey(J)I

    move-result v11

    if-gez v11, :cond_6

    .line 3837
    goto :goto_3

    .line 3839
    :cond_6
    invoke-virtual {v10}, Landroid/content/pm/SharedLibraryInfo;->getDeclaringPackage()Landroid/content/pm/VersionedPackage;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/pm/VersionedPackage;->getLongVersionCode()J

    move-result-wide v11

    .line 3840
    .local v11, "libVersionCode":J
    const-wide/16 v13, -0x1

    cmp-long v13, p2, v13

    if-eqz v13, :cond_7

    .line 3841
    cmp-long v13, v11, p2

    if-nez v13, :cond_9

    .line 3842
    invoke-virtual {v10}, Landroid/content/pm/SharedLibraryInfo;->getPackageName()Ljava/lang/String;

    move-result-object v13

    return-object v13

    .line 3844
    :cond_7
    if-nez v6, :cond_8

    .line 3845
    move-object v6, v10

    goto :goto_3

    .line 3846
    :cond_8
    nop

    .line 3847
    invoke-virtual {v6}, Landroid/content/pm/SharedLibraryInfo;->getDeclaringPackage()Landroid/content/pm/VersionedPackage;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/pm/VersionedPackage;->getLongVersionCode()J

    move-result-wide v13

    cmp-long v13, v11, v13

    if-lez v13, :cond_9

    .line 3848
    move-object v6, v10

    .line 3833
    .end local v10    # "libraryInfo":Landroid/content/pm/SharedLibraryInfo;
    .end local v11    # "libVersionCode":J
    :cond_9
    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 3852
    .end local v9    # "i":I
    :cond_a
    if-eqz v6, :cond_b

    .line 3853
    invoke-virtual {v6}, Landroid/content/pm/SharedLibraryInfo;->getPackageName()Ljava/lang/String;

    move-result-object v9

    return-object v9

    .line 3856
    :cond_b
    return-object v2

    .line 3801
    .end local v4    # "versionsCallerCanSee":Landroid/util/LongSparseLongArray;
    .end local v5    # "callingAppId":I
    .end local v6    # "highestVersion":Landroid/content/pm/SharedLibraryInfo;
    .end local v7    # "versionCount":I
    :cond_c
    move/from16 v8, p4

    .line 3802
    :goto_4
    return-object v2
.end method

.method private safeMode()Z
    .locals 1

    .line 2190
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->mService:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->access$1900(Lcom/android/server/pm/PackageManagerService;)Z

    move-result v0

    return v0
.end method

.method private updateFlags(II)I
    .locals 3
    .param p1, "flags"    # I
    .param p2, "userId"    # I

    .line 4426
    const/high16 v0, 0xc0000

    and-int v1, p1, v0

    if-eqz v1, :cond_0

    goto :goto_0

    .line 4432
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->mInjector:Lcom/android/server/pm/PackageManagerService$Injector;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService$Injector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v1

    .line 4434
    .local v1, "umInternal":Lcom/android/server/pm/UserManagerInternal;
    invoke-virtual {v1, p2}, Lcom/android/server/pm/UserManagerInternal;->isUserUnlockingOrUnlocked(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4435
    or-int/2addr p1, v0

    goto :goto_0

    .line 4437
    :cond_1
    const/high16 v0, 0x80000

    or-int/2addr p1, v0

    .line 4440
    .end local v1    # "umInternal":Lcom/android/server/pm/UserManagerInternal;
    :goto_0
    return p1
.end method


# virtual methods
.method protected androidApplication()Landroid/content/pm/ApplicationInfo;
    .locals 1

    .line 2199
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->mLocalAndroidApplication:Landroid/content/pm/ApplicationInfo;

    return-object v0
.end method

.method public final applyPostResolutionFilter(Ljava/util/List;Ljava/lang/String;ZIZILandroid/content/Intent;)Ljava/util/List;
    .locals 18
    .param p2, "ephemeralPkgName"    # Ljava/lang/String;
    .param p3, "allowDynamicSplits"    # Z
    .param p4, "filterCallingUid"    # I
    .param p5, "resolveForStart"    # Z
    .param p6, "userId"    # I
    .param p7, "intent"    # Landroid/content/Intent;
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

    .line 3012
    .local p1, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p4

    move/from16 v4, p6

    invoke-virtual/range {p7 .. p7}, Landroid/content/Intent;->isWebIntent()Z

    move-result v5

    const/4 v7, 0x1

    if-eqz v5, :cond_0

    invoke-direct {v0, v4}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->areWebInstantAppsDisabled(I)Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v7

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    .line 3013
    .local v5, "blockInstant":Z
    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v7

    .local v8, "i":I
    :goto_1
    if-ltz v8, :cond_d

    .line 3014
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ResolveInfo;

    .line 3016
    .local v9, "info":Landroid/content/pm/ResolveInfo;
    iget-boolean v10, v9, Landroid/content/pm/ResolveInfo;->isInstantAppAvailable:Z

    if-eqz v10, :cond_1

    if-eqz v5, :cond_1

    .line 3017
    invoke-interface {v1, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 3018
    move v6, v7

    const/4 v11, 0x0

    goto/16 :goto_4

    .line 3021
    :cond_1
    if-eqz p3, :cond_5

    iget-object v10, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v10, :cond_5

    iget-object v10, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->splitName:Ljava/lang/String;

    if-eqz v10, :cond_5

    iget-object v10, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->splitNames:[Ljava/lang/String;

    iget-object v11, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->splitName:Ljava/lang/String;

    .line 3024
    invoke-static {v10, v11}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 3026
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->instantAppInstallerActivity()Landroid/content/pm/ActivityInfo;

    move-result-object v10

    if-nez v10, :cond_2

    .line 3030
    invoke-interface {v1, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 3031
    move v6, v7

    const/4 v11, 0x0

    goto/16 :goto_4

    .line 3033
    :cond_2
    if-eqz v5, :cond_3

    iget-object v10, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v10, v4}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->isInstantApp(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 3034
    invoke-interface {v1, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 3035
    move v6, v7

    const/4 v11, 0x0

    goto/16 :goto_4

    .line 3042
    :cond_3
    new-instance v10, Landroid/content/pm/ResolveInfo;

    iget-object v11, v0, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->mInstantAppInstallerInfo:Landroid/content/pm/ResolveInfo;

    invoke-direct {v10, v11}, Landroid/content/pm/ResolveInfo;-><init>(Landroid/content/pm/ResolveInfo;)V

    .line 3044
    .local v10, "installerInfo":Landroid/content/pm/ResolveInfo;
    iget-object v11, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-direct {v0, v11, v3, v4}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->findInstallFailureActivity(Ljava/lang/String;II)Landroid/content/ComponentName;

    move-result-object v11

    .line 3046
    .local v11, "installFailureActivity":Landroid/content/ComponentName;
    new-instance v15, Landroid/content/pm/AuxiliaryResolveInfo;

    iget-object v12, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v14, v12, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v12, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-wide v12, v12, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    iget-object v6, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->splitName:Ljava/lang/String;

    move-wide/from16 v16, v12

    move-object v12, v15

    move-object v13, v11

    move-object v7, v15

    move-wide/from16 v15, v16

    move-object/from16 v17, v6

    invoke-direct/range {v12 .. v17}, Landroid/content/pm/AuxiliaryResolveInfo;-><init>(Landroid/content/ComponentName;Ljava/lang/String;JLjava/lang/String;)V

    iput-object v7, v10, Landroid/content/pm/ResolveInfo;->auxiliaryInfo:Landroid/content/pm/AuxiliaryResolveInfo;

    .line 3052
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    iput-object v6, v10, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    .line 3057
    invoke-virtual {v9}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    iput-object v6, v10, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    .line 3058
    invoke-virtual {v9}, Landroid/content/pm/ResolveInfo;->resolveLabelResId()I

    move-result v6

    iput v6, v10, Landroid/content/pm/ResolveInfo;->labelRes:I

    .line 3059
    invoke-virtual {v9}, Landroid/content/pm/ResolveInfo;->resolveIconResId()I

    move-result v6

    iput v6, v10, Landroid/content/pm/ResolveInfo;->icon:I

    .line 3060
    const/4 v6, 0x1

    iput-boolean v6, v10, Landroid/content/pm/ResolveInfo;->isInstantAppAvailable:Z

    .line 3061
    invoke-interface {v1, v8, v10}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3062
    const/4 v11, 0x0

    goto/16 :goto_4

    .line 3024
    .end local v10    # "installerInfo":Landroid/content/pm/ResolveInfo;
    .end local v11    # "installFailureActivity":Landroid/content/ComponentName;
    :cond_4
    move v6, v7

    goto :goto_2

    .line 3021
    :cond_5
    move v6, v7

    .line 3064
    :goto_2
    if-nez v2, :cond_7

    .line 3066
    iget-object v7, v0, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->mSettings:Lcom/android/server/pm/Settings;

    .line 3067
    invoke-static/range {p4 .. p4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v10

    invoke-virtual {v7, v10}, Lcom/android/server/pm/Settings;->getSettingLPr(I)Lcom/android/server/pm/SettingBase;

    move-result-object v7

    .line 3068
    .local v7, "callingSetting":Lcom/android/server/pm/SettingBase;
    iget-object v10, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 3069
    const/4 v11, 0x0

    invoke-virtual {v0, v10, v11}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->getPackageSettingInternal(Ljava/lang/String;I)Lcom/android/server/pm/PackageSetting;

    move-result-object v10

    .line 3070
    .local v10, "resolvedSetting":Lcom/android/server/pm/PackageSetting;
    if-nez p5, :cond_c

    iget-object v12, v0, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->mAppsFilter:Lcom/android/server/pm/AppsFilter;

    .line 3071
    invoke-virtual {v12, v3, v7, v10, v4}, Lcom/android/server/pm/AppsFilter;->shouldFilterApplication(ILcom/android/server/pm/SettingBase;Lcom/android/server/pm/PackageSetting;I)Z

    move-result v12

    if-nez v12, :cond_6

    .line 3073
    goto :goto_4

    .line 3075
    .end local v7    # "callingSetting":Lcom/android/server/pm/SettingBase;
    .end local v10    # "resolvedSetting":Lcom/android/server/pm/PackageSetting;
    :cond_6
    goto :goto_3

    :cond_7
    const/4 v11, 0x0

    iget-object v7, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 3077
    goto :goto_4

    .line 3078
    :cond_8
    if-eqz p5, :cond_a

    .line 3079
    invoke-virtual/range {p7 .. p7}, Landroid/content/Intent;->isWebIntent()Z

    move-result v7

    if-nez v7, :cond_9

    .line 3080
    invoke-virtual/range {p7 .. p7}, Landroid/content/Intent;->getFlags()I

    move-result v7

    and-int/lit16 v7, v7, 0x800

    if-eqz v7, :cond_a

    .line 3081
    :cond_9
    invoke-virtual/range {p7 .. p7}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_a

    .line 3082
    invoke-virtual/range {p7 .. p7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    if-nez v7, :cond_a

    .line 3084
    goto :goto_4

    .line 3085
    :cond_a
    iget-object v7, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v7, v7, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v10, 0x100000

    and-int/2addr v7, v10

    if-eqz v7, :cond_b

    iget-object v7, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 3087
    invoke-virtual {v7}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result v7

    if-nez v7, :cond_b

    .line 3089
    goto :goto_4

    .line 3091
    :cond_b
    :goto_3
    invoke-interface {v1, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 3013
    .end local v9    # "info":Landroid/content/pm/ResolveInfo;
    :cond_c
    :goto_4
    add-int/lit8 v8, v8, -0x1

    move v7, v6

    goto/16 :goto_1

    .line 3093
    .end local v8    # "i":I
    :cond_d
    return-object v1
.end method

.method public final canViewInstantApps(II)Z
    .locals 3
    .param p1, "callingUid"    # I
    .param p2, "userId"    # I

    .line 3952
    const/4 v0, 0x1

    const/16 v1, 0x2710

    if-ge p1, v1, :cond_0

    .line 3953
    return v0

    .line 3955
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.ACCESS_INSTANT_APPS"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    .line 3957
    return v0

    .line 3959
    :cond_1
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.VIEW_INSTANT_APPS"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_3

    .line 3961
    invoke-virtual {p0, p2}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->getDefaultHomeActivity(I)Landroid/content/ComponentName;

    move-result-object v1

    .line 3962
    .local v1, "homeComponent":Landroid/content/ComponentName;
    if-eqz v1, :cond_2

    .line 3963
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, p1}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->isCallerSameApp(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3964
    return v0

    .line 3967
    :cond_2
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->mAppPredictionServicePackage:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 3968
    invoke-virtual {p0, v2, p1}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->isCallerSameApp(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3969
    return v0

    .line 3972
    .end local v1    # "homeComponent":Landroid/content/ComponentName;
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method public final checkUidPermission(Ljava/lang/String;I)I
    .locals 1
    .param p1, "permName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 4397
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    invoke-interface {v0, p2, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->checkUidPermission(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final createForwardingResolveInfoUnchecked(Lcom/android/server/pm/WatchedIntentFilter;II)Landroid/content/pm/ResolveInfo;
    .locals 9
    .param p1, "filter"    # Lcom/android/server/pm/WatchedIntentFilter;
    .param p2, "sourceUserId"    # I
    .param p3, "targetUserId"    # I

    .line 3605
    new-instance v0, Landroid/content/pm/ResolveInfo;

    invoke-direct {v0}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 3606
    .local v0, "forwardingResolveInfo":Landroid/content/pm/ResolveInfo;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 3609
    .local v1, "ident":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v3, p3}, Lcom/android/server/pm/UserManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3611
    .local v3, "targetIsProfile":Z
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3612
    nop

    .line 3614
    if-eqz v3, :cond_0

    .line 3615
    sget-object v4, Lcom/android/internal/app/IntentForwarderActivity;->FORWARD_INTENT_TO_MANAGED_PROFILE:Ljava/lang/String;

    .local v4, "className":Ljava/lang/String;
    goto :goto_0

    .line 3617
    .end local v4    # "className":Ljava/lang/String;
    :cond_0
    sget-object v4, Lcom/android/internal/app/IntentForwarderActivity;->FORWARD_INTENT_TO_PARENT:Ljava/lang/String;

    .line 3619
    .restart local v4    # "className":Ljava/lang/String;
    :goto_0
    new-instance v5, Landroid/content/ComponentName;

    .line 3620
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->androidApplication()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {v5, v6, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3621
    .local v5, "forwardingActivityComponentName":Landroid/content/ComponentName;
    nop

    .line 3622
    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6, p2}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object v7

    .line 3624
    .local v7, "forwardingActivityInfo":Landroid/content/pm/ActivityInfo;
    const/4 v8, 0x1

    if-nez v3, :cond_1

    .line 3625
    iput p3, v7, Landroid/content/pm/ActivityInfo;->showUserIcon:I

    .line 3626
    iput-boolean v8, v0, Landroid/content/pm/ResolveInfo;->noResourceId:Z

    .line 3628
    :cond_1
    iput-object v7, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 3629
    iput v6, v0, Landroid/content/pm/ResolveInfo;->priority:I

    .line 3630
    iput v6, v0, Landroid/content/pm/ResolveInfo;->preferredOrder:I

    .line 3631
    iput v6, v0, Landroid/content/pm/ResolveInfo;->match:I

    .line 3632
    iput-boolean v8, v0, Landroid/content/pm/ResolveInfo;->isDefault:Z

    .line 3633
    new-instance v6, Landroid/content/IntentFilter;

    invoke-virtual {p1}, Lcom/android/server/pm/WatchedIntentFilter;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v8

    invoke-direct {v6, v8}, Landroid/content/IntentFilter;-><init>(Landroid/content/IntentFilter;)V

    iput-object v6, v0, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    .line 3634
    iput p3, v0, Landroid/content/pm/ResolveInfo;->targetUserId:I

    .line 3635
    return-object v0

    .line 3611
    .end local v3    # "targetIsProfile":Z
    .end local v4    # "className":Ljava/lang/String;
    .end local v5    # "forwardingActivityComponentName":Landroid/content/ComponentName;
    .end local v7    # "forwardingActivityInfo":Landroid/content/pm/ActivityInfo;
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3612
    throw v3
.end method

.method public dump(ILjava/io/FileDescriptor;Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;)V
    .locals 17
    .param p1, "type"    # I
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "pw"    # Ljava/io/PrintWriter;
    .param p4, "dumpState"    # Lcom/android/server/pm/DumpState;

    .line 4658
    move-object/from16 v1, p0

    move-object/from16 v8, p3

    const-string v2, "Failed writing: "

    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/DumpState;->getTargetPackageName()Ljava/lang/String;

    move-result-object v9

    .line 4659
    .local v9, "packageName":Ljava/lang/String;
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/DumpState;->isCheckIn()Z

    move-result v10

    .line 4661
    .local v10, "checkin":Z
    const-string v0, "]"

    const-string v3, "["

    const-string v4, "Unable to find package: "

    const/4 v5, 0x0

    const-string v6, "  "

    sparse-switch p1, :sswitch_data_0

    move-object/from16 v3, p2

    move-object/from16 v2, p4

    goto/16 :goto_f

    .line 4753
    :sswitch_0
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v0, v9}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    .line 4754
    .local v0, "setting":Lcom/android/server/pm/PackageSetting;
    if-nez v0, :cond_0

    move-object v4, v5

    goto :goto_0

    :cond_0
    iget v2, v0, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object v4, v2

    .line 4755
    .local v4, "filteringAppId":Ljava/lang/Integer;
    :goto_0
    iget-object v2, v1, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->mAppsFilter:Lcom/android/server/pm/AppsFilter;

    iget-object v3, v1, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 4756
    invoke-virtual {v3}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v6

    new-instance v7, Lcom/android/server/pm/PackageManagerService$ComputerEngine$$ExternalSyntheticLambda0;

    invoke-direct {v7, v1}, Lcom/android/server/pm/PackageManagerService$ComputerEngine$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/PackageManagerService$ComputerEngine;)V

    .line 4755
    move-object/from16 v3, p3

    move-object/from16 v5, p4

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/AppsFilter;->dumpQueries(Ljava/io/PrintWriter;Ljava/lang/Integer;Lcom/android/server/pm/DumpState;[ILcom/android/internal/util/function/QuadFunction;)V

    .line 4758
    move-object/from16 v3, p2

    move-object/from16 v2, p4

    goto/16 :goto_f

    .line 4815
    .end local v0    # "setting":Lcom/android/server/pm/PackageSetting;
    .end local v4    # "filteringAppId":Ljava/lang/Integer;
    :sswitch_1
    new-instance v2, Lcom/android/internal/util/IndentingPrintWriter;

    invoke-direct {v2, v8, v6}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 4816
    .local v2, "ipw":Lcom/android/internal/util/IndentingPrintWriter;
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 4817
    const-string v5, "Compiler stats:"

    invoke-virtual {v2, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4818
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4820
    if-eqz v9, :cond_2

    .line 4821
    iget-object v5, v1, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v5, v9}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 4822
    .local v5, "targetPackage":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-eqz v5, :cond_1

    .line 4823
    invoke-static {v5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 4828
    .end local v5    # "targetPackage":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .local v4, "packages":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    goto :goto_1

    .line 4825
    .end local v4    # "packages":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    .restart local v5    # "targetPackage":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4826
    return-void

    .line 4829
    .end local v5    # "targetPackage":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :cond_2
    iget-object v4, v1, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v4}, Lcom/android/server/utils/WatchedArrayMap;->values()Ljava/util/Collection;

    move-result-object v4

    .line 4832
    .restart local v4    # "packages":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    :goto_1
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 4833
    .local v6, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    invoke-interface {v6}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 4834
    .local v7, "pkgName":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4835
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4837
    iget-object v11, v1, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->mCompilerStats:Lcom/android/server/pm/CompilerStats;

    invoke-virtual {v11, v7}, Lcom/android/server/pm/CompilerStats;->getPackageStats(Ljava/lang/String;)Lcom/android/server/pm/CompilerStats$PackageStats;

    move-result-object v11

    .line 4838
    .local v11, "stats":Lcom/android/server/pm/CompilerStats$PackageStats;
    if-nez v11, :cond_3

    .line 4839
    const-string v12, "(No recorded stats)"

    invoke-virtual {v2, v12}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    .line 4841
    :cond_3
    invoke-virtual {v11, v2}, Lcom/android/server/pm/CompilerStats$PackageStats;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 4843
    :goto_3
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4844
    .end local v6    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local v7    # "pkgName":Ljava/lang/String;
    .end local v11    # "stats":Lcom/android/server/pm/CompilerStats$PackageStats;
    goto :goto_2

    .line 4845
    :cond_4
    move-object/from16 v3, p2

    move-object/from16 v2, p4

    goto/16 :goto_f

    .line 4782
    .end local v2    # "ipw":Lcom/android/internal/util/IndentingPrintWriter;
    .end local v4    # "packages":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    :sswitch_2
    new-instance v2, Lcom/android/internal/util/IndentingPrintWriter;

    invoke-direct {v2, v8, v6}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 4783
    .restart local v2    # "ipw":Lcom/android/internal/util/IndentingPrintWriter;
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 4784
    const-string v5, "Dexopt state:"

    invoke-virtual {v2, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4785
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4787
    if-eqz v9, :cond_6

    .line 4788
    iget-object v5, v1, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v5, v9}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v5

    .line 4789
    .local v5, "targetPkgSetting":Lcom/android/server/pm/PackageSetting;
    if-eqz v5, :cond_5

    .line 4790
    invoke-static {v5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 4795
    .end local v5    # "targetPkgSetting":Lcom/android/server/pm/PackageSetting;
    .local v4, "pkgSettings":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/pm/PackageSetting;>;"
    goto :goto_4

    .line 4792
    .end local v4    # "pkgSettings":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/pm/PackageSetting;>;"
    .restart local v5    # "targetPkgSetting":Lcom/android/server/pm/PackageSetting;
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4793
    return-void

    .line 4796
    .end local v5    # "targetPkgSetting":Lcom/android/server/pm/PackageSetting;
    :cond_6
    iget-object v4, v1, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v4}, Lcom/android/server/pm/Settings;->getPackagesLocked()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/utils/WatchedArrayMap;->values()Ljava/util/Collection;

    move-result-object v4

    .line 4799
    .restart local v4    # "pkgSettings":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/pm/PackageSetting;>;"
    :goto_4
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/PackageSetting;

    .line 4800
    .local v6, "pkgSetting":Lcom/android/server/pm/PackageSetting;
    invoke-virtual {v6}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v7

    .line 4801
    .local v7, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-nez v7, :cond_7

    .line 4802
    goto :goto_5

    .line 4804
    :cond_7
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v6, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4805
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4806
    iget-object v11, v1, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->mPackageDexOptimizer:Lcom/android/server/pm/PackageDexOptimizer;

    iget-object v12, v1, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->mDexManager:Lcom/android/server/pm/dex/DexManager;

    .line 4807
    invoke-interface {v7}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/server/pm/dex/DexManager;->getPackageUseInfoOrDefault(Ljava/lang/String;)Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;

    move-result-object v12

    .line 4806
    invoke-virtual {v11, v2, v7, v6, v12}, Lcom/android/server/pm/PackageDexOptimizer;->dumpDexoptState(Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;)V

    .line 4808
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4809
    .end local v6    # "pkgSetting":Lcom/android/server/pm/PackageSetting;
    .end local v7    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    goto :goto_5

    .line 4810
    :cond_8
    move-object/from16 v3, p2

    move-object/from16 v2, p4

    goto/16 :goto_f

    .line 4763
    .end local v2    # "ipw":Lcom/android/internal/util/IndentingPrintWriter;
    .end local v4    # "pkgSettings":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/pm/PackageSetting;>;"
    :sswitch_3
    new-instance v0, Landroid/util/IndentingPrintWriter;

    invoke-direct {v0, v8}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;)V

    move-object v2, v0

    .line 4765
    .local v2, "writer":Landroid/util/IndentingPrintWriter;
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual/range {p3 .. p3}, Ljava/io/PrintWriter;->println()V

    .line 4767
    :cond_9
    const-string v0, "Domain verification status:"

    invoke-virtual {v2, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4768
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 4770
    :try_start_0
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    const/4 v3, -0x1

    .line 4771
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, v1, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->mSettings:Lcom/android/server/pm/Settings;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/android/server/pm/PackageManagerService$ComputerEngine$$ExternalSyntheticLambda1;

    invoke-direct {v5, v4}, Lcom/android/server/pm/PackageManagerService$ComputerEngine$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/Settings;)V

    .line 4770
    invoke-interface {v0, v2, v9, v3, v5}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;->printState(Landroid/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/function/Function;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4775
    goto :goto_6

    .line 4772
    :catch_0
    move-exception v0

    .line 4773
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "Failure printing domain verification information"

    invoke-virtual {v8, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4774
    const-string v4, "PackageManager"

    invoke-static {v4, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4776
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_6
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 4777
    move-object/from16 v3, p2

    move-object/from16 v2, p4

    goto/16 :goto_f

    .line 4664
    .end local v2    # "writer":Landroid/util/IndentingPrintWriter;
    :sswitch_4
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 4665
    invoke-virtual/range {p3 .. p3}, Ljava/io/PrintWriter;->println()V

    .line 4667
    :cond_a
    const-string v0, "Database versions:"

    invoke-virtual {v8, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4668
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->mSettings:Lcom/android/server/pm/Settings;

    new-instance v2, Lcom/android/internal/util/IndentingPrintWriter;

    invoke-direct {v2, v8, v6}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/android/server/pm/Settings;->dumpVersionLPr(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 4669
    move-object/from16 v3, p2

    move-object/from16 v2, p4

    goto/16 :goto_f

    .line 4728
    :sswitch_5
    invoke-virtual/range {p3 .. p3}, Ljava/io/PrintWriter;->flush()V

    .line 4729
    new-instance v0, Ljava/io/FileOutputStream;

    move-object/from16 v3, p2

    invoke-direct {v0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    move-object v4, v0

    .line 4730
    .local v4, "fout":Ljava/io/FileOutputStream;
    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-direct {v0, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v6, v0

    .line 4731
    .local v6, "str":Ljava/io/BufferedOutputStream;
    invoke-static {}, Landroid/util/Xml;->newFastSerializer()Landroid/util/TypedXmlSerializer;

    move-result-object v7

    .line 4733
    .local v7, "serializer":Landroid/util/TypedXmlSerializer;
    :try_start_1
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v6, v0}, Landroid/util/TypedXmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 4734
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-interface {v7, v5, v11}, Landroid/util/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 4735
    const-string v5, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-interface {v7, v5, v0}, Landroid/util/TypedXmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 4737
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->mSettings:Lcom/android/server/pm/Settings;

    const/4 v5, 0x0

    .line 4738
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/DumpState;->isFullPreferred()Z

    move-result v11

    .line 4737
    invoke-virtual {v0, v7, v5, v11}, Lcom/android/server/pm/Settings;->writePreferredActivitiesLPr(Landroid/util/TypedXmlSerializer;IZ)V

    .line 4739
    invoke-interface {v7}, Landroid/util/TypedXmlSerializer;->endDocument()V

    .line 4740
    invoke-interface {v7}, Landroid/util/TypedXmlSerializer;->flush()V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_7

    .line 4745
    :catch_1
    move-exception v0

    .line 4746
    .local v0, "e":Ljava/io/IOException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4748
    .end local v0    # "e":Ljava/io/IOException;
    move-object/from16 v2, p4

    goto/16 :goto_f

    .line 4743
    :catch_2
    move-exception v0

    .line 4744
    .local v0, "e":Ljava/lang/IllegalStateException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .end local v0    # "e":Ljava/lang/IllegalStateException;
    goto :goto_7

    .line 4741
    :catch_3
    move-exception v0

    .line 4742
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4747
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :goto_7
    move-object/from16 v2, p4

    goto/16 :goto_f

    .line 4723
    .end local v4    # "fout":Ljava/io/FileOutputStream;
    .end local v6    # "str":Ljava/io/BufferedOutputStream;
    .end local v7    # "serializer":Landroid/util/TypedXmlSerializer;
    :sswitch_6
    move-object/from16 v3, p2

    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->mSettings:Lcom/android/server/pm/Settings;

    move-object/from16 v2, p4

    invoke-virtual {v0, v8, v2, v9}, Lcom/android/server/pm/Settings;->dumpPreferred(Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;Ljava/lang/String;)V

    .line 4724
    goto/16 :goto_f

    .line 4674
    :sswitch_7
    move-object/from16 v3, p2

    move-object/from16 v2, p4

    const/4 v0, 0x0

    .line 4675
    .local v0, "printedHeader":Z
    iget-object v4, v1, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->mSharedLibraries:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v4}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v4

    .line 4676
    .local v4, "numSharedLibraries":I
    const/4 v5, 0x0

    .local v5, "index":I
    :goto_8
    if-ge v5, v4, :cond_14

    .line 4677
    iget-object v7, v1, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->mSharedLibraries:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v7, v5}, Lcom/android/server/utils/WatchedArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 4678
    .local v7, "libName":Ljava/lang/String;
    iget-object v11, v1, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->mSharedLibraries:Lcom/android/server/utils/WatchedArrayMap;

    .line 4679
    invoke-virtual {v11, v7}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/utils/WatchedLongSparseArray;

    .line 4680
    .local v11, "versionedLib":Lcom/android/server/utils/WatchedLongSparseArray;, "Lcom/android/server/utils/WatchedLongSparseArray<Landroid/content/pm/SharedLibraryInfo;>;"
    if-nez v11, :cond_b

    .line 4681
    goto/16 :goto_e

    .line 4683
    :cond_b
    invoke-virtual {v11}, Lcom/android/server/utils/WatchedLongSparseArray;->size()I

    move-result v12

    .line 4684
    .local v12, "versionCount":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_9
    if-ge v13, v12, :cond_13

    .line 4685
    invoke-virtual {v11, v13}, Lcom/android/server/utils/WatchedLongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/pm/SharedLibraryInfo;

    .line 4686
    .local v14, "libraryInfo":Landroid/content/pm/SharedLibraryInfo;
    if-nez v10, :cond_e

    .line 4687
    if-nez v0, :cond_d

    .line 4688
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    move-result v15

    if-eqz v15, :cond_c

    .line 4689
    invoke-virtual/range {p3 .. p3}, Ljava/io/PrintWriter;->println()V

    .line 4691
    :cond_c
    const-string v15, "Libraries:"

    invoke-virtual {v8, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4692
    const/4 v0, 0x1

    .line 4694
    :cond_d
    invoke-virtual {v8, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_a

    .line 4696
    :cond_e
    const-string v15, "lib,"

    invoke-virtual {v8, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4698
    :goto_a
    invoke-virtual {v14}, Landroid/content/pm/SharedLibraryInfo;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v8, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4699
    invoke-virtual {v14}, Landroid/content/pm/SharedLibraryInfo;->isStatic()Z

    move-result v15

    if-eqz v15, :cond_f

    .line 4700
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v16, v0

    .end local v0    # "printedHeader":Z
    .local v16, "printedHeader":Z
    const-string v0, " version="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Landroid/content/pm/SharedLibraryInfo;->getLongVersion()J

    move-result-wide v0

    invoke-virtual {v15, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_b

    .line 4699
    .end local v16    # "printedHeader":Z
    .restart local v0    # "printedHeader":Z
    :cond_f
    move/from16 v16, v0

    .line 4702
    .end local v0    # "printedHeader":Z
    .restart local v16    # "printedHeader":Z
    :goto_b
    if-nez v10, :cond_10

    .line 4703
    const-string v0, " -> "

    invoke-virtual {v8, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4705
    :cond_10
    invoke-virtual {v14}, Landroid/content/pm/SharedLibraryInfo;->getPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 4706
    invoke-virtual {v14}, Landroid/content/pm/SharedLibraryInfo;->isNative()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 4707
    const-string v0, " (so) "

    invoke-virtual {v8, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_c

    .line 4709
    :cond_11
    const-string v0, " (jar) "

    invoke-virtual {v8, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4711
    :goto_c
    invoke-virtual {v14}, Landroid/content/pm/SharedLibraryInfo;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_d

    .line 4713
    :cond_12
    const-string v0, " (apk) "

    invoke-virtual {v8, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4714
    invoke-virtual {v14}, Landroid/content/pm/SharedLibraryInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4716
    :goto_d
    invoke-virtual/range {p3 .. p3}, Ljava/io/PrintWriter;->println()V

    .line 4684
    .end local v14    # "libraryInfo":Landroid/content/pm/SharedLibraryInfo;
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v1, p0

    move/from16 v0, v16

    goto/16 :goto_9

    .line 4676
    .end local v7    # "libName":Ljava/lang/String;
    .end local v11    # "versionedLib":Lcom/android/server/utils/WatchedLongSparseArray;, "Lcom/android/server/utils/WatchedLongSparseArray<Landroid/content/pm/SharedLibraryInfo;>;"
    .end local v12    # "versionCount":I
    .end local v13    # "i":I
    .end local v16    # "printedHeader":Z
    .restart local v0    # "printedHeader":Z
    :cond_13
    :goto_e
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v1, p0

    goto/16 :goto_8

    .line 4719
    .end local v5    # "index":I
    :cond_14
    nop

    .line 4848
    .end local v0    # "printedHeader":Z
    .end local v4    # "numSharedLibraries":I
    :goto_f
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_7
        0x1000 -> :sswitch_6
        0x2000 -> :sswitch_5
        0x8000 -> :sswitch_4
        0x40000 -> :sswitch_3
        0x100000 -> :sswitch_2
        0x200000 -> :sswitch_1
        0x4000000 -> :sswitch_0
    .end sparse-switch
.end method

.method public final enforceCrossUserOrProfilePermission(IIZZLjava/lang/String;)V
    .locals 8
    .param p1, "callingUid"    # I
    .param p2, "userId"    # I
    .param p3, "requireFullPermission"    # Z
    .param p4, "checkShell"    # Z
    .param p5, "message"    # Ljava/lang/String;

    .line 4547
    if-ltz p2, :cond_3

    .line 4550
    if-eqz p4, :cond_0

    .line 4551
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->mInjector:Lcom/android/server/pm/PackageManagerService$Injector;

    .line 4552
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$Injector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v0

    .line 4551
    const-string v1, "no_debugging_features"

    invoke-static {v0, v1, p1, p2}, Lcom/android/server/pm/PackageManagerServiceUtils;->enforceShellRestriction(Lcom/android/server/pm/UserManagerInternal;Ljava/lang/String;II)V

    .line 4555
    :cond_0
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 4556
    .local v0, "callingUserId":I
    const/4 v7, 0x0

    move-object v2, p0

    move v3, p1

    move v4, v0

    move v5, p2

    move v6, p3

    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->hasCrossUserPermission(IIIZZ)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4558
    return-void

    .line 4560
    :cond_1
    invoke-virtual {p0, v0, p2}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->isSameProfileGroup(II)Z

    move-result v1

    .line 4561
    .local v1, "isSameProfileGroup":Z
    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->mContext:Landroid/content/Context;

    const/4 v3, -0x1

    .line 4566
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->getPackage(I)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 4561
    const-string v5, "android.permission.INTERACT_ACROSS_PROFILES"

    invoke-static {v2, v5, v3, p1, v4}, Landroid/content/PermissionChecker;->checkPermissionForPreflight(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    .line 4568
    return-void

    .line 4570
    :cond_2
    invoke-static {p1, p2, p5, p3, v1}, Lcom/android/server/pm/PackageManagerService;->access$3100(IILjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    .line 4572
    .local v2, "errorMessage":Ljava/lang/String;
    const-string v3, "PackageManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4573
    new-instance v3, Ljava/lang/SecurityException;

    invoke-direct {v3, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 4548
    .end local v0    # "callingUserId":I
    .end local v1    # "isSameProfileGroup":Z
    .end local v2    # "errorMessage":Ljava/lang/String;
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid userId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final enforceCrossUserPermission(IIZZLjava/lang/String;)V
    .locals 7
    .param p1, "callingUid"    # I
    .param p2, "userId"    # I
    .param p3, "requireFullPermission"    # Z
    .param p4, "checkShell"    # Z
    .param p5, "message"    # Ljava/lang/String;

    .line 4585
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->enforceCrossUserPermission(IIZZZLjava/lang/String;)V

    .line 4587
    return-void
.end method

.method public final enforceCrossUserPermission(IIZZZLjava/lang/String;)V
    .locals 8
    .param p1, "callingUid"    # I
    .param p2, "userId"    # I
    .param p3, "requireFullPermission"    # Z
    .param p4, "checkShell"    # Z
    .param p5, "requirePermissionWhenSameUser"    # Z
    .param p6, "message"    # Ljava/lang/String;

    .line 4603
    if-ltz p2, :cond_2

    .line 4606
    if-eqz p4, :cond_0

    .line 4607
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->mInjector:Lcom/android/server/pm/PackageManagerService$Injector;

    .line 4608
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$Injector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v0

    .line 4607
    const-string v1, "no_debugging_features"

    invoke-static {v0, v1, p1, p2}, Lcom/android/server/pm/PackageManagerServiceUtils;->enforceShellRestriction(Lcom/android/server/pm/UserManagerInternal;Ljava/lang/String;II)V

    .line 4611
    :cond_0
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 4612
    .local v0, "callingUserId":I
    move-object v2, p0

    move v3, p1

    move v4, v0

    move v5, p2

    move v6, p3

    move v7, p5

    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->hasCrossUserPermission(IIIZZ)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4615
    return-void

    .line 4617
    :cond_1
    invoke-static {p1, p2, p6, p3}, Lcom/android/server/pm/PackageManagerService;->access$3200(IILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 4619
    .local v1, "errorMessage":Ljava/lang/String;
    const-string v2, "PackageManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4620
    new-instance v2, Ljava/lang/SecurityException;

    invoke-direct {v2, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 4604
    .end local v0    # "callingUserId":I
    .end local v1    # "errorMessage":Ljava/lang/String;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid userId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public filterAppAccess(Lcom/android/server/pm/parsing/pkg/AndroidPackage;II)Z
    .locals 2
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "callingUid"    # I
    .param p3, "userId"    # I

    .line 4646
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->getPackageSetting(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    .line 4647
    .local v0, "ps":Lcom/android/server/pm/PackageSetting;
    invoke-virtual {p0, v0, p2, p3}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->shouldFilterApplicationLocked(Lcom/android/server/pm/PackageSetting;II)Z

    move-result v1

    return v1
.end method

.method public filterAppAccess(Ljava/lang/String;II)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "callingUid"    # I
    .param p3, "userId"    # I

    .line 4652
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->getPackageSetting(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    .line 4653
    .local v0, "ps":Lcom/android/server/pm/PackageSetting;
    invoke-virtual {p0, v0, p2, p3}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->shouldFilterApplicationLocked(Lcom/android/server/pm/PackageSetting;II)Z

    move-result v1

    return v1
.end method

.method protected filterCandidatesWithDomainPreferredActivitiesLPrBody(Landroid/content/Intent;ILjava/util/List;Lcom/android/server/pm/PackageManagerService$CrossProfileDomainInfo;IZ)Ljava/util/ArrayList;
    .locals 17
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

    .line 2757
    .local p3, "candidates":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move/from16 v3, p5

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2758
    .local v4, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2759
    .local v5, "matchAllList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2766
    .local v6, "undefinedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->isWebIntent()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-direct {v0, v3}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->areWebInstantAppsDisabled(I)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v7, 0x1

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    .line 2768
    .local v7, "blockInstant":Z
    :goto_0
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v8

    .line 2770
    .local v8, "count":I
    const/4 v9, 0x0

    .local v9, "n":I
    :goto_1
    if-ge v9, v8, :cond_4

    .line 2771
    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ResolveInfo;

    .line 2772
    .local v10, "info":Landroid/content/pm/ResolveInfo;
    if-eqz v7, :cond_1

    iget-boolean v11, v10, Landroid/content/pm/ResolveInfo;->isInstantAppAvailable:Z

    if-nez v11, :cond_3

    iget-object v11, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 2773
    invoke-virtual {v0, v11, v3}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->isInstantApp(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 2774
    goto :goto_2

    .line 2778
    :cond_1
    iget-boolean v11, v10, Landroid/content/pm/ResolveInfo;->handleAllWebDataURI:Z

    if-eqz v11, :cond_2

    .line 2779
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 2781
    :cond_2
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2770
    .end local v10    # "info":Landroid/content/pm/ResolveInfo;
    :cond_3
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 2786
    .end local v9    # "n":I
    :cond_4
    const/4 v9, 0x0

    .line 2788
    .local v9, "includeBrowser":Z
    invoke-static/range {p1 .. p2}, Lcom/android/server/pm/verify/domain/DomainVerificationUtils;->isDomainVerificationIntent(Landroid/content/Intent;I)Z

    move-result v10

    if-nez v10, :cond_6

    .line 2789
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2791
    if-eqz v2, :cond_5

    iget v10, v2, Lcom/android/server/pm/PackageManagerService$CrossProfileDomainInfo;->highestApprovalLevel:I

    if-lez v10, :cond_5

    .line 2793
    iget-object v10, v2, Lcom/android/server/pm/PackageManagerService$CrossProfileDomainInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2795
    :cond_5
    const/4 v9, 0x1

    move-object/from16 v11, p1

    goto :goto_3

    .line 2797
    :cond_6
    iget-object v10, v0, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    iget-object v11, v0, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->mSettings:Lcom/android/server/pm/Settings;

    .line 2799
    invoke-static {v11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v12, Lcom/android/server/pm/PackageManagerService$ComputerEngine$$ExternalSyntheticLambda1;

    invoke-direct {v12, v11}, Lcom/android/server/pm/PackageManagerService$ComputerEngine$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/Settings;)V

    .line 2798
    move-object/from16 v11, p1

    invoke-interface {v10, v11, v6, v3, v12}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;->filterToApprovedApp(Landroid/content/Intent;Ljava/util/List;ILjava/util/function/Function;)Landroid/util/Pair;

    move-result-object v10

    .line 2800
    .local v10, "infosAndLevel":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/List<Landroid/content/pm/ResolveInfo;>;Ljava/lang/Integer;>;"
    iget-object v12, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v12, Ljava/util/List;

    .line 2801
    .local v12, "approvedInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget-object v13, v10, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v13, Ljava/lang/Integer;

    .line 2804
    .local v13, "highestApproval":Ljava/lang/Integer;
    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_7

    .line 2805
    const/4 v9, 0x1

    .line 2806
    if-eqz v2, :cond_8

    iget v14, v2, Lcom/android/server/pm/PackageManagerService$CrossProfileDomainInfo;->highestApprovalLevel:I

    if-lez v14, :cond_8

    .line 2808
    iget-object v14, v2, Lcom/android/server/pm/PackageManagerService$CrossProfileDomainInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 2811
    :cond_7
    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2814
    if-eqz v2, :cond_8

    iget v14, v2, Lcom/android/server/pm/PackageManagerService$CrossProfileDomainInfo;->highestApprovalLevel:I

    .line 2815
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v15

    if-le v14, v15, :cond_8

    .line 2816
    iget-object v14, v2, Lcom/android/server/pm/PackageManagerService$CrossProfileDomainInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2821
    .end local v10    # "infosAndLevel":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/List<Landroid/content/pm/ResolveInfo;>;Ljava/lang/Integer;>;"
    .end local v12    # "approvedInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v13    # "highestApproval":Ljava/lang/Integer;
    :cond_8
    :goto_3
    if-eqz v9, :cond_12

    .line 2826
    const/high16 v10, 0x20000

    and-int v10, p2, v10

    if-eqz v10, :cond_9

    .line 2827
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-object/from16 v16, v6

    goto/16 :goto_7

    .line 2831
    :cond_9
    iget-object v10, v0, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->mDefaultAppProvider:Lcom/android/server/pm/DefaultAppProvider;

    invoke-virtual {v10, v3}, Lcom/android/server/pm/DefaultAppProvider;->getDefaultBrowser(I)Ljava/lang/String;

    move-result-object v10

    .line 2833
    .local v10, "defaultBrowserPackageName":Ljava/lang/String;
    const/4 v12, 0x0

    .line 2834
    .local v12, "maxMatchPrio":I
    const/4 v13, 0x0

    .line 2835
    .local v13, "defaultBrowserMatch":Landroid/content/pm/ResolveInfo;
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 2836
    .local v14, "numCandidates":I
    const/4 v15, 0x0

    .local v15, "n":I
    :goto_4
    const-string v0, "PackageManager"

    if-ge v15, v14, :cond_f

    .line 2837
    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v2, v16

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 2839
    .local v2, "info":Landroid/content/pm/ResolveInfo;
    iget v3, v2, Landroid/content/pm/ResolveInfo;->priority:I

    if-le v3, v12, :cond_a

    .line 2840
    iget v3, v2, Landroid/content/pm/ResolveInfo;->priority:I

    move v12, v3

    .line 2843
    :cond_a
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 2844
    if-eqz v13, :cond_b

    iget v3, v13, Landroid/content/pm/ResolveInfo;->priority:I

    move-object/from16 v16, v6

    .end local v6    # "undefinedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    .local v16, "undefinedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    iget v6, v2, Landroid/content/pm/ResolveInfo;->priority:I

    if-ge v3, v6, :cond_e

    goto :goto_5

    .end local v16    # "undefinedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    .restart local v6    # "undefinedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    :cond_b
    move-object/from16 v16, v6

    .line 2846
    .end local v6    # "undefinedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    .restart local v16    # "undefinedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    :goto_5
    if-eqz p6, :cond_c

    .line 2847
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Considering default browser match "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2849
    :cond_c
    move-object v0, v2

    move-object v13, v0

    .end local v13    # "defaultBrowserMatch":Landroid/content/pm/ResolveInfo;
    .local v0, "defaultBrowserMatch":Landroid/content/pm/ResolveInfo;
    goto :goto_6

    .line 2843
    .end local v0    # "defaultBrowserMatch":Landroid/content/pm/ResolveInfo;
    .end local v16    # "undefinedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    .restart local v6    # "undefinedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    .restart local v13    # "defaultBrowserMatch":Landroid/content/pm/ResolveInfo;
    :cond_d
    move-object/from16 v16, v6

    .line 2836
    .end local v2    # "info":Landroid/content/pm/ResolveInfo;
    .end local v6    # "undefinedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    .restart local v16    # "undefinedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    :cond_e
    :goto_6
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    move-object/from16 v2, p4

    move/from16 v3, p5

    move-object/from16 v6, v16

    goto :goto_4

    .end local v16    # "undefinedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    .restart local v6    # "undefinedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    :cond_f
    move-object/from16 v16, v6

    .line 2853
    .end local v6    # "undefinedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    .end local v15    # "n":I
    .restart local v16    # "undefinedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v13, :cond_11

    iget v2, v13, Landroid/content/pm/ResolveInfo;->priority:I

    if-lt v2, v12, :cond_11

    .line 2855
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_11

    .line 2857
    if-eqz p6, :cond_10

    .line 2858
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Default browser match "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2860
    :cond_10
    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 2862
    :cond_11
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2867
    .end local v10    # "defaultBrowserPackageName":Ljava/lang/String;
    .end local v12    # "maxMatchPrio":I
    .end local v13    # "defaultBrowserMatch":Landroid/content/pm/ResolveInfo;
    .end local v14    # "numCandidates":I
    :goto_7
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_13

    .line 2868
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_8

    .line 2821
    .end local v16    # "undefinedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    .restart local v6    # "undefinedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    :cond_12
    move-object/from16 v16, v6

    .line 2871
    .end local v6    # "undefinedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    .restart local v16    # "undefinedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    :cond_13
    :goto_8
    return-object v4
.end method

.method public final filterSharedLibPackageLPr(Lcom/android/server/pm/PackageSetting;III)Z
    .locals 18
    .param p1, "ps"    # Lcom/android/server/pm/PackageSetting;
    .param p2, "uid"    # I
    .param p3, "userId"    # I
    .param p4, "flags"    # I

    .line 3979
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/high16 v2, 0x4000000

    and-int v2, p4, v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 3981
    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    .line 3982
    .local v2, "appId":I
    const/16 v4, 0x3e8

    if-eq v2, v4, :cond_1

    const/16 v4, 0x7d0

    if-eq v2, v4, :cond_1

    if-nez v2, :cond_0

    move/from16 v5, p2

    goto :goto_0

    .line 3987
    :cond_0
    nop

    .line 3988
    const-string v4, "android.permission.INSTALL_PACKAGES"

    move/from16 v5, p2

    invoke-virtual {v0, v4, v5}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->checkUidPermission(Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_3

    .line 3989
    return v3

    .line 3982
    :cond_1
    move/from16 v5, p2

    .line 3984
    :goto_0
    return v3

    .line 3979
    .end local v2    # "appId":I
    :cond_2
    move/from16 v5, p2

    .line 3994
    :cond_3
    if-eqz v1, :cond_b

    iget-object v2, v1, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    if-eqz v2, :cond_b

    iget-object v2, v1, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    invoke-interface {v2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isStaticSharedLibrary()Z

    move-result v2

    if-nez v2, :cond_4

    move/from16 v6, p3

    goto :goto_3

    .line 3998
    :cond_4
    iget-object v2, v1, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 3999
    invoke-interface {v2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getStaticSharedLibName()Ljava/lang/String;

    move-result-object v2

    iget-object v4, v1, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    invoke-interface {v4}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getStaticSharedLibVersion()J

    move-result-wide v6

    .line 3998
    invoke-virtual {v0, v2, v6, v7}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->getSharedLibraryInfoLPr(Ljava/lang/String;J)Landroid/content/pm/SharedLibraryInfo;

    move-result-object v2

    .line 4000
    .local v2, "libraryInfo":Landroid/content/pm/SharedLibraryInfo;
    if-nez v2, :cond_5

    .line 4001
    return v3

    .line 4004
    :cond_5
    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v4

    move/from16 v6, p3

    invoke-static {v6, v4}, Landroid/os/UserHandle;->getUid(II)I

    move-result v4

    .line 4005
    .local v4, "resolvedUid":I
    invoke-virtual {v0, v4}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v7

    .line 4006
    .local v7, "uidPackageNames":[Ljava/lang/String;
    const/4 v8, 0x1

    if-nez v7, :cond_6

    .line 4007
    return v8

    .line 4010
    :cond_6
    array-length v9, v7

    move v10, v3

    :goto_1
    if-ge v10, v9, :cond_a

    aget-object v11, v7, v10

    .line 4011
    .local v11, "uidPackageName":Ljava/lang/String;
    iget-object v12, v1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 4012
    return v3

    .line 4014
    :cond_7
    iget-object v12, v0, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v12, v11}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v12

    .line 4015
    .local v12, "uidPs":Lcom/android/server/pm/PackageSetting;
    if-eqz v12, :cond_9

    .line 4016
    iget-object v13, v12, Lcom/android/server/pm/PackageSetting;->usesStaticLibraries:[Ljava/lang/String;

    .line 4017
    invoke-virtual {v2}, Landroid/content/pm/SharedLibraryInfo;->getName()Ljava/lang/String;

    move-result-object v14

    .line 4016
    invoke-static {v13, v14}, Lcom/android/internal/util/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v13

    .line 4018
    .local v13, "index":I
    if-gez v13, :cond_8

    .line 4019
    goto :goto_2

    .line 4021
    :cond_8
    iget-object v14, v12, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    invoke-interface {v14}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUsesStaticLibrariesVersions()[J

    move-result-object v14

    aget-wide v14, v14, v13

    .line 4022
    invoke-virtual {v2}, Landroid/content/pm/SharedLibraryInfo;->getLongVersion()J

    move-result-wide v16

    cmp-long v14, v14, v16

    if-nez v14, :cond_9

    .line 4023
    return v3

    .line 4010
    .end local v11    # "uidPackageName":Ljava/lang/String;
    .end local v12    # "uidPs":Lcom/android/server/pm/PackageSetting;
    .end local v13    # "index":I
    :cond_9
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 4027
    :cond_a
    return v8

    .line 3994
    .end local v2    # "libraryInfo":Landroid/content/pm/SharedLibraryInfo;
    .end local v4    # "resolvedUid":I
    .end local v7    # "uidPackageNames":[Ljava/lang/String;
    :cond_b
    move/from16 v6, p3

    .line 3995
    :goto_3
    return v3
.end method

.method public final generateApplicationInfoFromSettingsLPw(Ljava/lang/String;III)Landroid/content/pm/ApplicationInfo;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "filterCallingUid"    # I
    .param p4, "userId"    # I

    .line 2650
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, p4}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2651
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    .line 2652
    .local v0, "ps":Lcom/android/server/pm/PackageSetting;
    if-eqz v0, :cond_6

    .line 2653
    invoke-virtual {p0, v0, p3, p4, p2}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->filterSharedLibPackageLPr(Lcom/android/server/pm/PackageSetting;III)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2654
    return-object v1

    .line 2656
    :cond_1
    invoke-virtual {p0, v0, p3, p4}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->shouldFilterApplicationLocked(Lcom/android/server/pm/PackageSetting;II)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2657
    return-object v1

    .line 2659
    :cond_2
    iget-object v2, v0, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    if-nez v2, :cond_4

    .line 2660
    invoke-virtual {p0, v0, p2, p4}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->generatePackageInfo(Lcom/android/server/pm/PackageSetting;II)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 2661
    .local v2, "pInfo":Landroid/content/pm/PackageInfo;
    if-eqz v2, :cond_3

    .line 2662
    iget-object v1, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    return-object v1

    .line 2664
    :cond_3
    return-object v1

    .line 2666
    .end local v2    # "pInfo":Landroid/content/pm/PackageInfo;
    :cond_4
    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 2667
    invoke-virtual {v0, p4}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v2

    .line 2666
    invoke-static {v1, p2, v2, p4, v0}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateApplicationInfo(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ILandroid/content/pm/PackageUserState;ILcom/android/server/pm/PackageSetting;)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 2668
    .local v1, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v1, :cond_5

    .line 2669
    iget-object v2, v0, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    invoke-virtual {p0, v2}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->resolveExternalPackageNameLPr(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 2671
    :cond_5
    return-object v1

    .line 2673
    .end local v1    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_6
    return-object v1
.end method

.method public final generatePackageInfo(Lcom/android/server/pm/PackageSetting;II)Landroid/content/pm/PackageInfo;
    .locals 19
    .param p1, "ps"    # Lcom/android/server/pm/PackageSetting;
    .param p2, "flags"    # I
    .param p3, "userId"    # I

    .line 3303
    move-object/from16 v0, p0

    move-object/from16 v12, p1

    move/from16 v1, p2

    move/from16 v13, p3

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v2, v13}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v2

    const/4 v14, 0x0

    if-nez v2, :cond_0

    return-object v14

    .line 3304
    :cond_0
    if-nez v12, :cond_1

    .line 3305
    return-object v14

    .line 3307
    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v15

    .line 3314
    .local v15, "callingUid":I
    invoke-virtual {v0, v12, v15, v13}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->shouldFilterApplicationLocked(Lcom/android/server/pm/PackageSetting;II)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3315
    return-object v14

    .line 3318
    :cond_2
    and-int/lit16 v2, v1, 0x2000

    if-eqz v2, :cond_3

    .line 3319
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3320
    const/high16 v2, 0x400000

    or-int/2addr v1, v2

    move v11, v1

    .end local p2    # "flags":I
    .local v1, "flags":I
    goto :goto_0

    .line 3323
    .end local v1    # "flags":I
    .restart local p2    # "flags":I
    :cond_3
    move v11, v1

    .end local p2    # "flags":I
    .local v11, "flags":I
    :goto_0
    invoke-virtual {v12, v13}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v10

    .line 3324
    .local v10, "state":Landroid/content/pm/PackageUserState;
    iget-object v9, v12, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 3325
    .local v9, "p":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-eqz v9, :cond_8

    .line 3327
    and-int/lit16 v1, v11, 0x100

    if-nez v1, :cond_4

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$2900()[I

    move-result-object v1

    move-object v2, v1

    goto :goto_1

    .line 3328
    :cond_4
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    iget v2, v12, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-static {v13, v2}, Landroid/os/UserHandle;->getUid(II)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->getGidsForUid(I)[I

    move-result-object v1

    move-object v2, v1

    :goto_1
    nop

    .line 3330
    .local v2, "gids":[I
    and-int/lit16 v1, v11, 0x1000

    if-eqz v1, :cond_6

    .line 3331
    invoke-interface {v9}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_2

    .line 3332
    :cond_5
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    iget-object v3, v12, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-interface {v1, v3, v13}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->getGrantedPermissions(Ljava/lang/String;I)Ljava/util/Set;

    move-result-object v1

    move-object v8, v1

    goto :goto_3

    .line 3331
    :cond_6
    :goto_2
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    move-object v8, v1

    .line 3332
    :goto_3
    nop

    .line 3334
    .local v8, "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-wide v4, v12, Lcom/android/server/pm/PackageSetting;->firstInstallTime:J

    iget-wide v6, v12, Lcom/android/server/pm/PackageSetting;->lastUpdateTime:J

    move-object v1, v9

    move v3, v11

    move-object/from16 v16, v9

    .end local v9    # "p":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .local v16, "p":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    move-object v9, v10

    move-object/from16 v17, v10

    .end local v10    # "state":Landroid/content/pm/PackageUserState;
    .local v17, "state":Landroid/content/pm/PackageUserState;
    move/from16 v10, p3

    move/from16 v18, v11

    .end local v11    # "flags":I
    .local v18, "flags":I
    move-object/from16 v11, p1

    invoke-static/range {v1 .. v11}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generate(Lcom/android/server/pm/parsing/pkg/AndroidPackage;[IIJJLjava/util/Set;Landroid/content/pm/PackageUserState;ILcom/android/server/pm/PackageSetting;)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 3337
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    if-nez v1, :cond_7

    .line 3338
    return-object v14

    .line 3341
    :cond_7
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 3342
    move-object/from16 v4, v16

    .end local v16    # "p":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .local v4, "p":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    invoke-virtual {v0, v4}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->resolveExternalPackageNameLPr(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v5, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 3344
    return-object v1

    .line 3345
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v2    # "gids":[I
    .end local v4    # "p":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local v8    # "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v17    # "state":Landroid/content/pm/PackageUserState;
    .end local v18    # "flags":I
    .restart local v9    # "p":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .restart local v10    # "state":Landroid/content/pm/PackageUserState;
    .restart local v11    # "flags":I
    :cond_8
    move-object v4, v9

    move-object/from16 v17, v10

    move/from16 v18, v11

    .end local v9    # "p":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local v10    # "state":Landroid/content/pm/PackageUserState;
    .end local v11    # "flags":I
    .restart local v4    # "p":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .restart local v17    # "state":Landroid/content/pm/PackageUserState;
    .restart local v18    # "flags":I
    move/from16 v1, v18

    .end local v18    # "flags":I
    .local v1, "flags":I
    and-int/lit16 v2, v1, 0x2000

    if-eqz v2, :cond_a

    move-object/from16 v2, v17

    .end local v17    # "state":Landroid/content/pm/PackageUserState;
    .local v2, "state":Landroid/content/pm/PackageUserState;
    invoke-virtual {v2, v1}, Landroid/content/pm/PackageUserState;->isAvailable(I)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 3346
    new-instance v3, Landroid/content/pm/PackageInfo;

    invoke-direct {v3}, Landroid/content/pm/PackageInfo;-><init>()V

    .line 3347
    .local v3, "pi":Landroid/content/pm/PackageInfo;
    iget-object v5, v12, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    iput-object v5, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 3348
    iget-wide v5, v12, Lcom/android/server/pm/PackageSetting;->versionCode:J

    invoke-virtual {v3, v5, v6}, Landroid/content/pm/PackageInfo;->setLongVersionCode(J)V

    .line 3349
    iget-object v5, v12, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-eqz v5, :cond_9

    iget-object v5, v12, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iget-object v14, v5, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    :cond_9
    iput-object v14, v3, Landroid/content/pm/PackageInfo;->sharedUserId:Ljava/lang/String;

    .line 3350
    iget-wide v5, v12, Lcom/android/server/pm/PackageSetting;->firstInstallTime:J

    iput-wide v5, v3, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    .line 3351
    iget-wide v5, v12, Lcom/android/server/pm/PackageSetting;->lastUpdateTime:J

    iput-wide v5, v3, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    .line 3353
    new-instance v5, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v5}, Landroid/content/pm/ApplicationInfo;-><init>()V

    .line 3354
    .local v5, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v6, v12, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    iput-object v6, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 3355
    iget v6, v12, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-static {v13, v6}, Landroid/os/UserHandle;->getUid(II)I

    move-result v6

    iput v6, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 3356
    iget-object v6, v12, Lcom/android/server/pm/PackageSetting;->primaryCpuAbiString:Ljava/lang/String;

    iput-object v6, v5, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    .line 3357
    iget-object v6, v12, Lcom/android/server/pm/PackageSetting;->secondaryCpuAbiString:Ljava/lang/String;

    iput-object v6, v5, Landroid/content/pm/ApplicationInfo;->secondaryCpuAbi:Ljava/lang/String;

    .line 3358
    iget-wide v6, v12, Lcom/android/server/pm/PackageSetting;->versionCode:J

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/ApplicationInfo;->setVersionCode(J)V

    .line 3359
    iget v6, v12, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    iput v6, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 3360
    iget v6, v12, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    iput v6, v5, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 3361
    nop

    .line 3362
    invoke-static {v5, v1, v2, v13}, Landroid/content/pm/PackageParser;->generateApplicationInfo(Landroid/content/pm/ApplicationInfo;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iput-object v6, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 3366
    return-object v3

    .line 3345
    .end local v2    # "state":Landroid/content/pm/PackageUserState;
    .end local v3    # "pi":Landroid/content/pm/PackageInfo;
    .end local v5    # "ai":Landroid/content/pm/ApplicationInfo;
    .restart local v17    # "state":Landroid/content/pm/PackageUserState;
    :cond_a
    move-object/from16 v2, v17

    .line 3368
    .end local v17    # "state":Landroid/content/pm/PackageUserState;
    .restart local v2    # "state":Landroid/content/pm/PackageUserState;
    :cond_b
    return-object v14
.end method

.method public final getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;
    .locals 1
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "flags"    # I
    .param p3, "userId"    # I

    .line 2585
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->getActivityInfoInternal(Landroid/content/ComponentName;III)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    return-object v0
.end method

.method public final getActivityInfoInternal(Landroid/content/ComponentName;III)Landroid/content/pm/ActivityInfo;
    .locals 7
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "flags"    # I
    .param p3, "filterCallingUid"    # I
    .param p4, "userId"    # I

    .line 2596
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, p4}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2597
    :cond_0
    invoke-virtual {p0, p2, p4}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->updateFlagsForComponent(II)I

    move-result p2

    .line 2599
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, v0, p4}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->isRecentsAccessingChildProfiles(II)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2600
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "get activity info"

    move-object v1, p0

    move v3, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 2605
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->getActivityInfoInternalBody(Landroid/content/ComponentName;III)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    return-object v0
.end method

.method protected getActivityInfoInternalBody(Landroid/content/ComponentName;III)Landroid/content/pm/ActivityInfo;
    .locals 14
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "flags"    # I
    .param p3, "filterCallingUid"    # I
    .param p4, "userId"    # I

    .line 2610
    move-object v6, p0

    move-object v7, p1

    move/from16 v8, p2

    move/from16 v9, p4

    iget-object v0, v6, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->mComponentResolver:Lcom/android/server/pm/ComponentResolver;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/ComponentResolver;->getActivity(Landroid/content/ComponentName;)Landroid/content/pm/parsing/component/ParsedActivity;

    move-result-object v10

    .line 2614
    .local v10, "a":Landroid/content/pm/parsing/component/ParsedActivity;
    const/4 v11, 0x0

    if-nez v10, :cond_0

    move-object v0, v11

    goto :goto_0

    :cond_0
    iget-object v0, v6, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v10}, Landroid/content/pm/parsing/component/ParsedActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    :goto_0
    move-object v12, v0

    .line 2615
    .local v12, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-eqz v12, :cond_3

    iget-object v0, v6, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v0, v12, v10, v8, v9}, Lcom/android/server/pm/Settings;->isEnabledAndMatchLPr(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Landroid/content/pm/parsing/component/ParsedMainComponent;II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2616
    iget-object v0, v6, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v13

    .line 2617
    .local v13, "ps":Lcom/android/server/pm/PackageSetting;
    if-nez v13, :cond_1

    return-object v11

    .line 2618
    :cond_1
    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, v13

    move/from16 v2, p3

    move-object v3, p1

    move/from16 v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->shouldFilterApplicationLocked(Lcom/android/server/pm/PackageSetting;ILandroid/content/ComponentName;II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2620
    return-object v11

    .line 2622
    :cond_2
    nop

    .line 2623
    invoke-virtual {v13, v9}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v3

    .line 2622
    move-object v0, v12

    move-object v1, v10

    move/from16 v2, p2

    move/from16 v4, p4

    move-object v5, v13

    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateActivityInfo(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Landroid/content/pm/parsing/component/ParsedActivity;ILandroid/content/pm/PackageUserState;ILcom/android/server/pm/PackageSetting;)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    return-object v0

    .line 2625
    .end local v13    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->resolveComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2626
    iget-object v0, v6, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    new-instance v1, Landroid/content/pm/PackageUserState;

    invoke-direct {v1}, Landroid/content/pm/PackageUserState;-><init>()V

    invoke-static {v0, v8, v1, v9}, Landroid/content/pm/PackageParser;->generateActivityInfo(Landroid/content/pm/ActivityInfo;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    return-object v0

    .line 2629
    :cond_4
    return-object v11
.end method

.method public final getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "userId"    # I

    .line 2677
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->getApplicationInfoInternal(Ljava/lang/String;III)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    return-object v0
.end method

.method public final getApplicationInfoInternal(Ljava/lang/String;III)Landroid/content/pm/ApplicationInfo;
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "filterCallingUid"    # I
    .param p4, "userId"    # I

    .line 2688
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, p4}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2689
    :cond_0
    invoke-virtual {p0, p2, p4}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->updateFlagsForApplication(II)I

    move-result p2

    .line 2691
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, v0, p4}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->isRecentsAccessingChildProfiles(II)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2692
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "get application info"

    move-object v1, p0

    move v3, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 2697
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->getApplicationInfoInternalBody(Ljava/lang/String;III)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    return-object v0
.end method

.method protected getApplicationInfoInternalBody(Ljava/lang/String;III)Landroid/content/pm/ApplicationInfo;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "filterCallingUid"    # I
    .param p4, "userId"    # I

    .line 2704
    const-wide/16 v0, -0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->resolveInternalPackageNameLPr(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p1

    .line 2707
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 2711
    .local v0, "p":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 2712
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v2, p1}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v2

    .line 2713
    .local v2, "ps":Lcom/android/server/pm/PackageSetting;
    if-nez v2, :cond_0

    return-object v1

    .line 2714
    :cond_0
    invoke-virtual {p0, v2, p3, p4, p2}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->filterSharedLibPackageLPr(Lcom/android/server/pm/PackageSetting;III)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2715
    return-object v1

    .line 2717
    :cond_1
    invoke-virtual {p0, v2, p3, p4}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->shouldFilterApplicationLocked(Lcom/android/server/pm/PackageSetting;II)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2718
    return-object v1

    .line 2721
    :cond_2
    nop

    .line 2722
    invoke-virtual {v2, p4}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v1

    .line 2721
    invoke-static {v0, p2, v1, p4, v2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateApplicationInfo(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ILandroid/content/pm/PackageUserState;ILcom/android/server/pm/PackageSetting;)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 2723
    .local v1, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v1, :cond_3

    .line 2724
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->resolveExternalPackageNameLPr(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 2726
    :cond_3
    return-object v1

    .line 2728
    .end local v1    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_4
    const/high16 v2, 0x40000000    # 2.0f

    and-int/2addr v2, p2

    if-eqz v2, :cond_7

    .line 2733
    const/4 v2, 0x1

    .line 2734
    .local v2, "apexFlags":I
    const/high16 v3, 0x100000

    and-int/2addr v3, p2

    if-eqz v3, :cond_5

    .line 2735
    const/4 v2, 0x2

    .line 2737
    :cond_5
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->mApexManager:Lcom/android/server/pm/ApexManager;

    invoke-virtual {v3, p1, v2}, Lcom/android/server/pm/ApexManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 2738
    .local v3, "pi":Landroid/content/pm/PackageInfo;
    if-nez v3, :cond_6

    .line 2739
    return-object v1

    .line 2741
    :cond_6
    iget-object v1, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    return-object v1

    .line 2743
    .end local v2    # "apexFlags":I
    .end local v3    # "pi":Landroid/content/pm/PackageInfo;
    :cond_7
    const-string v2, "android"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    const-string v2, "system"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_0

    .line 2746
    :cond_8
    const v2, 0x402000

    and-int/2addr v2, p2

    if-eqz v2, :cond_9

    .line 2748
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->generateApplicationInfoFromSettingsLPw(Ljava/lang/String;III)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    return-object v1

    .line 2751
    :cond_9
    return-object v1

    .line 2744
    :cond_a
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->androidApplication()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    return-object v1
.end method

.method public final getCrossProfileDomainPreferredLpr(Landroid/content/Intent;Ljava/lang/String;III)Lcom/android/server/pm/PackageManagerService$CrossProfileDomainInfo;
    .locals 16
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p4, "sourceUserId"    # I
    .param p5, "parentUserId"    # I

    .line 2937
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    iget-object v5, v0, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    const-string v6, "allow_parent_profile_app_linking"

    invoke-virtual {v5, v6, v3}, Lcom/android/server/pm/UserManagerService;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_0

    .line 2939
    return-object v6

    .line 2941
    :cond_0
    iget-object v5, v0, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->mComponentResolver:Lcom/android/server/pm/ComponentResolver;

    move-object/from16 v7, p2

    invoke-virtual {v5, v1, v7, v2, v4}, Lcom/android/server/pm/ComponentResolver;->queryActivities(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v5

    .line 2944
    .local v5, "resultTargetUser":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v5, :cond_7

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    goto :goto_2

    .line 2947
    :cond_1
    const/4 v8, 0x0

    .line 2948
    .local v8, "result":Lcom/android/server/pm/PackageManagerService$CrossProfileDomainInfo;
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    .line 2949
    .local v9, "size":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    if-ge v10, v9, :cond_5

    .line 2950
    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/ResolveInfo;

    .line 2954
    .local v11, "riTargetUser":Landroid/content/pm/ResolveInfo;
    iget-boolean v12, v11, Landroid/content/pm/ResolveInfo;->handleAllWebDataURI:Z

    if-eqz v12, :cond_2

    .line 2955
    goto :goto_1

    .line 2957
    :cond_2
    iget-object v12, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 2958
    .local v12, "packageName":Ljava/lang/String;
    iget-object v13, v0, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v13, v12}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v13

    .line 2959
    .local v13, "ps":Lcom/android/server/pm/PackageSetting;
    if-nez v13, :cond_3

    .line 2960
    goto :goto_1

    .line 2963
    :cond_3
    iget-object v14, v0, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    .line 2964
    invoke-interface {v14, v13, v1, v2, v4}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;->approvalLevelForDomain(Lcom/android/server/pm/PackageSetting;Landroid/content/Intent;II)I

    move-result v14

    .line 2966
    .local v14, "approvalLevel":I
    if-nez v8, :cond_4

    .line 2967
    new-instance v15, Lcom/android/server/pm/PackageManagerService$CrossProfileDomainInfo;

    new-instance v6, Lcom/android/server/pm/WatchedIntentFilter;

    invoke-direct {v6}, Lcom/android/server/pm/WatchedIntentFilter;-><init>()V

    invoke-virtual {v0, v6, v3, v4}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->createForwardingResolveInfoUnchecked(Lcom/android/server/pm/WatchedIntentFilter;II)Landroid/content/pm/ResolveInfo;

    move-result-object v6

    invoke-direct {v15, v6, v14}, Lcom/android/server/pm/PackageManagerService$CrossProfileDomainInfo;-><init>(Landroid/content/pm/ResolveInfo;I)V

    move-object v6, v15

    move-object v8, v6

    .end local v8    # "result":Lcom/android/server/pm/PackageManagerService$CrossProfileDomainInfo;
    .local v6, "result":Lcom/android/server/pm/PackageManagerService$CrossProfileDomainInfo;
    goto :goto_1

    .line 2970
    .end local v6    # "result":Lcom/android/server/pm/PackageManagerService$CrossProfileDomainInfo;
    .restart local v8    # "result":Lcom/android/server/pm/PackageManagerService$CrossProfileDomainInfo;
    :cond_4
    iget v6, v8, Lcom/android/server/pm/PackageManagerService$CrossProfileDomainInfo;->highestApprovalLevel:I

    .line 2971
    invoke-static {v14, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, v8, Lcom/android/server/pm/PackageManagerService$CrossProfileDomainInfo;->highestApprovalLevel:I

    .line 2949
    .end local v11    # "riTargetUser":Landroid/content/pm/ResolveInfo;
    .end local v12    # "packageName":Ljava/lang/String;
    .end local v13    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v14    # "approvalLevel":I
    :goto_1
    add-int/lit8 v10, v10, 0x1

    const/4 v6, 0x0

    goto :goto_0

    .line 2974
    .end local v10    # "i":I
    :cond_5
    if-eqz v8, :cond_6

    iget v6, v8, Lcom/android/server/pm/PackageManagerService$CrossProfileDomainInfo;->highestApprovalLevel:I

    if-gtz v6, :cond_6

    .line 2976
    const/4 v6, 0x0

    return-object v6

    .line 2978
    :cond_6
    return-object v8

    .line 2945
    .end local v8    # "result":Lcom/android/server/pm/PackageManagerService$CrossProfileDomainInfo;
    .end local v9    # "size":I
    :cond_7
    :goto_2
    return-object v6
.end method

.method public final getDefaultHomeActivity(I)Landroid/content/ComponentName;
    .locals 8
    .param p1, "userId"    # I

    .line 2879
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2880
    .local v0, "allHomeCandidates":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual {p0, v0, p1}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->getHomeActivitiesAsUser(Ljava/util/List;I)Landroid/content/ComponentName;

    move-result-object v1

    .line 2881
    .local v1, "cn":Landroid/content/ComponentName;
    if-eqz v1, :cond_0

    .line 2882
    return-object v1

    .line 2886
    :cond_0
    const-string v2, "PackageManager"

    const-string v3, "Default package for ROLE_HOME is not set in RoleManager"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2890
    const/high16 v2, -0x80000000

    .line 2891
    .local v2, "lastPriority":I
    const/4 v3, 0x0

    .line 2892
    .local v3, "lastComponent":Landroid/content/ComponentName;
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    .line 2893
    .local v4, "size":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v4, :cond_3

    .line 2894
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 2895
    .local v6, "ri":Landroid/content/pm/ResolveInfo;
    iget v7, v6, Landroid/content/pm/ResolveInfo;->priority:I

    if-le v7, v2, :cond_1

    .line 2896
    iget-object v7, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v7}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    .line 2897
    iget v2, v6, Landroid/content/pm/ResolveInfo;->priority:I

    goto :goto_1

    .line 2898
    :cond_1
    iget v7, v6, Landroid/content/pm/ResolveInfo;->priority:I

    if-ne v7, v2, :cond_2

    .line 2900
    const/4 v3, 0x0

    .line 2893
    .end local v6    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_2
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2903
    .end local v5    # "i":I
    :cond_3
    return-object v3
.end method

.method public final getHomeActivitiesAsUser(Ljava/util/List;I)Landroid/content/ComponentName;
    .locals 9
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;I)",
            "Landroid/content/ComponentName;"
        }
    .end annotation

    .line 2908
    .local p1, "allHomeCandidates":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->getHomeIntent()Landroid/content/Intent;

    move-result-object v0

    .line 2909
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, 0x0

    const/16 v2, 0x80

    invoke-virtual {p0, v0, v1, v2, p2}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->queryIntentActivitiesInternal(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v2

    .line 2911
    .local v2, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 2912
    if-nez v2, :cond_0

    .line 2913
    return-object v1

    .line 2915
    :cond_0
    invoke-interface {p1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2917
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->mDefaultAppProvider:Lcom/android/server/pm/DefaultAppProvider;

    invoke-virtual {v3, p2}, Lcom/android/server/pm/DefaultAppProvider;->getDefaultHome(I)Ljava/lang/String;

    move-result-object v3

    .line 2918
    .local v3, "packageName":Ljava/lang/String;
    if-nez v3, :cond_1

    .line 2919
    return-object v1

    .line 2922
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    .line 2923
    .local v4, "resolveInfosSize":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v4, :cond_3

    .line 2924
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 2926
    .local v6, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v7, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v7, :cond_2

    iget-object v7, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v7, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 2928
    new-instance v1, Landroid/content/ComponentName;

    iget-object v7, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v8, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 2923
    .end local v6    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2932
    .end local v5    # "i":I
    :cond_3
    return-object v1
.end method

.method public final getHomeIntent()Landroid/content/Intent;
    .locals 2

    .line 2982
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2983
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2984
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2985
    return-object v0
.end method

.method public final getInstalledPackages(II)Landroid/content/pm/ParceledListSlice;
    .locals 7
    .param p1, "flags"    # I
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .line 3465
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 3466
    .local v6, "callingUid":I
    invoke-virtual {p0, v6}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3467
    invoke-static {}, Landroid/content/pm/ParceledListSlice;->emptyList()Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    return-object v0

    .line 3469
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, p2}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Landroid/content/pm/ParceledListSlice;->emptyList()Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    return-object v0

    .line 3470
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->updateFlagsForPackage(II)I

    move-result p1

    .line 3472
    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "get installed packages"

    move-object v0, p0

    move v1, v6

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 3475
    invoke-virtual {p0, p1, p2, v6}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->getInstalledPackagesBody(III)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    return-object v0
.end method

.method protected getInstalledPackagesBody(III)Landroid/content/pm/ParceledListSlice;
    .locals 8
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

    .line 3481
    const v0, 0x402000

    and-int/2addr v0, p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 3482
    .local v0, "listUninstalled":Z
    :goto_0
    const/high16 v3, 0x40000000    # 2.0f

    and-int/2addr v3, p1

    if-eqz v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    .line 3483
    .local v3, "listApex":Z
    :goto_1
    const/high16 v4, 0x200000

    and-int/2addr v4, p1

    if-eqz v4, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    .line 3486
    .local v1, "listFactory":Z
    :goto_2
    if-eqz v0, :cond_9

    .line 3487
    new-instance v2, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v4}, Lcom/android/server/pm/Settings;->getPackagesLocked()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 3488
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v4}, Lcom/android/server/pm/Settings;->getPackagesLocked()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/utils/WatchedArrayMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/PackageSetting;

    .line 3489
    .local v5, "ps":Lcom/android/server/pm/PackageSetting;
    if-eqz v1, :cond_4

    .line 3490
    invoke-virtual {v5}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v6

    if-nez v6, :cond_3

    .line 3491
    goto :goto_3

    .line 3493
    :cond_3
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v6, v5}, Lcom/android/server/pm/Settings;->getDisabledSystemPkgLPr(Lcom/android/server/pm/PackageSetting;)Lcom/android/server/pm/PackageSetting;

    move-result-object v6

    .line 3494
    .local v6, "psDisabled":Lcom/android/server/pm/PackageSetting;
    if-eqz v6, :cond_4

    .line 3495
    move-object v5, v6

    .line 3498
    .end local v6    # "psDisabled":Lcom/android/server/pm/PackageSetting;
    :cond_4
    invoke-virtual {p0, v5, p3, p2, p1}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->filterSharedLibPackageLPr(Lcom/android/server/pm/PackageSetting;III)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 3499
    goto :goto_3

    .line 3501
    :cond_5
    invoke-virtual {p0, v5, p3, p2}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->shouldFilterApplicationLocked(Lcom/android/server/pm/PackageSetting;II)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 3502
    goto :goto_3

    .line 3504
    :cond_6
    invoke-virtual {p0, v5, p1, p2}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->generatePackageInfo(Lcom/android/server/pm/PackageSetting;II)Landroid/content/pm/PackageInfo;

    move-result-object v6

    .line 3505
    .local v6, "pi":Landroid/content/pm/PackageInfo;
    if-eqz v6, :cond_7

    .line 3506
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3508
    .end local v5    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v6    # "pi":Landroid/content/pm/PackageInfo;
    :cond_7
    goto :goto_3

    :cond_8
    goto :goto_5

    .line 3510
    .end local v2    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    :cond_9
    new-instance v2, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v4}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 3511
    .restart local v2    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v4}, Lcom/android/server/utils/WatchedArrayMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 3512
    .local v5, "p":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    invoke-interface {v5}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->getPackageSetting(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v6

    .line 3513
    .local v6, "ps":Lcom/android/server/pm/PackageSetting;
    if-eqz v1, :cond_b

    .line 3514
    invoke-interface {v5}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isSystem()Z

    move-result v7

    if-nez v7, :cond_a

    .line 3515
    goto :goto_4

    .line 3517
    :cond_a
    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v7, v6}, Lcom/android/server/pm/Settings;->getDisabledSystemPkgLPr(Lcom/android/server/pm/PackageSetting;)Lcom/android/server/pm/PackageSetting;

    move-result-object v7

    .line 3518
    .local v7, "psDisabled":Lcom/android/server/pm/PackageSetting;
    if-eqz v7, :cond_b

    .line 3519
    move-object v6, v7

    .line 3522
    .end local v7    # "psDisabled":Lcom/android/server/pm/PackageSetting;
    :cond_b
    invoke-virtual {p0, v6, p3, p2, p1}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->filterSharedLibPackageLPr(Lcom/android/server/pm/PackageSetting;III)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 3523
    goto :goto_4

    .line 3525
    :cond_c
    invoke-virtual {p0, v6, p3, p2}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->shouldFilterApplicationLocked(Lcom/android/server/pm/PackageSetting;II)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 3526
    goto :goto_4

    .line 3528
    :cond_d
    invoke-virtual {p0, v6, p1, p2}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->generatePackageInfo(Lcom/android/server/pm/PackageSetting;II)Landroid/content/pm/PackageInfo;

    move-result-object v7

    .line 3529
    .local v7, "pi":Landroid/content/pm/PackageInfo;
    if-eqz v7, :cond_e

    .line 3530
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3532
    .end local v5    # "p":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local v6    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v7    # "pi":Landroid/content/pm/PackageInfo;
    :cond_e
    goto :goto_4

    .line 3534
    :cond_f
    :goto_5
    if-eqz v3, :cond_11

    .line 3535
    if-eqz v1, :cond_10

    .line 3536
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->mApexManager:Lcom/android/server/pm/ApexManager;

    invoke-virtual {v4}, Lcom/android/server/pm/ApexManager;->getFactoryPackages()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_6

    .line 3538
    :cond_10
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->mApexManager:Lcom/android/server/pm/ApexManager;

    invoke-virtual {v4}, Lcom/android/server/pm/ApexManager;->getActivePackages()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3540
    :goto_6
    if-eqz v0, :cond_11

    .line 3541
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->mApexManager:Lcom/android/server/pm/ApexManager;

    invoke-virtual {v4}, Lcom/android/server/pm/ApexManager;->getInactivePackages()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3544
    :cond_11
    new-instance v4, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v4, v2}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v4
.end method

.method public getInstantAppPackageName(I)Ljava/lang/String;
    .locals 5
    .param p1, "callingUid"    # I

    .line 3759
    invoke-static {p1}, Landroid/os/Process;->isIsolated(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3760
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->getIsolatedOwner(I)I

    move-result p1

    .line 3762
    :cond_0
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 3763
    .local v0, "appId":I
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/Settings;->getSettingLPr(I)Lcom/android/server/pm/SettingBase;

    move-result-object v1

    .line 3764
    .local v1, "obj":Ljava/lang/Object;
    instance-of v2, v1, Lcom/android/server/pm/PackageSetting;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 3765
    move-object v2, v1

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    .line 3766
    .local v2, "ps":Lcom/android/server/pm/PackageSetting;
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/server/pm/PackageSetting;->getInstantApp(I)Z

    move-result v4

    .line 3767
    .local v4, "isInstantApp":Z
    if-eqz v4, :cond_1

    iget-object v3, v2, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    invoke-interface {v3}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    :cond_1
    return-object v3

    .line 3769
    .end local v2    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v4    # "isInstantApp":Z
    :cond_2
    return-object v3
.end method

.method public final getMatchingCrossProfileIntentFilters(Landroid/content/Intent;Ljava/lang/String;I)Ljava/util/List;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "userId"    # I
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

    .line 2990
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v0, p3}, Lcom/android/server/pm/Settings;->getCrossProfileIntentResolver(I)Lcom/android/server/pm/CrossProfileIntentResolver;

    move-result-object v0

    .line 2991
    .local v0, "resolver":Lcom/android/server/pm/CrossProfileIntentResolver;
    if-eqz v0, :cond_0

    .line 2992
    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1, p3}, Lcom/android/server/pm/CrossProfileIntentResolver;->queryIntent(Landroid/content/Intent;Ljava/lang/String;ZI)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 2994
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getPackage(I)Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .locals 6
    .param p1, "uid"    # I

    .line 2639
    const/16 v0, 0x3e8

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->getPackagesForUidInternal(II)[Ljava/lang/String;

    move-result-object v0

    .line 2640
    .local v0, "packageNames":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 2641
    .local v1, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-nez v0, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    array-length v2, v0

    .line 2642
    .local v2, "numPackages":I
    :goto_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-nez v1, :cond_1

    if-ge v3, v2, :cond_1

    .line 2643
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    aget-object v5, v0, v3

    invoke-virtual {v4, v5}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v1, v4

    check-cast v1, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 2642
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2645
    .end local v3    # "i":I
    :cond_1
    return-object v1
.end method

.method public getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 2633
    const-wide/16 v0, -0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->resolveInternalPackageNameLPr(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p1

    .line 2635
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    return-object v0
.end method

.method public final getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "userId"    # I

    .line 3373
    nop

    .line 3374
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 3373
    const-wide/16 v2, -0x1

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->getPackageInfoInternal(Ljava/lang/String;JIII)Landroid/content/pm/PackageInfo;

    move-result-object v0

    return-object v0
.end method

.method public final getPackageInfoInternal(Ljava/lang/String;JIII)Landroid/content/pm/PackageInfo;
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "versionCode"    # J
    .param p4, "flags"    # I
    .param p5, "filterCallingUid"    # I
    .param p6, "userId"    # I

    .line 3385
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, p6}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 3386
    :cond_0
    invoke-virtual {p0, p4, p6}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->updateFlagsForPackage(II)I

    move-result p4

    .line 3387
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "get package info"

    move-object v0, p0

    move v2, p6

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 3390
    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->getPackageInfoInternalBody(Ljava/lang/String;JIII)Landroid/content/pm/PackageInfo;

    move-result-object v0

    return-object v0
.end method

.method protected getPackageInfoInternalBody(Ljava/lang/String;JIII)Landroid/content/pm/PackageInfo;
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "versionCode"    # J
    .param p4, "flags"    # I
    .param p5, "filterCallingUid"    # I
    .param p6, "userId"    # I

    .line 3398
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->resolveInternalPackageNameLPr(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p1

    .line 3400
    const/high16 v0, 0x200000

    and-int/2addr v0, p4

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3401
    .local v0, "matchFactoryOnly":Z
    :goto_0
    const/high16 v2, 0x40000000    # 2.0f

    const/4 v3, 0x0

    if-eqz v0, :cond_4

    .line 3403
    and-int v4, p4, v2

    if-eqz v4, :cond_1

    .line 3404
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->mApexManager:Lcom/android/server/pm/ApexManager;

    const/4 v2, 0x2

    invoke-virtual {v1, p1, v2}, Lcom/android/server/pm/ApexManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    return-object v1

    .line 3407
    :cond_1
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v4, p1}, Lcom/android/server/pm/Settings;->getDisabledSystemPkgLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v4

    .line 3408
    .local v4, "ps":Lcom/android/server/pm/PackageSetting;
    if-eqz v4, :cond_4

    .line 3409
    invoke-virtual {p0, v4, p5, p6, p4}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->filterSharedLibPackageLPr(Lcom/android/server/pm/PackageSetting;III)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3410
    return-object v3

    .line 3412
    :cond_2
    invoke-virtual {p0, v4, p5, p6}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->shouldFilterApplicationLocked(Lcom/android/server/pm/PackageSetting;II)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3413
    return-object v3

    .line 3415
    :cond_3
    invoke-virtual {p0, v4, p4, p6}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->generatePackageInfo(Lcom/android/server/pm/PackageSetting;II)Landroid/content/pm/PackageInfo;

    move-result-object v1

    return-object v1

    .line 3419
    .end local v4    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_4
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v4, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 3420
    .local v4, "p":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-eqz v0, :cond_5

    if-eqz v4, :cond_5

    invoke-interface {v4}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isSystem()Z

    move-result v5

    if-nez v5, :cond_5

    .line 3421
    return-object v3

    .line 3425
    :cond_5
    if-eqz v4, :cond_8

    .line 3426
    invoke-interface {v4}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->getPackageSetting(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v1

    .line 3427
    .local v1, "ps":Lcom/android/server/pm/PackageSetting;
    invoke-virtual {p0, v1, p5, p6, p4}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->filterSharedLibPackageLPr(Lcom/android/server/pm/PackageSetting;III)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 3428
    return-object v3

    .line 3430
    :cond_6
    if-eqz v1, :cond_7

    invoke-virtual {p0, v1, p5, p6}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->shouldFilterApplicationLocked(Lcom/android/server/pm/PackageSetting;II)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 3431
    return-object v3

    .line 3434
    :cond_7
    invoke-virtual {p0, v1, p4, p6}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->generatePackageInfo(Lcom/android/server/pm/PackageSetting;II)Landroid/content/pm/PackageInfo;

    move-result-object v2

    return-object v2

    .line 3436
    .end local v1    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_8
    if-nez v0, :cond_c

    const v5, 0x402000

    and-int/2addr v5, p4

    if-eqz v5, :cond_c

    .line 3437
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v1

    .line 3438
    .restart local v1    # "ps":Lcom/android/server/pm/PackageSetting;
    if-nez v1, :cond_9

    return-object v3

    .line 3439
    :cond_9
    invoke-virtual {p0, v1, p5, p6, p4}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->filterSharedLibPackageLPr(Lcom/android/server/pm/PackageSetting;III)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 3440
    return-object v3

    .line 3442
    :cond_a
    invoke-virtual {p0, v1, p5, p6}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->shouldFilterApplicationLocked(Lcom/android/server/pm/PackageSetting;II)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 3443
    return-object v3

    .line 3445
    :cond_b
    invoke-virtual {p0, v1, p4, p6}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->generatePackageInfo(Lcom/android/server/pm/PackageSetting;II)Landroid/content/pm/PackageInfo;

    move-result-object v2

    return-object v2

    .line 3447
    .end local v1    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_c
    and-int/2addr v2, p4

    if-eqz v2, :cond_d

    .line 3448
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->mApexManager:Lcom/android/server/pm/ApexManager;

    invoke-virtual {v2, p1, v1}, Lcom/android/server/pm/ApexManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    return-object v1

    .line 3450
    :cond_d
    return-object v3
.end method

.method public final getPackageSetting(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 3455
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->getPackageSettingInternal(Ljava/lang/String;I)Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    return-object v0
.end method

.method public getPackageSettingInternal(Ljava/lang/String;I)Lcom/android/server/pm/PackageSetting;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "callingUid"    # I

    .line 3459
    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->resolveInternalPackageNameInternalLocked(Ljava/lang/String;JI)Ljava/lang/String;

    move-result-object p1

    .line 3461
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    return-object v0
.end method

.method public getPackageUidInternal(Ljava/lang/String;III)I
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "userId"    # I
    .param p4, "callingUid"    # I

    .line 4403
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 4404
    .local v0, "p":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    const/4 v1, -0x1

    if-eqz v0, :cond_1

    invoke-static {v0, p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->isMatchForSystemOnly(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4405
    invoke-interface {v0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, p4}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->getPackageSettingInternal(Ljava/lang/String;I)Lcom/android/server/pm/PackageSetting;

    move-result-object v2

    .line 4406
    .local v2, "ps":Lcom/android/server/pm/PackageSetting;
    invoke-virtual {p0, v2, p4, p3}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->shouldFilterApplicationLocked(Lcom/android/server/pm/PackageSetting;II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4407
    return v1

    .line 4409
    :cond_0
    invoke-interface {v0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUid()I

    move-result v1

    invoke-static {p3, v1}, Landroid/os/UserHandle;->getUid(II)I

    move-result v1

    return v1

    .line 4411
    .end local v2    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_1
    const v2, 0x402000

    and-int/2addr v2, p2

    if-eqz v2, :cond_2

    .line 4412
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v2, p1}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v2

    .line 4413
    .restart local v2    # "ps":Lcom/android/server/pm/PackageSetting;
    if-eqz v2, :cond_2

    invoke-virtual {v2, p2}, Lcom/android/server/pm/PackageSetting;->isMatch(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4414
    invoke-virtual {p0, v2, p4, p3}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->shouldFilterApplicationLocked(Lcom/android/server/pm/PackageSetting;II)Z

    move-result v3

    if-nez v3, :cond_2

    .line 4415
    iget v1, v2, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-static {p3, v1}, Landroid/os/UserHandle;->getUid(II)I

    move-result v1

    return v1

    .line 4419
    .end local v2    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_2
    return v1
.end method

.method public final getPackagesForUid(I)[Ljava/lang/String;
    .locals 1
    .param p1, "uid"    # I

    .line 3881
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->getPackagesForUidInternal(II)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getPackagesForUidInternalBody(IIIZ)[Ljava/lang/String;
    .locals 9
    .param p1, "callingUid"    # I
    .param p2, "userId"    # I
    .param p3, "appId"    # I
    .param p4, "isCallerInstantApp"    # Z

    .line 3894
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v0, p3}, Lcom/android/server/pm/Settings;->getSettingLPr(I)Lcom/android/server/pm/SettingBase;

    move-result-object v0

    .line 3895
    .local v0, "obj":Ljava/lang/Object;
    instance-of v1, v0, Lcom/android/server/pm/SharedUserSetting;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 3896
    if-eqz p4, :cond_0

    .line 3897
    return-object v2

    .line 3899
    :cond_0
    move-object v1, v0

    check-cast v1, Lcom/android/server/pm/SharedUserSetting;

    .line 3900
    .local v1, "sus":Lcom/android/server/pm/SharedUserSetting;
    iget-object v2, v1, Lcom/android/server/pm/SharedUserSetting;->packages:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    .line 3901
    .local v2, "N":I
    new-array v3, v2, [Ljava/lang/String;

    .line 3902
    .local v3, "res":[Ljava/lang/String;
    const/4 v4, 0x0

    .line 3903
    .local v4, "i":I
    const/4 v5, 0x0

    .local v5, "index":I
    :goto_0
    if-ge v5, v2, :cond_2

    .line 3904
    iget-object v6, v1, Lcom/android/server/pm/SharedUserSetting;->packages:Landroid/util/ArraySet;

    invoke-virtual {v6, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/PackageSetting;

    .line 3905
    .local v6, "ps":Lcom/android/server/pm/PackageSetting;
    invoke-virtual {v6, p2}, Lcom/android/server/pm/PackageSetting;->getInstalled(I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 3906
    invoke-virtual {p0, v6, p1, p2}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->shouldFilterApplicationLocked(Lcom/android/server/pm/PackageSetting;II)Z

    move-result v7

    if-nez v7, :cond_1

    .line 3907
    add-int/lit8 v7, v4, 0x1

    .end local v4    # "i":I
    .local v7, "i":I
    iget-object v8, v6, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    aput-object v8, v3, v4

    move v4, v7

    .line 3903
    .end local v6    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v7    # "i":I
    .restart local v4    # "i":I
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 3910
    .end local v5    # "index":I
    :cond_2
    invoke-static {v3, v4}, Lcom/android/internal/util/ArrayUtils;->trimToSize([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    return-object v5

    .line 3911
    .end local v1    # "sus":Lcom/android/server/pm/SharedUserSetting;
    .end local v2    # "N":I
    .end local v3    # "res":[Ljava/lang/String;
    .end local v4    # "i":I
    :cond_3
    instance-of v1, v0, Lcom/android/server/pm/PackageSetting;

    if-eqz v1, :cond_4

    .line 3912
    move-object v1, v0

    check-cast v1, Lcom/android/server/pm/PackageSetting;

    .line 3913
    .local v1, "ps":Lcom/android/server/pm/PackageSetting;
    invoke-virtual {v1, p2}, Lcom/android/server/pm/PackageSetting;->getInstalled(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 3914
    invoke-virtual {p0, v1, p1, p2}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->shouldFilterApplicationLocked(Lcom/android/server/pm/PackageSetting;II)Z

    move-result v3

    if-nez v3, :cond_4

    .line 3915
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, v1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    aput-object v4, v2, v3

    return-object v2

    .line 3918
    .end local v1    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_4
    return-object v2
.end method

.method public final getProfileParent(I)Landroid/content/pm/UserInfo;
    .locals 3
    .param p1, "userId"    # I

    .line 3922
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3924
    .local v0, "identity":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v2, p1}, Lcom/android/server/pm/UserManagerService;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3926
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3924
    return-object v2

    .line 3926
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3927
    throw v2
.end method

.method public final getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;
    .locals 7
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "flags"    # I
    .param p3, "userId"    # I

    .line 3716
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, p3}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 3717
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 3718
    .local v0, "callingUid":I
    invoke-virtual {p0, p2, p3}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->updateFlagsForComponent(II)I

    move-result p2

    .line 3719
    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "get service info"

    move-object v1, p0

    move v2, v0

    move v3, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->enforceCrossUserOrProfilePermission(IIZZLjava/lang/String;)V

    .line 3722
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->getServiceInfoBody(Landroid/content/ComponentName;III)Landroid/content/pm/ServiceInfo;

    move-result-object v1

    return-object v1
.end method

.method protected getServiceInfoBody(Landroid/content/ComponentName;III)Landroid/content/pm/ServiceInfo;
    .locals 14
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "flags"    # I
    .param p3, "userId"    # I
    .param p4, "callingUid"    # I

    .line 3727
    move-object v6, p0

    move/from16 v7, p3

    iget-object v0, v6, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->mComponentResolver:Lcom/android/server/pm/ComponentResolver;

    move-object v8, p1

    invoke-virtual {v0, p1}, Lcom/android/server/pm/ComponentResolver;->getService(Landroid/content/ComponentName;)Landroid/content/pm/parsing/component/ParsedService;

    move-result-object v9

    .line 3730
    .local v9, "s":Landroid/content/pm/parsing/component/ParsedService;
    const/4 v10, 0x0

    if-nez v9, :cond_0

    .line 3731
    return-object v10

    .line 3734
    :cond_0
    iget-object v0, v6, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v9}, Landroid/content/pm/parsing/component/ParsedService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 3735
    .local v11, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    iget-object v0, v6, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->mSettings:Lcom/android/server/pm/Settings;

    move/from16 v12, p2

    invoke-virtual {v0, v11, v9, v12, v7}, Lcom/android/server/pm/Settings;->isEnabledAndMatchLPr(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Landroid/content/pm/parsing/component/ParsedMainComponent;II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3736
    iget-object v0, v6, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v13

    .line 3737
    .local v13, "ps":Lcom/android/server/pm/PackageSetting;
    if-nez v13, :cond_1

    return-object v10

    .line 3738
    :cond_1
    const/4 v4, 0x3

    move-object v0, p0

    move-object v1, v13

    move/from16 v2, p4

    move-object v3, p1

    move/from16 v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->shouldFilterApplicationLocked(Lcom/android/server/pm/PackageSetting;ILandroid/content/ComponentName;II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3740
    return-object v10

    .line 3742
    :cond_2
    nop

    .line 3743
    invoke-virtual {v13, v7}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v3

    .line 3742
    move-object v0, v11

    move-object v1, v9

    move/from16 v2, p2

    move/from16 v4, p3

    move-object v5, v13

    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateServiceInfo(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Landroid/content/pm/parsing/component/ParsedService;ILandroid/content/pm/PackageUserState;ILcom/android/server/pm/PackageSetting;)Landroid/content/pm/ServiceInfo;

    move-result-object v0

    return-object v0

    .line 3745
    .end local v13    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_3
    return-object v10
.end method

.method public final getSharedLibraryInfoLPr(Ljava/lang/String;J)Landroid/content/pm/SharedLibraryInfo;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "version"    # J

    .line 3750
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->mSharedLibraries:Lcom/android/server/utils/WatchedArrayMap;

    const/4 v1, 0x0

    invoke-static {p1, p2, p3, v0, v1}, Lcom/android/server/pm/PackageManagerService;->access$3000(Ljava/lang/String;JLjava/util/Map;Ljava/util/Map;)Landroid/content/pm/SharedLibraryInfo;

    move-result-object v0

    return-object v0
.end method

.method public getSigningDetails(I)Landroid/content/pm/PackageParser$SigningDetails;
    .locals 4
    .param p1, "uid"    # I

    .line 4632
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 4633
    .local v0, "appId":I
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/Settings;->getSettingLPr(I)Lcom/android/server/pm/SettingBase;

    move-result-object v1

    .line 4634
    .local v1, "obj":Ljava/lang/Object;
    if-eqz v1, :cond_1

    .line 4635
    instance-of v2, v1, Lcom/android/server/pm/SharedUserSetting;

    if-eqz v2, :cond_0

    .line 4636
    move-object v2, v1

    check-cast v2, Lcom/android/server/pm/SharedUserSetting;

    iget-object v2, v2, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v2, v2, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    return-object v2

    .line 4637
    :cond_0
    instance-of v2, v1, Lcom/android/server/pm/PackageSetting;

    if-eqz v2, :cond_1

    .line 4638
    move-object v2, v1

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    .line 4639
    .local v2, "ps":Lcom/android/server/pm/PackageSetting;
    iget-object v3, v2, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v3, v3, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    return-object v3

    .line 4642
    .end local v2    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_1
    sget-object v2, Landroid/content/pm/PackageParser$SigningDetails;->UNKNOWN:Landroid/content/pm/PackageParser$SigningDetails;

    return-object v2
.end method

.method public getSigningDetails(Ljava/lang/String;)Landroid/content/pm/PackageParser$SigningDetails;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 4624
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 4625
    .local v0, "p":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-nez v0, :cond_0

    .line 4626
    const/4 v1, 0x0

    return-object v1

    .line 4628
    :cond_0
    invoke-interface {v0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/PackageParser$SigningDetails;

    move-result-object v1

    return-object v1
.end method

.method public final getUsed()I
    .locals 1

    .line 2251
    iget v0, p0, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->mUsed:I

    return v0
.end method

.method protected instantAppInstallerActivity()Landroid/content/pm/ActivityInfo;
    .locals 1

    .line 2196
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->mLocalInstantAppInstallerActivity:Landroid/content/pm/ActivityInfo;

    return-object v0
.end method

.method public final isCallerSameApp(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 4060
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 4061
    .local v0, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-eqz v0, :cond_0

    .line 4062
    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    invoke-interface {v0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUid()I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 4061
    :goto_0
    return v1
.end method

.method public final isComponentVisibleToInstantApp(Landroid/content/ComponentName;)Z
    .locals 2
    .param p1, "component"    # Landroid/content/ComponentName;

    .line 4066
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->isComponentVisibleToInstantApp(Landroid/content/ComponentName;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4067
    return v0

    .line 4069
    :cond_0
    const/4 v1, 0x3

    invoke-virtual {p0, p1, v1}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->isComponentVisibleToInstantApp(Landroid/content/ComponentName;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4070
    return v0

    .line 4072
    :cond_1
    const/4 v1, 0x4

    invoke-virtual {p0, p1, v1}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->isComponentVisibleToInstantApp(Landroid/content/ComponentName;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4073
    return v0

    .line 4075
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public final isComponentVisibleToInstantApp(Landroid/content/ComponentName;I)Z
    .locals 6
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "type"    # I

    .line 4080
    const/high16 v0, 0x200000

    const/high16 v1, 0x100000

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p2, v2, :cond_4

    .line 4081
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->mComponentResolver:Lcom/android/server/pm/ComponentResolver;

    invoke-virtual {v4, p1}, Lcom/android/server/pm/ComponentResolver;->getActivity(Landroid/content/ComponentName;)Landroid/content/pm/parsing/component/ParsedActivity;

    move-result-object v4

    .line 4082
    .local v4, "activity":Landroid/content/pm/parsing/component/ParsedActivity;
    if-nez v4, :cond_0

    .line 4083
    return v3

    .line 4085
    :cond_0
    nop

    .line 4086
    invoke-virtual {v4}, Landroid/content/pm/parsing/component/ParsedActivity;->getFlags()I

    move-result v5

    and-int/2addr v1, v5

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v3

    .line 4087
    .local v1, "visibleToInstantApp":Z
    :goto_0
    nop

    .line 4088
    invoke-virtual {v4}, Landroid/content/pm/parsing/component/ParsedActivity;->getFlags()I

    move-result v5

    and-int/2addr v0, v5

    if-nez v0, :cond_2

    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v3

    .line 4090
    .local v0, "explicitlyVisibleToInstantApp":Z
    :goto_1
    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    move v2, v3

    :goto_2
    return v2

    .line 4091
    .end local v0    # "explicitlyVisibleToInstantApp":Z
    .end local v1    # "visibleToInstantApp":Z
    .end local v4    # "activity":Landroid/content/pm/parsing/component/ParsedActivity;
    :cond_4
    const/4 v4, 0x2

    if-ne p2, v4, :cond_9

    .line 4092
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->mComponentResolver:Lcom/android/server/pm/ComponentResolver;

    invoke-virtual {v4, p1}, Lcom/android/server/pm/ComponentResolver;->getReceiver(Landroid/content/ComponentName;)Landroid/content/pm/parsing/component/ParsedActivity;

    move-result-object v4

    .line 4093
    .restart local v4    # "activity":Landroid/content/pm/parsing/component/ParsedActivity;
    if-nez v4, :cond_5

    .line 4094
    return v3

    .line 4096
    :cond_5
    nop

    .line 4097
    invoke-virtual {v4}, Landroid/content/pm/parsing/component/ParsedActivity;->getFlags()I

    move-result v5

    and-int/2addr v1, v5

    if-eqz v1, :cond_6

    move v1, v2

    goto :goto_3

    :cond_6
    move v1, v3

    .line 4098
    .restart local v1    # "visibleToInstantApp":Z
    :goto_3
    nop

    .line 4099
    invoke-virtual {v4}, Landroid/content/pm/parsing/component/ParsedActivity;->getFlags()I

    move-result v5

    and-int/2addr v0, v5

    if-nez v0, :cond_7

    move v0, v2

    goto :goto_4

    :cond_7
    move v0, v3

    .line 4101
    .restart local v0    # "explicitlyVisibleToInstantApp":Z
    :goto_4
    if-eqz v1, :cond_8

    if-nez v0, :cond_8

    goto :goto_5

    :cond_8
    move v2, v3

    :goto_5
    return v2

    .line 4102
    .end local v0    # "explicitlyVisibleToInstantApp":Z
    .end local v1    # "visibleToInstantApp":Z
    .end local v4    # "activity":Landroid/content/pm/parsing/component/ParsedActivity;
    :cond_9
    const/4 v0, 0x3

    if-ne p2, v0, :cond_b

    .line 4103
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->mComponentResolver:Lcom/android/server/pm/ComponentResolver;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/ComponentResolver;->getService(Landroid/content/ComponentName;)Landroid/content/pm/parsing/component/ParsedService;

    move-result-object v0

    .line 4104
    .local v0, "service":Landroid/content/pm/parsing/component/ParsedService;
    if-eqz v0, :cond_a

    .line 4105
    invoke-virtual {v0}, Landroid/content/pm/parsing/component/ParsedService;->getFlags()I

    move-result v4

    and-int/2addr v1, v4

    if-eqz v1, :cond_a

    goto :goto_6

    :cond_a
    move v2, v3

    .line 4104
    :goto_6
    return v2

    .line 4106
    .end local v0    # "service":Landroid/content/pm/parsing/component/ParsedService;
    :cond_b
    const/4 v0, 0x4

    if-ne p2, v0, :cond_d

    .line 4107
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->mComponentResolver:Lcom/android/server/pm/ComponentResolver;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/ComponentResolver;->getProvider(Landroid/content/ComponentName;)Landroid/content/pm/parsing/component/ParsedProvider;

    move-result-object v0

    .line 4108
    .local v0, "provider":Landroid/content/pm/parsing/component/ParsedProvider;
    if-eqz v0, :cond_c

    .line 4109
    invoke-virtual {v0}, Landroid/content/pm/parsing/component/ParsedProvider;->getFlags()I

    move-result v4

    and-int/2addr v1, v4

    if-eqz v1, :cond_c

    goto :goto_7

    :cond_c
    move v2, v3

    .line 4108
    :goto_7
    return v2

    .line 4110
    .end local v0    # "provider":Landroid/content/pm/parsing/component/ParsedProvider;
    :cond_d
    if-nez p2, :cond_e

    .line 4111
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->isComponentVisibleToInstantApp(Landroid/content/ComponentName;)Z

    move-result v0

    return v0

    .line 4113
    :cond_e
    return v3
.end method

.method public final isImplicitImageCaptureIntentAndNotSetByDpcLocked(Landroid/content/Intent;ILjava/lang/String;I)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "userId"    # I
    .param p3, "resolvedType"    # Ljava/lang/String;
    .param p4, "flags"    # I

    .line 4128
    invoke-virtual {p1}, Landroid/content/Intent;->isImplicitImageCaptureIntent()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->isPersistentPreferredActivitySetByDpm(Landroid/content/Intent;ILjava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isInstantApp(Ljava/lang/String;I)Z
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 4133
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 4134
    .local v6, "callingUid":I
    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v5, "isInstantApp"

    move-object v0, p0

    move v1, v6

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 4137
    invoke-virtual {p0, p1, p2, v6}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->isInstantAppInternal(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public final isInstantAppInternal(Ljava/lang/String;II)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "callingUid"    # I

    .line 4145
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->isInstantAppInternalBody(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method protected isInstantAppInternalBody(Ljava/lang/String;II)Z
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "callingUid"    # I

    .line 4150
    invoke-static {p3}, Landroid/os/Process;->isIsolated(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4151
    invoke-direct {p0, p3}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->getIsolatedOwner(I)I

    move-result p3

    .line 4153
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    .line 4154
    .local v0, "ps":Lcom/android/server/pm/PackageSetting;
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 4156
    invoke-virtual {p0, p1, p3}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->isCallerSameApp(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 4157
    invoke-virtual {p0, p3, p2}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->canViewInstantApps(II)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->mInstantAppRegistry:Lcom/android/server/pm/InstantAppRegistry;

    .line 4159
    invoke-static {p3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    iget v4, v0, Lcom/android/server/pm/PackageSetting;->appId:I

    .line 4158
    invoke-virtual {v2, p2, v3, v4}, Lcom/android/server/pm/InstantAppRegistry;->isInstantAccessGranted(III)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    move v2, v1

    .line 4160
    .local v2, "returnAllowed":Z
    :goto_0
    if-eqz v2, :cond_3

    .line 4161
    invoke-virtual {v0, p2}, Lcom/android/server/pm/PackageSetting;->getInstantApp(I)Z

    move-result v1

    return v1

    .line 4163
    :cond_3
    return v1
.end method

.method protected isInstantAppResolutionAllowedBody(Landroid/content/Intent;Ljava/util/List;IZI)Z
    .locals 9
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

    .line 4209
    .local p2, "resolvedActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v0, 0x0

    if-nez p2, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    .line 4210
    .local v1, "count":I
    :goto_0
    const/4 v2, 0x0

    .local v2, "n":I
    :goto_1
    if-ge v2, v1, :cond_5

    .line 4211
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 4212
    .local v3, "info":Landroid/content/pm/ResolveInfo;
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 4213
    .local v4, "packageName":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v5, v4}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v5

    .line 4214
    .local v5, "ps":Lcom/android/server/pm/PackageSetting;
    if-eqz v5, :cond_4

    .line 4216
    iget-boolean v6, v3, Landroid/content/pm/ResolveInfo;->handleAllWebDataURI:Z

    const-string v7, "PackageManager"

    if-nez v6, :cond_2

    .line 4217
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    invoke-static {v6, v5, p1, p5, p3}, Lcom/android/server/pm/PackageManagerService;->access$2800(Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;Lcom/android/server/pm/PackageSetting;Landroid/content/Intent;II)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 4219
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$2700()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 4220
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DENY instant app; pkg: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", approved"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4223
    :cond_1
    return v0

    .line 4226
    :cond_2
    invoke-virtual {v5, p3}, Lcom/android/server/pm/PackageSetting;->getInstantApp(I)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 4227
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$2700()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 4228
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DENY instant app installed; pkg: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4231
    :cond_3
    return v0

    .line 4210
    .end local v3    # "info":Landroid/content/pm/ResolveInfo;
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 4236
    .end local v2    # "n":I
    :cond_5
    const/4 v0, 0x1

    return v0
.end method

.method public final isSameProfileGroup(II)Z
    .locals 3
    .param p1, "callerUserId"    # I
    .param p2, "userId"    # I

    .line 4276
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4278
    .local v0, "identity":J
    :try_start_0
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/android/server/pm/UserManagerService;->isSameProfileGroup(II)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4280
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4278
    return v2

    .line 4280
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4281
    throw v2
.end method

.method public final queryIntentActivitiesInternal(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p4, "userId"    # I
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

    .line 2355
    nop

    .line 2356
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 2355
    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v6, p4

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->queryIntentActivitiesInternal(Landroid/content/Intent;Ljava/lang/String;IIIIZZ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final queryIntentActivitiesInternal(Landroid/content/Intent;Ljava/lang/String;IIIIZZ)Ljava/util/List;
    .locals 22
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p4, "privateResolveFlags"    # I
    .param p5, "filterCallingUid"    # I
    .param p6, "userId"    # I
    .param p7, "resolveForStart"    # Z
    .param p8, "allowDynamicSplits"    # Z
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

    .line 2258
    move-object/from16 v10, p0

    move/from16 v11, p5

    move/from16 v12, p6

    iget-object v0, v10, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, v12}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 2259
    :cond_0
    invoke-virtual {v10, v11}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v13

    .line 2260
    .local v13, "instantAppPkgName":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "query intent activities"

    move-object/from16 v0, p0

    move/from16 v2, p6

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 2263
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v14

    .line 2264
    .local v14, "pkgName":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 2265
    .local v0, "comp":Landroid/content/ComponentName;
    if-nez v0, :cond_1

    .line 2266
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2267
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v1

    .line 2268
    .end local p1    # "intent":Landroid/content/Intent;
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    move-object v9, v0

    move-object v15, v1

    goto :goto_0

    .line 2272
    .end local v1    # "intent":Landroid/content/Intent;
    .restart local p1    # "intent":Landroid/content/Intent;
    :cond_1
    move-object/from16 v15, p1

    move-object v9, v0

    .end local v0    # "comp":Landroid/content/ComponentName;
    .end local p1    # "intent":Landroid/content/Intent;
    .local v9, "comp":Landroid/content/ComponentName;
    .local v15, "intent":Landroid/content/Intent;
    :goto_0
    const/4 v8, 0x1

    if-nez v9, :cond_3

    if-eqz v14, :cond_2

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    move v5, v8

    .line 2274
    :goto_2
    move-object/from16 v6, p2

    move/from16 v4, p3

    invoke-virtual {v10, v15, v12, v6, v4}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->isImplicitImageCaptureIntentAndNotSetByDpcLocked(Landroid/content/Intent;ILjava/lang/String;I)Z

    move-result v16

    .line 2272
    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p6

    move/from16 v3, p5

    move/from16 v4, p7

    move/from16 v6, v16

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->updateFlagsForResolve(IIIZZZ)I

    move-result v6

    .line 2276
    .end local p3    # "flags":I
    .local v6, "flags":I
    if-eqz v9, :cond_15

    .line 2277
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v8}, Ljava/util/ArrayList;-><init>(I)V

    move-object v5, v0

    .line 2278
    .local v5, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual {v10, v9, v6, v12}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object v4

    .line 2279
    .local v4, "ai":Landroid/content/pm/ActivityInfo;
    if-eqz v4, :cond_13

    .line 2284
    const/high16 v0, 0x800000

    and-int/2addr v0, v6

    if-eqz v0, :cond_4

    move v0, v8

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    .line 2286
    .local v0, "matchInstantApp":Z
    :goto_3
    const/high16 v1, 0x1000000

    and-int/2addr v1, v6

    if-eqz v1, :cond_5

    move v1, v8

    goto :goto_4

    :cond_5
    const/4 v1, 0x0

    .line 2288
    .local v1, "matchVisibleToInstantAppOnly":Z
    :goto_4
    const/high16 v2, 0x2000000

    and-int/2addr v2, v6

    if-eqz v2, :cond_6

    move v2, v8

    goto :goto_5

    :cond_6
    const/4 v2, 0x0

    .line 2290
    .local v2, "matchExplicitlyVisibleOnly":Z
    :goto_5
    if-eqz v13, :cond_7

    move v3, v8

    goto :goto_6

    :cond_7
    const/4 v3, 0x0

    .line 2292
    .local v3, "isCallerInstantApp":Z
    :goto_6
    nop

    .line 2293
    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 2294
    .local v7, "isTargetSameInstantApp":Z
    iget-object v8, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit16 v8, v8, 0x80

    if-eqz v8, :cond_8

    const/4 v8, 0x1

    goto :goto_7

    :cond_8
    const/4 v8, 0x0

    .line 2297
    .local v8, "isTargetInstantApp":Z
    :goto_7
    move/from16 p3, v6

    .end local v6    # "flags":I
    .restart local p3    # "flags":I
    iget v6, v4, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v17, 0x100000

    and-int v6, v6, v17

    if-eqz v6, :cond_9

    const/4 v6, 0x1

    goto :goto_8

    :cond_9
    const/4 v6, 0x0

    .line 2299
    .local v6, "isTargetVisibleToInstantApp":Z
    :goto_8
    if-eqz v6, :cond_a

    move-object/from16 v17, v9

    .end local v9    # "comp":Landroid/content/ComponentName;
    .local v17, "comp":Landroid/content/ComponentName;
    iget v9, v4, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v18, 0x200000

    and-int v9, v9, v18

    if-nez v9, :cond_b

    const/4 v9, 0x1

    goto :goto_9

    .end local v17    # "comp":Landroid/content/ComponentName;
    .restart local v9    # "comp":Landroid/content/ComponentName;
    :cond_a
    move-object/from16 v17, v9

    .end local v9    # "comp":Landroid/content/ComponentName;
    .restart local v17    # "comp":Landroid/content/ComponentName;
    :cond_b
    const/4 v9, 0x0

    .line 2303
    .local v9, "isTargetExplicitlyVisibleToInstantApp":Z
    :goto_9
    if-eqz v6, :cond_d

    if-eqz v2, :cond_c

    if-nez v9, :cond_c

    goto :goto_a

    :cond_c
    const/16 v18, 0x0

    goto :goto_b

    :cond_d
    :goto_a
    const/16 v18, 0x1

    .line 2307
    .local v18, "isTargetHiddenFromInstantApp":Z
    :goto_b
    if-nez v7, :cond_10

    if-nez v0, :cond_e

    if-nez v3, :cond_e

    if-nez v8, :cond_f

    :cond_e
    if-eqz v1, :cond_10

    if-eqz v3, :cond_10

    if-eqz v18, :cond_10

    :cond_f
    const/16 v19, 0x1

    goto :goto_c

    :cond_10
    const/16 v19, 0x0

    .line 2312
    .local v19, "blockInstantResolution":Z
    :goto_c
    if-nez p7, :cond_11

    if-nez v8, :cond_11

    if-nez v3, :cond_11

    move/from16 v20, v0

    .end local v0    # "matchInstantApp":Z
    .local v20, "matchInstantApp":Z
    iget-object v0, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move/from16 v21, v1

    .end local v1    # "matchVisibleToInstantAppOnly":Z
    .local v21, "matchVisibleToInstantAppOnly":Z
    const/16 v1, 0x3e8

    .line 2315
    invoke-virtual {v10, v0, v1}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->getPackageSettingInternal(Ljava/lang/String;I)Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    .line 2314
    invoke-virtual {v10, v0, v11, v12}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->shouldFilterApplicationLocked(Lcom/android/server/pm/PackageSetting;II)Z

    move-result v0

    if-eqz v0, :cond_12

    const/16 v16, 0x1

    goto :goto_d

    .line 2312
    .end local v20    # "matchInstantApp":Z
    .end local v21    # "matchVisibleToInstantAppOnly":Z
    .restart local v0    # "matchInstantApp":Z
    .restart local v1    # "matchVisibleToInstantAppOnly":Z
    :cond_11
    move/from16 v20, v0

    move/from16 v21, v1

    .line 2314
    .end local v0    # "matchInstantApp":Z
    .end local v1    # "matchVisibleToInstantAppOnly":Z
    .restart local v20    # "matchInstantApp":Z
    .restart local v21    # "matchVisibleToInstantAppOnly":Z
    :cond_12
    const/16 v16, 0x0

    :goto_d
    move/from16 v0, v16

    .line 2317
    .local v0, "blockNormalResolution":Z
    if-nez v19, :cond_14

    if-nez v0, :cond_14

    .line 2318
    new-instance v1, Landroid/content/pm/ResolveInfo;

    invoke-direct {v1}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 2319
    .local v1, "ri":Landroid/content/pm/ResolveInfo;
    iput-object v4, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 2320
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 2279
    .end local v0    # "blockNormalResolution":Z
    .end local v1    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v2    # "matchExplicitlyVisibleOnly":Z
    .end local v3    # "isCallerInstantApp":Z
    .end local v7    # "isTargetSameInstantApp":Z
    .end local v8    # "isTargetInstantApp":Z
    .end local v17    # "comp":Landroid/content/ComponentName;
    .end local v18    # "isTargetHiddenFromInstantApp":Z
    .end local v19    # "blockInstantResolution":Z
    .end local v20    # "matchInstantApp":Z
    .end local v21    # "matchVisibleToInstantAppOnly":Z
    .end local p3    # "flags":I
    .local v6, "flags":I
    .local v9, "comp":Landroid/content/ComponentName;
    :cond_13
    move/from16 p3, v6

    move-object/from16 v17, v9

    .line 2324
    .end local v6    # "flags":I
    .end local v9    # "comp":Landroid/content/ComponentName;
    .restart local v17    # "comp":Landroid/content/ComponentName;
    .restart local p3    # "flags":I
    :cond_14
    :goto_e
    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v13

    move/from16 v3, p8

    move-object v8, v4

    .end local v4    # "ai":Landroid/content/pm/ActivityInfo;
    .local v8, "ai":Landroid/content/pm/ActivityInfo;
    move/from16 v4, p5

    move-object v9, v5

    .end local v5    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .local v9, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    move/from16 v5, p7

    move/from16 v16, p3

    .end local p3    # "flags":I
    .local v16, "flags":I
    move/from16 v6, p6

    move-object v7, v15

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->applyPostResolutionFilter(Ljava/util/List;Ljava/lang/String;ZIZILandroid/content/Intent;)Ljava/util/List;

    move-result-object v0

    .line 2328
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    return-object v0

    .line 2331
    .end local v0    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v8    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v16    # "flags":I
    .end local v17    # "comp":Landroid/content/ComponentName;
    .restart local v6    # "flags":I
    .local v9, "comp":Landroid/content/ComponentName;
    :cond_15
    move/from16 v16, v6

    move-object/from16 v17, v9

    .line 2332
    .end local v6    # "flags":I
    .end local v9    # "comp":Landroid/content/ComponentName;
    .restart local v16    # "flags":I
    .restart local v17    # "comp":Landroid/content/ComponentName;
    move-object/from16 v0, p0

    move-object v1, v15

    move-object/from16 v2, p2

    move/from16 v3, v16

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move-object v8, v14

    move-object v9, v13

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->queryIntentActivitiesInternalBody(Landroid/content/Intent;Ljava/lang/String;IIIZZLjava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/PackageManagerService$QueryIntentActivitiesResult;

    move-result-object v8

    .line 2335
    .local v8, "lockedResult":Lcom/android/server/pm/PackageManagerService$QueryIntentActivitiesResult;
    iget-object v0, v8, Lcom/android/server/pm/PackageManagerService$QueryIntentActivitiesResult;->answer:Ljava/util/List;

    if-eqz v0, :cond_16

    .line 2336
    iget-object v0, v8, Lcom/android/server/pm/PackageManagerService$QueryIntentActivitiesResult;->answer:Ljava/util/List;

    return-object v0

    .line 2339
    :cond_16
    iget-boolean v0, v8, Lcom/android/server/pm/PackageManagerService$QueryIntentActivitiesResult;->addInstant:Z

    if-eqz v0, :cond_17

    .line 2340
    invoke-virtual {v10, v11}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v9

    .line 2341
    .local v9, "callingPkgName":Ljava/lang/String;
    invoke-virtual {v10, v9, v12}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->isInstantApp(Ljava/lang/String;I)Z

    move-result v18

    .line 2342
    .local v18, "isRequesterInstantApp":Z
    iget-object v1, v8, Lcom/android/server/pm/PackageManagerService$QueryIntentActivitiesResult;->result:Ljava/util/List;

    move-object/from16 v0, p0

    move-object v2, v15

    move-object/from16 v3, p2

    move/from16 v4, v16

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, v18

    invoke-direct/range {v0 .. v7}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->maybeAddInstantAppInstaller(Ljava/util/List;Landroid/content/Intent;Ljava/lang/String;IIZZ)Ljava/util/List;

    move-result-object v0

    iput-object v0, v8, Lcom/android/server/pm/PackageManagerService$QueryIntentActivitiesResult;->result:Ljava/util/List;

    .line 2345
    .end local v9    # "callingPkgName":Ljava/lang/String;
    .end local v18    # "isRequesterInstantApp":Z
    :cond_17
    iget-boolean v0, v8, Lcom/android/server/pm/PackageManagerService$QueryIntentActivitiesResult;->sortResult:Z

    if-eqz v0, :cond_18

    .line 2346
    iget-object v0, v8, Lcom/android/server/pm/PackageManagerService$QueryIntentActivitiesResult;->result:Ljava/util/List;

    sget-object v1, Lcom/android/server/pm/ComponentResolver;->RESOLVE_PRIORITY_SORTER:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2348
    :cond_18
    iget-object v1, v8, Lcom/android/server/pm/PackageManagerService$QueryIntentActivitiesResult;->result:Ljava/util/List;

    move-object/from16 v0, p0

    move-object v2, v13

    move/from16 v3, p8

    move/from16 v4, p5

    move/from16 v5, p7

    move/from16 v6, p6

    move-object v7, v15

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->applyPostResolutionFilter(Ljava/util/List;Ljava/lang/String;ZIZILandroid/content/Intent;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public queryIntentActivitiesInternalBody(Landroid/content/Intent;Ljava/lang/String;IIIZZLjava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/PackageManagerService$QueryIntentActivitiesResult;
    .locals 23
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p4, "filterCallingUid"    # I
    .param p5, "userId"    # I
    .param p6, "resolveForStart"    # Z
    .param p7, "allowDynamicSplits"    # Z
    .param p8, "pkgName"    # Ljava/lang/String;
    .param p9, "instantAppPkgName"    # Ljava/lang/String;

    .line 2456
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move/from16 v11, p5

    move-object/from16 v12, p8

    const/4 v13, 0x0

    .line 2457
    .local v13, "sortResult":Z
    const/4 v14, 0x0

    .line 2458
    .local v14, "addInstant":Z
    const/4 v15, 0x0

    .line 2459
    .local v15, "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v12, :cond_8

    .line 2460
    nop

    .line 2461
    invoke-virtual {v8, v9, v10, v11}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->getMatchingCrossProfileIntentFilters(Landroid/content/Intent;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v16

    .line 2463
    .local v16, "matchingFilters":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/CrossProfileIntentFilter;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->querySkipCurrentProfileIntents(Ljava/util/List;Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object v7

    .line 2465
    .local v7, "skipProfileInfo":Landroid/content/pm/ResolveInfo;
    const/4 v6, 0x1

    if-eqz v7, :cond_0

    .line 2466
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v6}, Ljava/util/ArrayList;-><init>(I)V

    move-object v6, v0

    .line 2467
    .local v6, "xpResult":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2468
    new-instance v5, Lcom/android/server/pm/PackageManagerService$QueryIntentActivitiesResult;

    .line 2470
    invoke-direct {v8, v6, v11}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->filterIfNotSystemUser(Ljava/util/List;I)Ljava/util/List;

    move-result-object v1

    .line 2469
    move-object/from16 v0, p0

    move-object/from16 v2, p9

    move/from16 v3, p7

    move/from16 v4, p4

    move/from16 v17, v13

    move-object v13, v5

    .end local v13    # "sortResult":Z
    .local v17, "sortResult":Z
    move/from16 v5, p6

    move-object/from16 v18, v6

    .end local v6    # "xpResult":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .local v18, "xpResult":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    move/from16 v6, p5

    move-object/from16 v19, v7

    .end local v7    # "skipProfileInfo":Landroid/content/pm/ResolveInfo;
    .local v19, "skipProfileInfo":Landroid/content/pm/ResolveInfo;
    move-object/from16 v7, p1

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->applyPostResolutionFilter(Ljava/util/List;Ljava/lang/String;ZIZILandroid/content/Intent;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v13, v0}, Lcom/android/server/pm/PackageManagerService$QueryIntentActivitiesResult;-><init>(Ljava/util/List;)V

    .line 2468
    return-object v13

    .line 2476
    .end local v17    # "sortResult":Z
    .end local v18    # "xpResult":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v19    # "skipProfileInfo":Landroid/content/pm/ResolveInfo;
    .restart local v7    # "skipProfileInfo":Landroid/content/pm/ResolveInfo;
    .restart local v13    # "sortResult":Z
    :cond_0
    move-object/from16 v19, v7

    move/from16 v17, v13

    .end local v7    # "skipProfileInfo":Landroid/content/pm/ResolveInfo;
    .end local v13    # "sortResult":Z
    .restart local v17    # "sortResult":Z
    .restart local v19    # "skipProfileInfo":Landroid/content/pm/ResolveInfo;
    iget-object v0, v8, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->mComponentResolver:Lcom/android/server/pm/ComponentResolver;

    move/from16 v13, p3

    invoke-virtual {v0, v9, v10, v13, v11}, Lcom/android/server/pm/ComponentResolver;->queryActivities(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    invoke-direct {v8, v0, v11}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->filterIfNotSystemUser(Ljava/util/List;I)Ljava/util/List;

    move-result-object v15

    .line 2478
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v15

    move/from16 v3, p5

    move/from16 v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->isInstantAppResolutionAllowed(Landroid/content/Intent;Ljava/util/List;IZI)Z

    move-result v14

    .line 2481
    invoke-direct {v8, v15}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->hasNonNegativePriority(Ljava/util/List;)Z

    move-result v18

    .line 2482
    .local v18, "hasNonNegativePriorityResult":Z
    move-object/from16 v1, v16

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p5

    move v7, v6

    move/from16 v6, v18

    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->queryCrossProfileIntents(Ljava/util/List;Landroid/content/Intent;Ljava/lang/String;IIZ)Lcom/android/server/pm/PackageManagerService$CrossProfileDomainInfo;

    move-result-object v6

    .line 2485
    .local v6, "specificXpInfo":Lcom/android/server/pm/PackageManagerService$CrossProfileDomainInfo;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->hasWebURI()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2486
    const/16 v20, 0x0

    .line 2487
    .local v20, "generalXpInfo":Lcom/android/server/pm/PackageManagerService$CrossProfileDomainInfo;
    invoke-virtual {v8, v11}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v5

    .line 2488
    .local v5, "parent":Landroid/content/pm/UserInfo;
    if-eqz v5, :cond_1

    .line 2489
    iget v4, v5, Landroid/content/pm/UserInfo;->id:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v21, v4

    move/from16 v4, p5

    move-object/from16 v22, v5

    .end local v5    # "parent":Landroid/content/pm/UserInfo;
    .local v22, "parent":Landroid/content/pm/UserInfo;
    move/from16 v5, v21

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->getCrossProfileDomainPreferredLpr(Landroid/content/Intent;Ljava/lang/String;III)Lcom/android/server/pm/PackageManagerService$CrossProfileDomainInfo;

    move-result-object v20

    goto :goto_0

    .line 2488
    .end local v22    # "parent":Landroid/content/pm/UserInfo;
    .restart local v5    # "parent":Landroid/content/pm/UserInfo;
    :cond_1
    move-object/from16 v22, v5

    .line 2496
    .end local v5    # "parent":Landroid/content/pm/UserInfo;
    .restart local v22    # "parent":Landroid/content/pm/UserInfo;
    :goto_0
    if-eqz v20, :cond_2

    move-object/from16 v0, v20

    goto :goto_1

    :cond_2
    move-object v0, v6

    :goto_1
    move-object v5, v0

    .line 2498
    .local v5, "prioritizedXpInfo":Lcom/android/server/pm/PackageManagerService$CrossProfileDomainInfo;
    if-nez v14, :cond_4

    .line 2499
    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz v5, :cond_3

    .line 2503
    iget-object v0, v5, Lcom/android/server/pm/PackageManagerService$CrossProfileDomainInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2504
    new-instance v7, Lcom/android/server/pm/PackageManagerService$QueryIntentActivitiesResult;

    .line 2505
    move-object/from16 v0, p0

    move-object v1, v15

    move-object/from16 v2, p9

    move/from16 v3, p7

    move/from16 v4, p4

    move-object/from16 v21, v5

    .end local v5    # "prioritizedXpInfo":Lcom/android/server/pm/PackageManagerService$CrossProfileDomainInfo;
    .local v21, "prioritizedXpInfo":Lcom/android/server/pm/PackageManagerService$CrossProfileDomainInfo;
    move/from16 v5, p6

    move-object v9, v6

    .end local v6    # "specificXpInfo":Lcom/android/server/pm/PackageManagerService$CrossProfileDomainInfo;
    .local v9, "specificXpInfo":Lcom/android/server/pm/PackageManagerService$CrossProfileDomainInfo;
    move/from16 v6, p5

    move-object v10, v7

    move-object/from16 v7, p1

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->applyPostResolutionFilter(Ljava/util/List;Ljava/lang/String;ZIZILandroid/content/Intent;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v10, v0}, Lcom/android/server/pm/PackageManagerService$QueryIntentActivitiesResult;-><init>(Ljava/util/List;)V

    .line 2504
    return-object v10

    .line 2499
    .end local v9    # "specificXpInfo":Lcom/android/server/pm/PackageManagerService$CrossProfileDomainInfo;
    .end local v21    # "prioritizedXpInfo":Lcom/android/server/pm/PackageManagerService$CrossProfileDomainInfo;
    .restart local v5    # "prioritizedXpInfo":Lcom/android/server/pm/PackageManagerService$CrossProfileDomainInfo;
    .restart local v6    # "specificXpInfo":Lcom/android/server/pm/PackageManagerService$CrossProfileDomainInfo;
    :cond_3
    move-object/from16 v21, v5

    move-object v9, v6

    .line 2508
    .end local v5    # "prioritizedXpInfo":Lcom/android/server/pm/PackageManagerService$CrossProfileDomainInfo;
    .end local v6    # "specificXpInfo":Lcom/android/server/pm/PackageManagerService$CrossProfileDomainInfo;
    .restart local v9    # "specificXpInfo":Lcom/android/server/pm/PackageManagerService$CrossProfileDomainInfo;
    .restart local v21    # "prioritizedXpInfo":Lcom/android/server/pm/PackageManagerService$CrossProfileDomainInfo;
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, v7, :cond_5

    if-nez v21, :cond_5

    .line 2512
    new-instance v10, Lcom/android/server/pm/PackageManagerService$QueryIntentActivitiesResult;

    .line 2513
    move-object/from16 v0, p0

    move-object v1, v15

    move-object/from16 v2, p9

    move/from16 v3, p7

    move/from16 v4, p4

    move/from16 v5, p6

    move/from16 v6, p5

    move-object/from16 v7, p1

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->applyPostResolutionFilter(Ljava/util/List;Ljava/lang/String;ZIZILandroid/content/Intent;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v10, v0}, Lcom/android/server/pm/PackageManagerService$QueryIntentActivitiesResult;-><init>(Ljava/util/List;)V

    .line 2512
    return-object v10

    .line 2498
    .end local v9    # "specificXpInfo":Lcom/android/server/pm/PackageManagerService$CrossProfileDomainInfo;
    .end local v21    # "prioritizedXpInfo":Lcom/android/server/pm/PackageManagerService$CrossProfileDomainInfo;
    .restart local v5    # "prioritizedXpInfo":Lcom/android/server/pm/PackageManagerService$CrossProfileDomainInfo;
    .restart local v6    # "specificXpInfo":Lcom/android/server/pm/PackageManagerService$CrossProfileDomainInfo;
    :cond_4
    move-object/from16 v21, v5

    move-object v9, v6

    .line 2521
    .end local v5    # "prioritizedXpInfo":Lcom/android/server/pm/PackageManagerService$CrossProfileDomainInfo;
    .end local v6    # "specificXpInfo":Lcom/android/server/pm/PackageManagerService$CrossProfileDomainInfo;
    .restart local v9    # "specificXpInfo":Lcom/android/server/pm/PackageManagerService$CrossProfileDomainInfo;
    .restart local v21    # "prioritizedXpInfo":Lcom/android/server/pm/PackageManagerService$CrossProfileDomainInfo;
    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move-object v3, v15

    move-object/from16 v4, v21

    move/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->filterCandidatesWithDomainPreferredActivitiesLPr(Landroid/content/Intent;ILjava/util/List;Lcom/android/server/pm/PackageManagerService$CrossProfileDomainInfo;I)Ljava/util/List;

    move-result-object v15

    .line 2523
    const/4 v0, 0x1

    .line 2524
    .end local v17    # "sortResult":Z
    .end local v20    # "generalXpInfo":Lcom/android/server/pm/PackageManagerService$CrossProfileDomainInfo;
    .end local v21    # "prioritizedXpInfo":Lcom/android/server/pm/PackageManagerService$CrossProfileDomainInfo;
    .end local v22    # "parent":Landroid/content/pm/UserInfo;
    .local v0, "sortResult":Z
    goto :goto_2

    .line 2527
    .end local v0    # "sortResult":Z
    .end local v9    # "specificXpInfo":Lcom/android/server/pm/PackageManagerService$CrossProfileDomainInfo;
    .restart local v6    # "specificXpInfo":Lcom/android/server/pm/PackageManagerService$CrossProfileDomainInfo;
    .restart local v17    # "sortResult":Z
    :cond_6
    move-object v9, v6

    .end local v6    # "specificXpInfo":Lcom/android/server/pm/PackageManagerService$CrossProfileDomainInfo;
    .restart local v9    # "specificXpInfo":Lcom/android/server/pm/PackageManagerService$CrossProfileDomainInfo;
    if-eqz v9, :cond_7

    .line 2528
    iget-object v0, v9, Lcom/android/server/pm/PackageManagerService$CrossProfileDomainInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2529
    const/4 v0, 0x1

    .end local v17    # "sortResult":Z
    .restart local v0    # "sortResult":Z
    goto :goto_2

    .line 2527
    .end local v0    # "sortResult":Z
    .restart local v17    # "sortResult":Z
    :cond_7
    move/from16 v0, v17

    .line 2532
    .end local v9    # "specificXpInfo":Lcom/android/server/pm/PackageManagerService$CrossProfileDomainInfo;
    .end local v16    # "matchingFilters":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/CrossProfileIntentFilter;>;"
    .end local v17    # "sortResult":Z
    .end local v18    # "hasNonNegativePriorityResult":Z
    .end local v19    # "skipProfileInfo":Landroid/content/pm/ResolveInfo;
    .restart local v0    # "sortResult":Z
    :goto_2
    move/from16 v9, p4

    goto/16 :goto_6

    .line 2533
    .end local v0    # "sortResult":Z
    .restart local v13    # "sortResult":Z
    :cond_8
    move/from16 v17, v13

    move/from16 v13, p3

    .end local v13    # "sortResult":Z
    .restart local v17    # "sortResult":Z
    const/16 v0, 0x3e8

    .line 2534
    invoke-virtual {v8, v12, v0}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->getPackageSettingInternal(Ljava/lang/String;I)Lcom/android/server/pm/PackageSetting;

    move-result-object v6

    .line 2535
    .local v6, "setting":Lcom/android/server/pm/PackageSetting;
    const/4 v7, 0x0

    .line 2536
    .end local v15    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .local v7, "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v6, :cond_a

    iget-object v0, v6, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    if-eqz v0, :cond_a

    if-nez p6, :cond_9

    .line 2537
    move/from16 v9, p4

    invoke-virtual {v8, v6, v9, v11}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->shouldFilterApplicationLocked(Lcom/android/server/pm/PackageSetting;II)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_3

    .line 2536
    :cond_9
    move/from16 v9, p4

    .line 2538
    :goto_3
    iget-object v0, v8, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->mComponentResolver:Lcom/android/server/pm/ComponentResolver;

    iget-object v1, v6, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 2539
    invoke-interface {v1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getActivities()Ljava/util/List;

    move-result-object v4

    .line 2538
    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComponentResolver;->queryActivities(Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;I)Ljava/util/List;

    move-result-object v0

    invoke-direct {v8, v0, v11}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->filterIfNotSystemUser(Ljava/util/List;I)Ljava/util/List;

    move-result-object v0

    move-object v15, v0

    .end local v7    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    goto :goto_4

    .line 2536
    .end local v0    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v7    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_a
    move/from16 v9, p4

    .line 2542
    :cond_b
    move-object v15, v7

    .end local v7    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v15    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :goto_4
    if-eqz v15, :cond_d

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_c

    goto :goto_5

    :cond_c
    move/from16 v0, v17

    goto :goto_6

    .line 2545
    :cond_d
    :goto_5
    const/4 v2, 0x0

    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v3, p5

    move/from16 v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->isInstantAppResolutionAllowed(Landroid/content/Intent;Ljava/util/List;IZI)Z

    move-result v14

    .line 2547
    if-nez v15, :cond_e

    .line 2548
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v15, v0

    move/from16 v0, v17

    goto :goto_6

    .line 2547
    :cond_e
    move/from16 v0, v17

    .line 2552
    .end local v6    # "setting":Lcom/android/server/pm/PackageSetting;
    .end local v17    # "sortResult":Z
    .local v0, "sortResult":Z
    :goto_6
    new-instance v1, Lcom/android/server/pm/PackageManagerService$QueryIntentActivitiesResult;

    invoke-direct {v1, v0, v14, v15}, Lcom/android/server/pm/PackageManagerService$QueryIntentActivitiesResult;-><init>(ZZLjava/util/List;)V

    return-object v1
.end method

.method public final queryIntentServicesInternal(Landroid/content/Intent;Ljava/lang/String;IIIZ)Ljava/util/List;
    .locals 18
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p4, "userId"    # I
    .param p5, "callingUid"    # I
    .param p6, "includeInstantApps"    # Z
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

    .line 2363
    move-object/from16 v7, p0

    move/from16 v8, p4

    move/from16 v9, p5

    iget-object v0, v7, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, v8}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 2364
    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "query intent receivers"

    move-object/from16 v0, p0

    move/from16 v1, p5

    move/from16 v2, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->enforceCrossUserOrProfilePermission(IIZZLjava/lang/String;)V

    .line 2369
    invoke-virtual {v7, v9}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v10

    .line 2370
    .local v10, "instantAppPkgName":Ljava/lang/String;
    const/4 v5, 0x0

    move/from16 v1, p3

    move/from16 v3, p5

    move/from16 v4, p6

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->updateFlagsForResolve(IIIZZ)I

    move-result v11

    .line 2372
    .end local p3    # "flags":I
    .local v11, "flags":I
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 2373
    .local v0, "comp":Landroid/content/ComponentName;
    if-nez v0, :cond_1

    .line 2374
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2375
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v1

    .line 2376
    .end local p1    # "intent":Landroid/content/Intent;
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    move-object v13, v0

    move-object v12, v1

    goto :goto_0

    .line 2379
    .end local v1    # "intent":Landroid/content/Intent;
    .restart local p1    # "intent":Landroid/content/Intent;
    :cond_1
    move-object/from16 v12, p1

    move-object v13, v0

    .end local v0    # "comp":Landroid/content/ComponentName;
    .end local p1    # "intent":Landroid/content/Intent;
    .local v12, "intent":Landroid/content/Intent;
    .local v13, "comp":Landroid/content/ComponentName;
    :goto_0
    if-eqz v13, :cond_d

    .line 2380
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2381
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual {v7, v13, v11, v8}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;

    move-result-object v2

    .line 2382
    .local v2, "si":Landroid/content/pm/ServiceInfo;
    if-eqz v2, :cond_c

    .line 2387
    const/high16 v3, 0x800000

    and-int/2addr v3, v11

    if-eqz v3, :cond_2

    move v3, v1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    .line 2389
    .local v3, "matchInstantApp":Z
    :goto_1
    const/high16 v5, 0x1000000

    and-int/2addr v5, v11

    if-eqz v5, :cond_3

    move v5, v1

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    .line 2391
    .local v5, "matchVisibleToInstantAppOnly":Z
    :goto_2
    if-eqz v10, :cond_4

    move v6, v1

    goto :goto_3

    :cond_4
    const/4 v6, 0x0

    .line 2393
    .local v6, "isCallerInstantApp":Z
    :goto_3
    nop

    .line 2394
    invoke-virtual {v13}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    .line 2395
    .local v14, "isTargetSameInstantApp":Z
    iget-object v15, v2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v15, v15, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit16 v15, v15, 0x80

    if-eqz v15, :cond_5

    move v15, v1

    goto :goto_4

    :cond_5
    const/4 v15, 0x0

    .line 2398
    .local v15, "isTargetInstantApp":Z
    :goto_4
    iget v1, v2, Landroid/content/pm/ServiceInfo;->flags:I

    const/high16 v16, 0x100000

    and-int v1, v1, v16

    if-nez v1, :cond_6

    const/4 v1, 0x1

    goto :goto_5

    :cond_6
    const/4 v1, 0x0

    .line 2400
    .local v1, "isTargetHiddenFromInstantApp":Z
    :goto_5
    if-nez v14, :cond_9

    if-nez v3, :cond_7

    if-nez v6, :cond_7

    if-nez v15, :cond_8

    :cond_7
    if-eqz v5, :cond_9

    if-eqz v6, :cond_9

    if-eqz v1, :cond_9

    :cond_8
    const/16 v16, 0x1

    goto :goto_6

    :cond_9
    const/16 v16, 0x0

    .line 2406
    .local v16, "blockInstantResolution":Z
    :goto_6
    if-nez v15, :cond_a

    if-nez v6, :cond_a

    iget-object v4, v2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move/from16 v17, v1

    .end local v1    # "isTargetHiddenFromInstantApp":Z
    .local v17, "isTargetHiddenFromInstantApp":Z
    const/16 v1, 0x3e8

    .line 2408
    invoke-virtual {v7, v4, v1}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->getPackageSettingInternal(Ljava/lang/String;I)Lcom/android/server/pm/PackageSetting;

    move-result-object v1

    .line 2407
    invoke-virtual {v7, v1, v9, v8}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->shouldFilterApplicationLocked(Lcom/android/server/pm/PackageSetting;II)Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v1, 0x1

    goto :goto_7

    .line 2406
    .end local v17    # "isTargetHiddenFromInstantApp":Z
    .restart local v1    # "isTargetHiddenFromInstantApp":Z
    :cond_a
    move/from16 v17, v1

    .line 2407
    .end local v1    # "isTargetHiddenFromInstantApp":Z
    .restart local v17    # "isTargetHiddenFromInstantApp":Z
    :cond_b
    const/4 v1, 0x0

    .line 2410
    .local v1, "blockNormalResolution":Z
    :goto_7
    if-nez v16, :cond_c

    if-nez v1, :cond_c

    .line 2411
    new-instance v4, Landroid/content/pm/ResolveInfo;

    invoke-direct {v4}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 2412
    .local v4, "ri":Landroid/content/pm/ResolveInfo;
    iput-object v2, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 2413
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2416
    .end local v1    # "blockNormalResolution":Z
    .end local v3    # "matchInstantApp":Z
    .end local v4    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v5    # "matchVisibleToInstantAppOnly":Z
    .end local v6    # "isCallerInstantApp":Z
    .end local v14    # "isTargetSameInstantApp":Z
    .end local v15    # "isTargetInstantApp":Z
    .end local v16    # "blockInstantResolution":Z
    .end local v17    # "isTargetHiddenFromInstantApp":Z
    :cond_c
    return-object v0

    .line 2419
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v2    # "si":Landroid/content/pm/ServiceInfo;
    :cond_d
    move-object/from16 v0, p0

    move-object v1, v12

    move-object/from16 v2, p2

    move v3, v11

    move/from16 v4, p4

    move/from16 v5, p5

    move-object v6, v10

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->queryIntentServicesInternalBody(Landroid/content/Intent;Ljava/lang/String;IIILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected queryIntentServicesInternalBody(Landroid/content/Intent;Ljava/lang/String;IIILjava/lang/String;)Ljava/util/List;
    .locals 8
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

    .line 2427
    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    .line 2428
    .local v0, "pkgName":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 2429
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->mComponentResolver:Lcom/android/server/pm/ComponentResolver;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/pm/ComponentResolver;->queryServices(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v1

    .line 2431
    .local v1, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v1, :cond_0

    .line 2432
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 2434
    :cond_0
    invoke-direct {p0, v1, p6, p4, p5}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->applyPostServiceResolutionFilter(Ljava/util/List;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 2437
    .end local v1    # "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_1
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v1, v0}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 2438
    .local v1, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-eqz v1, :cond_3

    .line 2439
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->mComponentResolver:Lcom/android/server/pm/ComponentResolver;

    .line 2440
    invoke-interface {v1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getServices()Ljava/util/List;

    move-result-object v6

    .line 2439
    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v7, p4

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/ComponentResolver;->queryServices(Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;I)Ljava/util/List;

    move-result-object v2

    .line 2442
    .local v2, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v2, :cond_2

    .line 2443
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    return-object v3

    .line 2445
    :cond_2
    invoke-direct {p0, v2, p6, p4, p5}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->applyPostServiceResolutionFilter(Ljava/util/List;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v3

    return-object v3

    .line 2448
    .end local v2    # "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method protected resolveComponentName()Landroid/content/ComponentName;
    .locals 1

    .line 2193
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->mLocalResolveComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method public final resolveExternalPackageNameLPr(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Ljava/lang/String;
    .locals 1
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 3786
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getStaticSharedLibName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3787
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getManifestPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3789
    :cond_0
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final resolveInternalPackageNameLPr(Ljava/lang/String;J)Ljava/lang/String;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "versionCode"    # J

    .line 3860
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 3861
    .local v0, "callingUid":I
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->resolveInternalPackageNameInternalLocked(Ljava/lang/String;JI)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final shouldFilterApplicationLocked(Lcom/android/server/pm/PackageSetting;II)Z
    .locals 6
    .param p1, "ps"    # Lcom/android/server/pm/PackageSetting;
    .param p2, "callingUid"    # I
    .param p3, "userId"    # I

    .line 4365
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->shouldFilterApplicationLocked(Lcom/android/server/pm/PackageSetting;ILandroid/content/ComponentName;II)Z

    move-result v0

    return v0
.end method

.method public final shouldFilterApplicationLocked(Lcom/android/server/pm/PackageSetting;ILandroid/content/ComponentName;II)Z
    .locals 6
    .param p1, "ps"    # Lcom/android/server/pm/PackageSetting;
    .param p2, "callingUid"    # I
    .param p3, "component"    # Landroid/content/ComponentName;
    .param p4, "componentType"    # I
    .param p5, "userId"    # I

    .line 4306
    invoke-static {p2}, Landroid/os/Process;->isIsolated(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4307
    invoke-direct {p0, p2}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->getIsolatedOwner(I)I

    move-result p2

    .line 4309
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v0

    .line 4310
    .local v0, "instantAppPkgName":Ljava/lang/String;
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    move v3, v1

    .line 4311
    .local v3, "callerIsInstantApp":Z
    :goto_0
    if-nez p1, :cond_3

    .line 4312
    if-eqz v3, :cond_2

    .line 4314
    return v2

    .line 4316
    :cond_2
    return v1

    .line 4319
    :cond_3
    iget-object v4, p1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {p0, v4, p2}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->isCallerSameApp(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 4320
    return v1

    .line 4322
    :cond_4
    if-eqz v3, :cond_8

    .line 4324
    invoke-virtual {p1, p5}, Lcom/android/server/pm/PackageSetting;->getInstantApp(I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 4325
    return v2

    .line 4329
    :cond_5
    if-eqz p3, :cond_7

    .line 4330
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->mInstrumentation:Lcom/android/server/utils/WatchedArrayMap;

    .line 4331
    invoke-virtual {v4, p3}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/parsing/component/ParsedInstrumentation;

    .line 4332
    .local v4, "instrumentation":Landroid/content/pm/parsing/component/ParsedInstrumentation;
    if-eqz v4, :cond_6

    .line 4333
    invoke-virtual {v4}, Landroid/content/pm/parsing/component/ParsedInstrumentation;->getTargetPackage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5, p2}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->isCallerSameApp(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 4334
    return v1

    .line 4336
    :cond_6
    invoke-virtual {p0, p3, p4}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->isComponentVisibleToInstantApp(Landroid/content/ComponentName;I)Z

    move-result v1

    xor-int/2addr v1, v2

    return v1

    .line 4339
    .end local v4    # "instrumentation":Landroid/content/pm/parsing/component/ParsedInstrumentation;
    :cond_7
    iget-object v1, p1, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    invoke-interface {v1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isVisibleToInstantApps()Z

    move-result v1

    xor-int/2addr v1, v2

    return v1

    .line 4341
    :cond_8
    invoke-virtual {p1, p5}, Lcom/android/server/pm/PackageSetting;->getInstantApp(I)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 4343
    invoke-virtual {p0, p2, p5}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->canViewInstantApps(II)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 4344
    return v1

    .line 4347
    :cond_9
    if-eqz p3, :cond_a

    .line 4348
    return v2

    .line 4352
    :cond_a
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->mInstantAppRegistry:Lcom/android/server/pm/InstantAppRegistry;

    .line 4353
    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v4

    iget v5, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    .line 4352
    invoke-virtual {v1, p5, v4, v5}, Lcom/android/server/pm/InstantAppRegistry;->isInstantAccessGranted(III)Z

    move-result v1

    xor-int/2addr v1, v2

    return v1

    .line 4355
    :cond_b
    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    .line 4356
    .local v1, "appId":I
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v2, v1}, Lcom/android/server/pm/Settings;->getSettingLPr(I)Lcom/android/server/pm/SettingBase;

    move-result-object v2

    .line 4357
    .local v2, "callingPs":Lcom/android/server/pm/SettingBase;
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->mAppsFilter:Lcom/android/server/pm/AppsFilter;

    invoke-virtual {v4, p2, v2, p1, p5}, Lcom/android/server/pm/AppsFilter;->shouldFilterApplication(ILcom/android/server/pm/SettingBase;Lcom/android/server/pm/PackageSetting;I)Z

    move-result v4

    return v4
.end method

.method public final shouldFilterApplicationLocked(Lcom/android/server/pm/SharedUserSetting;II)Z
    .locals 9
    .param p1, "sus"    # Lcom/android/server/pm/SharedUserSetting;
    .param p2, "callingUid"    # I
    .param p3, "userId"    # I

    .line 4373
    const/4 v0, 0x1

    .line 4374
    .local v0, "filterApp":Z
    iget-object v1, p1, Lcom/android/server/pm/SharedUserSetting;->packages:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "index":I
    :goto_0
    if-ltz v1, :cond_0

    if-eqz v0, :cond_0

    .line 4375
    iget-object v2, p1, Lcom/android/server/pm/SharedUserSetting;->packages:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/android/server/pm/PackageSetting;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p0

    move v5, p2

    move v8, p3

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->shouldFilterApplicationLocked(Lcom/android/server/pm/PackageSetting;ILandroid/content/ComponentName;II)Z

    move-result v2

    and-int/2addr v0, v2

    .line 4374
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 4378
    .end local v1    # "index":I
    :cond_0
    return v0
.end method

.method public final updateFlagsForApplication(II)I
    .locals 1
    .param p1, "flags"    # I
    .param p2, "userId"    # I

    .line 4447
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->updateFlagsForPackage(II)I

    move-result v0

    return v0
.end method

.method public final updateFlagsForComponent(II)I
    .locals 1
    .param p1, "flags"    # I
    .param p2, "userId"    # I

    .line 4454
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->updateFlags(II)I

    move-result v0

    return v0
.end method

.method public final updateFlagsForPackage(II)I
    .locals 12
    .param p1, "flags"    # I
    .param p2, "userId"    # I

    .line 4461
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 4463
    .local v0, "isCallerSystemUser":Z
    :goto_0
    const/high16 v3, 0x400000

    and-int v4, p1, v3

    if-eqz v4, :cond_1

    .line 4466
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 4467
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {p0, v2, p2}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->isRecentsAccessingChildProfiles(II)Z

    move-result v2

    xor-int/lit8 v10, v2, 0x1

    .line 4466
    const-string v11, "MATCH_ANY_USER flag requires INTERACT_ACROSS_USERS permission"

    move-object v5, p0

    move v7, p2

    invoke-virtual/range {v5 .. v11}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->enforceCrossUserPermission(IIZZZLjava/lang/String;)V

    goto :goto_1

    .line 4469
    :cond_1
    and-int/lit16 v1, p1, 0x2000

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 4471
    invoke-virtual {v1, v2}, Lcom/android/server/pm/UserManagerService;->hasManagedProfile(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4478
    or-int/2addr p1, v3

    .line 4480
    :cond_2
    :goto_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->updateFlags(II)I

    move-result v1

    return v1
.end method

.method public final updateFlagsForResolve(IIIZZ)I
    .locals 7
    .param p1, "flags"    # I
    .param p2, "userId"    # I
    .param p3, "callingUid"    # I
    .param p4, "wantInstantApps"    # Z
    .param p5, "isImplicitImageCaptureIntentAndNotSetByDpc"    # Z

    .line 4498
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->updateFlagsForResolve(IIIZZZ)I

    move-result v0

    return v0
.end method

.method public final updateFlagsForResolve(IIIZZZ)I
    .locals 4
    .param p1, "flags"    # I
    .param p2, "userId"    # I
    .param p3, "callingUid"    # I
    .param p4, "wantInstantApps"    # Z
    .param p5, "onlyExposedExplicitly"    # Z
    .param p6, "isImplicitImageCaptureIntentAndNotSetByDpc"    # Z

    .line 4507
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->safeMode()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p6, :cond_1

    .line 4508
    :cond_0
    const/high16 v0, 0x100000

    or-int/2addr p1, v0

    .line 4510
    :cond_1
    invoke-virtual {p0, p3}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x800000

    if-eqz v0, :cond_3

    .line 4512
    if-eqz p5, :cond_2

    .line 4513
    const/high16 v0, 0x2000000

    or-int/2addr p1, v0

    .line 4515
    :cond_2
    const/high16 v0, 0x1000000

    or-int/2addr p1, v0

    .line 4516
    or-int/2addr p1, v1

    goto :goto_3

    .line 4518
    :cond_3
    and-int v0, p1, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    move v0, v2

    .line 4519
    .local v0, "wantMatchInstant":Z
    :goto_0
    if-nez p4, :cond_6

    if-eqz v0, :cond_5

    .line 4520
    invoke-virtual {p0, p3, p2}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->canViewInstantApps(II)Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_1

    :cond_5
    move v1, v2

    goto :goto_2

    :cond_6
    :goto_1
    nop

    .line 4521
    .local v1, "allowMatchInstant":Z
    :goto_2
    const v2, -0x3000001

    and-int/2addr p1, v2

    .line 4523
    if-nez v1, :cond_7

    .line 4524
    const v2, -0x800001

    and-int/2addr p1, v2

    .line 4527
    .end local v0    # "wantMatchInstant":Z
    .end local v1    # "allowMatchInstant":Z
    :cond_7
    :goto_3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->updateFlagsForComponent(II)I

    move-result v0

    return v0
.end method

.method public final use()V
    .locals 1

    .line 2244
    iget v0, p0, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->mUsed:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->mUsed:I

    .line 2245
    return-void
.end method
