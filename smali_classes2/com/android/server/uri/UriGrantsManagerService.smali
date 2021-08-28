.class public Lcom/android/server/uri/UriGrantsManagerService;
.super Landroid/app/IUriGrantsManager$Stub;
.source "UriGrantsManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/uri/UriGrantsManagerService$LocalService;,
        Lcom/android/server/uri/UriGrantsManagerService$H;,
        Lcom/android/server/uri/UriGrantsManagerService$Lifecycle;
    }
.end annotation


# static fields
.field private static final ATTR_CREATED_TIME:Ljava/lang/String; = "createdTime"

.field private static final ATTR_MODE_FLAGS:Ljava/lang/String; = "modeFlags"

.field private static final ATTR_PREFIX:Ljava/lang/String; = "prefix"

.field private static final ATTR_SOURCE_PKG:Ljava/lang/String; = "sourcePkg"

.field private static final ATTR_SOURCE_USER_ID:Ljava/lang/String; = "sourceUserId"

.field private static final ATTR_TARGET_PKG:Ljava/lang/String; = "targetPkg"

.field private static final ATTR_TARGET_USER_ID:Ljava/lang/String; = "targetUserId"

.field private static final ATTR_URI:Ljava/lang/String; = "uri"

.field private static final ATTR_USER_HANDLE:Ljava/lang/String; = "userHandle"

.field private static final DEBUG:Z = false

.field private static final ENABLE_DYNAMIC_PERMISSIONS:Z = true

.field private static final MAX_PERSISTED_URI_GRANTS:I = 0x200

.field private static final TAG:Ljava/lang/String; = "UriGrantsManagerService"

.field private static final TAG_URI_GRANT:Ljava/lang/String; = "uri-grant"

.field private static final TAG_URI_GRANTS:Ljava/lang/String; = "uri-grants"


# instance fields
.field mAmInternal:Landroid/app/ActivityManagerInternal;

.field private final mGrantFile:Landroid/util/AtomicFile;

.field private final mGrantedUriPermissions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/ArrayMap<",
            "Lcom/android/server/uri/GrantUri;",
            "Lcom/android/server/uri/UriPermission;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mH:Lcom/android/server/uri/UriGrantsManagerService$H;

.field private final mLock:Ljava/lang/Object;

.field mPmInternal:Landroid/content/pm/PackageManagerInternal;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 146
    invoke-static {}, Lcom/android/server/SystemServiceManager;->ensureSystemDir()Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/uri/UriGrantsManagerService;-><init>(Ljava/io/File;)V

    .line 147
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/uri/UriGrantsManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/uri/UriGrantsManagerService$1;

    .line 107
    invoke-direct {p0}, Lcom/android/server/uri/UriGrantsManagerService;-><init>()V

    return-void
.end method

