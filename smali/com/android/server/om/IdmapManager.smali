.class final Lcom/android/server/om/IdmapManager;
.super Ljava/lang/Object;
.source "IdmapManager.java"


# static fields
.field private static final VENDOR_IS_Q_OR_LATER:Z


# instance fields
.field private final mConfigSignaturePackage:Ljava/lang/String;

.field private final mIdmapDaemon:Lcom/android/server/om/IdmapDaemon;

.field private final mPackageManager:Lcom/android/server/om/PackageManagerHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 47
    const-string/jumbo v0, "ro.vndk.version"

    const-string v1, "29"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, "value":Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 54
    .local v1, "isQOrLater":Z
    :goto_0
    goto :goto_1

    .line 51
    .end local v1    # "isQOrLater":Z
    :catch_0
    move-exception v1

    .line 53
    .local v1, "e":Ljava/lang/NumberFormatException;
    const/4 v2, 0x1

    move v1, v2

    .line 56
    .local v1, "isQOrLater":Z
    :goto_1
    sput-boolean v1, Lcom/android/server/om/IdmapManager;->VENDOR_IS_Q_OR_LATER:Z

    .line 57
    .end local v0    # "value":Ljava/lang/String;
    .end local v1    # "isQOrLater":Z
    return-void
.end method

.method constructor <init>(Lcom/android/server/om/IdmapDaemon;Lcom/android/server/om/PackageManagerHelper;)V
    .locals 1
    .param p1, "idmapDaemon"    # Lcom/android/server/om/IdmapDaemon;
    .param p2, "packageManager"    # Lcom/android/server/om/PackageManagerHelper;

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p2, p0, Lcom/android/server/om/IdmapManager;->mPackageManager:Lcom/android/server/om/PackageManagerHelper;

    .line 72
    iput-object p1, p0, Lcom/android/server/om/IdmapManager;->mIdmapDaemon:Lcom/android/server/om/IdmapDaemon;

    .line 73
    invoke-interface {p2}, Lcom/android/server/om/PackageManagerHelper;->getConfigSignaturePackage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/om/IdmapManager;->mConfigSignaturePackage:Ljava/lang/String;

    .line 74
    return-void
.end method

