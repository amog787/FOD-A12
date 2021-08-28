.class public Lcom/android/server/pm/verify/domain/DomainVerificationService;
.super Lcom/android/server/SystemService;
.source "DomainVerificationService.java"

# interfaces
.implements Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;
.implements Lcom/android/server/pm/verify/domain/DomainVerificationShell$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/verify/domain/DomainVerificationService$LockSafeConnection;,
        Lcom/android/server/pm/verify/domain/DomainVerificationService$GetAttachedResult;
    }
.end annotation


# static fields
.field public static final DEBUG_APPROVAL:Z = false

.field private static final SETTINGS_API_V2:J = 0xa9dc3bdL

.field private static final TAG:Ljava/lang/String; = "DomainVerificationService"


# instance fields
.field private final mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap<",
            "Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;",
            ">;"
        }
    .end annotation
.end field

.field private mCanSendBroadcasts:Z

.field private final mCollector:Lcom/android/server/pm/verify/domain/DomainVerificationCollector;

.field private mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

.field private final mDebug:Lcom/android/server/pm/verify/domain/DomainVerificationDebug;

.field private final mEnforcer:Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;

.field private final mLegacySettings:Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings;

.field private final mLock:Ljava/lang/Object;

.field private final mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

.field private mProxy:Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;

.field private final mSettings:Lcom/android/server/pm/verify/domain/DomainVerificationSettings;

.field private final mShell:Lcom/android/server/pm/verify/domain/DomainVerificationShell;

.field private final mStub:Landroid/content/pm/verify/domain/IDomainVerificationManager$Stub;

