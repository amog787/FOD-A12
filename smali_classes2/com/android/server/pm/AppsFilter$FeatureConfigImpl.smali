.class Lcom/android/server/pm/AppsFilter$FeatureConfigImpl;
.super Ljava/lang/Object;
.source "AppsFilter.java"

# interfaces
.implements Lcom/android/server/pm/AppsFilter$FeatureConfig;
.implements Lcom/android/server/compat/CompatChange$ChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/AppsFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FeatureConfigImpl"
.end annotation


# static fields
.field private static final FILTERING_ENABLED_NAME:Ljava/lang/String; = "package_query_filtering_enabled"


# instance fields
.field private mAppsFilter:Lcom/android/server/pm/AppsFilter;

.field private final mDisabledPackages:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mFeatureEnabled:Z

.field private final mInjector:Lcom/android/server/pm/PackageManagerService$Injector;

.field private mLoggingEnabled:Landroid/util/SparseBooleanArray;

.field private final mPmInternal:Landroid/content/pm/PackageManagerInternal;


# direct methods
.method private constructor <init>(Landroid/content/pm/PackageManagerInternal;Lcom/android/server/pm/PackageManagerService$Injector;)V
    .locals 1
    .param p1, "pmInternal"    # Landroid/content/pm/PackageManagerInternal;
    .param p2, "injector"    # Lcom/android/server/pm/PackageManagerService$Injector;

    .line 348
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 339
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/pm/AppsFilter$FeatureConfigImpl;->mFeatureEnabled:Z

    .line 341
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/AppsFilter$FeatureConfigImpl;->mDisabledPackages:Landroid/util/ArraySet;

    .line 343
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pm/AppsFilter$FeatureConfigImpl;->mLoggingEnabled:Landroid/util/SparseBooleanArray;

    .line 349
    iput-object p1, p0, Lcom/android/server/pm/AppsFilter$FeatureConfigImpl;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    .line 350
    iput-object p2, p0, Lcom/android/server/pm/AppsFilter$FeatureConfigImpl;->mInjector:Lcom/android/server/pm/PackageManagerService$Injector;

    .line 351
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/pm/PackageManagerInternal;Lcom/android/server/pm/PackageManagerService$Injector;Lcom/android/server/pm/AppsFilter$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/pm/PackageManagerInternal;
    .param p2, "x1"    # Lcom/android/server/pm/PackageManagerService$Injector;
    .param p3, "x2"    # Lcom/android/server/pm/AppsFilter$1;

    .line 335
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/AppsFilter$FeatureConfigImpl;-><init>(Landroid/content/pm/PackageManagerInternal;Lcom/android/server/pm/PackageManagerService$Injector;)V

    return-void
.end method

