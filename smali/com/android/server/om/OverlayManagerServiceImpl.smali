.class final Lcom/android/server/om/OverlayManagerServiceImpl;
.super Ljava/lang/Object;
.source "OverlayManagerServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;
    }
.end annotation


# static fields
.field private static final FLAG_OVERLAY_IS_BEING_REPLACED:I = 0x2

.field private static final FLAG_TARGET_IS_BEING_REPLACED:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private final mDefaultOverlays:[Ljava/lang/String;

.field private final mIdmapManager:Lcom/android/server/om/IdmapManager;

.field private final mOverlayConfig:Lcom/android/internal/content/om/OverlayConfig;

.field private final mPackageManager:Lcom/android/server/om/PackageManagerHelper;

.field private final mSettings:Lcom/android/server/om/OverlayManagerSettings;


# direct methods
.method constructor <init>(Lcom/android/server/om/PackageManagerHelper;Lcom/android/server/om/IdmapManager;Lcom/android/server/om/OverlayManagerSettings;Lcom/android/internal/content/om/OverlayConfig;[Ljava/lang/String;)V
    .locals 0
    .param p1, "packageManager"    # Lcom/android/server/om/PackageManagerHelper;
    .param p2, "idmapManager"    # Lcom/android/server/om/IdmapManager;
    .param p3, "settings"    # Lcom/android/server/om/OverlayManagerSettings;
    .param p4, "overlayConfig"    # Lcom/android/internal/content/om/OverlayConfig;
    .param p5, "defaultOverlays"    # [Ljava/lang/String;

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    iput-object p1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mPackageManager:Lcom/android/server/om/PackageManagerHelper;

    .line 140
    iput-object p2, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mIdmapManager:Lcom/android/server/om/IdmapManager;

    .line 141
    iput-object p3, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    .line 142
    iput-object p4, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mOverlayConfig:Lcom/android/internal/content/om/OverlayConfig;

    .line 143
    iput-object p5, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mDefaultOverlays:[Ljava/lang/String;

    .line 144
    return-void
.end method

.method private calculateNewState(Landroid/content/om/OverlayInfo;Lcom/android/server/pm/parsing/pkg/AndroidPackage;II)I
    .locals 2
    .param p1, "info"    # Landroid/content/om/OverlayInfo;
    .param p2, "targetPackage"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p3, "userId"    # I
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
        }
    .end annotation

    .line 807
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_0

    .line 808
    const/4 v0, 0x4

    return v0

    .line 811
    :cond_0
    and-int/lit8 v0, p4, 0x2

    if-eqz v0, :cond_1

    .line 812
    const/4 v0, 0x5

    return v0

    .line 815
    :cond_1
    if-nez p2, :cond_2

    .line 816
    const/4 v0, 0x0

    return v0

    .line 819
    :cond_2
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mIdmapManager:Lcom/android/server/om/IdmapManager;

    invoke-virtual {v0, p1}, Lcom/android/server/om/IdmapManager;->idmapExists(Landroid/content/om/OverlayInfo;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 820
    const/4 v0, 0x1

    return v0

    .line 823
    :cond_3
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {p1}, Landroid/content/om/OverlayInfo;->getOverlayIdentifier()Landroid/content/om/OverlayIdentifier;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Lcom/android/server/om/OverlayManagerSettings;->getEnabled(Landroid/content/om/OverlayIdentifier;I)Z

    move-result v0

    .line 824
    .local v0, "enabled":Z
    if-eqz v0, :cond_4

    const/4 v1, 0x3

    goto :goto_0

    :cond_4
    const/4 v1, 0x2

    :goto_0
    return v1
.end method

.method private cleanStaleResourceCache()V
    .locals 5

    .line 578
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v0}, Lcom/android/server/om/OverlayManagerSettings;->getAllBaseCodePaths()Ljava/util/Set;

    move-result-object v0

    .line 579
    .local v0, "fabricatedPaths":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mIdmapManager:Lcom/android/server/om/IdmapManager;

    invoke-virtual {v1}, Lcom/android/server/om/IdmapManager;->getFabricatedOverlayInfos()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/FabricatedOverlayInfo;

    .line 580
    .local v2, "info":Landroid/os/FabricatedOverlayInfo;
    iget-object v3, v2, Landroid/os/FabricatedOverlayInfo;->path:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 581
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mIdmapManager:Lcom/android/server/om/IdmapManager;

    iget-object v4, v2, Landroid/os/FabricatedOverlayInfo;->path:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/server/om/IdmapManager;->deleteFabricatedOverlay(Ljava/lang/String;)Z

    .line 583
    .end local v2    # "info":Landroid/os/FabricatedOverlayInfo;
    :cond_0
    goto :goto_0

    .line 584
    :cond_1
    return-void
.end method

.method private getFabricatedOverlayInfos()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/FabricatedOverlayInfo;",
            ">;"
        }
    .end annotation

    .line 592
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v0}, Lcom/android/server/om/OverlayManagerSettings;->getAllBaseCodePaths()Ljava/util/Set;

    move-result-object v0

    .line 594
    .local v0, "fabricatedPaths":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mIdmapManager:Lcom/android/server/om/IdmapManager;

    .line 595
    invoke-virtual {v2}, Lcom/android/server/om/IdmapManager;->getFabricatedOverlayInfos()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 596
    .local v1, "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/FabricatedOverlayInfo;>;"
    new-instance v2, Lcom/android/server/om/OverlayManagerServiceImpl$$ExternalSyntheticLambda3;

    invoke-direct {v2, v0}, Lcom/android/server/om/OverlayManagerServiceImpl$$ExternalSyntheticLambda3;-><init>(Ljava/util/Set;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 597
    return-object v1
.end method

.method private getPackageConfiguredPriority(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)I
    .locals 2
    .param p1, "overlay"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 607
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mOverlayConfig:Lcom/android/internal/content/om/OverlayConfig;

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/content/om/OverlayConfig;->getPriority(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private isPackageConfiguredEnabled(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z
    .locals 2
    .param p1, "overlay"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 612
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mOverlayConfig:Lcom/android/internal/content/om/OverlayConfig;

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/content/om/OverlayConfig;->isEnabled(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isPackageConfiguredMutable(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z
    .locals 2
    .param p1, "overlay"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 602
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mOverlayConfig:Lcom/android/internal/content/om/OverlayConfig;

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/content/om/OverlayConfig;->isMutable(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$getFabricatedOverlayInfos$3(Ljava/util/Set;Landroid/os/FabricatedOverlayInfo;)Z
    .locals 1
    .param p0, "fabricatedPaths"    # Ljava/util/Set;
    .param p1, "info"    # Landroid/os/FabricatedOverlayInfo;

    .line 596
    iget-object v0, p1, Landroid/os/FabricatedOverlayInfo;->path:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method static synthetic lambda$onPackageRemoved$1(Ljava/lang/String;Landroid/content/om/OverlayInfo;)Z
    .locals 1
    .param p0, "pkgName"    # Ljava/lang/String;
    .param p1, "oi"    # Landroid/content/om/OverlayInfo;

    .line 284
    iget-object v0, p1, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$removeOverlaysForUser$2(ILjava/util/function/Predicate;Landroid/content/om/OverlayInfo;)Z
    .locals 1
    .param p0, "userId"    # I
    .param p1, "condition"    # Ljava/util/function/Predicate;
    .param p2, "io"    # Landroid/content/om/OverlayInfo;

    .line 291
    iget v0, p2, Landroid/content/om/OverlayInfo;->userId:I

    if-ne p0, v0, :cond_0

    invoke-interface {p1, p2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$updateOverlaysForUser$0(Landroid/util/ArrayMap;Landroid/content/om/OverlayInfo;)Z
    .locals 1
    .param p0, "userPackages"    # Landroid/util/ArrayMap;
    .param p1, "info"    # Landroid/content/om/OverlayInfo;

    .line 163
    iget-object v0, p1, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private mustReinitializeOverlay(Landroid/os/FabricatedOverlayInfo;Landroid/content/om/OverlayInfo;)Z
    .locals 3
    .param p1, "theTruth"    # Landroid/os/FabricatedOverlayInfo;
    .param p2, "oldSettings"    # Landroid/content/om/OverlayInfo;

    .line 122
    const/4 v0, 0x1

    if-nez p2, :cond_0

    .line 123
    return v0

    .line 125
    :cond_0
    iget-object v1, p1, Landroid/os/FabricatedOverlayInfo;->targetPackageName:Ljava/lang/String;

    iget-object v2, p2, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 126
    return v0

    .line 128
    :cond_1
    iget-object v1, p1, Landroid/os/FabricatedOverlayInfo;->targetOverlayable:Ljava/lang/String;

    iget-object v2, p2, Landroid/content/om/OverlayInfo;->targetOverlayableName:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 129
    return v0

    .line 131
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private mustReinitializeOverlay(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Landroid/content/om/OverlayInfo;)Z
    .locals 4
    .param p1, "theTruth"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "oldSettings"    # Landroid/content/om/OverlayInfo;

    .line 97
    const/4 v0, 0x1

    if-nez p2, :cond_0

    .line 98
    return v0

    .line 100
    :cond_0
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getOverlayTarget()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p2, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 101
    return v0

    .line 103
    :cond_1
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getOverlayTargetName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p2, Landroid/content/om/OverlayInfo;->targetOverlayableName:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 104
    return v0

    .line 106
    :cond_2
    iget-boolean v1, p2, Landroid/content/om/OverlayInfo;->isFabricated:Z

    if-eqz v1, :cond_3

    .line 107
    return v0

    .line 109
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/server/om/OverlayManagerServiceImpl;->isPackageConfiguredMutable(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v1

    .line 110
    .local v1, "isMutable":Z
    iget-boolean v2, p2, Landroid/content/om/OverlayInfo;->isMutable:Z

    if-eq v1, v2, :cond_4

    .line 111
    return v0

    .line 114
    :cond_4
    if-nez v1, :cond_5

    invoke-direct {p0, p1}, Lcom/android/server/om/OverlayManagerServiceImpl;->isPackageConfiguredEnabled(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v2

    invoke-virtual {p2}, Landroid/content/om/OverlayInfo;->isEnabled()Z

    move-result v3

    if-eq v2, v3, :cond_5

    .line 115
    return v0

    .line 117
    :cond_5
    const/4 v0, 0x0

    return v0
.end method

.method private reconcileSettingsForPackage(Ljava/lang/String;II)Ljava/util/Set;
    .locals 3
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/Set<",
            "Lcom/android/server/om/PackageAndUser;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;
        }
    .end annotation

    .line 378
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    .line 379
    .local v0, "updatedTargets":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/om/PackageAndUser;>;"
    nop

    .line 380
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateOverlaysForTarget(Ljava/lang/String;II)Ljava/util/Set;

    move-result-object v1

    .line 379
    invoke-static {v0, v1}, Lcom/android/internal/util/CollectionUtils;->addAll(Ljava/util/Set;Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v0

    .line 383
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mPackageManager:Lcom/android/server/om/PackageManagerHelper;

    invoke-interface {v1, p1, p2}, Lcom/android/server/om/PackageManagerHelper;->getPackageForUser(Ljava/lang/String;I)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v1

    .line 384
    .local v1, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-nez v1, :cond_0

    .line 385
    invoke-virtual {p0, p1, p2}, Lcom/android/server/om/OverlayManagerServiceImpl;->onPackageRemoved(Ljava/lang/String;I)Ljava/util/Set;

    move-result-object v2

    return-object v2

    .line 389
    :cond_0
    nop

    .line 390
    invoke-direct {p0, v1, p2, p3}, Lcom/android/server/om/OverlayManagerServiceImpl;->updatePackageOverlays(Lcom/android/server/pm/parsing/pkg/AndroidPackage;II)Ljava/util/Set;

    move-result-object v2

    .line 389
    invoke-static {v0, v2}, Lcom/android/internal/util/CollectionUtils;->addAll(Ljava/util/Set;Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v0

    .line 391
    return-object v0
.end method

.method private registerFabricatedOverlay(Landroid/os/FabricatedOverlayInfo;I)Ljava/util/Set;
    .locals 19
    .param p1, "info"    # Landroid/os/FabricatedOverlayInfo;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/FabricatedOverlayInfo;",
            "I)",
            "Ljava/util/Set<",
            "Lcom/android/server/om/PackageAndUser;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;
        }
    .end annotation

    .line 516
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v14, p2

    new-instance v0, Landroid/content/om/OverlayIdentifier;

    iget-object v3, v2, Landroid/os/FabricatedOverlayInfo;->packageName:Ljava/lang/String;

    iget-object v4, v2, Landroid/os/FabricatedOverlayInfo;->overlayName:Ljava/lang/String;

    invoke-direct {v0, v3, v4}, Landroid/content/om/OverlayIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v15, v0

    .line 518
    .local v15, "overlayIdentifier":Landroid/content/om/OverlayIdentifier;
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    move-object v13, v0

    .line 519
    .local v13, "updatedTargets":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/om/PackageAndUser;>;"
    iget-object v0, v1, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v0, v15, v14}, Lcom/android/server/om/OverlayManagerSettings;->getNullableOverlayInfo(Landroid/content/om/OverlayIdentifier;I)Landroid/content/om/OverlayInfo;

    move-result-object v12

    .line 520
    .local v12, "oi":Landroid/content/om/OverlayInfo;
    if-eqz v12, :cond_1

    .line 521
    iget-boolean v0, v12, Landroid/content/om/OverlayInfo;->isFabricated:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 522
    :cond_0
    new-instance v0, Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "non-fabricated overlay with name \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v12, Landroid/content/om/OverlayInfo;->overlayName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\' already present in \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v12, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 527
    :cond_1
    :goto_0
    :try_start_0
    invoke-direct {v1, v2, v12}, Lcom/android/server/om/OverlayManagerServiceImpl;->mustReinitializeOverlay(Landroid/os/FabricatedOverlayInfo;Landroid/content/om/OverlayInfo;)Z

    move-result v0
    :try_end_0
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_0 .. :try_end_0} :catch_6

    if-eqz v0, :cond_3

    .line 528
    if-eqz v12, :cond_2

    .line 531
    :try_start_1
    new-instance v0, Lcom/android/server/om/PackageAndUser;

    iget-object v3, v12, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    invoke-direct {v0, v3, v14}, Lcom/android/server/om/PackageAndUser;-><init>(Ljava/lang/String;I)V

    invoke-interface {v13, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 544
    :catch_0
    move-exception v0

    move-object v3, v13

    goto/16 :goto_4

    .line 533
    :cond_2
    :goto_1
    :try_start_2
    iget-object v3, v1, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    iget-object v6, v2, Landroid/os/FabricatedOverlayInfo;->targetPackageName:Ljava/lang/String;

    iget-object v7, v2, Landroid/os/FabricatedOverlayInfo;->targetOverlayable:Ljava/lang/String;

    iget-object v8, v2, Landroid/os/FabricatedOverlayInfo;->path:Ljava/lang/String;
    :try_end_2
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_2 .. :try_end_2} :catch_2

    const/4 v9, 0x1

    const/4 v10, 0x0

    const v11, 0x7fffffff

    const/4 v0, 0x0

    const/16 v16, 0x1

    move-object v4, v15

    move/from16 v5, p2

    move-object/from16 v17, v12

    .end local v12    # "oi":Landroid/content/om/OverlayInfo;
    .local v17, "oi":Landroid/content/om/OverlayInfo;
    move-object v12, v0

    move-object/from16 v18, v13

    .end local v13    # "updatedTargets":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/om/PackageAndUser;>;"
    .local v18, "updatedTargets":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/om/PackageAndUser;>;"
    move/from16 v13, v16

    :try_start_3
    invoke-virtual/range {v3 .. v13}, Lcom/android/server/om/OverlayManagerSettings;->init(Landroid/content/om/OverlayIdentifier;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZILjava/lang/String;Z)Landroid/content/om/OverlayInfo;

    move-result-object v0
    :try_end_3
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_3 .. :try_end_3} :catch_1

    move-object v12, v0

    .end local v17    # "oi":Landroid/content/om/OverlayInfo;
    .restart local v12    # "oi":Landroid/content/om/OverlayInfo;
    goto :goto_2

    .line 544
    .end local v12    # "oi":Landroid/content/om/OverlayInfo;
    .restart local v17    # "oi":Landroid/content/om/OverlayInfo;
    :catch_1
    move-exception v0

    move-object/from16 v12, v17

    move-object/from16 v3, v18

    goto :goto_4

    .end local v17    # "oi":Landroid/content/om/OverlayInfo;
    .end local v18    # "updatedTargets":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/om/PackageAndUser;>;"
    .restart local v12    # "oi":Landroid/content/om/OverlayInfo;
    .restart local v13    # "updatedTargets":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/om/PackageAndUser;>;"
    :catch_2
    move-exception v0

    move-object/from16 v17, v12

    move-object v3, v13

    .end local v12    # "oi":Landroid/content/om/OverlayInfo;
    .end local v13    # "updatedTargets":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/om/PackageAndUser;>;"
    .restart local v17    # "oi":Landroid/content/om/OverlayInfo;
    .restart local v18    # "updatedTargets":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/om/PackageAndUser;>;"
    goto :goto_4

    .line 539
    .end local v17    # "oi":Landroid/content/om/OverlayInfo;
    .end local v18    # "updatedTargets":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/om/PackageAndUser;>;"
    .restart local v12    # "oi":Landroid/content/om/OverlayInfo;
    .restart local v13    # "updatedTargets":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/om/PackageAndUser;>;"
    :cond_3
    move-object/from16 v17, v12

    move-object/from16 v18, v13

    .end local v12    # "oi":Landroid/content/om/OverlayInfo;
    .end local v13    # "updatedTargets":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/om/PackageAndUser;>;"
    .restart local v17    # "oi":Landroid/content/om/OverlayInfo;
    .restart local v18    # "updatedTargets":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/om/PackageAndUser;>;"
    :try_start_4
    iget-object v0, v1, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    iget-object v3, v2, Landroid/os/FabricatedOverlayInfo;->path:Ljava/lang/String;

    invoke-virtual {v0, v15, v14, v3}, Lcom/android/server/om/OverlayManagerSettings;->setBaseCodePath(Landroid/content/om/OverlayIdentifier;ILjava/lang/String;)Z
    :try_end_4
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_4 .. :try_end_4} :catch_5

    move-object/from16 v12, v17

    .line 541
    .end local v17    # "oi":Landroid/content/om/OverlayInfo;
    .restart local v12    # "oi":Landroid/content/om/OverlayInfo;
    :goto_2
    const/4 v0, 0x0

    :try_start_5
    invoke-direct {v1, v12, v14, v0}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateState(Landroid/content/om/CriticalOverlayInfo;II)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 542
    new-instance v0, Lcom/android/server/om/PackageAndUser;

    iget-object v3, v12, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    invoke-direct {v0, v3, v14}, Lcom/android/server/om/PackageAndUser;-><init>(Ljava/lang/String;I)V
    :try_end_5
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_5 .. :try_end_5} :catch_4

    move-object/from16 v3, v18

    .end local v18    # "updatedTargets":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/om/PackageAndUser;>;"
    .local v3, "updatedTargets":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/om/PackageAndUser;>;"
    :try_start_6
    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_3

    .line 544
    :catch_3
    move-exception v0

    goto :goto_4

    .line 541
    .end local v3    # "updatedTargets":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/om/PackageAndUser;>;"
    .restart local v18    # "updatedTargets":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/om/PackageAndUser;>;"
    :cond_4
    move-object/from16 v3, v18

    .line 546
    .end local v18    # "updatedTargets":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/om/PackageAndUser;>;"
    .restart local v3    # "updatedTargets":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/om/PackageAndUser;>;"
    :goto_3
    nop

    .line 548
    return-object v3

    .line 544
    .end local v3    # "updatedTargets":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/om/PackageAndUser;>;"
    .restart local v18    # "updatedTargets":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/om/PackageAndUser;>;"
    :catch_4
    move-exception v0

    move-object/from16 v3, v18

    .end local v18    # "updatedTargets":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/om/PackageAndUser;>;"
    .restart local v3    # "updatedTargets":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/om/PackageAndUser;>;"
    goto :goto_4

    .end local v3    # "updatedTargets":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/om/PackageAndUser;>;"
    .end local v12    # "oi":Landroid/content/om/OverlayInfo;
    .restart local v17    # "oi":Landroid/content/om/OverlayInfo;
    .restart local v18    # "updatedTargets":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/om/PackageAndUser;>;"
    :catch_5
    move-exception v0

    move-object/from16 v3, v18

    move-object/from16 v12, v17

    .end local v18    # "updatedTargets":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/om/PackageAndUser;>;"
    .restart local v3    # "updatedTargets":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/om/PackageAndUser;>;"
    goto :goto_4

    .end local v3    # "updatedTargets":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/om/PackageAndUser;>;"
    .end local v17    # "oi":Landroid/content/om/OverlayInfo;
    .restart local v12    # "oi":Landroid/content/om/OverlayInfo;
    .restart local v13    # "updatedTargets":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/om/PackageAndUser;>;"
    :catch_6
    move-exception v0

    move-object/from16 v17, v12

    move-object v3, v13

    .line 545
    .end local v13    # "updatedTargets":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/om/PackageAndUser;>;"
    .local v0, "e":Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
    .restart local v3    # "updatedTargets":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/om/PackageAndUser;>;"
    :goto_4
    new-instance v4, Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;

    const-string v5, "failed to update settings"

    invoke-direct {v4, v5, v0}, Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method private removeIdmapIfPossible(Landroid/content/om/OverlayInfo;)V
    .locals 6
    .param p1, "oi"    # Landroid/content/om/OverlayInfo;

    .line 846
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mIdmapManager:Lcom/android/server/om/IdmapManager;

    invoke-virtual {v0, p1}, Lcom/android/server/om/IdmapManager;->idmapExists(Landroid/content/om/OverlayInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 847
    return-void

    .line 849
    :cond_0
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v0}, Lcom/android/server/om/OverlayManagerSettings;->getUsers()[I

    move-result-object v0

    .line 850
    .local v0, "userIds":[I
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget v3, v0, v2

    .line 852
    .local v3, "userId":I
    :try_start_0
    iget-object v4, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {p1}, Landroid/content/om/OverlayInfo;->getOverlayIdentifier()Landroid/content/om/OverlayIdentifier;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Lcom/android/server/om/OverlayManagerSettings;->getOverlayInfo(Landroid/content/om/OverlayIdentifier;I)Landroid/content/om/OverlayInfo;

    move-result-object v4

    .line 853
    .local v4, "tmp":Landroid/content/om/OverlayInfo;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/content/om/OverlayInfo;->isEnabled()Z

    move-result v5
    :try_end_0
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v5, :cond_1

    .line 855
    return-void

    .line 859
    .end local v4    # "tmp":Landroid/content/om/OverlayInfo;
    :cond_1
    goto :goto_1

    .line 857
    :catch_0
    move-exception v4

    .line 850
    .end local v3    # "userId":I
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 861
    :cond_2
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mIdmapManager:Lcom/android/server/om/IdmapManager;

    iget v2, p1, Landroid/content/om/OverlayInfo;->userId:I

    invoke-virtual {v1, p1, v2}, Lcom/android/server/om/IdmapManager;->removeIdmap(Landroid/content/om/OverlayInfo;I)Z

    .line 862
    return-void
.end method

.method private removeOverlaysForUser(Ljava/util/function/Predicate;I)Ljava/util/Set;
    .locals 7
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Landroid/content/om/OverlayInfo;",
            ">;I)",
            "Ljava/util/Set<",
            "Lcom/android/server/om/PackageAndUser;",
            ">;"
        }
    .end annotation

    .line 290
    .local p1, "condition":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Landroid/content/om/OverlayInfo;>;"
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    new-instance v1, Lcom/android/server/om/OverlayManagerServiceImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p2, p1}, Lcom/android/server/om/OverlayManagerServiceImpl$$ExternalSyntheticLambda0;-><init>(ILjava/util/function/Predicate;)V

    invoke-virtual {v0, v1}, Lcom/android/server/om/OverlayManagerSettings;->removeIf(Ljava/util/function/Predicate;)Ljava/util/List;

    move-result-object v0

    .line 292
    .local v0, "overlays":Ljava/util/List;, "Ljava/util/List<Landroid/content/om/OverlayInfo;>;"
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    .line 293
    .local v1, "targets":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/om/PackageAndUser;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "n":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 294
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/om/OverlayInfo;

    .line 295
    .local v4, "info":Landroid/content/om/OverlayInfo;
    new-instance v5, Lcom/android/server/om/PackageAndUser;

    iget-object v6, v4, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    invoke-direct {v5, v6, p2}, Lcom/android/server/om/PackageAndUser;-><init>(Ljava/lang/String;I)V

    invoke-static {v1, v5}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    .line 299
    invoke-direct {p0, v4}, Lcom/android/server/om/OverlayManagerServiceImpl;->removeIdmapIfPossible(Landroid/content/om/OverlayInfo;)V

    .line 293
    .end local v4    # "info":Landroid/content/om/OverlayInfo;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 301
    .end local v2    # "i":I
    .end local v3    # "n":I
    :cond_0
    return-object v1
.end method

.method private unregisterFabricatedOverlay(Landroid/content/om/OverlayIdentifier;I)Ljava/util/Set;
    .locals 3
    .param p1, "overlay"    # Landroid/content/om/OverlayIdentifier;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/om/OverlayIdentifier;",
            "I)",
            "Ljava/util/Set<",
            "Lcom/android/server/om/PackageAndUser;",
            ">;"
        }
    .end annotation

    .line 563
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->getNullableOverlayInfo(Landroid/content/om/OverlayIdentifier;I)Landroid/content/om/OverlayInfo;

    move-result-object v0

    .line 564
    .local v0, "oi":Landroid/content/om/OverlayInfo;
    if-eqz v0, :cond_0

    .line 565
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->remove(Landroid/content/om/OverlayIdentifier;I)Z

    .line 566
    invoke-virtual {v0}, Landroid/content/om/OverlayInfo;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 569
    new-instance v1, Lcom/android/server/om/PackageAndUser;

    iget-object v2, v0, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    invoke-direct {v1, v2, p2}, Lcom/android/server/om/PackageAndUser;-><init>(Ljava/lang/String;I)V

    invoke-static {v1}, Ljava/util/Set;->of(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    return-object v1

    .line 572
    :cond_0
    invoke-static {}, Ljava/util/Set;->of()Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method

.method private updateOverlaysForTarget(Ljava/lang/String;II)Ljava/util/Set;
    .locals 8
    .param p1, "targetPackage"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/Set<",
            "Lcom/android/server/om/PackageAndUser;",
            ">;"
        }
    .end annotation

    .line 307
    const/4 v0, 0x0

    .line 308
    .local v0, "modified":Z
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->getOverlaysForTarget(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    .line 309
    .local v1, "overlays":Ljava/util/List;, "Ljava/util/List<Landroid/content/om/OverlayInfo;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "n":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 310
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/om/OverlayInfo;

    .line 312
    .local v4, "oi":Landroid/content/om/OverlayInfo;
    :try_start_0
    invoke-direct {p0, v4, p2, p3}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateState(Landroid/content/om/CriticalOverlayInfo;II)Z

    move-result v5
    :try_end_0
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_0 .. :try_end_0} :catch_0

    or-int/2addr v0, v5

    .line 316
    goto :goto_1

    .line 313
    :catch_0
    move-exception v5

    .line 314
    .local v5, "e":Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
    const-string v6, "OverlayManager"

    const-string v7, "failed to update settings"

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 315
    iget-object v6, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v4}, Landroid/content/om/OverlayInfo;->getOverlayIdentifier()Landroid/content/om/OverlayIdentifier;

    move-result-object v7

    invoke-virtual {v6, v7, p2}, Lcom/android/server/om/OverlayManagerSettings;->remove(Landroid/content/om/OverlayIdentifier;I)Z

    move-result v6

    or-int/2addr v0, v6

    .line 309
    .end local v4    # "oi":Landroid/content/om/OverlayInfo;
    .end local v5    # "e":Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 318
    .end local v2    # "i":I
    .end local v3    # "n":I
    :cond_0
    if-nez v0, :cond_1

    .line 319
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v2

    return-object v2

    .line 321
    :cond_1
    new-instance v2, Lcom/android/server/om/PackageAndUser;

    invoke-direct {v2, p1, p2}, Lcom/android/server/om/PackageAndUser;-><init>(Ljava/lang/String;I)V

    invoke-static {v2}, Ljava/util/Set;->of(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    return-object v2
.end method

.method private updatePackageOverlays(Lcom/android/server/pm/parsing/pkg/AndroidPackage;II)Ljava/util/Set;
    .locals 18
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "userId"    # I
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            "II)",
            "Ljava/util/Set<",
            "Lcom/android/server/om/PackageAndUser;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;
        }
    .end annotation

    .line 327
    move-object/from16 v1, p0

    move/from16 v13, p2

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getOverlayTarget()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 329
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 332
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v2

    .line 333
    .local v2, "updatedTargets":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/om/PackageAndUser;>;"
    new-instance v0, Landroid/content/om/OverlayIdentifier;

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/content/om/OverlayIdentifier;-><init>(Ljava/lang/String;)V

    move-object v14, v0

    .line 334
    .local v14, "overlay":Landroid/content/om/OverlayIdentifier;
    invoke-direct/range {p0 .. p1}, Lcom/android/server/om/OverlayManagerServiceImpl;->getPackageConfiguredPriority(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)I

    move-result v15

    .line 336
    .local v15, "priority":I
    :try_start_0
    iget-object v0, v1, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v0, v14, v13}, Lcom/android/server/om/OverlayManagerSettings;->getNullableOverlayInfo(Landroid/content/om/OverlayIdentifier;I)Landroid/content/om/OverlayInfo;

    move-result-object v0

    .line 337
    .local v0, "currentInfo":Landroid/content/om/OverlayInfo;
    move-object/from16 v12, p1

    invoke-direct {v1, v12, v0}, Lcom/android/server/om/OverlayManagerServiceImpl;->mustReinitializeOverlay(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Landroid/content/om/OverlayInfo;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 338
    if-eqz v0, :cond_1

    .line 341
    new-instance v3, Lcom/android/server/om/PackageAndUser;

    iget-object v4, v0, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    invoke-direct {v3, v4, v13}, Lcom/android/server/om/PackageAndUser;-><init>(Ljava/lang/String;I)V

    invoke-static {v2, v3}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3
    :try_end_0
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_0 .. :try_end_0} :catch_2

    move-object v2, v3

    move-object/from16 v16, v2

    goto :goto_0

    .line 338
    :cond_1
    move-object/from16 v16, v2

    .line 345
    .end local v2    # "updatedTargets":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/om/PackageAndUser;>;"
    .local v16, "updatedTargets":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/om/PackageAndUser;>;"
    :goto_0
    :try_start_1
    iget-object v2, v1, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getOverlayTarget()Ljava/lang/String;

    move-result-object v5

    .line 346
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getOverlayTargetName()Ljava/lang/String;

    move-result-object v6

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getBaseApkPath()Ljava/lang/String;

    move-result-object v7

    .line 347
    invoke-direct/range {p0 .. p1}, Lcom/android/server/om/OverlayManagerServiceImpl;->isPackageConfiguredMutable(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v8

    .line 348
    invoke-direct/range {p0 .. p1}, Lcom/android/server/om/OverlayManagerServiceImpl;->isPackageConfiguredEnabled(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v9

    .line 349
    invoke-direct/range {p0 .. p1}, Lcom/android/server/om/OverlayManagerServiceImpl;->getPackageConfiguredPriority(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)I

    move-result v10

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getOverlayCategory()Ljava/lang/String;

    move-result-object v11

    const/16 v17, 0x0

    .line 345
    move-object v3, v14

    move/from16 v4, p2

    move/from16 v12, v17

    invoke-virtual/range {v2 .. v12}, Lcom/android/server/om/OverlayManagerSettings;->init(Landroid/content/om/OverlayIdentifier;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZILjava/lang/String;Z)Landroid/content/om/OverlayInfo;

    move-result-object v2
    :try_end_1
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v2

    move-object/from16 v2, v16

    goto :goto_1

    .line 364
    .end local v0    # "currentInfo":Landroid/content/om/OverlayInfo;
    :catch_0
    move-exception v0

    move/from16 v3, p3

    move-object/from16 v2, v16

    goto :goto_2

    .line 351
    .end local v16    # "updatedTargets":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/om/PackageAndUser;>;"
    .restart local v0    # "currentInfo":Landroid/content/om/OverlayInfo;
    .restart local v2    # "updatedTargets":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/om/PackageAndUser;>;"
    :cond_2
    :try_start_2
    iget v3, v0, Landroid/content/om/OverlayInfo;->priority:I

    if-eq v15, v3, :cond_3

    .line 354
    iget-object v3, v1, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v3, v14, v13, v15}, Lcom/android/server/om/OverlayManagerSettings;->setPriority(Landroid/content/om/OverlayIdentifier;II)V

    .line 355
    new-instance v3, Lcom/android/server/om/PackageAndUser;

    iget-object v4, v0, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    invoke-direct {v3, v4, v13}, Lcom/android/server/om/PackageAndUser;-><init>(Ljava/lang/String;I)V

    invoke-static {v2, v3}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3
    :try_end_2
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v2, v3

    .line 360
    :cond_3
    :goto_1
    move/from16 v3, p3

    :try_start_3
    invoke-direct {v1, v0, v13, v3}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateState(Landroid/content/om/CriticalOverlayInfo;II)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 361
    new-instance v4, Lcom/android/server/om/PackageAndUser;

    iget-object v5, v0, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    invoke-direct {v4, v5, v13}, Lcom/android/server/om/PackageAndUser;-><init>(Ljava/lang/String;I)V

    invoke-static {v2, v4}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v4
    :try_end_3
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_3 .. :try_end_3} :catch_1

    move-object v2, v4

    .line 366
    .end local v0    # "currentInfo":Landroid/content/om/OverlayInfo;
    :cond_4
    nop

    .line 367
    return-object v2

    .line 364
    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    move/from16 v3, p3

    .line 365
    .local v0, "e":Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
    :goto_2
    new-instance v4, Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;

    const-string v5, "failed to update settings"

    invoke-direct {v4, v5, v0}, Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method private updateState(Landroid/content/om/CriticalOverlayInfo;II)Z
    .locals 11
    .param p1, "info"    # Landroid/content/om/CriticalOverlayInfo;
    .param p2, "userId"    # I
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
        }
    .end annotation

    .line 762
    invoke-interface {p1}, Landroid/content/om/CriticalOverlayInfo;->getOverlayIdentifier()Landroid/content/om/OverlayIdentifier;

    move-result-object v0

    .line 763
    .local v0, "overlay":Landroid/content/om/OverlayIdentifier;
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mPackageManager:Lcom/android/server/om/PackageManagerHelper;

    .line 764
    invoke-interface {p1}, Landroid/content/om/CriticalOverlayInfo;->getTargetPackageName()Ljava/lang/String;

    move-result-object v2

    .line 763
    invoke-interface {v1, v2, p2}, Lcom/android/server/om/PackageManagerHelper;->getPackageForUser(Ljava/lang/String;I)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v1

    .line 765
    .local v1, "targetPackage":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mPackageManager:Lcom/android/server/om/PackageManagerHelper;

    .line 766
    invoke-interface {p1}, Landroid/content/om/CriticalOverlayInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 765
    invoke-interface {v2, v3, p2}, Lcom/android/server/om/PackageManagerHelper;->getPackageForUser(Ljava/lang/String;I)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v2

    .line 768
    .local v2, "overlayPackage":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    const/4 v3, 0x0

    .line 769
    .local v3, "modified":Z
    if-nez v2, :cond_0

    .line 770
    iget-object v4, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v4, v0, p2}, Lcom/android/server/om/OverlayManagerSettings;->getOverlayInfo(Landroid/content/om/OverlayIdentifier;I)Landroid/content/om/OverlayInfo;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/om/OverlayManagerServiceImpl;->removeIdmapIfPossible(Landroid/content/om/OverlayInfo;)V

    .line 771
    iget-object v4, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v4, v0, p2}, Lcom/android/server/om/OverlayManagerSettings;->remove(Landroid/content/om/OverlayIdentifier;I)Z

    move-result v4

    return v4

    .line 774
    :cond_0
    iget-object v4, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-interface {v2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getOverlayCategory()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v0, p2, v5}, Lcom/android/server/om/OverlayManagerSettings;->setCategory(Landroid/content/om/OverlayIdentifier;ILjava/lang/String;)Z

    move-result v4

    or-int/2addr v3, v4

    .line 775
    invoke-interface {p1}, Landroid/content/om/CriticalOverlayInfo;->isFabricated()Z

    move-result v4

    if-nez v4, :cond_1

    .line 776
    iget-object v4, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-interface {v2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getBaseApkPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v0, p2, v5}, Lcom/android/server/om/OverlayManagerSettings;->setBaseCodePath(Landroid/content/om/OverlayIdentifier;ILjava/lang/String;)Z

    move-result v4

    or-int/2addr v3, v4

    move v9, v3

    goto :goto_0

    .line 775
    :cond_1
    move v9, v3

    .line 781
    .end local v3    # "modified":Z
    .local v9, "modified":Z
    :goto_0
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v3, v0, p2}, Lcom/android/server/om/OverlayManagerSettings;->getOverlayInfo(Landroid/content/om/OverlayIdentifier;I)Landroid/content/om/OverlayInfo;

    move-result-object v10

    .line 782
    .local v10, "updatedOverlayInfo":Landroid/content/om/OverlayInfo;
    if-eqz v1, :cond_3

    invoke-interface {p1}, Landroid/content/om/CriticalOverlayInfo;->getTargetPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 783
    invoke-direct {p0, v2}, Lcom/android/server/om/OverlayManagerServiceImpl;->isPackageConfiguredMutable(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 784
    :cond_2
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mIdmapManager:Lcom/android/server/om/IdmapManager;

    iget-object v6, v10, Landroid/content/om/OverlayInfo;->baseCodePath:Ljava/lang/String;

    .line 785
    invoke-virtual {v0}, Landroid/content/om/OverlayIdentifier;->getOverlayName()Ljava/lang/String;

    move-result-object v7

    .line 784
    move-object v4, v1

    move-object v5, v2

    move v8, p2

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/om/IdmapManager;->createIdmap(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v3

    or-int/2addr v9, v3

    .line 788
    :cond_3
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v3, v0, p2}, Lcom/android/server/om/OverlayManagerSettings;->getState(Landroid/content/om/OverlayIdentifier;I)I

    move-result v3

    .line 789
    .local v3, "currentState":I
    invoke-direct {p0, v10, v1, p2, p3}, Lcom/android/server/om/OverlayManagerServiceImpl;->calculateNewState(Landroid/content/om/OverlayInfo;Lcom/android/server/pm/parsing/pkg/AndroidPackage;II)I

    move-result v4

    .line 791
    .local v4, "newState":I
    if-eq v3, v4, :cond_4

    .line 798
    iget-object v5, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v5, v0, p2, v4}, Lcom/android/server/om/OverlayManagerSettings;->setState(Landroid/content/om/OverlayIdentifier;II)Z

    move-result v5

    or-int/2addr v9, v5

    .line 801
    :cond_4
    return v9
