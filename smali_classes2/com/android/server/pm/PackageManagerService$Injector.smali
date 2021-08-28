.class public Lcom/android/server/pm/PackageManagerService$Injector;
.super Ljava/lang/Object;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Injector"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/PackageManagerService$Injector$Singleton;,
        Lcom/android/server/pm/PackageManagerService$Injector$ServiceProducer;,
        Lcom/android/server/pm/PackageManagerService$Injector$ProducerWithArgument;,
        Lcom/android/server/pm/PackageManagerService$Injector$Producer;
    }
.end annotation


# instance fields
.field private final mAbiHelper:Lcom/android/server/pm/PackageAbiHelper;

.field private final mApexManagerProducer:Lcom/android/server/pm/PackageManagerService$Injector$Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/pm/PackageManagerService$Injector$Singleton<",
            "Lcom/android/server/pm/ApexManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mAppsFilterProducer:Lcom/android/server/pm/PackageManagerService$Injector$Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/pm/PackageManagerService$Injector$Singleton<",
            "Lcom/android/server/pm/AppsFilter;",
            ">;"
        }
    .end annotation
.end field

.field private final mArtManagerServiceProducer:Lcom/android/server/pm/PackageManagerService$Injector$Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/pm/PackageManagerService$Injector$Singleton<",
            "Lcom/android/server/pm/dex/ArtManagerService;",
            ">;"
        }
    .end annotation
.end field

.field private final mBackgroundExecutor:Ljava/util/concurrent/Executor;

.field private final mBackgroundHandler:Landroid/os/Handler;

.field private final mComponentResolverProducer:Lcom/android/server/pm/PackageManagerService$Injector$Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/pm/PackageManagerService$Injector$Singleton<",
            "Lcom/android/server/pm/ComponentResolver;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mDefaultAppProviderProducer:Lcom/android/server/pm/PackageManagerService$Injector$Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/pm/PackageManagerService$Injector$Singleton<",
            "Lcom/android/server/pm/DefaultAppProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final mDexManagerProducer:Lcom/android/server/pm/PackageManagerService$Injector$Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/pm/PackageManagerService$Injector$Singleton<",
            "Lcom/android/server/pm/dex/DexManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mDisplayMetricsProducer:Lcom/android/server/pm/PackageManagerService$Injector$Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/pm/PackageManagerService$Injector$Singleton<",
            "Landroid/util/DisplayMetrics;",
            ">;"
        }
    .end annotation
.end field

.field private final mDomainVerificationManagerInternalProducer:Lcom/android/server/pm/PackageManagerService$Injector$Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/pm/PackageManagerService$Injector$Singleton<",
            "Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;",
            ">;"
        }
    .end annotation
.end field

.field private final mGetLocalServiceProducer:Lcom/android/server/pm/PackageManagerService$Injector$ServiceProducer;

.field private final mGetSystemServiceProducer:Lcom/android/server/pm/PackageManagerService$Injector$ServiceProducer;

.field private final mHandlerProducer:Lcom/android/server/pm/PackageManagerService$Injector$Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/pm/PackageManagerService$Injector$Singleton<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private final mIncrementalManagerProducer:Lcom/android/server/pm/PackageManagerService$Injector$Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/pm/PackageManagerService$Injector$Singleton<",
            "Landroid/os/incremental/IncrementalManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mInstallLock:Ljava/lang/Object;

.field private final mInstaller:Lcom/android/server/pm/Installer;

.field private final mInstantAppResolverConnectionProducer:Lcom/android/server/pm/PackageManagerService$Injector$ProducerWithArgument;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/pm/PackageManagerService$Injector$ProducerWithArgument<",
            "Lcom/android/server/pm/InstantAppResolverConnection;",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private final mLegacyPermissionManagerInternalProducer:Lcom/android/server/pm/PackageManagerService$Injector$Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/pm/PackageManagerService$Injector$Singleton<",
            "Lcom/android/server/pm/permission/LegacyPermissionManagerInternal;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Lcom/android/server/pm/PackageManagerTracedLock;

.field private final mModuleInfoProviderProducer:Lcom/android/server/pm/PackageManagerService$Injector$Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/pm/PackageManagerService$Injector$Singleton<",
            "Lcom/android/server/pm/ModuleInfoProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackageDexOptimizerProducer:Lcom/android/server/pm/PackageManagerService$Injector$Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/pm/PackageManagerService$Injector$Singleton<",
            "Lcom/android/server/pm/PackageDexOptimizer;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackageInstallerServiceProducer:Lcom/android/server/pm/PackageManagerService$Injector$Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/pm/PackageManagerService$Injector$Singleton<",
            "Lcom/android/server/pm/PackageInstallerService;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageManager:Lcom/android/server/pm/PackageManagerService;

.field private final mPermissionManagerServiceProducer:Lcom/android/server/pm/PackageManagerService$Injector$Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/pm/PackageManagerService$Injector$Singleton<",
            "Lcom/android/server/pm/permission/PermissionManagerServiceInternal;",
            ">;"
        }
    .end annotation
.end field

.field private final mPlatformCompatProducer:Lcom/android/server/pm/PackageManagerService$Injector$Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/pm/PackageManagerService$Injector$Singleton<",
            "Lcom/android/server/compat/PlatformCompat;",
            ">;"
        }
    .end annotation
.end field

.field private final mPreparingPackageParserProducer:Lcom/android/server/pm/PackageManagerService$Injector$Producer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/pm/PackageManagerService$Injector$Producer<",
            "Lcom/android/server/pm/parsing/PackageParser2;",
            ">;"
        }
    .end annotation
.end field

.field private final mScanningCachingPackageParserProducer:Lcom/android/server/pm/PackageManagerService$Injector$Producer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/pm/PackageManagerService$Injector$Producer<",
            "Lcom/android/server/pm/parsing/PackageParser2;",
            ">;"
        }
    .end annotation
.end field

.field private final mScanningPackageParserProducer:Lcom/android/server/pm/PackageManagerService$Injector$Producer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/pm/PackageManagerService$Injector$Producer<",
            "Lcom/android/server/pm/parsing/PackageParser2;",
            ">;"
        }
    .end annotation
.end field

.field private final mSettingsProducer:Lcom/android/server/pm/PackageManagerService$Injector$Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/pm/PackageManagerService$Injector$Singleton<",
            "Lcom/android/server/pm/Settings;",
            ">;"
        }
    .end annotation