.method private constructor <init>(Ljava/io/File;)V
    .locals 3
    .param p1, "systemDir"    # Ljava/io/File;

    .line 149
    invoke-direct {p0}, Landroid/app/IUriGrantsManager$Stub;-><init>()V

    .line 114
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mLock:Ljava/lang/Object;

    .line 141
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    .line 150
    new-instance v0, Lcom/android/server/uri/UriGrantsManagerService$H;

    invoke-static {}, Lcom/android/server/IoThread;->get()Lcom/android/server/IoThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/IoThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/uri/UriGrantsManagerService$H;-><init>(Lcom/android/server/uri/UriGrantsManagerService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mH:Lcom/android/server/uri/UriGrantsManagerService$H;

    .line 151
    new-instance v0, Landroid/util/AtomicFile;

    new-instance v1, Ljava/io/File;

    const-string v2, "urigrants.xml"

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v2, "uri-grants"

    invoke-direct {v0, v1, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantFile:Landroid/util/AtomicFile;

    .line 152
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/uri/UriGrantsManagerService;ILjava/lang/String;Landroid/content/Intent;ILcom/android/server/uri/NeededUriGrants;I)Lcom/android/server/uri/NeededUriGrants;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/uri/UriGrantsManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Landroid/content/Intent;
    .param p4, "x4"    # I
    .param p5, "x5"    # Lcom/android/server/uri/NeededUriGrants;
    .param p6, "x6"    # I

    .line 107
    invoke-direct/range {p0 .. p6}, Lcom/android/server/uri/UriGrantsManagerService;->checkGrantUriPermissionFromIntentUnlocked(ILjava/lang/String;Landroid/content/Intent;ILcom/android/server/uri/NeededUriGrants;I)Lcom/android/server/uri/NeededUriGrants;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/uri/UriGrantsManagerService;Lcom/android/server/uri/NeededUriGrants;Lcom/android/server/uri/UriPermissionOwner;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/uri/UriGrantsManagerService;
    .param p1, "x1"    # Lcom/android/server/uri/NeededUriGrants;
    .param p2, "x2"    # Lcom/android/server/uri/UriPermissionOwner;

    .line 107
    invoke-direct {p0, p1, p2}, Lcom/android/server/uri/UriGrantsManagerService;->grantUriPermissionUncheckedFromIntent(Lcom/android/server/uri/NeededUriGrants;Lcom/android/server/uri/UriPermissionOwner;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/uri/UriGrantsManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/uri/UriGrantsManagerService;

    .line 107
    invoke-direct {p0}, Lcom/android/server/uri/UriGrantsManagerService;->readGrantedUriPermissionsLocked()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/uri/UriGrantsManagerService;Ljava/lang/String;IZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/uri/UriGrantsManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # Z
    .param p4, "x4"    # Z

    .line 107
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/uri/UriGrantsManagerService;->removeUriPermissionsForPackageLocked(Ljava/lang/String;IZZ)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/uri/UriGrantsManagerService;ILandroid/content/pm/ProviderInfo;IZ)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/uri/UriGrantsManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/content/pm/ProviderInfo;
    .param p3, "x3"    # I
    .param p4, "x4"    # Z

    .line 107
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/uri/UriGrantsManagerService;->checkAuthorityGrantsLocked(ILandroid/content/pm/ProviderInfo;IZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/android/server/uri/UriGrantsManagerService;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/uri/UriGrantsManagerService;

    .line 107
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/uri/UriGrantsManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/uri/UriGrantsManagerService;

    .line 107
    invoke-direct {p0}, Lcom/android/server/uri/UriGrantsManagerService;->start()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/uri/UriGrantsManagerService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/uri/UriGrantsManagerService;

    .line 107
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/uri/UriGrantsManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/uri/UriGrantsManagerService;

    .line 107
    invoke-direct {p0}, Lcom/android/server/uri/UriGrantsManagerService;->writeGrantedUriPermissionsLocked()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/uri/UriGrantsManagerService;Lcom/android/server/uri/UriPermission;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/uri/UriGrantsManagerService;
    .param p1, "x1"    # Lcom/android/server/uri/UriPermission;

    .line 107
    invoke-direct {p0, p1}, Lcom/android/server/uri/UriGrantsManagerService;->removeUriPermissionIfNeededLocked(Lcom/android/server/uri/UriPermission;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/uri/UriGrantsManagerService;Ljava/lang/String;ILcom/android/server/uri/GrantUri;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/uri/UriGrantsManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # Lcom/android/server/uri/GrantUri;
    .param p4, "x4"    # I

    .line 107
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/uri/UriGrantsManagerService;->revokeUriPermission(Ljava/lang/String;ILcom/android/server/uri/GrantUri;I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/uri/UriGrantsManagerService;Lcom/android/server/uri/GrantUri;II)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/uri/UriGrantsManagerService;
    .param p1, "x1"    # Lcom/android/server/uri/GrantUri;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 107
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/uri/UriGrantsManagerService;->checkUriPermissionLocked(Lcom/android/server/uri/GrantUri;II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/uri/UriGrantsManagerService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/uri/UriGrantsManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 107
    invoke-direct {p0, p1}, Lcom/android/server/uri/UriGrantsManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/uri/UriGrantsManagerService;ILjava/lang/String;Landroid/net/Uri;II)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/uri/UriGrantsManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Landroid/net/Uri;
    .param p4, "x4"    # I
    .param p5, "x5"    # I

    .line 107
    invoke-direct/range {p0 .. p5}, Lcom/android/server/uri/UriGrantsManagerService;->checkGrantUriPermissionUnlocked(ILjava/lang/String;Landroid/net/Uri;II)I

    move-result v0

    return v0
.end method

.method private checkAuthorityGrantsLocked(ILandroid/content/pm/ProviderInfo;IZ)Z
    .locals 5
    .param p1, "callingUid"    # I
    .param p2, "cpi"    # Landroid/content/pm/ProviderInfo;
    .param p3, "userId"    # I
    .param p4, "checkUser"    # Z

    .line 517
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 518
    .local v0, "perms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/uri/GrantUri;Lcom/android/server/uri/UriPermission;>;"
    if-eqz v0, :cond_2

    .line 519
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 520
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/uri/GrantUri;

    .line 521
    .local v3, "grantUri":Lcom/android/server/uri/GrantUri;
    iget v4, v3, Lcom/android/server/uri/GrantUri;->sourceUserId:I

    if-eq v4, p3, :cond_0

    if-nez p4, :cond_1

    .line 522
    :cond_0
    iget-object v4, v3, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    invoke-direct {p0, v4, p2}, Lcom/android/server/uri/UriGrantsManagerService;->matchesProvider(Landroid/net/Uri;Landroid/content/pm/ProviderInfo;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 523
    return v2

    .line 519
    .end local v3    # "grantUri":Lcom/android/server/uri/GrantUri;
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 528
    .end local v1    # "i":I
    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method private checkGrantUriPermissionFromIntentUnlocked(ILjava/lang/String;Landroid/content/Intent;ILcom/android/server/uri/NeededUriGrants;I)Lcom/android/server/uri/NeededUriGrants;
    .locals 19
    .param p1, "callingUid"    # I
    .param p2, "targetPkg"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "mode"    # I
    .param p5, "needed"    # Lcom/android/server/uri/NeededUriGrants;
    .param p6, "targetUserId"    # I

    .line 590
    move-object/from16 v7, p2

    move/from16 v8, p4

    move-object/from16 v6, p5

    if-eqz v7, :cond_e

    .line 594
    const/4 v0, 0x0

    if-nez p3, :cond_0

    .line 595
    return-object v0

    .line 597
    :cond_0
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v9

    .line 598
    .local v9, "data":Landroid/net/Uri;
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v10

    .line 599
    .local v10, "clip":Landroid/content/ClipData;
    if-nez v9, :cond_1

    if-nez v10, :cond_1

    .line 600
    return-object v0

    .line 603
    :cond_1
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getContentUserHint()I

    move-result v1

    .line 604
    .local v1, "contentUserHint":I
    const/4 v2, -0x2

    if-ne v1, v2, :cond_2

    .line 605
    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    move v11, v1

    goto :goto_0

    .line 604
    :cond_2
    move v11, v1

    .line 608
    .end local v1    # "contentUserHint":I
    .local v11, "contentUserHint":I
    :goto_0
    if-eqz v6, :cond_3

    .line 609
    iget v0, v6, Lcom/android/server/uri/NeededUriGrants;->targetUid:I

    move-object/from16 v12, p0

    move/from16 v13, p6

    move v14, v0

    .local v0, "targetUid":I
    goto :goto_1

    .line 611
    .end local v0    # "targetUid":I
    :cond_3
    move-object/from16 v12, p0

    iget-object v1, v12, Lcom/android/server/uri/UriGrantsManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    const/high16 v2, 0x10000000

    move/from16 v13, p6

    invoke-virtual {v1, v7, v2, v13}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;II)I

    move-result v1

    .line 613
    .local v1, "targetUid":I
    if-gez v1, :cond_4

    .line 616
    return-object v0

    .line 613
    :cond_4
    move v14, v1

    .line 619
    .end local v1    # "targetUid":I
    .local v14, "targetUid":I
    :goto_1
    if-eqz v9, :cond_6

    .line 620
    invoke-static {v11, v9, v8}, Lcom/android/server/uri/GrantUri;->resolve(ILandroid/net/Uri;I)Lcom/android/server/uri/GrantUri;

    move-result-object v15

    .line 621
    .local v15, "grantUri":Lcom/android/server/uri/GrantUri;
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object v3, v15

    move/from16 v4, p4

    move v5, v14

    invoke-direct/range {v0 .. v5}, Lcom/android/server/uri/UriGrantsManagerService;->checkGrantUriPermissionUnlocked(ILjava/lang/String;Lcom/android/server/uri/GrantUri;II)I

    move-result v14

    .line 623
    if-lez v14, :cond_6

    .line 624
    if-nez v6, :cond_5

    .line 625
    new-instance v0, Lcom/android/server/uri/NeededUriGrants;

    invoke-direct {v0, v7, v14, v8}, Lcom/android/server/uri/NeededUriGrants;-><init>(Ljava/lang/String;II)V

    .end local p5    # "needed":Lcom/android/server/uri/NeededUriGrants;
    .local v0, "needed":Lcom/android/server/uri/NeededUriGrants;
    goto :goto_2

    .line 624
    .end local v0    # "needed":Lcom/android/server/uri/NeededUriGrants;
    .restart local p5    # "needed":Lcom/android/server/uri/NeededUriGrants;
    :cond_5
    move-object v0, v6

    .line 627
    .end local p5    # "needed":Lcom/android/server/uri/NeededUriGrants;
    .restart local v0    # "needed":Lcom/android/server/uri/NeededUriGrants;
    :goto_2
    iget-object v1, v0, Lcom/android/server/uri/NeededUriGrants;->uris:Landroid/util/ArraySet;

    invoke-virtual {v1, v15}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-object v6, v0

    .line 630
    .end local v0    # "needed":Lcom/android/server/uri/NeededUriGrants;
    .end local v15    # "grantUri":Lcom/android/server/uri/GrantUri;
    .local v6, "needed":Lcom/android/server/uri/NeededUriGrants;
    :cond_6
    if-eqz v10, :cond_d

    .line 631
    const/4 v0, 0x0

    move-object v15, v6

    move/from16 v16, v14

    move v14, v0

    .end local v6    # "needed":Lcom/android/server/uri/NeededUriGrants;
    .local v14, "i":I
    .local v15, "needed":Lcom/android/server/uri/NeededUriGrants;
    .local v16, "targetUid":I
    :goto_3
    invoke-virtual {v10}, Landroid/content/ClipData;->getItemCount()I

    move-result v0

    if-ge v14, v0, :cond_c

    .line 632
    invoke-virtual {v10, v14}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v6

    .line 633
    .local v6, "uri":Landroid/net/Uri;
    if-eqz v6, :cond_9

    .line 634
    invoke-static {v11, v6, v8}, Lcom/android/server/uri/GrantUri;->resolve(ILandroid/net/Uri;I)Lcom/android/server/uri/GrantUri;

    move-result-object v5

    .line 635
    .local v5, "grantUri":Lcom/android/server/uri/GrantUri;
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object v3, v5

    move/from16 v4, p4

    move-object/from16 p5, v6

    move-object v6, v5

    .end local v5    # "grantUri":Lcom/android/server/uri/GrantUri;
    .local v6, "grantUri":Lcom/android/server/uri/GrantUri;
    .local p5, "uri":Landroid/net/Uri;
    move/from16 v5, v16

    invoke-direct/range {v0 .. v5}, Lcom/android/server/uri/UriGrantsManagerService;->checkGrantUriPermissionUnlocked(ILjava/lang/String;Lcom/android/server/uri/GrantUri;II)I

    move-result v0

    .line 637
    .end local v16    # "targetUid":I
    .local v0, "targetUid":I
    if-lez v0, :cond_8

    .line 638
    if-nez v15, :cond_7

    .line 639
    new-instance v1, Lcom/android/server/uri/NeededUriGrants;

    invoke-direct {v1, v7, v0, v8}, Lcom/android/server/uri/NeededUriGrants;-><init>(Ljava/lang/String;II)V

    move-object v15, v1

    .line 641
    :cond_7
    iget-object v1, v15, Lcom/android/server/uri/NeededUriGrants;->uris:Landroid/util/ArraySet;

    invoke-virtual {v1, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 643
    .end local v6    # "grantUri":Lcom/android/server/uri/GrantUri;
    :cond_8
    move/from16 v16, v0

    goto :goto_4

    .line 644
    .end local v0    # "targetUid":I
    .end local p5    # "uri":Landroid/net/Uri;
    .local v6, "uri":Landroid/net/Uri;
    .restart local v16    # "targetUid":I
    :cond_9
    move-object/from16 p5, v6

    .end local v6    # "uri":Landroid/net/Uri;
    .restart local p5    # "uri":Landroid/net/Uri;
    invoke-virtual {v10, v14}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object v17

    .line 645
    .local v17, "clipIntent":Landroid/content/Intent;
    if-eqz v17, :cond_a

    .line 646
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v17

    move/from16 v4, p4

    move-object v5, v15

    move-object/from16 v18, p5

    .end local p5    # "uri":Landroid/net/Uri;
    .local v18, "uri":Landroid/net/Uri;
    move/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/server/uri/UriGrantsManagerService;->checkGrantUriPermissionFromIntentUnlocked(ILjava/lang/String;Landroid/content/Intent;ILcom/android/server/uri/NeededUriGrants;I)Lcom/android/server/uri/NeededUriGrants;

    move-result-object v0

    .line 648
    .local v0, "newNeeded":Lcom/android/server/uri/NeededUriGrants;
    if-eqz v0, :cond_b

    .line 649
    move-object v15, v0

    goto :goto_4

    .line 645
    .end local v0    # "newNeeded":Lcom/android/server/uri/NeededUriGrants;
    .end local v18    # "uri":Landroid/net/Uri;
    .restart local p5    # "uri":Landroid/net/Uri;
    :cond_a
    move-object/from16 v18, p5

    .line 631
    .end local v17    # "clipIntent":Landroid/content/Intent;
    .end local p5    # "uri":Landroid/net/Uri;
    :cond_b
    :goto_4
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    :cond_c
    move-object v6, v15

    move/from16 v14, v16

    .line 656
    .end local v15    # "needed":Lcom/android/server/uri/NeededUriGrants;
    .end local v16    # "targetUid":I
    .local v6, "needed":Lcom/android/server/uri/NeededUriGrants;
    .local v14, "targetUid":I
    :cond_d
    return-object v6

    .line 591
    .end local v6    # "needed":Lcom/android/server/uri/NeededUriGrants;
    .end local v9    # "data":Landroid/net/Uri;
    .end local v10    # "clip":Landroid/content/ClipData;
    .end local v11    # "contentUserHint":I
    .end local v14    # "targetUid":I
    .local p5, "needed":Lcom/android/server/uri/NeededUriGrants;
    :cond_e
    move-object/from16 v12, p0

    move/from16 v13, p6

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "targetPkg"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkGrantUriPermissionUnlocked(ILjava/lang/String;Landroid/net/Uri;II)I
    .locals 6
    .param p1, "callingUid"    # I
    .param p2, "targetPkg"    # Ljava/lang/String;
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "modeFlags"    # I
    .param p5, "userId"    # I

    .line 1268
    new-instance v3, Lcom/android/server/uri/GrantUri;

    invoke-direct {v3, p5, p3, p4}, Lcom/android/server/uri/GrantUri;-><init>(ILandroid/net/Uri;I)V

    const/4 v5, -0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/uri/UriGrantsManagerService;->checkGrantUriPermissionUnlocked(ILjava/lang/String;Lcom/android/server/uri/GrantUri;II)I

    move-result v0

    return v0
.end method

.method private checkGrantUriPermissionUnlocked(ILjava/lang/String;Lcom/android/server/uri/GrantUri;II)I
    .locals 26
    .param p1, "callingUid"    # I
    .param p2, "targetPkg"    # Ljava/lang/String;
    .param p3, "grantUri"    # Lcom/android/server/uri/GrantUri;
    .param p4, "modeFlags"    # I
    .param p5, "lastTargetUid"    # I

    .line 1081
    move-object/from16 v7, p0

    move/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move/from16 v11, p4

    invoke-static/range {p4 .. p4}, Landroid/content/Intent;->isAccessUriMode(I)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 1082
    return v1

    .line 1085
    :cond_0
    nop

    .line 1090
    const-string v0, "content"

    iget-object v2, v10, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1092
    return v1

    .line 1097
    :cond_1
    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v12

    .line 1098
    .local v12, "callingAppId":I
    const/16 v0, 0x3e8

    if-eq v12, v0, :cond_2

    if-nez v12, :cond_4

    .line 1099
    :cond_2
    const-string v0, "com.android.settings.files"

    iget-object v2, v10, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "com.android.settings.module_licenses"

    iget-object v2, v10, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    .line 1100
    invoke-virtual {v2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    .line 1107
    :cond_3
    const-string v0, "UriGrantsManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "For security reasons, the system cannot issue a Uri permission grant to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "; use startActivityAsCaller() instead"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1109
    return v1

    .line 1113
    :cond_4
    :goto_0
    iget-object v0, v10, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v13

    .line 1114
    .local v13, "authority":Ljava/lang/String;
    iget v0, v10, Lcom/android/server/uri/GrantUri;->sourceUserId:I

    const/high16 v2, 0x10000000

    invoke-direct {v7, v13, v0, v2, v8}, Lcom/android/server/uri/UriGrantsManagerService;->getProviderInfo(Ljava/lang/String;III)Landroid/content/pm/ProviderInfo;

    move-result-object v14

    .line 1116
    .local v14, "pi":Landroid/content/pm/ProviderInfo;
    if-nez v14, :cond_5

    .line 1117
    const-string v0, "UriGrantsManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No content provider found for permission check: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v10, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    .line 1118
    invoke-virtual {v3}, Landroid/net/Uri;->toSafeString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1117
    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1119
    return v1

    .line 1122
    :cond_5
    move/from16 v0, p5

    .line 1123
    .local v0, "targetUid":I
    if-gez v0, :cond_7

    if-eqz v9, :cond_7

    .line 1124
    iget-object v3, v7, Lcom/android/server/uri/UriGrantsManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    .line 1125
    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 1124
    invoke-virtual {v3, v9, v2, v4}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;II)I

    move-result v0

    .line 1126
    if-gez v0, :cond_6

    .line 1128
    return v1

    .line 1126
    :cond_6
    move v15, v0

    goto :goto_1

    .line 1132
    :cond_7
    move v15, v0

    .end local v0    # "targetUid":I
    .local v15, "targetUid":I
    :goto_1
    const/4 v0, 0x0

    .line 1133
    .local v0, "targetHoldsPermission":Z
    if-ltz v15, :cond_8

    .line 1135
    invoke-direct {v7, v14, v10, v15, v11}, Lcom/android/server/uri/UriGrantsManagerService;->checkHoldingPermissionsUnlocked(Landroid/content/pm/ProviderInfo;Lcom/android/server/uri/GrantUri;II)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1139
    const/4 v0, 0x1

    goto :goto_4

    .line 1143
    :cond_8
    iget-boolean v2, v14, Landroid/content/pm/ProviderInfo;->exported:Z

    .line 1144
    .local v2, "allowed":Z
    and-int/lit8 v3, v11, 0x1

    if-eqz v3, :cond_9

    .line 1145
    iget-object v3, v14, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 1146
    const/4 v2, 0x0

    .line 1149
    :cond_9
    and-int/lit8 v3, v11, 0x2

    if-eqz v3, :cond_a

    .line 1150
    iget-object v3, v14, Landroid/content/pm/ProviderInfo;->writePermission:Ljava/lang/String;

    if-eqz v3, :cond_a

    .line 1151
    const/4 v2, 0x0

    .line 1154
    :cond_a
    iget-object v3, v14, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    if-eqz v3, :cond_d

    .line 1155
    iget-object v3, v14, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    array-length v3, v3

    .line 1156
    .local v3, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    if-ge v4, v3, :cond_d

    .line 1157
    iget-object v5, v14, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    aget-object v5, v5, v4

    if-eqz v5, :cond_c

    iget-object v5, v14, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    aget-object v5, v5, v4

    iget-object v6, v10, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    .line 1158
    invoke-virtual {v6}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/pm/PathPermission;->match(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 1159
    and-int/lit8 v5, v11, 0x1

    if-eqz v5, :cond_b

    .line 1160
    iget-object v5, v14, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    aget-object v5, v5, v4

    invoke-virtual {v5}, Landroid/content/pm/PathPermission;->getReadPermission()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_b

    .line 1161
    const/4 v2, 0x0

    .line 1164
    :cond_b
    and-int/lit8 v5, v11, 0x2

    if-eqz v5, :cond_d

    .line 1165
    iget-object v5, v14, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    aget-object v5, v5, v4

    invoke-virtual {v5}, Landroid/content/pm/PathPermission;->getWritePermission()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_d

    .line 1166
    const/4 v2, 0x0

    goto :goto_3

    .line 1156
    :cond_c
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1173
    .end local v3    # "N":I
    .end local v4    # "i":I
    :cond_d
    :goto_3
    if-eqz v2, :cond_e

    .line 1174
    const/4 v0, 0x1

    .line 1178
    .end local v2    # "allowed":Z
    :cond_e
    :goto_4
    iget-boolean v2, v14, Landroid/content/pm/ProviderInfo;->forceUriPermissions:Z

    if-eqz v2, :cond_f

    .line 1182
    const/4 v0, 0x0

    move/from16 v16, v0

    goto :goto_5

    .line 1178
    :cond_f
    move/from16 v16, v0

    .line 1185
    .end local v0    # "targetHoldsPermission":Z
    .local v16, "targetHoldsPermission":Z
    :goto_5
    and-int/lit16 v0, v11, 0xc0

    const/16 v17, 0x0

    const/16 v18, 0x1

    if-nez v0, :cond_10

    move/from16 v0, v18

    goto :goto_6

    :cond_10
    move/from16 v0, v17

    :goto_6
    move/from16 v19, v0

    .line 1187
    .local v19, "basicGrant":Z
    if-eqz v19, :cond_11

    if-eqz v16, :cond_11

    .line 1192
    iget-object v0, v7, Lcom/android/server/uri/UriGrantsManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    .line 1193
    invoke-static {v15}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v21

    const/16 v22, 0x0

    .line 1194
    invoke-static {v15}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v23

    iget-object v2, v14, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v25, 0x0

    .line 1192
    move-object/from16 v20, v0

    move/from16 v24, v2

    invoke-virtual/range {v20 .. v25}, Landroid/content/pm/PackageManagerInternal;->grantImplicitAccess(ILandroid/content/Intent;IIZ)V

    .line 1195
    return v1

    .line 1204
    :cond_11
    if-ltz v15, :cond_12

    .line 1205
    invoke-static {v15}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    iget v1, v10, Lcom/android/server/uri/GrantUri;->sourceUserId:I

    if-eq v0, v1, :cond_12

    const/4 v6, 0x0

    .line 1206
    move-object/from16 v1, p0

    move-object v2, v14

    move-object/from16 v3, p3

    move/from16 v4, p1

    move/from16 v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/uri/UriGrantsManagerService;->checkHoldingPermissionsInternalUnlocked(Landroid/content/pm/ProviderInfo;Lcom/android/server/uri/GrantUri;IIZ)Z

    move-result v0

    if-eqz v0, :cond_12

    move/from16 v17, v18

    goto :goto_7

    :cond_12
    nop

    :goto_7
    move/from16 v1, v17

    .line 1210
    .local v1, "specialCrossUserGrant":Z
    iget-boolean v0, v14, Landroid/content/pm/ProviderInfo;->grantUriPermissions:Z

    .line 1211
    .local v0, "grantAllowed":Z
    iget-object v2, v14, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    .line 1212
    iget-object v2, v14, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    array-length v2, v2

    .line 1213
    .local v2, "N":I
    const/4 v0, 0x0

    .line 1214
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_8
    if-ge v3, v2, :cond_14

    .line 1215
    iget-object v4, v14, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    aget-object v4, v4, v3

    if-eqz v4, :cond_13

    iget-object v4, v14, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    aget-object v4, v4, v3

    iget-object v5, v10, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    .line 1216
    invoke-virtual {v5}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/PatternMatcher;->match(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 1217
    const/4 v0, 0x1

    .line 1218
    move v2, v0

    goto :goto_9

    .line 1214
    :cond_13
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_14
    move v2, v0

    goto :goto_9

    .line 1211
    .end local v2    # "N":I
    .end local v3    # "i":I
    :cond_15
    move v2, v0

    .line 1222
    .end local v0    # "grantAllowed":Z
    .local v2, "grantAllowed":Z
    :goto_9
    if-nez v2, :cond_18

    .line 1223
    if-eqz v1, :cond_17

    .line 1226
    if-eqz v19, :cond_16

    goto :goto_a

    .line 1227
    :cond_16
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Provider "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v14, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v14, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " does not allow granting of advanced Uri permissions (uri "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1233
    :cond_17
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Provider "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v14, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v14, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " does not allow granting of Uri permissions (uri "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1241
    :cond_18
    :goto_a
    invoke-direct {v7, v14, v10, v8, v11}, Lcom/android/server/uri/UriGrantsManagerService;->checkHoldingPermissionsUnlocked(Landroid/content/pm/ProviderInfo;Lcom/android/server/uri/GrantUri;II)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 1244
    iget-object v3, v7, Lcom/android/server/uri/UriGrantsManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1245
    :try_start_0
    invoke-direct {v7, v10, v8, v11}, Lcom/android/server/uri/UriGrantsManagerService;->checkUriPermissionLocked(Lcom/android/server/uri/GrantUri;II)Z

    move-result v0

    .line 1246
    .local v0, "res":Z
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1247
    if-nez v0, :cond_1a

    .line 1248
    const-string v3, "android.permission.MANAGE_DOCUMENTS"

    iget-object v4, v14, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 1249
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UID "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " does not have permission to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "; you could obtain access using ACTION_OPEN_DOCUMENT or related APIs"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1254
    :cond_19
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UID "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " does not have permission to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1246
    .end local v0    # "res":Z
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1260
    :cond_1a
    return v15
.end method

.method private checkHoldingPermissionsInternalUnlocked(Landroid/content/pm/ProviderInfo;Lcom/android/server/uri/GrantUri;IIZ)Z
    .locals 17
    .param p1, "pi"    # Landroid/content/pm/ProviderInfo;
    .param p2, "grantUri"    # Lcom/android/server/uri/GrantUri;
    .param p3, "uid"    # I
    .param p4, "modeFlags"    # I
    .param p5, "considerUidPermissions"    # Z

    .line 922
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    iget-object v5, v0, Lcom/android/server/uri/UriGrantsManagerService;->mLock:Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_14

    .line 926
    iget-object v5, v1, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v6, 0x1

    if-ne v5, v3, :cond_0

    .line 927
    return v6

    .line 928
    :cond_0
    iget-boolean v5, v1, Landroid/content/pm/ProviderInfo;->exported:Z

    const/4 v7, 0x0

    if-nez v5, :cond_1

    .line 929
    return v7

    .line 932
    :cond_1
    and-int/lit8 v5, v4, 0x1

    if-nez v5, :cond_2

    move v5, v6

    goto :goto_0

    :cond_2
    move v5, v7

    .line 933
    .local v5, "readMet":Z
    :goto_0
    and-int/lit8 v8, v4, 0x2

    if-nez v8, :cond_3

    move v8, v6

    goto :goto_1

    :cond_3
    move v8, v7

    .line 936
    .local v8, "writeMet":Z
    :goto_1
    if-nez v5, :cond_4

    iget-object v9, v1, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    if-eqz v9, :cond_4

    if-eqz p5, :cond_4

    iget-object v9, v1, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    .line 937
    invoke-direct {v0, v9, v3}, Lcom/android/server/uri/UriGrantsManagerService;->checkUidPermission(Ljava/lang/String;I)I

    move-result v9

    if-nez v9, :cond_4

    .line 938
    const/4 v5, 0x1

    .line 940
    :cond_4
    if-nez v8, :cond_5

    iget-object v9, v1, Landroid/content/pm/ProviderInfo;->writePermission:Ljava/lang/String;

    if-eqz v9, :cond_5

    if-eqz p5, :cond_5

    iget-object v9, v1, Landroid/content/pm/ProviderInfo;->writePermission:Ljava/lang/String;

    .line 941
    invoke-direct {v0, v9, v3}, Lcom/android/server/uri/UriGrantsManagerService;->checkUidPermission(Ljava/lang/String;I)I

    move-result v9

    if-nez v9, :cond_5

    .line 942
    const/4 v8, 0x1

    .line 947
    :cond_5
    iget-object v9, v1, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    if-nez v9, :cond_6

    move v9, v6

    goto :goto_2

    :cond_6
    move v9, v7

    .line 948
    .local v9, "allowDefaultRead":Z
    :goto_2
    iget-object v10, v1, Landroid/content/pm/ProviderInfo;->writePermission:Ljava/lang/String;

    if-nez v10, :cond_7

    move v10, v6

    goto :goto_3

    :cond_7
    move v10, v7

    .line 951
    .local v10, "allowDefaultWrite":Z
    :goto_3
    iget-object v11, v1, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    .line 952
    .local v11, "pps":[Landroid/content/pm/PathPermission;
    if-eqz v11, :cond_d

    .line 953
    iget-object v12, v2, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    invoke-virtual {v12}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v12

    .line 954
    .local v12, "path":Ljava/lang/String;
    array-length v13, v11

    .line 955
    .local v13, "i":I
    :goto_4
    if-lez v13, :cond_d

    if-eqz v5, :cond_8

    if-nez v8, :cond_d

    .line 956
    :cond_8
    add-int/lit8 v13, v13, -0x1

    .line 957
    aget-object v14, v11, v13

    .line 958
    .local v14, "pp":Landroid/content/pm/PathPermission;
    invoke-virtual {v14, v12}, Landroid/content/pm/PathPermission;->match(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_c

    .line 959
    if-nez v5, :cond_a

    .line 960
    invoke-virtual {v14}, Landroid/content/pm/PathPermission;->getReadPermission()Ljava/lang/String;

    move-result-object v15

    .line 965
    .local v15, "pprperm":Ljava/lang/String;
    if-eqz v15, :cond_a

    .line 966
    if-eqz p5, :cond_9

    invoke-direct {v0, v15, v3}, Lcom/android/server/uri/UriGrantsManagerService;->checkUidPermission(Ljava/lang/String;I)I

    move-result v16

    if-nez v16, :cond_9

    .line 968
    const/4 v5, 0x1

    goto :goto_5

    .line 970
    :cond_9
    const/4 v9, 0x0

    .line 974
    .end local v15    # "pprperm":Ljava/lang/String;
    :cond_a
    :goto_5
    if-nez v8, :cond_c

    .line 975
    invoke-virtual {v14}, Landroid/content/pm/PathPermission;->getWritePermission()Ljava/lang/String;

    move-result-object v15

    .line 980
    .local v15, "ppwperm":Ljava/lang/String;
    if-eqz v15, :cond_c

    .line 981
    if-eqz p5, :cond_b

    invoke-direct {v0, v15, v3}, Lcom/android/server/uri/UriGrantsManagerService;->checkUidPermission(Ljava/lang/String;I)I

    move-result v16

    if-nez v16, :cond_b

    .line 983
    const/4 v8, 0x1

    goto :goto_6

    .line 985
    :cond_b
    const/4 v10, 0x0

    .line 990
    .end local v14    # "pp":Landroid/content/pm/PathPermission;
    .end local v15    # "ppwperm":Ljava/lang/String;
    :cond_c
    :goto_6
    goto :goto_4

    .line 995
    .end local v12    # "path":Ljava/lang/String;
    .end local v13    # "i":I
    :cond_d
    if-eqz v9, :cond_e

    const/4 v5, 0x1

    .line 996
    :cond_e
    if-eqz v10, :cond_f

    const/4 v8, 0x1

    .line 1001
    :cond_f
    iget-boolean v12, v1, Landroid/content/pm/ProviderInfo;->forceUriPermissions:Z

    if-eqz v12, :cond_12

    .line 1002
    iget-object v12, v1, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v12, v12, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v12}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v12

    .line 1003
    .local v12, "providerUserId":I
    invoke-static/range {p3 .. p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v13

    .line 1004
    .local v13, "clientUserId":I
    if-ne v12, v13, :cond_11

    .line 1005
    iget-object v14, v0, Lcom/android/server/uri/UriGrantsManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget-object v15, v2, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    invoke-virtual {v14, v15, v12, v3, v4}, Landroid/app/ActivityManagerInternal;->checkContentProviderUriPermission(Landroid/net/Uri;III)I

    move-result v14

    if-nez v14, :cond_10

    move v14, v6

    goto :goto_7

    :cond_10
    move v14, v7

    .local v14, "forceMet":Z
    :goto_7
    goto :goto_8

    .line 1010
    .end local v14    # "forceMet":Z
    :cond_11
    const/4 v14, 0x0

    .line 1012
    .end local v12    # "providerUserId":I
    .end local v13    # "clientUserId":I
    .restart local v14    # "forceMet":Z
    :goto_8
    goto :goto_9

    .line 1013
    .end local v14    # "forceMet":Z
    :cond_12
    const/4 v14, 0x1

    .line 1016
    .restart local v14    # "forceMet":Z
    :goto_9
    if-eqz v5, :cond_13

    if-eqz v8, :cond_13

    if-eqz v14, :cond_13

    goto :goto_a

    :cond_13
    move v6, v7

    :goto_a
    return v6

    .line 923
    .end local v5    # "readMet":Z
    .end local v8    # "writeMet":Z
    .end local v9    # "allowDefaultRead":Z
    .end local v10    # "allowDefaultWrite":Z
    .end local v11    # "pps":[Landroid/content/pm/PathPermission;
    .end local v14    # "forceMet":Z
    :cond_14
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Must never hold local mLock"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method private checkHoldingPermissionsUnlocked(Landroid/content/pm/ProviderInfo;Lcom/android/server/uri/GrantUri;II)Z
    .locals 7
    .param p1, "pi"    # Landroid/content/pm/ProviderInfo;
    .param p2, "grantUri"    # Lcom/android/server/uri/GrantUri;
    .param p3, "uid"    # I
    .param p4, "modeFlags"    # I

    .line 909
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    iget v1, p2, Lcom/android/server/uri/GrantUri;->sourceUserId:I

    if-eq v0, v1, :cond_0

    .line 910
    const/4 v0, -0x1

    const/4 v1, 0x1

    const-string v2, "android.permission.INTERACT_ACROSS_USERS"

    invoke-static {v2, p3, v0, v1}, Landroid/app/ActivityManager;->checkComponentPermission(Ljava/lang/String;IIZ)I

    move-result v0

    if-eqz v0, :cond_0

    .line 912
    const/4 v0, 0x0

    return v0

    .line 915
    :cond_0
    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/uri/UriGrantsManagerService;->checkHoldingPermissionsInternalUnlocked(Landroid/content/pm/ProviderInfo;Lcom/android/server/uri/GrantUri;IIZ)Z

    move-result v0

    return v0
.end method

.method private checkUidPermission(Ljava/lang/String;I)I
    .locals 2
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 200
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 201
    :catch_0
    move-exception v0

    .line 202
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private checkUriPermissionLocked(Lcom/android/server/uri/GrantUri;II)Z
    .locals 11
    .param p1, "grantUri"    # Lcom/android/server/uri/GrantUri;
    .param p2, "uid"    # I
    .param p3, "modeFlags"    # I

    .line 1274
    and-int/lit8 v0, p3, 0x40

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 1275
    .local v0, "persistable":Z
    :goto_0
    if-eqz v0, :cond_1

    const/4 v3, 0x3

    goto :goto_1

    .line 1276
    :cond_1
    move v3, v2

    :goto_1
    nop

    .line 1279
    .local v3, "minStrength":I
    if-nez p2, :cond_2

    .line 1280
    return v2

    .line 1283
    :cond_2
    iget-object v4, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v4, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArrayMap;

    .line 1284
    .local v4, "perms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/uri/GrantUri;Lcom/android/server/uri/UriPermission;>;"
    if-nez v4, :cond_3

    return v1

    .line 1287
    :cond_3
    invoke-virtual {v4, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/uri/UriPermission;

    .line 1288
    .local v5, "exactPerm":Lcom/android/server/uri/UriPermission;
    if-eqz v5, :cond_4

    invoke-virtual {v5, p3}, Lcom/android/server/uri/UriPermission;->getStrength(I)I

    move-result v6

    if-lt v6, v3, :cond_4

    .line 1289
    return v2

    .line 1293
    :cond_4
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v6

    .line 1294
    .local v6, "N":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2
    if-ge v7, v6, :cond_6

    .line 1295
    invoke-virtual {v4, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/uri/UriPermission;

    .line 1296
    .local v8, "perm":Lcom/android/server/uri/UriPermission;
    iget-object v9, v8, Lcom/android/server/uri/UriPermission;->uri:Lcom/android/server/uri/GrantUri;

    iget-boolean v9, v9, Lcom/android/server/uri/GrantUri;->prefix:Z

    if-eqz v9, :cond_5

    iget-object v9, p1, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    iget-object v10, v8, Lcom/android/server/uri/UriPermission;->uri:Lcom/android/server/uri/GrantUri;

    iget-object v10, v10, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    invoke-virtual {v9, v10}, Landroid/net/Uri;->isPathPrefixMatch(Landroid/net/Uri;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 1297
    invoke-virtual {v8, p3}, Lcom/android/server/uri/UriPermission;->getStrength(I)I

    move-result v9

    if-lt v9, v3, :cond_5

    .line 1298
    return v2

    .line 1294
    .end local v8    # "perm":Lcom/android/server/uri/UriPermission;
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 1302
    .end local v7    # "i":I
    :cond_6
    return v1
.end method

.method static createForTest(Ljava/io/File;)Lcom/android/server/uri/UriGrantsManagerService;
    .locals 2
    .param p0, "systemDir"    # Ljava/io/File;

    .line 156
    new-instance v0, Lcom/android/server/uri/UriGrantsManagerService;

    invoke-direct {v0, p0}, Lcom/android/server/uri/UriGrantsManagerService;-><init>(Ljava/io/File;)V

    .line 157
    .local v0, "service":Lcom/android/server/uri/UriGrantsManagerService;
    const-class v1, Landroid/app/ActivityManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManagerInternal;

    iput-object v1, v0, Lcom/android/server/uri/UriGrantsManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 158
    const-class v1, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageManagerInternal;

    iput-object v1, v0, Lcom/android/server/uri/UriGrantsManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    .line 159
    return-object v0
.end method

.method private enforceNotIsolatedCaller(Ljava/lang/String;)V
    .locals 3
    .param p1, "caller"    # Ljava/lang/String;

    .line 1054
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->isIsolated(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1057
    return-void

    .line 1055
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Isolated process not allowed to call "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private findOrCreateUriPermissionLocked(Ljava/lang/String;Ljava/lang/String;ILcom/android/server/uri/GrantUri;)Lcom/android/server/uri/UriPermission;
    .locals 3
    .param p1, "sourcePkg"    # Ljava/lang/String;
    .param p2, "targetPkg"    # Ljava/lang/String;
    .param p3, "targetUid"    # I
    .param p4, "grantUri"    # Lcom/android/server/uri/GrantUri;

    .line 735
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 736
    .local v0, "targetUris":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/uri/GrantUri;Lcom/android/server/uri/UriPermission;>;"
    if-nez v0, :cond_0

    .line 737
    invoke-static {}, Lcom/google/android/collect/Maps;->newArrayMap()Landroid/util/ArrayMap;

    move-result-object v0

    .line 738
    iget-object v1, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v1, p3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 741
    :cond_0
    invoke-virtual {v0, p4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/uri/UriPermission;

    .line 742
    .local v1, "perm":Lcom/android/server/uri/UriPermission;
    if-nez v1, :cond_1

    .line 743
    new-instance v2, Lcom/android/server/uri/UriPermission;

    invoke-direct {v2, p1, p2, p3, p4}, Lcom/android/server/uri/UriPermission;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/android/server/uri/GrantUri;)V

    move-object v1, v2

    .line 744
    invoke-virtual {v0, p4, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 747
    :cond_1
    return-object v1
.end method

.method private findUriPermissionLocked(ILcom/android/server/uri/GrantUri;)Lcom/android/server/uri/UriPermission;
    .locals 2
    .param p1, "targetUid"    # I
    .param p2, "grantUri"    # Lcom/android/server/uri/GrantUri;

    .line 1039
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 1040
    .local v0, "targetUris":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/uri/GrantUri;Lcom/android/server/uri/UriPermission;>;"
    if-eqz v0, :cond_0

    .line 1041
    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/uri/UriPermission;

    return-object v1

    .line 1043
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private getProviderInfo(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;
    .locals 2
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "userHandle"    # I
    .param p3, "pmFlags"    # I

    .line 1060
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    or-int/lit16 v1, p3, 0x800

    invoke-virtual {v0, p1, v1, p2}, Landroid/content/pm/PackageManagerInternal;->resolveContentProvider(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    return-object v0
.end method

.method private getProviderInfo(Ljava/lang/String;III)Landroid/content/pm/ProviderInfo;
    .locals 2
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "userHandle"    # I
    .param p3, "pmFlags"    # I
    .param p4, "callingUid"    # I

    .line 1066
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    or-int/lit16 v1, p3, 0x800

    invoke-virtual {v0, p1, v1, p2, p4}, Landroid/content/pm/PackageManagerInternal;->resolveContentProvider(Ljava/lang/String;III)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    return-object v0
.end method

.method private grantUriPermissionFromOwnerUnlocked(Landroid/os/IBinder;ILjava/lang/String;Landroid/net/Uri;III)V
    .locals 17
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "fromUid"    # I
    .param p3, "targetPkg"    # Ljava/lang/String;
    .param p4, "uri"    # Landroid/net/Uri;
    .param p5, "modeFlags"    # I
    .param p6, "sourceUserId"    # I
    .param p7, "targetUserId"    # I

    .line 234
    move-object/from16 v0, p4

    move-object/from16 v8, p0

    iget-object v9, v8, Lcom/android/server/uri/UriGrantsManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v10

    .line 235
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    .line 234
    const/4 v13, 0x0

    const/4 v14, 0x2

    const-string v15, "grantUriPermissionFromOwner"

    const/16 v16, 0x0

    move/from16 v12, p7

    invoke-virtual/range {v9 .. v16}, Landroid/app/ActivityManagerInternal;->handleIncomingUser(IIIZILjava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 238
    .end local p7    # "targetUserId":I
    .local v9, "targetUserId":I
    invoke-static/range {p1 .. p1}, Lcom/android/server/uri/UriPermissionOwner;->fromExternalToken(Landroid/os/IBinder;)Lcom/android/server/uri/UriPermissionOwner;

    move-result-object v10

    .line 239
    .local v10, "owner":Lcom/android/server/uri/UriPermissionOwner;
    if-eqz v10, :cond_4

    .line 242
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    move/from16 v11, p2

    if-eq v11, v1, :cond_1

    .line 243
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 246
    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "nice try"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 249
    :cond_1
    :goto_0
    if-eqz p3, :cond_3

    .line 252
    if-eqz v0, :cond_2

    .line 256
    new-instance v4, Lcom/android/server/uri/GrantUri;

    move/from16 v12, p5

    move/from16 v13, p6

    invoke-direct {v4, v13, v0, v12}, Lcom/android/server/uri/GrantUri;-><init>(ILandroid/net/Uri;I)V

    move-object/from16 v1, p0

    move/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v5, p5

    move-object v6, v10

    move v7, v9

    invoke-direct/range {v1 .. v7}, Lcom/android/server/uri/UriGrantsManagerService;->grantUriPermissionUnlocked(ILjava/lang/String;Lcom/android/server/uri/GrantUri;ILcom/android/server/uri/UriPermissionOwner;I)V

    .line 258
    return-void

    .line 253
    :cond_2
    move/from16 v12, p5

    move/from16 v13, p6

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "null uri"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 250
    :cond_3
    move/from16 v12, p5

    move/from16 v13, p6

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "null target"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 240
    :cond_4
    move/from16 v11, p2

    move/from16 v12, p5

    move/from16 v13, p6

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown owner: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private grantUriPermissionUnchecked(ILjava/lang/String;Lcom/android/server/uri/GrantUri;ILcom/android/server/uri/UriPermissionOwner;)V
    .locals 10
    .param p1, "targetUid"    # I
    .param p2, "targetPkg"    # Ljava/lang/String;
    .param p3, "grantUri"    # Lcom/android/server/uri/GrantUri;
    .param p4, "modeFlags"    # I
    .param p5, "owner"    # Lcom/android/server/uri/UriPermissionOwner;

    .line 752
    invoke-static {p4}, Landroid/content/Intent;->isAccessUriMode(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 753
    return-void

    .line 762
    :cond_0
    iget-object v0, p3, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 763
    .local v0, "authority":Ljava/lang/String;
    iget v1, p3, Lcom/android/server/uri/GrantUri;->sourceUserId:I

    const/high16 v2, 0x10000000

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/uri/UriGrantsManagerService;->getProviderInfo(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;

    move-result-object v1

    .line 765
    .local v1, "pi":Landroid/content/pm/ProviderInfo;
    if-nez v1, :cond_1

    .line 766
    const-string v2, "UriGrantsManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No content provider found for grant: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/android/server/uri/GrantUri;->toSafeString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    return-void

    .line 771
    :cond_1
    iget-object v2, p0, Lcom/android/server/uri/UriGrantsManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 772
    :try_start_0
    iget-object v3, v1, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v3, p2, p1, p3}, Lcom/android/server/uri/UriGrantsManagerService;->findOrCreateUriPermissionLocked(Ljava/lang/String;Ljava/lang/String;ILcom/android/server/uri/GrantUri;)Lcom/android/server/uri/UriPermission;

    move-result-object v3

    .line 773
    .local v3, "perm":Lcom/android/server/uri/UriPermission;
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 774
    invoke-virtual {v3, p4, p5}, Lcom/android/server/uri/UriPermission;->grantModes(ILcom/android/server/uri/UriPermissionOwner;)Z

    .line 775
    iget-object v4, p0, Lcom/android/server/uri/UriGrantsManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    const/4 v6, 0x0

    .line 776
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v7

    iget-object v2, v1, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v9, 0x0

    .line 775
    invoke-virtual/range {v4 .. v9}, Landroid/content/pm/PackageManagerInternal;->grantImplicitAccess(ILandroid/content/Intent;IIZ)V

    .line 777
    return-void

    .line 773
    .end local v3    # "perm":Lcom/android/server/uri/UriPermission;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method private grantUriPermissionUncheckedFromIntent(Lcom/android/server/uri/NeededUriGrants;Lcom/android/server/uri/UriPermissionOwner;)V
    .locals 8
    .param p1, "needed"    # Lcom/android/server/uri/NeededUriGrants;
    .param p2, "owner"    # Lcom/android/server/uri/UriPermissionOwner;

    .line 782
    if-nez p1, :cond_0

    .line 783
    return-void

    .line 785
    :cond_0
    iget-object v0, p1, Lcom/android/server/uri/NeededUriGrants;->uris:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    .line 786
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 787
    iget v3, p1, Lcom/android/server/uri/NeededUriGrants;->targetUid:I

    iget-object v4, p1, Lcom/android/server/uri/NeededUriGrants;->targetPkg:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/uri/NeededUriGrants;->uris:Landroid/util/ArraySet;

    .line 788
    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/android/server/uri/GrantUri;

    iget v6, p1, Lcom/android/server/uri/NeededUriGrants;->flags:I

    .line 787
    move-object v2, p0

    move-object v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/server/uri/UriGrantsManagerService;->grantUriPermissionUnchecked(ILjava/lang/String;Lcom/android/server/uri/GrantUri;ILcom/android/server/uri/UriPermissionOwner;)V

    .line 786
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 790
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method private grantUriPermissionUnlocked(ILjava/lang/String;Lcom/android/server/uri/GrantUri;ILcom/android/server/uri/UriPermissionOwner;I)V
    .locals 8
    .param p1, "callingUid"    # I
    .param p2, "targetPkg"    # Ljava/lang/String;
    .param p3, "grantUri"    # Lcom/android/server/uri/GrantUri;
    .param p4, "modeFlags"    # I
    .param p5, "owner"    # Lcom/android/server/uri/UriPermissionOwner;
    .param p6, "targetUserId"    # I

    .line 794
    if-eqz p2, :cond_1

    .line 797
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, p2, v1, p6}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;II)I

    move-result v0

    .line 800
    .local v0, "targetUid":I
    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move v7, v0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/uri/UriGrantsManagerService;->checkGrantUriPermissionUnlocked(ILjava/lang/String;Lcom/android/server/uri/GrantUri;II)I

    move-result v0

    .line 802
    if-gez v0, :cond_0

    .line 803
    return-void

    .line 806
    :cond_0
    move-object v1, p0

    move v2, v0

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/server/uri/UriGrantsManagerService;->grantUriPermissionUnchecked(ILjava/lang/String;Lcom/android/server/uri/GrantUri;ILcom/android/server/uri/UriPermissionOwner;)V

    .line 807
    return-void

    .line 795
    .end local v0    # "targetUid":I
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "targetPkg"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private matchesProvider(Landroid/net/Uri;Landroid/content/pm/ProviderInfo;)Z
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "cpi"    # Landroid/content/pm/ProviderInfo;

    .line 533
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 534
    .local v0, "uriAuth":Ljava/lang/String;
    iget-object v1, p2, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    .line 535
    .local v1, "cpiAuth":Ljava/lang/String;
    const/16 v2, 0x3b

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 536
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2

    .line 538
    :cond_0
    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 539
    .local v2, "cpiAuths":[Ljava/lang/String;
    array-length v3, v2

    .line 540
    .local v3, "length":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_2

    .line 541
    aget-object v5, v2, v4

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    return v5

    .line 540
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 543
    .end local v4    # "i":I
    :cond_2
    const/4 v4, 0x0

    return v4
.end method

.method private maybePrunePersistedUriGrantsLocked(I)Z
    .locals 7
    .param p1, "uid"    # I

    .line 554
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 555
    .local v0, "perms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/uri/GrantUri;Lcom/android/server/uri/UriPermission;>;"
    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 556
    :cond_0
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const/16 v3, 0x200

    if-ge v2, v3, :cond_1

    return v1

    .line 558
    :cond_1
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 559
    .local v2, "persisted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/uri/UriPermission;>;"
    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/uri/UriPermission;

    .line 560
    .local v5, "perm":Lcom/android/server/uri/UriPermission;
    iget v6, v5, Lcom/android/server/uri/UriPermission;->persistedModeFlags:I

    if-eqz v6, :cond_2

    .line 561
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 563
    .end local v5    # "perm":Lcom/android/server/uri/UriPermission;
    :cond_2
    goto :goto_0

    .line 565
    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v3

    .line 566
    .local v4, "trimCount":I
    if-gtz v4, :cond_4

    return v1

    .line 568
    :cond_4
    new-instance v1, Lcom/android/server/uri/UriPermission$PersistedTimeComparator;

    invoke-direct {v1}, Lcom/android/server/uri/UriPermission$PersistedTimeComparator;-><init>()V

    invoke-static {v2, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 569
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v4, :cond_5

    .line 570
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/uri/UriPermission;

    .line 574
    .local v3, "perm":Lcom/android/server/uri/UriPermission;
    const/4 v5, -0x1

    invoke-virtual {v3, v5}, Lcom/android/server/uri/UriPermission;->releasePersistableModes(I)Z

    .line 575
    invoke-direct {p0, v3}, Lcom/android/server/uri/UriGrantsManagerService;->removeUriPermissionIfNeededLocked(Lcom/android/server/uri/UriPermission;)V

    .line 569
    .end local v3    # "perm":Lcom/android/server/uri/UriPermission;
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 578
    .end local v1    # "i":I
    :cond_5
    const/4 v1, 0x1

    return v1
.end method

.method private readGrantedUriPermissionsLocked()V
    .locals 30

    .line 663
    move-object/from16 v1, p0

    const-string v2, "Failed reading Uri grants"

    const-string v3, "UriGrantsManagerService"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 665
    .local v4, "now":J
    const/4 v6, 0x0

    .line 667
    .local v6, "fis":Ljava/io/FileInputStream;
    :try_start_0
    iget-object v0, v1, Lcom/android/server/uri/UriGrantsManagerService;->mGrantFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v0

    move-object v6, v0

    .line 668
    invoke-static {v6}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Landroid/util/TypedXmlPullParser;

    move-result-object v0

    .line 671
    .local v0, "in":Landroid/util/TypedXmlPullParser;
    :goto_0
    invoke-interface {v0}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v7

    move v8, v7

    .local v8, "type":I
    const/4 v9, 0x1

    if-eq v7, v9, :cond_6

    .line 672
    invoke-interface {v0}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 673
    .local v7, "tag":Ljava/lang/String;
    const/4 v9, 0x2

    if-ne v8, v9, :cond_5

    .line 674
    const-string v9, "uri-grant"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 677
    const-string v9, "userHandle"

    const/16 v10, -0x2710

    const/4 v11, 0x0

    invoke-interface {v0, v11, v9, v10}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v9

    .line 679
    .local v9, "userHandle":I
    if-eq v9, v10, :cond_0

    .line 681
    move v10, v9

    .line 682
    .local v10, "sourceUserId":I
    move v12, v9

    move v15, v12

    .local v12, "targetUserId":I
    goto :goto_1

    .line 684
    .end local v10    # "sourceUserId":I
    .end local v12    # "targetUserId":I
    :cond_0
    const-string v10, "sourceUserId"

    invoke-interface {v0, v11, v10}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    .line 685
    .restart local v10    # "sourceUserId":I
    const-string v12, "targetUserId"

    invoke-interface {v0, v11, v12}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    move v15, v12

    .line 687
    .local v15, "targetUserId":I
    :goto_1
    const-string v12, "sourcePkg"

    invoke-interface {v0, v11, v12}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object v14, v12

    .line 688
    .local v14, "sourcePkg":Ljava/lang/String;
    const-string v12, "targetPkg"

    invoke-interface {v0, v11, v12}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object v13, v12

    .line 689
    .local v13, "targetPkg":Ljava/lang/String;
    const-string v12, "uri"

    invoke-interface {v0, v11, v12}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    .line 690
    .local v12, "uri":Landroid/net/Uri;
    const-string v11, "prefix"

    move-object/from16 v18, v7

    .end local v7    # "tag":Ljava/lang/String;
    .local v18, "tag":Ljava/lang/String;
    const/4 v7, 0x0

    move/from16 v19, v8

    const/4 v8, 0x0

    .end local v8    # "type":I
    .local v19, "type":I
    invoke-interface {v0, v8, v11, v7}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v11

    .line 691
    .local v11, "prefix":Z
    const-string v7, "modeFlags"

    invoke-interface {v0, v8, v7}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 692
    .local v7, "modeFlags":I
    const-string v8, "createdTime"

    move/from16 v20, v9

    const/4 v9, 0x0

    .end local v9    # "userHandle":I
    .local v20, "userHandle":I
    invoke-interface {v0, v9, v8, v4, v5}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v8

    .line 697
    .local v8, "createdTime":J
    move-object/from16 v21, v0

    .end local v0    # "in":Landroid/util/TypedXmlPullParser;
    .local v21, "in":Landroid/util/TypedXmlPullParser;
    invoke-virtual {v12}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-wide/from16 v22, v4

    .end local v4    # "now":J
    .local v22, "now":J
    const/high16 v4, 0xc0000

    :try_start_1
    invoke-direct {v1, v0, v10, v4}, Lcom/android/server/uri/UriGrantsManagerService;->getProviderInfo(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    .line 699
    .local v0, "pi":Landroid/content/pm/ProviderInfo;
    if-eqz v0, :cond_3

    iget-object v4, v0, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 700
    iget-object v4, v1, Lcom/android/server/uri/UriGrantsManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    const/16 v5, 0x2000

    invoke-virtual {v4, v13, v5, v15}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;II)I

    move-result v4

    .line 702
    .local v4, "targetUid":I
    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    .line 703
    new-instance v5, Lcom/android/server/uri/GrantUri;

    .line 704
    if-eqz v11, :cond_1

    const/16 v16, 0x80

    move/from16 v24, v11

    move/from16 v11, v16

    goto :goto_2

    :cond_1
    move/from16 v24, v11

    const/4 v11, 0x0

    .end local v11    # "prefix":Z
    .local v24, "prefix":Z
    :goto_2
    invoke-direct {v5, v10, v12, v11}, Lcom/android/server/uri/GrantUri;-><init>(ILandroid/net/Uri;I)V

    .line 705
    .local v5, "grantUri":Lcom/android/server/uri/GrantUri;
    invoke-direct {v1, v14, v13, v4, v5}, Lcom/android/server/uri/UriGrantsManagerService;->findOrCreateUriPermissionLocked(Ljava/lang/String;Ljava/lang/String;ILcom/android/server/uri/GrantUri;)Lcom/android/server/uri/UriPermission;

    move-result-object v11

    .line 707
    .local v11, "perm":Lcom/android/server/uri/UriPermission;
    invoke-virtual {v11, v7, v8, v9}, Lcom/android/server/uri/UriPermission;->initPersistedModes(IJ)V

    .line 708
    move-object/from16 v25, v5

    .end local v5    # "grantUri":Lcom/android/server/uri/GrantUri;
    .local v25, "grantUri":Lcom/android/server/uri/GrantUri;
    iget-object v5, v1, Lcom/android/server/uri/UriGrantsManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    const/16 v16, 0x0

    .line 710
    invoke-static {v4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v17

    iget-object v1, v0, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v26, 0x0

    .line 708
    move-object/from16 v27, v12

    .end local v12    # "uri":Landroid/net/Uri;
    .local v27, "uri":Landroid/net/Uri;
    move-object v12, v5

    move-object v5, v13

    .end local v13    # "targetPkg":Ljava/lang/String;
    .local v5, "targetPkg":Ljava/lang/String;
    move v13, v15

    move/from16 v28, v4

    move-object v4, v14

    .end local v14    # "sourcePkg":Ljava/lang/String;
    .local v4, "sourcePkg":Ljava/lang/String;
    .local v28, "targetUid":I
    move-object/from16 v14, v16

    move/from16 v29, v15

    .end local v15    # "targetUserId":I
    .local v29, "targetUserId":I
    move/from16 v15, v17

    move/from16 v16, v1

    move/from16 v17, v26

    invoke-virtual/range {v12 .. v17}, Landroid/content/pm/PackageManagerInternal;->grantImplicitAccess(ILandroid/content/Intent;IIZ)V

    goto :goto_3

    .line 702
    .end local v5    # "targetPkg":Ljava/lang/String;
    .end local v24    # "prefix":Z
    .end local v25    # "grantUri":Lcom/android/server/uri/GrantUri;
    .end local v27    # "uri":Landroid/net/Uri;
    .end local v28    # "targetUid":I
    .end local v29    # "targetUserId":I
    .local v4, "targetUid":I
    .local v11, "prefix":Z
    .restart local v12    # "uri":Landroid/net/Uri;
    .restart local v13    # "targetPkg":Ljava/lang/String;
    .restart local v14    # "sourcePkg":Ljava/lang/String;
    .restart local v15    # "targetUserId":I
    :cond_2
    move/from16 v28, v4

    move/from16 v24, v11

    move-object/from16 v27, v12

    move-object v5, v13

    move-object v4, v14

    move/from16 v29, v15

    .line 714
    .end local v11    # "prefix":Z
    .end local v12    # "uri":Landroid/net/Uri;
    .end local v13    # "targetPkg":Ljava/lang/String;
    .end local v14    # "sourcePkg":Ljava/lang/String;
    .end local v15    # "targetUserId":I
    .local v4, "sourcePkg":Ljava/lang/String;
    .restart local v5    # "targetPkg":Ljava/lang/String;
    .restart local v24    # "prefix":Z
    .restart local v27    # "uri":Landroid/net/Uri;
    .restart local v29    # "targetUserId":I
    :goto_3
    goto :goto_4

    .line 699
    .end local v4    # "sourcePkg":Ljava/lang/String;
    .end local v5    # "targetPkg":Ljava/lang/String;
    .end local v24    # "prefix":Z
    .end local v27    # "uri":Landroid/net/Uri;
    .end local v29    # "targetUserId":I
    .restart local v11    # "prefix":Z
    .restart local v12    # "uri":Landroid/net/Uri;
    .restart local v13    # "targetPkg":Ljava/lang/String;
    .restart local v14    # "sourcePkg":Ljava/lang/String;
    .restart local v15    # "targetUserId":I
    :cond_3
    move/from16 v24, v11

    move-object/from16 v27, v12

    move-object v5, v13

    move-object v4, v14

    move/from16 v29, v15

    .line 715
    .end local v11    # "prefix":Z
    .end local v12    # "uri":Landroid/net/Uri;
    .end local v13    # "targetPkg":Ljava/lang/String;
    .end local v14    # "sourcePkg":Ljava/lang/String;
    .end local v15    # "targetUserId":I
    .restart local v4    # "sourcePkg":Ljava/lang/String;
    .restart local v5    # "targetPkg":Ljava/lang/String;
    .restart local v24    # "prefix":Z
    .restart local v27    # "uri":Landroid/net/Uri;
    .restart local v29    # "targetUserId":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Persisted grant for "

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v11, v27

    .end local v27    # "uri":Landroid/net/Uri;
    .local v11, "uri":Landroid/net/Uri;
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, " had source "

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " but instead found "

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_4

    .line 725
    .end local v0    # "pi":Landroid/content/pm/ProviderInfo;
    .end local v4    # "sourcePkg":Ljava/lang/String;
    .end local v5    # "targetPkg":Ljava/lang/String;
    .end local v7    # "modeFlags":I
    .end local v8    # "createdTime":J
    .end local v10    # "sourceUserId":I
    .end local v11    # "uri":Landroid/net/Uri;
    .end local v18    # "tag":Ljava/lang/String;
    .end local v19    # "type":I
    .end local v20    # "userHandle":I
    .end local v21    # "in":Landroid/util/TypedXmlPullParser;
    .end local v24    # "prefix":Z
    .end local v29    # "targetUserId":I
    :catch_0
    move-exception v0

    goto :goto_5

    .line 723
    :catch_1
    move-exception v0

    goto :goto_6

    .line 721
    :catch_2
    move-exception v0

    goto :goto_8

    .line 674
    .end local v22    # "now":J
    .local v0, "in":Landroid/util/TypedXmlPullParser;
    .local v4, "now":J
    .local v7, "tag":Ljava/lang/String;
    .local v8, "type":I
    :cond_4
    move-object/from16 v21, v0

    move-wide/from16 v22, v4

    move-object/from16 v18, v7

    move/from16 v19, v8

    .end local v0    # "in":Landroid/util/TypedXmlPullParser;
    .end local v4    # "now":J
    .end local v7    # "tag":Ljava/lang/String;
    .end local v8    # "type":I
    .restart local v18    # "tag":Ljava/lang/String;
    .restart local v19    # "type":I
    .restart local v21    # "in":Landroid/util/TypedXmlPullParser;
    .restart local v22    # "now":J
    goto :goto_4

    .line 673
    .end local v18    # "tag":Ljava/lang/String;
    .end local v19    # "type":I
    .end local v21    # "in":Landroid/util/TypedXmlPullParser;
    .end local v22    # "now":J
    .restart local v0    # "in":Landroid/util/TypedXmlPullParser;
    .restart local v4    # "now":J
    .restart local v7    # "tag":Ljava/lang/String;
    .restart local v8    # "type":I
    :cond_5
    move-object/from16 v21, v0

    move-wide/from16 v22, v4

    move-object/from16 v18, v7

    move/from16 v19, v8

    .line 720
    .end local v0    # "in":Landroid/util/TypedXmlPullParser;
    .end local v4    # "now":J
    .end local v7    # "tag":Ljava/lang/String;
    .end local v8    # "type":I
    .restart local v19    # "type":I
    .restart local v21    # "in":Landroid/util/TypedXmlPullParser;
    .restart local v22    # "now":J
    :goto_4
    move-object/from16 v1, p0

    move-object/from16 v0, v21

    move-wide/from16 v4, v22

    goto/16 :goto_0

    .line 671
    .end local v19    # "type":I
    .end local v21    # "in":Landroid/util/TypedXmlPullParser;
    .end local v22    # "now":J
    .restart local v0    # "in":Landroid/util/TypedXmlPullParser;
    .restart local v4    # "now":J
    .restart local v8    # "type":I
    :cond_6
    move-object/from16 v21, v0

    move-wide/from16 v22, v4

    move/from16 v19, v8

    .end local v0    # "in":Landroid/util/TypedXmlPullParser;
    .end local v4    # "now":J
    .end local v8    # "type":I
    .restart local v22    # "now":J
    goto :goto_8

    .line 728
    .end local v22    # "now":J
    .restart local v4    # "now":J
    :catchall_0
    move-exception v0

    move-wide/from16 v22, v4

    .end local v4    # "now":J
    .restart local v22    # "now":J
    goto :goto_7

    .line 725
    .end local v22    # "now":J
    .restart local v4    # "now":J
    :catch_3
    move-exception v0

    move-wide/from16 v22, v4

    .line 726
    .end local v4    # "now":J
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v22    # "now":J
    :goto_5
    :try_start_2
    invoke-static {v3, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 728
    nop

    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    goto :goto_9

    .line 723
    .end local v22    # "now":J
    .restart local v4    # "now":J
    :catch_4
    move-exception v0

    move-wide/from16 v22, v4

    .line 724
    .end local v4    # "now":J
    .local v0, "e":Ljava/io/IOException;
    .restart local v22    # "now":J
    :goto_6
    invoke-static {v3, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 728
    nop

    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_9

    :catchall_1
    move-exception v0

    :goto_7
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 729
    throw v0

    .line 721
    .end local v22    # "now":J
    .restart local v4    # "now":J
    :catch_5
    move-exception v0

    move-wide/from16 v22, v4

    .line 728
    .end local v4    # "now":J
    .restart local v22    # "now":J
    :goto_8
    nop

    :goto_9
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 729
    nop

    .line 730
    return-void
.end method

.method private removeUriPermissionIfNeededLocked(Lcom/android/server/uri/UriPermission;)V
    .locals 3
    .param p1, "perm"    # Lcom/android/server/uri/UriPermission;

    .line 1021
    iget v0, p1, Lcom/android/server/uri/UriPermission;->modeFlags:I

    if-eqz v0, :cond_0

    .line 1022
    return-void

    .line 1024
    :cond_0
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    iget v1, p1, Lcom/android/server/uri/UriPermission;->targetUid:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 1026
    .local v0, "perms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/uri/GrantUri;Lcom/android/server/uri/UriPermission;>;"
    if-nez v0, :cond_1

    .line 1027
    return-void

    .line 1031
    :cond_1
    iget-object v1, p1, Lcom/android/server/uri/UriPermission;->uri:Lcom/android/server/uri/GrantUri;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1032
    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1033
    iget-object v1, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    iget v2, p1, Lcom/android/server/uri/UriPermission;->targetUid:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 1035
    :cond_2
    return-void
.end method

.method private removeUriPermissionsForPackageLocked(Ljava/lang/String;IZZ)V
    .locals 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userHandle"    # I
    .param p3, "persistable"    # Z
    .param p4, "targetOnly"    # Z

    .line 463
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 464
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must narrow by either package or user"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 467
    :cond_1
    :goto_0
    const/4 v1, 0x0

    .line 469
    .local v1, "persistChanged":Z
    iget-object v2, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 470
    .local v2, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v2, :cond_a

    .line 471
    iget-object v4, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 472
    .local v4, "targetUid":I
    iget-object v5, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArrayMap;

    .line 475
    .local v5, "perms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/uri/GrantUri;Lcom/android/server/uri/UriPermission;>;"
    const/4 v6, 0x1

    if-eq p2, v0, :cond_2

    .line 476
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    if-ne p2, v7, :cond_9

    .line 477
    :cond_2
    invoke-virtual {v5}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/uri/UriPermission;>;"
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 478
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/uri/UriPermission;

    .line 481
    .local v8, "perm":Lcom/android/server/uri/UriPermission;
    if-eqz p1, :cond_4

    if-nez p4, :cond_3

    iget-object v9, v8, Lcom/android/server/uri/UriPermission;->sourcePkg:Ljava/lang/String;

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    :cond_3
    iget-object v9, v8, Lcom/android/server/uri/UriPermission;->targetPkg:Ljava/lang/String;

    .line 482
    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 486
    :cond_4
    iget-object v9, v8, Lcom/android/server/uri/UriPermission;->uri:Lcom/android/server/uri/GrantUri;

    iget-object v9, v9, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    invoke-virtual {v9}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v9

    const-string v10, "downloads"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    if-nez p3, :cond_5

    .line 487
    goto :goto_2

    .line 489
    :cond_5
    if-eqz p3, :cond_6

    .line 490
    move v9, v0

    goto :goto_3

    :cond_6
    const/16 v9, -0x41

    .line 489
    :goto_3
    invoke-virtual {v8, v9, v6}, Lcom/android/server/uri/UriPermission;->revokeModes(IZ)Z

    move-result v9

    or-int/2addr v1, v9

    .line 494
    iget v9, v8, Lcom/android/server/uri/UriPermission;->modeFlags:I

    if-nez v9, :cond_7

    .line 495
    invoke-interface {v7}, Ljava/util/Iterator;->remove()V

    .line 498
    .end local v8    # "perm":Lcom/android/server/uri/UriPermission;
    :cond_7
    goto :goto_2

    .line 500
    .end local v7    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/uri/UriPermission;>;"
    :cond_8
    invoke-virtual {v5}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 501
    iget-object v7, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v7, v4}, Landroid/util/SparseArray;->remove(I)V

    .line 502
    add-int/lit8 v2, v2, -0x1

    .line 503
    add-int/lit8 v3, v3, -0x1

    .line 470
    .end local v4    # "targetUid":I
    .end local v5    # "perms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/uri/GrantUri;Lcom/android/server/uri/UriPermission;>;"
    :cond_9
    add-int/2addr v3, v6

    goto :goto_1

    .line 508
    .end local v3    # "i":I
    :cond_a
    if-eqz v1, :cond_b

    .line 509
    invoke-direct {p0}, Lcom/android/server/uri/UriGrantsManagerService;->schedulePersistUriGrants()V

    .line 511
    :cond_b
    return-void
.end method

.method private revokeUriPermission(Ljava/lang/String;ILcom/android/server/uri/GrantUri;I)V
    .locals 10
    .param p1, "targetPackage"    # Ljava/lang/String;
    .param p2, "callingUid"    # I
    .param p3, "grantUri"    # Lcom/android/server/uri/GrantUri;
    .param p4, "modeFlags"    # I

    .line 813
    iget-object v0, p3, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 814
    .local v0, "authority":Ljava/lang/String;
    iget v1, p3, Lcom/android/server/uri/GrantUri;->sourceUserId:I

    const/high16 v2, 0xc0000

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/uri/UriGrantsManagerService;->getProviderInfo(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;

    move-result-object v1

    .line 816
    .local v1, "pi":Landroid/content/pm/ProviderInfo;
    if-nez v1, :cond_0

    .line 817
    const-string v2, "UriGrantsManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No content provider found for permission revoke: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 818
    invoke-virtual {p3}, Lcom/android/server/uri/GrantUri;->toSafeString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 817
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    return-void

    .line 822
    :cond_0
    invoke-direct {p0, v1, p3, p2, p4}, Lcom/android/server/uri/UriGrantsManagerService;->checkHoldingPermissionsUnlocked(Landroid/content/pm/ProviderInfo;Lcom/android/server/uri/GrantUri;II)Z

    move-result v2

    .line 824
    .local v2, "callerHoldsPermissions":Z
    iget-object v3, p0, Lcom/android/server/uri/UriGrantsManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 825
    move-object v4, p0

    move-object v5, p1

    move v6, p2

    move-object v7, p3

    move v8, p4

    move v9, v2

    :try_start_0
    invoke-direct/range {v4 .. v9}, Lcom/android/server/uri/UriGrantsManagerService;->revokeUriPermissionLocked(Ljava/lang/String;ILcom/android/server/uri/GrantUri;IZ)V

    .line 827
    monitor-exit v3

    .line 828
    return-void

    .line 827
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method private revokeUriPermissionLocked(Ljava/lang/String;ILcom/android/server/uri/GrantUri;IZ)V
    .locals 10
    .param p1, "targetPackage"    # Ljava/lang/String;
    .param p2, "callingUid"    # I
    .param p3, "grantUri"    # Lcom/android/server/uri/GrantUri;
    .param p4, "modeFlags"    # I
    .param p5, "callerHoldsPermissions"    # Z

    .line 834
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p5, :cond_5

    .line 837
    iget-object v2, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArrayMap;

    .line 838
    .local v2, "perms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/uri/GrantUri;Lcom/android/server/uri/UriPermission;>;"
    if-eqz v2, :cond_4

    .line 839
    const/4 v3, 0x0

    .line 840
    .local v3, "persistChanged":Z
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v4

    sub-int/2addr v4, v1

    .local v4, "i":I
    :goto_0
    if-ltz v4, :cond_2

    .line 841
    invoke-virtual {v2, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/uri/UriPermission;

    .line 842
    .local v1, "perm":Lcom/android/server/uri/UriPermission;
    if-eqz p1, :cond_0

    iget-object v5, v1, Lcom/android/server/uri/UriPermission;->targetPkg:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 843
    goto :goto_1

    .line 845
    :cond_0
    iget-object v5, v1, Lcom/android/server/uri/UriPermission;->uri:Lcom/android/server/uri/GrantUri;

    iget v5, v5, Lcom/android/server/uri/GrantUri;->sourceUserId:I

    iget v6, p3, Lcom/android/server/uri/GrantUri;->sourceUserId:I

    if-ne v5, v6, :cond_1

    iget-object v5, v1, Lcom/android/server/uri/UriPermission;->uri:Lcom/android/server/uri/GrantUri;

    iget-object v5, v5, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    iget-object v6, p3, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    .line 846
    invoke-virtual {v5, v6}, Landroid/net/Uri;->isPathPrefixMatch(Landroid/net/Uri;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 849
    or-int/lit8 v5, p4, 0x40

    invoke-virtual {v1, v5, v0}, Lcom/android/server/uri/UriPermission;->revokeModes(IZ)Z

    move-result v5

    or-int/2addr v3, v5

    .line 851
    iget v5, v1, Lcom/android/server/uri/UriPermission;->modeFlags:I

    if-nez v5, :cond_1

    .line 852
    invoke-virtual {v2, v4}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 840
    .end local v1    # "perm":Lcom/android/server/uri/UriPermission;
    :cond_1
    :goto_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 856
    .end local v4    # "i":I
    :cond_2
    invoke-virtual {v2}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 857
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 859
    :cond_3
    if-eqz v3, :cond_4

    .line 860
    invoke-direct {p0}, Lcom/android/server/uri/UriGrantsManagerService;->schedulePersistUriGrants()V

    .line 863
    .end local v3    # "persistChanged":Z
    :cond_4
    return-void

    .line 866
    .end local v2    # "perms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/uri/GrantUri;Lcom/android/server/uri/UriPermission;>;"
    :cond_5
    const/4 v2, 0x0

    .line 869
    .local v2, "persistChanged":Z
    iget-object v3, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    sub-int/2addr v3, v1

    .local v3, "i":I
    :goto_2
    if-ltz v3, :cond_b

    .line 870
    iget-object v4, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 871
    .local v4, "targetUid":I
    iget-object v5, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArrayMap;

    .line 873
    .local v5, "perms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/uri/GrantUri;Lcom/android/server/uri/UriPermission;>;"
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v6

    sub-int/2addr v6, v1

    .local v6, "j":I
    :goto_3
    if-ltz v6, :cond_9

    .line 874
    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/uri/UriPermission;

    .line 875
    .local v7, "perm":Lcom/android/server/uri/UriPermission;
    if-eqz p1, :cond_6

    iget-object v8, v7, Lcom/android/server/uri/UriPermission;->targetPkg:Ljava/lang/String;

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 876
    goto :goto_5

    .line 878
    :cond_6
    iget-object v8, v7, Lcom/android/server/uri/UriPermission;->uri:Lcom/android/server/uri/GrantUri;

    iget v8, v8, Lcom/android/server/uri/GrantUri;->sourceUserId:I

    iget v9, p3, Lcom/android/server/uri/GrantUri;->sourceUserId:I

    if-ne v8, v9, :cond_8

    iget-object v8, v7, Lcom/android/server/uri/UriPermission;->uri:Lcom/android/server/uri/GrantUri;

    iget-object v8, v8, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    iget-object v9, p3, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    .line 879
    invoke-virtual {v8, v9}, Landroid/net/Uri;->isPathPrefixMatch(Landroid/net/Uri;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 882
    or-int/lit8 v8, p4, 0x40

    if-nez p1, :cond_7

    move v9, v1

    goto :goto_4

    :cond_7
    move v9, v0

    :goto_4
    invoke-virtual {v7, v8, v9}, Lcom/android/server/uri/UriPermission;->revokeModes(IZ)Z

    move-result v8

    or-int/2addr v2, v8

    .line 885
    iget v8, v7, Lcom/android/server/uri/UriPermission;->modeFlags:I

    if-nez v8, :cond_8

    .line 886
    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 873
    .end local v7    # "perm":Lcom/android/server/uri/UriPermission;
    :cond_8
    :goto_5
    add-int/lit8 v6, v6, -0x1

    goto :goto_3

    .line 891
    .end local v6    # "j":I
    :cond_9
    invoke-virtual {v5}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 892
    iget-object v6, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->removeAt(I)V

    .line 869
    .end local v4    # "targetUid":I
    .end local v5    # "perms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/uri/GrantUri;Lcom/android/server/uri/UriPermission;>;"
    :cond_a
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 896
    .end local v3    # "i":I
    :cond_b
    if-eqz v2, :cond_c

    .line 897
    invoke-direct {p0}, Lcom/android/server/uri/UriGrantsManagerService;->schedulePersistUriGrants()V

    .line 899
    :cond_c
    return-void
.end method

.method private schedulePersistUriGrants()V
    .locals 4

    .line 1047
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mH:Lcom/android/server/uri/UriGrantsManagerService$H;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/uri/UriGrantsManagerService$H;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1048
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mH:Lcom/android/server/uri/UriGrantsManagerService$H;

    invoke-virtual {v0, v1}, Lcom/android/server/uri/UriGrantsManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/uri/UriGrantsManagerService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1051
    :cond_0
    return-void
.end method

.method private start()V
    .locals 3

    .line 168
    const-class v0, Lcom/android/server/uri/UriGrantsManagerInternal;

    new-instance v1, Lcom/android/server/uri/UriGrantsManagerService$LocalService;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/uri/UriGrantsManagerService$LocalService;-><init>(Lcom/android/server/uri/UriGrantsManagerService;Lcom/android/server/uri/UriGrantsManagerService$1;)V

    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 169
    return-void
.end method

.method private writeGrantedUriPermissionsLocked()V
    .locals 11

    .line 1309
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1312
    .local v0, "startTime":J
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 1313
    .local v2, "persist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/uri/UriPermission$Snapshot;>;"
    monitor-enter p0

    .line 1314
    :try_start_0
    iget-object v3, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 1315
    .local v3, "size":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_2

    .line 1316
    iget-object v5, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArrayMap;

    .line 1317
    .local v5, "perms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/uri/GrantUri;Lcom/android/server/uri/UriPermission;>;"
    invoke-virtual {v5}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/uri/UriPermission;

    .line 1318
    .local v7, "perm":Lcom/android/server/uri/UriPermission;
    iget v8, v7, Lcom/android/server/uri/UriPermission;->persistedModeFlags:I

    if-eqz v8, :cond_0

    .line 1319
    invoke-virtual {v7}, Lcom/android/server/uri/UriPermission;->snapshot()Lcom/android/server/uri/UriPermission$Snapshot;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1321
    .end local v7    # "perm":Lcom/android/server/uri/UriPermission;
    :cond_0
    goto :goto_1

    .line 1315
    .end local v5    # "perms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/uri/GrantUri;Lcom/android/server/uri/UriPermission;>;"
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1323
    .end local v3    # "size":I
    .end local v4    # "i":I
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1325
    const/4 v3, 0x0

    .line 1327
    .local v3, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    iget-object v4, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantFile:Landroid/util/AtomicFile;

    invoke-virtual {v4, v0, v1}, Landroid/util/AtomicFile;->startWrite(J)Ljava/io/FileOutputStream;

    move-result-object v4

    move-object v3, v4

    .line 1329
    invoke-static {v3}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Landroid/util/TypedXmlSerializer;

    move-result-object v4

    .line 1330
    .local v4, "out":Landroid/util/TypedXmlSerializer;
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v4, v6, v5}, Landroid/util/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1331
    const-string v5, "uri-grants"

    invoke-interface {v4, v6, v5}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1332
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/uri/UriPermission$Snapshot;

    .line 1333
    .local v7, "perm":Lcom/android/server/uri/UriPermission$Snapshot;
    const-string v8, "uri-grant"

    invoke-interface {v4, v6, v8}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1334
    const-string v8, "sourceUserId"

    iget-object v9, v7, Lcom/android/server/uri/UriPermission$Snapshot;->uri:Lcom/android/server/uri/GrantUri;

    iget v9, v9, Lcom/android/server/uri/GrantUri;->sourceUserId:I

    invoke-interface {v4, v6, v8, v9}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 1335
    const-string v8, "targetUserId"

    iget v9, v7, Lcom/android/server/uri/UriPermission$Snapshot;->targetUserId:I

    invoke-interface {v4, v6, v8, v9}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 1336
    const-string v8, "sourcePkg"

    iget-object v9, v7, Lcom/android/server/uri/UriPermission$Snapshot;->sourcePkg:Ljava/lang/String;

    invoke-interface {v4, v6, v8, v9}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1337
    const-string v8, "targetPkg"

    iget-object v9, v7, Lcom/android/server/uri/UriPermission$Snapshot;->targetPkg:Ljava/lang/String;

    invoke-interface {v4, v6, v8, v9}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1338
    const-string v8, "uri"

    iget-object v9, v7, Lcom/android/server/uri/UriPermission$Snapshot;->uri:Lcom/android/server/uri/GrantUri;

    iget-object v9, v9, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4, v6, v8, v9}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1339
    const-string v8, "prefix"

    iget-object v9, v7, Lcom/android/server/uri/UriPermission$Snapshot;->uri:Lcom/android/server/uri/GrantUri;

    iget-boolean v9, v9, Lcom/android/server/uri/GrantUri;->prefix:Z

    invoke-static {v4, v8, v9}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 1340
    const-string v8, "modeFlags"

    iget v9, v7, Lcom/android/server/uri/UriPermission$Snapshot;->persistedModeFlags:I

    invoke-interface {v4, v6, v8, v9}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 1341
    const-string v8, "createdTime"

    iget-wide v9, v7, Lcom/android/server/uri/UriPermission$Snapshot;->persistedCreateTime:J

    invoke-interface {v4, v6, v8, v9, v10}, Landroid/util/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 1342
    const-string v8, "uri-grant"

    invoke-interface {v4, v6, v8}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1343
    nop

    .end local v7    # "perm":Lcom/android/server/uri/UriPermission$Snapshot;
    goto :goto_2

    .line 1344
    :cond_3
    const-string v5, "uri-grants"

    invoke-interface {v4, v6, v5}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1345
    invoke-interface {v4}, Landroid/util/TypedXmlSerializer;->endDocument()V

    .line 1347
    iget-object v5, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantFile:Landroid/util/AtomicFile;

    invoke-virtual {v5, v3}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1352
    .end local v4    # "out":Landroid/util/TypedXmlSerializer;
    goto :goto_3

    .line 1348
    :catch_0
    move-exception v4

    .line 1349
    .local v4, "e":Ljava/io/IOException;
    if-eqz v3, :cond_4

    .line 1350
    iget-object v5, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantFile:Landroid/util/AtomicFile;

    invoke-virtual {v5, v3}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 1353
    .end local v4    # "e":Ljava/io/IOException;
    :cond_4
    :goto_3
    return-void

    .line 1323
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3
.end method


# virtual methods
.method public clearGrantedUriPermissions(Ljava/lang/String;I)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 391
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.CLEAR_APP_GRANTED_URI_PERMISSIONS"

    const-string v2, "clearGrantedUriPermissions"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 394
    const/4 v1, 0x1

    :try_start_0
    invoke-direct {p0, p1, p2, v1, v1}, Lcom/android/server/uri/UriGrantsManagerService;->removeUriPermissionsForPackageLocked(Ljava/lang/String;IZZ)V

    .line 395
    monitor-exit v0

    .line 396
    return-void

    .line 395
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getGrantedUriPermissions(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/app/GrantedUriPermission;",
            ">;"
        }
    .end annotation

    .line 313
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.GET_APP_GRANTED_URI_PERMISSIONS"

    const-string v2, "getGrantedUriPermissions"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 317
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Landroid/app/GrantedUriPermission;>;"
    iget-object v1, p0, Lcom/android/server/uri/UriGrantsManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 318
    :try_start_0
    iget-object v2, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 319
    .local v2, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_3

    .line 320
    iget-object v4, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArrayMap;

    .line 321
    .local v4, "perms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/uri/GrantUri;Lcom/android/server/uri/UriPermission;>;"
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 322
    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/uri/UriPermission;

    .line 323
    .local v6, "perm":Lcom/android/server/uri/UriPermission;
    if-eqz p1, :cond_0

    iget-object v7, v6, Lcom/android/server/uri/UriPermission;->targetPkg:Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    :cond_0
    iget v7, v6, Lcom/android/server/uri/UriPermission;->targetUserId:I

    if-ne v7, p2, :cond_1

    iget v7, v6, Lcom/android/server/uri/UriPermission;->persistedModeFlags:I

    if-eqz v7, :cond_1

    .line 326
    invoke-virtual {v6}, Lcom/android/server/uri/UriPermission;->buildGrantedUriPermission()Landroid/app/GrantedUriPermission;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 321
    .end local v6    # "perm":Lcom/android/server/uri/UriPermission;
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 319
    .end local v4    # "perms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/uri/GrantUri;Lcom/android/server/uri/UriPermission;>;"
    .end local v5    # "j":I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 330
    .end local v2    # "size":I
    .end local v3    # "i":I
    :cond_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 331
    new-instance v1, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v1, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v1

    .line 330
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method getLocalService()Lcom/android/server/uri/UriGrantsManagerInternal;
    .locals 2

    .line 164
    new-instance v0, Lcom/android/server/uri/UriGrantsManagerService$LocalService;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/uri/UriGrantsManagerService$LocalService;-><init>(Lcom/android/server/uri/UriGrantsManagerService;Lcom/android/server/uri/UriGrantsManagerService$1;)V

    return-object v0
.end method

.method public getUriPermissions(Ljava/lang/String;ZZ)Landroid/content/pm/ParceledListSlice;
    .locals 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "incoming"    # Z
    .param p3, "persistedOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZ)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/content/UriPermission;",
            ">;"
        }
    .end annotation

    .line 263
    const-string v0, "getUriPermissions"

    invoke-direct {p0, v0}, Lcom/android/server/uri/UriGrantsManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    .line 264
    const-string v0, "packageName"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 266
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 267
    .local v0, "callingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 268
    .local v1, "callingUserId":I
    const-class v2, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageManagerInternal;

    .line 269
    .local v2, "pm":Landroid/content/pm/PackageManagerInternal;
    const/high16 v3, 0xc0000

    invoke-virtual {v2, p1, v3, v1}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;II)I

    move-result v3

    .line 271
    .local v3, "packageUid":I
    if-ne v3, v0, :cond_9

    .line 276
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v4

    .line 277
    .local v4, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/UriPermission;>;"
    iget-object v5, p0, Lcom/android/server/uri/UriGrantsManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 278
    if-eqz p2, :cond_4

    .line 279
    :try_start_0
    iget-object v6, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/ArrayMap;

    .line 281
    .local v6, "perms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/uri/GrantUri;Lcom/android/server/uri/UriPermission;>;"
    if-nez v6, :cond_0

    .line 282
    const-string v7, "UriGrantsManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "No permission grants found for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 284
    :cond_0
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_0
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v8

    if-ge v7, v8, :cond_3

    .line 285
    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/uri/UriPermission;

    .line 286
    .local v8, "perm":Lcom/android/server/uri/UriPermission;
    iget-object v9, v8, Lcom/android/server/uri/UriPermission;->targetPkg:Ljava/lang/String;

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    if-eqz p3, :cond_1

    iget v9, v8, Lcom/android/server/uri/UriPermission;->persistedModeFlags:I

    if-eqz v9, :cond_2

    .line 288
    :cond_1
    invoke-virtual {v8}, Lcom/android/server/uri/UriPermission;->buildPersistedPublicApiObject()Landroid/content/UriPermission;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 284
    .end local v8    # "perm":Lcom/android/server/uri/UriPermission;
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 292
    .end local v6    # "perms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/uri/GrantUri;Lcom/android/server/uri/UriPermission;>;"
    .end local v7    # "j":I
    :cond_3
    :goto_1
    goto :goto_4

    .line 293
    :cond_4
    iget-object v6, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    .line 294
    .local v6, "size":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2
    if-ge v7, v6, :cond_8

    .line 295
    iget-object v8, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    .line 296
    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/ArrayMap;

    .line 297
    .local v8, "perms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/uri/GrantUri;Lcom/android/server/uri/UriPermission;>;"
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_3
    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v10

    if-ge v9, v10, :cond_7

    .line 298
    invoke-virtual {v8, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/uri/UriPermission;

    .line 299
    .local v10, "perm":Lcom/android/server/uri/UriPermission;
    iget-object v11, v10, Lcom/android/server/uri/UriPermission;->sourcePkg:Ljava/lang/String;

    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    if-eqz p3, :cond_5

    iget v11, v10, Lcom/android/server/uri/UriPermission;->persistedModeFlags:I

    if-eqz v11, :cond_6

    .line 301
    :cond_5
    invoke-virtual {v10}, Lcom/android/server/uri/UriPermission;->buildPersistedPublicApiObject()Landroid/content/UriPermission;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 297
    .end local v10    # "perm":Lcom/android/server/uri/UriPermission;
    :cond_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 294
    .end local v8    # "perms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/uri/GrantUri;Lcom/android/server/uri/UriPermission;>;"
    .end local v9    # "j":I
    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 306
    .end local v6    # "size":I
    .end local v7    # "i":I
    :cond_8
    :goto_4
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 307
    new-instance v5, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v5, v4}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v5

    .line 306
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    .line 272
    .end local v4    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/UriPermission;>;"
    :cond_9
    new-instance v4, Ljava/lang/SecurityException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " does not belong to calling UID "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public grantUriPermissionFromOwner(Landroid/os/IBinder;ILjava/lang/String;Landroid/net/Uri;III)V
    .locals 0
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "fromUid"    # I
    .param p3, "targetPkg"    # Ljava/lang/String;
    .param p4, "uri"    # Landroid/net/Uri;
    .param p5, "modeFlags"    # I
    .param p6, "sourceUserId"    # I
    .param p7, "targetUserId"    # I

    .line 224
    invoke-direct/range {p0 .. p7}, Lcom/android/server/uri/UriGrantsManagerService;->grantUriPermissionFromOwnerUnlocked(Landroid/os/IBinder;ILjava/lang/String;Landroid/net/Uri;III)V

    .line 226
    return-void
.end method

.method public releasePersistableUriPermission(Landroid/net/Uri;ILjava/lang/String;I)V
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "modeFlags"    # I
    .param p3, "toPackage"    # Ljava/lang/String;
    .param p4, "userId"    # I

    .line 409
    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 410
    iget-object v1, p0, Lcom/android/server/uri/UriGrantsManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v2, "android.permission.FORCE_PERSISTABLE_URI_PERMISSIONS"

    const-string v3, "releasePersistableUriPermission"

    invoke-virtual {v1, v2, v3}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    iget-object v1, p0, Lcom/android/server/uri/UriGrantsManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v1, p3, v0, p4}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;II)I

    move-result v1

    .local v1, "uid":I
    goto :goto_0

    .line 414
    .end local v1    # "uid":I
    :cond_0
    const-string v1, "releasePersistableUriPermission"

    invoke-direct {p0, v1}, Lcom/android/server/uri/UriGrantsManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    .line 415
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 418
    .restart local v1    # "uid":I
    :goto_0
    const/4 v2, 0x3

    invoke-static {p2, v2}, Lcom/android/internal/util/Preconditions;->checkFlagsArgument(II)I

    .line 421
    iget-object v2, p0, Lcom/android/server/uri/UriGrantsManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 422
    const/4 v3, 0x0

    .line 424
    .local v3, "persistChanged":Z
    :try_start_0
    new-instance v4, Lcom/android/server/uri/GrantUri;

    invoke-direct {v4, p4, p1, v0}, Lcom/android/server/uri/GrantUri;-><init>(ILandroid/net/Uri;I)V

    invoke-direct {p0, v1, v4}, Lcom/android/server/uri/UriGrantsManagerService;->findUriPermissionLocked(ILcom/android/server/uri/GrantUri;)Lcom/android/server/uri/UriPermission;

    move-result-object v0

    .line 426
    .local v0, "exactPerm":Lcom/android/server/uri/UriPermission;
    new-instance v4, Lcom/android/server/uri/GrantUri;

    const/16 v5, 0x80

    invoke-direct {v4, p4, p1, v5}, Lcom/android/server/uri/GrantUri;-><init>(ILandroid/net/Uri;I)V

    invoke-direct {p0, v1, v4}, Lcom/android/server/uri/UriGrantsManagerService;->findUriPermissionLocked(ILcom/android/server/uri/GrantUri;)Lcom/android/server/uri/UriPermission;

    move-result-object v4

    .line 428
    .local v4, "prefixPerm":Lcom/android/server/uri/UriPermission;
    if-nez v0, :cond_2

    if-nez v4, :cond_2

    if-eqz p3, :cond_1

    goto :goto_1

    .line 429
    :cond_1
    new-instance v5, Ljava/lang/SecurityException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No permission grants found for UID "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " and Uri "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    invoke-virtual {p1}, Landroid/net/Uri;->toSafeString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v1    # "uid":I
    .end local p0    # "this":Lcom/android/server/uri/UriGrantsManagerService;
    .end local p1    # "uri":Landroid/net/Uri;
    .end local p2    # "modeFlags":I
    .end local p3    # "toPackage":Ljava/lang/String;
    .end local p4    # "userId":I
    throw v5

    .line 433
    .restart local v1    # "uid":I
    .restart local p0    # "this":Lcom/android/server/uri/UriGrantsManagerService;
    .restart local p1    # "uri":Landroid/net/Uri;
    .restart local p2    # "modeFlags":I
    .restart local p3    # "toPackage":Ljava/lang/String;
    .restart local p4    # "userId":I
    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    .line 434
    invoke-virtual {v0, p2}, Lcom/android/server/uri/UriPermission;->releasePersistableModes(I)Z

    move-result v5

    or-int/2addr v3, v5

    .line 435
    invoke-direct {p0, v0}, Lcom/android/server/uri/UriGrantsManagerService;->removeUriPermissionIfNeededLocked(Lcom/android/server/uri/UriPermission;)V

    .line 437
    :cond_3
    if-eqz v4, :cond_4

    .line 438
    invoke-virtual {v4, p2}, Lcom/android/server/uri/UriPermission;->releasePersistableModes(I)Z

    move-result v5

    or-int/2addr v3, v5

    .line 439
    invoke-direct {p0, v4}, Lcom/android/server/uri/UriGrantsManagerService;->removeUriPermissionIfNeededLocked(Lcom/android/server/uri/UriPermission;)V

    .line 442
    :cond_4
    if-eqz v3, :cond_5

    .line 443
    invoke-direct {p0}, Lcom/android/server/uri/UriGrantsManagerService;->schedulePersistUriGrants()V

    .line 445
    .end local v0    # "exactPerm":Lcom/android/server/uri/UriPermission;
    .end local v3    # "persistChanged":Z
    .end local v4    # "prefixPerm":Lcom/android/server/uri/UriPermission;
    :cond_5
    monitor-exit v2

    .line 446
    return-void

    .line 445
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public takePersistableUriPermission(Landroid/net/Uri;ILjava/lang/String;I)V
    .locals 10
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "modeFlags"    # I
    .param p3, "toPackage"    # Ljava/lang/String;
    .param p4, "userId"    # I

    .line 344
    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 345
    iget-object v1, p0, Lcom/android/server/uri/UriGrantsManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v2, "android.permission.FORCE_PERSISTABLE_URI_PERMISSIONS"

    const-string v3, "takePersistableUriPermission"

    invoke-virtual {v1, v2, v3}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    iget-object v1, p0, Lcom/android/server/uri/UriGrantsManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v1, p3, v0, p4}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;II)I

    move-result v1

    .local v1, "uid":I
    goto :goto_0

    .line 349
    .end local v1    # "uid":I
    :cond_0
    const-string v1, "takePersistableUriPermission"

    invoke-direct {p0, v1}, Lcom/android/server/uri/UriGrantsManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    .line 350
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 353
    .restart local v1    # "uid":I
    :goto_0
    const/4 v2, 0x3

    invoke-static {p2, v2}, Lcom/android/internal/util/Preconditions;->checkFlagsArgument(II)I

    .line 356
    iget-object v2, p0, Lcom/android/server/uri/UriGrantsManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 357
    const/4 v3, 0x0

    .line 359
    .local v3, "persistChanged":Z
    :try_start_0
    new-instance v4, Lcom/android/server/uri/GrantUri;

    invoke-direct {v4, p4, p1, v0}, Lcom/android/server/uri/GrantUri;-><init>(ILandroid/net/Uri;I)V

    invoke-direct {p0, v1, v4}, Lcom/android/server/uri/UriGrantsManagerService;->findUriPermissionLocked(ILcom/android/server/uri/GrantUri;)Lcom/android/server/uri/UriPermission;

    move-result-object v4

    .line 361
    .local v4, "exactPerm":Lcom/android/server/uri/UriPermission;
    new-instance v5, Lcom/android/server/uri/GrantUri;

    const/16 v6, 0x80

    invoke-direct {v5, p4, p1, v6}, Lcom/android/server/uri/GrantUri;-><init>(ILandroid/net/Uri;I)V

    invoke-direct {p0, v1, v5}, Lcom/android/server/uri/UriGrantsManagerService;->findUriPermissionLocked(ILcom/android/server/uri/GrantUri;)Lcom/android/server/uri/UriPermission;

    move-result-object v5

    .line 364
    .local v5, "prefixPerm":Lcom/android/server/uri/UriPermission;
    const/4 v6, 0x1

    if-eqz v4, :cond_1

    iget v7, v4, Lcom/android/server/uri/UriPermission;->persistableModeFlags:I

    and-int/2addr v7, p2

    if-ne v7, p2, :cond_1

    move v7, v6

    goto :goto_1

    :cond_1
    move v7, v0

    .line 366
    .local v7, "exactValid":Z
    :goto_1
    if-eqz v5, :cond_2

    iget v8, v5, Lcom/android/server/uri/UriPermission;->persistableModeFlags:I

    and-int/2addr v8, p2

    if-ne v8, p2, :cond_2

    move v0, v6

    .line 369
    .local v0, "prefixValid":Z
    :cond_2
    if-nez v7, :cond_4

    if-eqz v0, :cond_3

    goto :goto_2

    .line 370
    :cond_3
    new-instance v6, Ljava/lang/SecurityException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "No persistable permission grants found for UID "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " and Uri "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    invoke-virtual {p1}, Landroid/net/Uri;->toSafeString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v1    # "uid":I
    .end local p0    # "this":Lcom/android/server/uri/UriGrantsManagerService;
    .end local p1    # "uri":Landroid/net/Uri;
    .end local p2    # "modeFlags":I
    .end local p3    # "toPackage":Ljava/lang/String;
    .end local p4    # "userId":I
    throw v6

    .line 374
    .restart local v1    # "uid":I
    .restart local p0    # "this":Lcom/android/server/uri/UriGrantsManagerService;
    .restart local p1    # "uri":Landroid/net/Uri;
    .restart local p2    # "modeFlags":I
    .restart local p3    # "toPackage":Ljava/lang/String;
    .restart local p4    # "userId":I
    :cond_4
    :goto_2
    if-eqz v7, :cond_5

    .line 375
    invoke-virtual {v4, p2}, Lcom/android/server/uri/UriPermission;->takePersistableModes(I)Z

    move-result v6

    or-int/2addr v3, v6

    .line 377
    :cond_5
    if-eqz v0, :cond_6

    .line 378
    invoke-virtual {v5, p2}, Lcom/android/server/uri/UriPermission;->takePersistableModes(I)Z

    move-result v6

    or-int/2addr v3, v6

    .line 381
    :cond_6
    invoke-direct {p0, v1}, Lcom/android/server/uri/UriGrantsManagerService;->maybePrunePersistedUriGrantsLocked(I)Z

    move-result v6

    or-int/2addr v3, v6

    .line 383
    if-eqz v3, :cond_7

    .line 384
    invoke-direct {p0}, Lcom/android/server/uri/UriGrantsManagerService;->schedulePersistUriGrants()V

    .line 386
    .end local v0    # "prefixValid":Z
    .end local v3    # "persistChanged":Z
    .end local v4    # "exactPerm":Lcom/android/server/uri/UriPermission;
    .end local v5    # "prefixPerm":Lcom/android/server/uri/UriPermission;
    .end local v7    # "exactValid":Z
    :cond_7
    monitor-exit v2

    .line 387
    return-void

    .line 386
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