.end method


# virtual methods
.method dump(Ljava/io/PrintWriter;Lcom/android/server/om/DumpState;)V
    .locals 8
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "dumpState"    # Lcom/android/server/om/DumpState;

    .line 687
    const/4 v0, 0x0

    .line 688
    .local v0, "overlayIdmap":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/content/om/OverlayIdentifier;Ljava/lang/String;>;"
    invoke-virtual {p2}, Lcom/android/server/om/DumpState;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 689
    new-instance v1, Landroid/content/om/OverlayIdentifier;

    invoke-virtual {p2}, Lcom/android/server/om/DumpState;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 690
    invoke-virtual {p2}, Lcom/android/server/om/DumpState;->getOverlayName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/content/om/OverlayIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 691
    .local v1, "id":Landroid/content/om/OverlayIdentifier;
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v3, v1, v2}, Lcom/android/server/om/OverlayManagerSettings;->getNullableOverlayInfo(Landroid/content/om/OverlayIdentifier;I)Landroid/content/om/OverlayInfo;

    move-result-object v3

    .line 692
    .local v3, "oi":Landroid/content/om/OverlayInfo;
    if-eqz v3, :cond_0

    .line 693
    new-instance v4, Landroid/util/Pair;

    iget-object v5, v3, Landroid/content/om/OverlayInfo;->baseCodePath:Ljava/lang/String;

    invoke-direct {v4, v1, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v4

    .line 698
    .end local v1    # "id":Landroid/content/om/OverlayIdentifier;
    .end local v3    # "oi":Landroid/content/om/OverlayInfo;
    :cond_0
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->dump(Ljava/io/PrintWriter;Lcom/android/server/om/DumpState;)V

    .line 701
    invoke-virtual {p2}, Lcom/android/server/om/DumpState;->getField()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    .line 702
    if-eqz v0, :cond_1

    .line 703
    invoke-static {v0}, Ljava/util/Set;->of(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v1}, Lcom/android/server/om/OverlayManagerSettings;->getAllIdentifiersAndBaseCodePaths()Ljava/util/Set;

    move-result-object v1

    .line 704
    .local v1, "allIdmaps":Ljava/util/Set;, "Ljava/util/Set<Landroid/util/Pair<Landroid/content/om/OverlayIdentifier;Ljava/lang/String;>;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    .line 705
    .local v4, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/content/om/OverlayIdentifier;Ljava/lang/String;>;"
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IDMAP OF "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 706
    iget-object v5, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mIdmapManager:Lcom/android/server/om/IdmapManager;

    iget-object v6, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/android/server/om/IdmapManager;->dumpIdmap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 707
    .local v5, "dump":Ljava/lang/String;
    if-eqz v5, :cond_2

    .line 708
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    .line 710
    :cond_2
    iget-object v6, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    iget-object v7, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Landroid/content/om/OverlayIdentifier;

    invoke-virtual {v6, v7, v2}, Lcom/android/server/om/OverlayManagerSettings;->getNullableOverlayInfo(Landroid/content/om/OverlayIdentifier;I)Landroid/content/om/OverlayInfo;

    move-result-object v6

    .line 711
    .local v6, "oi":Landroid/content/om/OverlayInfo;
    if-eqz v6, :cond_3

    iget-object v7, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mIdmapManager:Lcom/android/server/om/IdmapManager;

    invoke-virtual {v7, v6}, Lcom/android/server/om/IdmapManager;->idmapExists(Landroid/content/om/OverlayInfo;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 712
    const-string v7, "<missing idmap>"

    goto :goto_2

    :cond_3
    const-string v7, "<internal error>"

    .line 711
    :goto_2
    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 714
    .end local v4    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/content/om/OverlayIdentifier;Ljava/lang/String;>;"
    .end local v5    # "dump":Ljava/lang/String;
    .end local v6    # "oi":Landroid/content/om/OverlayInfo;
    :goto_3
    goto :goto_1

    .line 718
    .end local v1    # "allIdmaps":Ljava/util/Set;, "Ljava/util/Set<Landroid/util/Pair<Landroid/content/om/OverlayIdentifier;Ljava/lang/String;>;>;"
    :cond_4
    if-nez v0, :cond_5

    .line 719
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Default overlays: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mDefaultOverlays:[Ljava/lang/String;

    const-string v3, ";"

    invoke-static {v3, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 721
    :cond_5
    return-void
.end method

.method getDefaultOverlayPackages()[Ljava/lang/String;
    .locals 1

    .line 724
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mDefaultOverlays:[Ljava/lang/String;

    return-object v0
.end method

.method getEnabledOverlayPaths(Ljava/lang/String;I)Landroid/content/pm/overlay/OverlayPaths;
    .locals 6
    .param p1, "targetPackageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 739
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->getOverlaysForTarget(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    .line 741
    .local v0, "overlays":Ljava/util/List;, "Ljava/util/List<Landroid/content/om/OverlayInfo;>;"
    new-instance v1, Landroid/content/pm/overlay/OverlayPaths$Builder;

    invoke-direct {v1}, Landroid/content/pm/overlay/OverlayPaths$Builder;-><init>()V

    .line 742
    .local v1, "paths":Landroid/content/pm/overlay/OverlayPaths$Builder;
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 743
    .local v2, "n":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 744
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/om/OverlayInfo;

    .line 745
    .local v4, "oi":Landroid/content/om/OverlayInfo;
    invoke-virtual {v4}, Landroid/content/om/OverlayInfo;->isEnabled()Z

    move-result v5

    if-nez v5, :cond_0

    .line 746
    goto :goto_1

    .line 748
    :cond_0
    invoke-virtual {v4}, Landroid/content/om/OverlayInfo;->isFabricated()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 749
    iget-object v5, v4, Landroid/content/om/OverlayInfo;->baseCodePath:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/content/pm/overlay/OverlayPaths$Builder;->addNonApkPath(Ljava/lang/String;)Landroid/content/pm/overlay/OverlayPaths$Builder;

    goto :goto_1

    .line 751
    :cond_1
    iget-object v5, v4, Landroid/content/om/OverlayInfo;->baseCodePath:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/content/pm/overlay/OverlayPaths$Builder;->addApkPath(Ljava/lang/String;)Landroid/content/pm/overlay/OverlayPaths$Builder;

    .line 743
    .end local v4    # "oi":Landroid/content/om/OverlayInfo;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 754
    .end local v3    # "i":I
    :cond_2
    invoke-virtual {v1}, Landroid/content/pm/overlay/OverlayPaths$Builder;->build()Landroid/content/pm/overlay/OverlayPaths;

    move-result-object v3

    return-object v3
.end method

.method getOverlayInfo(Landroid/content/om/OverlayIdentifier;I)Landroid/content/om/OverlayInfo;
    .locals 2
    .param p1, "packageName"    # Landroid/content/om/OverlayIdentifier;
    .param p2, "userId"    # I

    .line 396
    :try_start_0
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->getOverlayInfo(Landroid/content/om/OverlayIdentifier;I)Landroid/content/om/OverlayInfo;

    move-result-object v0
    :try_end_0
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 397
    :catch_0
    move-exception v0

    .line 398
    .local v0, "e":Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
    const/4 v1, 0x0

    return-object v1
.end method

.method getOverlayInfosForTarget(Ljava/lang/String;I)Ljava/util/List;
    .locals 1
    .param p1, "targetPackageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/om/OverlayInfo;",
            ">;"
        }
    .end annotation

    .line 404
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->getOverlaysForTarget(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method getOverlaysForUser(I)Ljava/util/Map;
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/content/om/OverlayInfo;",
            ">;>;"
        }
    .end annotation

    .line 408
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v0, p1}, Lcom/android/server/om/OverlayManagerSettings;->getOverlaysForUser(I)Landroid/util/ArrayMap;

    move-result-object v0

    return-object v0
.end method

.method onPackageAdded(Ljava/lang/String;I)Ljava/util/Set;
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/Set<",
            "Lcom/android/server/om/PackageAndUser;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;
        }
    .end annotation

    .line 249
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 251
    .local v0, "updatedTargets":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/om/PackageAndUser;>;"
    new-instance v1, Lcom/android/server/om/PackageAndUser;

    invoke-direct {v1, p1, p2}, Lcom/android/server/om/PackageAndUser;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 252
    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/om/OverlayManagerServiceImpl;->reconcileSettingsForPackage(Ljava/lang/String;II)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 253
    return-object v0
.end method

.method onPackageChanged(Ljava/lang/String;I)Ljava/util/Set;
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/Set<",
            "Lcom/android/server/om/PackageAndUser;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;
        }
    .end annotation

    .line 259
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/om/OverlayManagerServiceImpl;->reconcileSettingsForPackage(Ljava/lang/String;II)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method onPackageRemoved(Ljava/lang/String;I)Ljava/util/Set;
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/Set<",
            "Lcom/android/server/om/PackageAndUser;",
            ">;"
        }
    .end annotation

    .line 280
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateOverlaysForTarget(Ljava/lang/String;II)Ljava/util/Set;

    move-result-object v0

    .line 283
    .local v0, "targets":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/om/PackageAndUser;>;"
    new-instance v1, Lcom/android/server/om/OverlayManagerServiceImpl$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1}, Lcom/android/server/om/OverlayManagerServiceImpl$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;)V

    .line 284
    invoke-direct {p0, v1, p2}, Lcom/android/server/om/OverlayManagerServiceImpl;->removeOverlaysForUser(Ljava/util/function/Predicate;I)Ljava/util/Set;

    move-result-object v1

    .line 283
    invoke-static {v0, v1}, Lcom/android/internal/util/CollectionUtils;->addAll(Ljava/util/Set;Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method

.method onPackageReplaced(Ljava/lang/String;I)Ljava/util/Set;
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/Set<",
            "Lcom/android/server/om/PackageAndUser;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;
        }
    .end annotation

    .line 271
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/om/OverlayManagerServiceImpl;->reconcileSettingsForPackage(Ljava/lang/String;II)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method onPackageReplacing(Ljava/lang/String;I)Ljava/util/Set;
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/Set<",
            "Lcom/android/server/om/PackageAndUser;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;
        }
    .end annotation

    .line 265
    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/om/OverlayManagerServiceImpl;->reconcileSettingsForPackage(Ljava/lang/String;II)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method onUserRemoved(I)V
    .locals 1
    .param p1, "userId"    # I

    .line 243
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v0, p1}, Lcom/android/server/om/OverlayManagerSettings;->removeUser(I)Z

    .line 244
    return-void