.end field

.field private final mSystemConfigProducer:Lcom/android/server/pm/PackageManagerService$Injector$Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/pm/PackageManagerService$Injector$Singleton<",
            "Lcom/android/server/SystemConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final mSystemPartitions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/pm/PackageManagerService$ScanPartition;",
            ">;"
        }
    .end annotation
.end field

.field private final mSystemWrapper:Lcom/android/server/pm/PackageManagerService$SystemWrapper;

.field private final mUserManagerProducer:Lcom/android/server/pm/PackageManagerService$Injector$Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/pm/PackageManagerService$Injector$Singleton<",
            "Lcom/android/server/pm/UserManagerService;",
            ">;"
        }
    .end annotation
.end field

.field private final mViewCompilerProducer:Lcom/android/server/pm/PackageManagerService$Injector$Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/pm/PackageManagerService$Injector$Singleton<",
            "Lcom/android/server/pm/dex/ViewCompiler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerTracedLock;Lcom/android/server/pm/Installer;Ljava/lang/Object;Lcom/android/server/pm/PackageAbiHelper;Landroid/os/Handler;Ljava/util/List;Lcom/android/server/pm/PackageManagerService$Injector$Producer;Lcom/android/server/pm/PackageManagerService$Injector$Producer;Lcom/android/server/pm/PackageManagerService$Injector$Producer;Lcom/android/server/pm/PackageManagerService$Injector$Producer;Lcom/android/server/pm/PackageManagerService$Injector$Producer;Lcom/android/server/pm/PackageManagerService$Injector$Producer;Lcom/android/server/pm/PackageManagerService$Injector$Producer;Lcom/android/server/pm/PackageManagerService$Injector$Producer;Lcom/android/server/pm/PackageManagerService$Injector$Producer;Lcom/android/server/pm/PackageManagerService$Injector$Producer;Lcom/android/server/pm/PackageManagerService$Injector$Producer;Lcom/android/server/pm/PackageManagerService$Injector$Producer;Lcom/android/server/pm/PackageManagerService$Injector$Producer;Lcom/android/server/pm/PackageManagerService$Injector$Producer;Lcom/android/server/pm/PackageManagerService$Injector$Producer;Lcom/android/server/pm/PackageManagerService$Injector$Producer;Lcom/android/server/pm/PackageManagerService$Injector$Producer;Lcom/android/server/pm/PackageManagerService$Injector$Producer;Lcom/android/server/pm/PackageManagerService$Injector$Producer;Lcom/android/server/pm/PackageManagerService$Injector$ProducerWithArgument;Lcom/android/server/pm/PackageManagerService$Injector$Producer;Lcom/android/server/pm/PackageManagerService$Injector$Producer;Lcom/android/server/pm/PackageManagerService$Injector$Producer;Lcom/android/server/pm/PackageManagerService$Injector$Producer;Lcom/android/server/pm/PackageManagerService$SystemWrapper;Lcom/android/server/pm/PackageManagerService$Injector$ServiceProducer;Lcom/android/server/pm/PackageManagerService$Injector$ServiceProducer;)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "lock"    # Lcom/android/server/pm/PackageManagerTracedLock;
    .param p3, "installer"    # Lcom/android/server/pm/Installer;
    .param p4, "installLock"    # Ljava/lang/Object;
    .param p5, "abiHelper"    # Lcom/android/server/pm/PackageAbiHelper;
    .param p6, "backgroundHandler"    # Landroid/os/Handler;
    .param p32, "systemWrapper"    # Lcom/android/server/pm/PackageManagerService$SystemWrapper;
    .param p33, "getLocalServiceProducer"    # Lcom/android/server/pm/PackageManagerService$Injector$ServiceProducer;
    .param p34, "getSystemServiceProducer"    # Lcom/android/server/pm/PackageManagerService$Injector$ServiceProducer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/server/pm/PackageManagerTracedLock;",
            "Lcom/android/server/pm/Installer;",
            "Ljava/lang/Object;",
            "Lcom/android/server/pm/PackageAbiHelper;",
            "Landroid/os/Handler;",
            "Ljava/util/List<",
            "Lcom/android/server/pm/PackageManagerService$ScanPartition;",
            ">;",
            "Lcom/android/server/pm/PackageManagerService$Injector$Producer<",
            "Lcom/android/server/pm/ComponentResolver;",
            ">;",
            "Lcom/android/server/pm/PackageManagerService$Injector$Producer<",
            "Lcom/android/server/pm/permission/PermissionManagerServiceInternal;",
            ">;",
            "Lcom/android/server/pm/PackageManagerService$Injector$Producer<",
            "Lcom/android/server/pm/UserManagerService;",
            ">;",
            "Lcom/android/server/pm/PackageManagerService$Injector$Producer<",
            "Lcom/android/server/pm/Settings;",
            ">;",
            "Lcom/android/server/pm/PackageManagerService$Injector$Producer<",
            "Lcom/android/server/pm/AppsFilter;",
            ">;",
            "Lcom/android/server/pm/PackageManagerService$Injector$Producer<",
            "Lcom/android/server/compat/PlatformCompat;",
            ">;",
            "Lcom/android/server/pm/PackageManagerService$Injector$Producer<",
            "Lcom/android/server/SystemConfig;",
            ">;",
            "Lcom/android/server/pm/PackageManagerService$Injector$Producer<",
            "Lcom/android/server/pm/PackageDexOptimizer;",
            ">;",
            "Lcom/android/server/pm/PackageManagerService$Injector$Producer<",
            "Lcom/android/server/pm/dex/DexManager;",
            ">;",
            "Lcom/android/server/pm/PackageManagerService$Injector$Producer<",
            "Lcom/android/server/pm/dex/ArtManagerService;",
            ">;",
            "Lcom/android/server/pm/PackageManagerService$Injector$Producer<",
            "Lcom/android/server/pm/ApexManager;",
            ">;",
            "Lcom/android/server/pm/PackageManagerService$Injector$Producer<",
            "Lcom/android/server/pm/dex/ViewCompiler;",
            ">;",
            "Lcom/android/server/pm/PackageManagerService$Injector$Producer<",
            "Landroid/os/incremental/IncrementalManager;",
            ">;",
            "Lcom/android/server/pm/PackageManagerService$Injector$Producer<",
            "Lcom/android/server/pm/DefaultAppProvider;",
            ">;",
            "Lcom/android/server/pm/PackageManagerService$Injector$Producer<",
            "Landroid/util/DisplayMetrics;",
            ">;",
            "Lcom/android/server/pm/PackageManagerService$Injector$Producer<",
            "Lcom/android/server/pm/parsing/PackageParser2;",
            ">;",
            "Lcom/android/server/pm/PackageManagerService$Injector$Producer<",
            "Lcom/android/server/pm/parsing/PackageParser2;",
            ">;",
            "Lcom/android/server/pm/PackageManagerService$Injector$Producer<",
            "Lcom/android/server/pm/parsing/PackageParser2;",
            ">;",
            "Lcom/android/server/pm/PackageManagerService$Injector$Producer<",
            "Lcom/android/server/pm/PackageInstallerService;",
            ">;",
            "Lcom/android/server/pm/PackageManagerService$Injector$ProducerWithArgument<",
            "Lcom/android/server/pm/InstantAppResolverConnection;",
            "Landroid/content/ComponentName;",
            ">;",
            "Lcom/android/server/pm/PackageManagerService$Injector$Producer<",
            "Lcom/android/server/pm/ModuleInfoProvider;",
            ">;",
            "Lcom/android/server/pm/PackageManagerService$Injector$Producer<",
            "Lcom/android/server/pm/permission/LegacyPermissionManagerInternal;",
            ">;",
            "Lcom/android/server/pm/PackageManagerService$Injector$Producer<",
            "Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;",
            ">;",
            "Lcom/android/server/pm/PackageManagerService$Injector$Producer<",
            "Landroid/os/Handler;",
            ">;",
            "Lcom/android/server/pm/PackageManagerService$SystemWrapper;",
            "Lcom/android/server/pm/PackageManagerService$Injector$ServiceProducer;",
            "Lcom/android/server/pm/PackageManagerService$Injector$ServiceProducer;",
            ")V"
        }
    .end annotation

    .line 1119
    .local p7, "systemPartitions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PackageManagerService$ScanPartition;>;"
    .local p8, "componentResolverProducer":Lcom/android/server/pm/PackageManagerService$Injector$Producer;, "Lcom/android/server/pm/PackageManagerService$Injector$Producer<Lcom/android/server/pm/ComponentResolver;>;"
    .local p9, "permissionManagerServiceProducer":Lcom/android/server/pm/PackageManagerService$Injector$Producer;, "Lcom/android/server/pm/PackageManagerService$Injector$Producer<Lcom/android/server/pm/permission/PermissionManagerServiceInternal;>;"
    .local p10, "userManagerProducer":Lcom/android/server/pm/PackageManagerService$Injector$Producer;, "Lcom/android/server/pm/PackageManagerService$Injector$Producer<Lcom/android/server/pm/UserManagerService;>;"
    .local p11, "settingsProducer":Lcom/android/server/pm/PackageManagerService$Injector$Producer;, "Lcom/android/server/pm/PackageManagerService$Injector$Producer<Lcom/android/server/pm/Settings;>;"
    .local p12, "appsFilterProducer":Lcom/android/server/pm/PackageManagerService$Injector$Producer;, "Lcom/android/server/pm/PackageManagerService$Injector$Producer<Lcom/android/server/pm/AppsFilter;>;"
    .local p13, "platformCompatProducer":Lcom/android/server/pm/PackageManagerService$Injector$Producer;, "Lcom/android/server/pm/PackageManagerService$Injector$Producer<Lcom/android/server/compat/PlatformCompat;>;"
    .local p14, "systemConfigProducer":Lcom/android/server/pm/PackageManagerService$Injector$Producer;, "Lcom/android/server/pm/PackageManagerService$Injector$Producer<Lcom/android/server/SystemConfig;>;"
    .local p15, "packageDexOptimizerProducer":Lcom/android/server/pm/PackageManagerService$Injector$Producer;, "Lcom/android/server/pm/PackageManagerService$Injector$Producer<Lcom/android/server/pm/PackageDexOptimizer;>;"
    .local p16, "dexManagerProducer":Lcom/android/server/pm/PackageManagerService$Injector$Producer;, "Lcom/android/server/pm/PackageManagerService$Injector$Producer<Lcom/android/server/pm/dex/DexManager;>;"
    .local p17, "artManagerServiceProducer":Lcom/android/server/pm/PackageManagerService$Injector$Producer;, "Lcom/android/server/pm/PackageManagerService$Injector$Producer<Lcom/android/server/pm/dex/ArtManagerService;>;"
    .local p18, "apexManagerProducer":Lcom/android/server/pm/PackageManagerService$Injector$Producer;, "Lcom/android/server/pm/PackageManagerService$Injector$Producer<Lcom/android/server/pm/ApexManager;>;"
    .local p19, "viewCompilerProducer":Lcom/android/server/pm/PackageManagerService$Injector$Producer;, "Lcom/android/server/pm/PackageManagerService$Injector$Producer<Lcom/android/server/pm/dex/ViewCompiler;>;"
    .local p20, "incrementalManagerProducer":Lcom/android/server/pm/PackageManagerService$Injector$Producer;, "Lcom/android/server/pm/PackageManagerService$Injector$Producer<Landroid/os/incremental/IncrementalManager;>;"
    .local p21, "defaultAppProviderProducer":Lcom/android/server/pm/PackageManagerService$Injector$Producer;, "Lcom/android/server/pm/PackageManagerService$Injector$Producer<Lcom/android/server/pm/DefaultAppProvider;>;"
    .local p22, "displayMetricsProducer":Lcom/android/server/pm/PackageManagerService$Injector$Producer;, "Lcom/android/server/pm/PackageManagerService$Injector$Producer<Landroid/util/DisplayMetrics;>;"
    .local p23, "scanningCachingPackageParserProducer":Lcom/android/server/pm/PackageManagerService$Injector$Producer;, "Lcom/android/server/pm/PackageManagerService$Injector$Producer<Lcom/android/server/pm/parsing/PackageParser2;>;"
    .local p24, "scanningPackageParserProducer":Lcom/android/server/pm/PackageManagerService$Injector$Producer;, "Lcom/android/server/pm/PackageManagerService$Injector$Producer<Lcom/android/server/pm/parsing/PackageParser2;>;"
    .local p25, "preparingPackageParserProducer":Lcom/android/server/pm/PackageManagerService$Injector$Producer;, "Lcom/android/server/pm/PackageManagerService$Injector$Producer<Lcom/android/server/pm/parsing/PackageParser2;>;"
    .local p26, "packageInstallerServiceProducer":Lcom/android/server/pm/PackageManagerService$Injector$Producer;, "Lcom/android/server/pm/PackageManagerService$Injector$Producer<Lcom/android/server/pm/PackageInstallerService;>;"
    .local p27, "instantAppResolverConnectionProducer":Lcom/android/server/pm/PackageManagerService$Injector$ProducerWithArgument;, "Lcom/android/server/pm/PackageManagerService$Injector$ProducerWithArgument<Lcom/android/server/pm/InstantAppResolverConnection;Landroid/content/ComponentName;>;"
    .local p28, "moduleInfoProviderProducer":Lcom/android/server/pm/PackageManagerService$Injector$Producer;, "Lcom/android/server/pm/PackageManagerService$Injector$Producer<Lcom/android/server/pm/ModuleInfoProvider;>;"
    .local p29, "legacyPermissionManagerInternalProducer":Lcom/android/server/pm/PackageManagerService$Injector$Producer;, "Lcom/android/server/pm/PackageManagerService$Injector$Producer<Lcom/android/server/pm/permission/LegacyPermissionManagerInternal;>;"
    .local p30, "domainVerificationManagerInternalProducer":Lcom/android/server/pm/PackageManagerService$Injector$Producer;, "Lcom/android/server/pm/PackageManagerService$Injector$Producer<Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;>;"
    .local p31, "handlerProducer":Lcom/android/server/pm/PackageManagerService$Injector$Producer;, "Lcom/android/server/pm/PackageManagerService$Injector$Producer<Landroid/os/Handler;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1120
    move-object/from16 v2, p1

    iput-object v2, v0, Lcom/android/server/pm/PackageManagerService$Injector;->mContext:Landroid/content/Context;

    .line 1121
    move-object/from16 v3, p2

    iput-object v3, v0, Lcom/android/server/pm/PackageManagerService$Injector;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 1122
    move-object/from16 v4, p3

    iput-object v4, v0, Lcom/android/server/pm/PackageManagerService$Injector;->mInstaller:Lcom/android/server/pm/Installer;

    .line 1123
    move-object/from16 v5, p5

    iput-object v5, v0, Lcom/android/server/pm/PackageManagerService$Injector;->mAbiHelper:Lcom/android/server/pm/PackageAbiHelper;

    .line 1124
    move-object/from16 v6, p4

    iput-object v6, v0, Lcom/android/server/pm/PackageManagerService$Injector;->mInstallLock:Ljava/lang/Object;

    .line 1125
    iput-object v1, v0, Lcom/android/server/pm/PackageManagerService$Injector;->mBackgroundHandler:Landroid/os/Handler;

    .line 1126
    new-instance v7, Landroid/os/HandlerExecutor;

    invoke-direct {v7, v1}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iput-object v7, v0, Lcom/android/server/pm/PackageManagerService$Injector;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    .line 1127
    move-object/from16 v7, p7

    iput-object v7, v0, Lcom/android/server/pm/PackageManagerService$Injector;->mSystemPartitions:Ljava/util/List;

    .line 1128
    new-instance v8, Lcom/android/server/pm/PackageManagerService$Injector$Singleton;

    move-object/from16 v9, p8

    invoke-direct {v8, v9}, Lcom/android/server/pm/PackageManagerService$Injector$Singleton;-><init>(Lcom/android/server/pm/PackageManagerService$Injector$Producer;)V

    iput-object v8, v0, Lcom/android/server/pm/PackageManagerService$Injector;->mComponentResolverProducer:Lcom/android/server/pm/PackageManagerService$Injector$Singleton;

    .line 1129
    new-instance v8, Lcom/android/server/pm/PackageManagerService$Injector$Singleton;

    move-object/from16 v10, p9

    invoke-direct {v8, v10}, Lcom/android/server/pm/PackageManagerService$Injector$Singleton;-><init>(Lcom/android/server/pm/PackageManagerService$Injector$Producer;)V

    iput-object v8, v0, Lcom/android/server/pm/PackageManagerService$Injector;->mPermissionManagerServiceProducer:Lcom/android/server/pm/PackageManagerService$Injector$Singleton;

    .line 1130
    new-instance v8, Lcom/android/server/pm/PackageManagerService$Injector$Singleton;

    move-object/from16 v11, p10

    invoke-direct {v8, v11}, Lcom/android/server/pm/PackageManagerService$Injector$Singleton;-><init>(Lcom/android/server/pm/PackageManagerService$Injector$Producer;)V

    iput-object v8, v0, Lcom/android/server/pm/PackageManagerService$Injector;->mUserManagerProducer:Lcom/android/server/pm/PackageManagerService$Injector$Singleton;

    .line 1131
    new-instance v8, Lcom/android/server/pm/PackageManagerService$Injector$Singleton;

    move-object/from16 v12, p11

    invoke-direct {v8, v12}, Lcom/android/server/pm/PackageManagerService$Injector$Singleton;-><init>(Lcom/android/server/pm/PackageManagerService$Injector$Producer;)V

    iput-object v8, v0, Lcom/android/server/pm/PackageManagerService$Injector;->mSettingsProducer:Lcom/android/server/pm/PackageManagerService$Injector$Singleton;

    .line 1132
    new-instance v8, Lcom/android/server/pm/PackageManagerService$Injector$Singleton;

    move-object/from16 v13, p12

    invoke-direct {v8, v13}, Lcom/android/server/pm/PackageManagerService$Injector$Singleton;-><init>(Lcom/android/server/pm/PackageManagerService$Injector$Producer;)V

    iput-object v8, v0, Lcom/android/server/pm/PackageManagerService$Injector;->mAppsFilterProducer:Lcom/android/server/pm/PackageManagerService$Injector$Singleton;

    .line 1133
    new-instance v8, Lcom/android/server/pm/PackageManagerService$Injector$Singleton;

    move-object/from16 v14, p13

    invoke-direct {v8, v14}, Lcom/android/server/pm/PackageManagerService$Injector$Singleton;-><init>(Lcom/android/server/pm/PackageManagerService$Injector$Producer;)V

    iput-object v8, v0, Lcom/android/server/pm/PackageManagerService$Injector;->mPlatformCompatProducer:Lcom/android/server/pm/PackageManagerService$Injector$Singleton;

    .line 1134
    new-instance v8, Lcom/android/server/pm/PackageManagerService$Injector$Singleton;

    move-object/from16 v15, p14

    invoke-direct {v8, v15}, Lcom/android/server/pm/PackageManagerService$Injector$Singleton;-><init>(Lcom/android/server/pm/PackageManagerService$Injector$Producer;)V

    iput-object v8, v0, Lcom/android/server/pm/PackageManagerService$Injector;->mSystemConfigProducer:Lcom/android/server/pm/PackageManagerService$Injector$Singleton;

    .line 1135
    new-instance v8, Lcom/android/server/pm/PackageManagerService$Injector$Singleton;

    move-object/from16 v1, p15

    invoke-direct {v8, v1}, Lcom/android/server/pm/PackageManagerService$Injector$Singleton;-><init>(Lcom/android/server/pm/PackageManagerService$Injector$Producer;)V

    iput-object v8, v0, Lcom/android/server/pm/PackageManagerService$Injector;->mPackageDexOptimizerProducer:Lcom/android/server/pm/PackageManagerService$Injector$Singleton;

    .line 1136
    new-instance v8, Lcom/android/server/pm/PackageManagerService$Injector$Singleton;

    move-object/from16 v1, p16

    invoke-direct {v8, v1}, Lcom/android/server/pm/PackageManagerService$Injector$Singleton;-><init>(Lcom/android/server/pm/PackageManagerService$Injector$Producer;)V

    iput-object v8, v0, Lcom/android/server/pm/PackageManagerService$Injector;->mDexManagerProducer:Lcom/android/server/pm/PackageManagerService$Injector$Singleton;

    .line 1137
    new-instance v8, Lcom/android/server/pm/PackageManagerService$Injector$Singleton;

    move-object/from16 v1, p17

    invoke-direct {v8, v1}, Lcom/android/server/pm/PackageManagerService$Injector$Singleton;-><init>(Lcom/android/server/pm/PackageManagerService$Injector$Producer;)V

    iput-object v8, v0, Lcom/android/server/pm/PackageManagerService$Injector;->mArtManagerServiceProducer:Lcom/android/server/pm/PackageManagerService$Injector$Singleton;

    .line 1138
    new-instance v8, Lcom/android/server/pm/PackageManagerService$Injector$Singleton;

    move-object/from16 v1, p18

    invoke-direct {v8, v1}, Lcom/android/server/pm/PackageManagerService$Injector$Singleton;-><init>(Lcom/android/server/pm/PackageManagerService$Injector$Producer;)V

    iput-object v8, v0, Lcom/android/server/pm/PackageManagerService$Injector;->mApexManagerProducer:Lcom/android/server/pm/PackageManagerService$Injector$Singleton;

    .line 1139
    new-instance v8, Lcom/android/server/pm/PackageManagerService$Injector$Singleton;

    move-object/from16 v1, p19

    invoke-direct {v8, v1}, Lcom/android/server/pm/PackageManagerService$Injector$Singleton;-><init>(Lcom/android/server/pm/PackageManagerService$Injector$Producer;)V

    iput-object v8, v0, Lcom/android/server/pm/PackageManagerService$Injector;->mViewCompilerProducer:Lcom/android/server/pm/PackageManagerService$Injector$Singleton;

    .line 1140
    new-instance v8, Lcom/android/server/pm/PackageManagerService$Injector$Singleton;

    move-object/from16 v1, p20

    invoke-direct {v8, v1}, Lcom/android/server/pm/PackageManagerService$Injector$Singleton;-><init>(Lcom/android/server/pm/PackageManagerService$Injector$Producer;)V

    iput-object v8, v0, Lcom/android/server/pm/PackageManagerService$Injector;->mIncrementalManagerProducer:Lcom/android/server/pm/PackageManagerService$Injector$Singleton;

    .line 1141
    new-instance v8, Lcom/android/server/pm/PackageManagerService$Injector$Singleton;

    move-object/from16 v1, p21

    invoke-direct {v8, v1}, Lcom/android/server/pm/PackageManagerService$Injector$Singleton;-><init>(Lcom/android/server/pm/PackageManagerService$Injector$Producer;)V

    iput-object v8, v0, Lcom/android/server/pm/PackageManagerService$Injector;->mDefaultAppProviderProducer:Lcom/android/server/pm/PackageManagerService$Injector$Singleton;

    .line 1142
    new-instance v8, Lcom/android/server/pm/PackageManagerService$Injector$Singleton;

    move-object/from16 v1, p22

    invoke-direct {v8, v1}, Lcom/android/server/pm/PackageManagerService$Injector$Singleton;-><init>(Lcom/android/server/pm/PackageManagerService$Injector$Producer;)V

    iput-object v8, v0, Lcom/android/server/pm/PackageManagerService$Injector;->mDisplayMetricsProducer:Lcom/android/server/pm/PackageManagerService$Injector$Singleton;

    .line 1143
    move-object/from16 v8, p23

    iput-object v8, v0, Lcom/android/server/pm/PackageManagerService$Injector;->mScanningCachingPackageParserProducer:Lcom/android/server/pm/PackageManagerService$Injector$Producer;

    .line 1144
    move-object/from16 v1, p24

    iput-object v1, v0, Lcom/android/server/pm/PackageManagerService$Injector;->mScanningPackageParserProducer:Lcom/android/server/pm/PackageManagerService$Injector$Producer;

    .line 1145
    move-object/from16 v1, p25

    iput-object v1, v0, Lcom/android/server/pm/PackageManagerService$Injector;->mPreparingPackageParserProducer:Lcom/android/server/pm/PackageManagerService$Injector$Producer;

    .line 1146
    new-instance v1, Lcom/android/server/pm/PackageManagerService$Injector$Singleton;

    move-object/from16 v2, p26

    invoke-direct {v1, v2}, Lcom/android/server/pm/PackageManagerService$Injector$Singleton;-><init>(Lcom/android/server/pm/PackageManagerService$Injector$Producer;)V

    iput-object v1, v0, Lcom/android/server/pm/PackageManagerService$Injector;->mPackageInstallerServiceProducer:Lcom/android/server/pm/PackageManagerService$Injector$Singleton;

    .line 1147
    move-object/from16 v1, p27

    iput-object v1, v0, Lcom/android/server/pm/PackageManagerService$Injector;->mInstantAppResolverConnectionProducer:Lcom/android/server/pm/PackageManagerService$Injector$ProducerWithArgument;

    .line 1148
    new-instance v1, Lcom/android/server/pm/PackageManagerService$Injector$Singleton;

    move-object/from16 v2, p28

    invoke-direct {v1, v2}, Lcom/android/server/pm/PackageManagerService$Injector$Singleton;-><init>(Lcom/android/server/pm/PackageManagerService$Injector$Producer;)V

    iput-object v1, v0, Lcom/android/server/pm/PackageManagerService$Injector;->mModuleInfoProviderProducer:Lcom/android/server/pm/PackageManagerService$Injector$Singleton;

    .line 1149
    new-instance v1, Lcom/android/server/pm/PackageManagerService$Injector$Singleton;

    move-object/from16 v2, p29

    invoke-direct {v1, v2}, Lcom/android/server/pm/PackageManagerService$Injector$Singleton;-><init>(Lcom/android/server/pm/PackageManagerService$Injector$Producer;)V

    iput-object v1, v0, Lcom/android/server/pm/PackageManagerService$Injector;->mLegacyPermissionManagerInternalProducer:Lcom/android/server/pm/PackageManagerService$Injector$Singleton;

    .line 1151
    move-object/from16 v1, p32

    iput-object v1, v0, Lcom/android/server/pm/PackageManagerService$Injector;->mSystemWrapper:Lcom/android/server/pm/PackageManagerService$SystemWrapper;

    .line 1152
    move-object/from16 v1, p33

    iput-object v1, v0, Lcom/android/server/pm/PackageManagerService$Injector;->mGetLocalServiceProducer:Lcom/android/server/pm/PackageManagerService$Injector$ServiceProducer;

    .line 1153
    move-object/from16 v1, p34

    iput-object v1, v0, Lcom/android/server/pm/PackageManagerService$Injector;->mGetSystemServiceProducer:Lcom/android/server/pm/PackageManagerService$Injector$ServiceProducer;

    .line 1154
    new-instance v1, Lcom/android/server/pm/PackageManagerService$Injector$Singleton;

    move-object/from16 v2, p30

    invoke-direct {v1, v2}, Lcom/android/server/pm/PackageManagerService$Injector$Singleton;-><init>(Lcom/android/server/pm/PackageManagerService$Injector$Producer;)V

    iput-object v1, v0, Lcom/android/server/pm/PackageManagerService$Injector;->mDomainVerificationManagerInternalProducer:Lcom/android/server/pm/PackageManagerService$Injector$Singleton;

    .line 1156
    new-instance v1, Lcom/android/server/pm/PackageManagerService$Injector$Singleton;

    move-object/from16 v2, p31

    invoke-direct {v1, v2}, Lcom/android/server/pm/PackageManagerService$Injector$Singleton;-><init>(Lcom/android/server/pm/PackageManagerService$Injector$Producer;)V

    iput-object v1, v0, Lcom/android/server/pm/PackageManagerService$Injector;->mHandlerProducer:Lcom/android/server/pm/PackageManagerService$Injector$Singleton;

    .line 1157
    return-void