.method private updateEnabledState(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .locals 4
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 442
    iget-object v0, p0, Lcom/android/server/pm/AppsFilter$FeatureConfigImpl;->mInjector:Lcom/android/server/pm/PackageManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$Injector;->getCompatibility()Lcom/android/server/compat/PlatformCompat;

    move-result-object v0

    .line 443
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->toAppInfoWithoutState()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 442
    const-wide/32 v2, 0x81452eb

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/server/compat/PlatformCompat;->isChangeEnabledInternalNoLogging(JLandroid/content/pm/ApplicationInfo;)Z

    move-result v0

    .line 444
    .local v0, "enabled":Z
    if-eqz v0, :cond_0

    .line 445
    iget-object v1, p0, Lcom/android/server/pm/AppsFilter$FeatureConfigImpl;->mDisabledPackages:Landroid/util/ArraySet;

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 447
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/AppsFilter$FeatureConfigImpl;->mDisabledPackages:Landroid/util/ArraySet;

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 449
    :goto_0
    iget-object v1, p0, Lcom/android/server/pm/AppsFilter$FeatureConfigImpl;->mAppsFilter:Lcom/android/server/pm/AppsFilter;

    if-eqz v1, :cond_1

    .line 450
    invoke-static {v1}, Lcom/android/server/pm/AppsFilter;->access$200(Lcom/android/server/pm/AppsFilter;)V

    .line 452
    :cond_1
    return-void
.end method


# virtual methods
.method public enableLogging(IZ)V
    .locals 2
    .param p1, "appId"    # I
    .param p2, "enable"    # Z

    .line 411
    if-eqz p2, :cond_1

    .line 412
    iget-object v0, p0, Lcom/android/server/pm/AppsFilter$FeatureConfigImpl;->mLoggingEnabled:Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_0

    .line 413
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/AppsFilter$FeatureConfigImpl;->mLoggingEnabled:Landroid/util/SparseBooleanArray;

    .line 415
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/AppsFilter$FeatureConfigImpl;->mLoggingEnabled:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_0

    .line 417
    :cond_1
    iget-object v0, p0, Lcom/android/server/pm/AppsFilter$FeatureConfigImpl;->mLoggingEnabled:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_2

    .line 418
    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v0

    .line 419
    .local v0, "index":I
    if-ltz v0, :cond_2

    .line 420
    iget-object v1, p0, Lcom/android/server/pm/AppsFilter$FeatureConfigImpl;->mLoggingEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->removeAt(I)V

    .line 421
    iget-object v1, p0, Lcom/android/server/pm/AppsFilter$FeatureConfigImpl;->mLoggingEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 422
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/pm/AppsFilter$FeatureConfigImpl;->mLoggingEnabled:Landroid/util/SparseBooleanArray;

    .line 427
    .end local v0    # "index":I
    :cond_2
    :goto_0
    return-void
.end method

.method public isGloballyEnabled()Z
    .locals 1

    .line 382
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/pm/AppsFilter$FeatureConfigImpl;->mFeatureEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 384
    :catchall_0
    move-exception v0

    .line 387
    throw v0
.end method

.method public isLoggingEnabled(I)Z
    .locals 1
    .param p1, "uid"    # I

    .line 406
    iget-object v0, p0, Lcom/android/server/pm/AppsFilter$FeatureConfigImpl;->mLoggingEnabled:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public synthetic lambda$onSystemReady$0$AppsFilter$FeatureConfigImpl(Landroid/provider/DeviceConfig$Properties;)V
    .locals 2
    .param p1, "properties"    # Landroid/provider/DeviceConfig$Properties;

    .line 365
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object v0

    const-string v1, "package_query_filtering_enabled"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 366
    monitor-enter p0

    .line 367
    :try_start_0
    const-string v0, "package_query_filtering_enabled"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/provider/DeviceConfig$Properties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/pm/AppsFilter$FeatureConfigImpl;->mFeatureEnabled:Z

    .line 369
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 371
    :cond_0
    :goto_0
    return-void
.end method

.method public onCompatChange(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 431
    iget-object v0, p0, Lcom/android/server/pm/AppsFilter$FeatureConfigImpl;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v0

    .line 432
    .local v0, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-nez v0, :cond_0

    .line 433
    return-void

    .line 435
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/server/pm/AppsFilter$FeatureConfigImpl;->updateEnabledState(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V

    .line 436
    iget-object v1, p0, Lcom/android/server/pm/AppsFilter$FeatureConfigImpl;->mAppsFilter:Lcom/android/server/pm/AppsFilter;

    invoke-static {v1, p1}, Lcom/android/server/pm/AppsFilter;->access$100(Lcom/android/server/pm/AppsFilter;Ljava/lang/String;)V

    .line 437
    return-void
.end method

.method public onSystemReady()V
    .locals 3

    .line 359
    const-string v0, "package_manager_service"

    const-string v1, "package_query_filtering_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/pm/AppsFilter$FeatureConfigImpl;->mFeatureEnabled:Z

    .line 362
    nop

    .line 363
    invoke-static {}, Lcom/android/server/FgThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/android/server/pm/AppsFilter$FeatureConfigImpl$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/server/pm/AppsFilter$FeatureConfigImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/AppsFilter$FeatureConfigImpl;)V

    .line 362
    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 372
    iget-object v0, p0, Lcom/android/server/pm/AppsFilter$FeatureConfigImpl;->mInjector:Lcom/android/server/pm/PackageManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$Injector;->getCompatibility()Lcom/android/server/compat/PlatformCompat;

    move-result-object v0

    const-wide/32 v1, 0x81452eb

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/server/compat/PlatformCompat;->registerListener(JLcom/android/server/compat/CompatChange$ChangeListener;)Z

    .line 374
    return-void
.end method

.method public packageIsEnabled(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z
    .locals 2
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 396
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/AppsFilter$FeatureConfigImpl;->mDisabledPackages:Landroid/util/ArraySet;

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/lit8 v0, v0, 0x1

    return v0

    .line 398
    :catchall_0
    move-exception v0

    .line 401
    throw v0
.end method

.method public setAppsFilter(Lcom/android/server/pm/AppsFilter;)V
    .locals 0
    .param p1, "filter"    # Lcom/android/server/pm/AppsFilter;

    .line 354
    iput-object p1, p0, Lcom/android/server/pm/AppsFilter$FeatureConfigImpl;->mAppsFilter:Lcom/android/server/pm/AppsFilter;

    .line 355
    return-void
.end method

.method public updatePackageState(Lcom/android/server/pm/PackageSetting;Z)V
    .locals 3
    .param p1, "setting"    # Lcom/android/server/pm/PackageSetting;
    .param p2, "removed"    # Z

    .line 456
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    if-eqz v0, :cond_1

    if-nez p2, :cond_1

    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 457
    invoke-interface {v0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isTestOnly()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    invoke-interface {v0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isDebuggable()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 458
    .local v0, "enableLogging":Z
    :goto_0
    iget v1, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-virtual {p0, v1, v0}, Lcom/android/server/pm/AppsFilter$FeatureConfigImpl;->enableLogging(IZ)V

    .line 459
    if-eqz p2, :cond_2

    .line 460
    iget-object v1, p0, Lcom/android/server/pm/AppsFilter$FeatureConfigImpl;->mDisabledPackages:Landroid/util/ArraySet;

    iget-object v2, p1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 461
    :cond_2
    iget-object v1, p1, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    if-eqz v1, :cond_3

    .line 462
    iget-object v1, p1, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    invoke-direct {p0, v1}, Lcom/android/server/pm/AppsFilter$FeatureConfigImpl;->updateEnabledState(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V

    .line 464
    :cond_3
    :goto_1
    return-void
.end method