.end method

.method registerFabricatedOverlay(Landroid/os/FabricatedOverlayInternal;)Ljava/util/Set;
    .locals 7
    .param p1, "overlay"    # Landroid/os/FabricatedOverlayInternal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/FabricatedOverlayInternal;",
            ")",
            "Ljava/util/Set<",
            "Lcom/android/server/om/PackageAndUser;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;
        }
    .end annotation

    .line 494
    iget-object v0, p1, Landroid/os/FabricatedOverlayInternal;->overlayName:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/content/pm/parsing/ParsingPackageUtils;->validateName(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 500
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mIdmapManager:Lcom/android/server/om/IdmapManager;

    invoke-virtual {v0, p1}, Lcom/android/server/om/IdmapManager;->createFabricatedOverlay(Landroid/os/FabricatedOverlayInternal;)Landroid/os/FabricatedOverlayInfo;

    move-result-object v0

    .line 501
    .local v0, "info":Landroid/os/FabricatedOverlayInfo;
    if-eqz v0, :cond_1

    .line 505
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 506
    .local v2, "updatedTargets":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/om/PackageAndUser;>;"
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v3}, Lcom/android/server/om/OverlayManagerSettings;->getUsers()[I

    move-result-object v3

    array-length v4, v3

    :goto_0
    if-ge v1, v4, :cond_0

    aget v5, v3, v1

    .line 507
    .local v5, "userId":I
    invoke-direct {p0, v0, v5}, Lcom/android/server/om/OverlayManagerServiceImpl;->registerFabricatedOverlay(Landroid/os/FabricatedOverlayInfo;I)Ljava/util/Set;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 506
    .end local v5    # "userId":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 509
    :cond_0
    return-object v2

    .line 502
    .end local v2    # "updatedTargets":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/om/PackageAndUser;>;"
    :cond_1
    new-instance v1, Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;

    const-string v2, "failed to create fabricated overlay"

    invoke-direct {v1, v2}, Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 496
    .end local v0    # "info":Landroid/os/FabricatedOverlayInfo;
    :cond_2
    new-instance v0, Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;

    const-string/jumbo v1, "overlay name can only consist of alphanumeric characters, \'_\', and \'.\'"

    invoke-direct {v0, v1}, Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method removeIdmapForOverlay(Landroid/content/om/OverlayIdentifier;I)V
    .locals 3
    .param p1, "overlay"    # Landroid/content/om/OverlayIdentifier;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;
        }
    .end annotation

    .line 730
    :try_start_0
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->getOverlayInfo(Landroid/content/om/OverlayIdentifier;I)Landroid/content/om/OverlayInfo;

    move-result-object v0

    .line 731
    .local v0, "oi":Landroid/content/om/OverlayInfo;
    invoke-direct {p0, v0}, Lcom/android/server/om/OverlayManagerServiceImpl;->removeIdmapIfPossible(Landroid/content/om/OverlayInfo;)V
    :try_end_0
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_0 .. :try_end_0} :catch_0

    .line 734
    .end local v0    # "oi":Landroid/content/om/OverlayInfo;
    nop

    .line 735
    return-void

    .line 732
    :catch_0
    move-exception v0

    .line 733
    .local v0, "e":Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
    new-instance v1, Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;

    const-string v2, "failed to update settings"

    invoke-direct {v1, v2, v0}, Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method setEnabled(Landroid/content/om/OverlayIdentifier;ZI)Ljava/util/Set;
    .locals 4
    .param p1, "overlay"    # Landroid/content/om/OverlayIdentifier;
    .param p2, "enable"    # Z
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/om/OverlayIdentifier;",
            "ZI)",
            "Ljava/util/Set<",
            "Lcom/android/server/om/PackageAndUser;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;
        }
    .end annotation

    .line 420
    :try_start_0
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v0, p1, p3}, Lcom/android/server/om/OverlayManagerSettings;->getOverlayInfo(Landroid/content/om/OverlayIdentifier;I)Landroid/content/om/OverlayInfo;

    move-result-object v0

    .line 421
    .local v0, "oi":Landroid/content/om/OverlayInfo;
    iget-boolean v1, v0, Landroid/content/om/OverlayInfo;->isMutable:Z

    if-eqz v1, :cond_1

    .line 427
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v1, p1, p3, p2}, Lcom/android/server/om/OverlayManagerSettings;->setEnabled(Landroid/content/om/OverlayIdentifier;IZ)Z

    move-result v1

    .line 428
    .local v1, "modified":Z
    const/4 v2, 0x0

    invoke-direct {p0, v0, p3, v2}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateState(Landroid/content/om/CriticalOverlayInfo;II)Z

    move-result v2

    or-int/2addr v1, v2

    .line 430
    if-eqz v1, :cond_0

    .line 431
    new-instance v2, Lcom/android/server/om/PackageAndUser;

    iget-object v3, v0, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    invoke-direct {v2, v3, p3}, Lcom/android/server/om/PackageAndUser;-><init>(Ljava/lang/String;I)V

    invoke-static {v2}, Ljava/util/Set;->of(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    return-object v2

    .line 433
    :cond_0
    invoke-static {}, Ljava/util/Set;->of()Ljava/util/Set;

    move-result-object v2

    return-object v2

    .line 423
    .end local v1    # "modified":Z
    :cond_1
    new-instance v1, Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;

    const-string v2, "cannot enable immutable overlay packages in runtime"

    invoke-direct {v1, v2}, Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/om/OverlayManagerServiceImpl;
    .end local p1    # "overlay":Landroid/content/om/OverlayIdentifier;
    .end local p2    # "enable":Z
    .end local p3    # "userId":I
    throw v1
    :try_end_0
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_0 .. :try_end_0} :catch_0

    .line 434
    .end local v0    # "oi":Landroid/content/om/OverlayInfo;
    .restart local p0    # "this":Lcom/android/server/om/OverlayManagerServiceImpl;
    .restart local p1    # "overlay":Landroid/content/om/OverlayIdentifier;
    .restart local p2    # "enable":Z
    .restart local p3    # "userId":I
    :catch_0
    move-exception v0

    .line 435
    .local v0, "e":Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
    new-instance v1, Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;

    const-string v2, "failed to update settings"

    invoke-direct {v1, v2, v0}, Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method setEnabledExclusive(Landroid/content/om/OverlayIdentifier;ZI)Ljava/util/Optional;
    .locals 9
    .param p1, "overlay"    # Landroid/content/om/OverlayIdentifier;
    .param p2, "withinCategory"    # Z
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/om/OverlayIdentifier;",
            "ZI)",
            "Ljava/util/Optional<",
            "Lcom/android/server/om/PackageAndUser;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;
        }
    .end annotation

    .line 447
    :try_start_0
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v0, p1, p3}, Lcom/android/server/om/OverlayManagerSettings;->getOverlayInfo(Landroid/content/om/OverlayIdentifier;I)Landroid/content/om/OverlayInfo;

    move-result-object v0

    .line 448
    .local v0, "enabledInfo":Landroid/content/om/OverlayInfo;
    iget-boolean v1, v0, Landroid/content/om/OverlayInfo;->isMutable:Z

    if-eqz v1, :cond_4

    .line 454
    iget-object v1, v0, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    invoke-virtual {p0, v1, p3}, Lcom/android/server/om/OverlayManagerServiceImpl;->getOverlayInfosForTarget(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    .line 456
    .local v1, "allOverlays":Ljava/util/List;, "Ljava/util/List<Landroid/content/om/OverlayInfo;>;"
    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 458
    const/4 v2, 0x0

    .line 459
    .local v2, "modified":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    if-ge v3, v4, :cond_2

    .line 460
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/om/OverlayInfo;

    .line 461
    .local v4, "disabledInfo":Landroid/content/om/OverlayInfo;
    invoke-virtual {v4}, Landroid/content/om/OverlayInfo;->getOverlayIdentifier()Landroid/content/om/OverlayIdentifier;

    move-result-object v6

    .line 462
    .local v6, "disabledOverlay":Landroid/content/om/OverlayIdentifier;
    iget-boolean v7, v4, Landroid/content/om/OverlayInfo;->isMutable:Z

    if-nez v7, :cond_0

    .line 464
    goto :goto_1

    .line 466
    :cond_0
    if-eqz p2, :cond_1

    iget-object v7, v4, Landroid/content/om/OverlayInfo;->category:Ljava/lang/String;

    iget-object v8, v0, Landroid/content/om/OverlayInfo;->category:Ljava/lang/String;

    invoke-static {v7, v8}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 469
    goto :goto_1

    .line 473
    :cond_1
    iget-object v7, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v7, v6, p3, v5}, Lcom/android/server/om/OverlayManagerSettings;->setEnabled(Landroid/content/om/OverlayIdentifier;IZ)Z

    move-result v7

    or-int/2addr v2, v7

    .line 474
    invoke-direct {p0, v4, p3, v5}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateState(Landroid/content/om/CriticalOverlayInfo;II)Z

    move-result v5

    or-int/2addr v2, v5

    .line 459
    .end local v4    # "disabledInfo":Landroid/content/om/OverlayInfo;
    .end local v6    # "disabledOverlay":Landroid/content/om/OverlayIdentifier;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 478
    .end local v3    # "i":I
    :cond_2
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    const/4 v4, 0x1

    invoke-virtual {v3, p1, p3, v4}, Lcom/android/server/om/OverlayManagerSettings;->setEnabled(Landroid/content/om/OverlayIdentifier;IZ)Z

    move-result v3

    or-int/2addr v2, v3

    .line 479
    invoke-direct {p0, v0, p3, v5}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateState(Landroid/content/om/CriticalOverlayInfo;II)Z

    move-result v3

    or-int/2addr v2, v3

    .line 481
    if-eqz v2, :cond_3

    .line 482
    new-instance v3, Lcom/android/server/om/PackageAndUser;

    iget-object v4, v0, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    invoke-direct {v3, v4, p3}, Lcom/android/server/om/PackageAndUser;-><init>(Ljava/lang/String;I)V

    invoke-static {v3}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v3

    return-object v3

    .line 484
    :cond_3
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v3

    return-object v3

    .line 449
    .end local v1    # "allOverlays":Ljava/util/List;, "Ljava/util/List<Landroid/content/om/OverlayInfo;>;"
    .end local v2    # "modified":Z
    :cond_4
    new-instance v1, Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;

    const-string v2, "cannot enable immutable overlay packages in runtime"

    invoke-direct {v1, v2}, Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/om/OverlayManagerServiceImpl;
    .end local p1    # "overlay":Landroid/content/om/OverlayIdentifier;
    .end local p2    # "withinCategory":Z
    .end local p3    # "userId":I
    throw v1
    :try_end_0
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_0 .. :try_end_0} :catch_0

    .line 485
    .end local v0    # "enabledInfo":Landroid/content/om/OverlayInfo;
    .restart local p0    # "this":Lcom/android/server/om/OverlayManagerServiceImpl;
    .restart local p1    # "overlay":Landroid/content/om/OverlayIdentifier;
    .restart local p2    # "withinCategory":Z
    .restart local p3    # "userId":I
    :catch_0
    move-exception v0

    .line 486
    .local v0, "e":Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
    new-instance v1, Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;

    const-string v2, "failed to update settings"

    invoke-direct {v1, v2, v0}, Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method setHighestPriority(Landroid/content/om/OverlayIdentifier;I)Ljava/util/Set;
    .locals 3
    .param p1, "overlay"    # Landroid/content/om/OverlayIdentifier;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/om/OverlayIdentifier;",
            "I)",
            "Ljava/util/Set<",
            "Lcom/android/server/om/PackageAndUser;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;
        }
    .end annotation

    .line 647
    :try_start_0
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->getOverlayInfo(Landroid/content/om/OverlayIdentifier;I)Landroid/content/om/OverlayInfo;

    move-result-object v0

    .line 648
    .local v0, "overlayInfo":Landroid/content/om/OverlayInfo;
    iget-boolean v1, v0, Landroid/content/om/OverlayInfo;->isMutable:Z

    if-eqz v1, :cond_1

    .line 654
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->setHighestPriority(Landroid/content/om/OverlayIdentifier;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 655
    new-instance v1, Lcom/android/server/om/PackageAndUser;

    iget-object v2, v0, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    invoke-direct {v1, v2, p2}, Lcom/android/server/om/PackageAndUser;-><init>(Ljava/lang/String;I)V

    invoke-static {v1}, Ljava/util/Set;->of(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    return-object v1

    .line 657
    :cond_0
    invoke-static {}, Ljava/util/Set;->of()Ljava/util/Set;

    move-result-object v1

    return-object v1

    .line 650
    :cond_1
    new-instance v1, Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;

    const-string v2, "cannot change priority of an immutable overlay package at runtime"

    invoke-direct {v1, v2}, Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/om/OverlayManagerServiceImpl;
    .end local p1    # "overlay":Landroid/content/om/OverlayIdentifier;
    .end local p2    # "userId":I
    throw v1
    :try_end_0
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_0 .. :try_end_0} :catch_0

    .line 658
    .end local v0    # "overlayInfo":Landroid/content/om/OverlayInfo;
    .restart local p0    # "this":Lcom/android/server/om/OverlayManagerServiceImpl;
    .restart local p1    # "overlay":Landroid/content/om/OverlayIdentifier;
    .restart local p2    # "userId":I
    :catch_0
    move-exception v0

    .line 659
    .local v0, "e":Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
    new-instance v1, Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;

    const-string v2, "failed to update settings"

    invoke-direct {v1, v2, v0}, Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method setLowestPriority(Landroid/content/om/OverlayIdentifier;I)Ljava/util/Optional;
    .locals 3
    .param p1, "overlay"    # Landroid/content/om/OverlayIdentifier;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/om/OverlayIdentifier;",
            "I)",
            "Ljava/util/Optional<",
            "Lcom/android/server/om/PackageAndUser;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;
        }
    .end annotation

    .line 670
    :try_start_0
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->getOverlayInfo(Landroid/content/om/OverlayIdentifier;I)Landroid/content/om/OverlayInfo;

    move-result-object v0

    .line 671
    .local v0, "overlayInfo":Landroid/content/om/OverlayInfo;
    iget-boolean v1, v0, Landroid/content/om/OverlayInfo;->isMutable:Z

    if-eqz v1, :cond_1

    .line 677
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->setLowestPriority(Landroid/content/om/OverlayIdentifier;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 678
    new-instance v1, Lcom/android/server/om/PackageAndUser;

    iget-object v2, v0, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    invoke-direct {v1, v2, p2}, Lcom/android/server/om/PackageAndUser;-><init>(Ljava/lang/String;I)V

    invoke-static {v1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    return-object v1

    .line 680
    :cond_0
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v1

    return-object v1

    .line 673
    :cond_1
    new-instance v1, Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;

    const-string v2, "cannot change priority of an immutable overlay package at runtime"

    invoke-direct {v1, v2}, Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/om/OverlayManagerServiceImpl;
    .end local p1    # "overlay":Landroid/content/om/OverlayIdentifier;
    .end local p2    # "userId":I
    throw v1
    :try_end_0
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_0 .. :try_end_0} :catch_0

    .line 681
    .end local v0    # "overlayInfo":Landroid/content/om/OverlayInfo;
    .restart local p0    # "this":Lcom/android/server/om/OverlayManagerServiceImpl;
    .restart local p1    # "overlay":Landroid/content/om/OverlayIdentifier;
    .restart local p2    # "userId":I
    :catch_0
    move-exception v0

    .line 682
    .local v0, "e":Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
    new-instance v1, Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;

    const-string v2, "failed to update settings"

    invoke-direct {v1, v2, v0}, Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method setPriority(Landroid/content/om/OverlayIdentifier;Landroid/content/om/OverlayIdentifier;I)Ljava/util/Optional;
    .locals 3
    .param p1, "overlay"    # Landroid/content/om/OverlayIdentifier;
    .param p2, "newParentOverlay"    # Landroid/content/om/OverlayIdentifier;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/om/OverlayIdentifier;",
            "Landroid/content/om/OverlayIdentifier;",
            "I)",
            "Ljava/util/Optional<",
            "Lcom/android/server/om/PackageAndUser;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;
        }
    .end annotation

    .line 624
    :try_start_0
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v0, p1, p3}, Lcom/android/server/om/OverlayManagerSettings;->getOverlayInfo(Landroid/content/om/OverlayIdentifier;I)Landroid/content/om/OverlayInfo;

    move-result-object v0

    .line 625
    .local v0, "overlayInfo":Landroid/content/om/OverlayInfo;
    iget-boolean v1, v0, Landroid/content/om/OverlayInfo;->isMutable:Z

    if-eqz v1, :cond_1

    .line 631
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/om/OverlayManagerSettings;->setPriority(Landroid/content/om/OverlayIdentifier;Landroid/content/om/OverlayIdentifier;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 632
    new-instance v1, Lcom/android/server/om/PackageAndUser;

    iget-object v2, v0, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    invoke-direct {v1, v2, p3}, Lcom/android/server/om/PackageAndUser;-><init>(Ljava/lang/String;I)V

    invoke-static {v1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    return-object v1

    .line 634
    :cond_0
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v1

    return-object v1

    .line 627
    :cond_1
    new-instance v1, Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;

    const-string v2, "cannot change priority of an immutable overlay package at runtime"

    invoke-direct {v1, v2}, Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/om/OverlayManagerServiceImpl;
    .end local p1    # "overlay":Landroid/content/om/OverlayIdentifier;
    .end local p2    # "newParentOverlay":Landroid/content/om/OverlayIdentifier;
    .end local p3    # "userId":I
    throw v1
    :try_end_0
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_0 .. :try_end_0} :catch_0

    .line 635
    .end local v0    # "overlayInfo":Landroid/content/om/OverlayInfo;
    .restart local p0    # "this":Lcom/android/server/om/OverlayManagerServiceImpl;
    .restart local p1    # "overlay":Landroid/content/om/OverlayIdentifier;
    .restart local p2    # "newParentOverlay":Landroid/content/om/OverlayIdentifier;
    .restart local p3    # "userId":I
    :catch_0
    move-exception v0

    .line 636
    .local v0, "e":Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
    new-instance v1, Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;

    const-string v2, "failed to update settings"

    invoke-direct {v1, v2, v0}, Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method unregisterFabricatedOverlay(Landroid/content/om/OverlayIdentifier;)Ljava/util/Set;
    .locals 6
    .param p1, "overlay"    # Landroid/content/om/OverlayIdentifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/om/OverlayIdentifier;",
            ")",
            "Ljava/util/Set<",
            "Lcom/android/server/om/PackageAndUser;",
            ">;"
        }
    .end annotation

    .line 553
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 554
    .local v0, "updatedTargets":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/om/PackageAndUser;>;"
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v1}, Lcom/android/server/om/OverlayManagerSettings;->getUsers()[I

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget v4, v1, v3

    .line 555
    .local v4, "userId":I
    invoke-direct {p0, p1, v4}, Lcom/android/server/om/OverlayManagerServiceImpl;->unregisterFabricatedOverlay(Landroid/content/om/OverlayIdentifier;I)Ljava/util/Set;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 554
    .end local v4    # "userId":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 557
    :cond_0
    return-object v0
.end method

.method updateOverlaysForUser(I)Landroid/util/ArraySet;
    .locals 18
    .param p1, "newUserId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/om/PackageAndUser;",
            ">;"
        }
    .end annotation

    .line 159
    move-object/from16 v1, p0

    move/from16 v2, p1

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    move-object v3, v0

    .line 160
    .local v3, "updatedTargets":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/om/PackageAndUser;>;"
    iget-object v0, v1, Lcom/android/server/om/OverlayManagerServiceImpl;->mPackageManager:Lcom/android/server/om/PackageManagerHelper;

    invoke-interface {v0, v2}, Lcom/android/server/om/PackageManagerHelper;->initializeForUser(I)Landroid/util/ArrayMap;

    move-result-object v4

    .line 162
    .local v4, "userPackages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    new-instance v0, Lcom/android/server/om/OverlayManagerServiceImpl$$ExternalSyntheticLambda1;

    invoke-direct {v0, v4}, Lcom/android/server/om/OverlayManagerServiceImpl$$ExternalSyntheticLambda1;-><init>(Landroid/util/ArrayMap;)V

    invoke-direct {v1, v0, v2}, Lcom/android/server/om/OverlayManagerServiceImpl;->removeOverlaysForUser(Ljava/util/function/Predicate;I)Ljava/util/Set;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/internal/util/CollectionUtils;->addAll(Ljava/util/Set;Ljava/util/Collection;)Ljava/util/Set;

    .line 167
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v5

    move v6, v0

    .end local v0    # "i":I
    .local v5, "n":I
    .local v6, "i":I
    :goto_0
    const-string v7, ""

    const-string v8, "\' for user "

    const-string v9, "OverlayManager"

    const/4 v10, 0x0

    if-ge v6, v5, :cond_0

    .line 168
    invoke-virtual {v4, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 170
    .local v11, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    nop

    .line 171
    :try_start_0
    invoke-direct {v1, v11, v2, v10}, Lcom/android/server/om/OverlayManagerServiceImpl;->updatePackageOverlays(Lcom/android/server/pm/parsing/pkg/AndroidPackage;II)Ljava/util/Set;

    move-result-object v0

    .line 170
    invoke-static {v3, v0}, Lcom/android/internal/util/CollectionUtils;->addAll(Ljava/util/Set;Ljava/util/Collection;)Ljava/util/Set;

    .line 175
    new-instance v0, Lcom/android/server/om/PackageAndUser;

    invoke-interface {v11}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10, v2}, Lcom/android/server/om/PackageAndUser;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v3, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    goto :goto_1

    .line 176
    :catch_0
    move-exception v0

    .line 177
    .local v0, "e":Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "failed to initialize overlays of \'"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v11}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 167
    .end local v0    # "e":Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;
    .end local v11    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 184
    .end local v5    # "n":I
    .end local v6    # "i":I
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/om/OverlayManagerServiceImpl;->getFabricatedOverlayInfos()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/os/FabricatedOverlayInfo;

    .line 186
    .local v6, "info":Landroid/os/FabricatedOverlayInfo;
    :try_start_1
    invoke-direct {v1, v6, v2}, Lcom/android/server/om/OverlayManagerServiceImpl;->registerFabricatedOverlay(Landroid/os/FabricatedOverlayInfo;I)Ljava/util/Set;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/internal/util/CollectionUtils;->addAll(Ljava/util/Set;Ljava/util/Collection;)Ljava/util/Set;
    :try_end_1
    .catch Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 191
    goto :goto_3

    .line 188
    :catch_1
    move-exception v0

    .line 189
    .restart local v0    # "e":Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "failed to initialize fabricated overlay of \'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v6, Landroid/os/FabricatedOverlayInfo;->path:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 192
    .end local v0    # "e":Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;
    .end local v6    # "info":Landroid/os/FabricatedOverlayInfo;
    :goto_3
    goto :goto_2

    .line 195
    :cond_1
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    move-object v5, v0

    .line 196
    .local v5, "enabledCategories":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v0, v1, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    .line 197
    invoke-virtual {v0, v2}, Lcom/android/server/om/OverlayManagerSettings;->getOverlaysForUser(I)Landroid/util/ArrayMap;

    move-result-object v6

    .line 198
    .local v6, "userOverlays":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Landroid/content/om/OverlayInfo;>;>;"
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v7

    .line 199
    .local v7, "userOverlayTargetCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    if-ge v0, v7, :cond_5

    .line 200
    invoke-virtual {v6, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 201
    .local v11, "overlayList":Ljava/util/List;, "Ljava/util/List<Landroid/content/om/OverlayInfo;>;"
    if-eqz v11, :cond_2

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v12

    goto :goto_5

    :cond_2
    move v12, v10

    .line 202
    .local v12, "overlayCount":I
    :goto_5
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_6
    if-ge v13, v12, :cond_4

    .line 203
    invoke-interface {v11, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/om/OverlayInfo;

    .line 204
    .local v14, "oi":Landroid/content/om/OverlayInfo;
    invoke-virtual {v14}, Landroid/content/om/OverlayInfo;->isEnabled()Z

    move-result v15

    if-eqz v15, :cond_3

    .line 205
    iget-object v15, v14, Landroid/content/om/OverlayInfo;->category:Ljava/lang/String;

    invoke-virtual {v5, v15}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 202
    .end local v14    # "oi":Landroid/content/om/OverlayInfo;
    :cond_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    .line 199
    .end local v11    # "overlayList":Ljava/util/List;, "Ljava/util/List<Landroid/content/om/OverlayInfo;>;"
    .end local v12    # "overlayCount":I
    .end local v13    # "j":I
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 211
    .end local v0    # "i":I
    :cond_5
    iget-object v11, v1, Lcom/android/server/om/OverlayManagerServiceImpl;->mDefaultOverlays:[Ljava/lang/String;

    array-length v12, v11

    move v13, v10

    :goto_7
    if-ge v13, v12, :cond_8

    aget-object v14, v11, v13

    .line 216
    .local v14, "defaultOverlay":Ljava/lang/String;
    :try_start_2
    new-instance v0, Landroid/content/om/OverlayIdentifier;

    invoke-direct {v0, v14}, Landroid/content/om/OverlayIdentifier;-><init>(Ljava/lang/String;)V

    .line 218
    .local v0, "overlay":Landroid/content/om/OverlayIdentifier;
    iget-object v15, v1, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v15, v0, v2}, Lcom/android/server/om/OverlayManagerSettings;->getOverlayInfo(Landroid/content/om/OverlayIdentifier;I)Landroid/content/om/OverlayInfo;

    move-result-object v15

    .line 219
    .local v15, "oi":Landroid/content/om/OverlayInfo;
    iget-object v10, v15, Landroid/content/om/OverlayInfo;->category:Ljava/lang/String;

    invoke-virtual {v5, v10}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_7

    .line 220
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_2
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_2 .. :try_end_2} :catch_3

    move-object/from16 v16, v4

    .end local v4    # "userPackages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    .local v16, "userPackages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    :try_start_3
    const-string v4, "Enabling default overlay \'"

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\' for target \'"

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v15, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\' in category \'"

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v15, Landroid/content/om/OverlayInfo;->category:Ljava/lang/String;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    iget-object v4, v1, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    const/4 v10, 0x1

    invoke-virtual {v4, v0, v2, v10}, Lcom/android/server/om/OverlayManagerSettings;->setEnabled(Landroid/content/om/OverlayIdentifier;IZ)Z

    .line 224
    const/4 v4, 0x0

    invoke-direct {v1, v15, v2, v4}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateState(Landroid/content/om/CriticalOverlayInfo;II)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 225
    new-instance v10, Lcom/android/server/om/PackageAndUser;

    iget-object v4, v15, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    move-object/from16 v17, v0

    .end local v0    # "overlay":Landroid/content/om/OverlayIdentifier;
    .local v17, "overlay":Landroid/content/om/OverlayIdentifier;
    iget v0, v15, Landroid/content/om/OverlayInfo;->userId:I

    invoke-direct {v10, v4, v0}, Lcom/android/server/om/PackageAndUser;-><init>(Ljava/lang/String;I)V

    invoke-static {v3, v10}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;
    :try_end_3
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_8

    .line 224
    .end local v17    # "overlay":Landroid/content/om/OverlayIdentifier;
    .restart local v0    # "overlay":Landroid/content/om/OverlayIdentifier;
    :cond_6
    move-object/from16 v17, v0

    .end local v0    # "overlay":Landroid/content/om/OverlayIdentifier;
    .restart local v17    # "overlay":Landroid/content/om/OverlayIdentifier;
    goto :goto_8

    .line 229
    .end local v15    # "oi":Landroid/content/om/OverlayInfo;
    .end local v17    # "overlay":Landroid/content/om/OverlayIdentifier;
    :catch_2
    move-exception v0

    goto :goto_9

    .line 219
    .end local v16    # "userPackages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    .restart local v0    # "overlay":Landroid/content/om/OverlayIdentifier;
    .restart local v4    # "userPackages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    .restart local v15    # "oi":Landroid/content/om/OverlayInfo;
    :cond_7
    move-object/from16 v17, v0

    move-object/from16 v16, v4

    .line 232
    .end local v0    # "overlay":Landroid/content/om/OverlayIdentifier;
    .end local v4    # "userPackages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    .end local v15    # "oi":Landroid/content/om/OverlayInfo;
    .restart local v16    # "userPackages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    :goto_8
    goto :goto_a

    .line 229
    .end local v16    # "userPackages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    .restart local v4    # "userPackages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    :catch_3
    move-exception v0

    move-object/from16 v16, v4

    .line 230
    .end local v4    # "userPackages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    .local v0, "e":Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
    .restart local v16    # "userPackages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    :goto_9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to set default overlay \'"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 211
    .end local v0    # "e":Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
    .end local v14    # "defaultOverlay":Ljava/lang/String;
    :goto_a
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v4, v16

    const/4 v10, 0x0

    goto/16 :goto_7

    .line 235
    .end local v16    # "userPackages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    .restart local v4    # "userPackages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    :cond_8
    invoke-direct/range {p0 .. p0}, Lcom/android/server/om/OverlayManagerServiceImpl;->cleanStaleResourceCache()V

    .line 236
    return-object v3
.end method