.method private calculateFulfilledPolicies(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)I
    .locals 4
    .param p1, "targetPackage"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "overlayPackage"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p3, "userId"    # I

    .line 178
    const/4 v0, 0x1

    .line 181
    .local v0, "fulfilledPolicies":I
    iget-object v1, p0, Lcom/android/server/om/IdmapManager;->mPackageManager:Lcom/android/server/om/PackageManagerHelper;

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 182
    invoke-interface {p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 181
    invoke-interface {v1, v2, v3, p3}, Lcom/android/server/om/PackageManagerHelper;->signaturesMatching(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 183
    or-int/lit8 v0, v0, 0x10

    .line 187
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/om/IdmapManager;->matchesActorSignature(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 188
    or-int/lit16 v0, v0, 0x80

    .line 194
    :cond_1
    iget-object v1, p0, Lcom/android/server/om/IdmapManager;->mConfigSignaturePackage:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/server/om/IdmapManager;->mPackageManager:Lcom/android/server/om/PackageManagerHelper;

    iget-object v2, p0, Lcom/android/server/om/IdmapManager;->mConfigSignaturePackage:Ljava/lang/String;

    .line 196
    invoke-interface {p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 195
    invoke-interface {v1, v2, v3, p3}, Lcom/android/server/om/PackageManagerHelper;->signaturesMatching(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 198
    or-int/lit16 v0, v0, 0x100

    .line 202
    :cond_2
    invoke-interface {p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isVendor()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 203
    or-int/lit8 v1, v0, 0x4

    return v1

    .line 207
    :cond_3
    invoke-interface {p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isProduct()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 208
    or-int/lit8 v1, v0, 0x8

    return v1

    .line 212
    :cond_4
    invoke-interface {p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isOdm()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 213
    or-int/lit8 v1, v0, 0x20

    return v1

    .line 217
    :cond_5
    invoke-interface {p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isOem()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 218
    or-int/lit8 v1, v0, 0x40

    return v1

    .line 223
    :cond_6
    invoke-interface {p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isSystem()Z

    move-result v1

    if-nez v1, :cond_8

    invoke-interface {p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isSystemExt()Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_0

    .line 227
    :cond_7
    return v0

    .line 224
    :cond_8
    :goto_0
    or-int/lit8 v1, v0, 0x2

    return v1
.end method

.method private enforceOverlayable(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z
    .locals 3
    .param p1, "overlayPackage"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 156
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x1d

    if-lt v0, v2, :cond_0

    .line 158
    return v1

    .line 161
    :cond_0
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isVendor()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 165
    sget-boolean v0, Lcom/android/server/om/IdmapManager;->VENDOR_IS_Q_OR_LATER:Z

    return v0

    .line 170
    :cond_1
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isSystem()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isSignedWithPlatformKey()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private matchesActorSignature(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)Z
    .locals 5
    .param p1, "targetPackage"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "overlayPackage"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p3, "userId"    # I

    .line 232
    invoke-interface {p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getOverlayTargetName()Ljava/lang/String;

    move-result-object v0

    .line 233
    .local v0, "targetOverlayableName":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 235
    :try_start_0
    iget-object v1, p0, Lcom/android/server/om/IdmapManager;->mPackageManager:Lcom/android/server/om/PackageManagerHelper;

    .line 236
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 235
    invoke-interface {v1, v2, v0, p3}, Lcom/android/server/om/PackageManagerHelper;->getOverlayableForTarget(Ljava/lang/String;Ljava/lang/String;I)Landroid/content/om/OverlayableInfo;

    move-result-object v1

    .line 237
    .local v1, "overlayableInfo":Landroid/content/om/OverlayableInfo;
    if-eqz v1, :cond_0

    iget-object v2, v1, Landroid/content/om/OverlayableInfo;->actor:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 238
    iget-object v2, v1, Landroid/content/om/OverlayableInfo;->actor:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/om/IdmapManager;->mPackageManager:Lcom/android/server/om/PackageManagerHelper;

    .line 239
    invoke-interface {v3}, Lcom/android/server/om/PackageManagerHelper;->getNamedActors()Ljava/util/Map;

    move-result-object v3

    .line 238
    invoke-static {v2, v3}, Lcom/android/server/om/OverlayActorEnforcer;->getPackageNameForActor(Ljava/lang/String;Ljava/util/Map;)Landroid/util/Pair;

    move-result-object v2

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 240
    .local v2, "actorPackageName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/om/IdmapManager;->mPackageManager:Lcom/android/server/om/PackageManagerHelper;

    .line 241
    invoke-interface {p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 240
    invoke-interface {v3, v2, v4, p3}, Lcom/android/server/om/PackageManagerHelper;->signaturesMatching(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_0

    .line 242
    const/4 v3, 0x1

    return v3

    .line 246
    .end local v1    # "overlayableInfo":Landroid/content/om/OverlayableInfo;
    .end local v2    # "actorPackageName":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 245
    :catch_0
    move-exception v1

    .line 249
    :cond_1
    :goto_0
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method createFabricatedOverlay(Landroid/os/FabricatedOverlayInternal;)Landroid/os/FabricatedOverlayInfo;
    .locals 1
    .param p1, "overlay"    # Landroid/os/FabricatedOverlayInternal;

    .line 132
    iget-object v0, p0, Lcom/android/server/om/IdmapManager;->mIdmapDaemon:Lcom/android/server/om/IdmapDaemon;

    invoke-virtual {v0, p1}, Lcom/android/server/om/IdmapDaemon;->createFabricatedOverlay(Landroid/os/FabricatedOverlayInternal;)Landroid/os/FabricatedOverlayInfo;

    move-result-object v0

    return-object v0
.end method

.method createIdmap(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 17
    .param p1, "targetPackage"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "overlayPackage"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p3, "overlayBasePath"    # Ljava/lang/String;
    .param p4, "overlayName"    # Ljava/lang/String;
    .param p5, "userId"    # I

    .line 87
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getBaseApkPath()Ljava/lang/String;

    move-result-object v15

    .line 89
    .local v15, "targetPath":Ljava/lang/String;
    const/16 v16, 0x0

    move-object/from16 v14, p1

    move/from16 v13, p5

    :try_start_0
    invoke-direct {v1, v14, v2, v13}, Lcom/android/server/om/IdmapManager;->calculateFulfilledPolicies(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)I

    move-result v7

    .line 90
    .local v7, "policies":I
    invoke-direct {v1, v2}, Lcom/android/server/om/IdmapManager;->enforceOverlayable(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v8

    .line 91
    .local v8, "enforce":Z
    iget-object v3, v1, Lcom/android/server/om/IdmapManager;->mIdmapDaemon:Lcom/android/server/om/IdmapDaemon;

    move-object v4, v15

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v9, p5

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/om/IdmapDaemon;->verifyIdmap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZI)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    return v16

    .line 95
    :cond_0
    iget-object v9, v1, Lcom/android/server/om/IdmapManager;->mIdmapDaemon:Lcom/android/server/om/IdmapDaemon;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object v10, v15

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move v13, v7

    move v14, v8

    move-object v3, v15

    .end local v15    # "targetPath":Ljava/lang/String;
    .local v3, "targetPath":Ljava/lang/String;
    move/from16 v15, p5

    :try_start_1
    invoke-virtual/range {v9 .. v15}, Lcom/android/server/om/IdmapDaemon;->createIdmap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZI)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v0, :cond_1

    const/16 v16, 0x1

    :cond_1
    return v16

    .line 97
    .end local v7    # "policies":I
    .end local v8    # "enforce":Z
    :catch_0
    move-exception v0

    goto :goto_0

    .end local v3    # "targetPath":Ljava/lang/String;
    .restart local v15    # "targetPath":Ljava/lang/String;
    :catch_1
    move-exception v0

    move-object v3, v15

    .line 98
    .end local v15    # "targetPath":Ljava/lang/String;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v3    # "targetPath":Ljava/lang/String;
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "failed to generate idmap for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " and "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, p3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "OverlayManager"

    invoke-static {v6, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 100
    return v16
.end method

.method deleteFabricatedOverlay(Ljava/lang/String;)Z
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .line 140
    iget-object v0, p0, Lcom/android/server/om/IdmapManager;->mIdmapDaemon:Lcom/android/server/om/IdmapDaemon;

    invoke-virtual {v0, p1}, Lcom/android/server/om/IdmapDaemon;->deleteFabricatedOverlay(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method dumpIdmap(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "overlayPath"    # Ljava/lang/String;

    .line 148
    iget-object v0, p0, Lcom/android/server/om/IdmapManager;->mIdmapDaemon:Lcom/android/server/om/IdmapDaemon;

    invoke-virtual {v0, p1}, Lcom/android/server/om/IdmapDaemon;->dumpIdmap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getFabricatedOverlayInfos()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/FabricatedOverlayInfo;",
            ">;"
        }
    .end annotation

    .line 124
    iget-object v0, p0, Lcom/android/server/om/IdmapManager;->mIdmapDaemon:Lcom/android/server/om/IdmapDaemon;

    invoke-virtual {v0}, Lcom/android/server/om/IdmapDaemon;->getFabricatedOverlayInfos()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method idmapExists(Landroid/content/om/OverlayInfo;)Z
    .locals 3
    .param p1, "oi"    # Landroid/content/om/OverlayInfo;

    .line 117
    iget-object v0, p0, Lcom/android/server/om/IdmapManager;->mIdmapDaemon:Lcom/android/server/om/IdmapDaemon;

    iget-object v1, p1, Landroid/content/om/OverlayInfo;->baseCodePath:Ljava/lang/String;

    iget v2, p1, Landroid/content/om/OverlayInfo;->userId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/om/IdmapDaemon;->idmapExists(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method removeIdmap(Landroid/content/om/OverlayInfo;I)Z
    .locals 3
    .param p1, "oi"    # Landroid/content/om/OverlayInfo;
    .param p2, "userId"    # I

    .line 109
    :try_start_0
    iget-object v0, p0, Lcom/android/server/om/IdmapManager;->mIdmapDaemon:Lcom/android/server/om/IdmapDaemon;

    iget-object v1, p1, Landroid/content/om/OverlayInfo;->baseCodePath:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/android/server/om/IdmapDaemon;->removeIdmap(Ljava/lang/String;I)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 110
    :catch_0
    move-exception v0

    .line 111
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to remove idmap for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/content/om/OverlayInfo;->baseCodePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OverlayManager"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 112
    const/4 v1, 0x0

    return v1
.end method