.field private final mSystemConfig:Lcom/android/server/SystemConfig;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/SystemConfig;Lcom/android/server/compat/PlatformCompat;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "systemConfig"    # Lcom/android/server/SystemConfig;
    .param p3, "platformCompat"    # Lcom/android/server/compat/PlatformCompat;

    .line 159
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 112
    new-instance v0, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    invoke-direct {v0}, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    .line 120
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLock:Ljava/lang/Object;

    .line 149
    new-instance v0, Lcom/android/server/pm/verify/domain/DomainVerificationManagerStub;

    invoke-direct {v0, p0}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerStub;-><init>(Lcom/android/server/pm/verify/domain/DomainVerificationService;)V

    iput-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mStub:Landroid/content/pm/verify/domain/IDomainVerificationManager$Stub;

    .line 152
    new-instance v0, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyUnavailable;

    invoke-direct {v0}, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyUnavailable;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mProxy:Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;

    .line 160
    iput-object p2, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mSystemConfig:Lcom/android/server/SystemConfig;

    .line 161
    iput-object p3, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    .line 162
    new-instance v0, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;

    invoke-direct {v0, p3, p2}, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;-><init>(Lcom/android/server/compat/PlatformCompat;Lcom/android/server/SystemConfig;)V

    iput-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mCollector:Lcom/android/server/pm/verify/domain/DomainVerificationCollector;

    .line 163
    new-instance v1, Lcom/android/server/pm/verify/domain/DomainVerificationSettings;

    invoke-direct {v1, v0}, Lcom/android/server/pm/verify/domain/DomainVerificationSettings;-><init>(Lcom/android/server/pm/verify/domain/DomainVerificationCollector;)V

    iput-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mSettings:Lcom/android/server/pm/verify/domain/DomainVerificationSettings;

    .line 164
    new-instance v1, Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;

    invoke-direct {v1, p1}, Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mEnforcer:Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;

    .line 165
    new-instance v1, Lcom/android/server/pm/verify/domain/DomainVerificationDebug;

    invoke-direct {v1, v0}, Lcom/android/server/pm/verify/domain/DomainVerificationDebug;-><init>(Lcom/android/server/pm/verify/domain/DomainVerificationCollector;)V

    iput-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mDebug:Lcom/android/server/pm/verify/domain/DomainVerificationDebug;

    .line 166
    new-instance v0, Lcom/android/server/pm/verify/domain/DomainVerificationShell;

    invoke-direct {v0, p0}, Lcom/android/server/pm/verify/domain/DomainVerificationShell;-><init>(Lcom/android/server/pm/verify/domain/DomainVerificationShell$Callback;)V

    iput-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mShell:Lcom/android/server/pm/verify/domain/DomainVerificationShell;

    .line 167
    new-instance v0, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings;

    invoke-direct {v0}, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLegacySettings:Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings;

    .line 168
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/pm/verify/domain/DomainVerificationService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/verify/domain/DomainVerificationService;

    .line 83
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method private addIfShouldBroadcastLocked(Ljava/util/Collection;Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;Z)V
    .locals 1
    .param p2, "pkgState"    # Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;
    .param p3, "reVerify"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;",
            "Z)V"
        }
    .end annotation

    .line 1400
    .local p1, "packageNames":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-eqz p3, :cond_0

    invoke-virtual {p2}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->isHasAutoVerifyDomains()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->shouldReBroadcastPackage(Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1401
    :cond_1
    invoke-virtual {p2}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1403
    :cond_2
    return-void
.end method

.method private applyImmutableState(Lcom/android/server/pm/PackageSetting;Landroid/util/ArrayMap;Landroid/util/ArraySet;)Z
    .locals 5
    .param p1, "pkgSetting"    # Lcom/android/server/pm/PackageSetting;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageSetting;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 1034
    .local p2, "stateMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .local p3, "autoVerifyDomains":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v0

    const/4 v1, 0x7

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mSystemConfig:Lcom/android/server/SystemConfig;

    .line 1035
    invoke-virtual {v0}, Lcom/android/server/SystemConfig;->getLinkedApps()Landroid/util/ArraySet;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1036
    invoke-virtual {p3}, Landroid/util/ArraySet;->size()I

    move-result v0

    .line 1037
    .local v0, "domainsSize":I
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 1038
    invoke-virtual {p3, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1039
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1038
    invoke-virtual {p2, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1037
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1041
    .end local v2    # "index":I
    :cond_0
    const/4 v1, 0x0

    return v1

    .line 1043
    .end local v0    # "domainsSize":I
    :cond_1
    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 1044
    .local v0, "size":I
    add-int/lit8 v2, v0, -0x1

    .restart local v2    # "index":I
    :goto_1
    if-ltz v2, :cond_3

    .line 1045
    invoke-virtual {p2, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 1047
    .local v3, "state":Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v1, :cond_2

    .line 1048
    invoke-virtual {p2, v2}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 1044
    .end local v3    # "state":Ljava/lang/Integer;
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 1052
    .end local v2    # "index":I
    :cond_3
    const/4 v1, 0x1

    return v1
.end method

.method private approvalLevelForDomain(Lcom/android/server/pm/PackageSetting;Ljava/lang/String;ZILjava/lang/Object;)I
    .locals 5
    .param p1, "pkgSetting"    # Lcom/android/server/pm/PackageSetting;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "includeNegative"    # Z
    .param p4, "userId"    # I
    .param p5, "debugObject"    # Ljava/lang/Object;

    .line 1741
    invoke-direct/range {p0 .. p5}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->approvalLevelForDomainInternal(Lcom/android/server/pm/PackageSetting;Ljava/lang/String;ZILjava/lang/Object;)I

    move-result v0

    .line 1743
    .local v0, "approvalLevel":I
    if-eqz p3, :cond_2

    if-nez v0, :cond_2

    .line 1744
    invoke-virtual {p1, p4}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v1

    .line 1745
    .local v1, "pkgUserState":Landroid/content/pm/PackageUserState;
    iget-boolean v2, v1, Landroid/content/pm/PackageUserState;->installed:Z

    if-nez v2, :cond_0

    .line 1746
    const/4 v2, -0x4

    return v2

    .line 1749
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v2

    .line 1750
    .local v2, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-eqz v2, :cond_2

    .line 1751
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageUserState;->isPackageEnabled(Landroid/content/pm/parsing/ParsingPackageRead;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1752
    const/4 v3, -0x3

    return v3

    .line 1753
    :cond_1
    iget-object v3, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mCollector:Lcom/android/server/pm/verify/domain/DomainVerificationCollector;

    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v4

    invoke-virtual {v3, v4, p2}, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->containsAutoVerifyDomain(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1754
    const/4 v3, -0x1

    return v3

    .line 1759
    .end local v1    # "pkgUserState":Landroid/content/pm/PackageUserState;
    .end local v2    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :cond_2
    return v0
.end method

.method private approvalLevelForDomainInternal(Lcom/android/server/pm/PackageSetting;Ljava/lang/String;ZILjava/lang/Object;)I
    .locals 19
    .param p1, "pkgSetting"    # Lcom/android/server/pm/PackageSetting;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "includeNegative"    # Z
    .param p4, "userId"    # I
    .param p5, "debugObject"    # Ljava/lang/Object;

    .line 1765
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p4

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/PackageSetting;->getName()Ljava/lang/String;

    move-result-object v5

    .line 1766
    .local v5, "packageName":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v6

    .line 1768
    .local v6, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-eqz v6, :cond_0

    if-eqz p3, :cond_0

    iget-object v0, v1, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mCollector:Lcom/android/server/pm/verify/domain/DomainVerificationCollector;

    invoke-virtual {v0, v6, v3}, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->containsWebDomain(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1773
    const/4 v0, -0x2

    return v0

    .line 1776
    :cond_0
    invoke-virtual {v2, v4}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v7

    .line 1777
    .local v7, "pkgUserState":Landroid/content/pm/PackageUserState;
    const/4 v0, 0x0

    if-nez v7, :cond_1

    .line 1782
    return v0

    .line 1785
    :cond_1
    iget-boolean v8, v7, Landroid/content/pm/PackageUserState;->installed:Z

    if-nez v8, :cond_2

    .line 1790
    return v0

    .line 1793
    :cond_2
    invoke-virtual {v7, v6}, Landroid/content/pm/PackageUserState;->isPackageEnabled(Landroid/content/pm/parsing/ParsingPackageRead;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 1798
    return v0

    .line 1801
    :cond_3
    iget-boolean v8, v7, Landroid/content/pm/PackageUserState;->suspended:Z

    if-eqz v8, :cond_4

    .line 1806
    return v0

    .line 1810
    :cond_4
    const/4 v8, 0x2

    if-eqz v6, :cond_5

    iget-object v9, v1, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    const-wide/32 v10, 0xa9dc3bd

    invoke-static {v9, v6, v10, v11}, Lcom/android/server/pm/verify/domain/DomainVerificationUtils;->isChangeEnabled(Lcom/android/server/compat/PlatformCompat;Lcom/android/server/pm/parsing/pkg/AndroidPackage;J)Z

    move-result v9

    if-nez v9, :cond_5

    .line 1812
    iget-object v9, v1, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLegacySettings:Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings;

    invoke-virtual {v9, v5, v4}, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings;->getUserState(Ljava/lang/String;I)I

    move-result v9

    packed-switch v9, :pswitch_data_0

    goto :goto_0

    .line 1817
    :pswitch_0
    return v0

    .line 1822
    :pswitch_1
    return v8

    .line 1820
    :pswitch_2
    const/4 v0, 0x1

    return v0

    .line 1826
    :cond_5
    :goto_0
    :pswitch_3
    iget-object v9, v1, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 1827
    :try_start_0
    iget-object v10, v1, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    invoke-virtual {v10, v5}, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    .line 1828
    .local v10, "pkgState":Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;
    if-nez v10, :cond_6

    .line 1832
    monitor-exit v9

    return v0

    .line 1835
    :cond_6
    invoke-virtual {v10, v4}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getUserState(I)Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;

    move-result-object v11

    .line 1837
    .local v11, "userState":Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;
    if-eqz v11, :cond_7

    invoke-virtual {v11}, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;->isLinkHandlingAllowed()Z

    move-result v12

    if-nez v12, :cond_7

    .line 1842
    monitor-exit v9

    return v0

    .line 1847
    :cond_7
    if-eqz v6, :cond_8

    .line 1850
    invoke-virtual {v2, v4}, Lcom/android/server/pm/PackageSetting;->getInstantApp(I)Z

    move-result v12

    if-eqz v12, :cond_8

    iget-object v12, v1, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mCollector:Lcom/android/server/pm/verify/domain/DomainVerificationCollector;

    .line 1851
    invoke-virtual {v12, v6}, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->collectValidAutoVerifyDomains(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Landroid/util/ArraySet;

    move-result-object v12

    invoke-virtual {v12, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 1852
    const/4 v0, 0x5

    monitor-exit v9

    return v0

    .line 1856
    :cond_8
    invoke-virtual {v10}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getStateMap()Landroid/util/ArrayMap;

    move-result-object v12

    .line 1858
    .local v12, "stateMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-virtual {v12, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    .line 1859
    .local v13, "state":Ljava/lang/Integer;
    const/4 v14, 0x4

    if-eqz v13, :cond_9

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-static {v15}, Landroid/content/pm/verify/domain/DomainVerificationState;->isVerified(I)Z

    move-result v15

    if-eqz v15, :cond_9

    .line 1864
    monitor-exit v9

    return v14

    .line 1868
    :cond_9
    invoke-virtual {v12}, Landroid/util/ArrayMap;->size()I

    move-result v15

    .line 1869
    .local v15, "stateMapSize":I
    const/16 v16, 0x0

    move/from16 v0, v16

    .local v0, "index":I
    :goto_1
    if-ge v0, v15, :cond_c

    .line 1870
    invoke-virtual {v12, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v16

    invoke-static/range {v16 .. v16}, Landroid/content/pm/verify/domain/DomainVerificationState;->isVerified(I)Z

    move-result v16

    if-nez v16, :cond_a

    .line 1871
    move v1, v14

    goto :goto_2

    .line 1874
    :cond_a
    invoke-virtual {v12, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    move-object/from16 v17, v16

    .line 1875
    .local v17, "domain":Ljava/lang/String;
    const-string v14, "*."

    move-object/from16 v8, v17

    .end local v17    # "domain":Ljava/lang/String;
    .local v8, "domain":Ljava/lang/String;
    invoke-virtual {v8, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_b

    const/4 v14, 0x2

    invoke-virtual {v8, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1880
    monitor-exit v9

    const/4 v1, 0x4

    return v1

    .line 1875
    :cond_b
    const/4 v1, 0x4

    .line 1869
    .end local v8    # "domain":Ljava/lang/String;
    :goto_2
    add-int/lit8 v0, v0, 0x1

    const/4 v8, 0x2

    move v14, v1

    move-object/from16 v1, p0

    goto :goto_1

    .line 1885
    .end local v0    # "index":I
    :cond_c
    if-nez v11, :cond_d

    .line 1889
    monitor-exit v9

    const/4 v0, 0x0

    return v0

    .line 1893
    :cond_d
    invoke-virtual {v11}, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;->getEnabledHosts()Landroid/util/ArraySet;

    move-result-object v0

    .line 1894
    .local v0, "enabledHosts":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v8, 0x3

    if-eqz v1, :cond_e

    .line 1899
    monitor-exit v9

    return v8

    .line 1903
    :cond_e
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v1

    .line 1904
    .local v1, "enabledHostsSize":I
    const/4 v14, 0x0

    .local v14, "index":I
    :goto_3
    if-ge v14, v1, :cond_11

    .line 1905
    invoke-virtual {v0, v14}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    move-object/from16 v17, v16

    .line 1906
    .restart local v17    # "domain":Ljava/lang/String;
    const-string v8, "*."

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    .end local v17    # "domain":Ljava/lang/String;
    .local v0, "domain":Ljava/lang/String;
    .local v18, "enabledHosts":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_10

    move/from16 v17, v1

    const/4 v8, 0x2

    .end local v1    # "enabledHostsSize":I
    .local v17, "enabledHostsSize":I
    invoke-virtual {v0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1911
    monitor-exit v9

    const/4 v1, 0x3

    return v1

    .line 1906
    :cond_f
    const/4 v1, 0x3

    goto :goto_4

    .end local v17    # "enabledHostsSize":I
    .restart local v1    # "enabledHostsSize":I
    :cond_10
    move/from16 v17, v1

    const/4 v1, 0x3

    const/4 v8, 0x2

    .line 1904
    .end local v0    # "domain":Ljava/lang/String;
    .end local v1    # "enabledHostsSize":I
    .restart local v17    # "enabledHostsSize":I
    :goto_4
    add-int/lit8 v14, v14, 0x1

    move v8, v1

    move/from16 v1, v17

    move-object/from16 v0, v18

    goto :goto_3

    .end local v17    # "enabledHostsSize":I
    .end local v18    # "enabledHosts":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v0, "enabledHosts":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v1    # "enabledHostsSize":I
    :cond_11
    move-object/from16 v18, v0

    move/from16 v17, v1

    .line 1918
    .end local v0    # "enabledHosts":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v1    # "enabledHostsSize":I
    .end local v14    # "index":I
    .restart local v17    # "enabledHostsSize":I
    .restart local v18    # "enabledHosts":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    monitor-exit v9

    const/4 v0, 0x0

    return v0

    .line 1919
    .end local v10    # "pkgState":Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;
    .end local v11    # "userState":Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;
    .end local v12    # "stateMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v13    # "state":Ljava/lang/Integer;
    .end local v15    # "stateMapSize":I
    .end local v17    # "enabledHostsSize":I
    .end local v18    # "enabledHosts":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private debugApproval(Ljava/lang/String;Ljava/lang/Object;IZLjava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "debugObject"    # Ljava/lang/Object;
    .param p3, "userId"    # I
    .param p4, "approved"    # Z
    .param p5, "reason"    # Ljava/lang/String;

    .line 1988
    if-eqz p4, :cond_0

    const-string v0, "approved"

    goto :goto_0

    :cond_0
    const-string v0, "denied"

    .line 1989
    .local v0, "approvalString":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DomainVerificationServiceApproval"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1991
    return-void
.end method

.method private fillInfoMapForSamePackage(Landroid/util/ArrayMap;Ljava/lang/String;I)V
    .locals 4
    .param p2, "targetPackageName"    # Ljava/lang/String;
    .param p3, "level"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Landroid/content/pm/ResolveInfo;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 1624
    .local p1, "inputMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/pm/ResolveInfo;Ljava/lang/Integer;>;"
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 1625
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1626
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    invoke-virtual {v2}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    .line 1627
    .local v2, "packageName":Ljava/lang/String;
    invoke-static {p2, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1628
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v1, v3}, Landroid/util/ArrayMap;->setValueAt(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1625
    .end local v2    # "packageName":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1631
    .end local v1    # "index":I
    :cond_1
    return-void
.end method

.method private fillMapWithApprovalLevels(Landroid/util/ArrayMap;Ljava/lang/String;ILjava/util/function/Function;)I
    .locals 15
    .param p2, "domain"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Landroid/content/pm/ResolveInfo;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageSetting;",
            ">;)I"
        }
    .end annotation

    .line 1599
    .local p1, "inputMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/pm/ResolveInfo;Ljava/lang/Integer;>;"
    .local p4, "pkgSettingFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    move-object v6, p0

    move-object/from16 v7, p1

    const/4 v0, 0x0

    .line 1600
    .local v0, "highestApproval":I
    invoke-virtual/range {p1 .. p1}, Landroid/util/ArrayMap;->size()I

    move-result v8

    .line 1601
    .local v8, "size":I
    const/4 v1, 0x0

    move v9, v0

    move v10, v1

    .end local v0    # "highestApproval":I
    .local v9, "highestApproval":I
    .local v10, "index":I
    :goto_0
    if-ge v10, v8, :cond_2

    .line 1602
    invoke-virtual {v7, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1604
    move-object/from16 v13, p4

    goto :goto_1

    .line 1607
    :cond_0
    invoke-virtual {v7, v10}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/content/pm/ResolveInfo;

    .line 1608
    .local v11, "info":Landroid/content/pm/ResolveInfo;
    invoke-virtual {v11}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v0

    iget-object v12, v0, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    .line 1609
    .local v12, "packageName":Ljava/lang/String;
    move-object/from16 v13, p4

    invoke-interface {v13, v12}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Lcom/android/server/pm/PackageSetting;

    .line 1610
    .local v14, "pkgSetting":Lcom/android/server/pm/PackageSetting;
    if-nez v14, :cond_1

    .line 1611
    const/4 v0, 0x0

    invoke-direct {p0, v7, v12, v0}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->fillInfoMapForSamePackage(Landroid/util/ArrayMap;Ljava/lang/String;I)V

    .line 1612
    goto :goto_1

    .line 1614
    :cond_1
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, v14

    move-object/from16 v2, p2

    move/from16 v4, p3

    move-object/from16 v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->approvalLevelForDomain(Lcom/android/server/pm/PackageSetting;Ljava/lang/String;ZILjava/lang/Object;)I

    move-result v0

    .line 1615
    .local v0, "approval":I
    invoke-static {v9, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1616
    .end local v9    # "highestApproval":I
    .local v1, "highestApproval":I
    invoke-direct {p0, v7, v12, v0}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->fillInfoMapForSamePackage(Landroid/util/ArrayMap;Ljava/lang/String;I)V

    move v9, v1

    .line 1601
    .end local v0    # "approval":I
    .end local v1    # "highestApproval":I
    .end local v11    # "info":Landroid/content/pm/ResolveInfo;
    .end local v12    # "packageName":Ljava/lang/String;
    .end local v14    # "pkgSetting":Lcom/android/server/pm/PackageSetting;
    .restart local v9    # "highestApproval":I
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_2
    move-object/from16 v13, p4

    .line 1619
    .end local v10    # "index":I
    return v9
.end method

.method private filterToLastDeclared(Ljava/util/List;Ljava/util/function/Function;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageSetting;",
            ">;)V"
        }
    .end annotation

    .line 1668
    .local p1, "inputList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .local p2, "pkgSettingFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 1669
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 1670
    .local v1, "info":Landroid/content/pm/ResolveInfo;
    invoke-virtual {v1}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    .line 1671
    .local v2, "targetPackageName":Ljava/lang/String;
    invoke-interface {p2, v2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    .line 1672
    .local v3, "pkgSetting":Lcom/android/server/pm/PackageSetting;
    if-nez v3, :cond_0

    const/4 v4, 0x0

    goto :goto_1

    :cond_0
    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v4

    .line 1673
    .local v4, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :goto_1
    if-nez v4, :cond_1

    .line 1674
    goto :goto_4

    .line 1677
    :cond_1
    move-object v5, v1

    .line 1678
    .local v5, "result":Landroid/content/pm/ResolveInfo;
    invoke-direct {p0, v4, v5}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->indexOfIntentFilterEntry(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Landroid/content/pm/ResolveInfo;)I

    move-result v6

    .line 1681
    .local v6, "highestIndex":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    .local v7, "searchIndex":I
    :goto_2
    add-int/lit8 v8, v0, 0x1

    if-lt v7, v8, :cond_4

    .line 1682
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    .line 1683
    .local v8, "searchInfo":Landroid/content/pm/ResolveInfo;
    invoke-virtual {v8}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v9

    iget-object v9, v9, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-static {v2, v9}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 1684
    goto :goto_3

    .line 1687
    :cond_2
    invoke-direct {p0, v4, v8}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->indexOfIntentFilterEntry(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Landroid/content/pm/ResolveInfo;)I

    move-result v9

    .line 1688
    .local v9, "entryIndex":I
    if-le v9, v6, :cond_3

    .line 1689
    move v6, v9

    .line 1690
    move-object v5, v8

    .line 1695
    :cond_3
    invoke-interface {p1, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1681
    .end local v8    # "searchInfo":Landroid/content/pm/ResolveInfo;
    .end local v9    # "entryIndex":I
    :goto_3
    add-int/lit8 v7, v7, -0x1

    goto :goto_2

    .line 1700
    .end local v7    # "searchIndex":I
    :cond_4
    invoke-interface {p1, v0, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1668
    .end local v1    # "info":Landroid/content/pm/ResolveInfo;
    .end local v2    # "targetPackageName":Ljava/lang/String;
    .end local v3    # "pkgSetting":Lcom/android/server/pm/PackageSetting;
    .end local v4    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local v5    # "result":Landroid/content/pm/ResolveInfo;
    .end local v6    # "highestIndex":I
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1702
    .end local v0    # "index":I
    :cond_5
    return-void
.end method

.method private filterToLastFirstInstalled(Landroid/util/ArrayMap;Ljava/util/function/Function;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Landroid/content/pm/ResolveInfo;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageSetting;",
            ">;)V"
        }
    .end annotation

    .line 1637
    .local p1, "inputMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/pm/ResolveInfo;Ljava/lang/Integer;>;"
    .local p2, "pkgSettingFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    const/4 v0, 0x0

    .line 1638
    .local v0, "targetPackageName":Ljava/lang/String;
    const-wide/high16 v1, -0x8000000000000000L

    .line 1639
    .local v1, "latestInstall":J
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v3

    .line 1640
    .local v3, "size":I
    const/4 v4, 0x0

    .local v4, "index":I
    :goto_0
    if-ge v4, v3, :cond_2

    .line 1641
    invoke-virtual {p1, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 1642
    .local v5, "info":Landroid/content/pm/ResolveInfo;
    invoke-virtual {v5}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    .line 1643
    .local v6, "packageName":Ljava/lang/String;
    invoke-interface {p2, v6}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/PackageSetting;

    .line 1644
    .local v7, "pkgSetting":Lcom/android/server/pm/PackageSetting;
    if-nez v7, :cond_0

    .line 1645
    goto :goto_1

    .line 1648
    :cond_0
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->getFirstInstallTime()J

    move-result-wide v8

    .line 1649
    .local v8, "installTime":J
    cmp-long v10, v8, v1

    if-lez v10, :cond_1

    .line 1650
    move-wide v1, v8

    .line 1651
    move-object v0, v6

    .line 1640
    .end local v5    # "info":Landroid/content/pm/ResolveInfo;
    .end local v6    # "packageName":Ljava/lang/String;
    .end local v7    # "pkgSetting":Lcom/android/server/pm/PackageSetting;
    .end local v8    # "installTime":J
    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1656
    .end local v4    # "index":I
    :cond_2
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .restart local v4    # "index":I
    :goto_2
    if-ltz v4, :cond_4

    .line 1657
    invoke-virtual {p1, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 1658
    .restart local v5    # "info":Landroid/content/pm/ResolveInfo;
    invoke-virtual {v5}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 1659
    invoke-virtual {p1, v4}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 1656
    .end local v5    # "info":Landroid/content/pm/ResolveInfo;
    :cond_3
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 1662
    .end local v4    # "index":I
    :cond_4
    return-void
.end method

.method private getAndValidateAttachedLocked(Ljava/util/UUID;Ljava/util/Set;ZILjava/lang/Integer;Ljava/util/function/Function;)Lcom/android/server/pm/verify/domain/DomainVerificationService$GetAttachedResult;
    .locals 6
    .param p1, "domainSetId"    # Ljava/util/UUID;
    .param p3, "forAutoVerify"    # Z
    .param p4, "callingUid"    # I
    .param p5, "userIdForFilter"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;ZI",
            "Ljava/lang/Integer;",
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageSetting;",
            ">;)",
            "Lcom/android/server/pm/verify/domain/DomainVerificationService$GetAttachedResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 1329
    .local p2, "domains":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local p6, "pkgSettingFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    if-eqz p1, :cond_6

    .line 1333
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->get(Ljava/util/UUID;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    .line 1334
    .local v0, "pkgState":Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;
    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 1335
    invoke-static {v1}, Lcom/android/server/pm/verify/domain/DomainVerificationService$GetAttachedResult;->error(I)Lcom/android/server/pm/verify/domain/DomainVerificationService$GetAttachedResult;

    move-result-object v1

    return-object v1

    .line 1338
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1340
    .local v2, "pkgName":Ljava/lang/String;
    if-eqz p5, :cond_1

    iget-object v3, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    .line 1341
    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v3, v2, p4, v4}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->filterAppAccess(Ljava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1342
    invoke-static {v1}, Lcom/android/server/pm/verify/domain/DomainVerificationService$GetAttachedResult;->error(I)Lcom/android/server/pm/verify/domain/DomainVerificationService$GetAttachedResult;

    move-result-object v1

    return-object v1

    .line 1345
    :cond_1
    invoke-interface {p6, v2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageSetting;

    .line 1346
    .local v1, "pkgSetting":Lcom/android/server/pm/PackageSetting;
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 1350
    invoke-static {p2}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 1354
    invoke-virtual {v1}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v3

    .line 1355
    .local v3, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-eqz p3, :cond_2

    .line 1356
    iget-object v4, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mCollector:Lcom/android/server/pm/verify/domain/DomainVerificationCollector;

    invoke-virtual {v4, v3}, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->collectValidAutoVerifyDomains(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Landroid/util/ArraySet;

    move-result-object v4

    goto :goto_0

    .line 1357
    :cond_2
    iget-object v4, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mCollector:Lcom/android/server/pm/verify/domain/DomainVerificationCollector;

    invoke-virtual {v4, v3}, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->collectAllWebDomains(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Landroid/util/ArraySet;

    move-result-object v4

    :goto_0
    nop

    .line 1359
    .local v4, "declaredDomains":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-interface {p2, v4}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1360
    const/4 v5, 0x2

    invoke-static {v5}, Lcom/android/server/pm/verify/domain/DomainVerificationService$GetAttachedResult;->error(I)Lcom/android/server/pm/verify/domain/DomainVerificationService$GetAttachedResult;

    move-result-object v5

    return-object v5

    .line 1363
    :cond_3
    invoke-static {v0}, Lcom/android/server/pm/verify/domain/DomainVerificationService$GetAttachedResult;->success(Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;)Lcom/android/server/pm/verify/domain/DomainVerificationService$GetAttachedResult;

    move-result-object v5

    return-object v5

    .line 1351
    .end local v3    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local v4    # "declaredDomains":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_4
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Provided domain set cannot be empty"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1347
    :cond_5
    invoke-static {v2}, Lcom/android/server/pm/verify/domain/DomainVerificationUtils;->throwPackageUnavailable(Ljava/lang/String;)Landroid/content/pm/PackageManager$NameNotFoundException;

    move-result-object v3

    throw v3

    .line 1330
    .end local v0    # "pkgState":Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;
    .end local v1    # "pkgSetting":Lcom/android/server/pm/PackageSetting;
    .end local v2    # "pkgName":Ljava/lang/String;
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "domainSetId cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getApprovedPackagesLocked(Ljava/lang/String;IILjava/util/function/Function;)Landroid/util/Pair;
    .locals 17
    .param p1, "domain"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "minimumApproval"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageSetting;",
            ">;)",
            "Landroid/util/Pair<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1930
    .local p4, "pkgSettingFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    move-object/from16 v7, p0

    move/from16 v8, p3

    move-object/from16 v9, p4

    if-gez v8, :cond_0

    const/4 v1, 0x1

    move v4, v1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 1931
    .local v4, "includeNegative":Z
    :goto_0
    move/from16 v1, p3

    .line 1932
    .local v1, "highestApproval":I
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    .line 1934
    .local v2, "approvedPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v10, v7, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 1935
    :try_start_0
    iget-object v3, v7, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    invoke-virtual {v3}, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->size()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move v11, v3

    .line 1936
    .local v11, "size":I
    const/4 v3, 0x0

    move v12, v1

    move-object v13, v2

    move v14, v3

    .end local v1    # "highestApproval":I
    .end local v2    # "approvedPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v12, "highestApproval":I
    .local v13, "approvedPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v14, "index":I
    :goto_1
    if-ge v14, v11, :cond_5

    .line 1937
    :try_start_1
    iget-object v1, v7, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    invoke-virtual {v1, v14}, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    move-object v15, v1

    .line 1938
    .local v15, "pkgState":Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;
    invoke-virtual {v15}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getPackageName()Ljava/lang/String;

    move-result-object v1

    move-object v6, v1

    .line 1939
    .local v6, "packageName":Ljava/lang/String;
    invoke-interface {v9, v6}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageSetting;

    move-object/from16 v16, v1

    .line 1940
    .local v16, "pkgSetting":Lcom/android/server/pm/PackageSetting;
    if-nez v16, :cond_1

    .line 1941
    goto :goto_2

    .line 1944
    :cond_1
    move-object/from16 v1, p0

    move-object/from16 v2, v16

    move-object/from16 v3, p1

    move/from16 v5, p2

    move-object v0, v6

    .end local v6    # "packageName":Ljava/lang/String;
    .local v0, "packageName":Ljava/lang/String;
    move-object/from16 v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->approvalLevelForDomain(Lcom/android/server/pm/PackageSetting;Ljava/lang/String;ZILjava/lang/Object;)I

    move-result v1

    .line 1946
    .local v1, "level":I
    if-ge v1, v8, :cond_2

    .line 1947
    goto :goto_2

    .line 1950
    :cond_2
    if-le v1, v12, :cond_3

    .line 1951
    invoke-interface {v13}, Ljava/util/List;->clear()V

    .line 1952
    invoke-static {v13, v0}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 1953
    .end local v13    # "approvedPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v2    # "approvedPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move v3, v1

    move-object v13, v2

    move v12, v3

    .end local v12    # "highestApproval":I
    .local v3, "highestApproval":I
    goto :goto_2

    .line 1954
    .end local v2    # "approvedPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "highestApproval":I
    .restart local v12    # "highestApproval":I
    .restart local v13    # "approvedPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    if-ne v1, v12, :cond_4

    .line 1955
    invoke-static {v13, v0}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    move-object v13, v2

    .line 1936
    .end local v0    # "packageName":Ljava/lang/String;
    .end local v1    # "level":I
    .end local v15    # "pkgState":Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;
    .end local v16    # "pkgSetting":Lcom/android/server/pm/PackageSetting;
    :cond_4
    :goto_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 1958
    .end local v11    # "size":I
    .end local v14    # "index":I
    :cond_5
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1960
    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1961
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    .line 1964
    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1965
    .local v0, "filteredPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-wide/high16 v1, -0x8000000000000000L

    .line 1966
    .local v1, "latestInstall":J
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v3

    .line 1967
    .local v3, "approvedSize":I
    const/4 v5, 0x0

    .local v5, "index":I
    :goto_3
    if-ge v5, v3, :cond_a

    .line 1968
    invoke-interface {v13, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1969
    .restart local v6    # "packageName":Ljava/lang/String;
    invoke-interface {v9, v6}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/pm/PackageSetting;

    .line 1970
    .local v10, "pkgSetting":Lcom/android/server/pm/PackageSetting;
    if-nez v10, :cond_7

    .line 1971
    goto :goto_4

    .line 1973
    :cond_7
    invoke-virtual {v10}, Lcom/android/server/pm/PackageSetting;->getFirstInstallTime()J

    move-result-wide v14

    .line 1974
    .local v14, "installTime":J
    cmp-long v11, v14, v1

    if-lez v11, :cond_8

    .line 1975
    move-wide v1, v14

    .line 1976
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1977
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 1978
    :cond_8
    cmp-long v11, v14, v1

    if-nez v11, :cond_9

    .line 1979
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1967
    .end local v6    # "packageName":Ljava/lang/String;
    .end local v10    # "pkgSetting":Lcom/android/server/pm/PackageSetting;
    .end local v14    # "installTime":J
    :cond_9
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 1983
    .end local v5    # "index":I
    :cond_a
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    return-object v5

    .line 1958
    .end local v0    # "filteredPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "latestInstall":J
    .end local v3    # "approvedSize":I
    :catchall_0
    move-exception v0

    move v1, v12

    move-object v2, v13

    goto :goto_5

    .end local v12    # "highestApproval":I
    .end local v13    # "approvedPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v1, "highestApproval":I
    .restart local v2    # "approvedPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_1
    move-exception v0

    :goto_5
    :try_start_2
    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method private getOwnersForDomainInternal(Ljava/lang/String;ZILjava/util/function/Function;)Landroid/util/SparseArray;
    .locals 15
    .param p1, "domain"    # Ljava/lang/String;
    .param p2, "includeNegative"    # Z
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZI",
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageSetting;",
            ">;)",
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 783
    .local p4, "pkgSettingFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    move-object v7, p0

    move-object/from16 v8, p4

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    move-object v9, v0

    .line 785
    .local v9, "levelToPackages":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/List<Ljava/lang/String;>;>;"
    iget-object v10, v7, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 786
    :try_start_0
    iget-object v0, v7, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    invoke-virtual {v0}, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->size()I

    move-result v0

    .line 787
    .local v0, "size":I
    const/4 v1, 0x0

    move v11, v1

    .local v11, "index":I
    :goto_0
    if-ge v11, v0, :cond_3

    .line 788
    iget-object v1, v7, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    invoke-virtual {v1, v11}, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    move-object v12, v1

    .line 789
    .local v12, "pkgState":Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;
    invoke-virtual {v12}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getPackageName()Ljava/lang/String;

    move-result-object v1

    move-object v13, v1

    .line 790
    .local v13, "packageName":Ljava/lang/String;
    invoke-interface {v8, v13}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageSetting;

    move-object v14, v1

    .line 791
    .local v14, "pkgSetting":Lcom/android/server/pm/PackageSetting;
    if-nez v14, :cond_0

    .line 792
    goto :goto_1

    .line 795
    :cond_0
    move-object v1, p0

    move-object v2, v14

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->approvalLevelForDomain(Lcom/android/server/pm/PackageSetting;Ljava/lang/String;ZILjava/lang/Object;)I

    move-result v1

    .line 797
    .local v1, "level":I
    if-nez p2, :cond_1

    if-gtz v1, :cond_1

    .line 798
    goto :goto_1

    .line 800
    :cond_1
    invoke-virtual {v9, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 801
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v2, :cond_2

    .line 802
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v3

    .line 803
    invoke-virtual {v9, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 805
    :cond_2
    invoke-interface {v2, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 787
    .end local v1    # "level":I
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v12    # "pkgState":Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;
    .end local v13    # "packageName":Ljava/lang/String;
    .end local v14    # "pkgSetting":Lcom/android/server/pm/PackageSetting;
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 807
    .end local v0    # "size":I
    .end local v11    # "index":I
    :cond_3
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 809
    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 810
    .restart local v0    # "size":I
    if-nez v0, :cond_4

    .line 811
    return-object v9

    .line 815
    :cond_4
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_2
    if-ge v1, v0, :cond_5

    .line 816
    invoke-virtual {v9, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    new-instance v3, Lcom/android/server/pm/verify/domain/DomainVerificationService$$ExternalSyntheticLambda12;

    invoke-direct {v3, v8}, Lcom/android/server/pm/verify/domain/DomainVerificationService$$ExternalSyntheticLambda12;-><init>(Ljava/util/function/Function;)V

    invoke-interface {v2, v3}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 815
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 833
    .end local v1    # "index":I
    :cond_5
    return-object v9

    .line 807
    .end local v0    # "size":I
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private hasRealVerifier()Z
    .locals 1

    .line 1311
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mProxy:Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;

    instance-of v0, v0, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyUnavailable;

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private indexOfIntentFilterEntry(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Landroid/content/pm/ResolveInfo;)I
    .locals 5
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "target"    # Landroid/content/pm/ResolveInfo;

    .line 1706
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getActivities()Ljava/util/List;

    move-result-object v0

    .line 1707
    .local v0, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/parsing/component/ParsedActivity;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 1708
    .local v1, "activitiesSize":I
    const/4 v2, 0x0

    .local v2, "activityIndex":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1709
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/parsing/component/ParsedActivity;

    invoke-virtual {v3}, Landroid/content/pm/parsing/component/ParsedActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    .line 1710
    invoke-virtual {p2}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/pm/ComponentInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    .line 1709
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1711
    return v2

    .line 1708
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1715
    .end local v2    # "activityIndex":I
    :cond_1
    const/4 v2, -0x1

    return v2
.end method

.method static synthetic lambda$getOwnersForDomainInternal$8(Ljava/util/function/Function;Ljava/lang/String;Ljava/lang/String;)I
    .locals 8
    .param p0, "pkgSettingFunction"    # Ljava/util/function/Function;
    .param p1, "first"    # Ljava/lang/String;
    .param p2, "second"    # Ljava/lang/String;

    .line 817
    invoke-interface {p0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 818
    .local v0, "firstPkgSetting":Lcom/android/server/pm/PackageSetting;
    invoke-interface {p0, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageSetting;

    .line 821
    .local v1, "secondPkgSetting":Lcom/android/server/pm/PackageSetting;
    const-wide/16 v2, -0x1

    if-nez v0, :cond_0

    move-wide v4, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getFirstInstallTime()J

    move-result-wide v4

    .line 823
    .local v4, "firstInstallTime":J
    :goto_0
    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lcom/android/server/pm/PackageSetting;->getFirstInstallTime()J

    move-result-wide v2

    .line 825
    .local v2, "secondInstallTime":J
    :goto_1
    cmp-long v6, v4, v2

    if-eqz v6, :cond_2

    .line 826
    sub-long v6, v4, v2

    long-to-int v6, v6

    return v6

    .line 829
    :cond_2
    invoke-virtual {p1, p2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v6

    return v6
.end method

.method static synthetic lambda$writeSettings$9(Ljava/util/function/Function;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "pkgSettings"    # Ljava/util/function/Function;
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 1065
    invoke-interface {p0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 1066
    .local v0, "pkgSetting":Lcom/android/server/pm/PackageSetting;
    if-nez v0, :cond_0

    .line 1071
    const/4 v1, 0x0

    return-object v1

    .line 1074
    :cond_0
    nop

    .line 1075
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object v1

    .line 1074
    invoke-static {v1}, Landroid/util/PackageUtils;->computeSignaturesSha256Digest([Landroid/content/pm/Signature;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private printOwnersForDomain(Landroid/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/function/Function;)V
    .locals 7
    .param p1, "writer"    # Landroid/util/IndentingPrintWriter;
    .param p2, "domain"    # Ljava/lang/String;
    .param p3, "userId"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/IndentingPrintWriter;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageSetting;",
            ">;)V"
        }
    .end annotation

    .line 1267
    .local p4, "pkgSettingFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 1270
    .local v0, "userIdToApprovalLevelToOwners":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseArray<Ljava/util/List<Ljava/lang/String;>;>;>;"
    const/4 v1, 0x1

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    .line 1276
    :cond_0
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1277
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, p2, v1, v3, p4}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->getOwnersForDomainInternal(Ljava/lang/String;ZILjava/util/function/Function;)Landroid/util/SparseArray;

    move-result-object v1

    .line 1276
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_2

    .line 1271
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    invoke-interface {v2}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->getAllUserIds()[I

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_2

    aget v5, v2, v4

    .line 1272
    .local v5, "aUserId":I
    nop

    .line 1273
    invoke-direct {p0, p2, v1, v5, p4}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->getOwnersForDomainInternal(Ljava/lang/String;ZILjava/util/function/Function;)Landroid/util/SparseArray;

    move-result-object v6

    .line 1272
    invoke-virtual {v0, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1271
    .end local v5    # "aUserId":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1280
    :cond_2
    :goto_2
    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mDebug:Lcom/android/server/pm/verify/domain/DomainVerificationDebug;

    invoke-virtual {v1, p1, p2, v0}, Lcom/android/server/pm/verify/domain/DomainVerificationDebug;->printOwners(Landroid/util/IndentingPrintWriter;Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 1281
    return-void
.end method

.method private printOwnersForPackage(Landroid/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/function/Function;)V
    .locals 6
    .param p1, "writer"    # Landroid/util/IndentingPrintWriter;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/IndentingPrintWriter;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageSetting;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 1229
    .local p4, "pkgSettingFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    invoke-interface {p4, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 1230
    .local v0, "pkgSetting":Lcom/android/server/pm/PackageSetting;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v1

    .line 1231
    .local v1, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :goto_0
    if-eqz v1, :cond_3

    .line 1235
    iget-object v2, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mCollector:Lcom/android/server/pm/verify/domain/DomainVerificationCollector;

    invoke-virtual {v2, v1}, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->collectAllWebDomains(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Landroid/util/ArraySet;

    move-result-object v2

    .line 1236
    .local v2, "domains":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v3

    .line 1237
    .local v3, "size":I
    if-nez v3, :cond_1

    .line 1238
    return-void

    .line 1241
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1242
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1244
    const/4 v4, 0x0

    .local v4, "index":I
    :goto_1
    if-ge v4, v3, :cond_2

    .line 1245
    invoke-virtual {v2, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {p0, p1, v5, p3, p4}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->printOwnersForDomain(Landroid/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/function/Function;)V

    .line 1244
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1248
    .end local v4    # "index":I
    :cond_2
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1249
    return-void

    .line 1232
    .end local v2    # "domains":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v3    # "size":I
    :cond_3
    invoke-static {p2}, Lcom/android/server/pm/verify/domain/DomainVerificationUtils;->throwPackageUnavailable(Ljava/lang/String;)Landroid/content/pm/PackageManager$NameNotFoundException;

    move-result-object v2

    throw v2
.end method

.method private removeUserStatesForDomain(Ljava/lang/String;)V
    .locals 8
    .param p1, "domain"    # Ljava/lang/String;

    .line 465
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 466
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    invoke-virtual {v1}, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->size()I

    move-result v1

    .line 467
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 468
    iget-object v3, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    invoke-virtual {v3, v2}, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    .line 469
    .local v3, "pkgState":Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;
    invoke-virtual {v3}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getUserStates()Landroid/util/SparseArray;

    move-result-object v4

    .line 470
    .local v4, "array":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;>;"
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v5

    .line 471
    .local v5, "arraySize":I
    const/4 v6, 0x0

    .local v6, "arrayIndex":I
    :goto_1
    if-ge v6, v5, :cond_0

    .line 472
    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;

    invoke-virtual {v7, p1}, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;->removeHost(Ljava/lang/String;)Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;

    .line 471
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 467
    .end local v3    # "pkgState":Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;
    .end local v4    # "array":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;>;"
    .end local v5    # "arraySize":I
    .end local v6    # "arrayIndex":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 475
    .end local v1    # "size":I
    .end local v2    # "index":I
    :cond_1
    monitor-exit v0

    .line 476
    return-void

    .line 475
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private resetDomainState(Landroid/util/ArrayMap;Lcom/android/server/pm/PackageSetting;)V
    .locals 5
    .param p2, "pkgSetting"    # Lcom/android/server/pm/PackageSetting;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/android/server/pm/PackageSetting;",
            ")V"
        }
    .end annotation

    .line 1469
    .local p1, "stateMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 1470
    .local v0, "size":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "index":I
    :goto_0
    if-ltz v1, :cond_2

    .line 1471
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 1473
    .local v2, "state":Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 1479
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0x400

    if-lt v3, v4, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    .line 1476
    :sswitch_0
    const/4 v3, 0x1

    .line 1477
    .local v3, "reset":Z
    goto :goto_1

    .line 1479
    .end local v3    # "reset":Z
    :cond_0
    const/4 v3, 0x0

    .line 1483
    .restart local v3    # "reset":Z
    :goto_1
    if-eqz v3, :cond_1

    .line 1484
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 1470
    .end local v2    # "state":Ljava/lang/Integer;
    .end local v3    # "reset":Z
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1488
    .end local v1    # "index":I
    :cond_2
    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mCollector:Lcom/android/server/pm/verify/domain/DomainVerificationCollector;

    .line 1489
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->collectValidAutoVerifyDomains(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Landroid/util/ArraySet;

    move-result-object v1

    .line 1488
    invoke-direct {p0, p2, p1, v1}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->applyImmutableState(Lcom/android/server/pm/PackageSetting;Landroid/util/ArrayMap;Landroid/util/ArraySet;)Z

    .line 1490
    return-void

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x5 -> :sswitch_0
    .end sparse-switch
.end method

.method private revokeOtherUserSelectionsLocked(Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;ILjava/util/Set;Ljava/util/function/Function;)I
    .locals 10
    .param p1, "userState"    # Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;",
            "I",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageSetting;",
            ">;)I"
        }
    .end annotation

    .line 643
    .local p3, "domains":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local p4, "pkgSettingFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 645
    .local v0, "domainToApprovedPackages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 646
    .local v2, "domain":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;->getEnabledHosts()Landroid/util/ArraySet;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 647
    goto :goto_0

    .line 650
    :cond_0
    const/4 v3, 0x1

    invoke-direct {p0, v2, p2, v3, p4}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->getApprovedPackagesLocked(Ljava/lang/String;IILjava/util/function/Function;)Landroid/util/Pair;

    move-result-object v3

    .line 652
    .local v3, "packagesToLevel":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/List<Ljava/lang/String;>;Ljava/lang/Integer;>;"
    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 653
    .local v4, "highestApproval":I
    const/4 v5, 0x3

    if-le v4, v5, :cond_1

    .line 654
    return v5

    .line 657
    :cond_1
    iget-object v5, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/util/List;

    invoke-virtual {v0, v2, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 658
    .end local v2    # "domain":Ljava/lang/String;
    .end local v3    # "packagesToLevel":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/List<Ljava/lang/String;>;Ljava/lang/Integer;>;"
    .end local v4    # "highestApproval":I
    goto :goto_0

    .line 662
    :cond_2
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 663
    .local v1, "mapSize":I
    const/4 v2, 0x0

    .local v2, "mapIndex":I
    :goto_1
    if-ge v2, v1, :cond_6

    .line 664
    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 665
    .local v3, "domain":Ljava/lang/String;
    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 666
    .local v4, "approvedPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    .line 667
    .local v5, "approvedSize":I
    const/4 v6, 0x0

    .local v6, "approvedIndex":I
    :goto_2
    if-ge v6, v5, :cond_5

    .line 668
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 669
    .local v7, "approvedPackage":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    .line 670
    invoke-virtual {v8, v7}, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    .line 671
    .local v8, "approvedPkgState":Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;
    if-nez v8, :cond_3

    .line 672
    goto :goto_3

    .line 675
    :cond_3
    nop

    .line 676
    invoke-virtual {v8, p2}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getUserState(I)Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;

    move-result-object v9

    .line 677
    .local v9, "approvedUserState":Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;
    if-nez v9, :cond_4

    .line 678
    goto :goto_3

    .line 681
    :cond_4
    invoke-virtual {v9, v3}, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;->removeHost(Ljava/lang/String;)Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;

    .line 667
    .end local v7    # "approvedPackage":Ljava/lang/String;
    .end local v8    # "approvedPkgState":Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;
    .end local v9    # "approvedUserState":Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 663
    .end local v3    # "domain":Ljava/lang/String;
    .end local v4    # "approvedPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "approvedSize":I
    .end local v6    # "approvedIndex":I
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 685
    .end local v2    # "mapIndex":I
    :cond_6
    const/4 v2, 0x0

    return v2
.end method

.method private sendBroadcast(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1296
    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->sendBroadcast(Ljava/util/Set;)V

    .line 1297
    return-void
.end method

.method private sendBroadcast(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1300
    .local p1, "packageNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-boolean v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mCanSendBroadcasts:Z

    if-nez v0, :cond_0

    .line 1304
    return-void

    .line 1307
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mProxy:Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;

    invoke-interface {v0, p1}, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;->sendBroadcastForPackages(Ljava/util/Set;)V

    .line 1308
    return-void
.end method

.method private setDomainVerificationStatusInternal(Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;ILandroid/util/ArraySet;)V
    .locals 5
    .param p1, "pkgState"    # Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;
    .param p2, "state"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;",
            "I",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 457
    .local p3, "validDomains":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {p1}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getStateMap()Landroid/util/ArrayMap;

    move-result-object v0

    .line 458
    .local v0, "stateMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-virtual {p3}, Landroid/util/ArraySet;->size()I

    move-result v1

    .line 459
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 460
    invoke-virtual {p3, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 462
    .end local v2    # "index":I
    :cond_0
    return-void
.end method

.method private shouldReBroadcastPackage(Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;)Z
    .locals 6
    .param p1, "pkgState"    # Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    .line 1414
    invoke-virtual {p1}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->isHasAutoVerifyDomains()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1415
    return v1

    .line 1418
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getStateMap()Landroid/util/ArrayMap;

    move-result-object v0

    .line 1419
    .local v0, "stateMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 1420
    .local v2, "statesSize":I
    const/4 v3, 0x0

    .local v3, "stateIndex":I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 1421
    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 1422
    .local v4, "state":Ljava/lang/Integer;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Landroid/content/pm/verify/domain/DomainVerificationState;->isDefault(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1423
    return v1

    .line 1420
    .end local v4    # "state":Ljava/lang/Integer;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1427
    .end local v3    # "stateIndex":I
    :cond_2
    const/4 v1, 0x1

    return v1
.end method


# virtual methods
.method public addLegacySetting(Ljava/lang/String;Landroid/content/pm/IntentFilterVerificationInfo;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "info"    # Landroid/content/pm/IntentFilterVerificationInfo;

    .line 1117
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLegacySettings:Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings;->add(Ljava/lang/String;Landroid/content/pm/IntentFilterVerificationInfo;)V

    .line 1118
    return-void
.end method

.method public addPackage(Lcom/android/server/pm/PackageSetting;)V
    .locals 22
    .param p1, "newPkgSetting"    # Lcom/android/server/pm/PackageSetting;

    .line 938
    move-object/from16 v1, p0

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/PackageSetting;->getDomainSetId()Ljava/util/UUID;

    move-result-object v2

    .line 939
    .local v2, "domainSetId":Ljava/util/UUID;
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/PackageSetting;->getName()Ljava/lang/String;

    move-result-object v3

    .line 941
    .local v3, "pkgName":Ljava/lang/String;
    const/4 v0, 0x1

    .line 944
    .local v0, "sendBroadcast":Z
    iget-object v4, v1, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mSettings:Lcom/android/server/pm/verify/domain/DomainVerificationSettings;

    invoke-virtual {v4, v3}, Lcom/android/server/pm/verify/domain/DomainVerificationSettings;->removePendingState(Ljava/lang/String;)Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    move-result-object v4

    .line 945
    .local v4, "pkgState":Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;
    if-eqz v4, :cond_0

    .line 948
    const/4 v0, 0x0

    move-object/from16 v21, v4

    move v4, v0

    move-object/from16 v0, v21

    goto :goto_0

    .line 950
    :cond_0
    iget-object v5, v1, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mSettings:Lcom/android/server/pm/verify/domain/DomainVerificationSettings;

    invoke-virtual {v5, v3}, Lcom/android/server/pm/verify/domain/DomainVerificationSettings;->removeRestoredState(Ljava/lang/String;)Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    move-result-object v4

    .line 951
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getBackupSignatureHash()Ljava/lang/String;

    move-result-object v5

    .line 952
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/PackageSetting;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object v6

    invoke-static {v6}, Landroid/util/PackageUtils;->computeSignaturesSha256Digest([Landroid/content/pm/Signature;)Ljava/lang/String;

    move-result-object v6

    .line 951
    invoke-static {v5, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 954
    const/4 v4, 0x0

    move-object/from16 v21, v4

    move v4, v0

    move-object/from16 v0, v21

    goto :goto_0

    .line 958
    :cond_1
    move-object/from16 v21, v4

    move v4, v0

    move-object/from16 v0, v21

    .local v0, "pkgState":Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;
    .local v4, "sendBroadcast":Z
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v5

    .line 959
    .local v5, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    iget-object v6, v1, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mCollector:Lcom/android/server/pm/verify/domain/DomainVerificationCollector;

    invoke-virtual {v6, v5}, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->collectValidAutoVerifyDomains(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Landroid/util/ArraySet;

    move-result-object v6

    .line 960
    .local v6, "autoVerifyDomains":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {v6}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v7

    const/4 v8, 0x1

    xor-int/2addr v7, v8

    .line 961
    .local v7, "hasAutoVerifyDomains":Z
    const/4 v9, 0x0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move v8, v9

    .line 962
    .local v8, "isPendingOrRestored":Z
    :goto_1
    if-eqz v8, :cond_4

    .line 963
    new-instance v10, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    invoke-direct {v10, v0, v2, v7}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;-><init>(Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;Ljava/util/UUID;Z)V

    move-object v0, v10

    .line 964
    invoke-virtual {v0}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getStateMap()Landroid/util/ArrayMap;

    move-result-object v10

    invoke-virtual {v10, v6}, Landroid/util/ArrayMap;->retainAll(Ljava/util/Collection;)Z

    .line 966
    iget-object v10, v1, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mCollector:Lcom/android/server/pm/verify/domain/DomainVerificationCollector;

    invoke-virtual {v10, v5}, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->collectAllWebDomains(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Landroid/util/ArraySet;

    move-result-object v10

    .line 967
    .local v10, "webDomains":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {v0}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getUserStates()Landroid/util/SparseArray;

    move-result-object v11

    .line 968
    .local v11, "userStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;>;"
    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v12

    .line 969
    .local v12, "size":I
    const/4 v13, 0x0

    .local v13, "index":I
    :goto_2
    if-ge v13, v12, :cond_3

    .line 970
    invoke-virtual {v11, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;

    invoke-virtual {v14, v10}, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;->retainHosts(Ljava/util/Set;)Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;

    .line 969
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 972
    .end local v10    # "webDomains":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v11    # "userStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;>;"
    .end local v12    # "size":I
    .end local v13    # "index":I
    :cond_3
    move-object v10, v0

    goto :goto_3

    .line 973
    :cond_4
    new-instance v10, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    invoke-direct {v10, v3, v2, v7}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;-><init>(Ljava/lang/String;Ljava/util/UUID;Z)V

    move-object v0, v10

    .line 976
    .end local v0    # "pkgState":Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;
    .local v10, "pkgState":Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;
    :goto_3
    invoke-virtual {v10}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getStateMap()Landroid/util/ArrayMap;

    move-result-object v0

    move-object/from16 v11, p1

    invoke-direct {v1, v11, v0, v6}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->applyImmutableState(Lcom/android/server/pm/PackageSetting;Landroid/util/ArrayMap;Landroid/util/ArraySet;)Z

    move-result v12

    .line 978
    .local v12, "needsBroadcast":Z
    if-eqz v12, :cond_c

    if-nez v8, :cond_c

    .line 986
    const/4 v0, 0x0

    .line 988
    .local v0, "webDomains":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v13, v1, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLegacySettings:Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings;

    invoke-virtual {v13, v3}, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings;->getUserStates(Ljava/lang/String;)Landroid/util/SparseIntArray;

    move-result-object v13

    .line 989
    .local v13, "legacyUserStates":Landroid/util/SparseIntArray;
    if-nez v13, :cond_5

    goto :goto_4

    :cond_5
    invoke-virtual {v13}, Landroid/util/SparseIntArray;->size()I

    move-result v9

    .line 990
    .local v9, "userStateSize":I
    :goto_4
    const/4 v14, 0x0

    .local v14, "index":I
    :goto_5
    if-ge v14, v9, :cond_8

    .line 991
    invoke-virtual {v13, v14}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v15

    .line 992
    .local v15, "userId":I
    move/from16 v17, v8

    .end local v8    # "isPendingOrRestored":Z
    .local v17, "isPendingOrRestored":Z
    invoke-virtual {v13, v14}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v8

    .line 993
    .local v8, "legacyStatus":I
    move/from16 v18, v9

    const/4 v9, 0x2

    .end local v9    # "userStateSize":I
    .local v18, "userStateSize":I
    if-ne v8, v9, :cond_7

    .line 995
    if-nez v0, :cond_6

    .line 996
    iget-object v9, v1, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mCollector:Lcom/android/server/pm/verify/domain/DomainVerificationCollector;

    invoke-virtual {v9, v5}, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->collectAllWebDomains(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Landroid/util/ArraySet;

    move-result-object v0

    .line 999
    :cond_6
    invoke-virtual {v10, v15}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getOrCreateUserState(I)Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;

    move-result-object v9

    invoke-virtual {v9, v0}, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;->addHosts(Landroid/util/ArraySet;)Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;

    .line 990
    .end local v8    # "legacyStatus":I
    .end local v15    # "userId":I
    :cond_7
    add-int/lit8 v14, v14, 0x1

    move/from16 v8, v17

    move/from16 v9, v18

    goto :goto_5

    .end local v17    # "isPendingOrRestored":Z
    .end local v18    # "userStateSize":I
    .local v8, "isPendingOrRestored":Z
    .restart local v9    # "userStateSize":I
    :cond_8
    move/from16 v17, v8

    move/from16 v18, v9

    .line 1003
    .end local v8    # "isPendingOrRestored":Z
    .end local v9    # "userStateSize":I
    .end local v14    # "index":I
    .restart local v17    # "isPendingOrRestored":Z
    .restart local v18    # "userStateSize":I
    iget-object v8, v1, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLegacySettings:Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings;

    invoke-virtual {v8, v3}, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings;->remove(Ljava/lang/String;)Landroid/content/pm/IntentFilterVerificationInfo;

    move-result-object v8

    .line 1004
    .local v8, "legacyInfo":Landroid/content/pm/IntentFilterVerificationInfo;
    if-eqz v8, :cond_b

    .line 1005
    invoke-virtual {v8}, Landroid/content/pm/IntentFilterVerificationInfo;->getStatus()I

    move-result v9

    const/4 v14, 0x2

    if-ne v9, v14, :cond_a

    .line 1007
    invoke-virtual {v10}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getStateMap()Landroid/util/ArrayMap;

    move-result-object v9

    .line 1008
    .local v9, "stateMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    move-result v14

    .line 1009
    .local v14, "domainsSize":I
    const/4 v15, 0x0

    .local v15, "index":I
    :goto_6
    if-ge v15, v14, :cond_9

    .line 1010
    invoke-virtual {v6, v15}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v19, v0

    .end local v0    # "webDomains":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v19, "webDomains":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    move-object/from16 v0, v16

    check-cast v0, Ljava/lang/String;

    const/16 v16, 0x4

    .line 1011
    move-object/from16 v20, v5

    .end local v5    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .local v20, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 1010
    invoke-virtual {v9, v0, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1009
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, v19

    move-object/from16 v5, v20

    goto :goto_6

    .end local v19    # "webDomains":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v20    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .restart local v0    # "webDomains":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v5    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :cond_9
    move-object/from16 v19, v0

    move-object/from16 v20, v5

    .end local v0    # "webDomains":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v5    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .restart local v19    # "webDomains":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v20    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    goto :goto_7

    .line 1005
    .end local v9    # "stateMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v14    # "domainsSize":I
    .end local v15    # "index":I
    .end local v19    # "webDomains":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v20    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .restart local v0    # "webDomains":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v5    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :cond_a
    move-object/from16 v19, v0

    move-object/from16 v20, v5

    .end local v0    # "webDomains":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v5    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .restart local v19    # "webDomains":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v20    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    goto :goto_7

    .line 1004
    .end local v19    # "webDomains":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v20    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .restart local v0    # "webDomains":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v5    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :cond_b
    move-object/from16 v19, v0

    move-object/from16 v20, v5

    .end local v0    # "webDomains":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v5    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .restart local v19    # "webDomains":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v20    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    goto :goto_7

    .line 978
    .end local v13    # "legacyUserStates":Landroid/util/SparseIntArray;
    .end local v17    # "isPendingOrRestored":Z
    .end local v18    # "userStateSize":I
    .end local v19    # "webDomains":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v20    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .restart local v5    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .local v8, "isPendingOrRestored":Z
    :cond_c
    move-object/from16 v20, v5

    move/from16 v17, v8

    .line 1016
    .end local v5    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local v8    # "isPendingOrRestored":Z
    .restart local v17    # "isPendingOrRestored":Z
    .restart local v20    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :goto_7
    iget-object v5, v1, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1017
    :try_start_0
    iget-object v0, v1, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    invoke-virtual {v0, v3, v2, v10}, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->put(Ljava/lang/String;Ljava/util/UUID;Ljava/lang/Object;)V

    .line 1018
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1020
    if-eqz v4, :cond_d

    if-eqz v7, :cond_d

    .line 1021
    invoke-direct {v1, v3}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->sendBroadcast(Ljava/lang/String;)V

    .line 1023
    :cond_d
    return-void

    .line 1018
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public approvalLevelForDomain(Lcom/android/server/pm/PackageSetting;Landroid/content/Intent;II)I
    .locals 8
    .param p1, "pkgSetting"    # Lcom/android/server/pm/PackageSetting;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resolveInfoFlags"    # I
    .param p4, "userId"    # I

    .line 1721
    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1722
    .local v0, "packageName":Ljava/lang/String;
    invoke-static {p2, p3}, Lcom/android/server/pm/verify/domain/DomainVerificationUtils;->isDomainVerificationIntent(Landroid/content/Intent;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1726
    const/4 v1, 0x0

    return v1

    .line 1729
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object v2, p0

    move-object v3, p1

    move v6, p4

    move-object v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->approvalLevelForDomain(Lcom/android/server/pm/PackageSetting;Ljava/lang/String;ZILjava/lang/Object;)I

    move-result v1

    return v1
.end method

.method public clearDomainVerificationState(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1432
    .local p1, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mEnforcer:Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;

    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    invoke-interface {v1}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;->assertInternal(I)V

    .line 1433
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    new-instance v1, Lcom/android/server/pm/verify/domain/DomainVerificationService$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0, p1}, Lcom/android/server/pm/verify/domain/DomainVerificationService$$ExternalSyntheticLambda14;-><init>(Lcom/android/server/pm/verify/domain/DomainVerificationService;Ljava/util/List;)V

    invoke-interface {v0, v1}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->withPackageSettingsSnapshot(Ljava/util/function/Consumer;)V

    .line 1461
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    invoke-interface {v0}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->scheduleWriteSettings()V

    .line 1462
    return-void
.end method

.method public clearPackage(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1143
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1144
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 1145
    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mSettings:Lcom/android/server/pm/verify/domain/DomainVerificationSettings;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/verify/domain/DomainVerificationSettings;->removePackage(Ljava/lang/String;)V

    .line 1146
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1148
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    invoke-interface {v0}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->scheduleWriteSettings()V

    .line 1149
    return-void

    .line 1146
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public clearPackageForUser(Ljava/lang/String;I)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1153
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1154
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    .line 1155
    .local v1, "pkgState":Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;
    if-eqz v1, :cond_0

    .line 1156
    invoke-virtual {v1, p2}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->removeUser(I)V

    .line 1159
    :cond_0
    iget-object v2, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mSettings:Lcom/android/server/pm/verify/domain/DomainVerificationSettings;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/pm/verify/domain/DomainVerificationSettings;->removePackageForUser(Ljava/lang/String;I)V

    .line 1160
    .end local v1    # "pkgState":Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1162
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    invoke-interface {v0}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->scheduleWriteSettings()V

    .line 1163
    return-void

    .line 1160
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public clearUser(I)V
    .locals 4
    .param p1, "userId"    # I

    .line 1167
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1168
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    invoke-virtual {v1}, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->size()I

    move-result v1

    .line 1169
    .local v1, "attachedSize":I
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 1170
    iget-object v3, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    invoke-virtual {v3, v2}, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    invoke-virtual {v3, p1}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->removeUser(I)V

    .line 1169
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1173
    .end local v2    # "index":I
    :cond_0
    iget-object v2, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mSettings:Lcom/android/server/pm/verify/domain/DomainVerificationSettings;

    invoke-virtual {v2, p1}, Lcom/android/server/pm/verify/domain/DomainVerificationSettings;->removeUser(I)V

    .line 1174
    .end local v1    # "attachedSize":I
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1176
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    invoke-interface {v0}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->scheduleWriteSettings()V

    .line 1177
    return-void

    .line 1174
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public clearUserStates(Ljava/util/List;I)V
    .locals 6
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 1494
    .local p1, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mEnforcer:Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;

    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    invoke-interface {v1}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;->assertInternal(I)V

    .line 1495
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1496
    const/4 v1, -0x1

    if-nez p1, :cond_2

    .line 1497
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    invoke-virtual {v2}, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->size()I

    move-result v2

    .line 1498
    .local v2, "size":I
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 1499
    iget-object v4, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    invoke-virtual {v4, v3}, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    .line 1500
    .local v4, "pkgState":Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;
    if-ne p2, v1, :cond_0

    .line 1501
    invoke-virtual {v4}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->removeAllUsers()V

    goto :goto_1

    .line 1503
    :cond_0
    invoke-virtual {v4, p2}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->removeUser(I)V

    .line 1498
    .end local v4    # "pkgState":Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1506
    .end local v2    # "size":I
    .end local v3    # "index":I
    :cond_1
    goto :goto_4

    .line 1507
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 1508
    .restart local v2    # "size":I
    const/4 v3, 0x0

    .restart local v3    # "index":I
    :goto_2
    if-ge v3, v2, :cond_4

    .line 1509
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1510
    .local v4, "pkgName":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    invoke-virtual {v5, v4}, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    .line 1511
    .local v5, "pkgState":Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;
    if-ne p2, v1, :cond_3

    .line 1512
    invoke-virtual {v5}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->removeAllUsers()V

    goto :goto_3

    .line 1514
    :cond_3
    invoke-virtual {v5, p2}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->removeUser(I)V

    .line 1508
    .end local v4    # "pkgName":Ljava/lang/String;
    .end local v5    # "pkgState":Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1518
    .end local v2    # "size":I
    .end local v3    # "index":I
    :cond_4
    :goto_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1520
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    invoke-interface {v0}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->scheduleWriteSettings()V

    .line 1521
    return-void

    .line 1518
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public filterToApprovedApp(Landroid/content/Intent;Ljava/util/List;ILjava/util/function/Function;)Landroid/util/Pair;
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;I",
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageSetting;",
            ">;)",
            "Landroid/util/Pair<",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1541
    .local p2, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .local p4, "pkgSettingFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 1544
    .local v0, "domain":Ljava/lang/String;
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 1545
    .local v1, "infoApprovals":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/pm/ResolveInfo;Ljava/lang/Integer;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    .line 1546
    .local v2, "infosSize":I
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 1547
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 1549
    .local v4, "info":Landroid/content/pm/ResolveInfo;
    invoke-virtual {v4}, Landroid/content/pm/ResolveInfo;->isAutoResolutionAllowed()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1550
    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1546
    .end local v4    # "info":Landroid/content/pm/ResolveInfo;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1555
    .end local v3    # "index":I
    :cond_1
    invoke-direct {p0, v1, v0, p3, p4}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->fillMapWithApprovalLevels(Landroid/util/ArrayMap;Ljava/lang/String;ILjava/util/function/Function;)I

    move-result v3

    .line 1557
    .local v3, "highestApproval":I
    if-gtz v3, :cond_2

    .line 1558
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    return-object v4

    .line 1562
    :cond_2
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    .local v4, "index":I
    :goto_1
    if-ltz v4, :cond_4

    .line 1563
    invoke-virtual {v1, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eq v6, v3, :cond_3

    .line 1564
    invoke-virtual {v1, v4}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 1562
    :cond_3
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 1568
    .end local v4    # "index":I
    :cond_4
    if-eq v3, v5, :cond_5

    .line 1572
    invoke-direct {p0, v1, p4}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->filterToLastFirstInstalled(Landroid/util/ArrayMap;Ljava/util/function/Function;)V

    .line 1577
    :cond_5
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v4

    .line 1578
    .local v4, "size":I
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 1579
    .local v6, "finalList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v7, 0x0

    .local v7, "index":I
    :goto_2
    if-ge v7, v4, :cond_6

    .line 1580
    invoke-virtual {v1, v7}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1579
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 1584
    .end local v7    # "index":I
    :cond_6
    if-eq v3, v5, :cond_7

    .line 1586
    invoke-direct {p0, v6, p4}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->filterToLastDeclared(Ljava/util/List;Ljava/util/function/Function;)V

    .line 1589
    :cond_7
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    return-object v5
.end method

.method public generateNewId()Ljava/util/UUID;
    .locals 1

    .line 840
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    return-object v0
.end method

.method public getCollector()Lcom/android/server/pm/verify/domain/DomainVerificationCollector;
    .locals 1

    .line 1292
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mCollector:Lcom/android/server/pm/verify/domain/DomainVerificationCollector;

    return-object v0
.end method

.method public getDomainVerificationInfo(Ljava/lang/String;)Landroid/content/pm/verify/domain/DomainVerificationInfo;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 262
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mEnforcer:Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;

    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    invoke-interface {v1}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->getCallingUid()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mProxy:Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;->assertApprovedQuerent(ILcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;)V

    .line 263
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    new-instance v1, Lcom/android/server/pm/verify/domain/DomainVerificationService$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, p1}, Lcom/android/server/pm/verify/domain/DomainVerificationService$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/pm/verify/domain/DomainVerificationService;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->withPackageSettingsSnapshotReturningThrowing(Lcom/android/internal/util/FunctionalUtils$ThrowingCheckedFunction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/verify/domain/DomainVerificationInfo;

    return-object v0
.end method

.method public getDomainVerificationInfoId(Ljava/lang/String;)Ljava/util/UUID;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 248
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 249
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    .line 250
    .local v1, "pkgState":Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;
    if-eqz v1, :cond_0

    .line 251
    invoke-virtual {v1}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getId()Ljava/util/UUID;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 253
    :cond_0
    const/4 v2, 0x0

    monitor-exit v0

    return-object v2

    .line 255
    .end local v1    # "pkgState":Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getDomainVerificationUserState(Ljava/lang/String;I)Landroid/content/pm/verify/domain/DomainVerificationUserState;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 692
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mEnforcer:Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;

    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    invoke-interface {v1}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->getCallingUid()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    .line 693
    invoke-interface {v2}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->getCallingUserId()I

    move-result v2

    .line 692
    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;->assertApprovedUserStateQuerent(IILjava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 697
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    new-instance v1, Lcom/android/server/pm/verify/domain/DomainVerificationService$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/pm/verify/domain/DomainVerificationService$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/pm/verify/domain/DomainVerificationService;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->withPackageSettingsSnapshotReturningThrowing(Lcom/android/internal/util/FunctionalUtils$ThrowingCheckedFunction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/verify/domain/DomainVerificationUserState;

    return-object v0

    .line 694
    :cond_0
    invoke-static {p1}, Lcom/android/server/pm/verify/domain/DomainVerificationUtils;->throwPackageUnavailable(Ljava/lang/String;)Landroid/content/pm/PackageManager$NameNotFoundException;

    move-result-object v0

    throw v0
.end method

.method public getLegacyState(Ljava/lang/String;I)I
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1134
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mEnforcer:Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;

    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    invoke-interface {v1}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->getCallingUid()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    .line 1135
    invoke-interface {v2}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->getCallingUserId()I

    move-result v2

    .line 1134
    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;->callerIsLegacyUserQuerent(IILjava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1136
    const/4 v0, 0x0

    return v0

    .line 1138
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLegacySettings:Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings;->getUserState(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getOwnersForDomain(Ljava/lang/String;I)Ljava/util/List;
    .locals 3
    .param p1, "domain"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/verify/domain/DomainOwner;",
            ">;"
        }
    .end annotation

    .line 746
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 747
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mEnforcer:Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;

    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    invoke-interface {v1}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->getCallingUid()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    invoke-interface {v2}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->getCallingUserId()I

    move-result v2

    invoke-virtual {v0, v1, v2, p2}, Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;->assertOwnerQuerent(III)V

    .line 750
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    new-instance v1, Lcom/android/server/pm/verify/domain/DomainVerificationService$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/pm/verify/domain/DomainVerificationService$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/pm/verify/domain/DomainVerificationService;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->withPackageSettingsSnapshotReturningThrowing(Lcom/android/internal/util/FunctionalUtils$ThrowingCheckedFunction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public getProxy()Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mProxy:Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;

    return-object v0
.end method

.method public getShell()Lcom/android/server/pm/verify/domain/DomainVerificationShell;
    .locals 1

    .line 1286
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mShell:Lcom/android/server/pm/verify/domain/DomainVerificationShell;

    return-object v0
.end method

.method public synthetic lambda$clearDomainVerificationState$16$DomainVerificationService(Ljava/util/List;Ljava/util/function/Function;)V
    .locals 7
    .param p1, "packageNames"    # Ljava/util/List;
    .param p2, "pkgSettings"    # Ljava/util/function/Function;

    .line 1434
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1435
    if-nez p1, :cond_3

    .line 1436
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    invoke-virtual {v1}, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->size()I

    move-result v1

    .line 1437
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 1438
    iget-object v3, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    invoke-virtual {v3, v2}, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    .line 1439
    .local v3, "pkgState":Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;
    invoke-virtual {v3}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 1440
    .local v4, "pkgName":Ljava/lang/String;
    invoke-interface {p2, v4}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/PackageSetting;

    .line 1441
    .local v5, "pkgSetting":Lcom/android/server/pm/PackageSetting;
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v6

    if-nez v6, :cond_0

    .line 1442
    goto :goto_1

    .line 1444
    :cond_0
    invoke-virtual {v3}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getStateMap()Landroid/util/ArrayMap;

    move-result-object v6

    invoke-direct {p0, v6, v5}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->resetDomainState(Landroid/util/ArrayMap;Lcom/android/server/pm/PackageSetting;)V

    .line 1437
    .end local v3    # "pkgState":Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;
    .end local v4    # "pkgName":Ljava/lang/String;
    .end local v5    # "pkgSetting":Lcom/android/server/pm/PackageSetting;
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1446
    .end local v1    # "size":I
    .end local v2    # "index":I
    :cond_2
    goto :goto_4

    .line 1447
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 1448
    .restart local v1    # "size":I
    const/4 v2, 0x0

    .restart local v2    # "index":I
    :goto_2
    if-ge v2, v1, :cond_6

    .line 1449
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1450
    .local v3, "pkgName":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    invoke-virtual {v4, v3}, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    .line 1451
    .local v4, "pkgState":Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;
    invoke-interface {p2, v3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/PackageSetting;

    .line 1452
    .restart local v5    # "pkgSetting":Lcom/android/server/pm/PackageSetting;
    if-eqz v5, :cond_5

    invoke-virtual {v5}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v6

    if-nez v6, :cond_4

    .line 1453
    goto :goto_3

    .line 1455
    :cond_4
    invoke-virtual {v4}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getStateMap()Landroid/util/ArrayMap;

    move-result-object v6

    invoke-direct {p0, v6, v5}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->resetDomainState(Landroid/util/ArrayMap;Lcom/android/server/pm/PackageSetting;)V

    .line 1448
    .end local v3    # "pkgName":Ljava/lang/String;
    .end local v4    # "pkgState":Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;
    .end local v5    # "pkgSetting":Lcom/android/server/pm/PackageSetting;
    :cond_5
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1458
    .end local v1    # "size":I
    .end local v2    # "index":I
    :cond_6
    :goto_4
    monitor-exit v0

    .line 1459
    return-void

    .line 1458
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public synthetic lambda$getDomainVerificationInfo$0$DomainVerificationService(Ljava/lang/String;Ljava/util/function/Function;)Landroid/content/pm/verify/domain/DomainVerificationInfo;
    .locals 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pkgSettings"    # Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 264
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 265
    :try_start_0
    invoke-interface {p2, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageSetting;

    .line 266
    .local v1, "pkgSetting":Lcom/android/server/pm/PackageSetting;
    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v3, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v3

    .line 267
    .local v3, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :goto_0
    if-eqz v3, :cond_5

    .line 271
    iget-object v4, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    invoke-virtual {v4, p1}, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    .line 272
    .local v4, "pkgState":Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;
    if-nez v4, :cond_1

    .line 273
    monitor-exit v0

    return-object v2

    .line 276
    :cond_1
    new-instance v5, Landroid/util/ArrayMap;

    invoke-virtual {v4}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getStateMap()Landroid/util/ArrayMap;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    .line 279
    .local v5, "hostToStateMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-object v6, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mCollector:Lcom/android/server/pm/verify/domain/DomainVerificationCollector;

    invoke-virtual {v6, v3}, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->collectValidAutoVerifyDomains(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Landroid/util/ArraySet;

    move-result-object v6

    .line 280
    .local v6, "domains":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {v6}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 281
    monitor-exit v0

    return-object v2

    .line 284
    :cond_2
    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    move-result v2

    .line 285
    .local v2, "size":I
    const/4 v7, 0x0

    .local v7, "index":I
    :goto_1
    if-ge v7, v2, :cond_3

    .line 286
    invoke-virtual {v6, v7}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const/4 v9, 0x0

    .line 287
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 286
    invoke-virtual {v5, v8, v9}, Landroid/util/ArrayMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 290
    .end local v7    # "index":I
    :cond_3
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v7

    .line 291
    .local v7, "mapSize":I
    const/4 v8, 0x0

    .local v8, "index":I
    :goto_2
    if-ge v8, v7, :cond_4

    .line 292
    invoke-virtual {v5, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 293
    .local v9, "internalValue":I
    invoke-static {v9}, Landroid/content/pm/verify/domain/DomainVerificationState;->convertToInfoState(I)I

    move-result v10

    .line 294
    .local v10, "publicValue":I
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v5, v8, v11}, Landroid/util/ArrayMap;->setValueAt(ILjava/lang/Object;)Ljava/lang/Object;

    .line 291
    nop

    .end local v9    # "internalValue":I
    .end local v10    # "publicValue":I
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 298
    .end local v8    # "index":I
    :cond_4
    new-instance v8, Landroid/content/pm/verify/domain/DomainVerificationInfo;

    invoke-virtual {v4}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getId()Ljava/util/UUID;

    move-result-object v9

    invoke-direct {v8, v9, p1, v5}, Landroid/content/pm/verify/domain/DomainVerificationInfo;-><init>(Ljava/util/UUID;Ljava/lang/String;Ljava/util/Map;)V

    monitor-exit v0

    return-object v8

    .line 268
    .end local v2    # "size":I
    .end local v4    # "pkgState":Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;
    .end local v5    # "hostToStateMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v6    # "domains":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v7    # "mapSize":I
    :cond_5
    invoke-static {p1}, Lcom/android/server/pm/verify/domain/DomainVerificationUtils;->throwPackageUnavailable(Ljava/lang/String;)Landroid/content/pm/PackageManager$NameNotFoundException;

    move-result-object v2

    .end local p0    # "this":Lcom/android/server/pm/verify/domain/DomainVerificationService;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "pkgSettings":Ljava/util/function/Function;
    throw v2

    .line 299
    .end local v1    # "pkgSetting":Lcom/android/server/pm/PackageSetting;
    .end local v3    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .restart local p0    # "this":Lcom/android/server/pm/verify/domain/DomainVerificationService;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "pkgSettings":Ljava/util/function/Function;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public synthetic lambda$getDomainVerificationUserState$6$DomainVerificationService(Ljava/lang/String;ILjava/util/function/Function;)Landroid/content/pm/verify/domain/DomainVerificationUserState;
    .locals 20
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "pkgSettings"    # Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 698
    move-object/from16 v1, p0

    move-object/from16 v8, p1

    iget-object v9, v1, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 699
    move-object/from16 v10, p3

    :try_start_0
    invoke-interface {v10, v8}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 700
    .local v0, "pkgSetting":Lcom/android/server/pm/PackageSetting;
    const/4 v2, 0x0

    if-nez v0, :cond_0

    move-object v3, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v3

    :goto_0
    move-object v11, v3

    .line 701
    .local v11, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-eqz v11, :cond_8

    .line 705
    iget-object v3, v1, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    invoke-virtual {v3, v8}, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    move-object v12, v3

    .line 706
    .local v12, "pkgState":Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;
    if-nez v12, :cond_1

    .line 707
    monitor-exit v9

    return-object v2

    .line 710
    :cond_1
    iget-object v2, v1, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mCollector:Lcom/android/server/pm/verify/domain/DomainVerificationCollector;

    invoke-virtual {v2, v11}, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->collectAllWebDomains(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Landroid/util/ArraySet;

    move-result-object v2

    move-object v13, v2

    .line 711
    .local v13, "webDomains":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {v13}, Landroid/util/ArraySet;->size()I

    move-result v2

    move v14, v2

    .line 713
    .local v14, "webDomainsSize":I
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2, v14}, Landroid/util/ArrayMap;-><init>(I)V

    move-object v15, v2

    .line 714
    .local v15, "domains":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-virtual {v12}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getStateMap()Landroid/util/ArrayMap;

    move-result-object v2

    move-object v7, v2

    .line 715
    .local v7, "stateMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    move/from16 v5, p2

    invoke-virtual {v12, v5}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getUserState(I)Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;

    move-result-object v2

    move-object/from16 v16, v2

    .line 717
    .local v16, "userState":Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;
    if-nez v16, :cond_2

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v2

    goto :goto_1

    :cond_2
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;->getEnabledHosts()Landroid/util/ArraySet;

    move-result-object v2

    :goto_1
    move-object v4, v2

    .line 719
    .local v4, "enabledHosts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_2
    if-ge v2, v14, :cond_5

    .line 720
    invoke-virtual {v13, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 721
    .local v3, "host":Ljava/lang/String;
    invoke-virtual {v7, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 724
    .local v6, "state":Ljava/lang/Integer;
    if-eqz v6, :cond_3

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v17

    invoke-static/range {v17 .. v17}, Landroid/content/pm/verify/domain/DomainVerificationState;->isVerified(I)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 725
    const/16 v17, 0x2

    .local v17, "domainState":I
    goto :goto_3

    .line 726
    .end local v17    # "domainState":I
    :cond_3
    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 727
    const/16 v17, 0x1

    .restart local v17    # "domainState":I
    goto :goto_3

    .line 729
    .end local v17    # "domainState":I
    :cond_4
    const/16 v17, 0x0

    .line 732
    .restart local v17    # "domainState":I
    :goto_3
    move-object/from16 v18, v0

    .end local v0    # "pkgSetting":Lcom/android/server/pm/PackageSetting;
    .local v18, "pkgSetting":Lcom/android/server/pm/PackageSetting;
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v15, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 719
    nop

    .end local v3    # "host":Ljava/lang/String;
    .end local v6    # "state":Ljava/lang/Integer;
    .end local v17    # "domainState":I
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, v18

    goto :goto_2

    .end local v18    # "pkgSetting":Lcom/android/server/pm/PackageSetting;
    .restart local v0    # "pkgSetting":Lcom/android/server/pm/PackageSetting;
    :cond_5
    move-object/from16 v18, v0

    .line 735
    .end local v0    # "pkgSetting":Lcom/android/server/pm/PackageSetting;
    .end local v2    # "index":I
    .restart local v18    # "pkgSetting":Lcom/android/server/pm/PackageSetting;
    if-eqz v16, :cond_7

    .line 736
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;->isLinkHandlingAllowed()Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_4

    :cond_6
    const/4 v0, 0x0

    goto :goto_5

    :cond_7
    :goto_4
    const/4 v0, 0x1

    :goto_5
    move v6, v0

    .line 738
    .local v6, "linkHandlingAllowed":Z
    new-instance v0, Landroid/content/pm/verify/domain/DomainVerificationUserState;

    invoke-virtual {v12}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getId()Ljava/util/UUID;

    move-result-object v3

    .line 739
    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v17

    move-object v2, v0

    move-object/from16 v19, v4

    .end local v4    # "enabledHosts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v19, "enabledHosts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v4, p1

    move-object/from16 v5, v17

    move-object/from16 v17, v7

    .end local v7    # "stateMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .local v17, "stateMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    move-object v7, v15

    invoke-direct/range {v2 .. v7}, Landroid/content/pm/verify/domain/DomainVerificationUserState;-><init>(Ljava/util/UUID;Ljava/lang/String;Landroid/os/UserHandle;ZLjava/util/Map;)V

    monitor-exit v9

    .line 738
    return-object v0

    .line 702
    .end local v6    # "linkHandlingAllowed":Z
    .end local v12    # "pkgState":Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;
    .end local v13    # "webDomains":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v14    # "webDomainsSize":I
    .end local v15    # "domains":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v16    # "userState":Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;
    .end local v17    # "stateMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v18    # "pkgSetting":Lcom/android/server/pm/PackageSetting;
    .end local v19    # "enabledHosts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v0    # "pkgSetting":Lcom/android/server/pm/PackageSetting;
    :cond_8
    move-object/from16 v18, v0

    .end local v0    # "pkgSetting":Lcom/android/server/pm/PackageSetting;
    .restart local v18    # "pkgSetting":Lcom/android/server/pm/PackageSetting;
    invoke-static/range {p1 .. p1}, Lcom/android/server/pm/verify/domain/DomainVerificationUtils;->throwPackageUnavailable(Ljava/lang/String;)Landroid/content/pm/PackageManager$NameNotFoundException;

    move-result-object v0

    .end local p0    # "this":Lcom/android/server/pm/verify/domain/DomainVerificationService;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "userId":I
    .end local p3    # "pkgSettings":Ljava/util/function/Function;
    throw v0

    .line 740
    .end local v11    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local v18    # "pkgSetting":Lcom/android/server/pm/PackageSetting;
    .restart local p0    # "this":Lcom/android/server/pm/verify/domain/DomainVerificationService;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "userId":I
    .restart local p3    # "pkgSettings":Ljava/util/function/Function;
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public synthetic lambda$getOwnersForDomain$7$DomainVerificationService(Ljava/lang/String;ILjava/util/function/Function;)Ljava/util/List;
    .locals 12
    .param p1, "domain"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "pkgSettings"    # Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 751
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->getOwnersForDomainInternal(Ljava/lang/String;ZILjava/util/function/Function;)Landroid/util/SparseArray;

    move-result-object v1

    .line 753
    .local v1, "levelToPackages":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 754
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 757
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 758
    .local v2, "owners":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/verify/domain/DomainOwner;>;"
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 759
    .local v3, "size":I
    const/4 v4, 0x0

    .local v4, "index":I
    :goto_0
    if-ge v4, v3, :cond_3

    .line 760
    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    .line 761
    .local v5, "level":I
    const/4 v6, 0x3

    if-gt v5, v6, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    move v6, v0

    .line 762
    .local v6, "overrideable":Z
    :goto_1
    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 763
    .local v7, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    .line 764
    .local v8, "packagesSize":I
    const/4 v9, 0x0

    .local v9, "packageIndex":I
    :goto_2
    if-ge v9, v8, :cond_2

    .line 765
    new-instance v10, Landroid/content/pm/verify/domain/DomainOwner;

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-direct {v10, v11, v6}, Landroid/content/pm/verify/domain/DomainOwner;-><init>(Ljava/lang/String;Z)V

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 764
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 759
    .end local v5    # "level":I
    .end local v6    # "overrideable":Z
    .end local v7    # "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "packagesSize":I
    .end local v9    # "packageIndex":I
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 769
    .end local v4    # "index":I
    :cond_3
    return-object v2
.end method

.method public synthetic lambda$printOwnersForDomains$15$DomainVerificationService(Ljava/util/List;Landroid/util/IndentingPrintWriter;Ljava/lang/Integer;Ljava/util/function/Function;)V
    .locals 4
    .param p1, "domains"    # Ljava/util/List;
    .param p2, "writer"    # Landroid/util/IndentingPrintWriter;
    .param p3, "userId"    # Ljava/lang/Integer;
    .param p4, "pkgSettings"    # Ljava/util/function/Function;

    .line 1255
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1256
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 1257
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 1258
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, p2, v3, p3, p4}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->printOwnersForDomain(Landroid/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/function/Function;)V

    .line 1257
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1260
    .end local v1    # "size":I
    .end local v2    # "index":I
    :cond_0
    monitor-exit v0

    .line 1261
    return-void

    .line 1260
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public synthetic lambda$printOwnersForPackage$14$DomainVerificationService(Ljava/lang/String;Landroid/util/IndentingPrintWriter;Ljava/lang/Integer;Ljava/util/function/Function;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "writer"    # Landroid/util/IndentingPrintWriter;
    .param p3, "userId"    # Ljava/lang/Integer;
    .param p4, "pkgSettings"    # Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 1206
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1207
    if-nez p1, :cond_1

    .line 1208
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    invoke-virtual {v1}, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->size()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1209
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 1211
    :try_start_1
    iget-object v3, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    .line 1212
    invoke-virtual {v3, v2}, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    invoke-virtual {v3}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 1211
    invoke-direct {p0, p2, v3, p3, p4}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->printOwnersForPackage(Landroid/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/function/Function;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1216
    goto :goto_1

    .line 1214
    :catch_0
    move-exception v3

    .line 1209
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1218
    .end local v1    # "size":I
    .end local v2    # "index":I
    :cond_0
    goto :goto_2

    .line 1219
    :cond_1
    :try_start_2
    invoke-direct {p0, p2, p1, p3, p4}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->printOwnersForPackage(Landroid/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/function/Function;)V

    .line 1221
    :goto_2
    monitor-exit v0

    .line 1222
    return-void

    .line 1221
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public synthetic lambda$printState$13$DomainVerificationService(Landroid/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/function/Function;)V
    .locals 0
    .param p1, "writer"    # Landroid/util/IndentingPrintWriter;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # Ljava/lang/Integer;
    .param p4, "pkgSettings"    # Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 1188
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->printState(Landroid/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/function/Function;)V

    return-void
.end method

.method public synthetic lambda$readSettings$11$DomainVerificationService(Landroid/util/TypedXmlPullParser;Ljava/util/function/Function;)V
    .locals 3
    .param p1, "parser"    # Landroid/util/TypedXmlPullParser;
    .param p2, "pkgSettings"    # Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1091
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1092
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mSettings:Lcom/android/server/pm/verify/domain/DomainVerificationSettings;

    iget-object v2, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    invoke-virtual {v1, p1, v2, p2}, Lcom/android/server/pm/verify/domain/DomainVerificationSettings;->readSettings(Landroid/util/TypedXmlPullParser;Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;Ljava/util/function/Function;)V

    .line 1093
    monitor-exit v0

    .line 1094
    return-void

    .line 1093
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public synthetic lambda$restoreSettings$12$DomainVerificationService(Landroid/util/TypedXmlPullParser;Ljava/util/function/Function;)V
    .locals 3
    .param p1, "parser"    # Landroid/util/TypedXmlPullParser;
    .param p2, "pkgSettings"    # Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1108
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1109
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mSettings:Lcom/android/server/pm/verify/domain/DomainVerificationSettings;

    iget-object v2, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    invoke-virtual {v1, p1, v2, p2}, Lcom/android/server/pm/verify/domain/DomainVerificationSettings;->restoreSettings(Landroid/util/TypedXmlPullParser;Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;Ljava/util/function/Function;)V

    .line 1110
    monitor-exit v0

    .line 1111
    return-void

    .line 1110
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public synthetic lambda$setDomainVerificationStatusInternal$1$DomainVerificationService(Ljava/util/UUID;Ljava/util/Set;IILjava/util/function/Function;)Ljava/lang/Integer;
    .locals 9
    .param p1, "domainSetId"    # Ljava/util/UUID;
    .param p2, "domains"    # Ljava/util/Set;
    .param p3, "callingUid"    # I
    .param p4, "state"    # I
    .param p5, "pkgSettings"    # Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 324
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 325
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 327
    .local v1, "verifiedDomains":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, 0x1

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v6, p3

    move-object v8, p5

    invoke-direct/range {v2 .. v8}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->getAndValidateAttachedLocked(Ljava/util/UUID;Ljava/util/Set;ZILjava/lang/Integer;Ljava/util/function/Function;)Lcom/android/server/pm/verify/domain/DomainVerificationService$GetAttachedResult;

    move-result-object v2

    .line 330
    .local v2, "result":Lcom/android/server/pm/verify/domain/DomainVerificationService$GetAttachedResult;
    invoke-virtual {v2}, Lcom/android/server/pm/verify/domain/DomainVerificationService$GetAttachedResult;->isError()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 331
    invoke-virtual {v2}, Lcom/android/server/pm/verify/domain/DomainVerificationService$GetAttachedResult;->getErrorCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    monitor-exit v0

    return-object v3

    .line 334
    :cond_0
    invoke-virtual {v2}, Lcom/android/server/pm/verify/domain/DomainVerificationService$GetAttachedResult;->getPkgState()Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    move-result-object v3

    .line 335
    .local v3, "pkgState":Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;
    invoke-virtual {v3}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getStateMap()Landroid/util/ArrayMap;

    move-result-object v4

    .line 336
    .local v4, "stateMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 337
    .local v6, "domain":Ljava/lang/String;
    invoke-virtual {v4, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 338
    .local v7, "previousState":Ljava/lang/Integer;
    if-eqz v7, :cond_1

    .line 339
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Landroid/content/pm/verify/domain/DomainVerificationState;->isModifiable(I)Z

    move-result v8

    if-nez v8, :cond_1

    .line 340
    goto :goto_0

    .line 343
    :cond_1
    invoke-static {p4}, Landroid/content/pm/verify/domain/DomainVerificationState;->isVerified(I)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 344
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 347
    :cond_2
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v6, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    nop

    .end local v6    # "domain":Ljava/lang/String;
    .end local v7    # "previousState":Ljava/lang/Integer;
    goto :goto_0

    .line 350
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    .line 351
    .local v5, "size":I
    const/4 v6, 0x0

    .local v6, "index":I
    :goto_1
    if-ge v6, v5, :cond_4

    .line 352
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->removeUserStatesForDomain(Ljava/lang/String;)V

    .line 351
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 354
    .end local v1    # "verifiedDomains":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "result":Lcom/android/server/pm/verify/domain/DomainVerificationService$GetAttachedResult;
    .end local v3    # "pkgState":Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;
    .end local v4    # "stateMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v5    # "size":I
    .end local v6    # "index":I
    :cond_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 356
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    invoke-interface {v0}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->scheduleWriteSettings()V

    .line 357
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 354
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public synthetic lambda$setDomainVerificationStatusInternal$2$DomainVerificationService(Landroid/util/ArraySet;ILandroid/util/ArraySet;Ljava/util/function/Function;)V
    .locals 10
    .param p1, "domains"    # Landroid/util/ArraySet;
    .param p2, "state"    # I
    .param p3, "verifiedDomains"    # Landroid/util/ArraySet;
    .param p4, "pkgSettings"    # Ljava/util/function/Function;

    .line 380
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 381
    :try_start_0
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 383
    .local v1, "validDomains":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    invoke-virtual {v2}, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->size()I

    move-result v2

    .line 384
    .local v2, "size":I
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_0
    if-ge v3, v2, :cond_4

    .line 385
    iget-object v4, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    invoke-virtual {v4, v3}, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    .line 386
    .local v4, "pkgState":Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;
    invoke-virtual {v4}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 387
    .local v5, "pkgName":Ljava/lang/String;
    invoke-interface {p4, v5}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/PackageSetting;

    .line 388
    .local v6, "pkgSetting":Lcom/android/server/pm/PackageSetting;
    if-eqz v6, :cond_3

    invoke-virtual {v6}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v7

    if-nez v7, :cond_0

    .line 389
    goto :goto_2

    .line 392
    :cond_0
    invoke-virtual {v6}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v7

    .line 394
    .local v7, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    .line 396
    iget-object v8, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mCollector:Lcom/android/server/pm/verify/domain/DomainVerificationCollector;

    .line 397
    invoke-virtual {v8, v7}, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->collectValidAutoVerifyDomains(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Landroid/util/ArraySet;

    move-result-object v8

    .line 398
    .local v8, "autoVerifyDomains":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-nez p1, :cond_1

    .line 399
    invoke-virtual {v1, v8}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    goto :goto_1

    .line 401
    :cond_1
    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 402
    invoke-virtual {v1, v8}, Landroid/util/ArraySet;->retainAll(Ljava/util/Collection;)Z

    .line 405
    :goto_1
    invoke-static {p2}, Landroid/content/pm/verify/domain/DomainVerificationState;->isVerified(I)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 406
    invoke-virtual {p3, v1}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 409
    :cond_2
    invoke-direct {p0, v4, p2, v1}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->setDomainVerificationStatusInternal(Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;ILandroid/util/ArraySet;)V

    .line 384
    .end local v4    # "pkgState":Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;
    .end local v5    # "pkgName":Ljava/lang/String;
    .end local v6    # "pkgSetting":Lcom/android/server/pm/PackageSetting;
    .end local v7    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local v8    # "autoVerifyDomains":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 411
    .end local v1    # "validDomains":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v2    # "size":I
    .end local v3    # "index":I
    :cond_4
    monitor-exit v0

    .line 412
    return-void

    .line 411
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public synthetic lambda$setDomainVerificationStatusInternal$3$DomainVerificationService(Ljava/lang/String;Landroid/util/ArraySet;ILandroid/util/ArraySet;Ljava/util/function/Function;)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "domains"    # Landroid/util/ArraySet;
    .param p3, "state"    # I
    .param p4, "verifiedDomains"    # Landroid/util/ArraySet;
    .param p5, "pkgSettings"    # Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 415
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 416
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    .line 417
    .local v1, "pkgState":Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;
    if-eqz v1, :cond_3

    .line 421
    invoke-interface {p5, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    .line 422
    .local v2, "pkgSetting":Lcom/android/server/pm/PackageSetting;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 426
    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v3

    .line 428
    .local v3, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-nez p2, :cond_0

    .line 429
    iget-object v4, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mCollector:Lcom/android/server/pm/verify/domain/DomainVerificationCollector;

    invoke-virtual {v4, v3}, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->collectValidAutoVerifyDomains(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Landroid/util/ArraySet;

    move-result-object v4

    .local v4, "validDomains":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    goto :goto_0

    .line 431
    .end local v4    # "validDomains":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_0
    move-object v4, p2

    .line 432
    .restart local v4    # "validDomains":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mCollector:Lcom/android/server/pm/verify/domain/DomainVerificationCollector;

    invoke-virtual {v5, v3}, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->collectValidAutoVerifyDomains(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Landroid/util/ArraySet;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->retainAll(Ljava/util/Collection;)Z

    .line 435
    :goto_0
    invoke-static {p3}, Landroid/content/pm/verify/domain/DomainVerificationState;->isVerified(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 436
    invoke-virtual {p4, v4}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 439
    :cond_1
    invoke-direct {p0, v1, p3, v4}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->setDomainVerificationStatusInternal(Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;ILandroid/util/ArraySet;)V

    .line 440
    .end local v1    # "pkgState":Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;
    .end local v2    # "pkgSetting":Lcom/android/server/pm/PackageSetting;
    .end local v3    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local v4    # "validDomains":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    monitor-exit v0

    .line 441
    return-void

    .line 423
    .restart local v1    # "pkgState":Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;
    .restart local v2    # "pkgSetting":Lcom/android/server/pm/PackageSetting;
    :cond_2
    invoke-static {p1}, Lcom/android/server/pm/verify/domain/DomainVerificationUtils;->throwPackageUnavailable(Ljava/lang/String;)Landroid/content/pm/PackageManager$NameNotFoundException;

    move-result-object v3

    .end local p0    # "this":Lcom/android/server/pm/verify/domain/DomainVerificationService;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "domains":Landroid/util/ArraySet;
    .end local p3    # "state":I
    .end local p4    # "verifiedDomains":Landroid/util/ArraySet;
    .end local p5    # "pkgSettings":Ljava/util/function/Function;
    throw v3

    .line 418
    .end local v2    # "pkgSetting":Lcom/android/server/pm/PackageSetting;
    .restart local p0    # "this":Lcom/android/server/pm/verify/domain/DomainVerificationService;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "domains":Landroid/util/ArraySet;
    .restart local p3    # "state":I
    .restart local p4    # "verifiedDomains":Landroid/util/ArraySet;
    .restart local p5    # "pkgSettings":Ljava/util/function/Function;
    :cond_3
    invoke-static {p1}, Lcom/android/server/pm/verify/domain/DomainVerificationUtils;->throwPackageUnavailable(Ljava/lang/String;)Landroid/content/pm/PackageManager$NameNotFoundException;

    move-result-object v2

    .end local p0    # "this":Lcom/android/server/pm/verify/domain/DomainVerificationService;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "domains":Landroid/util/ArraySet;
    .end local p3    # "state":I
    .end local p4    # "verifiedDomains":Landroid/util/ArraySet;
    .end local p5    # "pkgSettings":Ljava/util/function/Function;
    throw v2

    .line 440
    .end local v1    # "pkgState":Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;
    .restart local p0    # "this":Lcom/android/server/pm/verify/domain/DomainVerificationService;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "domains":Landroid/util/ArraySet;
    .restart local p3    # "state":I
    .restart local p4    # "verifiedDomains":Landroid/util/ArraySet;
    .restart local p5    # "pkgSettings":Ljava/util/function/Function;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public synthetic lambda$setDomainVerificationUserSelection$4$DomainVerificationService(Ljava/util/UUID;Ljava/util/Set;IIZLjava/util/function/Function;)Ljava/lang/Integer;
    .locals 8
    .param p1, "domainSetId"    # Ljava/util/UUID;
    .param p2, "domains"    # Ljava/util/Set;
    .param p3, "callingUid"    # I
    .param p4, "userId"    # I
    .param p5, "enabled"    # Z
    .param p6, "pkgSettings"    # Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 552
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 553
    const/4 v4, 0x0

    .line 554
    :try_start_0
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 553
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v5, p3

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->getAndValidateAttachedLocked(Ljava/util/UUID;Ljava/util/Set;ZILjava/lang/Integer;Ljava/util/function/Function;)Lcom/android/server/pm/verify/domain/DomainVerificationService$GetAttachedResult;

    move-result-object v1

    .line 555
    .local v1, "result":Lcom/android/server/pm/verify/domain/DomainVerificationService$GetAttachedResult;
    invoke-virtual {v1}, Lcom/android/server/pm/verify/domain/DomainVerificationService$GetAttachedResult;->isError()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 556
    invoke-virtual {v1}, Lcom/android/server/pm/verify/domain/DomainVerificationService$GetAttachedResult;->getErrorCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 559
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/pm/verify/domain/DomainVerificationService$GetAttachedResult;->getPkgState()Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    move-result-object v2

    .line 560
    .local v2, "pkgState":Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;
    invoke-virtual {v2, p4}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getOrCreateUserState(I)Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;

    move-result-object v3

    .line 566
    .local v3, "userState":Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;
    if-eqz p5, :cond_1

    .line 567
    invoke-direct {p0, v3, p4, p2, p6}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->revokeOtherUserSelectionsLocked(Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;ILjava/util/Set;Ljava/util/function/Function;)I

    move-result v4

    .line 569
    .local v4, "statusCode":I
    if-eqz v4, :cond_1

    .line 570
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    monitor-exit v0

    return-object v5

    .line 574
    .end local v4    # "statusCode":I
    :cond_1
    if-eqz p5, :cond_2

    .line 575
    invoke-virtual {v3, p2}, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;->addHosts(Ljava/util/Set;)Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;

    goto :goto_0

    .line 577
    :cond_2
    invoke-virtual {v3, p2}, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;->removeHosts(Ljava/util/Set;)Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;

    .line 579
    .end local v1    # "result":Lcom/android/server/pm/verify/domain/DomainVerificationService$GetAttachedResult;
    .end local v2    # "pkgState":Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;
    .end local v3    # "userState":Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 581
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    invoke-interface {v0}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->scheduleWriteSettings()V

    .line 582
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 579
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public synthetic lambda$setDomainVerificationUserSelectionInternal$5$DomainVerificationService(Ljava/lang/String;Landroid/util/ArraySet;IZLjava/util/function/Function;)V
    .locals 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "domains"    # Landroid/util/ArraySet;
    .param p3, "userId"    # I
    .param p4, "enabled"    # Z
    .param p5, "pkgSettings"    # Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 592
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 593
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    .line 594
    .local v1, "pkgState":Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;
    if-eqz v1, :cond_7

    .line 598
    invoke-interface {p5, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    .line 599
    .local v2, "pkgSetting":Lcom/android/server/pm/PackageSetting;
    if-nez v2, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v3

    .line 600
    .local v3, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :goto_0
    if-eqz v3, :cond_6

    .line 605
    if-nez p2, :cond_1

    iget-object v4, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mCollector:Lcom/android/server/pm/verify/domain/DomainVerificationCollector;

    invoke-virtual {v4, v3}, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->collectAllWebDomains(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Landroid/util/ArraySet;

    move-result-object v4

    goto :goto_1

    :cond_1
    move-object v4, p2

    .line 607
    .local v4, "validDomains":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_1
    iget-object v5, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mCollector:Lcom/android/server/pm/verify/domain/DomainVerificationCollector;

    invoke-virtual {v5, v3}, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->collectAllWebDomains(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Landroid/util/ArraySet;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 609
    const/4 v5, -0x1

    if-ne p3, v5, :cond_3

    .line 610
    iget-object v5, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    invoke-interface {v5}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->getAllUserIds()[I

    move-result-object v5

    array-length v6, v5

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v6, :cond_5

    aget v8, v5, v7

    .line 611
    .local v8, "aUserId":I
    nop

    .line 612
    invoke-virtual {v1, v8}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getOrCreateUserState(I)Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;

    move-result-object v9

    .line 613
    .local v9, "userState":Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;
    invoke-direct {p0, v9, v8, v4, p5}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->revokeOtherUserSelectionsLocked(Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;ILjava/util/Set;Ljava/util/function/Function;)I

    .line 615
    if-eqz p4, :cond_2

    .line 616
    invoke-virtual {v9, v4}, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;->addHosts(Ljava/util/Set;)Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;

    goto :goto_3

    .line 618
    :cond_2
    invoke-virtual {v9, v4}, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;->removeHosts(Ljava/util/Set;)Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;

    .line 610
    .end local v8    # "aUserId":I
    .end local v9    # "userState":Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 622
    :cond_3
    nop

    .line 623
    invoke-virtual {v1, p3}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getOrCreateUserState(I)Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;

    move-result-object v5

    .line 624
    .local v5, "userState":Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;
    invoke-direct {p0, v5, p3, v4, p5}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->revokeOtherUserSelectionsLocked(Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;ILjava/util/Set;Ljava/util/function/Function;)I

    .line 625
    if-eqz p4, :cond_4

    .line 626
    invoke-virtual {v5, v4}, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;->addHosts(Ljava/util/Set;)Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;

    goto :goto_4

    .line 628
    :cond_4
    invoke-virtual {v5, v4}, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;->removeHosts(Ljava/util/Set;)Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;

    .line 631
    .end local v1    # "pkgState":Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;
    .end local v2    # "pkgSetting":Lcom/android/server/pm/PackageSetting;
    .end local v3    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local v4    # "validDomains":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v5    # "userState":Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;
    :cond_5
    :goto_4
    monitor-exit v0

    .line 632
    return-void

    .line 601
    .restart local v1    # "pkgState":Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;
    .restart local v2    # "pkgSetting":Lcom/android/server/pm/PackageSetting;
    .restart local v3    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :cond_6
    invoke-static {p1}, Lcom/android/server/pm/verify/domain/DomainVerificationUtils;->throwPackageUnavailable(Ljava/lang/String;)Landroid/content/pm/PackageManager$NameNotFoundException;

    move-result-object v4

    .end local p0    # "this":Lcom/android/server/pm/verify/domain/DomainVerificationService;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "domains":Landroid/util/ArraySet;
    .end local p3    # "userId":I
    .end local p4    # "enabled":Z
    .end local p5    # "pkgSettings":Ljava/util/function/Function;
    throw v4

    .line 595
    .end local v2    # "pkgSetting":Lcom/android/server/pm/PackageSetting;
    .end local v3    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .restart local p0    # "this":Lcom/android/server/pm/verify/domain/DomainVerificationService;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "domains":Landroid/util/ArraySet;
    .restart local p3    # "userId":I
    .restart local p4    # "enabled":Z
    .restart local p5    # "pkgSettings":Ljava/util/function/Function;
    :cond_7
    invoke-static {p1}, Lcom/android/server/pm/verify/domain/DomainVerificationUtils;->throwPackageUnavailable(Ljava/lang/String;)Landroid/content/pm/PackageManager$NameNotFoundException;

    move-result-object v2

    .end local p0    # "this":Lcom/android/server/pm/verify/domain/DomainVerificationService;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "domains":Landroid/util/ArraySet;
    .end local p3    # "userId":I
    .end local p4    # "enabled":Z
    .end local p5    # "pkgSettings":Ljava/util/function/Function;
    throw v2

    .line 631
    .end local v1    # "pkgState":Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;
    .restart local p0    # "this":Lcom/android/server/pm/verify/domain/DomainVerificationService;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "domains":Landroid/util/ArraySet;
    .restart local p3    # "userId":I
    .restart local p4    # "enabled":Z
    .restart local p5    # "pkgSettings":Ljava/util/function/Function;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public synthetic lambda$writeSettings$10$DomainVerificationService(ZLandroid/util/TypedXmlSerializer;ILjava/util/function/Function;)V
    .locals 4
    .param p1, "includeSignatures"    # Z
    .param p2, "serializer"    # Landroid/util/TypedXmlSerializer;
    .param p3, "userId"    # I
    .param p4, "pkgSettings"    # Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1061
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1062
    const/4 v1, 0x0

    .line 1063
    .local v1, "pkgNameToSignature":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 1064
    :try_start_0
    new-instance v2, Lcom/android/server/pm/verify/domain/DomainVerificationService$$ExternalSyntheticLambda16;

    invoke-direct {v2, p4}, Lcom/android/server/pm/verify/domain/DomainVerificationService$$ExternalSyntheticLambda16;-><init>(Ljava/util/function/Function;)V

    move-object v1, v2

    .line 1079
    :cond_0
    iget-object v2, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mSettings:Lcom/android/server/pm/verify/domain/DomainVerificationSettings;

    iget-object v3, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    invoke-virtual {v2, p2, v3, p3, v1}, Lcom/android/server/pm/verify/domain/DomainVerificationSettings;->writeSettings(Landroid/util/TypedXmlSerializer;Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;ILjava/util/function/Function;)V

    .line 1080
    .end local v1    # "pkgNameToSignature":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/lang/String;Ljava/lang/String;>;"
    monitor-exit v0

    .line 1081
    return-void

    .line 1080
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public migrateState(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;)V
    .locals 29
    .param p1, "oldPkgSetting"    # Lcom/android/server/pm/PackageSetting;
    .param p2, "newPkgSetting"    # Lcom/android/server/pm/PackageSetting;

    .line 846
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/pm/PackageSetting;->getName()Ljava/lang/String;

    move-result-object v10

    .line 849
    .local v10, "pkgName":Ljava/lang/String;
    iget-object v11, v1, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLock:Ljava/lang/Object;

    monitor-enter v11

    .line 850
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/PackageSetting;->getDomainSetId()Ljava/util/UUID;

    move-result-object v0

    .line 851
    .local v0, "oldDomainSetId":Ljava/util/UUID;
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/pm/PackageSetting;->getDomainSetId()Ljava/util/UUID;

    move-result-object v3

    move-object v12, v3

    .line 852
    .local v12, "newDomainSetId":Ljava/util/UUID;
    iget-object v3, v1, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    invoke-virtual {v3, v0}, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->remove(Ljava/util/UUID;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    move-object v13, v3

    .line 854
    .local v13, "oldPkgState":Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v3

    move-object v14, v3

    .line 855
    .local v14, "oldPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v3

    move-object v15, v3

    .line 857
    .local v15, "newPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    move-object v9, v3

    .line 858
    .local v9, "newStateMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    move-object v8, v3

    .line 860
    .local v8, "newUserStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;>;"
    if-eqz v13, :cond_9

    if-eqz v14, :cond_9

    if-nez v15, :cond_0

    move-object/from16 v18, v0

    move-object/from16 v27, v8

    move-object/from16 v28, v9

    move-object/from16 v22, v14

    move-object/from16 v24, v15

    goto/16 :goto_5

    .line 875
    :cond_0
    invoke-virtual {v13}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getStateMap()Landroid/util/ArrayMap;

    move-result-object v3

    move-object v7, v3

    .line 876
    .local v7, "oldStateMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-object v3, v1, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mCollector:Lcom/android/server/pm/verify/domain/DomainVerificationCollector;

    .line 877
    invoke-virtual {v3, v15}, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->collectValidAutoVerifyDomains(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Landroid/util/ArraySet;

    move-result-object v3

    move-object v6, v3

    .line 878
    .local v6, "newAutoVerifyDomains":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    move-result v3

    move v5, v3

    .line 880
    .local v5, "newDomainsSize":I
    const/4 v3, 0x0

    .local v3, "newDomainsIndex":I
    :goto_0
    if-ge v3, v5, :cond_3

    .line 881
    invoke-virtual {v6, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 882
    .local v4, "domain":Ljava/lang/String;
    invoke-virtual {v7, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    .line 883
    .local v16, "oldStateInteger":Ljava/lang/Integer;
    if-eqz v16, :cond_2

    .line 884
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v17

    .line 889
    .local v17, "oldState":I
    invoke-static/range {v17 .. v17}, Landroid/content/pm/verify/domain/DomainVerificationState;->shouldMigrate(I)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 890
    move-object/from16 v18, v0

    .end local v0    # "oldDomainSetId":Ljava/util/UUID;
    .local v18, "oldDomainSetId":Ljava/util/UUID;
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v9, v4, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 889
    .end local v18    # "oldDomainSetId":Ljava/util/UUID;
    .restart local v0    # "oldDomainSetId":Ljava/util/UUID;
    :cond_1
    move-object/from16 v18, v0

    .end local v0    # "oldDomainSetId":Ljava/util/UUID;
    .restart local v18    # "oldDomainSetId":Ljava/util/UUID;
    goto :goto_1

    .line 883
    .end local v17    # "oldState":I
    .end local v18    # "oldDomainSetId":Ljava/util/UUID;
    .restart local v0    # "oldDomainSetId":Ljava/util/UUID;
    :cond_2
    move-object/from16 v18, v0

    .line 880
    .end local v0    # "oldDomainSetId":Ljava/util/UUID;
    .end local v4    # "domain":Ljava/lang/String;
    .end local v16    # "oldStateInteger":Ljava/lang/Integer;
    .restart local v18    # "oldDomainSetId":Ljava/util/UUID;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, v18

    goto :goto_0

    .end local v18    # "oldDomainSetId":Ljava/util/UUID;
    .restart local v0    # "oldDomainSetId":Ljava/util/UUID;
    :cond_3
    move-object/from16 v18, v0

    .line 895
    .end local v0    # "oldDomainSetId":Ljava/util/UUID;
    .end local v3    # "newDomainsIndex":I
    .restart local v18    # "oldDomainSetId":Ljava/util/UUID;
    nop

    .line 896
    invoke-virtual {v13}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getUserStates()Landroid/util/SparseArray;

    move-result-object v0

    .line 897
    .local v0, "oldUserStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;>;"
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v3

    move v4, v3

    .line 898
    .local v4, "oldUserStatesSize":I
    if-lez v4, :cond_5

    .line 899
    iget-object v3, v1, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mCollector:Lcom/android/server/pm/verify/domain/DomainVerificationCollector;

    invoke-virtual {v3, v15}, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->collectValidAutoVerifyDomains(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Landroid/util/ArraySet;

    move-result-object v3

    .line 900
    .local v3, "newWebDomains":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/16 v16, 0x0

    move-object/from16 v17, v7

    move/from16 v7, v16

    .local v7, "oldUserStatesIndex":I
    .local v17, "oldStateMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :goto_2
    if-ge v7, v4, :cond_4

    .line 902
    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v16

    move/from16 v19, v16

    .line 903
    .local v19, "userId":I
    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;

    .line 905
    .local v16, "oldUserState":Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;->getEnabledHosts()Landroid/util/ArraySet;

    move-result-object v20

    move-object/from16 v21, v20

    .line 906
    .local v21, "oldEnabledHosts":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    move-object/from16 v20, v0

    .end local v0    # "oldUserStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;>;"
    .local v20, "oldUserStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;>;"
    new-instance v0, Landroid/util/ArraySet;

    move/from16 v22, v4

    move-object/from16 v4, v21

    .end local v21    # "oldEnabledHosts":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v4, "oldEnabledHosts":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v22, "oldUserStatesSize":I
    invoke-direct {v0, v4}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    .line 907
    .local v0, "newEnabledHosts":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->retainAll(Ljava/util/Collection;)Z

    .line 908
    move-object/from16 v21, v3

    .end local v3    # "newWebDomains":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v21, "newWebDomains":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    new-instance v3, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;

    .line 910
    move-object/from16 v23, v4

    .end local v4    # "oldEnabledHosts":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v23, "oldEnabledHosts":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;->isLinkHandlingAllowed()Z

    move-result v4

    move-object/from16 v24, v15

    move/from16 v15, v19

    .end local v19    # "userId":I
    .local v15, "userId":I
    .local v24, "newPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    invoke-direct {v3, v15, v0, v4}, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;-><init>(ILandroid/util/ArraySet;Z)V

    .line 911
    .local v3, "newUserState":Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;
    invoke-virtual {v8, v15, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 901
    .end local v0    # "newEnabledHosts":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v3    # "newUserState":Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;
    .end local v15    # "userId":I
    .end local v16    # "oldUserState":Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;
    .end local v23    # "oldEnabledHosts":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, v20

    move-object/from16 v3, v21

    move/from16 v4, v22

    move-object/from16 v15, v24

    goto :goto_2

    .line 900
    .end local v20    # "oldUserStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;>;"
    .end local v21    # "newWebDomains":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v22    # "oldUserStatesSize":I
    .end local v24    # "newPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .local v0, "oldUserStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;>;"
    .local v3, "newWebDomains":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v4, "oldUserStatesSize":I
    .local v15, "newPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :cond_4
    move-object/from16 v20, v0

    move-object/from16 v21, v3

    move/from16 v22, v4

    move-object/from16 v24, v15

    .end local v0    # "oldUserStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;>;"
    .end local v3    # "newWebDomains":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v4    # "oldUserStatesSize":I
    .end local v15    # "newPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .restart local v20    # "oldUserStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;>;"
    .restart local v21    # "newWebDomains":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v22    # "oldUserStatesSize":I
    .restart local v24    # "newPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    goto :goto_3

    .line 898
    .end local v17    # "oldStateMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v20    # "oldUserStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;>;"
    .end local v21    # "newWebDomains":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v22    # "oldUserStatesSize":I
    .end local v24    # "newPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .restart local v0    # "oldUserStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;>;"
    .restart local v4    # "oldUserStatesSize":I
    .local v7, "oldStateMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v15    # "newPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :cond_5
    move-object/from16 v20, v0

    move/from16 v22, v4

    move-object/from16 v17, v7

    move-object/from16 v24, v15

    .line 915
    .end local v0    # "oldUserStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;>;"
    .end local v4    # "oldUserStatesSize":I
    .end local v7    # "oldStateMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v15    # "newPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .restart local v17    # "oldStateMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v20    # "oldUserStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;>;"
    .restart local v22    # "oldUserStatesSize":I
    .restart local v24    # "newPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :goto_3
    const/4 v0, 0x0

    const/4 v3, 0x1

    if-lez v5, :cond_6

    move v4, v3

    goto :goto_4

    :cond_6
    move v4, v0

    :goto_4
    move v15, v4

    .line 916
    .local v15, "hasAutoVerifyDomains":Z
    nop

    .line 917
    invoke-direct {v1, v2, v9, v6}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->applyImmutableState(Lcom/android/server/pm/PackageSetting;Landroid/util/ArrayMap;Landroid/util/ArraySet;)Z

    move-result v4

    move/from16 v16, v4

    .line 919
    .local v16, "needsBroadcast":Z
    if-eqz v15, :cond_7

    if-eqz v16, :cond_7

    move v0, v3

    .line 921
    .local v0, "sendBroadcast":Z
    :cond_7
    iget-object v7, v1, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    new-instance v4, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    const/16 v19, 0x0

    move-object v3, v4

    move/from16 v21, v22

    move-object/from16 v22, v14

    move-object v14, v4

    .end local v14    # "oldPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .local v21, "oldUserStatesSize":I
    .local v22, "oldPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    move-object v4, v10

    move/from16 v23, v5

    .end local v5    # "newDomainsSize":I
    .local v23, "newDomainsSize":I
    move-object v5, v12

    move-object/from16 v25, v6

    .end local v6    # "newAutoVerifyDomains":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v25, "newAutoVerifyDomains":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    move v6, v15

    move/from16 v26, v15

    move-object v15, v7

    .end local v15    # "hasAutoVerifyDomains":Z
    .local v26, "hasAutoVerifyDomains":Z
    move-object v7, v9

    move-object/from16 v27, v8

    .end local v8    # "newUserStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;>;"
    .local v27, "newUserStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;>;"
    move-object/from16 v28, v9

    .end local v9    # "newStateMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .local v28, "newStateMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    move-object/from16 v9, v19

    invoke-direct/range {v3 .. v9}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;-><init>(Ljava/lang/String;Ljava/util/UUID;ZLandroid/util/ArrayMap;Landroid/util/SparseArray;Ljava/lang/String;)V

    invoke-virtual {v15, v10, v12, v14}, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->put(Ljava/lang/String;Ljava/util/UUID;Ljava/lang/Object;)V

    .line 924
    .end local v12    # "newDomainSetId":Ljava/util/UUID;
    .end local v13    # "oldPkgState":Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;
    .end local v16    # "needsBroadcast":Z
    .end local v17    # "oldStateMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v18    # "oldDomainSetId":Ljava/util/UUID;
    .end local v20    # "oldUserStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;>;"
    .end local v21    # "oldUserStatesSize":I
    .end local v22    # "oldPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local v23    # "newDomainsSize":I
    .end local v24    # "newPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local v25    # "newAutoVerifyDomains":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v26    # "hasAutoVerifyDomains":Z
    .end local v27    # "newUserStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;>;"
    .end local v28    # "newStateMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 926
    if-eqz v0, :cond_8

    .line 927
    invoke-direct {v1, v10}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->sendBroadcast(Ljava/lang/String;)V

    .line 929
    :cond_8
    return-void

    .line 860
    .local v0, "oldDomainSetId":Ljava/util/UUID;
    .restart local v8    # "newUserStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;>;"
    .restart local v9    # "newStateMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v12    # "newDomainSetId":Ljava/util/UUID;
    .restart local v13    # "oldPkgState":Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;
    .restart local v14    # "oldPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .local v15, "newPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :cond_9
    move-object/from16 v18, v0

    move-object/from16 v27, v8

    move-object/from16 v28, v9

    move-object/from16 v22, v14

    move-object/from16 v24, v15

    .line 862
    .end local v0    # "oldDomainSetId":Ljava/util/UUID;
    .end local v8    # "newUserStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;>;"
    .end local v9    # "newStateMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v14    # "oldPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local v15    # "newPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .restart local v18    # "oldDomainSetId":Ljava/util/UUID;
    .restart local v22    # "oldPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .restart local v24    # "newPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .restart local v27    # "newUserStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;>;"
    .restart local v28    # "newStateMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :goto_5
    :try_start_1
    const-string v0, "DomainVerificationService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid state nullability old state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", old pkgSetting = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v14, p1

    :try_start_2
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", new pkgSetting = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", old pkg = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v15, v22

    .end local v22    # "oldPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .local v15, "oldPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", new pkg = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v9, v24

    .end local v24    # "newPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .local v9, "newPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/Exception;

    invoke-direct {v4}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0, v3, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 868
    new-instance v0, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    const/4 v6, 0x1

    const/16 v16, 0x0

    move-object v3, v0

    move-object v4, v10

    move-object v5, v12

    move-object/from16 v7, v28

    move-object/from16 v8, v27

    move-object/from16 v17, v9

    .end local v9    # "newPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .local v17, "newPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    move-object/from16 v9, v16

    invoke-direct/range {v3 .. v9}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;-><init>(Ljava/lang/String;Ljava/util/UUID;ZLandroid/util/ArrayMap;Landroid/util/SparseArray;Ljava/lang/String;)V

    .line 871
    .local v0, "newPkgState":Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;
    iget-object v3, v1, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    invoke-virtual {v3, v10, v12, v0}, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->put(Ljava/lang/String;Ljava/util/UUID;Ljava/lang/Object;)V

    .line 872
    monitor-exit v11

    return-void

    .line 924
    .end local v0    # "newPkgState":Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;
    .end local v12    # "newDomainSetId":Ljava/util/UUID;
    .end local v13    # "oldPkgState":Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;
    .end local v15    # "oldPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local v17    # "newPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local v18    # "oldDomainSetId":Ljava/util/UUID;
    .end local v27    # "newUserStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;>;"
    .end local v28    # "newStateMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v0

    move-object/from16 v14, p1

    :goto_6
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_6
.end method

.method public onBootPhase(I)V
    .locals 2
    .param p1, "phase"    # I

    .line 194
    invoke-super {p0, p1}, Lcom/android/server/SystemService;->onBootPhase(I)V

    .line 195
    invoke-direct {p0}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->hasRealVerifier()Z

    move-result v0

    if-nez v0, :cond_0

    .line 196
    return-void

    .line 199
    :cond_0
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 204
    :sswitch_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->verifyPackages(Ljava/util/List;Z)V

    goto :goto_0

    .line 201
    :sswitch_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mCanSendBroadcasts:Z

    .line 202
    nop

    .line 207
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x226 -> :sswitch_1
        0x3e8 -> :sswitch_0
    .end sparse-switch
.end method

.method public onStart()V
    .locals 2

    .line 172
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mStub:Landroid/content/pm/verify/domain/IDomainVerificationManager$Stub;

    const-string v1, "domain_verification"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 173
    return-void
.end method

.method public onUserUnlocked(Lcom/android/server/SystemService$TargetUser;)V
    .locals 2
    .param p1, "user"    # Lcom/android/server/SystemService$TargetUser;

    .line 211
    invoke-super {p0, p1}, Lcom/android/server/SystemService;->onUserUnlocked(Lcom/android/server/SystemService$TargetUser;)V

    .line 221
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->verifyPackages(Ljava/util/List;Z)V

    .line 222
    return-void
.end method

.method public printOwnersForDomains(Landroid/util/IndentingPrintWriter;Ljava/util/List;Ljava/lang/Integer;)V
    .locals 2
    .param p1, "writer"    # Landroid/util/IndentingPrintWriter;
    .param p3, "userId"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/IndentingPrintWriter;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    .line 1254
    .local p2, "domains":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    new-instance v1, Lcom/android/server/pm/verify/domain/DomainVerificationService$$ExternalSyntheticLambda15;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/android/server/pm/verify/domain/DomainVerificationService$$ExternalSyntheticLambda15;-><init>(Lcom/android/server/pm/verify/domain/DomainVerificationService;Ljava/util/List;Landroid/util/IndentingPrintWriter;Ljava/lang/Integer;)V

    invoke-interface {v0, v1}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->withPackageSettingsSnapshot(Ljava/util/function/Consumer;)V

    .line 1262
    return-void
.end method

.method public printOwnersForPackage(Landroid/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 2
    .param p1, "writer"    # Landroid/util/IndentingPrintWriter;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 1205
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    new-instance v1, Lcom/android/server/pm/verify/domain/DomainVerificationService$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/android/server/pm/verify/domain/DomainVerificationService$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/pm/verify/domain/DomainVerificationService;Ljava/lang/String;Landroid/util/IndentingPrintWriter;Ljava/lang/Integer;)V

    invoke-interface {v0, v1}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->withPackageSettingsSnapshotThrowing(Lcom/android/internal/util/FunctionalUtils$ThrowingCheckedConsumer;)V

    .line 1223
    return-void
.end method

.method public printState(Landroid/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 2
    .param p1, "writer"    # Landroid/util/IndentingPrintWriter;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 1187
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    new-instance v1, Lcom/android/server/pm/verify/domain/DomainVerificationService$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/pm/verify/domain/DomainVerificationService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/pm/verify/domain/DomainVerificationService;Landroid/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-interface {v0, v1}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->withPackageSettingsSnapshotThrowing(Lcom/android/internal/util/FunctionalUtils$ThrowingCheckedConsumer;)V

    .line 1189
    return-void
.end method

.method public printState(Landroid/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/function/Function;)V
    .locals 7
    .param p1, "writer"    # Landroid/util/IndentingPrintWriter;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/IndentingPrintWriter;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageSetting;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 1196
    .local p4, "pkgSettingFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1197
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mDebug:Lcom/android/server/pm/verify/domain/DomainVerificationDebug;

    iget-object v6, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/verify/domain/DomainVerificationDebug;->printState(Landroid/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/function/Function;Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;)V

    .line 1198
    monitor-exit v0

    .line 1199
    return-void

    .line 1198
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public queryValidVerificationPackageNames()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 231
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mEnforcer:Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;

    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    invoke-interface {v1}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->getCallingUid()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mProxy:Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;->assertApprovedVerifier(ILcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;)V

    .line 232
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 233
    .local v0, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 234
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    invoke-virtual {v2}, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->size()I

    move-result v2

    .line 235
    .local v2, "size":I
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 236
    iget-object v4, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    invoke-virtual {v4, v3}, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    .line 237
    .local v4, "pkgState":Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;
    invoke-virtual {v4}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->isHasAutoVerifyDomains()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 238
    invoke-virtual {v4}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    .end local v4    # "pkgState":Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 241
    .end local v2    # "size":I
    .end local v3    # "index":I
    :cond_1
    monitor-exit v1

    .line 242
    return-object v0

    .line 241
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public readLegacySettings(Landroid/util/TypedXmlPullParser;)V
    .locals 1
    .param p1, "parser"    # Landroid/util/TypedXmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1100
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLegacySettings:Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings;->readSettings(Landroid/util/TypedXmlPullParser;)V

    .line 1101
    return-void
.end method

.method public readSettings(Landroid/util/TypedXmlPullParser;)V
    .locals 2
    .param p1, "parser"    # Landroid/util/TypedXmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1089
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    new-instance v1, Lcom/android/server/pm/verify/domain/DomainVerificationService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/pm/verify/domain/DomainVerificationService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/verify/domain/DomainVerificationService;Landroid/util/TypedXmlPullParser;)V

    invoke-interface {v0, v1}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->withPackageSettingsSnapshotThrowing2(Lcom/android/internal/util/FunctionalUtils$ThrowingChecked2Consumer;)V

    .line 1095
    return-void
.end method

.method public restoreSettings(Landroid/util/TypedXmlPullParser;)V
    .locals 2
    .param p1, "parser"    # Landroid/util/TypedXmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1106
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    new-instance v1, Lcom/android/server/pm/verify/domain/DomainVerificationService$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/pm/verify/domain/DomainVerificationService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/verify/domain/DomainVerificationService;Landroid/util/TypedXmlPullParser;)V

    invoke-interface {v0, v1}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->withPackageSettingsSnapshotThrowing2(Lcom/android/internal/util/FunctionalUtils$ThrowingChecked2Consumer;)V

    .line 1112
    return-void
.end method

.method public runMessage(ILjava/lang/Object;)Z
    .locals 1
    .param p1, "messageCode"    # I
    .param p2, "object"    # Ljava/lang/Object;

    .line 1181
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mProxy:Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;

    invoke-interface {v0, p1, p2}, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;->runMessage(ILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setConnection(Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;)V
    .locals 2
    .param p1, "connection"    # Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    .line 177
    sget-boolean v0, Landroid/os/Build;->IS_USERDEBUG:Z

    if-nez v0, :cond_1

    sget-boolean v0, Landroid/os/Build;->IS_ENG:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 180
    :cond_0
    iput-object p1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    goto :goto_1

    .line 178
    :cond_1
    :goto_0
    new-instance v0, Lcom/android/server/pm/verify/domain/DomainVerificationService$LockSafeConnection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/server/pm/verify/domain/DomainVerificationService$LockSafeConnection;-><init>(Lcom/android/server/pm/verify/domain/DomainVerificationService;Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;Lcom/android/server/pm/verify/domain/DomainVerificationService$1;)V

    iput-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    .line 183
    :goto_1
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mEnforcer:Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;

    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    invoke-virtual {v0, v1}, Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;->setCallback(Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer$Callback;)V

    .line 184
    return-void
.end method

.method public setDomainVerificationLinkHandlingAllowed(Ljava/lang/String;ZI)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "allowed"    # Z
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 480
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mEnforcer:Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;

    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    invoke-interface {v1}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->getCallingUid()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    .line 481
    invoke-interface {v2}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->getCallingUserId()I

    move-result v2

    .line 480
    invoke-virtual {v0, v1, v2, p1, p3}, Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;->assertApprovedUserSelector(IILjava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 484
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 485
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    .line 486
    .local v1, "pkgState":Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;
    if-eqz v1, :cond_0

    .line 490
    invoke-virtual {v1, p3}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getOrCreateUserState(I)Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;

    move-result-object v2

    .line 491
    invoke-virtual {v2, p2}, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;->setLinkHandlingAllowed(Z)Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;

    .line 492
    nop

    .end local v1    # "pkgState":Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 494
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    invoke-interface {v0}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->scheduleWriteSettings()V

    .line 495
    return-void

    .line 487
    .restart local v1    # "pkgState":Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;
    :cond_0
    :try_start_1
    invoke-static {p1}, Lcom/android/server/pm/verify/domain/DomainVerificationUtils;->throwPackageUnavailable(Ljava/lang/String;)Landroid/content/pm/PackageManager$NameNotFoundException;

    move-result-object v2

    .end local p0    # "this":Lcom/android/server/pm/verify/domain/DomainVerificationService;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "allowed":Z
    .end local p3    # "userId":I
    throw v2

    .line 492
    .end local v1    # "pkgState":Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;
    .restart local p0    # "this":Lcom/android/server/pm/verify/domain/DomainVerificationService;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "allowed":Z
    .restart local p3    # "userId":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 482
    :cond_1
    invoke-static {p1}, Lcom/android/server/pm/verify/domain/DomainVerificationUtils;->throwPackageUnavailable(Ljava/lang/String;)Landroid/content/pm/PackageManager$NameNotFoundException;

    move-result-object v0

    throw v0
.end method

.method public setDomainVerificationLinkHandlingAllowedInternal(Ljava/lang/String;ZI)V
    .locals 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "allowed"    # Z
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 500
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mEnforcer:Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;

    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    invoke-interface {v1}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;->assertInternal(I)V

    .line 501
    const/4 v0, 0x0

    const/4 v1, -0x1

    if-nez p1, :cond_3

    .line 502
    iget-object v2, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 503
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    invoke-virtual {v3}, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->size()I

    move-result v3

    .line 504
    .local v3, "pkgStateSize":I
    const/4 v4, 0x0

    .local v4, "pkgStateIndex":I
    :goto_0
    if-ge v4, v3, :cond_2

    .line 505
    iget-object v5, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    invoke-virtual {v5, v4}, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    .line 506
    .local v5, "pkgState":Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;
    if-ne p3, v1, :cond_0

    .line 507
    iget-object v6, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    invoke-interface {v6}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->getAllUserIds()[I

    move-result-object v6

    array-length v7, v6

    move v8, v0

    :goto_1
    if-ge v8, v7, :cond_1

    aget v9, v6, v8

    .line 508
    .local v9, "aUserId":I
    invoke-virtual {v5, v9}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getOrCreateUserState(I)Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;

    move-result-object v10

    .line 509
    invoke-virtual {v10, p2}, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;->setLinkHandlingAllowed(Z)Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;

    .line 507
    nop

    .end local v9    # "aUserId":I
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 512
    :cond_0
    invoke-virtual {v5, p3}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getOrCreateUserState(I)Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;

    move-result-object v6

    .line 513
    invoke-virtual {v6, p2}, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;->setLinkHandlingAllowed(Z)Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;

    .line 504
    .end local v5    # "pkgState":Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 516
    .end local v3    # "pkgStateSize":I
    .end local v4    # "pkgStateIndex":I
    :cond_2
    monitor-exit v2

    goto :goto_3

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 518
    :cond_3
    iget-object v2, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 519
    :try_start_1
    iget-object v3, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    invoke-virtual {v3, p1}, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    .line 520
    .local v3, "pkgState":Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;
    if-eqz v3, :cond_6

    .line 524
    if-ne p3, v1, :cond_4

    .line 525
    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    invoke-interface {v1}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->getAllUserIds()[I

    move-result-object v1

    array-length v4, v1

    :goto_2
    if-ge v0, v4, :cond_5

    aget v5, v1, v0

    .line 526
    .local v5, "aUserId":I
    invoke-virtual {v3, v5}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getOrCreateUserState(I)Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;

    move-result-object v6

    .line 527
    invoke-virtual {v6, p2}, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;->setLinkHandlingAllowed(Z)Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;

    .line 525
    nop

    .end local v5    # "aUserId":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 530
    :cond_4
    invoke-virtual {v3, p3}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getOrCreateUserState(I)Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;

    move-result-object v0

    .line 531
    invoke-virtual {v0, p2}, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;->setLinkHandlingAllowed(Z)Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;

    .line 533
    .end local v3    # "pkgState":Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;
    :cond_5
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 536
    :goto_3
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    invoke-interface {v0}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->scheduleWriteSettings()V

    .line 537
    return-void

    .line 521
    .restart local v3    # "pkgState":Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;
    :cond_6
    :try_start_2
    invoke-static {p1}, Lcom/android/server/pm/verify/domain/DomainVerificationUtils;->throwPackageUnavailable(Ljava/lang/String;)Landroid/content/pm/PackageManager$NameNotFoundException;

    move-result-object v0

    .end local p0    # "this":Lcom/android/server/pm/verify/domain/DomainVerificationService;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "allowed":Z
    .end local p3    # "userId":I
    throw v0

    .line 533
    .end local v3    # "pkgState":Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;
    .restart local p0    # "this":Lcom/android/server/pm/verify/domain/DomainVerificationService;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "allowed":Z
    .restart local p3    # "userId":I
    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public setDomainVerificationStatus(Ljava/util/UUID;Ljava/util/Set;I)I
    .locals 3
    .param p1, "domainSetId"    # Ljava/util/UUID;
    .param p3, "state"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;I)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 306
    .local p2, "domains":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/16 v0, 0x400

    if-ge p3, v0, :cond_1

    .line 307
    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    goto :goto_0

    .line 308
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Caller is not allowed to set state code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 313
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    invoke-interface {v0}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->setDomainVerificationStatusInternal(ILjava/util/UUID;Ljava/util/Set;I)I

    move-result v0

    return v0
.end method

.method public setDomainVerificationStatusInternal(ILjava/util/UUID;Ljava/util/Set;I)I
    .locals 8
    .param p1, "callingUid"    # I
    .param p2, "domainSetId"    # Ljava/util/UUID;
    .param p4, "state"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/UUID;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;I)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 322
    .local p3, "domains":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mEnforcer:Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;

    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mProxy:Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;

    invoke-virtual {v0, p1, v1}, Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;->assertApprovedVerifier(ILcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;)V

    .line 323
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    new-instance v7, Lcom/android/server/pm/verify/domain/DomainVerificationService$$ExternalSyntheticLambda10;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move v5, p1

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/pm/verify/domain/DomainVerificationService$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/pm/verify/domain/DomainVerificationService;Ljava/util/UUID;Ljava/util/Set;II)V

    invoke-interface {v0, v7}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->withPackageSettingsSnapshotReturningThrowing(Lcom/android/internal/util/FunctionalUtils$ThrowingCheckedFunction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public setDomainVerificationStatusInternal(Ljava/lang/String;ILandroid/util/ArraySet;)V
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "state"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 364
    .local p3, "domains":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mEnforcer:Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;

    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    invoke-interface {v1}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;->assertInternal(I)V

    .line 366
    packed-switch p2, :pswitch_data_0

    .line 373
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "State must be one of NO_RESPONSE, SUCCESS, APPROVED, or DENIED"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 371
    :pswitch_0
    nop

    .line 377
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 378
    .local v0, "verifiedDomains":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 379
    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    new-instance v2, Lcom/android/server/pm/verify/domain/DomainVerificationService$$ExternalSyntheticLambda13;

    invoke-direct {v2, p0, p3, p2, v0}, Lcom/android/server/pm/verify/domain/DomainVerificationService$$ExternalSyntheticLambda13;-><init>(Lcom/android/server/pm/verify/domain/DomainVerificationService;Landroid/util/ArraySet;ILandroid/util/ArraySet;)V

    invoke-interface {v1, v2}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->withPackageSettingsSnapshot(Ljava/util/function/Consumer;)V

    goto :goto_0

    .line 414
    :cond_0
    iget-object v7, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    new-instance v8, Lcom/android/server/pm/verify/domain/DomainVerificationService$$ExternalSyntheticLambda3;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p3

    move v5, p2

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/pm/verify/domain/DomainVerificationService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/pm/verify/domain/DomainVerificationService;Ljava/lang/String;Landroid/util/ArraySet;ILandroid/util/ArraySet;)V

    invoke-interface {v7, v8}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->withPackageSettingsSnapshotThrowing(Lcom/android/internal/util/FunctionalUtils$ThrowingCheckedConsumer;)V

    .line 445
    :goto_0
    invoke-static {p2}, Landroid/content/pm/verify/domain/DomainVerificationState;->isVerified(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 446
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v1

    .line 447
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_1
    if-ge v2, v1, :cond_1

    .line 448
    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->removeUserStatesForDomain(Ljava/lang/String;)V

    .line 447
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 452
    .end local v1    # "size":I
    .end local v2    # "index":I
    :cond_1
    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    invoke-interface {v1}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->scheduleWriteSettings()V

    .line 453
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setDomainVerificationUserSelection(Ljava/util/UUID;Ljava/util/Set;ZI)I
    .locals 10
    .param p1, "domainSetId"    # Ljava/util/UUID;
    .param p3, "enabled"    # Z
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;ZI)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 542
    .local p2, "domains":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    invoke-interface {v0}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->getCallingUid()I

    move-result v0

    .line 546
    .local v0, "callingUid":I
    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mEnforcer:Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;

    iget-object v2, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    invoke-interface {v2}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->getCallingUserId()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3, p4}, Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;->assertApprovedUserSelector(IILjava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 548
    const/4 v1, 0x1

    return v1

    .line 551
    :cond_0
    iget-object v8, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    new-instance v9, Lcom/android/server/pm/verify/domain/DomainVerificationService$$ExternalSyntheticLambda11;

    move-object v1, v9

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, v0

    move v6, p4

    move v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/android/server/pm/verify/domain/DomainVerificationService$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/pm/verify/domain/DomainVerificationService;Ljava/util/UUID;Ljava/util/Set;IIZ)V

    invoke-interface {v8, v9}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->withPackageSettingsSnapshotReturningThrowing(Lcom/android/internal/util/FunctionalUtils$ThrowingCheckedFunction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method public setDomainVerificationUserSelectionInternal(ILjava/lang/String;ZLandroid/util/ArraySet;)V
    .locals 8
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "enabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Z",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 590
    .local p4, "domains":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mEnforcer:Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;

    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    invoke-interface {v1}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;->assertInternal(I)V

    .line 591
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    new-instance v7, Lcom/android/server/pm/verify/domain/DomainVerificationService$$ExternalSyntheticLambda4;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p2

    move-object v4, p4

    move v5, p1

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/server/pm/verify/domain/DomainVerificationService$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/pm/verify/domain/DomainVerificationService;Ljava/lang/String;Landroid/util/ArraySet;IZ)V

    invoke-interface {v0, v7}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->withPackageSettingsSnapshotThrowing(Lcom/android/internal/util/FunctionalUtils$ThrowingCheckedConsumer;)V

    .line 634
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    invoke-interface {v0}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->scheduleWriteSettings()V

    .line 635
    return-void
.end method

.method public setLegacyUserState(Ljava/lang/String;II)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "state"    # I

    .line 1123
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mEnforcer:Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;

    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    invoke-interface {v1}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->getCallingUid()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    .line 1124
    invoke-interface {v2}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->getCallingUserId()I

    move-result v2

    .line 1123
    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;->callerIsLegacyUserSelector(IILjava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1125
    const/4 v0, 0x0

    return v0

    .line 1127
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLegacySettings:Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings;->add(Ljava/lang/String;II)V

    .line 1128
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    invoke-interface {v0}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->scheduleWriteSettings()V

    .line 1129
    const/4 v0, 0x1

    return v0
.end method

.method public setProxy(Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;)V
    .locals 0
    .param p1, "proxy"    # Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;

    .line 226
    iput-object p1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mProxy:Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;

    .line 227
    return-void
.end method

.method public verifyPackages(Ljava/util/List;Z)V
    .locals 6
    .param p2, "reVerify"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 1368
    .local p1, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mEnforcer:Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;

    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    invoke-interface {v1}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;->assertInternal(I)V

    .line 1369
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 1371
    .local v0, "packagesToBroadcast":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez p1, :cond_1

    .line 1372
    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1373
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    invoke-virtual {v2}, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->size()I

    move-result v2

    .line 1374
    .local v2, "pkgStatesSize":I
    const/4 v3, 0x0

    .local v3, "pkgStateIndex":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 1375
    iget-object v4, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    invoke-virtual {v4, v3}, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    .line 1376
    .local v4, "pkgState":Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;
    invoke-direct {p0, v0, v4, p2}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->addIfShouldBroadcastLocked(Ljava/util/Collection;Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;Z)V

    .line 1374
    .end local v4    # "pkgState":Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1378
    .end local v2    # "pkgStatesSize":I
    .end local v3    # "pkgStateIndex":I
    :cond_0
    monitor-exit v1

    goto :goto_2

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1380
    :cond_1
    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1381
    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 1382
    .local v2, "size":I
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_1
    if-ge v3, v2, :cond_3

    .line 1383
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1384
    .local v4, "packageName":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    invoke-virtual {v5, v4}, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    .line 1385
    .local v5, "pkgState":Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;
    if-eqz v5, :cond_2

    .line 1386
    invoke-direct {p0, v0, v5, p2}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->addIfShouldBroadcastLocked(Ljava/util/Collection;Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;Z)V

    .line 1382
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "pkgState":Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1389
    .end local v2    # "size":I
    .end local v3    # "index":I
    :cond_3
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1392
    :goto_2
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 1393
    invoke-direct {p0, v0}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->sendBroadcast(Ljava/util/Set;)V

    .line 1395
    :cond_4
    return-void

    .line 1389
    :catchall_1
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2
.end method

.method public writeSettings(Landroid/util/TypedXmlSerializer;ZI)V
    .locals 2
    .param p1, "serializer"    # Landroid/util/TypedXmlSerializer;
    .param p2, "includeSignatures"    # Z
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1060
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    new-instance v1, Lcom/android/server/pm/verify/domain/DomainVerificationService$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/android/server/pm/verify/domain/DomainVerificationService$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/pm/verify/domain/DomainVerificationService;ZLandroid/util/TypedXmlSerializer;I)V

    invoke-interface {v0, v1}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->withPackageSettingsSnapshotThrowing(Lcom/android/internal/util/FunctionalUtils$ThrowingCheckedConsumer;)V

    .line 1083
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLegacySettings:Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings;->writeSettings(Landroid/util/TypedXmlSerializer;)V

    .line 1084
    return-void
.end method