.end method


# virtual methods
.method public bootstrap(Lcom/android/server/pm/PackageManagerService;)V
    .locals 0
    .param p1, "pm"    # Lcom/android/server/pm/PackageManagerService;

    .line 1164
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$Injector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    .line 1165
    return-void
.end method

.method public getAbiHelper()Lcom/android/server/pm/PackageAbiHelper;
    .locals 1

    .line 1172
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$Injector;->mAbiHelper:Lcom/android/server/pm/PackageAbiHelper;

    return-object v0
.end method

.method public getApexManager()Lcom/android/server/pm/ApexManager;
    .locals 2

    .line 1236
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$Injector;->mApexManagerProducer:Lcom/android/server/pm/PackageManagerService$Injector$Singleton;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$Injector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p0, v1}, Lcom/android/server/pm/PackageManagerService$Injector$Singleton;->get(Lcom/android/server/pm/PackageManagerService$Injector;Lcom/android/server/pm/PackageManagerService;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/ApexManager;

    return-object v0
.end method

.method public getAppsFilter()Lcom/android/server/pm/AppsFilter;
    .locals 2

    .line 1212
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$Injector;->mAppsFilterProducer:Lcom/android/server/pm/PackageManagerService$Injector$Singleton;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$Injector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p0, v1}, Lcom/android/server/pm/PackageManagerService$Injector$Singleton;->get(Lcom/android/server/pm/PackageManagerService$Injector;Lcom/android/server/pm/PackageManagerService;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/AppsFilter;

    return-object v0
.end method

.method public getArtManagerService()Lcom/android/server/pm/dex/ArtManagerService;
    .locals 2

    .line 1232
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$Injector;->mArtManagerServiceProducer:Lcom/android/server/pm/PackageManagerService$Injector$Singleton;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$Injector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p0, v1}, Lcom/android/server/pm/PackageManagerService$Injector$Singleton;->get(Lcom/android/server/pm/PackageManagerService$Injector;Lcom/android/server/pm/PackageManagerService;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/dex/ArtManagerService;

    return-object v0
.end method

.method public getBackgroundExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .line 1248
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$Injector;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public getBackgroundHandler()Landroid/os/Handler;
    .locals 1

    .line 1244
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$Injector;->mBackgroundHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getCompatibility()Lcom/android/server/compat/PlatformCompat;
    .locals 2

    .line 1216
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$Injector;->mPlatformCompatProducer:Lcom/android/server/pm/PackageManagerService$Injector$Singleton;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$Injector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p0, v1}, Lcom/android/server/pm/PackageManagerService$Injector$Singleton;->get(Lcom/android/server/pm/PackageManagerService$Injector;Lcom/android/server/pm/PackageManagerService;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/compat/PlatformCompat;

    return-object v0
.end method

.method public getComponentResolver()Lcom/android/server/pm/ComponentResolver;
    .locals 2

    .line 1196
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$Injector;->mComponentResolverProducer:Lcom/android/server/pm/PackageManagerService$Injector$Singleton;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$Injector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p0, v1}, Lcom/android/server/pm/PackageManagerService$Injector$Singleton;->get(Lcom/android/server/pm/PackageManagerService$Injector;Lcom/android/server/pm/PackageManagerService;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/ComponentResolver;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 1204
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$Injector;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getDefaultAppProvider()Lcom/android/server/pm/DefaultAppProvider;
    .locals 2

    .line 1272
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$Injector;->mDefaultAppProviderProducer:Lcom/android/server/pm/PackageManagerService$Injector$Singleton;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$Injector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p0, v1}, Lcom/android/server/pm/PackageManagerService$Injector$Singleton;->get(Lcom/android/server/pm/PackageManagerService$Injector;Lcom/android/server/pm/PackageManagerService;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/DefaultAppProvider;

    return-object v0
.end method

.method public getDexManager()Lcom/android/server/pm/dex/DexManager;
    .locals 2

    .line 1228
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$Injector;->mDexManagerProducer:Lcom/android/server/pm/PackageManagerService$Injector$Singleton;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$Injector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p0, v1}, Lcom/android/server/pm/PackageManagerService$Injector$Singleton;->get(Lcom/android/server/pm/PackageManagerService$Injector;Lcom/android/server/pm/PackageManagerService;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/dex/DexManager;

    return-object v0
.end method

.method public getDisplayMetrics()Landroid/util/DisplayMetrics;
    .locals 2

    .line 1252
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$Injector;->mDisplayMetricsProducer:Lcom/android/server/pm/PackageManagerService$Injector$Singleton;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$Injector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p0, v1}, Lcom/android/server/pm/PackageManagerService$Injector$Singleton;->get(Lcom/android/server/pm/PackageManagerService$Injector;Lcom/android/server/pm/PackageManagerService;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/DisplayMetrics;

    return-object v0
.end method

.method public getDomainVerificationManagerInternal()Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;
    .locals 2

    .line 1304
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$Injector;->mDomainVerificationManagerInternalProducer:Lcom/android/server/pm/PackageManagerService$Injector$Singleton;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$Injector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p0, v1}, Lcom/android/server/pm/PackageManagerService$Injector$Singleton;->get(Lcom/android/server/pm/PackageManagerService$Injector;Lcom/android/server/pm/PackageManagerService;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 2

    .line 1308
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$Injector;->mHandlerProducer:Lcom/android/server/pm/PackageManagerService$Injector$Singleton;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$Injector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p0, v1}, Lcom/android/server/pm/PackageManagerService$Injector$Singleton;->get(Lcom/android/server/pm/PackageManagerService$Injector;Lcom/android/server/pm/PackageManagerService;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    return-object v0
.end method

.method public getIncrementalManager()Landroid/os/incremental/IncrementalManager;
    .locals 2

    .line 1268
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$Injector;->mIncrementalManagerProducer:Lcom/android/server/pm/PackageManagerService$Injector$Singleton;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$Injector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p0, v1}, Lcom/android/server/pm/PackageManagerService$Injector$Singleton;->get(Lcom/android/server/pm/PackageManagerService$Injector;Lcom/android/server/pm/PackageManagerService;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/incremental/IncrementalManager;

    return-object v0
.end method

.method public getInstallLock()Ljava/lang/Object;
    .locals 1

    .line 1176
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$Injector;->mInstallLock:Ljava/lang/Object;

    return-object v0
.end method

.method public getInstaller()Lcom/android/server/pm/Installer;
    .locals 1

    .line 1192
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$Injector;->mInstaller:Lcom/android/server/pm/Installer;

    return-object v0
.end method

.method public getInstantAppResolverConnection(Landroid/content/ComponentName;)Lcom/android/server/pm/InstantAppResolverConnection;
    .locals 2
    .param p1, "instantAppResolverComponent"    # Landroid/content/ComponentName;

    .line 1291
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$Injector;->mInstantAppResolverConnectionProducer:Lcom/android/server/pm/PackageManagerService$Injector$ProducerWithArgument;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$Injector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    invoke-interface {v0, p0, v1, p1}, Lcom/android/server/pm/PackageManagerService$Injector$ProducerWithArgument;->produce(Lcom/android/server/pm/PackageManagerService$Injector;Lcom/android/server/pm/PackageManagerService;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/InstantAppResolverConnection;

    return-object v0
.end method

.method public getLegacyPermissionManagerInternal()Lcom/android/server/pm/permission/LegacyPermissionManagerInternal;
    .locals 2

    .line 1300
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$Injector;->mLegacyPermissionManagerInternalProducer:Lcom/android/server/pm/PackageManagerService$Injector$Singleton;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$Injector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p0, v1}, Lcom/android/server/pm/PackageManagerService$Injector$Singleton;->get(Lcom/android/server/pm/PackageManagerService$Injector;Lcom/android/server/pm/PackageManagerService;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/permission/LegacyPermissionManagerInternal;

    return-object v0
.end method

.method public getLocalService(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1256
    .local p1, "c":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$Injector;->mGetLocalServiceProducer:Lcom/android/server/pm/PackageManagerService$Injector$ServiceProducer;

    invoke-interface {v0, p1}, Lcom/android/server/pm/PackageManagerService$Injector$ServiceProducer;->produce(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getLock()Lcom/android/server/pm/PackageManagerTracedLock;
    .locals 1

    .line 1188
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$Injector;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    return-object v0
.end method

.method public getModuleInfoProvider()Lcom/android/server/pm/ModuleInfoProvider;
    .locals 2

    .line 1296
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$Injector;->mModuleInfoProviderProducer:Lcom/android/server/pm/PackageManagerService$Injector$Singleton;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$Injector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p0, v1}, Lcom/android/server/pm/PackageManagerService$Injector$Singleton;->get(Lcom/android/server/pm/PackageManagerService$Injector;Lcom/android/server/pm/PackageManagerService;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/ModuleInfoProvider;

    return-object v0
.end method

.method public getPackageDexOptimizer()Lcom/android/server/pm/PackageDexOptimizer;
    .locals 2

    .line 1224
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$Injector;->mPackageDexOptimizerProducer:Lcom/android/server/pm/PackageManagerService$Injector$Singleton;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$Injector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p0, v1}, Lcom/android/server/pm/PackageManagerService$Injector$Singleton;->get(Lcom/android/server/pm/PackageManagerService$Injector;Lcom/android/server/pm/PackageManagerService;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageDexOptimizer;

    return-object v0
.end method

.method public getPackageInstallerService()Lcom/android/server/pm/PackageInstallerService;
    .locals 2

    .line 1286
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$Injector;->mPackageInstallerServiceProducer:Lcom/android/server/pm/PackageManagerService$Injector$Singleton;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$Injector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p0, v1}, Lcom/android/server/pm/PackageManagerService$Injector$Singleton;->get(Lcom/android/server/pm/PackageManagerService$Injector;Lcom/android/server/pm/PackageManagerService;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageInstallerService;

    return-object v0
.end method

.method public getPermissionManagerServiceInternal()Lcom/android/server/pm/permission/PermissionManagerServiceInternal;
    .locals 2

    .line 1200
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$Injector;->mPermissionManagerServiceProducer:Lcom/android/server/pm/PackageManagerService$Injector$Singleton;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$Injector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p0, v1}, Lcom/android/server/pm/PackageManagerService$Injector$Singleton;->get(Lcom/android/server/pm/PackageManagerService$Injector;Lcom/android/server/pm/PackageManagerService;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    return-object v0
.end method

.method public getPreparingPackageParser()Lcom/android/server/pm/parsing/PackageParser2;
    .locals 2

    .line 1282
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$Injector;->mPreparingPackageParserProducer:Lcom/android/server/pm/PackageManagerService$Injector$Producer;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$Injector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    invoke-interface {v0, p0, v1}, Lcom/android/server/pm/PackageManagerService$Injector$Producer;->produce(Lcom/android/server/pm/PackageManagerService$Injector;Lcom/android/server/pm/PackageManagerService;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/parsing/PackageParser2;

    return-object v0
.end method

.method public getScanningCachingPackageParser()Lcom/android/server/pm/parsing/PackageParser2;
    .locals 2

    .line 1276
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$Injector;->mScanningCachingPackageParserProducer:Lcom/android/server/pm/PackageManagerService$Injector$Producer;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$Injector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    invoke-interface {v0, p0, v1}, Lcom/android/server/pm/PackageManagerService$Injector$Producer;->produce(Lcom/android/server/pm/PackageManagerService$Injector;Lcom/android/server/pm/PackageManagerService;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/parsing/PackageParser2;

    return-object v0
.end method

.method public getScanningPackageParser()Lcom/android/server/pm/parsing/PackageParser2;
    .locals 2

    .line 1279
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$Injector;->mScanningPackageParserProducer:Lcom/android/server/pm/PackageManagerService$Injector$Producer;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$Injector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    invoke-interface {v0, p0, v1}, Lcom/android/server/pm/PackageManagerService$Injector$Producer;->produce(Lcom/android/server/pm/PackageManagerService$Injector;Lcom/android/server/pm/PackageManagerService;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/parsing/PackageParser2;

    return-object v0
.end method

.method public getSettings()Lcom/android/server/pm/Settings;
    .locals 2

    .line 1208
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$Injector;->mSettingsProducer:Lcom/android/server/pm/PackageManagerService$Injector$Singleton;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$Injector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p0, v1}, Lcom/android/server/pm/PackageManagerService$Injector$Singleton;->get(Lcom/android/server/pm/PackageManagerService$Injector;Lcom/android/server/pm/PackageManagerService;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/Settings;

    return-object v0
.end method

.method public getSystemConfig()Lcom/android/server/SystemConfig;
    .locals 2

    .line 1220
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$Injector;->mSystemConfigProducer:Lcom/android/server/pm/PackageManagerService$Injector$Singleton;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$Injector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p0, v1}, Lcom/android/server/pm/PackageManagerService$Injector$Singleton;->get(Lcom/android/server/pm/PackageManagerService$Injector;Lcom/android/server/pm/PackageManagerService;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/SystemConfig;

    return-object v0
.end method

.method public getSystemPartitions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/pm/PackageManagerService$ScanPartition;",
            ">;"
        }
    .end annotation

    .line 1180
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$Injector;->mSystemPartitions:Ljava/util/List;

    return-object v0
.end method

.method public getSystemService(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1260
    .local p1, "c":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$Injector;->mGetSystemServiceProducer:Lcom/android/server/pm/PackageManagerService$Injector$ServiceProducer;

    invoke-interface {v0, p1}, Lcom/android/server/pm/PackageManagerService$Injector$ServiceProducer;->produce(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getSystemWrapper()Lcom/android/server/pm/PackageManagerService$SystemWrapper;
    .locals 1

    .line 1264
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$Injector;->mSystemWrapper:Lcom/android/server/pm/PackageManagerService$SystemWrapper;

    return-object v0
.end method

.method public getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;
    .locals 1

    .line 1168
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$Injector;->getUserManagerService()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->getInternalForInjectorOnly()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v0

    return-object v0
.end method

.method public getUserManagerService()Lcom/android/server/pm/UserManagerService;
    .locals 2

    .line 1184
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$Injector;->mUserManagerProducer:Lcom/android/server/pm/PackageManagerService$Injector$Singleton;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$Injector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p0, v1}, Lcom/android/server/pm/PackageManagerService$Injector$Singleton;->get(Lcom/android/server/pm/PackageManagerService$Injector;Lcom/android/server/pm/PackageManagerService;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerService;

    return-object v0
.end method

.method public getViewCompiler()Lcom/android/server/pm/dex/ViewCompiler;
    .locals 2

    .line 1240
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$Injector;->mViewCompilerProducer:Lcom/android/server/pm/PackageManagerService$Injector$Singleton;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$Injector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p0, v1}, Lcom/android/server/pm/PackageManagerService$Injector$Singleton;->get(Lcom/android/server/pm/PackageManagerService$Injector;Lcom/android/server/pm/PackageManagerService;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/dex/ViewCompiler;

    return-object v0
.end method
